
features = Feature.create  ([   
    { name: 'Wifi' },    
    { name: 'Parking' },
    { name: 'TV' },
    { name: 'Kitchen' },
    { name: 'Laundry' },
    { name: 'Pool' },
])


spot_features = SpotFeature.create([    
    { feature_id: 1, spot_id: 1 },
    { feature_id: 2, spot_id: 1 },
    { feature_id: 3, spot_id: 1 },


    { feature_id: 1, spot_id: 2 },
    { feature_id: 2, spot_id: 2 },
    
    { feature_id: 1, spot_id: 3 },
    { feature_id: 2, spot_id: 3 },
    { feature_id: 3, spot_id: 3 },
    { feature_id: 4, spot_id: 3 },
    { feature_id: 5, spot_id: 3 },


    { feature_id: 1, spot_id: 4 },
    { feature_id: 2, spot_id: 4 },
    { feature_id: 3, spot_id: 4 },
    { feature_id: 4, spot_id: 4 },


    { feature_id: 1, spot_id: 5 },
    { feature_id: 2, spot_id: 5 },
    { feature_id: 3, spot_id: 5 },

    ### LOS ANGELES ###

    { feature_id: 1, spot_id: 6 },
    { feature_id: 2, spot_id: 6 },
    { feature_id: 3, spot_id: 6 },
    { feature_id: 4, spot_id: 6 },


    { feature_id: 1, spot_id: 7 },
    { feature_id: 2, spot_id: 7 },
    { feature_id: 3, spot_id: 7 },
    { feature_id: 4, spot_id: 7 },
    { feature_id: 6, spot_id: 7 },

    { feature_id: 1, spot_id: 8 },
    { feature_id: 3, spot_id: 8 },
    { feature_id: 5, spot_id: 8 },

    { feature_id: 1, spot_id: 9 },
    { feature_id: 2, spot_id: 9 },

    { feature_id: 1, spot_id: 10 },
    { feature_id: 3, spot_id: 10 },
    { feature_id: 4, spot_id: 10 },
    { feature_id: 5, spot_id: 10 },

    { feature_id: 1, spot_id: 11 },
    { feature_id: 2, spot_id: 11 },
    { feature_id: 3, spot_id: 11 },
    { feature_id: 4, spot_id: 11 },
   
    ### PARIS FRANCE ###

    { feature_id: 1, spot_id: 12 },

    { feature_id: 2, spot_id: 13 },
    { feature_id: 4, spot_id: 13 },

    { feature_id: 1, spot_id: 14 },
    { feature_id: 2, spot_id: 14 },
    { feature_id: 4, spot_id: 14 },
    { feature_id: 5, spot_id: 14 },


    { feature_id: 1, spot_id: 15 },
    { feature_id: 4, spot_id: 15 },
    { feature_id: 5, spot_id: 15 },

    { feature_id: 1, spot_id: 16 },
    { feature_id: 4, spot_id: 16 },
    { feature_id: 5, spot_id: 16 },

    ### NEW YORK ###

    { feature_id: 1, spot_id: 17 },
    { feature_id: 3, spot_id: 17 },
    { feature_id: 4, spot_id: 17 },
    { feature_id: 5, spot_id: 17 },


    { feature_id: 1, spot_id: 18 },
    { feature_id: 4, spot_id: 18 },
    { feature_id: 5, spot_id: 18 },

    { feature_id: 1, spot_id: 19 },
    { feature_id: 3, spot_id: 19 },
    { feature_id: 4, spot_id: 19 },
    { feature_id: 5, spot_id: 19 },

    { feature_id: 1, spot_id: 20 },
    { feature_id: 3, spot_id: 20 },
    { feature_id: 4, spot_id: 20 },
    { feature_id: 5, spot_id: 20 },
    
    ### SEATTLE WASHINGTON ###
    { feature_id: 1, spot_id: 21 },
    { feature_id: 3, spot_id: 21 },
    { feature_id: 4, spot_id: 21 },
    { feature_id: 5, spot_id: 21 },

    { feature_id: 1, spot_id: 22 },
    { feature_id: 4, spot_id: 22 },
    { feature_id: 5, spot_id: 22 },

    { feature_id: 1, spot_id: 23 },
    { feature_id: 3, spot_id: 23 },
    { feature_id: 4, spot_id: 23 },
    { feature_id: 5, spot_id: 23 },

    { feature_id: 1, spot_id: 24 },
    { feature_id: 3, spot_id: 24 },
    { feature_id: 4, spot_id: 24 },
    { feature_id: 5, spot_id: 24 },
    
    ### MIAMI FLORIDA ###

    { feature_id: 1, spot_id: 25 },
    { feature_id: 2, spot_id: 25 },
    { feature_id: 3, spot_id: 25 },
    { feature_id: 4, spot_id: 25 },
    { feature_id: 6, spot_id: 25 },

    { feature_id: 1, spot_id: 26 },
    { feature_id: 4, spot_id: 26 },
    { feature_id: 5, spot_id: 26 },

    { feature_id: 1, spot_id: 27 },
    { feature_id: 3, spot_id: 27 },
    { feature_id: 4, spot_id: 27 },
    { feature_id: 5, spot_id: 27 },

    ### LONDON U.K. ###
    { feature_id: 1, spot_id: 28 },
    { feature_id: 3, spot_id: 28 },
    { feature_id: 4, spot_id: 28 },
    { feature_id: 5, spot_id: 28 },

    { feature_id: 1, spot_id: 29 },
    { feature_id: 4, spot_id: 29 },
    { feature_id: 5, spot_id: 29 },

    { feature_id: 1, spot_id: 30 },
    { feature_id: 3, spot_id: 30 },
    { feature_id: 4, spot_id: 30 },
    { feature_id: 5, spot_id: 30 },

    { feature_id: 1, spot_id: 31 },
    { feature_id: 3, spot_id: 31 },
    { feature_id: 4, spot_id: 31 },
    { feature_id: 5, spot_id: 31 },
    
    ### WHISTLER B.C. ###
    
    { feature_id: 1, spot_id: 32 },
    { feature_id: 2, spot_id: 32 },
    { feature_id: 3, spot_id: 32 },
    { feature_id: 4, spot_id: 32 },

    { feature_id: 1, spot_id: 33 },
    { feature_id: 2, spot_id: 33 },
    { feature_id: 4, spot_id: 33 },
    { feature_id: 5, spot_id: 33 },

    { feature_id: 1, spot_id: 34 },
    { feature_id: 2, spot_id: 34 },
    { feature_id: 4, spot_id: 34 },
    { feature_id: 5, spot_id: 34 },

    ### ASPEN COLORADO ###
    { feature_id: 1, spot_id: 35 },
    { feature_id: 2, spot_id: 35 },
    { feature_id: 3, spot_id: 35 },
    { feature_id: 4, spot_id: 35 },

    { feature_id: 1, spot_id: 36 },
    { feature_id: 2, spot_id: 36 },
    { feature_id: 4, spot_id: 36 },
    { feature_id: 5, spot_id: 36 },

    ### BARCELONA SPAIN ###

    { feature_id: 2, spot_id: 37 },
    { feature_id: 4, spot_id: 37 },
    { feature_id: 5, spot_id: 37 },

    { feature_id: 1, spot_id: 38 },
    { feature_id: 2, spot_id: 38 },
    { feature_id: 3, spot_id: 38 },
    { feature_id: 4, spot_id: 38 },
    { feature_id: 5, spot_id: 38 },
    { feature_id: 6, spot_id: 38 },



])