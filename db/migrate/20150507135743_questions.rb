class Questions < ActiveRecord::Migration
  def change
    create_table :questions do |table|
      table.string :body
      table.integer :survey_id
    end
  end
end
