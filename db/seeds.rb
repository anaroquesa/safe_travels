# require "pry-byebug"

require "open-uri"

puts "Cleaning DB 🧹"
Activity.destroy_all
City.destroy_all
User.destroy_all

puts "Creating Users.."

  file = URI.open("https://res.cloudinary.com/doxaalafc/image/upload/v1686661594/SafeTravels%20app/Images/Profile%20images/esther_iyo78l.jpg")
  user1 = User.new(
  first_name: "Esther",
  last_name: "Mueni",
  email: "Esther@email.com",
  password: "123456",
  summary: "Hi, I'm from Nairobi, Kenya. I grew up in a city filled with diverse cultures and vibrant energy. I love to be inspired by my surroundings and the people I love. I have passion to make a difference in the lives of others.")
  user1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user1.save

  file = URI.open("https://res.cloudinary.com/doxaalafc/image/upload/v1686661594/SafeTravels%20app/Images/Profile%20images/ana_sfmt2l.jpg")
  user2 = User.new(
  first_name: "Ana",
  last_name: "Sa",
  email: "Ana@email.com",
  password: "123456",
  summary: "Hi, I'm from a vibrant coastal city in Portugal. I have great passion for arts and music. I love to express creativity and will continue to pursue in arts.")
  user2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user2.save

  file = URI.open("https://res.cloudinary.com/doxaalafc/image/upload/v1686661594/SafeTravels%20app/Images/Profile%20images/dabin_jf4zmg.jpg")
  user3 = User.new(
  first_name: "Dabin",
  last_name: "Im",
  email: "dabin@email.com",
  password: "123456",
  summary: "Hi, I'm from Seoul, South Korea. I grew up in India and California. I have passion for design and food. I love exploring the world with people who spark joy and positive energy.")
  user3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user3.save

  file = URI.open("https://res.cloudinary.com/doxaalafc/image/upload/v1686661594/SafeTravels%20app/Images/Profile%20images/emily_b8u492.jpg?cache_busting_parameter")
  user4 = User.new(
  first_name: "Emily",
  last_name: "Yetsko",
  email: "Emily@email.com",
  password: "123456",
  summary: "Hi, I'm from the bustling city of New York. Raised in a vibrant and diverse community. I am always keen to learn technology and computers. I love to geek out and learn to code, and explore the endless possibilities that the digital world has to offer.")
  user4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user4.save

  file = URI.open("https://res.cloudinary.com/doxaalafc/image/upload/v1686661594/SafeTravels%20app/Images/Profile%20images/emily_b8u492.jpg?cache_busting_parameter")
  user5 = User.new(
  first_name: "Agustina",
  last_name: "Rivas",
  email: "Agustin@email.com",
  password: "123456",
  summary: "Hi, I'm from a beautiful country of Argentina. I have developed a deep appreciation for music, art, and the diverse traditions of my homeland.")
  user5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user5.save




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

berlin = City.create!(
  name: "Berlin",
  country: "Germany",
  image_url_one: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586893/SafeTravels%20app/Images/City%20images/Berlin/City_Berlin_Germany_dxdavb.png",
  image_url_two: "https://res.cloudinary.com/doxaalafc/image/upload/v1686653013/SafeTravels%20app/Images/City%20images/Berlin/Activities_2_Berlin_Germany_yaxnwx.png",
  image_url_three: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586891/SafeTravels%20app/Images/City%20images/Berlin/Activities_3_Berlin_Germany_oaonrz.png",
  latitude: 13.381777,
  longitude: 52.531677,
  address: "Mohrenstrasse 37, 10117 Berlin",
  safety_rating: 2
)

new_york = City.create!(
  name: "New York City",
  country: "US",
  image_url_one: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586890/SafeTravels%20app/Images/City%20images/NY/City_NY_City_oyzts0.png",
  image_url_two: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586890/SafeTravels%20app/Images/City%20images/NY/Activities_1_NY_City_abp0km.png",
  image_url_three: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586893/SafeTravels%20app/Images/City%20images/NY/Activities_2_NY_City_niaugo.png",
  latitude: 13.381777, longitude: 52.531677, address: "Time Square, NY",
  safety_rating: 2
)

City.create!(
  name: "Mexico City",
  country: "Mexico",
  image_url_one: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586894/SafeTravels%20app/Images/City%20images/Mexico%20City/City_Mexico_City_r6rlzy.png",
  image_url_two: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586894/SafeTravels%20app/Images/City%20images/Mexico%20City/Activities_1_Mexico_City_oficzv.png",
  image_url_three: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586888/SafeTravels%20app/Images/City%20images/Mexico%20City/Activities_2_Mexico_City_cindms.png",
  latitude: 13.381777, longitude: 52.531677, address: "Mexico City, Mexico",
  safety_rating: 3
)

City.create!(
  name: "Toronto",
  country: "Canada",
  image_url_one: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586895/SafeTravels%20app/Images/City%20images/Toronto/City_Toronto_Canada_yhnilk.png",
  image_url_two: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586892/SafeTravels%20app/Images/City%20images/Toronto/Activities_1_Toronto_Canada_efgrnq.png",
  image_url_three: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586895/SafeTravels%20app/Images/City%20images/Toronto/Activities_2_Toronto_Canada_llqzkd.png",
  latitude: 13.381777, longitude: 52.531677, address: "Avenue Road, 1008. Toronto ON",
  safety_rating: 1
)

City.create!(
  name: "Tokyo",
  country: "Japan",
  image_url_one: "https://res.cloudinary.com/doxaalafc/image/upload/v1686649606/SafeTravels%20app/Images/City%20images/Tokyo/City_Tokyo_Japan_c3dymt.png",
  image_url_two: "https://res.cloudinary.com/doxaalafc/image/upload/v1686649606/SafeTravels%20app/Images/City%20images/Tokyo/Activities_1_Tokyo_Japan_k06tpo.png",
  image_url_three: "https://res.cloudinary.com/doxaalafc/image/upload/v1686649608/SafeTravels%20app/Images/City%20images/Tokyo/Activities_3_Tokyo_Japan_du769b.png",
  latitude: 13.381777, longitude: 52.531677, address: "Tokyo",
  safety_rating: 1
)

City.create!(
  name: "London",
  country: "UK",
  image_url_one: "https://res.cloudinary.com/doxaalafc/image/upload/v1686648659/SafeTravels%20app/Images/City%20images/London/City_London_UK_flhzo1.png",
  image_url_two: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586889/SafeTravels%20app/Images/City%20images/London/Activities_2_London_UK_psqfry.png",
  image_url_three: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586894/SafeTravels%20app/Images/City%20images/London/Activities_3_London_UK_spa1w9.png",
  latitude: 13.381777, longitude: 52.531677, address: "London SW1A 1AA, United Kingdom",
  safety_rating: 2
)

City.create!(
  name: "Paris",
  country: "France",
  image_url_one: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586889/SafeTravels%20app/Images/City%20images/Paris/City_Paris_France_d7toqq.png",
  image_url_two: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586890/SafeTravels%20app/Images/City%20images/Paris/Activities_1_Paris_France_agiab8.png",
  image_url_three: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586895/SafeTravels%20app/Images/City%20images/Paris/Activities_2_Paris_France_cxzt6x.png",
  latitude: 13.381777, longitude: 52.531677, address: "Champ de Mars, 5 Av. Anatole France, 75007 Paris",
  safety_rating: 2
)

City.create!(
  name: "Florence",
  country: "Italy",
  image_url_one: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586888/SafeTravels%20app/Images/City%20images/Florence/City_Florence_Italy_cj3iea.png",
  image_url_two: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586893/SafeTravels%20app/Images/City%20images/Florence/Activities_2_Florence_Italy_ii4qir.png",
  image_url_three: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586892/SafeTravels%20app/Images/City%20images/Florence/Activities_3_Florence_Italy_p485ew.png",
  latitude: 13.381777, longitude: 52.531677, address: "Via de Tornabuoni, Florence",
  safety_rating: 2
)

City.create!(
  name: "Nakuru",
  country: "Kenya",
  image_url_one: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586893/SafeTravels%20app/Images/City%20images/Nukuru/City_Nakuru_Kenya_zsslsi.png",
  image_url_two: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586888/SafeTravels%20app/Images/City%20images/Nukuru/Activities_1_Nakuru_Kenya_x257wq.png",
  image_url_three: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586888/SafeTravels%20app/Images/City%20images/Nukuru/Activities_2_Nakuru_Kenya_p11umr.png",
  address: "Nakuru, Kenya",
  safety_rating: 2
)

portugal = City.create!(
  name: "Amarante",
  country: "Portugal",
  image_url_one: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586892/SafeTravels%20app/Images/City%20images/Amarante/City_Amarante_Portugal_anzxgd.png",
  image_url_two: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586891/SafeTravels%20app/Images/City%20images/Amarante/Activities_1_Amarante_Portugal_p2vsub.png",
  image_url_three: "https://res.cloudinary.com/doxaalafc/image/upload/v1686586891/SafeTravels%20app/Images/City%20images/Amarante/Activities_3_Amarante_Portugal_pdwtgu.png",
  address: "Largo de São Gonçalo 3, 4600-038 Amarante",
  safety_rating: 1
)

puts "Creating Activities.."

# 3 for each category: Nature, Culture, Art, Food
# BERLIN
Activity.create!(
  city: berlin,
  title: "Tiefwerder Wiesen",
  category: "Nature",
  address: "13597 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686659428/SafeTravels%20app/Images/Category/Nature/Berlin_nature/Berlin_Nature_1_otlahs.png"
)

Activity.create!(
  city: berlin,
  title: "Nature Park Schöneberger Südgelände",
  category: "Nature",
  address: "Prellerweg 47-49, 12157 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686659427/SafeTravels%20app/Images/Category/Nature/Berlin_nature/Berlin_Nature_3_qlqfen.png"
)

Activity.create!(
  city: berlin,
  title: "Landschaftspark Wuhletal",
  category: "Nature",
  address: "Alt-Biesdorf 46, 12683 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686659427/SafeTravels%20app/Images/Category/Nature/Berlin_nature/Berlin_Nature_2_an7hp6.png"
)

Activity.create!(
  city: berlin,
  title: "Brandenburg Gate",
  category: "Culture",
  address: "Brandenburger Tor, 10117 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650766/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_1_f17jrf.png"
)

Activity.create!(
  city: berlin,
  title: "Reichstag Building",
  category: "Culture",
  address: "Reichstag Building, Platz der Republik 1, 11011 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650767/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_2_icwzsk.png"
)
Activity.create!(
  city: berlin,
  title: "Berlin Cathedral",
  category: "Culture",
  address: "Am Lustgarten, 10178 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650766/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_4_srjzrh.png"
)

Activity.create!(
  city: berlin,
  title: "East Side Gallery",
  category: "Art",
  address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686650767/SafeTravels%20app/Images/City%20images/Berlin%20Activities/Berlin_activities_3_twzcd2.png"
)

Activity.create!(
  city: berlin,
  title: "Pergamonmuseum",
  category: "Art",
  address: "Bodestraße 1-3, 10178 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686660806/SafeTravels%20app/Images/Category/Art/Berlin_art/Berlin_Art_1_iyclyc.png"
)

Activity.create!(
  city: berlin,
  title: "Dark Matter",
  category: "Art",
  address: "Köpenicker Ch 46, 10317 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686660806/SafeTravels%20app/Images/Category/Art/Berlin_art/Berlin_Art_3_tf78dy.png"
)

Activity.create!(
  city: berlin,
  title: "Curry 36",
  category: "Food",
  address: "Mehringdamm 36, 10961 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686661875/SafeTravels%20app/Images/Category/Food/Berlin_food/Berlin_Food_1_lkga1g.png"
)

Activity.create!(
  city: berlin,
  title: "Berliner Fernsehturm",
  category: "Food",
  address: "Panoramastraße 1A, 10178 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686661875/SafeTravels%20app/Images/Category/Food/Berlin_food/Berlin_Food_2_r29f7c.png"
)

Activity.create!(
  city: berlin,
  title: "BRLO Brwhouse",
  category: "Food",
  address: "Schöneberger Str. 16, 10963 Berlin",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686661875/SafeTravels%20app/Images/Category/Food/Berlin_food/Berlin_Food_3_c7arp1.png"
)

# NEW YORK
Activity.create!(
  city: new_york,
  title: "Central Park",
  category: "Nature",
  address: "Central Park West, New York, NY, USA",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686651185/SafeTravels%20app/Images/City%20images/NY%20activities/NY_activities_3_mmn9nf.png"
)

Activity.create!(
  city: new_york,
  title: "Hallett Nature Sanctuary",
  category: "Nature",
  address: "6th Avenue &, Central Park S, New York, NY 10019, United States",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686662451/SafeTravels%20app/Images/Category/Nature/NY_nature/NY_Nature_1_wwxfi5.png"
)

Activity.create!(
  city: new_york,
  title: "Mill Rock Park",
  category: "Nature",
  address: "East River, New York, NY 10128, United States",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686662704/SafeTravels%20app/Images/Category/Nature/NY_nature/NY_Nature_2_jxajgl.png"
)

Activity.create!(
  city: new_york,
  title: "Empire State Building",
  category: "Culture",
  address: "Empire State Building, 20 W 34th St., New York, NY 10001, United States",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686651185/SafeTravels%20app/Images/City%20images/NY%20activities/NY_activities_1_seyg3m.png"
)

Activity.create!(
  city: new_york,
  title: "American Museum of Natural History",
  category: "Culture",
  address: "American Museum of Natural History, 200 Central Park West, New York, NY 10024, United States",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686651185/SafeTravels%20app/Images/City%20images/NY%20activities/NY_activities_2_gjrcf4.png"
)

Activity.create!(
  city: new_york,
  title: "Central Park",
  category: "Culture",
  address: "New York, NY, United States",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686662936/SafeTravels%20app/Images/Category/Culture/NY_culture/NY_Culture_4_y9kk8t.png"
)

Activity.create!(
  city: new_york,
  title: "Museum of Ice Cream",
  category: "Art",
  address: "558 Broadway, New York, NY 10012, United States",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686663557/SafeTravels%20app/Images/Category/Art/NY_art/NY_Art_1_oyosma.png"
)

Activity.create!(
  city: new_york,
  title: "The Metropolitan Museum of Art",
  category: "Art",
  address: "1000 5th Ave, New York, NY 10028, United States",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686663557/SafeTravels%20app/Images/Category/Art/NY_art/NY_Art_2_ouenin.png"
)

Activity.create!(
  city: new_york,
  title: "MoMa Museum",
  category: "Art",
  address: "11w W 53rd St, New York, NY 10019, United States",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686663557/SafeTravels%20app/Images/Category/Art/NY_art/NY_Art_3_dwivho.png"
)

Activity.create!(
  city: new_york,
  title: "Black Iron Burger",
  category: "Food",
  address: "245 W 38th St, New York, NY 10018, United States",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686664510/SafeTravels%20app/Images/Category/Food/NY_food/NY_Food_1_n50whu.png"
)

Activity.create!(
  city: new_york,
  title: "Olive Garden",
  category: "Food",
  address: "2 Times Sq, New York, NY 10036, United States",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686664510/SafeTravels%20app/Images/Category/Food/NY_food/NY_Food_2_fhqikl.png"
)

Activity.create!(
  city: new_york,
  title: "Sweet Rehab",
  category: "Food",
  address: "135 Sullivan St, New York, NY 10012, United States",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686664510/SafeTravels%20app/Images/Category/Food/NY_food/NY_Food_3_befag5.png"
)

# PORTUGAL
Activity.create!(
  city: portugal,
  title: "Amarante camping",
  category: "Nature",
  address: "Rua Pedro Alvellos, sn, Largo Santa M.nha 56, 4600-099 Amarante, Portugal",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686667120/SafeTravels%20app/Images/Category/Nature/Amarante_nature/Amarante_nature_1_gpitqi.png"
)

Activity.create!(
  city: portugal,
  title: "Amarante Garden",
  category: "Nature",
  address: "4600-758 Amarante, Portugal",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686667217/SafeTravels%20app/Images/Category/Nature/Amarante_nature/Amarante_nature_2_xrfb9g.png"
)

Activity.create!(
  city: portugal,
  title: "Naturpassion",
  category: "Nature",
  address: "rua de campesinhos n27 Lomba, 4600-663 Amarante, Portugal",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686667120/SafeTravels%20app/Images/Category/Nature/Amarante_nature/Amarante_nature_3_re5lie.png"
)

Activity.create!(
  city: portugal,
  title: "Igreja do Carmo",
  category: "Culture",
  address: "R. do Carmo, 4050-164 Porto, Portugal",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686665600/SafeTravels%20app/Images/Category/Culture/Amarante_culture/Amarante_culture_1_wa6u5u.png"
)

Activity.create!(
  city: portugal,
  title: "Trilho das Azenhas",
  category: "Culture",
  address: "4600-758 Amarante, Portugal",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686665601/SafeTravels%20app/Images/Category/Culture/Amarante_culture/Amarante_culture_2_l66gzp.png"
)

Activity.create!(
  city: portugal,
  title: "Amarantrilhos Bikeshop",
  category: "Culture",
  address: "R. de Freitas Bloco C fração AB, 4600-081 Amarante, Portugal",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686665602/SafeTravels%20app/Images/Category/Culture/Amarante_culture/Amarante_culture_3_sxidc2.png"
)

Activity.create!(
  city: portugal,
  title: "Museu Paroquial de Arte Sacra de Amarante",
  category: "Art",
  address: "4600-758 Amarante, Portugal",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686666543/SafeTravels%20app/Images/Category/Art/Amarante_art/Amarante_art_1_oybib1.png"
)

Activity.create!(
  city: portugal,
  title: "Ponte do Arquinho",
  category: "Art",
  address: "Largo do Arquinho, 4600-758 Amarante, Portugal",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686666543/SafeTravels%20app/Images/Category/Art/Amarante_art/Amarante_art_2_gngdbg.png"
)

Activity.create!(
  city: portugal,
  title: "Municipal Museum Amadeo de Souza Cardoso",
  category: "Art",
  address: "4600-758 Amarante, Portugal",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686666542/SafeTravels%20app/Images/Category/Art/Amarante_art/Amarante_art_3_pvvnno.png"
)

Activity.create!(
  city: portugal,
  title: "O Prato",
  category: "Food",
  address: "Edf.Cimo de Vila,LJ CB, 4600-088 Amarante, Portugal",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686666995/SafeTravels%20app/Images/Category/Food/Amarante_food/Amarante_food_1_mrgfyv.png"
)

Activity.create!(
  city: portugal,
  title: "Restaurante Residencial ESTORIL",
  category: "Food",
  address: "R. 31 de Janeiro 150, 4600-043 Amarante, Portugal",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686666995/SafeTravels%20app/Images/Category/Food/Amarante_food/Amarante_food_2_gp18tl.png"
)

Activity.create!(
  city: portugal,
  title: "Bar do Girassol",
  category: "Food",
  address: "Av. Gen. Silveira 193, 4600-017 Amarante, Portugal",
  image_url: "https://res.cloudinary.com/doxaalafc/image/upload/v1686666995/SafeTravels%20app/Images/Category/Food/Amarante_food/Amarante_food_3_yntnbg.png"
)
