class CreatePropostas < ActiveRecord::Migration[5.1]
  def change
    create_table :propostas do |t|
      t.text :nome, null: false
      t.longtext :descricao, null: false
      t.decimal :valor, :precision => 8, :scale => 2, null: false
      t.date :inicio, null: false
      t.date :fim, null: false
      t.references :cidade, foreign_key: true, null: false

      t.timestamps
    end
  end
end
