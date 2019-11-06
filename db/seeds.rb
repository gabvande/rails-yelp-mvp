puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '01 23 45 67 99',
    category:     'french'
  },

  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '01 23 45 67 99',
    category:     'japanese'
  },

  {
    name:         'Liu Chin',
    address:      'Nebulosas, 2 Madrid',
    phone_number: '91 23 34 67 99',
    category:     'chinese'
  },

  {
    name:         'Mamma Mia!',
    address:      'Saint Honore, 34 Paris',
    phone_number: '54 23 45 98 99',
    category:     'italian'
  },

  {
    name:         'Nokogiri',
    address:      'Las Ramblas, Barcelona',
    phone_number: '78 23 45 56 99',
    category:     'japanese'
  }

]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
