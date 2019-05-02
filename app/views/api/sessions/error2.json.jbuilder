@error = { email: "Incorrect email", password: "Incorrect password"}

json.extract! @error, :email, :password