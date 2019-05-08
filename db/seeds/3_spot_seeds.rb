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

