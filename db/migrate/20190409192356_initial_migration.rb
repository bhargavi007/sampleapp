class InitialMigration < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name, null:false
      t.string :author_id, null:false
      t.timestamps :created_at, null: false, :default => Time.now
    end

    create_table :authors do |t|
      t.string :name, null:false
      t.timestamps null: false
    end
  end
end
