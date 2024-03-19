class CreateMcas < ActiveRecord::Migration[7.0]
  def change
    create_table :mcas do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :number
      t.string :year

      t.timestamps
    end
  end
end
