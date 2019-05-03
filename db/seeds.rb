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
                                { name: 'Sacramento, California', lat:789.22, long:123.22 },
                                { name: 'Aspen, Colorado', lat:789.22, long:123.22 },
                                { name: 'Barcelona, Spain', lat:789.22, long:123.22 },
                            ])

spots = Spot.create([   { title: 'Downtown Loft', home_type: 'Entire Apartment', host_id: 1, loc_id: 1, 
                        description: 'Beautiful spacious loft minutes from downtown', lat:123.99, long:456.001,
                        price: 125, address: '825 Battery Street', num_bedrooms: 2, num_beds: 4, num_guest: 5 },

                        { title: 'Cozy Townhouse', home_type: 'Entire Home', host_id: 2, loc_id: 2, 
                        description: 'Beautiful home minutes from the beach', lat:122.92, long:456.013,
                        price: 205, address: '222 Street Street', num_bedrooms: 4, num_beds: 6, num_guest: 8 },

                        { title: 'Small Closet', home_type: 'Shared Home', host_id: 2, loc_id: 1, 
                        description: 'Its a small closet', lat:122.92, long:456.013,
                        price: 15, address: '333 Street Street', num_bedrooms: 1, num_beds: 1, num_guest: 1 },
                    ])


features = Feature.create  ([   { name: 'Wifi' },
                                { name: 'Parking' },
                            ])

spot_features = SpotFeature.create([    { feature_id: 1, spot_id: 1 },
                                        { feature_id: 2, spot_id: 1 },
                                        { feature_id: 2, spot_id: 2 },
                                    ])