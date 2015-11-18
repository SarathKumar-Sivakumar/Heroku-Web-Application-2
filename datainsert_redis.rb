#!/usr/bin/env ruby

require 'csv'
require 'redis'
require 'json'



begin 
    con = Redis.new(:url => "redis://h:pn9nqom98a3ps8tc465jgtvf53@ec2-54-83-59-218.compute-1.amazonaws.com:10319")
   
    puts 'Databse connected'
    CSV.foreach('example.csv',:headers => true) do |obj|
       con.set obj['policyID'], [obj['statecode'], obj['county'], obj['point_latitude'], obj['point_longitude'], obj['line'], obj['construction'], obj['point_granularity']].to_json
    puts 'Item  inserted'    
	end 
    con.quit
        puts "Insertion into Redis db successful"
    
end


