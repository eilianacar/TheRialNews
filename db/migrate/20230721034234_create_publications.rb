class CreatePublications < ActiveRecord::Migration[7.0]
  def change
    create_table :publications do |t|
      t.string :image
      t.string :tittle
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
