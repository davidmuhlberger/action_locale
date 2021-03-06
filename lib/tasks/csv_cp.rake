require 'csv'

namespace :csv_cp do
  task :add_cp => :environment do
    filename = File.join(Rails.root, 'app', 'csv', 'communes_list.csv')
    CSV.foreach(filename, :headers => true, :col_sep => ",") do |row|
      Ville.where(cog: row["cog"]).first.update_attribute :code_postal, row['code_postal']
    end
  end
end
