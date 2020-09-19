class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.string :country
      t.string :continent
      t.integer :totalCases 
      t.integer :recovered
      t.string :newCases 
      t.integer :activeCases
      t.integer :newDeaths
      t.integer :totalDeaths
      t.integer :countryPopulation
      t.integer :totalTests
      t.integer :date
      t.integer :user_id
    end
  end
end

