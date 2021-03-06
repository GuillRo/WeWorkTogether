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
BookingDate.destroy_all
BookingPlace.destroy_all
Place.destroy_all
Workspace.destroy_all
Payment.destroy_all
Booking.destroy_all
User.destroy_all

user_1 = User.create!(password: "123123", email: "john@wagon.be", first_name: "John", last_name: "Dupont", address: "62 rue du mans")
user_2 = User.create!(password: "123123", email: "henry@wagon.be", first_name: "Henry", last_name: "Dulac", address: "3 rue des champs")
user_3 = User.create!(password: "123123", email: "joe@wagon.be", first_name: "Joe", last_name: "Dusoleil", address: "63 carrefour leonard")
user_4 = User.create!(password: "123123", email: "hector@wagon.be", first_name: "Hector", last_name: "Delarue", address: "12 chaussee de warterloo")
user_5 = User.create!(password: "123123", email: "marie@wagon.be", first_name: "Marie", last_name: "Duchamps", address: "6 rue du vent")
user_6 = User.create!(password: "123123", email: "france@wagon.be", first_name: "France", last_name: "Dulent", address: "17 chaussee d'alsemberg")
user_7 = User.create!(password: "123123", email: "nicolas@wagon.be", first_name: "Nicolas", last_name: "Duvent", address: "14 rue des gendarmes")
user_8 = User.create!(password: "123123", email: "melody@wagon.be", first_name: "Melody", last_name: "Garcia", address: "15 rue du matin")
user_9 = User.create!(password: "123123", email: "louise@wagon.be", first_name: "Louise", last_name: "Luis", address: "19 chaussee de charleroi")
user_10 = User.create!(password: "123123", email: "camille@wagon.be", first_name: "Camille", last_name: "Ronaldi", address: "19 avenue louise")
user_11 = User.create!(password: "123123", email: "jean@wagon.be", first_name: "Jean", last_name: "Rodino", address: "7 rue verte")
user_12 = User.create!(password: "123123", email: "marc@wagon.be", first_name: "Marc", last_name: "Jhonson", address: "12 rue lotto")
user_13 = User.create!(password: "123123", email: "harold@wagon.be", first_name: "Harold", last_name: "Di Mario", address: "5 rue de la decouverte")
user_14 = User.create!(password: "123123", email: "alexia@wagon.be", first_name: "Alexia", last_name: "Fadiga", address: "63 avenue de la république")


service_1 = Service.create!(name: "24/7")
service_2 = Service.create!(name: "Printer")
service_3 = Service.create!(name: "Free coffee")
service_4 = Service.create!(name: "3D printer")
service_5 = Service.create!(name: "Kitchen")
service_6 = Service.create!(name: "Parking")
service_7 = Service.create!(name: "Shower")
service_8 = Service.create!(name: "Public transport")
service_9 = Service.create!(name: "Fast Internet")
service_10 = Service.create!(name: "Yoga")
service_11 = Service.create!(name: "Private lockers")
service_12 = Service.create!(name: "Lounge area")


workspace_1 = Workspace.create!(user: user_1, description: "The Koekenfabriek is a shared workspace in the heart of Merksem.Freelancers, self-employed and small businesses find a place here to work quietly, meet each other and receive customers in an inspiring environement.", address: "Komiteitstraat 46-52,2170 Merksem", title: "Koekenfabriek", website: "https://www.koekenfabriek.be", phone_number: "+32 474 24 08 30")
workspace_2 = Workspace.create!(user: user_2, description: "It is never easy to find the ideal workplace.The office is uninspiring and at home the cat comes undisturbed on your keyboard puffs. What you need is a workplace that gives you energy, focus and a fantastic vibe. A place where you feel at home, but where you can get the best out of yourself professionally.", address: "Grote Hondstraat 44,2018 Antwerpen", title: "House of ape Antwerpen", website: "https://www.apecollective.com/", phone_number: "+32 3 298 77 83")
workspace_3 = Workspace.create!(user: user_2, description: "It is never easy to find the ideal workplace.The office is uninspiring and at home the cat comes undisturbed on your keyboard puffs. What you need is a workplace that gives you energy, focus and a fantastic vibe. A place where you feel at home, but where you can get the best out of yourself professionally.", address: "Huidevettersstraat 7,2800 Mechelen", title: "House of ape Mechelen", website: "https://www.apecollective.com/", phone_number: "+32 3 298 77 83")
workspace_4 = Workspace.create!(user: user_3, description: "What to do with a beautiful office environment and the desire to facilitate entrepreneurial and creative talent? Right... you offer it the possibility to flourish in a new synergetic setting as part of a brand new coworking initiative. Indian Caps, an old uniform factory in the heart of Antwerp, has been transformed into a creative and flexible work environment with tons of possibilities, facilities and options. You yourself don't have to invest in any office and meeting space, we already made that happen for you! Feel free to explore our website or just pop in to experience this new and exciting coworking adventure! See you soon!", address: "Engelse beurs 4,2000 Antwerpen", title: "Indian caps", website: "http://indiancaps.be", phone_number: "+32 3 222 90 52")
workspace_5 = Workspace.create!(user: user_4, description: "Coworking Antwerpen. Need a coworking in Antwerp? Then you must be at StartBloc! We offer the most advantageous and central coworking space in Antwerp! Registered office included!", address: "Meirbrug 1 (7de),2000 Antwerpen", title: "StartBloc Coworking", website: "https://startbloc.nu", phone_number: "+32 495 76 41 76")
workspace_6 = Workspace.create!(user: user_5, description: "DOTS offers extremely flexible and favorable membership formulas, in line with what you need. If you do not immediately find something that suits you, contact us or give us a call on 03 369 08 98.", address: "Van Dornestraat 198,2100 Antwerpen", title: "DOTS Coworking", website: "https://www.dots-coworking.be", phone_number: "+32 3 369 08 98")
workspace_7 = Workspace.create!(user: user_6, description: "Self-employed coworker, established or starting-up, in main or secondary occupation? Plug into an inspiring group of risk-takers and doers in pleasant, professional sites!", address: "Lange Winkelhaakstraat 26,2060 Antwerpen", title: "Bar d'Office de Winkelhaak", website: "https://bardoffice.eu/", phone_number: "+32 3 303 90 73")
workspace_8 = Workspace.create!(user: user_6, description: "Self-employed coworker, established or starting-up, in main or secondary occupation? Plug into an inspiring group of risk-takers and doers in pleasant, professional sites!", address: "Zwaantjesstraat 33,9090 Melle", title: "Bar d'Office Idee Kids", website: "https://bardoffice.eu/", phone_number: "+32 3 303 90 73")
workspace_9 = Workspace.create!(user: user_6, description: "Self-employed coworker, established or starting-up, in main or secondary occupation? Plug into an inspiring group of risk-takers and doers in pleasant, professional sites!", address: "Ulbeekstraat 21,3830 Wellen", title: "Bar d'Office Ulbeek", website: "https://bardoffice.eu/", phone_number: "+32 3 303 90 73")
workspace_10 = Workspace.create!(user: user_6, description: "Self-employed coworker, established or starting-up, in main or secondary occupation? Plug into an inspiring group of risk-takers and doers in pleasant, professional sites!", address: "Vestinglaan 55,2650 Edegem", title: "Bar d'Office BLWRK", website: "https://bardoffice.eu/", phone_number: "+32 3 303 90 73")
workspace_11 = Workspace.create!(user: user_6, description: "Self-employed coworker, established or starting-up, in main or secondary occupation? Plug into an inspiring group of risk-takers and doers in pleasant, professional sites!", address: "Kanunnik de Deckerstraat 20a,Mechelen", title: "Bar d'Office Oh!", website: "https://bardoffice.eu/", phone_number: "+32 3 303 90 73")
workspace_12 = Workspace.create!(user: user_6, description: "Self-employed coworker, established or starting-up, in main or secondary occupation? Plug into an inspiring group of risk-takers and doers in pleasant, professional sites!", address: "Hopmarkt 50,9300 Aalst", title: "Bar d'Office Hopmarkt 50", website: "https://bardoffice.eu/", phone_number: "+32 3 303 90 73")
workspace_13 = Workspace.create!(user: user_6, description: "Self-employed coworker, established or starting-up, in main or secondary occupation? Plug into an inspiring group of risk-takers and doers in pleasant, professional sites!", address: "Grensstraat 3,2200 Herentals", title: "Bar d'Office Campus Aquafin ", website: "https://bardoffice.eu/", phone_number: "+32 3 303 90 73")
workspace_14 = Workspace.create!(user: user_6, description: "Self-employed coworker, established or starting-up, in main or secondary occupation? Plug into an inspiring group of risk-takers and doers in pleasant, professional sites!", address: "Gouverneur Verwilghensingel 30a,3500 Hasselt", title: "Bar d'Office Co-Workspace", website: "https://bardoffice.eu/", phone_number: "+32 3 303 90 73")
workspace_15 = Workspace.create!(user: user_6, description: "Self-employed coworker, established or starting-up, in main or secondary occupation? Plug into an inspiring group of risk-takers and doers in pleasant, professional sites!", address: "Dorpstraat 29,2920 Kalmthout", title: "Bar d'OfficeFlex OFie's", website: "https://bardoffice.eu/", phone_number: "+32 3 303 90 73")
workspace_16 = Workspace.create!(user: user_6, description: "Self-employed coworker, established or starting-up, in main or secondary occupation? Plug into an inspiring group of risk-takers and doers in pleasant, professional sites!", address: "Dijstraat 8 Aartselaar", title: "Bar d'Office Campus Aquafin", website: "https://bardoffice.eu/", phone_number: "+32 3 303 90 73")
workspace_17 = Workspace.create!(user: user_6, description: "Self-employed coworker, established or starting-up, in main or secondary occupation? Plug into an inspiring group of risk-takers and doers in pleasant, professional sites!", address: "Diestsevest 76,3000 Leuven", title: "Bar d'Office Flanders DC", website: "https://bardoffice.eu/", phone_number: "+32 3 303 90 73")
workspace_18 = Workspace.create!(user: user_6, description: "Self-employed coworker, established or starting-up, in main or secondary occupation? Plug into an inspiring group of risk-takers and doers in pleasant, professional sites!", address: "Campus Blairon 714,2300 Turnhout", title: "Bar d'Office Blenders ", website: "https://bardoffice.eu/", phone_number: "+32 3 303 90 73")
workspace_19 = Workspace.create!(user: user_7, description: "FEEL AT HOME. We strongly believe in the fact that an office should feel as comfortable as your own home. Read the morning news in our coffee lounge, scroll through your mails in our lush garden or start working at your very own desk. At Friday, every day feels like a Friday. Welcome home.", address: "Lange Leemstraat 358B,2018 Antwerp", title: "Friday Cowork", website: "https://www.friday-cowork.be", phone_number: "+32 472 84 14 11")
workspace_20 = Workspace.create!(user: user_8, description: "We are a coworking space. We also have event spaces and meeting rooms. But we also have a little extra that makes all the difference. Meet Hive5, the coworking and event beehive!", address: "Cours Saint-Michel 30 - Securex building 2nd floor, 1040 Brussels", title: "Hive5", website: "https://www.hive5.be", phone_number: "0491 63 93 50")
workspace_21 = Workspace.create!(user: user_9, description: "We want to help starters, self-employed and small businesses in their development and growth, by creating connections and inspiring them, in a cosy and professional atmosphere.", address: "500 Avenue Louise, 1050 Bruxelles", title: "Manistal", website: "https://manistal.be", phone_number: "02 207 94 80")
workspace_22 = Workspace.create!(user: user_10, description: "The most innovative provider of shared flexible workspaces.", address: "Avenue des Arts 56, 1000 Brussels", title: "Workero", website: "https://www.workero.com", phone_number: "+32 2 431 08 08")
workspace_23 = Workspace.create!(user: user_11, description: "The co-working areas are airy and well-equipped with just the right balance of calm and bustle whilst the meeting rooms have different shaping that will put your guests at ease and make them feel like home.", address: "Rue de l’Aurore 4,1000 Brussels", title: "The Library Ixelles", website: "https://thelibrarygroup.be", phone_number: "02 342 07 43")
workspace_24 = Workspace.create!(user: user_11, description: "The co-working areas are airy and well-equipped with just the right balance of calm and bustle whilst the meeting rooms have different shaping that will put your guests at ease and make them feel like home.", address: "Ave. Broqueville 40, 1200 W.S.L", title: "The Library Europe", website: "https://thelibrarygroup.be", phone_number: "02 342 07 43")
workspace_25 = Workspace.create!(user: user_11, description: "The co-working areas are airy and well-equipped with just the right balance of calm and bustle whilst the meeting rooms have different shaping that will put your guests at ease and make them feel like home.", address: "Square Ambiorix 10, 1000 Brussels", title: "The Library Ambiorix", website: "https://thelibrarygroup.be", phone_number: "+32 2 342 07 43")
workspace_26 = Workspace.create!(user: user_12, description: "Welcome to Factory Forty, the coworking space that allows you to work in the sunshine, right in the heart of Brussels*.", address: "rue des anciens étangs, 40 , 1190 Brussels", title: "Factory Forty", website: "https://www.factoryforty.be", phone_number: "02.430.24.22")
workspace_27 = Workspace.create!(user: user_13, description: "Coworking les Galeries makes you instantly feel at home. Based in a historical setting in Brussels King’s Gallery dating back from 1847 and 50 steps away from the famous Grand-Place, this boutique coworking space is designed for conscious professionals looking for a place to meet, work, and chill.", address: "Galerie du Roi 30, 1000 Brussels", title: "Les Galeries", website: "http://www.galeriescoworking.be", phone_number: "+32 484 78 17 83")




ServiceList.create!(workspace: workspace_1, service: service_1)
ServiceList.create!(workspace: workspace_1, service: service_4)
ServiceList.create!(workspace: workspace_1, service: service_5)
ServiceList.create!(workspace: workspace_1, service: service_7)
ServiceList.create!(workspace: workspace_1, service: service_2)

ServiceList.create!(workspace: workspace_2, service: service_2)
ServiceList.create!(workspace: workspace_2, service: service_4)
ServiceList.create!(workspace: workspace_2, service: service_5)
ServiceList.create!(workspace: workspace_2, service: service_6)
ServiceList.create!(workspace: workspace_2, service: service_12)

ServiceList.create!(workspace: workspace_3, service: service_8)
ServiceList.create!(workspace: workspace_3, service: service_9)
ServiceList.create!(workspace: workspace_3, service: service_1)
ServiceList.create!(workspace: workspace_3, service: service_6)
ServiceList.create!(workspace: workspace_3, service: service_7)

ServiceList.create!(workspace: workspace_4, service: service_2)
ServiceList.create!(workspace: workspace_4, service: service_1)
ServiceList.create!(workspace: workspace_4, service: service_3)
ServiceList.create!(workspace: workspace_4, service: service_6)
ServiceList.create!(workspace: workspace_4, service: service_12)

ServiceList.create!(workspace: workspace_5, service: service_1)
ServiceList.create!(workspace: workspace_5, service: service_2)
ServiceList.create!(workspace: workspace_5, service: service_6)
ServiceList.create!(workspace: workspace_5, service: service_7)
ServiceList.create!(workspace: workspace_5, service: service_9)


ServiceList.create!(workspace: workspace_6, service: service_1)
ServiceList.create!(workspace: workspace_6, service: service_2)
ServiceList.create!(workspace: workspace_6, service: service_7)
ServiceList.create!(workspace: workspace_6, service: service_8)


ServiceList.create!(workspace: workspace_7, service: service_3)
ServiceList.create!(workspace: workspace_7, service: service_5)
ServiceList.create!(workspace: workspace_7, service: service_7)
ServiceList.create!(workspace: workspace_7, service: service_9)

ServiceList.create!(workspace: workspace_8, service: service_10)
ServiceList.create!(workspace: workspace_8, service: service_2)
ServiceList.create!(workspace: workspace_8, service: service_11)

ServiceList.create!(workspace: workspace_9, service: service_1)
ServiceList.create!(workspace: workspace_9, service: service_6)
ServiceList.create!(workspace: workspace_9, service: service_7)

ServiceList.create!(workspace: workspace_10, service: service_12)
ServiceList.create!(workspace: workspace_10, service: service_2)
ServiceList.create!(workspace: workspace_10, service: service_4)
ServiceList.create!(workspace: workspace_10, service: service_5)

ServiceList.create!(workspace: workspace_11, service: service_4)
ServiceList.create!(workspace: workspace_11, service: service_7)
ServiceList.create!(workspace: workspace_11, service: service_8)
ServiceList.create!(workspace: workspace_11, service: service_9)


ServiceList.create!(workspace: workspace_12, service: service_2)
ServiceList.create!(workspace: workspace_12, service: service_1)
ServiceList.create!(workspace: workspace_12, service: service_3)
ServiceList.create!(workspace: workspace_12, service: service_5)

ServiceList.create!(workspace: workspace_13, service: service_10)
ServiceList.create!(workspace: workspace_13, service: service_1)
ServiceList.create!(workspace: workspace_13, service: service_8)

ServiceList.create!(workspace: workspace_14, service: service_2)
ServiceList.create!(workspace: workspace_14, service: service_1)
ServiceList.create!(workspace: workspace_14, service: service_8)


ServiceList.create!(workspace: workspace_15, service: service_1)
ServiceList.create!(workspace: workspace_15, service: service_3)
ServiceList.create!(workspace: workspace_15, service: service_5)
ServiceList.create!(workspace: workspace_15, service: service_7)

ServiceList.create!(workspace: workspace_16, service: service_2)
ServiceList.create!(workspace: workspace_16, service: service_4)
ServiceList.create!(workspace: workspace_16, service: service_6)
ServiceList.create!(workspace: workspace_16, service: service_8)

ServiceList.create!(workspace: workspace_17, service: service_10)
ServiceList.create!(workspace: workspace_17, service: service_7)
ServiceList.create!(workspace: workspace_17, service: service_11)

ServiceList.create!(workspace: workspace_18, service: service_5)
ServiceList.create!(workspace: workspace_18, service: service_7)
ServiceList.create!(workspace: workspace_18, service: service_6)
ServiceList.create!(workspace: workspace_18, service: service_9)

ServiceList.create!(workspace: workspace_19, service: service_9)
ServiceList.create!(workspace: workspace_19, service: service_1)
ServiceList.create!(workspace: workspace_19, service: service_5)


ServiceList.create!(workspace: workspace_20, service: service_1)
ServiceList.create!(workspace: workspace_20, service: service_9)
ServiceList.create!(workspace: workspace_20, service: service_3)

ServiceList.create!(workspace: workspace_21, service: service_9)
ServiceList.create!(workspace: workspace_21, service: service_2)
ServiceList.create!(workspace: workspace_21, service: service_1)
ServiceList.create!(workspace: workspace_21, service: service_7)

ServiceList.create!(workspace: workspace_22, service: service_3)
ServiceList.create!(workspace: workspace_22, service: service_12)
ServiceList.create!(workspace: workspace_22, service: service_4)


ServiceList.create!(workspace: workspace_23, service: service_9)
ServiceList.create!(workspace: workspace_23, service: service_1)
ServiceList.create!(workspace: workspace_23, service: service_5)
ServiceList.create!(workspace: workspace_23, service: service_2)

ServiceList.create!(workspace: workspace_24, service: service_1)
ServiceList.create!(workspace: workspace_24, service: service_2)
ServiceList.create!(workspace: workspace_24, service: service_7)

ServiceList.create!(workspace: workspace_25, service: service_9)
ServiceList.create!(workspace: workspace_25, service: service_10)
ServiceList.create!(workspace: workspace_25, service: service_3)
ServiceList.create!(workspace: workspace_25, service: service_2)

ServiceList.create!(workspace: workspace_26, service: service_1)
ServiceList.create!(workspace: workspace_26, service: service_12)
ServiceList.create!(workspace: workspace_26, service: service_5)
ServiceList.create!(workspace: workspace_26, service: service_11)

ServiceList.create!(workspace: workspace_27, service: service_8)
ServiceList.create!(workspace: workspace_27, service: service_10)
ServiceList.create!(workspace: workspace_27, service: service_1)



place_1 = Place.create!(workspace: workspace_1, price: 23, name: "Shared room", description: "This is a perfect place for coders", number_of_chairs: 5)
place_2 = Place.create!(workspace: workspace_1, price: 15, name: "Nice private room", description: "This room provides everything you need for you activities", number_of_chairs: 1)
place_3 = Place.create!(workspace: workspace_1, price: 10, name: "Place for two", description: "A desk that will help you make your dreams come true", number_of_chairs: 2)
place_4 = Place.create!(workspace: workspace_2, price: 20, name: "Nice room", description: "Cosy room with a lot to offer", number_of_chairs: 8)
place_5 = Place.create!(workspace: workspace_2, price: 22, name: "Shared room", description: "Don't miss this place if your are serious about working!", number_of_chairs: 18)
place_6 = Place.create!(workspace: workspace_2, price: 10, name: "Big desk", description: "Large space, ideal for developpers and entrepreneurs", number_of_chairs: 2)
place_7 = Place.create!(workspace: workspace_3, price: 15, name: "Nice room", description: "Small working space near the center of the town", number_of_chairs: 10)
place_8 = Place.create!(workspace: workspace_3, price: 17, name: "Shared room", description: "Shared space with a nice atmosphere", number_of_chairs: 5)
place_9 = Place.create!(workspace: workspace_4, price: 35, name: "Best desks", description: "A multi-purpose place that will fulfill all your needs", number_of_chairs: 5)
place_10 = Place.create!(workspace: workspace_4, price: 32, name: "Cyber space", description: "A place you will fall in love with!", number_of_chairs: 5)
place_11 = Place.create!(workspace: workspace_5, price: 31, name: "Nice room", description: "Cosy room with a lot to offer", number_of_chairs: 5)
place_12 = Place.create!(workspace: workspace_5, price: 18, name: "For hackers only", description: "This is a perfect place for coders", number_of_chairs: 5)
place_14 = Place.create!(workspace: workspace_6, price: 23, name: "nice room", description: "This room provides everything you need for you activities", number_of_chairs: 3)
place_13 = Place.create!(workspace: workspace_5, price: 22, name: "Conference room", description: "A desk that will help you make your dreams come true", number_of_chairs: 7)
place_15 = Place.create!(workspace: workspace_6, price: 24, name: "Shared office", description: "Large space, ideal for developpers and entrepreneurs", number_of_chairs: 9)
place_16 = Place.create!(workspace: workspace_6, price: 25, name: "Good place to work in", description: "Small working space near the center of the town", number_of_chairs: 1)
place_17 = Place.create!(workspace: workspace_7, price: 29, name: "Large office", description: "Shared space with a nice atmosphere",number_of_chairs: 5)
place_18 = Place.create!(workspace: workspace_7, price: 20, name: "Shared room", description: "Don't miss this place if your are serious about working!",number_of_chairs: 5)
place_19 = Place.create!(workspace: workspace_7, price: 25, name: "nice room", description: "A place you will fall in love with!",number_of_chairs: 5)
place_20 = Place.create!(workspace: workspace_8, price: 30, name: "Meeting room", description: "Cosy room with a lot to offer",number_of_chairs: 5)
place_21 = Place.create!(workspace: workspace_8, price: 19, name: "Large office", description: "This room provides everything you need for you activities",number_of_chairs: 5)
place_22 = Place.create!(workspace: workspace_8, price: 16, name: "Excellent desks", description: "A desk that will help you make your dreams come true",number_of_chairs: 5)
place_23 = Place.create!(workspace: workspace_9, price: 18, name: "nice room", description: "Large space, ideal for developpers and entrepreneurs",number_of_chairs: 5)
place_24 = Place.create!(workspace: workspace_9, price: 12, name: "Office", description: "Shared space with a nice atmosphere",number_of_chairs: 5)
place_25 = Place.create!(workspace: workspace_9, price: 23, name: "Collective desks", description: "Small working space near the center of the town",number_of_chairs: 5)
place_26 = Place.create!(workspace: workspace_10, price: 15, name: "Best offices", description: "Don't miss this place if your are serious about working!",number_of_chairs: 5)
place_27 = Place.create!(workspace: workspace_10, price: 19, name: "Shared desks", description: "Shared space with a nice atmosphere",number_of_chairs: 5)
place_28 = Place.create!(workspace: workspace_10, price: 18, name: "Coding desks", description: "This is a perfect place for coders",number_of_chairs: 5)
place_29 = Place.create!(workspace: workspace_11, price: 16, name: "Shared office", description: "Cosy room with a lot to offer",number_of_chairs: 7)
place_30 = Place.create!(workspace: workspace_11, price: 17, name: "nice room", description: "A place you will fall in love with!",number_of_chairs: 1)
place_31 = Place.create!(workspace: workspace_11, price: 23, name: "Conference room", description: "This room provides everything you need for you activities",number_of_chairs: 52)
place_32 = Place.create!(workspace: workspace_12, price: 20, name: "Meeting room", description: "A desk that will help you make your dreams come true",number_of_chairs: 5)
place_33 = Place.create!(workspace: workspace_12, price: 14, name: "Private office", description: "Small working space near the center of the town",number_of_chairs: 1)
place_35 = Place.create!(workspace: workspace_12, price: 17, name: "Desk", description: "Large space, ideal for developpers and entrepreneurs",number_of_chairs: 1)
place_36 = Place.create!(workspace: workspace_13, price: 22, name: "Large room", description: "Don't miss this place if your are serious about working!",number_of_chairs: 1)
place_37 = Place.create!(workspace: workspace_13, price: 28, name: "Collective desks", description: "Small working space near the center of the town",number_of_chairs: 1)
place_38 = Place.create!(workspace: workspace_14, price: 30, name: "Private room", description: "This is a perfect place for coders",number_of_chairs: 1)
place_40 = Place.create!(workspace: workspace_14, price: 21, name: "Private office", description: "Cosy room with a lot to offer",number_of_chairs: 1)
place_41 = Place.create!(workspace: workspace_14, price: 16, name: "Shared space", description: "This room provides everything you need for you activities",number_of_chairs: 5)
place_42 = Place.create!(workspace: workspace_15, price: 18, name: "Nice place", description: "A desk that will help you make your dreams come true",number_of_chairs: 5)
place_43 = Place.create!(workspace: workspace_15, price: 20, name: "Big room", description: "Small working space near the center of the town",number_of_chairs: 46)
place_44 = Place.create!(workspace: workspace_16, price: 22, name: "Cool desks", description: "Excellent room in a nice locatation",number_of_chairs: 5)
place_45 = Place.create!(workspace: workspace_16, price: 30, name: "Best offices", description: "Cosy room with a lot to offer",number_of_chairs: 5)
place_46 = Place.create!(workspace: workspace_17, price: 19, name: "Cosy workspace", description: "This room provides everything you need for you activities",number_of_chairs: 3)
place_47 = Place.create!(workspace: workspace_17, price: 25, name: "Meeting room", description: "Large space, ideal for developpers and entrepreneurs",number_of_chairs: 5)
place_48 = Place.create!(workspace: workspace_17, price: 14, name: "Nice room", description: "Excellent room in a nice locatation",number_of_chairs: 5)
place_49 = Place.create!(workspace: workspace_18, price: 21, name: "Private desk", description: "Don't miss this place if your are serious about working!",number_of_chairs: 1)
place_50 = Place.create!(workspace: workspace_18, price: 29, name: "Collective space", description: "This is a perfect place for coders",number_of_chairs: 5)
place_51 = Place.create!(workspace: workspace_18, price: 31, name: "A place for two", description: "Shared space with a nice atmosphere",number_of_chairs: 2)
place_52 = Place.create!(workspace: workspace_19, price: 17, name: "Collective offices", description: "A place you will fall in love with!",number_of_chairs: 5)
place_53 = Place.create!(workspace: workspace_19, price: 15, name: "Best desks", description: "This room provides everything you need for you activities",number_of_chairs: 5)
place_54 = Place.create!(workspace: workspace_19, price: 20, name: "Pretty workspace", description: "Cosy room with a lot to offer",number_of_chairs: 5)
place_55 = Place.create!(workspace: workspace_20, price: 25, name: "Shared space", description: "A desk that will help you make your dreams come true",number_of_chairs: 4)
place_56 = Place.create!(workspace: workspace_20, price: 30, name: "nice room", description: "Don't miss this place if your are serious about working!",number_of_chairs: 5)
place_57 = Place.create!(workspace: workspace_20, price: 18, name: "Empty room", description: "Shared space with a nice atmosphere",number_of_chairs: 5)
place_58 = Place.create!(workspace: workspace_21, price: 23, name: "Small meeting room", description: "Large space, ideal for developpers and entrepreneurs",number_of_chairs: 5)
place_59 = Place.create!(workspace: workspace_21, price: 14, name: "Cool office", description: "This room provides everything you need for you activities",number_of_chairs: 1)
place_60 = Place.create!(workspace: workspace_22, price: 30, name: "Private office", description: "With beautiful, turnkey private office, Workero makes it easy to stay agile in Brussels. Book your private office now!",number_of_chairs: 3)
place_61 = Place.create!(workspace: workspace_22, price: 25, name: "Coworking desk", description: "Rent desk space in a shared office environment. Work in a shared office close to you.",number_of_chairs: 5)
place_62 = Place.create!(workspace: workspace_22, price: 35, name: "Meeting room", description: "The best room for one-to-ones and team meetings.",number_of_chairs: 1)
place_63 = Place.create!(workspace: workspace_23, price: 20, name: "Nice room", description: "Don't miss this place if your are serious about working!",number_of_chairs: 2)
place_64 = Place.create!(workspace: workspace_23, price: 17, name: "Private desk", description: "Cosy room with a lot to offer",number_of_chairs: 1)
place_65 = Place.create!(workspace: workspace_23, price: 12, name: "Nice space", description: "A desk that will help you make your dreams come true",number_of_chairs: 5)
place_66 = Place.create!(workspace: workspace_24, price: 29, name: "Private office", description: "This is a perfect place for coders",number_of_chairs: 1)
place_67 = Place.create!(workspace: workspace_24, price: 22, name: "Cool desk", description: "This room provides everything you need for you activities",number_of_chairs: 1)
place_68 = Place.create!(workspace: workspace_25, price: 30, name: "Private office", description: "Are you in the mood for chic surroundings featuring custom-made wallpaper, Nordic, wooden tables and lots of daylight?",number_of_chairs: 9)
place_69 = Place.create!(workspace: workspace_25, price: 25, name: "Coworking room", description: "The stylish coworking room in the centre of Brussels have a true following.",number_of_chairs: 6)
# place_70 = Place.create!(workspace: workspace_25, price: 18, name: "nice room", description: "Shared space with a nice atmosphere",number_of_chairs: 2)
place_71 = Place.create!(workspace: workspace_26, price: 28, name: "Coworking desk", description: "Don't miss this place if your are serious about working!",number_of_chairs: 8)
place_72 = Place.create!(workspace: workspace_26, price: 16, name: "Shared space", description: "A desk that will help you make your dreams come true",number_of_chairs: 46)
place_73 = Place.create!(workspace: workspace_27, price: 25, name: "Meeting room", description: "Companies of all sizes can book our meeting room for special occasions, team buildings, and events.",number_of_chairs: 12)
place_74 = Place.create!(workspace: workspace_27, price: 16, name: "Coworking office", description: "This coworking office is designed for conscious professionals looking for a place to meet, work, and chill.",number_of_chairs: 1)
place_75 = Place.create!(workspace: workspace_27, price: 10, name: "Coworking room", description: "A warm environment, wooden floors, coffee chats, built-in terrace, exotic plants, handmade furniture, eco-friendly products, art gallery corners… you won’t find a more authentic coworking space in Brussels.",number_of_chairs: 4)





booking_1 = Booking.create!(beginning_date: Date.new(2019,2,1), end_date: Date.new(2019,2,3), status: "unreviewed",  user: user_1, price: 75)
booking_2 = Booking.create!(beginning_date: Date.new(2019,5,1), end_date: Date.new(2019,5,8), status: "paid",  user: user_1, price: 248)
booking_3 = Booking.create!(beginning_date: Date.new(2018,12,1), end_date: Date.new(2018,12,3), status: "past",  user: user_1, price: 60)
booking_4 = Booking.create!(beginning_date: Date.new(2019,4,1), end_date: Date.new(2019,4,4), status: "past",  user: user_1, price: 80)
booking_5 = Booking.create!(beginning_date: Date.new(2019,3,1), end_date: Date.new(2019,3,2), status: "past",  user: user_1, price: 40)
booking_6 = Booking.create!(beginning_date: Date.new(2019,2,7), end_date: Date.new(2019,2,10), status: "unreviewed",  user: user_3)
booking_7 = Booking.create!(beginning_date: Date.new(2018,2,1), end_date: Date.new(2019,2,5), status: "past",   user: user_4)
booking_8 = Booking.create!(beginning_date: Date.new(2019,8,1), end_date: Date.new(2019,8,28), status: "paid",  user: user_4)
booking_9 = Booking.create!(beginning_date: Date.new(2019,4,1), end_date: Date.new(2019,4,10), status: "paid",  user: user_4)
booking_10 = Booking.create!(beginning_date: Date.new(2019,3,6), end_date: Date.new(2019,3,6), status: "past",  user: user_5)
booking_11 = Booking.create!(beginning_date: Date.new(2019,2,1), end_date: Date.new(2019,3,3), status: "unreviewed",  user: user_6)
booking_12 = Booking.create!(beginning_date: Date.new(2019,9,1), end_date: Date.new(2019,9,17), status: "paid",  user: user_7)
booking_13 = Booking.create!(beginning_date: Date.new(2018,11,1), end_date: Date.new(2018,11,10), status: "past",  user: user_7)
booking_14 = Booking.create!(beginning_date: Date.new(2019,2,18), end_date: Date.new(2019,2,20), status: "unreviewed",  user: user_7)
booking_15 = Booking.create!(beginning_date: Date.new(2019,2,14), end_date: Date.new(2019,2,19), status: "past",  user: user_8)
booking_16 = Booking.create!(beginning_date: Date.new(2019,5,10), end_date: Date.new(2019,5,12), status: "paid",  user: user_8)
booking_17 = Booking.create!(beginning_date: Date.new(2019,2,11), end_date: Date.new(2019,2,15), status: "unreviewed",  user: user_9)
booking_18 = Booking.create!(beginning_date: Date.new(2019,4,1), end_date: Date.new(2019,4,3), status: "paid",  user: user_9)
booking_19 = Booking.create!(beginning_date: Date.new(2019,1,10), end_date: Date.new(2019,1,15), status: "past",  user: user_9)
booking_20 = Booking.create!(beginning_date: Date.new(2019,1,20), end_date: Date.new(2019,1,23), status: "unreviewed",  user: user_9)
booking_21 = Booking.create!(beginning_date: Date.new(2019,6,1), end_date: Date.new(2019,6,3), status: "paid",  user: user_10)
booking_22 = Booking.create!(beginning_date: Date.new(2019,7,1), end_date: Date.new(2019,7,10), status: "paid",  user: user_11)
booking_23 = Booking.create!(beginning_date: Date.new(2019,3,1), end_date: Date.new(2019,3,3), status: "past",  user: user_12)
booking_24 = Booking.create!(beginning_date: Date.new(2019,4,1), end_date: Date.new(2019,4,5), status: "paid",  user: user_12)
booking_25 = Booking.create!(beginning_date: Date.new(2019,2,17), end_date: Date.new(2019,2,20), status: "unreviewed",  user: user_12)
booking_26 = Booking.create!(beginning_date: Date.new(2019,9,1), end_date: Date.new(2019,9,20), status: "paid",  user: user_13)
booking_27 = Booking.create!(beginning_date: Date.new(2019,8,1), end_date: Date.new(2019,9,1), status: "paid",  user: user_13)
booking_28 = Booking.create!(beginning_date: Date.new(2019,7,1), end_date: Date.new(2019,7,2), status: "paid",  user: user_14)
booking_29 = Booking.create!(beginning_date: Date.new(2019,1,1), end_date: Date.new(2019,1,29), status: "past",  user: user_14)
booking_30 = Booking.create!(beginning_date: Date.new(2019,5,10), end_date: Date.new(2019,5,14), status: "paid",  user: user_14)

# HM below
booking_31 = Booking.create!(beginning_date: Date.new(2019,3,20), end_date: Date.new(2019,3,20)  ,status: "past", user: user_14)
booking_32 = Booking.create!(beginning_date: Date.new(2019,3,18), end_date: Date.new(2019,3,18)  ,status: "past", user: user_13)
booking_33 = Booking.create!(beginning_date: Date.new(2019,3,18), end_date: Date.new(2019,3,18)  ,status: "past", user: user_13)
booking_34 = Booking.create!(beginning_date: Date.new(2019,3,15), end_date: Date.new(2019,3,20)  ,status: "past", user: user_14)
booking_35 = Booking.create!(beginning_date: Date.new(2019,3,19), end_date: Date.new(2019,3,19)  ,status: "past", user: user_9)
booking_36 = Booking.create!(beginning_date: Date.new(2019,3,20), end_date: Date.new(2019,3,20)  ,status: "past", user: user_10)


BookingPlace.create!(booking: booking_1, place: place_19)
BookingPlace.create!(booking: booking_2, place: place_11)
BookingPlace.create!(booking: booking_3, place: place_32)
BookingPlace.create!(booking: booking_4, place: place_43)
BookingPlace.create!(booking: booking_5, place: place_63)
BookingPlace.create!(booking: booking_6, place: place_4)
BookingPlace.create!(booking: booking_7, place: place_1)
BookingPlace.create!(booking: booking_8, place: place_5)
BookingPlace.create!(booking: booking_9, place: place_6)
BookingPlace.create!(booking: booking_10, place: place_7)
BookingPlace.create!(booking: booking_11, place: place_8)
BookingPlace.create!(booking: booking_12, place: place_9)
BookingPlace.create!(booking: booking_13, place: place_10)
BookingPlace.create!(booking: booking_14, place: place_15)
BookingPlace.create!(booking: booking_15, place: place_68)
BookingPlace.create!(booking: booking_16, place: place_10)
BookingPlace.create!(booking: booking_17, place: place_73)
BookingPlace.create!(booking: booking_18, place: place_13)
BookingPlace.create!(booking: booking_19, place: place_14)
BookingPlace.create!(booking: booking_20, place: place_16)
BookingPlace.create!(booking: booking_21, place: place_17)
BookingPlace.create!(booking: booking_22, place: place_18)
BookingPlace.create!(booking: booking_23, place: place_19)
BookingPlace.create!(booking: booking_24, place: place_54)
BookingPlace.create!(booking: booking_25, place: place_20)
BookingPlace.create!(booking: booking_26, place: place_40)
BookingPlace.create!(booking: booking_27, place: place_30)
BookingPlace.create!(booking: booking_28, place: place_55)
BookingPlace.create!(booking: booking_29, place: place_20)
BookingPlace.create!(booking: booking_30, place: place_21)
# HM Below
BookingPlace.create!(booking: booking_31, place: place_60)
BookingPlace.create!(booking: booking_32, place: place_61)
BookingPlace.create!(booking: booking_33, place: place_73)
BookingPlace.create!(booking: booking_34, place: place_74)
BookingPlace.create!(booking: booking_35, place: place_68)
BookingPlace.create!(booking: booking_36, place: place_69)



UserReview.create!(score: 4, content: "Friendly guy, funny and respectful", booking: booking_1)
UserReview.create!(score: 4, content: "He was very respectful. I highly recommend him", booking: booking_2)
UserReview.create!(score: 5, content: "Amazing customer !!! Everything was perfect", booking: booking_3)
UserReview.create!(score: 4, content: "He was very respectful. I highly recommend him", booking: booking_4)
UserReview.create!(score: 1, content: "Rude and dirty", booking: booking_5)
UserReview.create!(score: 4, content: "pleasant person to be around", booking: booking_7)
UserReview.create!(score: 2, content: "Unpolite person", booking: booking_8)
UserReview.create!(score: 3, content: "Funny person but a bit messy", booking: booking_8)
UserReview.create!(score: 5, content: "Perfect!", booking: booking_9)
UserReview.create!(score: 5, content: "Amazing customer !!! Everything was perfect", booking: booking_10)
UserReview.create!(score: 4, content: "He was very respectful. I highly recommend him", booking: booking_11)
UserReview.create!(score: 3, content: "Nice person but his desk was messy", booking: booking_14)
UserReview.create!(score: 3, content: "What an ass. This guy killed my dog", booking: booking_15)
UserReview.create!(score: 5, content: "Amazing customer !!! Everything was perfect", booking: booking_16)
UserReview.create!(score: 4, content: "He was very respectful. I highly recommend him", booking: booking_17)
UserReview.create!(score: 5, content: "Amazing customer !!! Everything was perfect", booking: booking_18)
UserReview.create!(score: 3, content: "Nice person but his desk was so messy", booking: booking_19)
UserReview.create!(score: 3, content: "Nice person but his desk was so messy", booking: booking_20)
UserReview.create!(score: 4, content: "He was very respectful. I highly recommend him", booking: booking_21)
UserReview.create!(score: 5, content: "Amazing customer !!! Everything was perfect", booking: booking_22)
UserReview.create!(score: 3, content: "Nice person but his desk was so messy", booking: booking_25)
UserReview.create!(score: 4, content: "He was very respectful. I highly recommend him", booking: booking_26)
UserReview.create!(score: 5, content: "Amazing customer !!! Everything was perfect", booking: booking_27)
UserReview.create!(score: 3, content: "Nice person but his desk was so messy", booking: booking_28)
UserReview.create!(score: 5, content: "Amazing customer !!! Everything was perfect", booking: booking_29)
UserReview.create!(score: 4, content: "He was very respectful. I highly recommend him", booking: booking_30)

WorkspaceReview.create!(booking: booking_3, content: "The best in town!", score: 5)
WorkspaceReview.create!(booking: booking_4, content: "Not bad but not the best", score: 3)
WorkspaceReview.create!(booking: booking_5, content: "That place was hell", score: 1)
WorkspaceReview.create!(booking: booking_6, content: "One of the best coworking I've been to", score: 5)
WorkspaceReview.create!(booking: booking_7, content: "One of the best coworking I've been to", score: 5)
WorkspaceReview.create!(booking: booking_8, content: "That place was hell", score: 3)
WorkspaceReview.create!(booking: booking_9, content: "That place has everything you can expect from a co-working", score: 4)
WorkspaceReview.create!(booking: booking_10, content: "I was very disappointed with the service provided", score: 2)
WorkspaceReview.create!(booking: booking_11, content: "AMMMMAAAAAAZIIIIIIING !!!! just book", score: 5)
WorkspaceReview.create!(booking: booking_12, content: "One of the best coworking I've been to", score: 5)
WorkspaceReview.create!(booking: booking_13, content: "That place has everything you expect from a co-working", score: 4)
WorkspaceReview.create!(booking: booking_14, content: "That place has everything you expect from a co-working", score: 4)
WorkspaceReview.create!(booking: booking_15, content: "That place has everything you expect from a co-working", score: 4)
WorkspaceReview.create!(booking: booking_16, content: "I was very disappointed with the service provided", score: 2)
WorkspaceReview.create!(booking: booking_17, content: "Not bad but not the best", score: 3)
WorkspaceReview.create!(booking: booking_18, content: "That place has everything you can expect from a co-working", score: 4)
WorkspaceReview.create!(booking: booking_19, content: "nice and friendly place", score: 4)
WorkspaceReview.create!(booking: booking_20, content: "Amazing !!! I highly recommend this place", score: 5)
WorkspaceReview.create!(booking: booking_21, content: "Amazing !!! I highly recommend this place", score: 5)
WorkspaceReview.create!(booking: booking_22, content: "Nice place, well located ", score: 4)
WorkspaceReview.create!(booking: booking_23, content: "Not bad but not the best", score: 3)
WorkspaceReview.create!(booking: booking_24, content: "Not bad but not the best", score: 3)
WorkspaceReview.create!(booking: booking_25, content: "Nice place, well located ", score: 4)
WorkspaceReview.create!(booking: booking_26, content: "Nice place, well located ", score: 4)
WorkspaceReview.create!(booking: booking_27, content: "Amazing !!! I highly recommend this place", score: 5)
WorkspaceReview.create!(booking: booking_28, content: "Great this is what I looked for", score: 4)
WorkspaceReview.create!(booking: booking_29, content: "Not bad but not the best", score: 3)
WorkspaceReview.create!(booking: booking_30, content: "Amazing !!! I highly recommend this place", score: 5)
# HM below
WorkspaceReview.create!(booking: booking_31, content: "I am very happy about Workero. Good service.", score: 5)
WorkspaceReview.create!(booking: booking_32, content: "Shared desks are ergonomics! That's really nice!!", score: 4)
WorkspaceReview.create!(booking: booking_33, content: "My colleagues and me spent a really good time there.", score: 4)
WorkspaceReview.create!(booking: booking_34, content: "Easy booking, friendly staff, .. Nice!", score: 4)
WorkspaceReview.create!(booking: booking_35, content: "Private office is just amazing!", score: 5)
WorkspaceReview.create!(booking: booking_36, content: "Great. Just in the middle of Brussels!", score: 4)

Payment.create!(booking: booking_1, renter: booking_1.user, owner: workspace_1.user)
url_1_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919980/workingspace_1_1.png"
photo_1_1 = Photo.create!(workspace: workspace_1)
photo_1_1.remote_photo_url = url_1_1
photo_1_1.save

url_2_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919470/workingspace_2_3_1.jpg"
photo_2_1 = Photo.create!(workspace: workspace_2)
photo_2_1.remote_photo_url = url_2_1
photo_2_1.save

url_3_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919470/workingspace_2_3_2.jpg"
photo_3_1 = Photo.create!(workspace: workspace_3)
photo_3_1.remote_photo_url = url_3_1
photo_3_1.save

url_4_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919470/workingspace_4_2.png"
photo_4_1 = Photo.create!(workspace: workspace_4)
photo_4_1.remote_photo_url = url_4_1
photo_4_1.save

url_5_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919471/workingspace_5_1.jpg"
photo_5_1 = Photo.create!(workspace: workspace_5)
photo_5_1.remote_photo_url = url_5_1
photo_5_1.save

url_6_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919471/workingspace_6_1.jpg"
photo_6_1 = Photo.create!(workspace: workspace_6)
photo_6_1.remote_photo_url = url_6_1
photo_6_1.save

url_7_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919474/workspace_7_18_1.jpg"
photo_7_1 = Photo.create!(workspace: workspace_7)
photo_7_1.remote_photo_url = url_7_1
photo_7_1.save

url_8_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919474/workspace_7_18_2.jpg"
photo_8_1 = Photo.create!(workspace: workspace_8)
photo_8_1.remote_photo_url = url_8_1
photo_8_1.save

url_9_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919474/workspace_7_18_3.jpg"
photo_9_1 = Photo.create!(workspace: workspace_9)
photo_9_1.remote_photo_url = url_9_1
photo_9_1.save

url_10_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919474/workspace_7_18_1.jpg"
photo_10_1 = Photo.create!(workspace: workspace_10)
photo_10_1.remote_photo_url = url_10_1
photo_10_1.save

url_11_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919474/workspace_7_18_2.jpg"
photo_11_1 = Photo.create!(workspace: workspace_11)
photo_11_1.remote_photo_url = url_11_1
photo_11_1.save
url_12_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919474/workspace_7_18_3.jpg"
photo_12_1 = Photo.create!(workspace: workspace_12)
photo_12_1.remote_photo_url = url_12_1
photo_12_1.save

url_13_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919474/workspace_7_18_1.jpg"
photo_13_1 = Photo.create!(workspace: workspace_13)
photo_13_1.remote_photo_url = url_13_1
photo_13_1.save

url_14_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919474/workspace_7_18_2.jpg"
photo_14_1 = Photo.create!(workspace: workspace_14)
photo_14_1.remote_photo_url = url_14_1
photo_14_1.save

url_15_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919474/workspace_7_18_3.jpg"
photo_15_1 = Photo.create!(workspace: workspace_15)
photo_15_1.remote_photo_url = url_15_1
photo_15_1.save

url_16_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919474/workspace_7_18_1.jpg"
photo_16_1 = Photo.create!(workspace: workspace_16)
photo_16_1.remote_photo_url = url_16_1
photo_16_1.save

url_17_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919474/workspace_7_18_2.jpg"
photo_17_1 = Photo.create!(workspace: workspace_17)
photo_17_1.remote_photo_url = url_17_1
photo_17_1.save

url_18_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919474/workspace_7_18_3.jpg"
photo_18_1 = Photo.create!(workspace: workspace_18)
photo_18_1.remote_photo_url = url_18_1
photo_18_1.save

url_19_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919474/workspace_19_1.jpg"
photo_19_1 = Photo.create!(workspace: workspace_19)
photo_19_1.remote_photo_url = url_19_1
photo_19_1.save

url_20_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919473/workingspace_20_1.jpg"
photo_20_1 = Photo.create!(workspace: workspace_20)
photo_20_1.remote_photo_url = url_20_1
photo_20_1.save

url_21_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919472/workingspace_21_1.png"
photo_21_1 = Photo.create!(workspace: workspace_21)
photo_21_1.remote_photo_url = url_21_1
photo_21_1.save

url_22_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919471/workingspace_22_1.jpg"
photo_22_1 = Photo.create!(workspace: workspace_22)
photo_22_1.remote_photo_url = url_22_1
photo_22_1.save

url_23_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919473/workingspace_23_1.jpg"
photo_23_1 = Photo.create!(workspace: workspace_23)
photo_23_1.remote_photo_url = url_23_1
photo_23_1.save

url_24_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919473/workingspace_24_2.jpg"
photo_24_1 = Photo.create!(workspace: workspace_24)
photo_24_1.remote_photo_url = url_24_1
photo_24_1.save

url_25_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919474/workingspace_25_2.jpg"
photo_25_1 = Photo.create!(workspace: workspace_25)
photo_25_1.remote_photo_url = url_25_1
photo_25_1.save

url_26_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919473/workingspace_26_2.jpg"
photo_26_1 = Photo.create!(workspace: workspace_26)
photo_26_1.remote_photo_url = url_26_1
photo_26_1.save

url_27_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1552919474/workingspace_27_2.jpg"
photo_27_1 = Photo.create!(workspace: workspace_27, remote_photo_url: url_27_1)

url_user_1_avatar = "https://res.cloudinary.com/dux1stkfq/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1553076299/Boy_Drinks_water_and_smiles_-_480x640.png"
user_1_profile = Profile.where(user: user_1).first
user_1_profile.remote_photo_url = url_user_1_avatar
user_1_profile.bio = "I am a web developper from Berlin. I like to travel the world and make new friends in every place I go."
user_1_profile.save

