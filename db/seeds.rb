require 'csv'

i = 1
puts "Creating Products - #{i}"
csv_text = File.read(Rails.root.join('lib', 'seeds', "product.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = State.new
  t.name = row['name']
  t.save!
end
puts "Products created"
i += 1
