class Surveys < ActiveRecord::Migration
  def change
    create_table :surveys do |table|
      table.string :title
      table.string :description
      table.integer :creator_id
    end
  end
end
