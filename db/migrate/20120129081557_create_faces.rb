class CreateFaces < ActiveRecord::Migration
  def change
    create_table :faces do |t|
      t.references :user
      t.date :date,      :null => false
      t.integer :status, :null => false, :default => 0

      t.timestamps
    end
    add_index :faces, :user_id
  end
end
