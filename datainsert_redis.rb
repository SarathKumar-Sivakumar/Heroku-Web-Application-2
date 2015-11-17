#!/usr/bin/env ruby

require 'csv'
require 'redis'
require 'json'



begin 
    redisConnection = Redis.new(:url => "redis://h:pn9nqom98a3ps8tc465jgtvf53@ec2-54-83-59-218.compute-1.amazonaws.com:10319")
   
    puts 'Databse connected'
    CSV.foreach('example.csv', :headers => true) do |obj|
       redisConnection.set obj['policyID'], obj['Statecode'], obj['County'], obj['Latitude'], obj['Longtitude'], obj['Line'], obj['Construction']].to_json
    puts 'Item  inserted'    
	end 
    redisConn.quit
        puts "Insertion into Redis db successful"
    
end

Policyid, Statecode, County, Latitude, Longtitude, Line, Construction, Point
