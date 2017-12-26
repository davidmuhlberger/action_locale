require 'csv'

namespace :csv_cp do
  task :add_cp => :environment do
    filename = File.join(Rails.root, 'app', 'csv', 'communes_list.csv')
    CSV.foreach(filename, :headers => true, :col_sep => ",") do |row|
      Ville.where(cog: row["cog"]).first.update_attribute :nom_et_cp, row['nom_et_cp']
    end
  end
end
