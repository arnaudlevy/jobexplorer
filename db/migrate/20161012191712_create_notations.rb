class CreateNotations < ActiveRecord::Migration[5.0]
  def change
    create_table :notations do |t|
      t.references :criterion, foreign_key: true
      t.references :subject, polymorphic: true, index: true
      t.integer :score

      t.timestamps
    end
  end
end
