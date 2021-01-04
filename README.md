# Top-notch Education Consult Ukrain

This is a startup that I wrote in 2 weeks at the request of a friend of mine who wanted to help young people from the 3rd world to get a European education, this is a simple site like an online store.

The main models that were involved in this project:

Server in full working order: http://165.22.95.216/

## 1. Special gems:
    devise, '4.7.3'
    rails_admin, '2.0.2'
    slim_rails, '3.2.0'    
    paperclip, '6.1.0'
    pg, '1.2.3'
   
 
## 2. List of used models:
    User
    Faculty
    University
    Faculty_University
    Order
    Comment

    
`User` - Thanks to gem devise, it was possible to create extras of the User class, as well as the Admin column with the boolean value true/false was added to the table schema so that the user with the value true could enter the tab / admin and make changes and create new Institutes / Faculties as well also be able to view the status of requests and comments.

`Faculty, University, Faculty_University` - What was the idea? At that moment when I was thinking about architecture, the meaning was that it would be possible to implement some sort of sorting and decided to do it by faculty, since each institute can have an arbitrary number of faculties, but some institutes may have the same faculty, due to with this it was. it was decided to create a third table in which the objects will refer to each other.

`Order, Comment` -  Objects of user interaction and universities

##3. Database 
Environment: Test \ Development

For the environment of the developer and the test, the `SQLite` database was chosen since there are no security problems on my local PC and I do not see the point of unnecessary gestures.

Environment: Production

For the production environment, the `postgreSQL` database will be the optimal solution, it ideally combines security and comfortable syntax.

##4. Server

HTTP service and app service:

I do not expect that the site will have a large number of requests, but for increased reliability, the service was chosen service `Nginx`. The `passanger` web service was chosen for production, since I am a reinsurer and I rely on the fact that my application should accept a lot of Http requests. 

