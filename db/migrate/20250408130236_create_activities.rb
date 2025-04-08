class CreateActivities < ActiveRecord::Migration[8.0]
  def change
    create_table :activities do |t|
      t.string :action
      t.jsonb :details
      t.references :auditable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
