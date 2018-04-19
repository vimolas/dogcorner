class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :photo
      t.integer :age
      t.boolean :pedigree
      t.text :description
      t.string :address
      t.references :user, foreign_key: true
      t.references :breed, foreign_key: true

      t.timestamps
    end
  end
end
