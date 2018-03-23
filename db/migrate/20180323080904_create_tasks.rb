class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :assignet_to
      t.integer :assignet_by
      t.date :assignet_on
      t.integer :complited_by
      t.integer :created_by
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
