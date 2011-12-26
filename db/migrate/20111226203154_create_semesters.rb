class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.string :name
      t.integer :university_id
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
