#!/usr/bin/env ruby

require 'csv'
require 'redis'
require 'json'

begin 
    connection = Redis.new(:url => "redis://h:pn9nqom98a3ps8tc465jgtvf53@ec2-54-83-59-218.compute-1.amazonaws.com:10319")

      puts 'Database connected'
    puts "Enter the primary Key value (Policyid)"
    pk=gets.chomp
       query=connection.get(pk)


	 puts "The results is :\n"
 	 puts "the retrieved data for Policyid key :"+pk
	puts "Statecode | County | Latitude | Longtitude | Line | Construction | Point "
   	 val=JSON.parse(query)
	 if unless val.nil? or query == 0  
   	      puts "#{val[0]} | #{val[1]} | #{val[2]} | #{val[3]} | #{val[4]} | #{val[5]} | #{val[6]}"	     
         end
         end
   
 connection.quit
    puts "Connection closed"
end


