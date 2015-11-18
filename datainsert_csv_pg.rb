#!/usr/bin/env ruby

require 'csv'
require 'uri'
require 'pg'


uri = URI.parse('postgres://drmuqvrkzfmswf:IyGxG0qBuCoHeykxVcQ8edbrsa@ec2-54-83-53-120.compute-1.amazonaws.com:5432/dbb3os6b5regv7')

begin 
    connection = PG.connect(uri.hostname, uri.port, nil, nil, uri.path[1..-1], uri.user, uri.password)    
    puts 'Databse connected'
    
    CSV.foreach('example.csv', :headers => true) do |obj|
       connection.exec("INSERT into insurance (Policyid, Statecode, County,  Latitude, Longtitude, Line, Construction, Point) VALUES ('"+obj['policyID']+"','"+obj['statecode']+"','"+obj['county']+"','"+obj['point_latitude']+"','"+obj['point_longitude']+"','"+obj['line']+"','"+obj['construction']+"','"+obj['point_granularity']+"');")
    puts 'Item  inserted'    
	end 
    puts "Data insertion is sucessfully completed"
    connection.close
end



