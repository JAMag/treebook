# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(username: "tiger1", email: "tiger1@hotmail.com", password: "firedog", password_confirmation: "firedog")
User.create(username: "tiger2", email: "tiger2@hotmail.com", password: "firedog", password_confirmation: "firedog")
User.create(username: "tiger3", email: "tiger3@hotmail.com", password: "firedog", password_confirmation: "firedog")
User.create(username: "tiger4", email: "tiger4@hotmail.com", password: "firedog", password_confirmation: "firedog")
User.create(username: "tiger5", email: "tiger5@hotmail.com", password: "firedog", password_confirmation: "firedog")
p "Test users created"