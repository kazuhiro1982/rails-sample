class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :target
      t.string :type

      t.timestamps
    end
  end
end
