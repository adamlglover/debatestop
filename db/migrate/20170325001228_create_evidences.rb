class CreateEvidences < ActiveRecord::Migration
  def change
    create_table :evidences do |t|
      t.string :name
      t.string :tag
      t.string :description
      t.date :date

      t.timestamps null: false
    end
  end
end
