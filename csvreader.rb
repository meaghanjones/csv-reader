require 'csv'


CSV.foreach('sample_data.csv') do |row|
  puts row.inspect
end
