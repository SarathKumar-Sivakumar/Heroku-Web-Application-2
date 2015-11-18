#!/usr/bin/env ruby

require 'csv'
require 'redis'
require 'json'

begin 
    connection = Redis.new(:url => "redis://h:pn9nqom98a3ps8tc465jgtvf53@ec2-54-83-59-218.compute-1.amazonaws.com:10319")

        puts 'Databse connected'
    puts "Enter the Non-primary Key (Statecode or County or Construction)"
   colnm=gets.chomp
    puts "Enter the Non-primary Key value of selected columns"
	q_key=gets.chomp

       query=connection.get(q_key)

	
   	 val=JSON.parse(query)
	 if unless val.nil? or query == 0  
   	      puts "Statecode: #{val[0]}\n County: #{val[1]} \n Latitude:#{val[2]} \n Longitiude:#{val[3]} \n Line:#{val[4]} \n Construction:#{val[5]} \n Point:#{val[6]}"	     
         end
         end
   
 connection.quit
    puts "Connection closed"
end


