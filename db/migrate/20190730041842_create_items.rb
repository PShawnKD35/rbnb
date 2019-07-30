class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :service, foreign_key: true
      t.string :name
      t.text :description
      t.datetime :purchase_date

      t.timestamps
    end
  end
end
