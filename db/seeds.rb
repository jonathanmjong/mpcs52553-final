# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name =>'Star Wars' }, { name =>'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


data = [
	{
		"Name" => "Jonathan Jong", 
		"Price" => "15", 
		"Image" => "https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAhPAAAAJDg3YTVmNzEyLWE5N2YtNGI3My1hNTNjLTkzMGRhYWYxYzU4ZQ.jpg",
        "Description" =>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
	},
	{
		"Name" =>"Miriam Lee", 
		"Price" =>"29", 
		"Image" =>"https://static.pexels.com/photos/7720/night-animal-dog-pet.jpg",
		"Description" =>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
	},
	{
		"Name" =>"Jonas Soriano", 
		"Price" =>"20", 
		"Image" =>"http://is1.mzstatic.com/image/thumb/Purple117/v4/83/3b/5f/833b5fdc-02c2-e0b3-8fb3-7326af4e8cc5/source/1200x630bb.jpg",
		"Description" =>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
	},
	{
		"Name" =>"Timothy Choh", 
		"Price" =>"19", 
		"Image" =>"https://scontent.ford1-1.fna.fbcdn.net/v/t1.0-9/18921716_10155380079982248_2306725261566143020_n.jpg?oh=304e5dce71878c9fc709977da602dfb8&oe=5A07BBC1",
		"Description" =>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
	}
]

data.each do |edamater|
    Edamater.create(name: edamater["Name"], price: edamater["Price"], image: edamater["Image"], description: edamater["Description"])
end 

User.create(username: "test", email: "test", password: "123")
