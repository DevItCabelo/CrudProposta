class Cidade < ActiveRecord::Migration[5.1]
  def change
    create_table :cidades do |t|
      t.text :nome, null: false
      t.timestamps
    end
  end
end
