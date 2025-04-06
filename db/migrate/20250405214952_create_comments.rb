class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.references :project
      t.string :name
      t.text :comment

      t.timestamps
    end
  end
end
