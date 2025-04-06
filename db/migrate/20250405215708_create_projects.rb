class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string "name"
      t.text "description"
      t.integer "status", null: false, default: 0

      t.timestamps
    end

    add_index :projects, :status
  end
end
