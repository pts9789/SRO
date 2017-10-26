# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ActiveRecord::Base.transaction do

p1 = Play.new({
  title: "Harry Potter and the Cursed Child- Parts I and II",
  type: "Play",
  year: 2018,
  status: "Coming Soon",
  theater_info: "Lyric Theater: 213 W. 42nd St.",
  critic_consesnsus: "The Show That Lived Up to Expectations — and Then Some… A captivating story given a spectacular staging and — Rowling’s specialty — a big, big heart…"})
file = File.open('app/assets/images/file_name.jpg')
p1.image = file
p1.save!

end
