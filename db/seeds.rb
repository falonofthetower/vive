# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "not admin", email: 'admin@aol.com', password: 'brasileiro1', admin: true)
User.create(name: "admin", email: 'user@aol.com', password: 'brasileiro1', admin: false)
