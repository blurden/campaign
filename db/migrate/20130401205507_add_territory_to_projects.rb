class AddTerritoryToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :territory, :string
  end
end
