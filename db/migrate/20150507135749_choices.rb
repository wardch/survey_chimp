class Choices < ActiveRecord::Migration
  def change
    create_table :choices do |table|
    table.string :answer
    table.integer :question_id
    end
  end
end
