# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer:
  Model: Defines the data structure.

  View: What is displayed to the user. Can be in .html.erb files or rendered directly.

  Controller: Directs the flow of traffic. Sends queries and requests to the correct destination.

  Researched answer:
  Model: Maintains the relationship between Object and Database and handles validation, association, transactions. Each model (can) represent a database table (in case of SQL databases). This model object gains capabilities to retrieve, save, edit, and delete data from database table. We use model objects as a layer between our application and the database.

  View: It is the presentation of the request’s response. This presentation can be a bunch of format types: PDF, HTML, JSON, etc. The final result of a view will be probably the user interface (UI) — Part of the “Client”.

  Controller: The facility within the application that directs traffic, on the one hand querying the models for specific data, and on the other hand organizing that data (searching, sorting) into a form that fits the needs of a given view.


2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the route in the file config/routes.rb
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the controller in the file controllers/statics_controller.rb
  ```
  class StaticsController < ApplicationController
    def about
      render "about.html.erb"
    end
  end
  ```

  Step 3: Create the View in the file views/layouts/about.html.erb
  code:
  ```
  <div>This is the About page!</div>
  ```


3a. Consider the Rails routes below. Describe the responsibility of  each route.


/users/       method="GET"     # :controller => 'users', :action => 'index'
Gets an index of all 'users' data.

/users/1      method="GET"     # :controller => 'users', :action => 'show'
Gets and displays the user with id: 1

/users/new    method="GET"     # :controller => 'users', :action => 'new'
Gets a form for creating a new user entry.

/users/       method="POST"    # :controller => 'users', :action => 'create'
Creates a new user entry.

/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
Gets a form to edit the user entry with id:1

/users/1      method="PUT"     # :controller => 'users', :action => 'update'
Updates user entry with id:1

/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'
Deletes user entry with id:1


3b. Which of the above routes must always be passed params and why?
The routes that have a /1 in the above example all need params as they are acting on specific entries in the database. Getting an index of all or creating a new entry does not require information about existing individual entries so do not need params to be passed.


4. What is the public folder used for in Rails?

  Your answer: To store information that can be accessed by anything, ex. error messages.

  Researched answer: The only folder seen by the world as-is. Contains static files and compiled assets.



5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"

get '/game/:guess' => 'main#game'


6. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer: It describes what is being submitted and to where.

  Researched answer: The action attribute specifies where to send the form-data when a form is submitted. Include method="get" for a get request.



7. Name two rails generator commands and what files they create:

  Your answer:
  rails generate controller - generates a new controller. creates a .rb file in the app/controllers directory.
  rails generate resource - generates a new resource that includes a new controller and associated routes.

  Researched answer:
  rails generate controller - Generates a new controller file.
  rails generate resource - Creates a new migration file. Creates a new controller file and creates routes in the routes.rb file. Also generates helper and scss files.

8. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

Ruby on Rails tutorial:
1.Rendering partial collections and forms. Useful for longer, more complex items to break into smaller, more managable chunks.

2.Steps for a simple user authentication system.

3.Make sure to use utf-8 data. Most text editors and databases do this by default but could start showing strange characters or errors if not formatted in utf-8.

9. STRETCH: What are cookies? What is the difference between a session and a cookie?

  Your answer: A file that stores user data. Used to maintain information across sessions, like view history, user preferences, etc.

  Researched answer:
  An HTTP cookie (web cookie, browser cookie) is a small piece of data that a server sends to the user's web browser. The browser may store it and send it back with the next request to the same server. Typically, it's used to tell if two requests came from the same browser — keeping a user logged-in, for example. It remembers stateful information for the stateless HTTP protocol.Cookies are mainly used for three purposes:

  Session management
      Logins, shopping carts, game scores, or anything else the server should remember
  Personalization
      User preferences, themes, and other settings
  Tracking
      Recording and analyzing user behavior

  Cookies were once used for general client-side storage. While this was legitimate when they were the only way to store data on the client, it is recommended nowadays to prefer modern storage APIs. Cookies are sent with every request, so they can worsen performance (especially for mobile data connections).
