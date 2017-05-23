host = "127.0.0.1";
user = "root";
pw = "hy156415";

dbname = "englishproblem_development";
require 'mysql2'
# Database Connection
begin
   client = Mysql2::Client.new(:host => host, :username => user, :password => pw, :database => dbname)

rescue Mysql2::Error => e
   puts e.errno
   puts e.error
end

# Database Query (SELECT
result = client.query("SELECT * FROM users")
result.each do |x|
  print(x['email'])
end
