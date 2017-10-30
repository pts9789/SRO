# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do

User.destroy_all
Show.destroy_all

u1= User.create!({email:"guest", username:"guest", password:"arizona"})
u2= User.create!({email:"patrick", username:"patrick", password:"arizona"})

p1 = Play.create!({
  title: "Harry Potter and the Cursed Child- Parts I and II",
  type: "Play",
  year: 2018,
  status: "Coming Soon",
  theater_info: "Lyric Theater: 213 W. 42nd St.",
  critic_consensus: "",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/hp_poster.jpg" })

p2 = Play.create!({
  title: "The Iceman Cometh",
  type: "Play",
  year: 2018,
  status: "Coming Soon",
  theater_info: "Bernard B. Jacobs Theater: 242 W. 45th St.",
  critic_consensus: "",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/timc_poster.jpg"})


p3 = Play.create!({
  title: "Children of a Lesser God",
  type: "Play",
  year: 2018,
  status: "Coming Soon",
  theater_info: "Studio 54: 254 W. 54th St.",
  critic_consensus: "",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/coalg_poster.jpg"})


p4 = Play.create!({
  title: "To Kill A Mockingbird",
  type: "Play",
  year: 2017,
  status: "Coming Soon",
  theater_info: "Theater Information Coming Soon!",
  critic_consensus: "",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/tkamb_poster.jpg"})


p5 = Play.create!({
  title: "Farinelli and the King",
  type: "Play",
  year: 2018,
  status: "Coming Soon",
  theater_info: "Belasco Theater: 111 W. 44th St.",
  critic_consensus: "",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/fatk_poster.jpg"})

p6 = Play.create!({
  title: "The Play That Goes Wrong",
  type: "Play",
  year: 2017,
  status: "Now Playing",
  theater_info: "Lyceum Theatre: 149 W. 45th St.",
  critic_consensus: "This is a planned demolition (and an exceedingly well-executed one at that)...We wonder how on earth the performers are going to sustain this level of lunacy. Remarkably, they do.",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/tptgw_poster.jpg"})


p7 = Play.create!({
  title: "Time and the Conways",
  type: "Play",
  year: 2017,
  status: "Now Playing",
  theater_info: "American Airlines Theatre: 227 W. 42nd St.",
  critic_consensus: "Be patient with 'Time and the Conways,' because it takes a little while to get going. You will be happy you stuck around, though...",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/tatc.jpg"})

p8 = Play.create!({
  title: "M. Butterfly",
  type: "Play",
  year: 2017,
  status: "Now Playing",
  theater_info: "Cort Theatre: 138 W. 48th St.",
  critic_consensus: "",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/butterfly_poster.png"})


p9 = Play.create!({
  title: "Junk",
  type: "Play",
  year: 2017,
  status: "Now Playing",
  theater_info: "Vivian Beaumont Theater: 150 W. 65th St.",
  critic_consensus: "",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/junk_poster.jpg"})


p10 = Play.create!({
  title: "Meteor Shower",
  type: "Play",
  year: 2017,
  status: "Now Playing",
  theater_info: "Booth Theatre: 222 W. 45th St.",
  critic_consensus: "",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/meteor_poster.jpg"})


p11 = Play.create!({
  title: "Latin History For Morons",
  type: "Play",
  year: 2017,
  status: "Now Playing",
  theater_info: "Studio 54: 254 W. 54th St.",
  critic_consensus: "It's heartening to see that Leguizamo hasn't mellowed with middle age...The main takeaway from 'Latin History for Morons' is laughs, not learning...",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/morons_poster.jpg"})


# --------------------------------------------------------------------------

m1 = Musical.create({
  title: "Mean Girls",
  type: "Musical",
  year: 2018,
  status: "Coming Soon",
  theater_info: "August Wilson Theatre: 245 W. 52nd St.",
  critic_consensus: "",
  image: 'https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/mg_poster.jpg'})


m2 = Musical.create!({
  title: "My Fair Lady",
  type: "Musical",
  year: 2018,
  status: "Coming Soon",
  theater_info: "Vivian Beaumont Theater: 150 W. 65th St.",
  critic_consensus: "",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/mfl_poster.jpg"})


m3 = Musical.create!({
  title: "Carousel",
  type: "Musical",
  year: 2018,
  status: "Coming Soon",
  theater_info: "Imperial Theatre: 249 W. 45th St.",
  critic_consensus: "",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/carousel_poster.jpg"})

m4 = Musical.create!({
  title: "Frozen",
  type: "Musical",
  year: 2018,
  status: "Coming Soon",
  theater_info: "St. James Theatre: 246 W. 44th St.",
  critic_consensus: "",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/frozen_poster.jpg"})


m5 = Musical.create!({
  title: "SpongeBob SquarePants, The Broadway Musical",
  type: "Musical",
  year: 2017,
  status: "Coming Soon",
  theater_info: "Palace Theatre: 1564 Broadway",
  critic_consensus: "",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/sbsp_poster.jpg"})

m6 = Musical.create!({
  title: "The Phantom of the Opera",
  type: "Musical",
  year: 1988,
  status: "Now Playing",
  theater_info: "Majestic Theatre: 245 W. 44th St.",
  critic_consensus: "The Phantom of Opera' not only looks as good as it did in 1988, but still holds the same thrills for audiences as the day it first bowed...",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/phantom_poster.jpg"})

m7 = Musical.create!({
  title: "Chicago",
  type: "Musical",
  year: 1996,
  status: "Now Playing",
  theater_info: "Ambassador Theatre: 219 W. 49th St.",
  critic_consensus: "Chicago is as good now as it's ever been--a heartening experience, a life-affirming dedication to the magic and art of theatre, and something that absolutely should not be missed",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/chicago_poster.jpg"})


m8 = Musical.create!({
  title: "The Lion King",
  type: "Musical",
  year: 1997,
  status: "Now Playing",
  theater_info: "Minskoff Theatre: 200 W. 45th St.",
  critic_consensus: "A stunning stage event. Combining a graceful horde of actors, singers and dancers with a stylized world of fantastic puppets and theatrical wonderment",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/tlk_poster.png"})

m9 = Musical.create!({
  title: "Wicked",
  type: "Musical",
  year: 2003,
  status: "Now Playing",
  theater_info: "Gershwin Theatre: 222 W. 51st St.",
  critic_consensus: "In retrospect, Wicked seems an early sign of the cultural clout which is to say buying power of a generation of girls (and now women) whose desire to see, read, and sing along with stories about female empowerment has become a snowballing trend",
  image:"https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/wicked_poster.jpg"})


m10 = Musical.create!({
  title: "The Book of Mormon",
  type: "Musical",
  year: 2011,
  status: "Now Playing",
  theater_info: "Eugene O'neill Theatre: 230 W. 49th St.",
  critic_consensus: "The sharp-edged book and fun score by Parker, Stone, and Lopez offer a screamingly funny yet sharply insightful full-length take on religion in general and Mormonism in particular.",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/bom_poster.jpg"})


m11 = Musical.create!({
  title: "Kinky Boots",
  type: "Musical",
  year: 2012,
  status: "Now Playing",
  theater_info: "Al Hirschfeld Theatre: 302 W. 45th St.",
  critic_consensus: "There are few things theatergoers love more than musicals about persistence and self-acceptance. And since Cyndi Lauper teamed up with book writer Harvey Fierstein, the man behind “La Cage aux Folles,” rahrah empowerment gushes out of the likable but heavy-handed show as if from a broken pipe.",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/kinky_poster.jpg"})


m12 = Musical.create!({
  title: "Beautiful",
  type: "Musical",
  year: 2013,
  status: "Now Playing",
  theater_info: "Stephen Sondheim Theatre: 124 W. 43rd St.",
  critic_consensus: "Beautiful,” is beautifully performed and tuneful new entertainment.The story serves as an efficient delivery system for Carole King’s surprisingly diverse hits – not much more, nothing less.",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/beautiful_poster.jpg"})


m13 = Musical.create!({
  title: "Aladdin",
  type: "Musical",
  year: 2014,
  status: "Now Playing",
  theater_info: "New Amsterdam Theatre: 214 W. 42nd St.",
  critic_consensus: "Score Aladdin a considerable win for Disney, likely to fill the New Amsterdam with happy crowds for seasons to come.",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/aladdin_poster.png"})


m14 = Musical.create!({
  title: "Hamilton",
  type: "Musical",
  year: 2015,
  status: "Now Playing",
  theater_info: "Richard Rogers Theatre: 226 W. 46th St.",
  critic_consensus: "Yes, it's as incredible as everyone says....With his new musical, 'Hamilton,' Lin-Manuel Miranda has an eye on both. He's created a work sure to be enjoyed by generations to come, proudly drawing on America's past as a guiding light to the future.",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/hamilton_poster.jpg"})


m15 = Musical.create!({
  title: "School of Rock",
  type: "Musical",
  year: 2015,
  status: "Now Playing",
  theater_info: "Winter Garden Theatre: 1634 Broadway",
  critic_consensus: "It worked for the movie, and wow, does it work on Broadway, a double jolt of adrenaline and sugar to inspire the most helicoptered of tots to play hooky and go shred an ax.",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/rock_poster.jpg"})


m16 = Musical.create!({
  title: "Waitress",
  type: "Musical",
  year: 2016,
  status: "Now Playing",
  theater_info: "Brooks Atkinson Theatre: 256 W. 47th St.",
  critic_consensus: "Fresh and delicious, 'Waitress' has an excellent ratio of sweet to tart; supporting characters who provide crustiness and flakiness; and cooked-to-perfection staging.",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/waitress_poster.jpg"})

m17 = Musical.create!({
  title: "Cats",
  type: "Musical",
  year: 2016,
  status: "Now Playing",
  theater_info: "Neil Simon Theatre: 250 W. 52nd St.",
  critic_consensus: "A sweet and endearing revival...While not every role requires triple-threat expertise, 'Cats' makes some serious acting, singing and dancing demands on its company and Nunn's litter is packed with terrific performers",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/cats_poster.jpg"})

m18 = Musical.create!({
  title: "Dear Evan Hansen",
  type: "Musical",
  year: 2016,
  status: "Now Playing",
  theater_info: "Music Box Theatre: 239 W. 45th St.",
  critic_consensus: "One of the strongest scores in years. The songs are not merely tuneful and funny and touching; Pasek and Paul can plumb the inner depths of their characters and rip through emotions in words and music.",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/deh_poster.jpg"})

m19 = Musical.create!({
  title: "Come From Away",
  type: "Musical",
  year: 2017,
  status: "Now Playing",
  theater_info: "Gerald Schoenfeld Theatre: 236 W. 45th St.",
  critic_consensus: "A big bearhug of a musical...Even the most stalwart cynics may have trouble staying dry-eyed during this portrait of heroic hospitality under extraordinary pressure...",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/cfa_poster.jpg"})

m20 = Musical.create!({
  title: "Miss Saigon",
  type: "Musical",
  year: 2017,
  status: "Now Playing",
  theater_info: "Broadway Theatre: 1681 Broadway",
  critic_consensus: "Classy revitalization of an old, presumably boring property that proves to have plenty of life in it yet. The upscale revival should bring a tear to old-timers with romantic memories of the original schmaltzy score, while titillating newbies",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/saigon_poster.jpg"})

m21 = Musical.create!({
  title: "Hello Dolly",
  type: "Musical",
  year: 2017,
  status: "Now Playing",
  theater_info: "Shubert Theatre: 225 W. 44th St.",
  critic_consensus: "Looks so fresh, you want to pinch its cheek...Helmer Jerry Zaks and choreographer Warren Carlyle have done a great restoration job on the old girl, while refraining from the urge to tart her up for modern tastes…",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/dolly_poster.jpg"})

m22 = Musical.create!({
  title: "Charlie and the Chocolate Factory",
  type: "Musical",
  year: 2017,
  status: "Now Playing",
  theater_info: "Lunt-Fontanne Theatre: 205 W. 46th St.",
  critic_consensus: "Incorporating songs from the film, it seems to present itself as earnest entertainment for children and nostalgic adults. Grieg's caustic book and Shaiman and Wittman's pastiche score, on the other hand, feels like a beast with much sharper talons.",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/charlie_poster.jpg"})

m23 = Musical.create!({
  title: "Anastasia",
  type: "Musical",
  year: 2017,
  status: "Now Playing",
  theater_info: "Broadhurst Theatre: 235 W. 44th St.",
  critic_consensus: "Undeniably entertaining, but also relevant to the magical thinking that seems to have overtaken so much of the world.",
  image: "https://s3.us-east-2.amazonaws.com/sro-rottentomatoes-dev/show_posters/ana_poster.jpg"})

end
