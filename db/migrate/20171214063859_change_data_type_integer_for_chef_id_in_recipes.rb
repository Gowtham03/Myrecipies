class ChangeDataTypeIntegerForChefIdInRecipes < ActiveRecord::Migration[5.0]
  def change
    change_column(:recipes, :chef_id, :string)
  end
end
