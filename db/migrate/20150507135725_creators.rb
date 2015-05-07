class Creators < ActiveRecord::Migration
  def change
    create_table :creators do |table|
      table.string :name
      table.string :email
      table.string :password_hash
    end
  end
end
