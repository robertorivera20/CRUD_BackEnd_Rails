class EmpleadosController < ApplicationController
def index
  #puts "entro al index"
  #traer todos los empleados
  @empleados = Empleado.all
  render json: @empleados, status:200
end

def show
   #traer un empleados
   puts "entro a show"
   @empleado = Empleado.find{params[:id]}
   render json: @empleado, status: 200
end
def create
  puts "entro a crear"
  #Crear un usuario
  @empleado = Empleado.create(
    nombre: params[:nombre],
    cedula: params[:cedula],
    telefono: params[:telefono],
    correo: params[:correo]
  )
  render json: @empleado, status: 201
end
def update
  puts "entro al update"
  #actualizar usuario
  @empleado = Empleado.update(
    nombre: params[:nombre],
    cedula: params[:cedula],
    telefono: params[:telefono],
    correo: params[:correo],
  )
  render json: @empleado, status: 202
end
def destroy
   puts "entro al delete"
  #eliminar usuario
  #@empleado = Empleado.find{params[:id]}
  #render json: @empleado.destroy, status: 200
end
end
