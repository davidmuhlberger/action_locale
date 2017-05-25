# A lancer impérativement après csv_villes pour ne pas fausser les id
#rake csv_villes_moy:create_villes_moy
require 'csv'

namespace :csv_villes_moy do
  task :create_villes_moy => :environment do
    filename = File.join(Rails.root, 'app', 'csv', 'communes_moy_list.csv')
    CSV.foreach(filename, :headers => true, :col_sep => ",") do |row|
      Ville.create!(row.to_hash)
    end
  end
end
