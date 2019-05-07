json.email user.email 
json.fname user.fname
json.lname user.lname 
json.id user.id 
if !json.photo.blank?
    json.photoUrl url_for(user.photo) 
end
