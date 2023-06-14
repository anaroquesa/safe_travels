# require "pry-byebug"
# # require "faker"
require "open-uri"


puts "Cleaning DB 🧹"
User.destroy_all
City.destroy_all
Activity.destroy_all

puts "Creating Users.."

# User.create!(
#   first_name: "Esther",
#   last_name: "Mueni",
#   email: "Esther@email.com",
#   password: "123456",
#   # photo: "https://res.cloudinary.com/doxaalafc/image/upload/v1686661594/SafeTravels%20app/Images/Profile%20images/esther_iyo78l.jpg",
#   summary: "Esther Mueni was born on June 4, 1992, in Nairobi, Kenya. Growing up in a bustling city filled with diverse cultures and vibrant energy, Esther was inspired by the rich tapestry of her surroundings. From a young age, she demonstrated a strong sense of determination and a passion for making a difference in the lives of others."
# )
# User.create!(
#   first_name: "Ana",
#   last_name: "Sa",
#   email: "Ana@email.com",
#   password: "123456",
#   # photo: "https://res.cloudinary.com/doxaalafc/image/upload/v1686661594/SafeTravels%20app/Images/Profile%20images/ana_sfmt2l.jpg",
#   summary: "Ana Sa was born on September 27, 1990, in a vibrant coastal city in Portugal. From a young age, Ana displayed a natural talent and passion for the arts. Growing up in a culturally rich environment, she was exposed to various forms of artistic expression, which fueled her creativity and ignited her desire to pursue a career in the arts.")
# User.create!(
#   first_name: "Dabin",
#   last_name: "Im",
#   email: "dabin@email.com",
#   password: "123456",
#   # photo_attach: URI.open("https://res.cloudinary.com/doxaalafc/image/upload/v1686661594/SafeTravels%20app/Images/Profile%20images/dabin_jf4zmg.jpg"),
#   summary: "Dabin Im, known by her stage name Dabin, was born on March 12, 1992, in Seoul, South Korea. From a young age, Dabin displayed a remarkable talent and passion for music. Growing up in a musically inclined family, she was exposed to various genres and instruments, which sparked her love for creating and performing music."
# )

file = URI.open("https://res.cloudinary.com/doxaalafc/image/upload/v1686661594/SafeTravels%20app/Images/Profile%20images/emily_b8u492.jpg?cache_busting_parameter")
user = User.new(
  first_name: "Emily",
  last_name: "Yetsko",
  email: "Emily@email.com",
  password: "123456",
  # avatar: File.open(Rails.root.join('app', 'assets', 'images', 'emily.jpg')),
  summary: "Emily Yetsko was born on May 7, 1990, in the bustling city of New York. Raised in a vibrant and diverse community, From a young age, Emily exhibited a keen interest in technology and computers. She spent countless hours tinkering with gadgets, learning to code, and exploring the endless possibilities that the digital world had to offer.")
  user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user.save
  # User.create!(
  # first_name: "Agustin",
  # last_name: "Rivas",
  # email: "Agustin@email.com",
  # password: "123456",
  # summary: "Austin Rivas, hailing from the beautiful country of Argentina, was born on June 25, 1992, in the vibrant city of Buenos Aires. Growing up in a culturally rich environment, Austin developed a deep appreciation for music, art, and the diverse traditions of his homeland.")

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
City.create!(
  name: "New York City",
  country: "US",
  image_url_one: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586890/SafeTravels%20app/Images/City%20images/NY/City_NY_City_oyzts0.png",
  image_url_two: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586890/SafeTravels%20app/Images/City%20images/NY/Activities_1_NY_City_abp0km.png",
  image_url_three: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586893/SafeTravels%20app/Images/City%20images/NY/Activities_2_NY_City_niaugo.png",
  latitude: 13.381777, longitude: 52.531677, address: "Times Square, NY", safety_rating: 2
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

# Activity.create!(city_id: "1", title: "Brandenburg Gate", category: "Culture", address: "Brandenburger Tor, 10117 Berlin", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Brandenburger_Tor_abends.jpg/1200px-Brandenburger_Tor_abends.jpg")
# Activity.create!(city_id: "1", title: "Reichstag Building", category: "Culture", address: "Reichstag Building, Platz der Republik 1, 11011 Berlin", image_url: "https://upload.wikimedia.org/wikipedia/commons/d/d8/Reichstag_Dome_2019.jpg")
# Activity.create!(city_id: "1", title: "East Side Gallery", category: "Art", address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin", image_url: "https://images.musement.com/cover/0002/65/east-side-gallery-berlin_header-164457.jpeg")
# Activity.create!(city_id: "2", title: "Empire State Building", category: "Culture", address: "Empire State Building, 20 W 34th St., New York, NY 10001, United States", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Empire_State_Building_from_the_Top_of_the_Rock.jpg/640px-Empire_State_Building_from_the_Top_of_the_Rock.jpg")
# Activity.create!(city_id: "2", title: "American Museum of Natural History", category: "Culture", address: "American Museum of Natural History, 200 Central Park West, New York, NY 10024, United States", image_url: "https://image.newyorkcity.de/wp-content/uploads/2021/01/American-Museum-of-Natural-History-in-New-York-T-Rex.jpg.webp")
# Activity.create!(city_id: "2", title: "Central Park", category: "Nature", address: "Central Park West, New York, NY, USA", image_url: "https://img.freepik.com/fotos-kostenlos/central-park-in-manhattan-new-york-ein-riesiger-schoener-park-umgeben-von-wolkenkratzern-mit-teich_181624-50335.jpg")
# Activity.create!(city_id: "1", title: "Berlin Cathedral", category: "Culture", address: "Am Lustgarten, 10178 Berlin", image_url: "https://mywowo.net/media/images/cache/berlino_museuminsel_08_berliner_dom_jpg_1200_630_cover_85.jpg")

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

# Activity.create!(
#   city_id: "1",
#   title: "East Side Gallery",
#   category: "Art",
#   address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin",
#   image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650767/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_3_twzcd2.png"
# )

# Activity.create!(
#   city_id: "1",
#   title: "",
#   category: "Art",
#   address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin",
#   image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650767/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_3_twzcd2.png"
# )
# Activity.create!(
#   city_id: "1",
#   title: "",
#   category: "Food",
#   address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin",
#   image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650767/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_3_twzcd2.png"
# )
# Activity.create!(
#   city_id: "1",
#   title: "",
#   category: "Food",
#   address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin",
#   image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650767/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_3_twzcd2.png"
# )
# Activity.create!(
#   city_id: "1",
#   title: "",
#   category: "Food",
#   address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin",
#   image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650767/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_3_twzcd2.png"
# )
# Activity.create!(
#   city_id: "1",
#   title: "",
#   category: "Nature",
#   address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin",
#   image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650767/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_3_twzcd2.png"
# )
# Activity.create!(
#   city_id: "1",
#   title: "",
#   category: "Nature",
#   address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin",
#   image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650767/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_3_twzcd2.png"
# )
# Activity.create!(
#   city_id: "1",
#   title: "",
#   category: "Nature",
#   address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin",
#   image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650767/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_3_twzcd2.png"
# )Activity.create!(
#   city_id: "1",
#   title: "",
#   category: "Art",
#   address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin",
#   image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650767/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_3_twzcd2.png"
# )

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
