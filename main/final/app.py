from flask import Flask, render_template, json, request, jsonify
import psycopg2 
from psycopg2.sql import SQL, Composable, Identifier, Literal
from psycopg2 import Error
from psycopg2 import sql

from database.DB_cliente_natural import DB_cliente_natural


app = Flask(__name__)
app.debug = True


####################################################################


@app.route('/')                                     #metodo request de default es GET
def main():
    return render_template('inicio.html')
    
@app.route('/inicio_sesion',methods=['POST','GET'])         #listo falta ccs
def inicio_sesion():

    if request.method == 'GET':
        return render_template("inicio_sesion.html")

    else: 
        
        db = DB_cliente_natural()

        data = {
            'cl_correo'     : request.form['inputCorreo'],    
            'cl_contraseña' : request.form['inputContraseña']         
        }

        resp = db.verif_login(data)

        return resp
        
     
@app.route('/registro_natural', methods= ['GET', 'POST'] )
def registro_natural():
    
    if request.method == 'GET':
        return render_template("registro_natural.html")
    
    else:
        try:
            
            data = {
                'cl_correo'     : request.form['inputcorreo'],     #string    
                'cl_cedula'     : int(request.form['inputcedula']),             #int 
                'cl_rif'        : request.form['inputrif'],               #int
                
                'cl_contraseña' : 'buenobueno',         #string 
                'cl_puntos'     : 0,                    #int
                'cl_afiliacion' : 123,                  #int
                'cl_p_nombre'   : 'fernan',             #string 
                'cl_s_nombre'   : 'flow',               #string  #None
                'cl_p_apellido' : 'will',               #string 
                'cl_s_apellido' : 'rex',                #string  #None
            }


            db = DB_cliente_natural()   
            resp = db.add(data)

            return resp

        except Exception :
            return jsonify({'error':'Error: Hubo un problema con el servidor'})


@app.route('/registro_juridico', methods= ['GET', 'POST'] )
def registro_juridico():
    
    if request.method == 'GET':
        return render_template("registro_juridico.html")
    
    else:
        try:

            data = {
                'cl_correo'     : 'alex@gmail.com',     #string    
                'cl_cedula'     : 21522033,             #int 
                'cl_rif'        : 122121,               #int
                
                'cl_contraseña' : 'buenobueno',         #string 
                'cl_puntos'     : 0,                    #int
                'cl_afiliacion' : 123,                  #int
                'cl_p_nombre'   : 'fernan',             #string 
                'cl_s_nombre'   : 'flow',               #string  #None
                'cl_p_apellido' : 'will',               #string 
                'cl_s_apellido' : 'rex',                #string  #None
            }

            return request.form

            db = DB_cliente_natural()   
            resp = db.add(data)

            return resp

        except Exception :
            return jsonify({'error':'Error: Hubo un problema con el servidor'})


   
@app.route('/mostrar',methods=['POST','GET','DELETE'])     #datatable falta delete y update
def mostrar():
    
    if request.method == 'GET':
        return render_template("mostrar_clientes.html")
    
    if request.method == 'POST': 
       
        db = DB_cliente_natural()         
    
        resp = db.getall()
 
        return jsonify(resp)

    if request.method == 'DELETE':

        id = int(request.get_data())
        print(id)

        #delete cliente natural {id} 

        return request.get_data()


###########################


@app.route('/perfil/<cl_nombre>')
def perfil(cl_nombre):
    return render_template("perfil_natural.html", cl_nombre = cl_nombre)    


@app.route('/producto/<int:pr_id>')        #url generico
def datos_producto(pr_id):
    return "datos produto %s" %pr_id     #escribe en pantalla 


@app.route('/carrito', methods= ['GET', 'POST'] )
def carrito():

    if request.method == 'GET':
        
        lista = ["Pantalones", "Pollo", "Caraotas"]


        return render_template("carrito.html", lista = lista)   
    

    else:   return "ah bueno"

#######################################

   

@app.route('/showSignin')
def showSignin():
    return render_template('signin.html')

@app.route('/showSignUp')
def showSignUp():
    return render_template('signup.html')


@app.route('/signUp2',methods=['POST','GET'])
def signU2p():
    try:
        db = DB_cliente_natural()
        _name = request.form['inputName']
        _email = request.form['inputEmail']
        _password = request.form['inputPassword']
        #if db.cursor :  return json.dumps({'message':'Conexion Establecida !'})

        # validate the received values
        if _name and _email and _password:
            
            # All Good, let's call MySQL
            #ok = ok
            #conn = mysql.connect()
            #cursor = conn.cursor()
            #cursor.callproc('sp_createUser',(_name,_email,_password))
            #data = cursor.fetchall()

            print(_name)

            if db.cursor : 
                db.cursor.execute("INSERT INTO cliente_natural (cl_nombre) VALUES ('%s');" %(_email) )
                db.connection.commit()
                return json.dumps({'message':'conexion establecida'})
            
            
            """if len(data) is 0:
                #conn.commit()
                return json.dumps({'message':'User created successfully !'})
            else:
                return json.dumps({'error':str(data[0])})"""

        else:
            return json.dumps({'html':'<span>Enter the required fields</span>'})

    except Exception as e:
        return json.dumps({'error':str(e)})
 



if (__name__ == '__main__'):    
    app.run(port=5005)