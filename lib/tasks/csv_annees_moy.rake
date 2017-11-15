#rake csv_annees_moy:create_annees_moy

require 'csv'

namespace :csv_annees_moy do
  task :create_annees_moy => :environment do
    filename = File.join(Rails.root, 'app', 'csv', 'communes_moy_years_mapped.csv')
    CSV.foreach(filename, :headers => true, :col_sep => ",") do |row|
      Annee.create!(row.to_hash)
    end
  end
end
