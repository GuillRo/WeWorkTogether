# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

WorkspaceReview.destroy_all
UserReview.destroy_all
Photo.destroy_all
Profile.destroy_all
ServiceList.destroy_all
Service.destroy_all
BookingPlace.destroy_all
Place.destroy_all
Workspace.destroy_all
Payment.destroy_all
Booking.destroy_all
User.destroy_all

user_1 = User.create!(password: "123123", email: "john@wagon.be", first_name: "John", last_name: "Dupont", address: "62 rue du mans")
user_2 = User.create!(password: "123123", email: "henry@wagon.be", first_name: "Henry", last_name: "Dupont", address: "63 rue du mans")

user_1.create_profile!(bio: "Hi. I am a dog fucker")

service_1 = Service.create!(name: "Nasty toilets")

workspace_1 = Workspace.create!(user: user_1, description: "nice place", address: "15, rue de la gare", title: "Super coworking", website: "www.supercoworking.com", phone_number: "02.123.15.45")

ServiceList.create!(workspace: workspace_1, service: service_1)

place_1 = Place.create!(workspace: workspace_1, price: 23)

booking_1 = Booking.create!(beginning_date: Date.new(2019,2,1), end_date: Date.new(2019,2,3) , status: true, user: user_1)

BookingPlace.create!(booking: booking_1, place: place_1)

UserReview.create!(score: 3, content: "What an ass. This guy killed my dog", booking: booking_1)

WorkspaceReview.create!(booking: booking_1, content: "That place was hell", score: 1)

Payment.create!(booking: booking_1, renter: booking_1.user, owner: workspace_1.user)