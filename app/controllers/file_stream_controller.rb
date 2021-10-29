require 'faker'
class FileStreamController < ApplicationController
  def index
  end

  def create
    column_numbers = params[:column_numbers].to_s.split(',').map(&:to_i)
    send_stream(filename: "streamed_data.csv") do |stream|
      # TODO: it's time to read the XLSX file
      book = Spreadsheet.open # SUBMITED FILE
      book.worksheets.each do |current_worksheet|
        current_worksheet.each do |row|
          row_content = column_numbers.map{|t| row[column_number]}.join(",")
          stream.write "#{row_content}\n"
        end
      end
    end
  end
end
