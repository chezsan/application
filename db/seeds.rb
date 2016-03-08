# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
Company.delete_all
Group.delete_all
Level.delete_all
Categorization.delete_all
User.delete_all

# Create the companies
puts "Creating companies..."
google = Company.create(name: "Google")
scj = Company.create(name: "SC Johnson")
equinix = Company.create(name: "Equinix")
gopro = Company.create(name: "GoPro")
vanderbilt = Company.create(name: "Vanderbilt University")

# Create the groups
puts "Creating groups..."
monthly = Group.create(image: "monthly.jpg", name: "Monthly")
quarterly = Group.create(image: "quarterly.jpg", name: "Quarterly")
annually = Group.create(image: "annually.jpg", name: "Annually")

# Create the users
puts "Creating users..."
vanschaack = User.create(company_id: vanderbilt.id, group_id: quarterly.id, name: "Andy Van Schaack")
dragland = User.create(company_id: scj.id, group_id: monthly.id, name: "Amy Dragland Johnson")
dikes = User.create(company_id: google.id, group_id: quarterly.id, name: "Wendy Dikes")
payne = User.create(company_id: google.id, group_id: quarterly.id, name: "Juston Payne")
witherspoon = User.create(company_id: google.id, group_id: annually.id, name: "Miles Witherspoon")
dangson = User.create(company_id: equinix.id, group_id: annually.id, name: "Ted Dangson")
tarter = User.create(company_id: google.id, group_id: annually.id, name: "Gregg Tarter")
haljun = User.create(company_id: google.id, group_id: annually.id, name: "Jim Haljun")
podgorski = User.create(company_id: gopro.id, group_id: monthly.id, name: "Claire Podgorski")


# Create the levels
puts "Creating levels..."
peer = Level.create(name: "Peer")
manager = Level.create(name: "Manager")
director = Level.create(name: "Director")
professor = Level.create(name: "Professor")

puts "Creating Categorizations..."

# Create the categorizations for vanschaack
Categorization.create(level_id: professor.id, user_id: vanschaack.id)

# Create the categorizations for dragland
Categorization.create(level_id: director.id, user_id: dragland.id)

# Create the categorizations for dikes
Categorization.create(level_id: director.id, user_id: dikes.id)

# Create the categorizations for payne
Categorization.create(level_id: manager.id, user_id: payne.id)

# Create the categorizations for witherspoon
Categorization.create(level_id: manager.id, user_id: witherspoon.id)

# Create the categorizations for dangson
Categorization.create(level_id: director.id, user_id: dangson.id)

# Create the categorizations for tarter
Categorization.create(level_id: manager.id, user_id: tarter.id)

# Create the categorizations for haljun
Categorization.create(level_id: manager.id, user_id: haljun.id)

# Create the categorizations for podgorski
Categorization.create(level_id: peer.id, user_id: podgorski.id)

# Create Internalusers
Internaluser.create(name: "Tyler", email: "tylersanchez@gmail.com", password: "secret", role: "admin")
Internaluser.create(name: "Joe", email: "joe@gmail.com", password: "password", role: "user")

puts "There are now #{User.count} users, #{Company.count} companies, #{Level.count} levels, #{Categorization.count} categorizations, #{Internaluser.count} internalusers and #{Group.count} groups in the database."