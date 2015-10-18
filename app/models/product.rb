require 'roo'

class Product < ActiveRecord::Base
  belongs_to :color

  validates :title, presence: true
  
  acts_as_nested_set

  #def self.import(file)
    #spreadsheet = open_spreadsheet(file)
  #  spreadsheet = Roo::Spreadsheet.open('./name_of_file')
  #  header = spreadsheet.row(1)
  #  (2..spreadsheet.last_row).each do |i|
  #    row = Hash[[header, spreadsheet.row(i)].transpose]
  #    product = find_by_id(row["id"]) || new
  #    product.attributes = row.to_hash.slice(*accessible_attributes)
  #    product.save!
  #  end
  #end

  #def self.open_spreadsheet(file)
  #  p '---------------'
  #  p file
  #  case File.extname(file.original_filename)
  #  when ".csv" then Roo::CSV.new(file.path, nil, :ignore)
  #  when ".xls" then Excel.new(file.path, nil, :ignore)
  #  when ".xlsx" then Excelx.new(file.path, nil, :ignore)
   # else raise "Unknown file type: #{file.original_filename}"
  #  end
  #end  
end
