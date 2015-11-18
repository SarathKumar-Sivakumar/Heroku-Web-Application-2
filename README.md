# CSE5335-project-2
-----------

Name	: Sarath Kumar Siva Kumar
-----------

UTA ID	: 1001108398
-----------

Netid	: sxs8398
-----------

Webdata Managment and  Xml Project 2
-----------



a. What is your external data source used to populate your Heroku data sources? 

* I used the following link to get the data which I am using in the all the three database
 https://support.spatialkey.com/spatialkey-sample-csv-data/
* This database is based on the insurance database of all the county in Florida state
  

b. What are the Heroku toolbelt commands to execute the scripts? 

###### Github

    git init
    echo "# cse5335-sxs8398-2" >> README.md
    git commit -m "First"
    git remote add origin "https://github.com/SarathKumar-Sivakumar/cse5335-sxs8398-2.git"
    git push -u origin master
    git clone https://github.com/SarathKumar-Sivakumar/cse5335-sxs8398-2.git
  
###### Put all the project files in the folder

    git commit -m "Second"
    git push

###### Heroku

    heroku login
    heroku create cse-sxs8398
    git push heroku master

###### Run the scrpits

    heroku run ruby datainsert_csv_pg.rb          :Gets the data from csv file and puts into Postgres database
    heroku run ruby datainsert_mongo_.rb          :Gets the data from csv file and puts into Mongodb database
    heroku run ruby datainsert_redis.rb           :Gets the data from csv file and puts into Redisdb database
    heroku run ruby dataretrieve_pg.rb            :User geives the input and retrieves data from Postgres database based on primary key 
    heroku run ruby dataretrieve_mongo_.rb        :User geives the input and retrieves data from Mongodb database based on primary key 
    heroku run ruby dataretrieve_redis.rb         :User geives the input and retrieves data from Redisdb database based on primary key 
    heroku run ruby dataretrieve_nonpk_pg.rb      :User geives the input and retrieves data from Postgres database based on non-primary key 
    heroku run ruby dataretrieve_nonpk_mongo_.rb  :User geives the input and retrieves data from Mongodb database based on non-primary key 
    heroku run ruby dataretrieve_nonpk_redis.rb   :User geives the input and retrieves data from Redisdb database based on non-primary key 


c. Implementation which was easy

* Inserting into the postgres and mongodb database is quite easier
* Also, retrieving the data from the postgres and mongodb database effortless 
* Pushing the application into heroku server was the easiest thing to do. 

d. Implementation which was hard

* While the Redis database is quite complicated and retrieving the data based on key-value pair also difficult.
* Updating the ruby in the heroku, I had problem with the different version which I overcame by overwriting in the gem file.

e. Sharing the project

###### Add collaborators for github

    Go to Settings in CSE5335-project-1 respository in github and then click "Collaborators"
    Add GTA as collaborator for github        : emmons-uts
    Add Professor as collaborator for github  : samvarankashyap

###### Add collaborators for heroku

    GTA as collaborator                       : heroku sharing:add samvaran.rallabandi@mavs.uta.edu
    Professor as collaborator                 : heroku sharing:add emmons@uta.edu

###### The link to the running heroku app

    https://cse-yxs1504-2.herokuapp.com/

###### References

   http://redis.io/topics/indexes
   http://www.rubydoc.info/github/ezmobius/redis-rb/Redis%3Ahmset
   https://devcenter.heroku.com/articles/mongolab
   https://devcenter.heroku.com/articles/heroku-redis
   https://devcenter.heroku.com/articles/heroku-postgresql
   http://www.postgresql.org/docs/9.3/static/app-psql.html
   http://docs.mongolab.com/connecting/
   http://heroku.com
   http://stackoverflow.com/
