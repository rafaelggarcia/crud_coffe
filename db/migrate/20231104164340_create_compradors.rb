class CreateCompradors < ActiveRecord::Migration[7.0]
  def change
    create_table :compradors do |t|
      t.string :cpf_cnpj
      t.string :nome

      t.timestamps
    end
  end
end
