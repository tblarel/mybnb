require 'open-uri'

locations = Location.create([   { name: 'San Francisco, California', lat:37.77, long:-122.41 }, 
                                { name: 'Los Angeles, California', lat:34.00, long:-118.32 },
                                { name: 'Paris, France', lat:48.86, long:2.35 },
                                { name: 'New York, New York', lat:40.71, long:-74.00 },
                                { name: 'Seattle, Washington', lat:47.61, long:-122.33 },
                                { name: 'Miami, Florida', lat:25.76, long:-80.19 },
                                { name: 'London, England', lat:51.50, long:-0.01 },
                                { name: 'Whistler, Canada', lat:50.12, long:-122.96 },
                                { name: 'Aspen, Colorado', lat:39.19, long:-106.82 },
                                { name: 'Barcelona, Spain', lat:41.38, long:2.17 },
                            ])

file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/sf2.jpg')
loc = Location.first
loc.photo.attach(io: file, filename: 'sf2.jpg')

file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/la.jpg')
loc = Location.find(2)
loc.photo.attach(io: file, filename: 'la.jpg')

file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/paris1.jpeg')
loc = Location.find(3)
loc.photo.attach(io: file, filename: 'paris1.jpeg')

file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/ny.jpeg')
loc = Location.find(4)
loc.photo.attach(io: file, filename: 'ny.jpeg')

file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/seattle.jpeg')
loc = Location.find(5)
loc.photo.attach(io: file, filename: 'seattle.jpg')

file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/miami.jpeg')
loc = Location.find(6)
loc.photo.attach(io: file, filename: 'miami.jpeg')

file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/london.jpeg')
loc = Location.find(7)
loc.photo.attach(io: file, filename: 'london.jpeg')

file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/whistler.jpeg')
loc = Location.find(8)
loc.photo.attach(io: file, filename: 'whistler.jpeg')

file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/aspen.jpeg')
loc = Location.find(9)
loc.photo.attach(io: file, filename: 'aspen.jpeg')

file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spain.jpg')
loc = Location.find(10)
loc.photo.attach(io: file, filename: 'spain.jpg')
