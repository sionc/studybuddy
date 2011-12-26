class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :course_id
      t.integer :semester_id

      t.timestamps
    end
  end
end
