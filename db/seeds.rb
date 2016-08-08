# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@feed = Feed.find_or_create_by(title: 'Test Feed', description: 'This is a test feed')

@items = [
  {
    feed: @feed,
    title: 'Tom Hanks Reportedly Lists Side-by-Side Mansions in Pacific Palisades',
    description: 'Mama always said two is better than one.',
    url: 'http://www.zillow.com/blog/tom-hanks-lists-mansions-202836/'
  },
  {
    feed: @feed,
    title: '3 Reasons to Live in a New Home Before Renovating',
    description: 'Ready to knock down walls ASAP? You might want to hold off until you\'ve settled in.',
    url: 'http://www.zillow.com/blog/live-in-home-before-renovating-64719/'
  },
  {
    feed: @feed,
    title: 'House of the Week: A Historic Fishing Reel Home Outside Tulsa',
    description: 'This custom-built home on six acres is quite a catch.',
    url: 'http://www.zillow.com/blog/fishing-reel-home-outside-tulsa-202291/'
  }
]

@items.each do |item|
  Item.find_or_create_by(item)
end
