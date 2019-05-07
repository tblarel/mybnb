# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'


users = User.create([   { email: 'email@email.com', password:'password', fname:'Demo', lname: 'User' },
                        { email: 'tblarel@gmail.com', password:'password', fname:'Tristan', lname: 'Blarel' }, 
                        { email: 'ngolo@fff.fr', password:'password', fname:'Ngolo', lname: 'Kanté' },  
                    ])
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/blank.jpg')
user1 = User.first
user1.photo.attach(io: file, filename: 'blank.jpg')

file2 = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/tristan.jpg')
user2 = User.find(2)
user2.photo.attach(io: file2, filename: 'tristan.jpg')

file3 = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/ngolo.jpg')
user3 = User.find(3)
user3.photo.attach(io: file3, filename: 'ngolo.jpg')

locations = Location.create([   { name: 'San Francisco, California', lat:123.99, long:456.001 }, 
                                { name: 'Los Angeles, California', lat:789.22, long:123.22 },
                                { name: 'Paris, France', lat:789.22, long:123.22 },
                                { name: 'New York, New York', lat:789.22, long:123.22 },
                                { name: 'Seattle, Washington', lat:789.22, long:123.22 },
                                { name: 'Miami, Florida', lat:789.22, long:123.22 },
                                { name: 'London, England', lat:789.22, long:123.22 },
                                { name: 'Whistler, Canada', lat:789.22, long:123.22 },
                                { name: 'Aspen, Colorado', lat:789.22, long:123.22 },
                                { name: 'Barcelona, Spain', lat:789.22, long:123.22 },
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


spots = Spot.create([   
                        ### SAN FRANCISOCO ###

                        {title: 'Downtown Loft', home_type: 'Entire Apartment', host_id: 1, loc_id: 1, 
                        description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
                        lat:123.99, long:456.001,
                        price: 125, address: '825 Battery Street', num_bedrooms: 2, num_beds: 4, num_guest: 5 },

                        { title: 'Small Closet', home_type: 'Shared Home', host_id: 2, loc_id: 1, 
                        description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', lat:122.92, long:456.013,
                        price: 15, address: '3302 Street Street', num_bedrooms: 1, num_beds: 1, num_guest: 1 },
                        
                        { title: 'Cardboard Box', home_type: 'Entire Home', host_id: 1, loc_id: 1, 
                        description: 'Beautiful spacious box minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', lat:122.92, long:456.013,
                        price: 105, address: '320 Battery Street', num_bedrooms: 1, num_beds: 1, num_guest: 1 },

                        { title: 'House in the Berkeley Hills', home_type: 'Entire Home', host_id: 3, loc_id: 1, 
                        description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', lat:122.92, long:456.013,
                        price: 415, address: '419 Battery Street', num_bedrooms: 3, num_beds: 4, num_guest: 6 },

                        { title: 'Mission Loft', home_type: 'Entire Home', host_id: 3, loc_id: 1, 
                        description: 'Beautiful spacious loft minutes from the heart of the mission. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', lat:122.92, long:456.013,
                        price: 305, address: ' 22 Battery Street', num_bedrooms: 2, num_beds: 2, num_guest: 4 },

                        ### LOS ANGELES ###

                        { title: 'Cozy Condo', home_type: 'Entire Home', host_id: 2, loc_id: 2, 
                        description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', lat:122.92, long:456.013,
                        price: 220, address: '22 Street Street', num_bedrooms: 3, num_beds: 4, num_guest: 6 },

                        { title: 'Huge Beach Mansion', home_type: 'Entire Home', host_id: 1, loc_id: 2, 
                        description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', lat:122.92, long:456.013,
                        price: 405, address: '122422 Street Street', num_bedrooms: 4, num_beds: 6, num_guest: 8 },

                        { title: 'Spacious Downtown Apartment', home_type: 'Entire Apartment', host_id: 3, loc_id: 2, 
                        description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', lat:122.92, long:456.013,
                        price: 205, address: '22 Street Street', num_bedrooms: 2, num_beds: 3, num_guest: 5 },

                        { title: 'Small Studio', home_type: 'Entire Apartment', host_id: 1, loc_id: 2, 
                        description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', lat:122.92, long:456.013,
                        price: 109, address: '221 Street Street', num_bedrooms: 1, num_beds: 1, num_guest: 2 },

                        ### PARIS, FRANCE ###

                        { title: 'Small Bedroom', home_type: 'Shared Home', host_id: 3, loc_id: 3, 
                        description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', lat:122.92, long:456.013,
                        price: 55, address: '001 Street Street', num_bedrooms: 1, num_beds: 1, num_guest: 1 },

                        { title: 'Teeny Tiny Chateau', home_type: 'Entire Home', host_id: 3, loc_id: 3, 
                        description: 'Beautiful spacious loft minutes from the Seine. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', lat:122.92, long:456.013,
                        price: 405, address: '002 Street Street', num_bedrooms: 4, num_beds: 4, num_guest: 8 },

                        { title: 'Petit Apartment dans le 13eme', home_type: 'Entire Apartment', host_id: 3, loc_id: 3, 
                        description: 'Beautiful apartment minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', lat:122.92, long:456.013,
                        price: 210, address: '003 Street Street', num_bedrooms: 2, num_beds: 3, num_guest: 4 },

                        ### NEW YORK ###
                        
                        { title: 'Small Apartment', home_type: 'Entire Apartment', host_id: 2, loc_id: 4, 
                        description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', lat:122.92, long:456.013,
                        price: 305, address: '011 Street Street', num_bedrooms: 2, num_beds: 2, num_guest: 4 },

                        { title: 'Small Apartment', home_type: 'Entire Apartment', host_id: 2, loc_id: 4, 
                        description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', lat:122.92, long:456.013,
                        price: 305, address: '011 Street Street', num_bedrooms: 2, num_beds: 2, num_guest: 4 },

                        { title: 'Small Apartment', home_type: 'Entire Apartment', host_id: 2, loc_id: 4, 
                        description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', lat:122.92, long:456.013,
                        price: 305, address: '021 Broadway Street', num_bedrooms: 2, num_beds: 2, num_guest: 4 },

                        ###

                        { title: 'Huge Mansion', home_type: 'Entire Home', host_id: 2, loc_id: 6, 
                        description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', lat:122.92, long:456.013,
                        price: 300, address: '005 Street Street', num_bedrooms: 5, num_beds: 10, num_guest: 10 },

                        { title: 'Ski Chalet', home_type: 'Entire Home', host_id: 2, loc_id: 10, 
                        description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', lat:122.92, long:456.013,
                        price: 55, address: '007 Street Street', num_bedrooms: 3, num_beds: 6, num_guest: 8 },

                        { title: 'Quaint Cabin', home_type: 'Entire Home', host_id: 2, loc_id: 10, 
                        description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', lat:122.92, long:456.013,
                        price: 95, address: '008 Street Street', num_bedrooms: 2, num_beds: 5, num_guest: 6 },

                        { title: 'Plain Old Home', home_type: 'Entire Home', host_id: 2, loc_id: 8, 
                        description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', lat:122.92, long:456.013,
                        price: 55, address: '009 Street', num_bedrooms: 2, num_beds: 5, num_guest: 6 },

                        { title: 'Historic House', home_type: 'Entire Home', host_id: 2, loc_id: 9, 
                        description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', lat:122.92, long:456.013,
                        price: 175, address: '010 Street Street', num_bedrooms: 3, num_beds: 5, num_guest: 6 },


                        { title: 'Cramped Apartment', home_type: 'Entire Apartment', host_id: 2, loc_id: 5, 
                        description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', lat:122.92, long:456.013,
                        price: 125, address: '4828 Street Street', num_bedrooms: 1, num_beds: 1, num_guest: 2 },

                        { title: 'Beach House', home_type: 'Entire Home', host_id: 2, loc_id: 7, 
                        description: 'Beautiful home on the beach', lat:122.92, long:456.013,
                        price: 175, address: '335 Beach Street', num_bedrooms: 2, num_beds: 3, num_guest: 6 },

                        { title: 'Log Cabin', home_type: 'Entire Home', host_id: 2, loc_id: 8, 
                        description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
                        Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', lat:122.92, long:456.013,
                        price: 155, address: '300 Street', num_bedrooms: 2, num_beds: 3, num_guest: 6 },

                      
                    ])


features = Feature.create  ([   { name: 'Wifi' },
                                { name: 'Parking' },
                                { name: 'TV' },
                                { name: 'Kitchen' },
                                { name: 'Laundry' },
                                { name: 'Pool' },
                            ])

spot_features = SpotFeature.create([    { feature_id: 1, spot_id: 1 },
                                        { feature_id: 2, spot_id: 1 },

                                        { feature_id: 1, spot_id: 2 },
                                        { feature_id: 2, spot_id: 2 },
                                        { feature_id: 3, spot_id: 2 },
                                        
                                        { feature_id: 1, spot_id: 3 },
                                        { feature_id: 2, spot_id: 3 },
                                        { feature_id: 3, spot_id: 3 },
                                        { feature_id: 4, spot_id: 3 },

                                        { feature_id: 1, spot_id: 4 },
                                        { feature_id: 3, spot_id: 4 },

                                        { feature_id: 1, spot_id: 5 },
                                        { feature_id: 2, spot_id: 5 },
                                        { feature_id: 3, spot_id: 5 },
                                        { feature_id: 4, spot_id: 5 },

                                        { feature_id: 1, spot_id: 6 },
                                        { feature_id: 2, spot_id: 6 },
                                        { feature_id: 3, spot_id: 6 },

                                        { feature_id: 1, spot_id: 7 },
                                        { feature_id: 4, spot_id: 7 },
                                        { feature_id: 5, spot_id: 7 },

                                        { feature_id: 1, spot_id: 8 },
                                        { feature_id: 2, spot_id: 8 },
                                        { feature_id: 5, spot_id: 8 },

                                        { feature_id: 4, spot_id: 9 },
                                        { feature_id: 5, spot_id: 9 },

                                        { feature_id: 1, spot_id: 10 },
                                        { feature_id: 4, spot_id: 10 },

                                        { feature_id: 1, spot_id: 11 },
                                        { feature_id: 5, spot_id: 11 },

                                        { feature_id: 1, spot_id: 12 },
                                        { feature_id: 3, spot_id: 12 },
                                        { feature_id: 5, spot_id: 12 },

                                        { feature_id: 1, spot_id: 13 },
                                        { feature_id: 2, spot_id: 13 },
                                        { feature_id: 3, spot_id: 13 },

                                        { feature_id: 1, spot_id: 14 },
                                        { feature_id: 2, spot_id: 14 },

                                        { feature_id: 1, spot_id: 15 },
                                        { feature_id: 4, spot_id: 15 },
                                        { feature_id: 5, spot_id: 15 },

                                    ])