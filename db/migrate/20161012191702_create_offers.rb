class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.string :name
      t.text :url
      t.references :company, foreign_key: true
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
