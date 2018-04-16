class ChangeColumn < ActiveRecord::Migration[5.1]
  def change
    change_column_default(:dogs, :name, 'Unnamed puppy :(')
  end
end
