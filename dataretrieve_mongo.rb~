require 'mongo'
require 'csv'


mongo_uri = 'mongodb://heroku_mwbnckkk:kkcmtc4c3id4ibtar0cnoqi04t@ds055564.mongolab.com:55564/heroku_mwbnckkk'

begin
    #Connecting to the Mongo Client
    client = Mongo::Client.new([ 'ds055564.mongolab.com:55564' ],:database =>'heroku_mwbnckkk',:user=>'heroku_mwbnckkk',:password=>'kkcmtc4c3id4ibtar0cnoqi04t');
    puts 'Databse connected'
    puts "Enter the primary Key value (Policyid)"
        primarykey=gets
        if primarykey.strip! == nil
            key=primarykey
        else
            key=primarykey
        end
    db = client.database
        coll=db.collection('insurance')   
        result=coll.find({ :policyid =>key })

        puts "The results are :\n"               
        result.each do |obj|
		statecode=obj['statecode']
		county=obj['county']
		latitude=obj['latitude']
		longtitude=obj['longtitude']
		line=obj['line']
		construction=obj['construction']
		point=obj['point']
            	puts "statecode: #{statecode} \n county: #{county} \n latitude: #{latitude} \n longtitude: #{longtitude} \n line: #{line} \n construction: #{construction} \n point: #{point}"
        end   
       
    puts 'Connection closed'   
end

