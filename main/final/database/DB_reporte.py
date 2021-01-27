from database.DB import DB
from flask import Flask, render_template, json, request, jsonify
import psycopg2 
from psycopg2.sql import SQL, Composable, Identifier, Literal
from psycopg2 import Error
from psycopg2 import sql
import decimal
from datetime import datetime
import csv
#import pandas
import os

 

class DB_reporte(DB):


    def report (self,fecha,tienda):

        try:
            fe = fecha           
            id = tienda
            
           

            qry = '''SELECT  E.em_cedula,
                    E.em_p_nombre || ' ' || E.em_s_nombre || ', ' ||
                    E.em_p_apellido || ' ' || E.em_s_apellido N_empleado,
                    to_char(co.coen_entrada::TIME, 'HH12:MI AM') coen_entrada,
                    to_char (co.coen_salida::TIME, 'HH12:MI AM') coen_salida,
                    (SELECT ro_nombre 
                        FROM rol 
                        WHERE ro_codigo = (
                            SELECT fk_rol 
                                FROM USUARIO 
                                WHERE fk_empleado = E.em_codigo
                                        )
                    ) ROL,
                    co.coen_entrada:: DATE Dia_reporte,
                    ti.ti_nombre Tienda_reporte                    
                    FROM control_entrada co, empleado E, tienda ti 
                    WHERE co.fk_empleado =  E.em_codigo 
                    AND E.fk_tienda = ti.ti_codigo
                    AND co.coen_entrada::DATE= '{0}'
                    AND E.fk_tienda ={1}
                    ORDER BY co.coen_entrada;'''.format(fe,id)    

            #print(self.cursor.mogrify(qry))

            self.cursor.execute(qry)           

            resp = self.cursor.fetchall()

            columnas = self.cursor.description           

            data = self.querydictdecimal(resp,columnas)            

            for entidad in data:
                for atributo in entidad:
                    if type(entidad[atributo]) == datetime.date:
                        entidad[atributo] = str(entidad[atributo])

            

            dict_data = data 

          
            pandas.DataFrame(dict_data).to_csv( os.getcwd() + r'\reportes\temp\PRUEBA.csv' ,index=False)            

            return data 

        except Exception:
            print('ERROR DE EXCEPTION')
            return ({'error':'Error: Hubo un problema con el servidor o el cliente no existe'})



  