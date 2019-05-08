require 'open-uri'


spots = Spot.create([   
    ### SAN FRANCISOCO ###

    {title: 'Marina Condo', home_type: 'Entire Home', host_id: 3, loc_id: 1, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:37.803562, long:-122.444155,
    price: 305, address: '825 Battery Street', num_bedrooms: 2, num_beds: 4, num_guest: 5 },

    { title: 'Small Closet', home_type: 'Shared Home', host_id: 2, loc_id: 1, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.',
    lat:37.796511, long:-122.433250,
    price: 15, address: '3302 Street Street', num_bedrooms: 1, num_beds: 1, num_guest: 1 },
    
    { title: 'Modern Apartment', home_type: 'Entire Apartment', host_id: 1, loc_id: 1, 
    description: 'Beautiful spacious box minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:37.798756, long:-122.416530,
    price: 205, address: '320 Battery Street', num_bedrooms: 2, num_beds: 2, num_guest: 4},

    { title: 'House in the Berkeley Hills', home_type: 'Entire Home', host_id: 3, loc_id: 1, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.',
    lat:37.885777, long:-122.250992,
    price: 415, address: '419 Battery Street', num_bedrooms: 3, num_beds: 4, num_guest: 6 },

    { title: 'Soma Loft', home_type: 'Entire Home', host_id: 3, loc_id: 1, 
    description: 'Beautiful spacious loft minutes from the heart of the mission. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:37.781117, long:-122.401151,
    price: 305, address: ' 22 Battery Street', num_bedrooms: 2, num_beds: 2, num_guest: 4 },

    ### LOS ANGELES ###

    { title: 'Cozy Condo', home_type: 'Entire Home', host_id: 2, loc_id: 2, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:34.07, long:-118.347,
    price: 220, address: '22 Street Street', num_bedrooms: 3, num_beds: 4, num_guest: 6 },

    { title: 'Huge Beach Mansion', home_type: 'Entire Home', host_id: 1, loc_id: 2, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:33.978, long:-118.47,
    price: 405, address: '122422 Street Street', num_bedrooms: 4, num_beds: 6, num_guest: 8 },

    { title: 'Spacious Downtown Apartment', home_type: 'Entire Apartment', host_id: 3, loc_id: 2, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:34.044, long:-118.25,
    price: 205, address: '22 Street Street', num_bedrooms: 2, num_beds: 3, num_guest: 5 },

    { title: 'Small Studio', home_type: 'Entire Apartment', host_id: 1, loc_id: 2, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:33.99, long:-118.214,
    price: 109, address: '221 Street Street', num_bedrooms: 1, num_beds: 1, num_guest: 2 },

    { title: 'Santa Monica Pad', home_type: 'Entire Home', host_id: 3, loc_id: 2, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:34.00, long:-118.4977,
    price: 109, address: '222 Street Street', num_bedrooms: 2, num_beds: 2, num_guest: 4 },

    { title: 'Venice Beach Condo', home_type: 'Entire Hone', host_id: 1, loc_id: 2, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:33.99, long:-118.475,
    price: 109, address: '1990 Street Street', num_bedrooms: 3, num_beds: 4, num_guest: 6 },

    ### PARIS, FRANCE ###

    { title: 'Small Bedroom', home_type: 'Shared Home', host_id: 3, loc_id: 3, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:48.868, long:2.339,
    price: 55, address: '001 Street Street', num_bedrooms: 1, num_beds: 1, num_guest: 1 },

    { title: 'Teeny Tiny Chateau', home_type: 'Entire Home', host_id: 3, loc_id: 3, 
    description: 'Beautiful spacious loft minutes from the Seine. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:48.863, long:2.36,
    price: 405, address: '002 Street Street', num_bedrooms: 4, num_beds: 4, num_guest: 8 },

    { title: 'Petit Apartment dans le 11eme', home_type: 'Entire Apartment', host_id: 3, loc_id: 3, 
    description: 'Beautiful apartment minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:48.856, long:2.378,
    price: 210, address: '030 Street Street', num_bedrooms: 2, num_beds: 3, num_guest: 4 },

    { title: 'Apartment dans le 1er', home_type: 'Entire Apartment', host_id: 3, loc_id: 3, 
    description: 'Beautiful apartment minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:48.864, long:2.336,
    price: 185, address: '040 Street Street', num_bedrooms: 2, num_beds: 2, num_guest: 3 },

    { title: 'Apartment dans la cite', home_type: 'Entire Apartment', host_id: 2, loc_id: 3, 
    description: 'Beautiful apartment minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:48.854, long:2.350,
    price: 359, address: '050 Street Street', num_bedrooms: 3, num_beds: 4, num_guest: 6 },

    ### NEW YORK ###
    
    { title: 'Manhattan Apartment', home_type: 'Entire Apartment', host_id: 2, loc_id: 4, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:40.745, long:-73.991,
    price: 305, address: '4842 VanNess Street', num_bedrooms: 2, num_beds: 3, num_guest: 5 },

    { title: 'Modest Apartment', home_type: 'Entire Apartment', host_id: 2, loc_id: 4, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:40.696, long:-73.99,
    price: 250, address: '4843 VanNess Street', num_bedrooms: 2, num_beds: 2, num_guest: 4 },

    { title: 'Modern Apartment', home_type: 'Entire Apartment', host_id: 2, loc_id: 4, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:40.74, long:-74.033,
    price: 185, address: '021 Broadway Ave', num_bedrooms: 2, num_beds: 2, num_guest: 4 },

    { title: 'Lower Manhattan Loft', home_type: 'Entire Apartment', host_id: 2, loc_id: 4, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:40.723, long:-73.999,
    price: 205, address: '022 Broadway Ave', num_bedrooms: 1, num_beds: 2, num_guest: 3 },

    ### SEATTLE WASHINGTON ###

    { title: 'Bellevue Studio', home_type: 'Entire Apartment', host_id: 2, loc_id: 5, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:47.62, long:-122.2121,
    price: 125, address: '001 Seattle St', num_bedrooms: 1, num_beds: 1, num_guest: 2 },

    { title: 'Bellevue Apartment', home_type: 'Entire Apartment', host_id: 2, loc_id: 5, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:47.621, long:-122.222,
    price: 220, address: '002 Seattle St', num_bedrooms: 2, num_beds: 2, num_guest: 4 },

    { title: 'Mercer Loft', home_type: 'Entire Apartment', host_id: 3, loc_id: 5, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:47.62, long:-122.212,
    price: 255, address: '003 Seattle St', num_bedrooms: 2, num_beds: 3, num_guest: 5 },

    { title: 'Capitol Hill Condo', home_type: 'Entire Home', host_id: 3, loc_id: 5, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:47.62, long:-122.332,
    price: 295, address: '004 Seattle St', num_bedrooms: 3, num_beds: 4, num_guest: 6 },

    ### MIAMI FLORIDA ###

    { title: 'Huge Mansion', home_type: 'Entire Home', host_id: 2, loc_id: 6, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:25.701, long:-80.2788,
    price: 305, address: '001 Miami Street', num_bedrooms: 4, num_beds: 6, num_guest: 10 },

    { title: 'Brickell Loft', home_type: 'Entire Home', host_id: 2, loc_id: 6, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
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


    { title: 'Small Cabin', home_type: 'Entire Home', host_id: 2, loc_id: 9, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:39.19, long:-106.806,
    price: 175, address: '001 Aspen Street', num_bedrooms: 2, num_beds: 4, num_guest: 5 },

    { title: 'Ski Chalet', home_type: 'Entire Home', host_id: 3, loc_id: 9, 
    description: 'Beautiful spacious loft minutes from downtown. Kitchen – Modern with stone counters, European wood cabinetry, professional series Frigidaire kitchen appliances. 
    Includes dishwasher, garbage disposal, Kuerig coffee machine, Cuisinart toaster oven, electric kettle and all the cookware necessary to make a gourmet meal.', 
    lat:39.200, long:-106.858,
    price: 205, address: '002 Aspen Street', num_bedrooms: 3, num_beds: 4, num_guest: 6 },

     ### BARCELONA SPAIN ###
   
    { title: 'Hisotic Home', home_type: 'Entire Home', host_id: 2, loc_id: 10, 
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

