class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.references :user, index: true, foreign_key: true
      t.datetime :date
      t.boolean :present

      t.timestamps null: false
    end
  end
end
