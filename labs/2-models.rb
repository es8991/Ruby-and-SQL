# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

new_salespeople = Salesperson.new
new_salespeople["first_name"] = "Sarah"
new_salespeople["last_name"] = "El-Guindy"
new_salespeople["email"] = "sarahelguindy@yahoo.com"
new_salespeople.save

new_salespeople = Salesperson.new
new_salespeople["first_name"] = "Azanta"
new_salespeople["last_name"] = "Thakur"
new_salespeople["email"] = "azantathakur@gmail.com"
new_salespeople.save

# 3. write code to display how many salespeople rows are in the database

puts ("Salespeople: #{Salesperson.all.count}")

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

salesperson_sarah = Salesperson.find_by({"first_name" => "Sarah", "last_name" => "El-Guindy"})
salesperson_sarah["email"] = "selguindy1998@gmail.com"
salesperson_sarah.save
# puts salesperson_sarah.inspect


# CHALLENGE:
# 5. write code to display each salesperson's full name

# first_name = Salesperson_sarah["first_name"]
# last_name = Salesperson_sarah["El-Guindy"]
# name = "#{first_name} #{last_name}"
# puts name

people = Salesperson.all

for person in people
    first_name = person["first_name"]
    last_name = person["last_name"]
    name = "#{first_name} #{last_name}"
    puts name
end


# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
