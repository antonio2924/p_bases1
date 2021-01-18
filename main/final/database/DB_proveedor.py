from database.DB import DB
from flask import Flask, render_template, json, request, jsonify
import psycopg2 
from psycopg2.sql import SQL, Composable, Identifier, Literal
from psycopg2 import Error
from psycopg2 import sql
import decimal
from pprint import pprint


class DB_proveedor(DB):

    
    def get (self,item):

        try:

            id = item
            
            self.cursor.execute("SELECT * FROM proveedor WHERE po_id = %s", (id,) )
            resp = self.cursor.fetchone()
            
            columnas = self.cursor.description
           
            resp = self.querydictdecimal(resp,columnas)

            data = resp[0]

            for atributo in data:
                if (data[atributo] == None):
                    data[atributo] = ''

            return data 

        except Exception:
            return ({'error':'Error: Hubo un problema con el servidor o el cliente no existe'})


    def getall (self):  
    
        try:

            self.cursor.execute("SELECT * FROM proveedor") 
            resp = self.cursor.fetchall()
            columnas = self.cursor.description

            data = self.querydictdecimal(resp,columnas)

            for entidad in data:
                for atributo in entidad:
                    if type(entidad[atributo]) == decimal.Decimal:
                        entidad[atributo] = int(entidad[atributo])

            return data 

        except Exception:
            return jsonify({'error':'Error: Hubo un problema con el servidor'})
    
    def add (self, data):
        
        try:

            for key in data.keys():
                if (data[key] == '' or data[key] == ' '): data[key] = None
                     
            keys = data.keys()
            columns = ','.join(keys)
            values = ','.join(['%({})s'.format(k) for k in keys])

            query = 'INSERT INTO proveedor ({0}) VALUES ({1}) RETURNING po_id'.format(columns, values)
            
            print(self.cursor.mogrify(query, data)) 
            self.cursor.execute(query,data)
            self.connection.commit()
            
            id_creado = self.cursor.fetchone()[0]

            return id_creado

        except Exception:
            print(Exception)
            return jsonify({'error':'Error: Hubo un problema con el servidor'})


    def update (self, id, data):

        try:

            datamod = dict(data)
            dataol = self.get(id)
            
            for atributo in data:
                if (data[atributo] == dataol[atributo]):
                    datamod.pop(atributo)
                    
            
            if (not datamod): return ({'invalido':'Ningun dato fue actualizado'}) 
            
            for key in datamod.keys():
                if (datamod[key] == '' or datamod[key] == ' '): datamod[key] = None

            keys = datamod.keys()
            values = ','.join(['{} = %({})s'.format(k, k) for k in keys])
    
            query = 'UPDATE proveedor SET {0} WHERE po_id = {1}'.format(values,id)

            print(self.cursor.mogrify(query,datamod)) 
            self.cursor.execute(query,datamod)
            self.connection.commit()
            
            return ({'mensaje':'Proveedor modificado satisfactoriamente'}) 
            

        except Exception:
            return ({'error':'Error: Hubo un problema con el servidor'}) 


    def delete (self,id):

        try:
            print('Entra al execute')
            self.cursor.execute("DELETE FROM proveedor WHERE po_id = %s", (id,) )
            print('Sale del execute')
            self.connection.commit()                     

            return jsonify({'mensaje':'eliminado satisfactoriamente'}) 

        except Exception:
            return jsonify({'error':'Error: Hubo un problema con el servidor'})


 
    def verif(self,atributo,valor):
        
        try:
            print(valor)
            if type(valor) == str:
                self.cursor.execute ("SELECT * FROM proveedor WHERE {0} = '{1}'".format (atributo,valor))
            else:
                self.cursor.execute ("SELECT * FROM proveedor WHERE {0} = '{1}'".format (atributo,valor))

            obj = self.cursor.fetchone()  
            print(valor)

            if obj is None:    
                return None
            else:
                return 1

        
        except Exception:
            return 2


    def getafiliacion (self, n_tienda):

        try:
            
            self.cursor.execute("SELECT COUNT(fk_tienda) FROM cliente WHERE fk_tienda = %s", (n_tienda,)
            )
            
            numero = self.cursor.fetchone()[0]

            return (numero + 1)

        
        except Exception:
            return 0



    