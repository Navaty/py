class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.integer :created_by
      t.integer :updated_by
      t.integer :parent_id

      t.timestamps
    end
  end
end
