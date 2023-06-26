# require "pry-byebug"

require "open-uri"

puts "Cleaning DB 🧹"
ItActivity.destroy_all
Itinerary.destroy_all
Activity.destroy_all
City.destroy_all
Message.destroy_all
Chatroom.destroy_all
User.destroy_all

puts "Creating Users.."

  file = URI.open("https://res.cloudinary.com/dwpf3efis/image/upload/v1687511369/esther_hhplt1.jpg")
  user1 = User.new(
  first_name: "Esther",
  last_name: "Mueni",
  email: "Esther@email.com",
  password: "123456",
  summary: "Hi, I'm from Nairobi, Kenya. I grew up in a city filled with diverse cultures and vibrant energy. I am currently studying at Le Wagon bootcamp to become a developer. I love to be inspired by my surroundings and the people I love. I have passion to make a difference in the lives of others.")
  user1.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  user1.save

  # file = URI.open("https://res.cloudinary.com/doxaalafc/image/upload/v1686661594/SafeTravels%20app/Images/Profile%20images/ana_sfmt2l.jpg")
  # user2 = User.new(
  # first_name: "Ana",
  # last_name: "Sa",
  # email: "Ana@email.com",
  # password: "123456",
  # summary: "Hi, I'm from a vibrant coastal city in Portugal. I have great passion for arts and music. I love to express creativity and will continue to pursue in arts.")
  # user2.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  # user2.save

  file = URI.open("https://res.cloudinary.com/dwpf3efis/image/upload/v1687511368/dabin_otlecv.jpg")
  user3 = User.new(
  first_name: "Dabin",
  last_name: "Im",
  email: "dabin@email.com",
  password: "123456",
  summary: "Hi, I'm from Seoul, South Korea. I grew up in India and California. I have passion for design and food. I love exploring the world with people who spark joy and positive energy.")
  user3.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  user3.save

  file = URI.open("https://res.cloudinary.com/dwpf3efis/image/upload/v1687511369/emily_wtqcsh.jpg")
  user4 = User.new(
  first_name: "Emily",
  last_name: "Yetsko",
  email: "Emily@email.com",
  password: "123456",
  summary: "Hi, I'm from the bustling city of New York. Raised in a vibrant and diverse community. I am always keen to learn technology and computers. I love to geek out and learn to code, and explore the endless possibilities that the digital world has to offer.")
  user4.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  user4.save

  file = URI.open("https://res.cloudinary.com/dwpf3efis/image/upload/v1687511370/pamela_b41pqz.jpg")
  user6 = User.new(
  first_name: "Pamela",
  last_name: "Aguiar Hartwig",
  email: "Pamela@email.com",
  password: "123456",
  summary: "Hi, I'm from Brazil. Before I became a supermom, I used to work for a big fashion industry. When I have the time, I love to explore the world, different cultures, and to be inspired.")
  user6.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  user6.save

  file = URI.open("https://res.cloudinary.com/dwpf3efis/image/upload/v1687511369/joanna_vzt3dy.jpg")
  user7 = User.new(
  first_name: "Joanna",
  last_name: "Wójtowicz",
  email: "Joanna@email.com",
  password: "123456",
  summary: "Hi, I'm from Poland. I love pottery! It captivates my craftsmanship. I create unique pieces from clay. Pottery is my main creative outlet, it allows me to express beauty into the world through my creations.")
  user7.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  user7.save

  file = URI.open("https://res.cloudinary.com/dwpf3efis/image/upload/v1687511370/marina_xqvup2.jpg")
  user8 = User.new(
  first_name: "Marina",
  last_name: "Stepanova",
  email: "Marina@email.com",
  password: "123456",
  summary: "Hi, I love to collaborate with beautiful people. I thrive in team environments, value the power of collective creativity and shared goals. This is why I love to travel with people I meet all over the world. I love to bring people together, create a supportive atmosphere where everyone's ideas are valued.")
  user8.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  user8.save

  file = URI.open("https://res.cloudinary.com/dwpf3efis/image/upload/v1687511369/estibaliz_x6ufpf.jpg")
  user9 = User.new(
  first_name: "Estibaliz",
  last_name: "Lorenzo",
  email: "Estibaliz@email.com",
  password: "123456",
  summary: "Hi, love to teach and bring creativity and innovation to the class. I incorporate interactive and hands-on activities to foster a dynamic learning environment, where students can actively participate and apply what they have learned. By creating stimulating lesson plans and utilizing modern educational tools, it sparks curiosity and enthusiasm among my students.")
  user9.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  user9.save

  file = URI.open("https://res.cloudinary.com/dwpf3efis/image/upload/v1687511369/katharine_sa69ed.jpg")
  user10 = User.new(
  first_name: "Katharine",
  last_name: "Lin",
  email: "Katharine@email.com",
  password: "123456",
  summary: "Hi, I have a deep bond with my furry companion, Henry. He is a lovable dog. Together, we embark on adventures, create memories, and bring joy to each other's lives. He is the best travel buddy.")
  user10.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  user10.save

  file = URI.open("https://res.cloudinary.com/dwpf3efis/image/upload/v1687511367/charlotte_x2kqc6.jpg")
  user11 = User.new(
  first_name: "Charlotte",
  last_name: "de Janzé",
  email: "Charlotte@email.com",
  password: "123456",
  summary: "Hi, I love to do self-discovery, and make a difference. I am compassionate and love nature. I hear a lot that my presence brings joy to people. I genuinely desire to make the world a better place.")
  user11.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  user11.save

  file = URI.open("https://res.cloudinary.com/dwpf3efis/image/upload/v1687511368/emma_bzcbnb.jpg")
  user12 = User.new(
  first_name: "Emma",
  last_name: "Anna Agneta Rünzel",
  email: "Emma@email.com",
  password: "123456",
  summary: "Hi, I love to teach at coding at Le Wagon bootcamp. With my expertise and passion for empowering others through technology, I play a vital role in shaping the future of aspiring developers. I love my students at batch #1217!")
  user12.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  user12.save

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
  image_url_one: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511374/Activities_1_Berlin_Germany_jjjalb.jpg",
  image_url_two: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511374/Activities_2_Berlin_Germany_o1fgbj.jpg",
  image_url_three: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511374/image_4_nkm5cm.jpg",
  latitude: 13.381777,
  longitude: 52.531677,
  address: "Mohrenstrasse 37, 10117 Berlin",
  safety_rating: 2
)

new_york = City.create!(
  name: "New York City",
  country: "US",
  image_url_one: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511408/Activities_1_NY_City_clm2v4.jpg",
  image_url_two: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511408/Activities_3_NY_City_y8u3qj.jpg",
  image_url_three: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511408/Activities_2_NY_City_vzejr1.jpg",
  latitude: 13.381777, longitude: 52.531677, address: "Times Square, NY",
  safety_rating: 2
)

mexico_city = City.create!(
  name: "Mexico City",
  country: "Mexico",
  image_url_one: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511373/City_Mexico_City_vinjhi.jpg",
  image_url_two: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511377/Mexico_activities_1_ai0rqy.jpg",
  image_url_three: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511377/Mexico_activities_3_gv38ga.jpg",
  latitude: 13.381777, longitude: 52.531677, address: "Mexico City, Mexico",
  safety_rating: 3
)

City.create!(
  name: "Toronto",
  country: "Canada",
  image_url_one: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511410/Activities_1_Toronto_Canada_ynuos9.jpg",
  image_url_two: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511410/Activities_2_Toronto_Canada_u8cswu.jpg",
  image_url_three: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511410/Activities_3_Toronto_Canada_hpw3uu.jpg",
  latitude: 13.381777, longitude: 52.531677, address: "Avenue Road, 1008. Toronto ON",
  safety_rating: 1
)

City.create!(
  name: "Tokyo",
  country: "Japan",
  image_url_one: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511409/Activities_1_Tokyo_Japan_ajt7t7.jpg",
  image_url_two: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511409/Activities_2_Tokyo_Japan_nmylzc.jpg",
  image_url_three: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511409/Activities_3_Tokyo_Japan_tcq1jq.jpg",
  latitude: 13.381777, longitude: 52.531677, address: "Tokyo, Japan",
  safety_rating: 1
)

City.create!(
  name: "London",
  country: "UK",
  image_url_one: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511376/Activities_2_London_UK_u7vklj.jpg",
  image_url_two: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511376/Activities_3_London_UK_cteru5.jpg",
  image_url_three: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511376/Activities_1_London_UK_o4nzfk.jpg",
  latitude: 13.381777, longitude: 52.531677, address: "London SW1A 1AA, United Kingdom",
  safety_rating: 2
)

City.create!(
  name: "Paris",
  country: "France",
  image_url_one: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511409/Activities_1_Paris_France_nperzo.jpg",
  image_url_two: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511409/Activities_2_Paris_France_vs3m3r.jpg",
  image_url_three: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511409/Activities_3_Paris_France_yien2g.jpg",
  latitude: 13.381777, longitude: 52.531677, address: "Champ de Mars, 5 Av. Anatole France, 75007 Paris",
  safety_rating: 2
)

City.create!(
  name: "Florence",
  country: "Italy",
  image_url_one: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511375/Activities_1_Florence_Italy_r9qbs9.jpg",
  image_url_two: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511376/Activities_3_Florence_Italy_ernvxt.jpg",
  image_url_three: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511376/Activities_2_Florence_Italy_kplww8.jpg",
  latitude: 13.381777, longitude: 52.531677, address: "Via de Tornabuoni, Florence, Italy",
  safety_rating: 2
)

City.create!(
  name: "Nakuru",
  country: "Kenya",
  image_url_one: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511373/City_Nakuru_Kenya_ebo2zi.jpg",
  image_url_two: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511381/Activities_2_Nakuru_Kenya_gwxosb.jpg",
  image_url_three: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511381/Activities_2_Nakuru_Kenya-1_axsw1w.jpg",
  address: "Nakuru, Kenya",
  safety_rating: 2
)

amarante = City.create!(
  name: "Amarante",
  country: "Portugal",
  image_url_one: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511372/City_Amarante_Portugal_y3bi9t.jpg",
  image_url_two: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511369/Activities_3_Amarante_Portugal_aclnpr.jpg",
  image_url_three: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511369/Activities_2_Amarante_Portugal_v1d2ub.jpg",
  # address: "Largo de São Gonçalo 3, 4600-038 Amarante",
  address: "Amarante, Portugal",
  safety_rating: 1
)

moscow = City.create!(
  name: "Moscow",
  country: "Russia",
  image_url_one: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511373/City_Moscow_Russia_uloepp.jpg",
  image_url_two: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511379/Moscow_culture_2_h9lbr2.jpg",
  image_url_three: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511379/Moscow_culture_3_yxixu8.jpg",
  address: "Moscow, Russia",
  safety_rating: 4
)

puts "Creating Activities.."

# 3 for each category: Nature, Culture, Art, Food
# BERLIN
Activity.create!(
  city: berlin,
  title: "Tiefwerder Wiesen",
  category: "Nature",
  address: "13597 Berlin",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511375/Berlin_Nature_1_q9jxx1.jpg"
)

Activity.create!(
  city: berlin,
  title: "Nature Park Schöneberger Südgelände",
  category: "Nature",
  address: "Prellerweg 47-49, 12157 Berlin",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511375/Berlin_Nature_3_xvpq6m.jpg"
)

Activity.create!(
  city: berlin,
  title: "Landschaftspark Wuhletal",
  category: "Nature",
  address: "Alt-Biesdorf 46, 12683 Berlin",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511375/Berlin_Nature_2_b50lng.jpg"
)

Activity.create!(
  city: berlin,
  title: "Brandenburg Gate",
  category: "Culture",
  address: "Brandenburger Tor, 10117 Berlin",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511372/Berlin_activities_1_tj9syb.jpg"
)

Activity.create!(
  city: berlin,
  title: "Reichstag Building",
  category: "Culture",
  address: "Reichstag Building, Platz der Republik 1, 11011 Berlin",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511373/image_5_gjgk4l.jpg"
)
Activity.create!(
  city: berlin,
  title: "Berlin Cathedral",
  category: "Culture",
  address: "Am Lustgarten, 10178 Berlin",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511372/image_5-1_lbfrql.jpg"
)

Activity.create!(
  city: berlin,
  title: "East Side Gallery",
  category: "Art",
  address: "East Side Gallery, Mühlenstraße 3-100, 10243 Berlin",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511372/Berlin_activities_3_zodsrp.jpg"
)

Activity.create!(
  city: berlin,
  title: "Pergamonmuseum",
  category: "Art",
  address: "Bodestraße 1-3, 10178 Berlin",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511373/Berlin_Art_1_k88oqx.jpg"
)

Activity.create!(
  city: berlin,
  title: "Dark Matter",
  category: "Art",
  address: "Köpenicker Ch 46, 10317 Berlin",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511373/Berlin_Art_3_lwp0rw.jpg"
)

Activity.create!(
  city: berlin,
  title: "Curry 36",
  category: "Food",
  address: "Mehringdamm 36, 10961 Berlin",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511375/Berlin_Food_1_tyioi3.jpg"
)

Activity.create!(
  city: berlin,
  title: "Berliner Fernsehturm",
  category: "Food",
  address: "Panoramastraße 1A, 10178 Berlin",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511372/City_Berlin_Germany_idkf8v.jpg"
)

Activity.create!(
  city: berlin,
  title: "BRLO Brwhouse",
  category: "Food",
  address: "Schöneberger Str. 16, 10963 Berlin",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511375/Berlin_Food_3_mryiyt.jpg"
)

# NEW YORK
Activity.create!(
  city: new_york,
  title: "Central Park",
  category: "Nature",
  address: "Central Park West, New York, NY, USA",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511409/NY_Nature_3_guytnr.jpg"
)

Activity.create!(
  city: new_york,
  title: "Hallett Nature Sanctuary",
  category: "Nature",
  address: "6th Avenue &, Central Park S, New York, NY 10019, United States",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511408/NY_Nature_1_kwrjbo.jpg"
)

Activity.create!(
  city: new_york,
  title: "Mill Rock Park",
  category: "Nature",
  address: "East River, New York, NY 10128, United States",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511409/NY_Nature_2_gqurxk.jpg"
)

Activity.create!(
  city: new_york,
  title: "Empire State Building",
  category: "Culture",
  address: "Empire State Building, 20 W 34th St., New York, NY 10001, United States",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511382/NY_activities_1_apulrf.jpg"
)

Activity.create!(
  city: new_york,
  title: "American Museum of Natural History",
  category: "Culture",
  address: "American Museum of Natural History, 200 Central Park West, New York, NY 10024, United States",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511382/NY_activities_2_m9ov4f.jpg"
)

Activity.create!(
  city: new_york,
  title: "Central Park",
  category: "Culture",
  address: "New York, NY, United States",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511407/NY_Culture_4_fmwh3j.jpg"
)

Activity.create!(
  city: new_york,
  title: "Museum of Ice Cream",
  category: "Art",
  address: "558 Broadway, New York, NY 10012, United States",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511407/NY_Art_1_lps66e.jpg"
)

Activity.create!(
  city: new_york,
  title: "The Metropolitan Museum of Art",
  category: "Art",
  address: "1000 5th Ave, New York, NY 10028, United States",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511407/NY_Art_2_wt7epw.jpg"
)

Activity.create!(
  city: new_york,
  title: "MoMa Museum",
  category: "Art",
  address: "11w W 53rd St, New York, NY 10019, United States",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511407/NY_Art_3_zhrm87.jpg"
)

Activity.create!(
  city: new_york,
  title: "Black Iron Burger",
  category: "Food",
  address: "245 W 38th St, New York, NY 10018, United States",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511408/NY_Food_1_nhtyqv.jpg"
)

Activity.create!(
  city: new_york,
  title: "Olive Garden",
  category: "Food",
  address: "2 Times Sq, New York, NY 10036, United States",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511408/NY_Food_2_racsh6.jpg"
)

Activity.create!(
  city: new_york,
  title: "Sweet Rehab",
  category: "Food",
  address: "135 Sullivan St, New York, NY 10012, United States",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511408/NY_Food_3_yqx2cm.jpg"
)

Activity.create!(
  city: mexico_city,
  title: "We Fly Teotihuacan",
  category: "Culture",
  address: "Carretera Federal México-Tulancingo Km 28.0, 55850 San Martín Centro, Méx., Mexico",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511377/Mexico_activities_1_ai0rqy.jpg"
)

Activity.create!(
  city: mexico_city,
  title: "Teotihuacan (Pyramid of the Sun)",
  category: "Culture",
  address: "55800 San Juan Teotihuacán, State of Mexico, Mexico",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511377/Mexico_activities_2_pqrtf0.jpg"
)

Activity.create!(
  city: mexico_city,
  title: "Frida Kahlo Museum",
  category: "Culture",
  address: "Londres 247, Del Carmen, Coyoacán, 04100 Ciudad de México, CDMX, Mexico",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511377/Mexico_activities_3-1_i1yfsq.jpg"
)

Activity.create!(
  city: mexico_city,
  title: "Parque Nacional Iztaccíhuatl - Popocatépetl",
  category: "Nature",
  address: "Pl. de la Constitucion 9, Centro, 56900 Amecameca de Juárez, Méx., Mexico",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511379/Mexico_nature_1_xpncnb.jpg"
)

Activity.create!(
  city: mexico_city,
  title: "Parque Nacional Cañón del Sumidero",
  category: "Nature",
  address: "Chiapas, Mexico",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511379/Mexico_nature_2_l5sk1e.jpg"
)

Activity.create!(
  city: mexico_city,
  title: "Parque Nacional Lagunas de Montebello",
  category: "Nature",
  address: "30167 Laguna de Montebello, Chiapas, Mexico",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511379/Mexico_nature_3_qxplx8.jpg"
)

Activity.create!(
  city: mexico_city,
  title: "Museo Soumaya",
  category: "Art",
  address: "Blvd. Miguel de Cervantes Saavedra, Granada, Miguel Hidalgo, 11529 Ciudad de México, CDMX, Mexico",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511377/Mexico_art_1_kd3qca.jpg"
)

Activity.create!(
  city: mexico_city,
  title: "Museo Nacional de Antropología",
  category: "Art",
  address: "Av. P.º de la Reforma s/n, Polanco, Bosque de Chapultepec I Secc, Miguel Hidalgo, 11560 Ciudad de México, CDMX, Mexico",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511377/Mexico_art_2_ogrxbo.jpg"
)

Activity.create!(
  city: mexico_city,
  title: "Palacio de Bellas Artes",
  category: "Art",
  address: "Av. Juárez S/N, Centro Histórico de la Cdad. de México, Centro, Cuauhtémoc, 06050 Ciudad de México, CDMX, Mexico",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511377/Mexico_art_3_elap8r.jpg"
)

Activity.create!(
  city: mexico_city,
  title: "Páramo",
  category: "Food",
  address: "Av. Yucatan 84, Roma Nte., Cuauhtémoc, 06700 Ciudad de México, CDMX, Mexico",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511378/Mexico_food_1_itttws.jpg"
)

Activity.create!(
  city: mexico_city,
  title: "El Cardenal",
  category: "Food",
  address: "C. de la Palma 23, Centro Histórico de la Cdad. de México, Centro, Cuauhtémoc, 06000 Ciudad de México, CDMX, Mexico",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511378/Mexico_food_2_v39fcd.jpg"
)

Activity.create!(
  city: mexico_city,
  title: "Tacos El Huequito",
  category: "Food",
  address: "Ayuntamiento 21, Colonia Centro, Centro, Cuauhtémoc, 06050 Ciudad de México, CDMX, Mexico",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511378/Mexico_food_3_lvrflz.jpg"
)

# PORTUGAL
Activity.create!(
  city: amarante,
  title: "Amarante Garden",
  category: "Nature",
  address: "4600-758 Amarante, Portugal",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511371/Amarante_nature_2_jsx1kr.jpg"
)

Activity.create!(
  city: amarante,
  title: "Naturpassion",
  category: "Nature",
  address: "rua de campesinhos n27 Lomba, 4600-663 Amarante, Portugal",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511371/Amarante_nature_3_h8kdo6.jpg"
)

Activity.create!(
  city: amarante,
  title: "Igreja do Carmo",
  category: "Culture",
  address: "R. do Carmo, 4050-164 Porto, Portugal",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511368/Amarante_culture_1_s7fyvu.jpg"
)

Activity.create!(
  city: amarante,
  title: "Trilho das Azenhas",
  category: "Culture",
  address: "4600-758 Amarante, Portugal",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511368/Amarante_culture_2_ore3pr.jpg"
)

Activity.create!(
  city: amarante,
  title: "Amarantrilhos Bikeshop",
  category: "Culture",
  address: "R. de Freitas Bloco C fração AB, 4600-081 Amarante, Portugal",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511368/Amarante_culture_3_m5w2l7.jpg"
)

Activity.create!(
  city: amarante,
  title: "Museu Paroquial de Arte Sacra de Amarante",
  category: "Art",
  address: "4600-758 Amarante, Portugal",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511368/Amarante_art_1_vezex6.jpg"
)

Activity.create!(
  city: amarante,
  title: "Ponte do Arquinho",
  category: "Art",
  address: "Largo do Arquinho, 4600-758 Amarante, Portugal",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511368/Amarante_art_2_jtsw3y.jpg"
)

Activity.create!(
  city: amarante,
  title: "Municipal Museum Amadeo de Souza Cardoso",
  category: "Art",
  address: "4600-758 Amarante, Portugal",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511368/Amarante_art_3_ptajyj.jpg"
)

Activity.create!(
  city: amarante,
  title: "O Prato",
  category: "Food",
  address: "Edf.Cimo de Vila,LJ CB, 4600-088 Amarante, Portugal",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511370/Amarante_food_1_tsx7ag.jpg"
)

Activity.create!(
  city: amarante,
  title: "Restaurante Residencial ESTORIL",
  category: "Food",
  address: "R. 31 de Janeiro 150, 4600-043 Amarante, Portugal",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511370/Amarante_food_2_ctscom.jpg"
)

Activity.create!(
  city: amarante,
  title: "Bar do Girassol",
  category: "Food",
  address: "Av. Gen. Silveira 193, 4600-017 Amarante, Portugal",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511371/Amarante_food_3_azmbfp.jpg"
)

# MOSCOW, RUSSIA
Activity.create!(
  city: moscow,
  title: "Kolomenskoye",
  category: "Culture",
  address: "Andropova Ave, 39, Moscow, Russia, 115487",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511379/Moscow_culture_1_zdptxr.jpg"
)

Activity.create!(
  city: moscow,
  title: "Bolshoi Theatre",
  category: "Culture",
  address: "Theatre Square, 1, Moscow, Russia, 125009",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511379/Moscow_culture_2_h9lbr2.jpg"
)

Activity.create!(
  city: moscow,
  title: "Armoury Chamber",
  category: "Culture",
  address: "Moscow, Russia, 103132",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511380/Activities_Moscow_3_lcmigs.jpg"
)

Activity.create!(
  city: moscow,
  title: "Red Pond",
  category: "Nature",
  address: "Glavnaya Alleya, Moscow, Russia, 111123",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511381/image_3_jm9sh2.jpg"
)

Activity.create!(
  city: moscow,
  title: 'Nature Reserve "Valley Setun River"',
  category: "Nature",
  address: "Glavnaya Alleya, Moscow, Russia, 111123",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511381/Moscow_nature_2_i9lxgd.jpg"
)

Activity.create!(
  city: moscow,
  title: "Kosinski Nature and History Park",
  category: "Nature",
  address: "ул. Медведева, Moscow, Russia, 111675",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511381/Moscow_nature_3_mfjmpn.jpg"
)

Activity.create!(
  city: moscow,
  title: "Center for the Arts. Moscow.",
  category: "Art",
  address: "Ulitsa Volkhonka, 15, Moscow, Russia, 119019",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511379/Moscow_art_1_eencep.jpg"
)

Activity.create!(
  city: moscow,
  title: "Zverevsky Center for Contemporary Art",
  category: "Art",
  address: "строение 4, Novoryazanskaya Ulitsa, 29 строение 4, Moscow, Russia, 105066",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511379/Moscow_art_2_bmudkz.jpg"
)

Activity.create!(
  city: moscow,
  title: "Russian Art Museum",
  category: "Art",
  address: "Tokmakov Pereulok, 21/2с1, Moscow, Russia, 105066",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511380/Moscow_art_3_rtgkrs.jpg"
)

Activity.create!(
  city: moscow,
  title: "Taras Bulba",
  category: "Food",
  address: "Mokhovaya St, 8с1, Moscow, Russia, 119019",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511381/Moscow_food_1_pja4ku.jpg"
)

Activity.create!(
  city: moscow,
  title: "Cheburechnaya USSR",
  category: "Food",
  address: "Bol'shaya Bronnaya Ulitsa, 27/4с1, Moscow, Russia, 123104",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511380/Moscow_food_1-1_xzdslm.jpg"
)

Activity.create!(
  city: moscow,
  title: "Expedition. Northern Cuisine",
  category: "Food",
  address: "Pevcheskiy Pereulok, 6, Moscow, Russia, 109028",
  image_url: "https://res.cloudinary.com/dwpf3efis/image/upload/v1687511380/image_3_qhw2ml.jpg"
)
