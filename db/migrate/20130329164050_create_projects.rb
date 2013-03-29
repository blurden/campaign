class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.datetime :launchdate
      t.references :campaign

      t.timestamps
    end
    add_index :projects, :campaign_id
  end
end
