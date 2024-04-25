# Twitter-clone

## Presentation video: 


## Features

1- User can signin/login with valid credentials.
2- User can post their tweet messages and can perform CRUD operations on them.


##  Follow following steps to get this app working

1 - open your terminal and run following commands : 
```
git@github.com:bhushan354/Twitter-Clone.git

cd Twitter-Clone
```

2 - configure the rails/ruby version in GEMFILE 

3 - configure your config/database.yml file according to your database configuration

4 then run following commands : 
```
bundle install
rails db:drop
rails db:create
rails db:migrate
```

5 - to start your webpage on localhost run :
```
rails server
```

6 - Signin/Login with your credentials and start using the app.