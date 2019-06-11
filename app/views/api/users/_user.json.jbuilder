json.email user.email 
json.fname user.fname
json.lname user.lname 
json.created_at user.created_at
json.id user.id 
json.image_url url_for(user.photo) if user.photo.attached?

# if !json.photo.blank?
#     json.photoUrl url_for(user.photo) 
# end
