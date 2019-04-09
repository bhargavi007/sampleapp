class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name, null:false
      t.string :author_id, null:false
      t.timestamps :created_at, null: false, :default => Time.now
    end
  end
end
