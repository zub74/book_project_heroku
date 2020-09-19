class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.column "first_name", :string
      t.string "last_name"
      t.string "email", :default => '', :null => false

      t.timestamps
    end
  end
end
