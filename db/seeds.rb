require 'csv'

i = 1
puts "Creating Products - #{i}"
csv_text = File.read(Rails.root.join('lib', 'seeds', "product.csv"))
csv = CSV.parse(csv_text.scrub, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  t = Product.new
  t.name = row['name']
  t.code = row['code']
  t.s_no = row['s_no']
  t.mrp = row['mrp']
  t.bakery = row['bakery']
  t.icecream = row['icecream']
  t.soft_drink = row['soft_drink']
  t.other = row['other']
  t.description = row['description']
  t.disp = row['disp']
  t.top_selling = row['top_selling']
  t.powder = row['powder']
  t.sdc = row['sdc']
  t.chocolate = row['chocolate']
  t.vanilla = row['vanilla']
  t.fruit = row['fruit']
  t.indian = row['indian']
  t.spice = row['spice']
  t.premium = row['premium']
  t.save!
end
puts "Products created"
i += 1

puts "Creating Oils - #{i}"
csv_text = File.read(Rails.root.join('lib', 'seeds', "oil.csv"))
csv = CSV.parse(csv_text.scrub, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  t = Oil.new
  t.name = row['name']
  t.code = row['code']
  t.kind = row['kind']
  t.inr = row['inr']
  t.eur = row['eur']
  t.dol = row['dol']
  t.genus_name = row['genus_name']
  t.specific_epithet = row['specific_epithet']
  t.fine_fragrance = row['fine_fragrance']
  t.personal_care = row['personal_care']
  t.home_care = row['home_care']
  t.food = row['food']
  t.description = row['description']
  t.save!
end
puts "Oils created"
i += 1

