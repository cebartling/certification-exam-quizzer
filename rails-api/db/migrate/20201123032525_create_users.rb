class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :first_name, null: false, limit: 100
      t.string :last_name, null: false, limit: 100
      t.string :username, null: false, limit: 255
      t.timestamps
    end

    add_index :users, :username, unique: true, name: 'users_username_unique_idx'
  end
end
