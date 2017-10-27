# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do

u1 = User.create!({email: "guest", username: "guest", password:"arizona"})

p1 = Play.new({
  title: "Harry Potter and the Cursed Child- Parts I and II",
  type: "Play",
  year: 2018,
  status: "Coming Soon",
  theater_info: "Lyric Theater: 213 W. 42nd St.",
  critic_consensus: ""})
p1.image = "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/hp_poster.jpg"
p1.save!

p2 = Play.new({
  title: "The Iceman Cometh",
  type: "Play",
  year: 2018,
  status: "Coming Soon",
  theater_info: "Bernard B. Jacobs Theater: 242 W. 45th St.",
  critic_consensus: ""})
p2.image = "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/timc_poster.jpg"
p2.save!

p3 = Play.new({
  title: "Children of a Lesser God",
  type: "Play",
  year: 2018,
  status: "Coming Soon",
  theater_info: "Studio 54: 254 W. 54th St.",
  critic_consensus: ""})
p3.image = "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/coalg_poster.jpg"
p3.save!

p4 = Play.new({
  title: "To Kill A Mockingbird",
  type: "Play",
  year: 2017,
  status: "Coming Soon",
  theater_info: "Theater Information Coming Soon!",
  critic_consensus: ""})
p4.image = "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/tkamb_poster.jpg"
p4.save!

p5 = Play.new({
  title: "Farinelli and the King",
  type: "Play",
  year: 2018,
  status: "Coming Soon",
  theater_info: "Belasco Theater: 111 W. 44th St.",
  critic_consensus: ""})
p5.image = "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/fatk_poster.jpg"
p5.save!

p6 = Play.new({
  title: "The Play That Goes Wrong",
  type: "Play",
  year: 2017,
  status: "Now Playing",
  theater_info: "Lyceum Theatre: 149 W. 45th St.",
  critic_consensus: "This is a planned demolition (and an exceedingly well-executed one at that)...We wonder how on earth the performers are going to sustain this level of lunacy. Remarkably, they do."})
p6.image = "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/tptgw_poster.jpg"
p6.save!

p7 = Play.new({
  title: "Time and the Conways",
  type: "Play",
  year: 2017,
  status: "Now Playing",
  theater_info: "American Airlines Theatre: 227 W. 42nd St.",
  critic_consensus: "Be patient with 'Time and the Conways,' because it takes a little while to get going. You will be happy you stuck around, though..."})
p7.image = "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/tatc.jpg"
p7.save!

p8 = Play.new({
  title: "M. Butterfly",
  type: "Play",
  year: 2017,
  status: "Now Playing",
  theater_info: "Cort Theatre: 138 W. 48th St.",
  critic_consensus: ""})
p8.image = "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/butterfly_poster.png"
p8.save!

p9 = Play.new({
  title: "Junk",
  type: "Play",
  year: 2017,
  status: "Now Playing",
  theater_info: "Vivian Beaumont Theater: 150 W. 65th St.",
  critic_consensus: ""})
p9.image = "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/junk_poster.jpg"
p9.save!

p10 = Play.new({
  title: "Meteor Shower",
  type: "Play",
  year: 2017,
  status: "Now Playing",
  theater_info: "Booth Theatre: 222 W. 45th St.",
  critic_consensus: ""})
p10.image = "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/meteor_poster.jpg"
p10.save!

p11 = Play.new({
  title: "Latin History For Morons",
  type: "Play",
  year: 2017,
  status: "Now Playing",
  theater_info: "Studio 54: 254 W. 54th St.",
  critic_consensus: "It's heartening to see that Leguizamo hasn't mellowed with middle age...The main takeaway from 'Latin History for Morons' is laughs, not learning..."})
p11.image = "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/lhfm_poster.jpg"
p11.save!

# --------------------------------------------------------------------------

m1 = Musical.new({
  title: "Mean Girls",
  type: "Musical",
  year: 2018,
  status: "Coming Soon",
  theater_info: "August Wilson Theatre: 245 W. 52nd St.",
  critic_consensus: ""})
file = File.open('app/assets/show_posters/mg_poster.jpg')
m1.image = file
m1.save!

m2 = Musical.new({
  title: "My Fair Lady",
  type: "Musical",
  year: 2018,
  status: "Coming Soon",
  theater_info: "Vivian Beaumont Theater: 150 W. 65th St.",
  critic_consensus: ""})
file = File.open('app/assets/show_posters/mfl_poster.jpg')
m2.image = file
m2.save!

m3 = Musical.new({
  title: "Carousel",
  type: "Musical",
  year: 2018,
  status: "Coming Soon",
  theater_info: "Imperial Theatre: 249 W. 45th St.",
  critic_consensus: ""})
file = File.open('app/assets/show_posters/carousel_poster.jpg')
m3.image = file
m3.save!

m4 = Musical.new({
  title: "Frozen",
  type: "Musical",
  year: 2018,
  status: "Coming Soon",
  theater_info: "St. James Theatre: 246 W. 44th St.",
  critic_consensus: ""})
file = File.open('app/assets/show_posters/frozen_poster.jpg')
m4.image = file
m4.save!

m5 = Musical.new({
  title: "SpongeBob SquarePants, The Broadway Musical",
  type: "Musical",
  year: 2017,
  status: "Coming Soon",
  theater_info: "Palace Theatre: 1564 Broadway",
  critic_consensus: ""})
file = File.open('app/assets/show_posters/sbsp_poster.jpg')
m5.image = file
m5.save!

m6 = Musical.new({
  title: "The Phantom of the Opera",
  type: "Musical",
  year: 1988,
  status: "Now Playing",
  theater_info: "Majestic Theatre: 245 W. 44th St.",
  critic_consensus: "The Phantom of Opera' not only looks as good as it did in 1988, but still holds the same thrills for audiences as the day it first bowed..."})
file = File.open('app/assets/show_posters/phantom_poster.jpg')
m6.image = file
m6.save!

m7 = Musical.new({
  title: "Chicago",
  type: "Musical",
  year: 1996,
  status: "Now Playing",
  theater_info: "Ambassador Theatre: 219 W. 49th St.",
  critic_consensus: "Chicago is as good now as it's ever been--a heartening experience, a life-affirming dedication to the magic and art of theatre, and something that absolutely should not be missed"})
file = File.open('app/assets/show_posters/chicago_poster.jpg')
m7.image = file
m7.save!

m8 = Musical.new({
  title: "The Lion King",
  type: "Musical",
  year: 1997,
  status: "Now Playing",
  theater_info: "Minskoff Theatre: 200 W. 45th St.",
  critic_consensus: "A stunning stage event. Combining a graceful horde of actors, singers and dancers with a stylized world of fantastic puppets and theatrical wonderment"})
file = File.open('app/assets/show_posters/tlk_poster.png')
m8.image = file
m8.save!

m9 = Musical.new({
  title: "Wicked",
  type: "Musical",
  year: 2003,
  status: "Now Playing",
  theater_info: "Gershwin Theatre: 222 W. 51st St.",
  critic_consensus: "In retrospect, Wicked seems an early sign of the cultural clout which is to say buying power of a generation of girls (and now women) whose desire to see, read, and sing along with stories about female empowerment has become a snowballing trend"})
file = File.open('app/assets/show_posters/wicked_poster.jpg')
m9.image = file
m9.save!

m10 = Musical.new({
  title: "The Book of Mormon",
  type: "Musical",
  year: 2011,
  status: "Now Playing",
  theater_info: "Eugene O'neill Theatre: 230 W. 49th St.",
  critic_consensus: "The sharp-edged book and fun score by Parker, Stone, and Lopez offer a screamingly funny yet sharply insightful full-length take on religion in general and Mormonism in particular."})
file = File.open('app/assets/show_posters/bom_poster.jpg')
m10.image = file
m10.save!

m11 = Musical.new({
  title: "Kinky Boots",
  type: "Musical",
  year: 2012,
  status: "Now Playing",
  theater_info: "Al Hirschfeld Theatre: 302 W. 45th St.",
  critic_consensus: "There are few things theatergoers love more than musicals about persistence and self-acceptance. And since Cyndi Lauper teamed up with book writer Harvey Fierstein, the man behind “La Cage aux Folles,” rahrah empowerment gushes out of the likable but heavy-handed show as if from a broken pipe."})
file = File.open('app/assets/show_posters/kb_poster.jpg')
m11.image = file
m11.save!

m12 = Musical.new({
  title: "Beautiful",
  type: "Musical",
  year: 2013,
  status: "Now Playing",
  theater_info: "Stephen Sondheim Theatre: 124 W. 43rd St.",
  critic_consensus: "Beautiful,” is beautifully performed and tuneful new entertainment.The story serves as an efficient delivery system for Carole King’s surprisingly diverse hits – not much more, nothing less."})
file = File.open('app/assets/show_posters/beautiful_poster.jpg')
m12.image = file
m12.save!

m13 = Musical.new({
  title: "Aladdin",
  type: "Musical",
  year: 2014,
  status: "Now Playing",
  theater_info: "New Amsterdam Theatre: 214 W. 42nd St.",
  critic_consensus: "Score Aladdin a considerable win for Disney, likely to fill the New Amsterdam with happy crowds for seasons to come."})
file = File.open('app/assets/show_posters/aladdin_poster.png')
m13.image = file
m13.save!

m14 = Musical.new({
  title: "Hamilton",
  type: "Musical",
  year: 2015,
  status: "Now Playing",
  theater_info: "Richard Rogers Theatre: 226 W. 46th St.",
  critic_consensus: "Yes, it's as incredible as everyone says....With his new musical, 'Hamilton,' Lin-Manuel Miranda has an eye on both. He's created a work sure to be enjoyed by generations to come, proudly drawing on America's past as a guiding light to the future."})
file = File.open('app/assets/show_posters/hamilton_poster.jpg')
m14.image = file
m14.save!

m15 = Musical.new({
  title: "School of Rock",
  type: "Musical",
  year: 2015,
  status: "Now Playing",
  theater_info: "Winter Garden Theatre: 1634 Broadway",
  critic_consensus: "It worked for the movie, and wow, does it work on Broadway, a double jolt of adrenaline and sugar to inspire the most helicoptered of tots to play hooky and go shred an ax."})
file = File.open('app/assets/show_posters/rock_poster.jpg')
m15.image = file
m15.save!

m16 = Musical.new({
  title: "Waitress",
  type: "Musical",
  year: 2016,
  status: "Now Playing",
  theater_info: "Brooks Atkinson Theatre: 256 W. 47th St.",
  critic_consensus: "Fresh and delicious, 'Waitress' has an excellent ratio of sweet to tart; supporting characters who provide crustiness and flakiness; and cooked-to-perfection staging."})
file = File.open('app/assets/show_posters/waitress_poster.jpg')
m16.image = file
m16.save!

m17 = Musical.new({
  title: "Cats",
  type: "Musical",
  year: 2016,
  status: "Now Playing",
  theater_info: "Neil Simon Theatre: 250 W. 52nd St.",
  critic_consensus: "A sweet and endearing revival...While not every role requires triple-threat expertise, 'Cats' makes some serious acting, singing and dancing demands on its company and Nunn's litter is packed with terrific performers"})
file = File.open('app/assets/show_posters/cats_poster.jpg')
m17.image = file
m17.save!

m18 = Musical.new({
  title: "Dear Evan Hansen",
  type: "Musical",
  year: 2016,
  status: "Now Playing",
  theater_info: "Music Box Theatre: 239 W. 45th St.",
  critic_consensus: "One of the strongest scores in years. The songs are not merely tuneful and funny and touching; Pasek and Paul can plumb the inner depths of their characters and rip through emotions in words and music."})
file = File.open('app/assets/show_posters/deh_poster.jpg')
m18.image = file
m18.save!

m19 = Musical.new({
  title: "Come From Away",
  type: "Musical",
  year: 2017,
  status: "Now Playing",
  theater_info: "Gerald Schoenfeld Theatre: 236 W. 45th St.",
  critic_consensus: "A big bearhug of a musical...Even the most stalwart cynics may have trouble staying dry-eyed during this portrait of heroic hospitality under extraordinary pressure..."})
file = File.open('app/assets/show_posters/cfa_poster.jpg')
m19.image = file
m19.save!

m20 = Musical.new({
  title: "Come From Away",
  type: "Musical",
  year: 2017,
  status: "Now Playing",
  theater_info: "Broadway Theatre: 1681 Broadway",
  critic_consensus: "Classy revitalization of an old, presumably boring property that proves to have plenty of life in it yet. The upscale revival should bring a tear to old-timers with romantic memories of the original schmaltzy score, while titillating newbies"})
file = File.open('app/assets/show_posters/saigon_poster.jpg')
m20.image = file
m20.save!

m21 = Musical.new({
  title: "Hello Dolly",
  type: "Musical",
  year: 2017,
  status: "Now Playing",
  theater_info: "Shubert Theatre: 225 W. 44th St.",
  critic_consensus: "Looks so fresh, you want to pinch its cheek...Helmer Jerry Zaks and choreographer Warren Carlyle have done a great restoration job on the old girl, while refraining from the urge to tart her up for modern tastes…"})
file = File.open('app/assets/show_posters/dolly_poster.jpg')
m21.image = file
m21.save!

m22 = Musical.new({
  title: "Charlie and the Chocolate Factory",
  type: "Musical",
  year: 2017,
  status: "Now Playing",
  theater_info: "Lunt-Fontanne Theatre: 205 W. 46th St.",
  critic_consensus: "Incorporating songs from the film, it seems to present itself as earnest entertainment for children and nostalgic adults. Grieg's caustic book and Shaiman and Wittman's pastiche score, on the other hand, feels like a beast with much sharper talons."})
file = File.open('app/assets/show_posters/charlie_poster.jpg')
m22.image = file
m22.save!

m23 = Musical.new({
  title: "Anastasia",
  type: "Musical",
  year: 2017,
  status: "Now Playing",
  theater_info: "Broadhurst Theatre: 235 W. 44th St.",
  critic_consensus: "Undeniably entertaining, but also relevant to the magical thinking that seems to have overtaken so much of the world."})
file = File.open('app/assets/show_posters/ana_poster.jpg')
m23.image = file
m23.save!

end
