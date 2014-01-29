class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.decimal :val, precision: 2

      t.timestamps
    end
  end
end
