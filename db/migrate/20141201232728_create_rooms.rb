class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :topic
      t.boolean :private, :default => false
      t.boolean :active, :default => true

      t.timestamps
    end
  end
end
