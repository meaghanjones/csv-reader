require 'csv'

table = CSV.table('sample_data.csv')

#In the following part of the code I am looping through the rows to delete any row that does not fall between June 22nd to July 22nd 2014 (which of is represented in unix time.)
table.delete_if do |row|
  row[:created_at] < 1403395200 || row[:created_at] > 1405987200
end

#Using the sort_by function I can sort the date by the created_at row, which sorts the data in a\
 ascending order.
table.sort_by { |row| row[:created_at] }

#Below I am printing only the words that are in the word column.
p table[:word]
