require "pry-byebug"
require "faker"

puts "Cleaning DB 🧹"
User.destroy_all
City.destroy_all
Activity.destroy_all

puts "Creating Users.."

User.create(
  first_name: "Esther",
  last_name: "Mueni",
  email: "Esther@email.com",
  password: "123456",
  summary: "Esther Mueni was born on June 4, 1992, in Nairobi, Kenya. Growing up in a bustling city filled with diverse cultures and vibrant energy, Esther was inspired by the rich tapestry of her surroundings. From a young age, she demonstrated a strong sense of determination and a passion for making a difference in the lives of others.")
User.create(
  first_name: "Ana",
  last_name: "Sa",
  email: "Ana@email.com",
  password: "123456",
  summary: "Ana Sa was born on September 27, 1990, in a vibrant coastal city in Portugal. From a young age, Ana displayed a natural talent and passion for the arts. Growing up in a culturally rich environment, she was exposed to various forms of artistic expression, which fueled her creativity and ignited her desire to pursue a career in the arts.")
User.create(
  first_name: "Dabin",
  last_name: "Im",
  email: "Dabin@email.com",
  password: "123456",
  summary: "Dabin Im, known by her stage name Dabin, was born on March 12, 1992, in Seoul, South Korea. From a young age, Dabin displayed a remarkable talent and passion for music. Growing up in a musically inclined family, she was exposed to various genres and instruments, which sparked her love for creating and performing music.")
User.create(
  first_name: "Emily",
  last_name: "Yetsko",
  email: "Emily@email.com",
  password: "123456",
  summary: "Emily Yetsko was born on May 7, 1990, in the bustling city of New York. Raised in a vibrant and diverse community, From a young age, Emily exhibited a keen interest in technology and computers. She spent countless hours tinkering with gadgets, learning to code, and exploring the endless possibilities that the digital world had to offer.")

User.create(
  first_name: "Agustin",
  last_name: "Rivas",
  email: "Agustin@email.com",
  password: "123456",
  summary: "Austin Rivas, hailing from the beautiful country of Argentina, was born on June 25, 1992, in the vibrant city of Buenos Aires. Growing up in a culturally rich environment, Austin developed a deep appreciation for music, art, and the diverse traditions of his homeland.")

# User.all.each do |user|
#   user.photo = Faker::LoremFlickr.image(size: "300x300", search_terms: ['person'])
#   user.save
# end

puts "Creating Cities.."

# query = "https://www.travel-advisory.info/api"
# http_response = Net::HTTP.get_response(URI(query))
# response = JSON.parse(http_response.body)
# safety = response["data"]
# puts safety
# safety.each do |city|
#   return city
# end

# const one = 1 safe
# const two = 2
# const three = 3
# const four = 4
puts "Creating Cities.."

City.create!(
  name: "Berlin",
  country: "Germany",
  image_url_one: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586893/SafeTravels%20app/Images/City%20images/Berlin/City_Berlin_Germany_dxdavb.png",
  image_url_two: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586889/SafeTravels%20app/Images/City%20images/Berlin/Activities_2_Berlin_Germany_oniqwb.png",
  image_url_three: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586891/SafeTravels%20app/Images/City%20images/Berlin/Activities_3_Berlin_Germany_oaonrz.png",
  latitude: 13.381777,
  longitude: 52.531677,
  address: "Mohrenstrasse 37, 10117 Berlin",
  safety_rating: 1
)

City.create!(name: "New York City", country: "US", image_url_one: "https://www.travelandleisure.com/thmb/91pb8LbDAUwUN_11wATYjx5oF8Q=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/new-york-city-evening-NYCTG0221-52492d6ccab44f328a1c89f41ac02aea.jpg", image_url_two: "https://www.frommers.com/system/media_items/attachments/000/868/461/s980/Frommers-New-York-City-Getting-Around-1190x768.jpg?1647177178", image_url_three: "https://media.cnn.com/api/v1/images/stellar/prod/230602102516-new-york-city-aerial-file-restricted.jpg?c=original", latitude: 13.381777, longitude: 52.531677, address: "Time Square, NY", safety_rating: 1)
City.create!(name: "Mexico City", country: "Mexico", image_url_one: "https://i.natgeofe.com/n/6c02ad5a-977b-4f12-b9c0-02ffb0736e07/metropolitan-cathedral-zocalo-mexico-city.JPG", image_url_two: "https://www.fodors.com/wp-content/uploads/2021/05/UltimateMexicoCity__HERO_shutterstock_1058054480.jpg", image_url_three: "https://cdn.portico.travel/i/v1.204605.jpg", latitude: 13.381777, longitude: 52.531677, address: "Mexico City, Mexico", safety_rating: 1)
City.create!(name: "Toronto", country: "Canada", image_url_one: "https://www.travelbook.de/data/uploads/2022/11/gettyimages-1321593346.jpg", image_url_two: "https://a.cdn-hotels.com/gdcs/production190/d988/1071675e-1bd7-4a81-8b40-735eb9241410.jpg", image_url_three: "https://images.adsttc.com/media/images/63e4/ae99/6e85/1900/0140/82fc/large_jpg/229_Richmond_Toronto_competition2small.jpg?1675931296", latitude: 13.381777, longitude: 52.531677, address: "Avenue Road, 1008. Toronto ON", safety_rating: 1)
City.create!(name: "Tokyo", country: "Japan", image_url_one: "https://assets.editorial.aetnd.com/uploads/2013/07/gettyimages-1390815938.jpg", image_url_two: "https://blog.japanwondertravel.com/wp-content/uploads/2022/03/manuel-velasquez-ssfp9okORYs-unsplash.jpg", image_url_three: "https://www.planetware.com/wpimages/2023/05/japan-tokyo-top-attractions-intro-paragraph-sensoji-temple.jpg", latitude: 13.381777, longitude: 52.531677, address: "Tokyo", safety_rating: 1 )
City.create!(name: "London", country: "UK", image_url_one: "https://assets.editorial.aetnd.com/uploads/2019/03/topic-london-gettyimages-760251843-feature.jpg", image_url_two: "https://a.cdn-hotels.com/gdcs/production153/d1371/e6c1f55e-51ac-41d5-8c63-2d0c63faf59e.jpg", image_url_three: "https://www.visitbritain.com/sites/cms/files/styles/page_header_min/public/lookatmedam/607293l5.jpg?h=5a621e4e&itok=IbI9lBgb", latitude: 13.381777, longitude: 52.531677, address: "London SW1A 1AA, United Kingdom", safety_rating: 1 )
City.create!(name: "Paris", country: "France", image_url_one: "https://www.merkur.de/bilder/2022/08/31/91783824/29728359-eiffelturm-in-paris-der-hauptstadt-von-frankreich-3dk9flqaOWe9.jpg", image_url_two: "https://assets.adac.de/image/upload/c_scale,f_auto,q_auto,t_2:1-default,w_1500/v1/ADAC-eV/KOR/Bilder/RF/news-temp-30-paris-2107_gt70qk", image_url_three: "https://a.cdn-hotels.com/gdcs/production1/d1931/f2860f0c-8b89-41f3-b8e9-71c6af991531.jpg", latitude: 13.381777, longitude: 52.531677, address: "Champ de Mars, 5 Av. Anatole France, 75007 Paris", safety_rating: 1 )
City.create!(name: "Florence", country: "Italy", image_url_one: "https://tourismmedia.italia.it/is/image/mitur/20210401173629-firenze-toscana-gettyimages-1145040590-2?wid=1600&hei=900&fit=constrain,1&fmt=webp", image_url_two: "https://media.tacdn.com/media/attractions-content--1x-1/0f/34/06/9b.jpg", image_url_three: "https://a.cdn-hotels.com/gdcs/production92/d1146/87b98bdb-666a-4ae3-964a-5872d4580ef4.jpg?impolicy=fcrop&w=800&h=533&q=medium", latitude: 13.381777, longitude: 52.531677, address: "Via de Tornabuoni, Florence", safety_rating: 1 )
City.create!(name: "Nakuru", country: "Kenya", image_url_one: "https://youimg1.tripcdn.com/target/10011f000001h357u3395.jpg?proc=source%2Ftrip", image_url_two: "https://media.istockphoto.com/id/603153650/photo/lake-nakuru-in-kenya.jpg?s=612x612&w=0&k=20&c=ch8i8nLse7Ejqlib74WrEwAo017oZlLJVrr1OeFBqLk=", image_url_three: "https://media-cdn.tripadvisor.com/media/photo-s/1a/bf/51/8f/lake-nakuru-lodge.jpg", address: "Nakuru, Kenya", safety_rating: 1 )
City.create!(name: "Amarante", country: "Portugal", image_url_one: "https://image.geo.de/30144918/t/6L/v3/w1440/r0/-/amarante-230304909-f-jpg--82499-.jpg", image_url_two: "https://img.mairdumont.de/x1fYV1PM2bu62POfBmn9DyyKnYo=/fit-in/1024x1024/filters:no_upscale()/44837293.jpg", image_url_three: "https://www.civitatis.com/f/portugal/amarante/galeria/amarante-dia-vista.jpg", address: "Largo de São Gonçalo 3, 4600-038 Amarante", safety_rating: 1 )

puts "Creating Activities.."

Activity.create!(city_id: "1", title: "Brandenburg Gate", category: "Culture", address: "Brandenburger Tor, 10117 Berlin", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Brandenburger_Tor_abends.jpg/1200px-Brandenburger_Tor_abends.jpg")
Activity.create!(city_id: "1", title: "Reichstag Building", category: "Culture", address: "Reichstag Building, Platz der Republik 1, 11011 Berlin", image_url: "https://upload.wikimedia.org/wikipedia/commons/d/d8/Reichstag_Dome_2019.jpg")
Activity.create!(city_id: "1", title: "East Side Gallery", category: "Art", address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin", image_url: "https://images.musement.com/cover/0002/65/east-side-gallery-berlin_header-164457.jpeg")
Activity.create!(city_id: "2", title: "Empire State Building", category: "Culture", address: "Empire State Building, 20 W 34th St., New York, NY 10001, United States", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Empire_State_Building_from_the_Top_of_the_Rock.jpg/640px-Empire_State_Building_from_the_Top_of_the_Rock.jpg")
Activity.create!(city_id: "2", title: "American Museum of Natural History", category: "Culture", address: "American Museum of Natural History, 200 Central Park West, New York, NY 10024, United States", image_url: "https://image.newyorkcity.de/wp-content/uploads/2021/01/American-Museum-of-Natural-History-in-New-York-T-Rex.jpg.webp")
Activity.create!(city_id: "2", title: "Central Park", category: "Nature", address: "Central Park West, New York, NY, USA", image_url: "https://img.freepik.com/fotos-kostenlos/central-park-in-manhattan-new-york-ein-riesiger-schoener-park-umgeben-von-wolkenkratzern-mit-teich_181624-50335.jpg")
Activity.create!(city_id: "1", title: "Berlin Cathedral", category: "Culture", address: "Am Lustgarten, 10178 Berlin", image_url: "https://mywowo.net/media/images/cache/berlino_museuminsel_08_berliner_dom_jpg_1200_630_cover_85.jpg")
=======
  safety_rating: 2
)

City.create!(
  name: "New York City",
  country: "US",
  image_url_one: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586890/SafeTravels%20app/Images/City%20images/NY/City_NY_City_oyzts0.png",
  image_url_two: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586890/SafeTravels%20app/Images/City%20images/NY/Activities_1_NY_City_abp0km.png",
  image_url_three: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586893/SafeTravels%20app/Images/City%20images/NY/Activities_2_NY_City_niaugo.png",
  latitude: 13.381777, longitude: 52.531677, address: "Time Square, NY", safety_rating: 2
)

City.create!(
  name: "Mexico City",
  country: "Mexico",
  image_url_one: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586894/SafeTravels%20app/Images/City%20images/Mexico%20City/City_Mexico_City_r6rlzy.png",
  image_url_two: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586894/SafeTravels%20app/Images/City%20images/Mexico%20City/Activities_1_Mexico_City_oficzv.png",
  image_url_three: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586888/SafeTravels%20app/Images/City%20images/Mexico%20City/Activities_2_Mexico_City_cindms.png",
  latitude: 13.381777, longitude: 52.531677, address: "Mexico City, Mexico", safety_rating: 3
)

City.create!(
  name: "Toronto",
  country: "Canada",
  image_url_one: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586895/SafeTravels%20app/Images/City%20images/Toronto/City_Toronto_Canada_yhnilk.png",
  image_url_two: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586892/SafeTravels%20app/Images/City%20images/Toronto/Activities_1_Toronto_Canada_efgrnq.png",
  image_url_three: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586895/SafeTravels%20app/Images/City%20images/Toronto/Activities_2_Toronto_Canada_llqzkd.png",
  latitude: 13.381777, longitude: 52.531677, address: "Avenue Road, 1008. Toronto ON", safety_rating: 1
)

# add updated images for Tokyo only
City.create!(
  name: "Tokyo",
  country: "Japan",
  image_url_one: "https://res.cloudinary.com/doxaalafc/image/upload/v1686649606/SafeTravels%20app/Images/City%20images/Tokyo/City_Tokyo_Japan_c3dymt.png",
  image_url_two: "https://res.cloudinary.com/doxaalafc/image/upload/v1686649606/SafeTravels%20app/Images/City%20images/Tokyo/Activities_1_Tokyo_Japan_k06tpo.png",
  image_url_three: "https://res.cloudinary.com/doxaalafc/image/upload/v1686649608/SafeTravels%20app/Images/City%20images/Tokyo/Activities_3_Tokyo_Japan_du769b.png",
  latitude: 13.381777, longitude: 52.531677, address: "Tokyo", safety_rating: 1
)

City.create!(
  name: "London",
  country: "UK",
  image_url_one: "https://res.cloudinary.com/doxaalafc/image/upload/v1686648659/SafeTravels%20app/Images/City%20images/London/City_London_UK_flhzo1.png",
  image_url_two: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586889/SafeTravels%20app/Images/City%20images/London/Activities_2_London_UK_psqfry.png",
  image_url_three: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586894/SafeTravels%20app/Images/City%20images/London/Activities_3_London_UK_spa1w9.png",
  latitude: 13.381777, longitude: 52.531677, address: "London SW1A 1AA, United Kingdom", safety_rating: 2
)

City.create!(
  name: "Paris",
  country: "France",
  image_url_one: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586889/SafeTravels%20app/Images/City%20images/Paris/City_Paris_France_d7toqq.png",
  image_url_two: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586890/SafeTravels%20app/Images/City%20images/Paris/Activities_1_Paris_France_agiab8.png",
  image_url_three: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586895/SafeTravels%20app/Images/City%20images/Paris/Activities_2_Paris_France_cxzt6x.png",
  latitude: 13.381777, longitude: 52.531677, address: "Champ de Mars, 5 Av. Anatole France, 75007 Paris", safety_rating: 2
)

City.create!(
  name: "Florence",
  country: "Italy",
  image_url_one: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586888/SafeTravels%20app/Images/City%20images/Florence/City_Florence_Italy_cj3iea.png",
  image_url_two: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586893/SafeTravels%20app/Images/City%20images/Florence/Activities_2_Florence_Italy_ii4qir.png",
  image_url_three: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586892/SafeTravels%20app/Images/City%20images/Florence/Activities_3_Florence_Italy_p485ew.png",
  latitude: 13.381777, longitude: 52.531677, address: "Via de Tornabuoni, Florence", safety_rating: 2
)

City.create!(
  name: "Nakuru",
  country: "Kenya",
  image_url_one: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586893/SafeTravels%20app/Images/City%20images/Nukuru/City_Nakuru_Kenya_zsslsi.png",
  image_url_two: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586888/SafeTravels%20app/Images/City%20images/Nukuru/Activities_1_Nakuru_Kenya_x257wq.png",
  image_url_three: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586888/SafeTravels%20app/Images/City%20images/Nukuru/Activities_2_Nakuru_Kenya_p11umr.png",
  address: "Nakuru, Kenya", safety_rating: 2
)

City.create!(
  name: "Amarante",
  country: "Portugal",
  image_url_one: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586892/SafeTravels%20app/Images/City%20images/Amarante/City_Amarante_Portugal_anzxgd.png",
  image_url_two: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586891/SafeTravels%20app/Images/City%20images/Amarante/Activities_1_Amarante_Portugal_p2vsub.png",
  image_url_three: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586891/SafeTravels%20app/Images/City%20images/Amarante/Activities_3_Amarante_Portugal_pdwtgu.png",
  address: "Largo de São Gonçalo 3, 4600-038 Amarante", safety_rating: 1
)

puts "Creating Activities.."

Activity.create!(
  city_id: "1",
  title: "Brandenburg Gate",
  category: "Culture",
  address: "Brandenburger Tor, 10117 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650766/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_1_f17jrf.png"
)

Activity.create!(
  city_id: "1",
  title: "Reichstag Building",
  category: "Culture",
  address: "Reichstag Building, Platz der Republik 1, 11011 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650767/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_2_icwzsk.png"
)
Activity.create!(
  city_id: "1",
  title: "Berlin Cathedral",
  category: "Culture",
  address: "Am Lustgarten, 10178 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650766/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_4_srjzrh.png"
)

Activity.create!(
  city_id: "1",
  title: "East Side Gallery",
  category: "Art",
  address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650767/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_3_twzcd2.png"
)
Activity.create!(
  city_id: "1",
  title: "",
  category: "Art",
  address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650767/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_3_twzcd2.png"
)
Activity.create!(
  city_id: "1",
  title: "",
  category: "Art",
  address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650767/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_3_twzcd2.png"
)
Activity.create!(
  city_id: "1",
  title: "",
  category: "Food",
  address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650767/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_3_twzcd2.png"
)
Activity.create!(
  city_id: "1",
  title: "",
  category: "Food",
  address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650767/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_3_twzcd2.png"
)
Activity.create!(
  city_id: "1",
  title: "",
  category: "Food",
  address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650767/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_3_twzcd2.png"
)
Activity.create!(
  city_id: "1",
  title: "",
  category: "Nature",
  address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650767/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_3_twzcd2.png"
)
Activity.create!(
  city_id: "1",
  title: "",
  category: "Nature",
  address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650767/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_3_twzcd2.png"
)
Activity.create!(
  city_id: "1",
  title: "",
  category: "Nature",
  address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650767/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_3_twzcd2.png"
)



Activity.create!(
  city_id: "2",
  title: "Empire State Building",
  category: "Culture",
  address: "Empire State Building, 20 W 34th St., New York, NY 10001, United States",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686651185/SafeTravels%20app/Images/City%20images/NY%20activities/NY_activities_1_seyg3m.png"
)

Activity.create!(
  city_id: "2",
  title: "American Museum of Natural History",
  category: "Culture",
  address: "American Museum of Natural History, 200 Central Park West, New York, NY 10024, United States",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686651185/SafeTravels%20app/Images/City%20images/NY%20activities/NY_activities_2_gjrcf4.png"
)

Activity.create!(
  city_id: "2",
  title: "Central Park",
  category: "Nature",
  address: "Central Park West, New York, NY, USA",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686651185/SafeTravels%20app/Images/City%20images/NY%20activities/NY_activities_3_mmn9nf.png"
)

Activity.create!(
  city_id: "1",
  title: "Berlin Cathedral",
  category: "Culture",
  address: "Am Lustgarten, 10178 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650766/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_4_srjzrh.png"
)
