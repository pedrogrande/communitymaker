# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(email: "jamiefoxx@gmail.com", password: "12345678")
user.add_role :admin
User.create(email: "whoopiegoldberg@gmail.com", password: "12345678")
User.create(email: "peterpan@gmail.com", password: "12345678")
