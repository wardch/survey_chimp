class Responses < ActiveRecord::Migration
  def change
    create_table :responses do |table|
      table.integer :question_id
      table.integer :choice_id
    end
  end
end
