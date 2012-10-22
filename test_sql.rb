require 'sqlite3'
require 'nokogiri'
require 'open-uri'

# delete an old database if it 
File.delete('jobboards.db') if File.exists?('jobboards.db')

# create a new database that is populated with the tables but no data yet.

db = SQLite3::Database.new "jobboards.db"
  rows = db.execute <<-SQL
    CREATE TABLE jobs (
      id INTEGER PRIMARY KEY,
      post_name TEXT,
      url TEXT,
      company_name TEXT,
      location TEXT,
      description TEXT,

    ); 
  SQL
