class CreateMotos < ActiveRecord::Migration
  def change
    create_table :motos do |t|
      # Columnas relacionadas al autor
			t.string :nombre_autor
      t.string :email_autor
			t.text :ciudad
			t.text :pais
			t.text :ocupación

			# Columnas relacionados a la moto
      t.integer :sel_motor
      t.string :sel_motor_color
      t.integer :sel_asiento
      t.integer :sel_rueda
      t.integer :sel_llanta
      t.string :sel_llanta_color
      t.integer :sel_estanque
      t.string :sel_estanque_color
      t.integer :sel_escape
      t.integer :sel_relog
      t.integer :sel_tapabarro
      t.string :sel_tapabarro_color
      t.integer :sel_manijar
      t.string :nombre_moto

      t.timestamps
    end
  end
end
