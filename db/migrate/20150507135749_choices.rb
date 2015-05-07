class Choices < ActiveRecord::Migration
  def change
    create_table :choices do |table|
    table.string :body
    table.integer :question_id
    end
  end
end
