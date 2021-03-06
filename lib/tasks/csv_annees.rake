#rake csv_annees:create_annees

require 'csv'

namespace :csv_annees do
  task :create_annees => :environment do
    filename = File.join(Rails.root, 'app', 'csv', 'communes_years_mapped.csv')
    CSV.foreach(filename, :headers => true, :col_sep => ",") do |row|
      Annee.create!(row.to_hash)
    end
  end
end
