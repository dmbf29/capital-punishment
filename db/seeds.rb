puts "Cleaning the DB..."
Criminal.destroy_all
Prison.destroy_all

puts "Creating prisons..."
Prison.create!(
  banner_url: 'https://upload.wikimedia.org/wikipedia/commons/f/f3/Alcatraz_Island_photo_Don_Ramey_Logan.jpg',
  name: 'Alcatraz'
)
puts "... created #{Prison.count} prisons"
