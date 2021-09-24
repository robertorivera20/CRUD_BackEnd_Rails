class CreateEmpleados < ActiveRecord::Migration[6.1]
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.integer :cedula
      t.integer :telefono
      t.string :correo

      t.timestamps
    end
  end
end
