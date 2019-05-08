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
