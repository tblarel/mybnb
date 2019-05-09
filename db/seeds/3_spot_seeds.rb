require 'open-uri'

# Spot.destroy_all()

spots = Spot.create([   
    ### SAN FRANCISOCO ###

    {title: 'Spacious Marina Apartment', home_type: 'Entire Apartment', host_id: 3, loc_id: 1, 
    description: 'Beautiful spacious apartment minutes from marina. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:37.803562, long:-122.444155,
    price: 305, address: '825 Battery Street', num_bedrooms: 2, num_beds: 4, num_guest: 5 },

    { title: 'Cozy 1920s Studio', home_type: 'Entire Apartment', host_id: 2, loc_id: 1, 
    description: 'Wonderful studio minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.',
    lat:37.796511, long:-122.433250,
    price: 115, address: '3302 Street Street', num_bedrooms: 2, num_beds: 2, num_guest: 4 },
    
    { title: 'Modern Apartment', home_type: 'Entire Apartment', host_id: 1, loc_id: 1, 
    description: 'Luxurious and spacious apartment minutes from BART. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:37.798756, long:-122.416530,
    price: 205, address: '320 Battery Street', num_bedrooms: 2, num_beds: 2, num_guest: 4},

    { title: 'Cozy Home in Berkeley Hills', home_type: 'Entire Home', host_id: 3, loc_id: 1, 
    description: 'Nice small home nestled in the Berkeley Hills. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.',
    lat:37.885777, long:-122.250992,
    price: 215, address: '419 Battery Street', num_bedrooms: 2, num_beds: 2, num_guest: 4 },

    { title: 'Soma Loft', home_type: 'Entire Home', host_id: 3, loc_id: 1, 
    description: 'Comfortable  loft minutes from the heart of the mission. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:37.781117, long:-122.401151,
    price: 305, address: ' 22 Battery Street', num_bedrooms: 2, num_beds: 2, num_guest: 4 },

    ### LOS ANGELES ###

    { title: 'Cozy Loft', home_type: 'Entire Home', host_id: 2, loc_id: 2, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:34.07, long:-118.347,
    price: 220, address: '22 Street Street', num_bedrooms: 2, num_beds: 2, num_guest: 4 },

    { title: 'Huge Beach Mansion', home_type: 'Entire Home', host_id: 1, loc_id: 2, 
    description: 'Gorgeous mansion of your dreams. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:33.978, long:-118.47,
    price: 405, address: '122422 Street Street', num_bedrooms: 4, num_beds: 6, num_guest: 8 },

    { title: 'Spacious Downtown Apartment', home_type: 'Entire Apartment', host_id: 3, loc_id: 2, 
    description: 'Sleek and spacious apartment minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:34.044, long:-118.25,
    price: 205, address: '23 Los Angeles Street', num_bedrooms: 2, num_beds: 3, num_guest: 5 },

    { title: 'Small Studio', home_type: 'Entire Apartment', host_id: 1, loc_id: 2, 
    description: 'Wonderful studio minutes from Hollywood. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:33.99, long:-118.214,
    price: 109, address: '221 Street Street', num_bedrooms: 1, num_beds: 1, num_guest: 2 },

    { title: 'Architectural Gem', home_type: 'Entire Home', host_id: 3, loc_id: 2, 
    description: 'Beautifully designed home. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:34.00, long:-118.4977,
    price: 109, address: '222 Street Street', num_bedrooms: 2, num_beds: 2, num_guest: 4 },

    { title: 'Venice Beach Condo', home_type: 'Entire Home', host_id: 1, loc_id: 2, 
    description: 'Beautiful condo minutes from the beach. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:33.99, long:-118.475,
    price: 109, address: '1990 Street Street', num_bedrooms: 3, num_beds: 4, num_guest: 6 },

    ### PARIS, FRANCE ###

    { title: 'Small Home in 2eme', home_type: 'Entire Home', host_id: 3, loc_id: 3, 
    description: 'Beautiful home minutes from many cafes and restaurants. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:48.868, long:2.339,
    price: 205, address: '001 Street Street', num_bedrooms: 1, num_beds: 1, num_guest: 1 },

    { title: 'Historic Chateau', home_type: 'Entire Home', host_id: 3, loc_id: 3, 
    description: 'Huge historic Chateau minutes from the Seine. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:48.863, long:2.36,
    price: 405, address: '002 Street Street', num_bedrooms: 4, num_beds: 4, num_guest: 8 },

    { title: 'Petit Apartment dans le 11eme', home_type: 'Entire Apartment', host_id: 3, loc_id: 3, 
    description: 'Beautiful cozy apartment minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:48.856, long:2.378,
    price: 210, address: '030 Street Street', num_bedrooms: 2, num_beds: 3, num_guest: 4 },

    { title: 'Apartment dans le 1er', home_type: 'Entire Apartment', host_id: 3, loc_id: 3, 
    description: 'Spacious apartment minutes from museums. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:48.864, long:2.336,
    price: 185, address: '040 Street Street', num_bedrooms: 2, num_beds: 2, num_guest: 3 },

    { title: 'Large Loft dans la cite', home_type: 'Entire Apartment', host_id: 2, loc_id: 3, 
    description: 'Comfortable loft minutes from Notre Dame. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:48.854, long:2.350,
    price: 359, address: '050 Street Street', num_bedrooms: 3, num_beds: 4, num_guest: 6 },

    ### NEW YORK ###
    
    { title: 'Manhattan Apartment', home_type: 'Entire Apartment', host_id: 2, loc_id: 4, 
    description: 'Beautiful Manhattan apartment minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:40.745, long:-73.991,
    price: 305, address: '011 NY Street', num_bedrooms: 2, num_beds: 3, num_guest: 5 },

    { title: 'Modest NY Pad', home_type: 'Entire Apartment', host_id: 2, loc_id: 4, 
    description: 'Comfortable apartment walking distance from the subway. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:40.696, long:-73.992,
    price: 250, address: '033 NY Street', num_bedrooms: 2, num_beds: 2, num_guest: 4 },

    { title: 'Modern Apartment', home_type: 'Entire Apartment', host_id: 2, loc_id: 4, 
    description: 'Beautiful modern apartment minutes from restaurants and public transportation. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:40.74, long:-74.033,
    price: 185, address: '021 Broadway Ave', num_bedrooms: 2, num_beds: 2, num_guest: 4 },

    { title: 'Lower Manhattan Loft', home_type: 'Entire Apartment', host_id: 2, loc_id: 4, 
    description: 'Cozy loft of your dreams in Lower Manhattan. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:40.723, long:-73.999,
    price: 205, address: '022 Broadway Ave', num_bedrooms: 1, num_beds: 2, num_guest: 3 },

    
    ### SEATTLE WASHINGTON ###
    ### number 21 Starting Below ###

    { title: 'Bellevue Studio', home_type: 'Entire Apartment', host_id: 2, loc_id: 5, 
    description: 'Beautiful studio in Old Bellevue. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:47.62, long:-122.2121,
    price: 125, address: '001 Seattle St', num_bedrooms: 1, num_beds: 1, num_guest: 2 },

    { title: 'Bellevue Apartment', home_type: 'Entire Apartment', host_id: 2, loc_id: 5, 
    description: 'Newly renovated apartment minutes from transit. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:47.623, long:-122.22,
    price: 220, address: '002 Seattle St', num_bedrooms: 2, num_beds: 2, num_guest: 4 },

    { title: 'Mercer Loft', home_type: 'Entire Apartment', host_id: 3, loc_id: 5, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:47.62, long:-122.212,
    price: 255, address: '003 Seattle St', num_bedrooms: 2, num_beds: 3, num_guest: 5 },

    { title: 'Capitol Hill Condo', home_type: 'Entire Home', host_id: 3, loc_id: 5, 
    description: 'Spacious condo minutes from downtown and restaurants. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:47.62, long:-122.332,
    price: 295, address: '004 Seattle St', num_bedrooms: 3, num_beds: 4, num_guest: 6 },

    ### MIAMI FLORIDA ###

    { title: 'Huge Mansion', home_type: 'Entire Home', host_id: 2, loc_id: 6, 
    description: 'Huge mansion minutes from Coral Gables. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:25.701, long:-80.2788,
    price: 305, address: '001 Miami Street', num_bedrooms: 4, num_beds: 6, num_guest: 10 },

    { title: 'Brickell Loft', home_type: 'Entire Home', host_id: 2, loc_id: 6, 
    description: 'Beautiful loft minutes from downtown Brickell. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:25.768, long:-80.1847,
    price: 300, address: '002 Miami Street', num_bedrooms: 2, num_beds: 3, num_guest:6 },

    { title: 'South Beach Penthouse', home_type: 'Entire Home', host_id: 2, loc_id: 6, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:25.78, long:-80.1342,
    price: 300, address: '003 Miami Street', num_bedrooms: 3, num_beds: 4, num_guest: 6 },

    ### LONDON U.K. ###

    { title: 'Small Flat', home_type: 'Entire Apartment', host_id: 3, loc_id: 7, 
    description: 'Beautiful home on the beach',
    lat:51.499, long:-0.11,
    price: 105, address: '001 London Street', num_bedrooms: 2, num_beds: 2, num_guest: 4 },

    { title: 'Large Flat', home_type: 'Entire Apartment', host_id: 2, loc_id: 7, 
    description: 'Beautiful home on the beach',
    lat:51.49, long:-0.159,
    price: 295, address: '002 London Street', num_bedrooms: 3, num_beds: 4, num_guest: 6 },

    { title: 'Medium Flat', home_type: 'Entire Apartment', host_id: 3, loc_id: 7, 
    description: 'Beautiful home on the beach',
    lat:51.495, long:-0.0149,
    price: 175, address: '003 London Street', num_bedrooms: 2, num_beds: 3, num_guest: 5 },

    { title: 'EarthIs Flat', home_type: 'Entire Apartment', host_id: 2, loc_id: 7, 
    description: 'Beautiful home on the beach',
    lat:51.473, long:-0.0869,
    price: 123, address: '004 London Street', num_bedrooms: 3, num_beds: 5, num_guest: 6 },


    ### WHISTLER B.C. ###

    { title: 'Plain Old Home', home_type: 'Entire Home', host_id: 3, loc_id: 8, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:50.1259, long:-122.950,
    price: 200, address: '001 Whistler', num_bedrooms: 2, num_beds: 3, num_guest: 4 },

    { title: 'Newly Renevated Home', home_type: 'Entire Home', host_id: 2, loc_id: 8, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:50.092, long:-123.028,
    price: 175, address: '002 Whistler', num_bedrooms: 3, num_beds: 4, num_guest: 6 },

    { title: 'Ski Chalet', home_type: 'Entire Home', host_id: 3, loc_id: 8, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:50.149, long:-122.956,
    price: 355, address: '003 Whistler', num_bedrooms: 5, num_beds: 8, num_guest: 10 },

    
    ### ASPEN COLORADO ###


    { title: 'Small Warm Cabin', home_type: 'Entire Home', host_id: 2, loc_id: 9, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:39.19, long:-106.806,
    price: 175, address: '001 Aspen Street', num_bedrooms: 2, num_beds: 4, num_guest: 5 },

    { title: 'Cozy Ski Chalet', home_type: 'Entire Home', host_id: 3, loc_id: 9, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:39.200, long:-106.858,
    price: 205, address: '002 Aspen Street', num_bedrooms: 3, num_beds: 4, num_guest: 6 },

     ### BARCELONA SPAIN ###
   
    { title: 'Historic Home', home_type: 'Entire Home', host_id: 2, loc_id: 10, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:41.395, long:2.126,
    price: 235, address: '001 Barcelona Street', num_bedrooms: 3, num_beds: 3, num_guest: 5 },
    
    { title: 'Beach House', home_type: 'Entire Home', host_id: 2, loc_id: 10, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:41.399, long:2.2126,
    price: 305, address: '002 Barcelona Street', num_bedrooms: 2, num_beds: 4, num_guest: 6 },   
])

spot = Spot.find(1)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/1/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/1/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/1/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/1/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/1/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")


spot = Spot.find(2)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/2/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/2/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/2/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/2/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/2/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")


spot = Spot.find(3)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/3/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/3/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/3/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/3/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/3/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")


spot = Spot.find(4)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/4/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/4/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/4/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/4/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/4/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")


spot = Spot.find(5)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/5/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/5/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/5/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/5/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/5/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")


spot = Spot.find(6)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/6/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/6/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/6/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/6/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/6/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")


spot = Spot.find(7)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/7/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/7/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/7/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/7/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/7/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")


spot = Spot.find(8)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/8/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/8/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/8/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/8/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/8/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")


spot = Spot.find(9)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/9/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/9/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/9/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/9/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/9/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(10)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/10/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/10/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/10/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/10/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/10/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")


spot = Spot.find(11)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/11/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/11/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/11/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/11/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/11/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")


spot = Spot.find(12)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/12/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/12/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/12/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/12/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/12/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")


spot = Spot.find(13)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/13/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/13/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/13/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/13/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/13/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")


spot = Spot.find(14)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/14/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/14/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/14/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/14/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/14/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")


spot = Spot.find(15)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/15/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/15/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/15/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/15/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/15/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(16)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/16/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/16/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/16/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/16/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/16/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(17)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/17/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/17/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/17/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/17/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/17/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(18)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/18/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/18/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/18/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/18/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/18/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(19)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/19/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/19/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/19/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/19/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/19/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(20)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/20/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/20/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/20/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/20/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/20/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(21)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/21/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/21/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/21/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/21/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/21/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(22)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/22/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/22/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/22/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/22/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/22/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(23)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/23/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/23/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/23/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/23/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/23/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(24)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/24/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/24/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/24/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/24/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/24/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(25)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/25/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/25/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/25/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/25/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/25/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(26)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/26/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/26/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/26/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/26/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/26/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(27)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/27/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/27/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/27/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/27/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/27/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(28)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/28/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/28/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/28/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/28/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/28/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(29)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/29/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/29/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/29/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/29/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/29/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(30)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/30/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/30/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/30/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/30/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/30/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(31)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/31/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/31/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/31/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/31/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/31/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(32)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/32/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/32/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/32/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/32/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/32/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(33)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/33/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/33/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/33/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/33/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/33/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(34)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/34/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/34/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/34/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/34/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/34/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(35)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/35/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/35/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/35/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/35/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/35/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(36)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/36/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/36/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/36/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/36/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/36/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(37)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/37/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/37/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/37/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/37/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/37/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")

spot = Spot.find(38)
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/38/1.png')
spot.photos.attach(io: file, filename: '1.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/38/2.png')
spot.photos.attach(io: file, filename: '2.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/38/3.png')
spot.photos.attach(io: file, filename: '3.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/38/4.png')
spot.photos.attach(io: file, filename: '4.png')
file = open('https://s3-us-west-2.amazonaws.com/mybnb-seeds/spot-photos/38/5.png')
spot.photos.attach(io: file, filename: '5.png')
puts("I attached some photos")
