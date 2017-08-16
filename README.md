# README

Features:
0. Set up Azure PaaS web app at url: http://mpcs52533-final2.azurewebsites.net/ 
1. Signup and login functionality
    - header shows name of user logged in
    - signing out restricts user to no edit or delete
2. Create, edit, and delete profile functionality
3. Writing reviews for different profiles, restful create/edit/delete functionality 
    - reviews joined/tied to user profile
    - only users who own review can edit/delete/rate
    - dynamic logic so if no reviews gives different html
    - controller averages reviews to give overall rating
4. Frontend edit/delete visibility for only users that own review
5. Custom messaging validation of user error when creating user profile or writing review
6. Landing page

Database features:
1. data validation for models
2. joins from reviews and user attributes to proper user profiles and destroy/delete tiein for dependencies
3. validation and password security


Frontend:
1. Index styling image adjustment based on size of screen with @media and bootstrap
2. custom google font
3. bootstrap jumbotron and styling
4. Using image links for background (better method is probably to store images in cache)
5. html of reviews and other show author

BETA/TBD
1. student profile
2. scheduling connecting student and tutor availability (this would be a backend worker node in Azure/AWS matching based on availability and filter criteria such as ratings)