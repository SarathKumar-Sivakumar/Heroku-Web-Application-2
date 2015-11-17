
#!/usr/bin/env ruby

require 'csv'
require 'uri'
require 'pg'

uri = URI.parse('postgres://drmuqvrkzfmswf:IyGxG0qBuCoHeykxVcQ8edbrsa@ec2-54-83-53-120.compute-1.amazonaws.com:5432/dbb3os6b5regv7')

begin 
	 connection = PG.connect(uri.hostname, uri.port, nil, nil, uri.path[1..-1], uri.user, uri.password)    
    puts 'Databse connected'
    puts "Enter the Non-primary Key (Statecode or County or Construction)"
   colnm=gets.chomp
    puts "Enter the Non-primary Key value of selected columns"
	q_key=gets.chomp
	result= connection.exec("SELECT * from insurance where "+colnm+"='"+q_key+"' limit 20;");
	
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
	     connection.close
    puts 'Connection closed'
end


