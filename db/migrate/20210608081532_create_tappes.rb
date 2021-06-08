class CreateTappes < ActiveRecord::Migration[6.1]
  def change
    create_table :tappes do |t|
      t.string :denominazione
      t.text :descita
      t.text :descing
      t.string :partenza
      t.string :orari_partenza
      t.integer :durata
      t.integer :partecipanti

      t.timestamps
    end
  end
end
