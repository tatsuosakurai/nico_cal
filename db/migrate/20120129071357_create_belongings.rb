class CreateBelongings < ActiveRecord::Migration
  def change
    create_table :belongings do |t|
      t.references :user
      t.references :team
      t.boolean :admin

      t.timestamps
    end
    add_index :belongings, :user_id
    add_index :belongings, :team_id
  end
end
