class CreateUtentes < ActiveRecord::Migration[6.1]
  def change
    create_table :utentes do |t|
      t.string :cognome
      t.string :nome
      t.string :indirizzo
      t.integer :numero
      t.text :annotazioni

      t.timestamps
    end
  end
end
