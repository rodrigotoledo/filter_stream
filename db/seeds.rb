require 'faker'

book = Spreadsheet::Workbook.new
person_documentation_sheet = book.create_worksheet(name: 'person_documentation')
2000.times.each do |row_number|
  row = person_documentation_sheet.row(row_number)
  row.push(Faker::Name.name_with_middle)
  row.push((Date.today - rand(10)).to_s)
  row.push(Faker::Address.full_address)
  row.push(Faker::Name.female_first_name)
  row.push(Faker::Job.title)
  row.push(Faker::Nation.language)
  row.push(Faker::PhoneNumber.cell_phone_with_country_code)
end

book.write(Rails.root.join('lib', 'book.xls'))
