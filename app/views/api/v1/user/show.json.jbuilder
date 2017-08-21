json.response do 
	json.array! @user_object.each do |user_object|
	   json.name user_object.name
	   json.password user_object.password
	end
end