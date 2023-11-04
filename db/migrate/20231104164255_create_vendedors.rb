class CreateVendedors < ActiveRecord::Migration[7.0]
  def change
    create_table :vendedors do |t|
      t.string :cnpj
      t.string :razao_social
      t.string :site

      t.timestamps
    end
  end
end
