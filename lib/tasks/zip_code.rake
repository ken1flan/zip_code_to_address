require "csv"

namespace :zip_code do
  desc "Install zip_codes from tmp/x-ken-all.csv"
  task install: :environment do
    ZipCode.delete_all
    CSV.foreach("tmp/x-ken-all.csv", encoding: "Shift_JIS:UTF-8") do |row|
      prefecture = Prefecture.find_by(name: row[6])
      ZipCode.create(code: row[2], prefecture_id: prefecture.id, address: "#{row[7]}#{row[8]}")
    end
  end
end
