class CreateOferta < ActiveRecord::Migration[7.0]
  def change
    create_table :oferta do |t|
      t.string :saca
      t.string :tipo
      t.string :origem
      t.text :descricao
      t.integer :quantidade_estoque
      t.boolean :barter
      t.references :vendedor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
