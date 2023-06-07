# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
City.create!(name: "Berlin", country: "Germany", image_url: "https://cdn.getyourguide.com/img/location/e7cd5b184985f010.jpeg/75.jpg")
City.create!(name: "New York City", country: "US", image_url: "https://www.travelandleisure.com/thmb/91pb8LbDAUwUN_11wATYjx5oF8Q=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/new-york-city-evening-NYCTG0221-52492d6ccab44f328a1c89f41ac02aea.jpg" )
Activity.create!(city_id: "1", title: "Brandenburg Gate", category: "Culture", address: "Brandenburger Tor, 10117 Berlin", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Brandenburger_Tor_abends.jpg/1200px-Brandenburger_Tor_abends.jpg")
Activity.create!(city_id: "1", title: "Reichstag Building", category: "Culture", address: "Reichstag Building, Platz der Republik 1, 11011 Berlin", image_url: "https://upload.wikimedia.org/wikipedia/commons/d/d8/Reichstag_Dome_2019.jpg")
Activity.create!(city_id: "1", title: "East Side Gallery", category: "Art", address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin", image_url: "https://images.musement.com/cover/0002/65/east-side-gallery-berlin_header-164457.jpeg")
Activity.create!(city_id: "2", title: "Empire State Building", category: "Culture", address: "Empire State Building, 20 W 34th St., New York, NY 10001, United States", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Empire_State_Building_from_the_Top_of_the_Rock.jpg/640px-Empire_State_Building_from_the_Top_of_the_Rock.jpg")
Activity.create!(city_id: "2", title: "American Museum of Natural History", category: "Museum", address: "American Museum of Natural History, 200 Central Park West, New York, NY 10024, United States", image_url: "https://image.newyorkcity.de/wp-content/uploads/2021/01/American-Museum-of-Natural-History-in-New-York-T-Rex.jpg.webp")
Activity.create!(city_id: "2", title: "Central Park", category: "Nature", address: "Central Park West, New York, NY, USA", image_url: "https://img.freepik.com/fotos-kostenlos/central-park-in-manhattan-new-york-ein-riesiger-schoener-park-umgeben-von-wolkenkratzern-mit-teich_181624-50335.jpg")
