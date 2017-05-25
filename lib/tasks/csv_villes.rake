#rake csv_villes:create_villes

require 'csv'

namespace :csv_villes do
  task :create_villes => :environment do
    filename = File.join(Rails.root, 'app', 'csv', 'communes_list.csv')
    CSV.foreach(filename, :headers => true, :col_sep => ",") do |row|
      Ville.create!(row.to_hash)
    end
  end
end
