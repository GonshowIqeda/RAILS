class AddNameToPostt < ActiveRecord::Migration[5.2]
  def change
    add_column :postts, :name, :string
  end
end
