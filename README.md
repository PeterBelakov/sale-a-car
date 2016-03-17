Description: 
--------------------------------------------------------------------------------
Platform sale-a-car functionalities:
--------------------------------------------------------------------------------
1.0 Login form
1.1 Registration
1.2 Forgot your password
2. Edit the profile of the user who has logged
3. Place a Classified selling car
4. Revision of published ads
5. Search your search criteria
================================================================================
Installation Steps: 
================================================================================
1. Enter your root directory (cd path_to_your_directory)
2. git clone https://github.com/PeterBelakov/sale-a-car.git
3. Start server: php -S localhost:8000 -t public
3. Next, open your web browser and visit http://localhost:8000/
4. Configure your email settings here: C:\wamp\www\sale-a-car\config\mail.php
( From , SMTP Server Username, SMTP Server Password, port , encryption , etc.)
Note: Keep in mind if you are using Gmail SMTP server you should enavle less 
secure app settings in your account. Login in Gmail and visit this link:
 lhttps://www.google.com/settings/security/lesssecureapps
5. Database backup could be find in  ./sale-a-car.sql . Just simply import it
6. Configure database settings in ./config/database.php
