# require "pry-byebug"

require "open-uri"


puts "Cleaning DB 🧹"
User.destroy_all
City.destroy_all
Activity.destroy_all

puts "Creating Users.."

  file = URI.open("https://res.cloudinary.com/doxaalafc/image/upload/v1686661594/SafeTravels%20app/Images/Profile%20images/esther_iyo78l.jpg")
  user1 = User.new(
  first_name: "Esther",
  last_name: "Mueni",
  email: "Esther@email.com",
  password: "123456",
  # photo: "https://res.cloudinary.com/doxaalafc/image/upload/v1686661594/SafeTravels%20app/Images/Profile%20images/esther_iyo78l.jpg",
  summary: "Esther Mueni was born on June 4, 1992, in Nairobi, Kenya. Growing up in a bustling city filled with diverse cultures and vibrant energy, Esther was inspired by the rich tapestry of her surroundings. From a young age, she demonstrated a strong sense of determination and a passion for making a difference in the lives of others.")
  user1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user1.save

  file = URI.open("https://res.cloudinary.com/doxaalafc/image/upload/v1686661594/SafeTravels%20app/Images/Profile%20images/ana_sfmt2l.jpg")
  user2 = User.new(
  first_name: "Ana",
  last_name: "Sa",
  email: "Ana@email.com",
  password: "123456",
  # photo: "https://res.cloudinary.com/doxaalafc/image/upload/v1686661594/SafeTravels%20app/Images/Profile%20images/ana_sfmt2l.jpg",
  summary: "Ana Sa was born on September 27, 1990, in a vibrant coastal city in Portugal. From a young age, Ana displayed a natural talent and passion for the arts. Growing up in a culturally rich environment, she was exposed to various forms of artistic expression, which fueled her creativity and ignited her desire to pursue a career in the arts.")
  user2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user2.save

  file = URI.open("https://res.cloudinary.com/doxaalafc/image/upload/v1686661594/SafeTravels%20app/Images/Profile%20images/dabin_jf4zmg.jpg")
  user3 = User.new(
  first_name: "Dabin",
  last_name: "Im",
  email: "dabin@email.com",
  password: "123456",
  # photo_attach: URI.open("https://res.cloudinary.com/doxaalafc/image/upload/v1686661594/SafeTravels%20app/Images/Profile%20images/dabin_jf4zmg.jpg"),
  summary: "Dabin Im, known by her stage name Dabin, was born on March 12, 1992, in Seoul, South Korea. From a young age, Dabin displayed a remarkable talent and passion for music. Growing up in a musically inclined family, she was exposed to various genres and instruments, which sparked her love for creating and performing music.")
  user3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user3.save

  file = URI.open("https://res.cloudinary.com/doxaalafc/image/upload/v1686661594/SafeTravels%20app/Images/Profile%20images/emily_b8u492.jpg?cache_busting_parameter")
  user4 = User.new(
  first_name: "Emily",
  last_name: "Yetsko",
  email: "Emily@email.com",
  password: "123456",
  # avatar: File.open(Rails.root.join('app', 'assets', 'images', 'emily.jpg')),
  summary: "Emily Yetsko was born on May 7, 1990, in the bustling city of New York. Raised in a vibrant and diverse community, From a young age, Emily exhibited a keen interest in technology and computers. She spent countless hours tinkering with gadgets, learning to code, and exploring the endless possibilities that the digital world had to offer.")
  user4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user4.save

  file = URI.open("https://res.cloudinary.com/doxaalafc/image/upload/v1686661594/SafeTravels%20app/Images/Profile%20images/emily_b8u492.jpg?cache_busting_parameter")
  user5 = User.new(
  first_name: "Agustina",
  last_name: "Rivas",
  email: "Agustin@email.com",
  password: "123456",
  summary: "Austin Rivas, hailing from the beautiful country of Argentina, was born on June 25, 1992, in the vibrant city of Buenos Aires. Growing up in a culturally rich environment, Austin developed a deep appreciation for music, art, and the diverse traditions of his homeland.")
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
