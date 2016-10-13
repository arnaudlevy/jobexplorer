class AddScores < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :score, :decimal, precision: 5, scale: 2
    add_column :jobs, :score, :decimal, precision: 5, scale: 2
    add_column :offers, :score, :decimal, precision: 5, scale: 2
  end
end
