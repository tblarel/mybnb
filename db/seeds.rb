# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([   { email: 'email', password:'password', fname:'Demo', lname: 'User' },
                        { email: 'tblarel@gmail.com', password:'password', fname:'Tristan', lname: 'Blarel' }, 
                    ])


locations = Location.create([   { name: 'San Francisco, California', lat:123.99, long:456.001 }, 
                                { name: 'Los Angeles, California', lat:789.22, long:123.22 },
                                { name: 'Seattle, Washington', lat:789.22, long:123.22 },
                                { name: 'New York, New York', lat:789.22, long:123.22 },
                                { name: 'Washington, D.C.', lat:789.22, long:123.22 },
                                { name: 'Miami, Florida', lat:789.22, long:123.22 },
                                { name: 'San Diego, California', lat:789.22, long:123.22 },
                                { name: 'Denver, Colorado', lat:789.22, long:123.22 },
                                { name: 'London, England', lat:789.22, long:123.22 },
                                { name: 'Whistler, Canada', lat:789.22, long:123.22 },
                                { name: 'Aspen, Colorado', lat:789.22, long:123.22 },
                                { name: 'Barcelona, Spain', lat:789.22, long:123.22 },
                            ])

spots = Spot.create([   { title: 'Downtown Loft', home_type: 'Entire Apartment', host_id: 1, loc_id: 1, 
                        description: 'Beautiful spacious loft minutes from downtown', lat:123.99, long:456.001,
                        price: 125, address: '825 Battery Street', num_bedrooms: 2, num_beds: 4, num_guest: 5 },

                        { title: 'Cozy Townhouse', home_type: 'Entire Home', host_id: 2, loc_id: 2, 
                        description: 'Beautiful home minutes from the beach', lat:122.92, long:456.013,
                        price: 205, address: '22 Street Street', num_bedrooms: 4, num_beds: 6, num_guest: 8 },

                        { title: 'Small Closet', home_type: 'Shared Home', host_id: 2, loc_id: 1, 
                        description: 'Its a small closet', lat:122.92, long:456.013,
                        price: 15, address: '3302 Street Street', num_bedrooms: 1, num_beds: 1, num_guest: 1 },

                        { title: 'Small Bedroom', home_type: 'Shared Home', host_id: 2, loc_id: 3, 
                        description: 'Its a small room', lat:122.92, long:456.013,
                        price: 25, address: '32 Street Street', num_bedrooms: 1, num_beds: 1, num_guest: 1 },

                        { title: 'Huge Mansion', home_type: 'Entire Home', host_id: 2, loc_id: 6, 
                        description: 'Straight out of a Biggie music video', lat:122.92, long:456.013,
                        price: 300, address: '233 Street Street', num_bedrooms: 5, num_beds: 10, num_guest: 10 },

                        { title: 'Ski Chalet', home_type: 'Entire Home', host_id: 2, loc_id: 10, 
                        description: 'Its a small lodge', lat:122.92, long:456.013,
                        price: 55, address: '353 Street Street', num_bedrooms: 3, num_beds: 6, num_guest: 8 },

                        { title: 'Quaint Cabin', home_type: 'Entire Home', host_id: 2, loc_id: 11, 
                        description: 'Its a small cabin', lat:122.92, long:456.013,
                        price: 95, address: '335 Street Street', num_bedrooms: 2, num_beds: 5, num_guest: 6 },

                        { title: 'Plain Old Home', home_type: 'Entire Home', host_id: 2, loc_id: 12, 
                        description: 'Its a small home', lat:122.92, long:456.013,
                        price: 55, address: '222 Street', num_bedrooms: 2, num_beds: 5, num_guest: 6 },

                        { title: 'Historic House', home_type: 'Entire Home', host_id: 2, loc_id: 9, 
                        description: 'Its a small old house', lat:122.92, long:456.013,
                        price: 175, address: '111 Street Street', num_bedrooms: 3, num_beds: 5, num_guest: 6 },

                        { title: 'Small Apartment', home_type: 'Entire Apartment', host_id: 2, loc_id: 4, 
                        description: 'Its a small apartment', lat:122.92, long:456.013,
                        price: 305, address: '99 Street Street', num_bedrooms: 2, num_beds: 2, num_guest: 4 },

                        { title: 'Cramped Apartment', home_type: 'Entire Apartment', host_id: 2, loc_id: 5, 
                        description: 'Its a small apartment', lat:122.92, long:456.013,
                        price: 125, address: '4828 Street Street', num_bedrooms: 1, num_beds: 1, num_guest: 2 },

                        { title: 'Teeny Tiny House', home_type: 'Entire Home', host_id: 2, loc_id: 3, 
                        description: 'Its a small house', lat:122.92, long:456.013,
                        price: 105, address: '484 Street Street', num_bedrooms: 1, num_beds: 1, num_guest: 2 },

                        { title: 'Beach House', home_type: 'Entire Home', host_id: 2, loc_id: 7, 
                        description: 'Beautiful home on the beach', lat:122.92, long:456.013,
                        price: 175, address: '335 Beach Street', num_bedrooms: 2, num_beds: 3, num_guest: 6 },

                        { title: 'Log Cabin', home_type: 'Entire Home', host_id: 2, loc_id: 8, 
                        description: 'Its a small log cabin', lat:122.92, long:456.013,
                        price: 155, address: '300 Street', num_bedrooms: 2, num_beds: 3, num_guest: 6 },

                        { title: 'Cardboard Box', home_type: 'Entire Home', host_id: 1, loc_id: 1, 
                        description: 'Its a small box', lat:122.92, long:456.013,
                        price: 15, address: 'Battery Street', num_bedrooms: 1, num_beds: 1, num_guest: 1 },
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