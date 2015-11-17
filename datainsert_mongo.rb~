require 'mongo'
require 'csv'


mongo_uri = 'mongodb://heroku_mwbnckkk:kkcmtc4c3id4ibtar0cnoqi04t@ds055564.mongolab.com:55564/heroku_mwbnckkk'

begin
    #Connecting to the Mongo Client
    client = Mongo::Client.new([ 'ds055564.mongolab.com:55564' ],:database =>'heroku_mwbnckkk',:user=>'heroku_mwbnckkk',:password=>'kkcmtc4c3id4ibtar0cnoqi04t');
    puts "Successfully connected to mongo db"
    db = client.database
    db.collection_names.each{|name| puts name }
        college=db.collection('insurance')
        
    CSV.foreach('example.csv', :headers => true) do |obj|
               result=college.insert_one({ :policyid => obj['policyID'], :statecode => obj['statecode'], :county => obj['county'], :latitude => obj['point_latitude'], :longtitude => obj['point_longtitude'], :line => obj['line'], :construction => obj['construction'], :point => obj['point_granularity']})
                
        end    
        puts "Insertion into mongo db successful"

end

