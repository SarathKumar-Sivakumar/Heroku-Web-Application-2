#!/usr/bin/env ruby

require 'csv'
require 'redis'
require 'json'

begin 
    redisConn = Redis.new(:url => "redis://h:pn9nqom98a3ps8tc465jgtvf53@ec2-54-83-59-218.compute-1.amazonaws.com:10319")

    puts 'Databse connected'
    puts "Enter the Key value (UNITID)"
    primary_key=gets
    if primary_key.strip! == nil
    query=redisConn.get(primary_key)
    else
    query=redisConn.get(primary_key)
    end
    if unless query.nil? or query == 0  
	 puts "Retrieve success"   
 	 puts "the retrieved data for UNITID key :"+primary_key
	 puts " OPEID | opeid6 | INSTNM | CITY | STABBR | INSTURL"
   	 val=JSON.parse(query)
	 if unless val.nil? or query == 0  
   	     puts "#{val[0]} | #{val[1]} | #{val[2]} | #{val[3]} | #{val[4]} | #{val[5]}"	     
         end
         end
    end
    end    
    redisConn.quit
    puts "Connection closed"
end

