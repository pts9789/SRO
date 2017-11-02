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
Review.destroy_all

# ----------------------------------------------------------
# User Seeds

u1= User.create!({email:"guest@guest.com", username:"guest", password:"arizona"})
u2= User.create!({email:"patrick@patrick.com", username:"patrick", password:"arizona"})
u3= User.create!({email:"jenny@jenny.com", username:"jenny", password:"arizona"})
u4= User.create!({email:"stephanie@stephanie.com", username:"stephanie", password:"arizona"})
u5= User.create!({email:"jamie@jamie.com", username:"jamie", password:"arizona"})
u6= User.create!({email:"mark@mark.com", username:"mark", password:"arizona"})
u7= User.create!({email:"ken@ken.com", username:"ken", password:"arizona"})
u8= User.create!({email:"chris@chris.com", username:"chris", password:"arizona"})
u9= User.create!({email:"karl@karl.com", username:"karl", password:"arizona"})
u10= User.create!({email:"michael@michael.com", username:"michael", password:"arizona"})
u11= User.create!({email:"charlie@charlie.com", username:"charlie", password:"arizona"})

# ----------------------------------------------------------
# Play Seeds

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


  # ----------------------------------------------------------
  # Musical Seeds

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

  # ----------------------------------------------------------
  # CriticReview Seeds

  cr1 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Ben Brantley",
    body: "My reactions ranged between thinking this play was exhaustingly funny to finding it just plain exhausting...Everything is pitched so aggressively, you wind up feeling as battered as the ensemble. I propose putting your rational mind into sleep mode, the better to savor tickling images of order-inverting bizarreness, straight out of Dada, in which suddenly nothing is in its customary place or being used for its customary purpose. There's a wild, redeeming poetry in such anarchy",
    score: 65,
    show_id: p6.id,
    publication: "The New York Times",
    link_to_review: "https://www.nytimes.com/2017/04/02/theater/review-the-play-that-goes-wrong-review.html"
    })

  cr2 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Zachery Stewart",
    body: "This is a planned demolition (and an exceedingly well-executed one at that)...We wonder how on earth the performers are going to sustain this level of lunacy. Remarkably, they do...Their comic timing is so precise you can't help but laugh. Their pratfalls are so real, you can't help but gasp...'The Play That Goes Wrong' isn't a brilliant comedy, but you're going to laugh anyway. This is two hours of unapologetic, stupid fun, buoyed along by a cast of ultra-committed performers",
    score: 80,
    show_id: p6.id,
    publication: "Theatermania",
    link_to_review: "http://www.theatermania.com/broadway/reviews/the-play-that-goes-wrong_80570.html"
    })

  cr3 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Michael Dale",
    body: "So many jabs to the funny bone that even if only a third of them strike properly you're in for a sufficient number of laughs...While the cast members expertly pull off their madness with crack timing, the star of the show turns out to be set designer Hook...While there are plenty of laughs to be had, the enjoyment comes primarily from an appreciation of the comedic skills on display. A bit of empathy-inducing playwriting might elevate the show to something beyond a long, albeit amusing, skit",
    score: 75,
    show_id: p6.id,
    publication: "BroadwayWorld",
    link_to_review: "https://www.broadwayworld.com/article/BWW-Review-Brit-Farce-THE-PLAY-THAT-GOES-WRONG-Literally-Brings-Down-The-House-20170403"
    })

  cr4 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Jesse Green",
    body: "It’s so ridiculous it makes you feel almost ashamed to love it...The tumble from slapstick into absurdity is the best part of 'The Play That Goes Wrong'...Not that the stage tricks aren’t fun...But those tricks and carefully rehearsed ineptitudes are not, in the end, deeply satisfying, however well achieved they are...Though they let too much air out of the concept, shriveling somewhat its effectiveness and diminishing its buoyancy, I laughed at all of those things",
    score: 80,
    show_id: p6.id,
    publication: "Vulture",
    link_to_review: "http://www.vulture.com/2017/04/theater-what-goes-right-with-the-play-that-goes-wrong.html"
    })

  cr5 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Steven Suskin",
    body: "The Laugh-o-Meter that the producers rigged up at the back of the house spontaneously combusted. Or maybe there was no such thing; but if so, they need not replace it. Four minutes in, there’s so much laughter going on that any device set to register it is sure to go bust...What we discover is that what’s hilarious in London is every bit as hilarious across the pond. Which is not, alas, always the case...All told, 'The Play That Goes Wrong' goes uproariously right.",
    score: 90,
    show_id: p6.id,
    publication: "The Huffington Post",
    link_to_review: "https://www.huffingtonpost.com/entry/aisle-view-an-inspector-calls_us_58e00fdee4b0d804fbbb7394"
    })

  cr6 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Charles Isherwood",
    body: "A stirring, spiffily cast revival...Priestley draws his fracturing family portrait in delicate, compassionate and occasionally funny strokes, and the excellent cast, led by the director, Rebecca Taichman, draws us into their lives with a natural warmth and ease...For the most part 'Time and the Conways,' presented here with impressive polish, has weathered the years with impressive grace. Time can be cruel to people, but on occasion it can at least be kind to works of art",
    score: 80,
    show_id: p7.id,
    publication: "Broadway News",
    link_to_review: "https://broadway.news/2017/10/10/review/review-time-and-the-conways-offers-a-graceful-masterclass-in-time-and-failed-dreams/"
    })

  cr7 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Zachery Stewart",
    body: "Undoubtedly, there will be theatergoers who delight in the guarded banter of the Conway family...The rest of us will just be bored. 'Time and the Conways' doesn't really get interesting until halfway through the second act...Director Taichman's production presents Priestley's timeline with inexorable precision and a twinge of sadness...The performances are also satisfying, if slightly indulgent in that way British drawing room dramas encourage...It's not 'Downton Abbey', but it will do",
    score: 65,
    show_id: p7.id,
    publication: "Theatermania",
    link_to_review: "http://www.theatermania.com/broadway/reviews/time-and-the-conways_82697.html"
    })

  cr8 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Michael Dale",
    body: "If those late 1930s audiences only knew, as audiences at Taichman's graceful and visually surprising Roundabout production now know, the even greater horrors that would lie ahead. The playwright plays with time in a manner that pulls at emotions...Taichman offers the audience entrancing glimpses of how human existence can transcend time...Plays like 'Time and the Conways' offer warnings from the past about the possibilities for the future",
    score: 75,
    show_id: p7.id,
    publication: "BroadwayWorld",
    link_to_review: "https://www.broadwayworld.com/article/BWW-Review-Rebecca-Taichman-Delves-Into-Serialism-With-JB-Priestleys-TIME-AND-THE-CONWAYS-20171011"
    })

  cr9 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Marilyn Stasio",
    body: "Even an imperfect Priestley play offers food for thought, and McGovern is always a pleasure to watch...Nobody looks good in the gracefully written but too-broadly acted first scene of the play...Priestley best articulates his faith in that soothing belief system in the last movement of the play…It’s a great scene, but first we have to get there, and the erratic directorial style makes that rougher than it needs to be",
    score: 55,
    show_id: p7.id,
    publication: "Variety",
    link_to_review: "http://variety.com/2017/legit/reviews/time-and-the-conways-review-elizabeth-mcgovern-1202586681/"
    })

  cr10 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Adam Feldman",
    body: "J.B. Priestley’s 1937 drama is about time, and its current Broadway revival, if nothing else, makes you aware of time passing...It’s unclear why the Roundabout has chosen to mount this play, except perhaps that director Taichman has staged it before and McGovern was available to play the mother...The production features solid work from most of the actors...But 'Time and the Conways' requires a stronger gravitational force than McGovern’s airy performance provides. The center does not hold.",
    score: 60,
    show_id: p7.id,
    publication: "Time Out New York",
    link_to_review: "https://www.timeout.com/newyork/theater/time-and-the-conways"
    })

  cr11 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Ben Brantley",
    body: "'M. Butterfly' returns to Broadway on heavier, drabber wings...Hwang more than implicitly compares Gallimard’s dim vision regarding his love object to the unrealistic beliefs that Western countries hold about the East...For 'M. Butterfly' to have emotional impact, it must make its audiences uneasily complicit in that fantasy. In this version, you always maintain the distance...We’re not being seduced, but preached at.",
    score: 45,
    show_id: p8.id,
    publication: "The New York Times",
    link_to_review: "https://www.nytimes.com/2017/10/26/theater/review-m-butterfly-david-henry-hwang-julie-taymor-broadway.html"
    })

  cr12 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Charles Isherwood",
    body: "Despite Taymor’s infusions of stylish pageantry – or possibly, in part, because of them — the play’s emotional core seems to have been hollowed out...Taymor’s plodding, sometimes fussy staging, coupled with Hwang’s revised version of the play, ultimately leave a wearying, watery impression...This production tends to underline the play’s flaws, notably Hwang’s sometimes over-explicit writing",
    score: 40,
    show_id: p8.id,
    publication: "Broadway News",
    link_to_review: "https://broadway.news/2017/10/26/review/review-m-butterfly-never-takes-flight/"
    })

  cr13 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Zachery Stewart",
    body: "Taymor's stylish revival attempts to seduce us into belief, to make its gender-play seem not only plausible but understandable...Ha's believably feminine performance undergirds our uncertainty...Taymor artfully constructs Gallimard's orientalist dream...Minor quibbles about the play's occasionally sluggish pace shouldn't obscure the point that no other director comes close to Taymor's magpie talent for incorporating diverse theatrical forms into a singular vision.",
    score: 80,
    show_id: p8.id,
    publication: "Theatermania",
    link_to_review: "http://www.theatermania.com/broadway/reviews/m-butterfly_82906.html"
    })

  cr14 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Marilyn Stasio",
    body: "Gorgeous if oddly unmoving...Owen seems deeply haunted by Gallimard’s forbidden love for Song Liling; but his earnest attempt to play the character’s sexual uncertainty is ultimately unconvincing. Taymor has shielded Hwang’s poetry from being overwhelmed by the sheer theatricality of the story...By fortifying the scenes that frame the love story, Taymor has also strengthened the political undercurrents of the play",
    score: 80,
    show_id: p8.id,
    publication: "Time Out New York",
    link_to_review: "https://www.timeout.com/newyork/theater/m-butterfly"
    })

  cr15 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Charles Isherwood",
    body: "I found my expectations upended, my jaded armor melting away...I found myself with a new appreciation for this beloved show’s gothic theatricality; the waltzing sweep of Harold Prince’s direction; the grandly soaring melodies of its most celebrated songs...It may or may not be a great musical, according to your tastes, or even a good one, but 'Phantom of the Opera' certainly remains a grand, lavishly decked-out galleon of a show, surging on into the 21st century showing few signs of decay",
    score: 75,
    show_id: m6.id,
    publication: "The New York Times",
    link_to_review: "https://www.nytimes.com/2014/08/18/theater/the-phantom-of-the-opera-retains-its-luster.html"
    })

  cr16 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Clive Barnes",
    body: "Harold Prince’s powerful operatic-style staging is terrific, remaining taut and shipshape, while the show still acquires just the right style, ornate but quaint, from the late Maria Bjornson’s wonderful production design. Add to this Andrew Lloyd Webber’s sweeping and lush pastiche of a score, and you’ve got a blockbuster…This is not simply one of the longest-running Broadway musicals – it is, more important, one of the all-time best Broadway musicals. It delivers",
    score: 90,
    show_id: m6.id,
    publication: "New York Post",
    link_to_review: "https://nypost.com/2004/02/04/lush-phantom-still-haunting/"
    })

  cr17 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Richard Hummler",
    body: "Andrew Lloyd Webber has taken the Gaston Leroux potboiler about the love-crazed disfigured genius who lives in the catacombs of the Paris Opera and fashioned it into a thrilling and musically rich mass legit entertainment. The 19th century period spectacle, scenic legerdemain, soaring melodies and exceptional singing are at the service of an involving and piquantly offbeat love story, all of it staged with brilliantly organized flair by Harold Prince, back in top form",
    score: 90,
    show_id: m6.id,
    publication: "Variety",
    link_to_review: "https://www.washingtonpost.com/archive/lifestyle/1988/01/27/the-seductive-spell-of-phantom/a1db89aa-7e6f-43bc-9ee5-155e5d0dd503/?utm_term=.671ae0ea5434"
    })

  cr18 = CriticReview.create!({
    type: "CriticReview",
    author_name: "David Richards",
    body: "It is a thrilling show -- as sumptuous as any on Broadway. And it touches the heart in odd and unexpected ways…If you put aside all preconceived notions and let the spell happen, I don't see how you can be disappointed…’Phantom’ follows an insinuating tack -- luring the audience into a luxurious world of gaslight and dark shadows, caressing it with soaring melodies...Buoyed by the strains of Lloyd Webber's lush score, 'Phantom' shimmers with true romanticism",
    score: 85,
    show_id: m6.id,
    publication: "The Washington Post",
    link_to_review: "https://www.washingtonpost.com/archive/lifestyle/1988/01/27/the-seductive-spell-of-phantom/a1db89aa-7e6f-43bc-9ee5-155e5d0dd503/?utm_term=.671ae0ea5434"
    })

  cr19 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Howard Kissel",
    body: "To say the score is Lloyd Webber’s best is not saying a great deal...What sets ‘Phantom’ apart is the extraordinarily imaginative work of Bjornson, whose sets and costumes are a breathtaking, witty, sensual tribute to 19th century theater...The characters are not fleshed out, the lyrics are forgettable and the melodramatic plot is not as evocative as it might be. Nevertheless, that master conjurer Hal Prince has woven these seemingly outmoded materials into a grand evening of theater",
    score: 65,
    show_id: m6.id,
    publication: "New York Daily News",
    link_to_review: "http://www.nydailynews.com/entertainment/theater-arts/phantom-opera-fun-1988-review-article-1.2485805"
    })

  cr20 = CriticReview.create!({
    type: "CriticReview",
    author_name: "David Finkle",
    body: "Cynics predicted that the big-screen opus would mean the end of the show's Gotham run, but the opposite has occurred for this Encores!-originated revival...the show is now an SRO proposition. During intermission, audience members may be heard debating the comparative merits of the live and canned treatments",
    score: 80,
    show_id: m7.id,
    publication: "Theatermania",
    link_to_review: "http://www.theatermania.com/new-york-city-theater/reviews/08-2003/chicago_3773.html"
    })

  cr21 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Matthew Murray",
    body: "Chicago is as good now as it's ever been--a heartening experience, a life-affirming dedication to the magic and art of theatre, and something that absolutely should not be missed. Though all shows must eventually close, the glory and genius of Chicago should be celebrated while it's here, and with any luck, it will still be gracing and energizing Broadway for many years to come",
    score: 100,
    show_id: m7.id,
    publication: "Tallkin' Broadway",
    link_to_review: "https://www.talkinbroadway.com/page/world/Chicago02.html"
    })

  cr22 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Brian Scott Lipton",
    body: "Broadway's busiest revolving door, better known as the nearly 10-year-old revival of Chicago, has someone new passing through: the R&B superstar with the single moniker of Usher...while he's a good two or three decades younger than most of his predecessors, the tuxedo fits decently enough",
    score: 85,
    show_id: m7.id,
    publication: "Theatermania",
    link_to_review: "http://www.theatermania.com/new-york-city-theater/reviews/09-2006/chicago_8978.html"
    })

  cr23 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Michael Kuchwara",
    body: "A lot of Broadway musicals don't age very well, but the long-running revival of 'Chicago' seems to have discovered the fountain of youth. The score's catchy melodies are potent, toe-tapping reminders of music from the late 1920s, while the lyrics are snappy, pointed and often very funny",
    score: 90,
    show_id: m7.id,
    publication: "The Associated Press",
    link_to_review: "http://www.apnewsarchive.com/2002/Ever-Youthful-Chicago-Still-a-Hit/id-8658ae5816f322d4cc0f6989ffb8af5e"
    })

  cr24 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Howard Kissel",
    body: "Because the revival of 'Chicago' is so wildly entertaining, I'm hesitant to call it important, always an ugly adjective for a reviewer to use...What makes this revival important, is that it reminds us that musicals are about songs and performers, not scenery. When you have material and performances as dynamic as this, you don't need chandeliers",
    score: 95,
    show_id: m7.id,
    publication: "New York Daily News",
    link_to_review: "http://www.nydailynews.com/archives/nydn-features/chicago-revival-kind-show-great-cast-songs-article-1.551382"
    })

  cr25 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Ben Brantley",
    body: "You can only marvel at the exotic procession of animals before you: the giraffes and the elephants and the hippopotamuses and all those birds in balletic flight. These are creatures of air and light and even a touch of divinity. Where are you, really, anyway? Somehow you have fallen into what appears to be a primal paradise. Such is the transporting magic wrought by the opening 10 minutes of The Lion King",
    score: 90,
    show_id: m8.id,
    publication: "The New York Times",
    link_to_review: "http://www.nytimes.com/1997/11/14/movies/theater-review-cub-comes-of-age-a-twice-told-cosmic-tale.html"
    })

  cr26 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Adam Feldman",
    body: "Taymor populates the stage with an amazing menagerie of beasts; her audacious staging expands a simple cub into the pride of Broadway, not merely a fable of heredity but a celebration of heritage",
    score: 85,
    show_id: m8.id,
    publication: "Time Out New York",
    link_to_review: "https://www.timeout.com/newyork/theater/the-lion-king-1"
    })

  cr27 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Michael Kuchwara",
    body: "Make no mistake: The Lion King is a rare theater experience. The musical is intelligent spectacle, extravagance with a purpose -- and a heart. From the moment it begins, The Lion King offers astonishing stage magic. Performers walking on giant stilts become giraffes, birds, and a pride of lionesses, dance with a solemn gracefulness that is breathtaking",
    score: 100,
    show_id: m8.id,
    publication: "The Associated Press",
    link_to_review: "http://www.jasonraize.net/pr_tlk_ftu112397.html"
    })

  cr28 = CriticReview.create!({
    type: "CriticReview",
    author_name: "John Simon",
    body: "You will be bombarded by some of the most beautiful and spectacular sights theater can offer from before and behind, so eyes in the back of the head will come in handy.",
    score: 70,
    show_id: m8.id,
    publication: "New York Magazine",
    link_to_review: "http://nymag.com/listings/theater/the_lion_king/"
    })

  cr29 = CriticReview.create!({
    type: "CriticReview",
    author_name: "David Patrick",
    body: "From the very first minutes of The Lion King, you feel yourself on new ground -- no, in a whole new world....When The Lion King is good, it's enthralling.",
    score: 75,
    show_id: m8.id,
    publication: "USA Today",
    link_to_review: "http://www.jasonraize.net/pr_tlk_usa111497.html"
    })

  cr30 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Ben Brantley",
    body: "A bloated production that might otherwise spend close to three hours flapping its oversized wings without taking off",
    score: 45,
    show_id: m9.id,
    publication: "The New York Times",
    link_to_review: "http://www.nytimes.com/2003/10/31/movies/theater-review-there-s-trouble-in-emerald-city.html"
    })

  cr31 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Charles Isherwood",
    body: "A strenuous effort to be all things to all people tends to weigh down this lumbering, overstuffed production...Wicked is stridently earnest one minute, self-mocking the next; a fantastical allegory about the perils of fascism in one scene, a Nickelodeon special about the importance of inner beauty in another",
    score: 40,
    show_id: m9.id,
    publication: "Variety",
    link_to_review: "http://variety.com/2003/legit/reviews/wicked-7-1200538236/"
    })

  cr32 = CriticReview.create!({
    type: "CriticReview",
    author_name: "David Cote",
    body: "'Wicked,' a giddy postmodern riff on the classic children's novel and movie, whips up a cyclone of witty jokes and eye-popping visuals, making a bid for best new musical of the season... Chief among the show's triumphs – besides Winnie Holzman's remarkably deft book, Eugene Lee's jaw-dropping set of gears and vines, and the eclectic costuming by Susan Hilferty – are the female leads",
    score: 00,
    show_id: m9.id,
    publication: "Time Out New York",
    link_to_review: "https://wickedthemusical.com/TimeOutNY"
    })

  cr33 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Terry Teachout",
    body: "The best moments in 'Wicked' come when the stage is least crowded. I'm done niggling. 'Wicked' is funny and touching and full of beans (not to mention child-friendly). It'll make a great movie one of these days, and it's going to make Kristin Chenoweth a star right this minute. Go",
    score: 80,
    show_id: m9.id,
    publication: "The Wall Street Journal",
    link_to_review: "https://www.wsj.com/articles/SB106748686155075900"
    })

  cr34 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Matthew Murray",
    body: "The new musical at the Gershwin is a thoroughly mechanical and unmagical musical. It is the ultimate whitewashed example of how a musical written to pander can even fail at that when it has no centralized guiding force",
    score: 30,
    show_id: m9.id,
    publication: "Tallkin' Broadway",
    link_to_review: "https://www.talkinbroadway.com/page/world/Wicked.html"
    })

  cr35 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Ben Brantley",
    body: "On my fourth visit on a recent night, the show still had me at “Hello,”...I had anticipated a certain falling off of religious fervor: three years is a long time for a peppy musical to stay peppy. But gosh darn it if I didn’t feel born again all over again, ready to spread the word about the faith that this show preaches and, more importantly practices: the holy faith of musical comedy",
    score: 100,
    show_id: m10.id,
    publication: "The New York Times",
    link_to_review: "https://www.nytimes.com/2014/08/21/theater/the-book-of-mormon-on-broadway-retains-its-charms.html"
    })

  cr36 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Elisabeth Vincentelli",
    body: "It’s a fiendishly well-crafted, hilariously smart — or maybe smartly hilarious — song-and-dance extravaganza. The show’s a hoot. The show’s a hit",
    score: 100,
    show_id: m10.id,
    publication: "New York Post",
    link_to_review: "https://nypost.com/2011/03/25/mormon-conquest/"
    })

  cr37 = CriticReview.create!({
    type: "CriticReview",
    author_name: "David Cote",
    body: "Brimming with cheerful obscenity, sharp satire and catchy tunes, The Book of Mormon is a sick mystic revelation, the most exuberantly entertaining Broadway musical in years",
    score: 100,
    show_id: m10.id,
    publication: "Time Out New York",
    link_to_review: "https://www.timeout.com/newyork/theater/the-book-of-mormon-on-broadway-tickets-reviews-and-video"
    })

  cr38 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Steven Suskin",
    body: "Every song enhances the hilarity, expert staging heightens every gag, and the cast of fresh faces is blissfully good. Broadway hasn’t seen anything like it since Mel Brooks came to town with “The Producers,” only “Mormon” has better songs",
    score: 100,
    show_id: m10.id,
    publication: "Variety",
    link_to_review: "http://variety.com/2011/legit/reviews/the-book-of-mormon-1117944886/"
    })

  cr39 = CriticReview.create!({
    type: "CriticReview",
    author_name: "David Finkle",
    body: "Uproarious lines and highly entertaining numbers, beginning with as rousing as opener as B'way has seen in too long",
    score: 95,
    show_id: m10.id,
    publication: "The Huffington Post",
    link_to_review: "https://www.huffingtonpost.com/david-finkle/first-nighter-south-parks_b_840338.html"
    })

  cr40 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Ben Brantley",
    body: "Portraying Lola, Mr. Brady gleams with unassailable contentment and confidence, at least as long as he’s wearing a dress…It is a relief to report that Mr. Brady’s singing and dancing chops are of Broadway caliber...He radiates stellar heat and good humor...The perpetual cheer-churning machine that is 'Kinky Boots' keeps moving forward smoothly and propulsively, even through the inspirational quicksand of its second act",
    score: 85,
    show_id: m11.id,
    publication: "The New York Times",
    link_to_review: "https://www.nytimes.com/2015/12/28/theater/kinky-boots-with-wayne-brady-a-cross-dresser-you-could-take-home-to-mother.html"
    })

  cr41 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Zachery Stewart",
    body: "If your preferred Broadway experience is all about cocktails and drag queens, Kinky Boots will definitely fit the bill. But this show has a much wider appeal. Indeed, this high-energy spectacle with a heart is musical comedy at its finest",
    score: 95,
    show_id: m11.id,
    publication: "Time Out New York",
    link_to_review: "https://www.timeout.com/newyork/theater/kinky-boots"
    })

  cr42 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Jonathan Mandell",
    body: "The stage version delivers a couple of stand-out performances; a few touching moments; several catchy melodies presented with verve and panache in a diverse score of genuine pop tunes. “Kinky Boots” is professionally put together, it’s entertaining…and it’s both safe and familiar. That’s not a crime; it’s just a disappointment.",
    score: 65,
    show_id: m11.id,
    publication: "New York Theater",
    link_to_review: "https://newyorktheater.me/2013/04/04/kinky-boots-review-cyndi-laupers-broadway-songwriting-debut/"
    })

  cr43 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Adam Feldman",
    body: "The kicky crowd-pleaser Kinky Boots tells of Price & Son—a family business in danger of closing down.The musical holds up for the same reason Price & Son’s products do: solid craftsmanship and care. Lauper is a musical-theater natural, combining bright, infectious melodies with simple but effective lyrics. As each act progresses, the energy rises palpably, boosted by a heart-strong cast",
    score: 75,
    show_id: m11.id,
    publication: "Time Out New York",
    link_to_review: "https://www.timeout.com/newyork/theater/kinky-boots"
    })

  cr44 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Michael Giltz",
    body: "'Kinky Boots' was clearly meant to be a 'Full Monty'-style crowd-pleaser. Ironically, the rather minor British film it's based on also had little to recommend it...For a musical about drag queens clashing with burly blue collar males and a factory crushed by outsourcing, this is a tension-free show with almost no sex and only some very minor bumps in the plot.",
    score: 45,
    show_id: m11.id,
    publication: "The Huffington Post",
    link_to_review: "https://www.huffingtonpost.com/michael-giltz/theater-kinky-boots-too-v_b_3018475.html"
    })

  cr45 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Ben Brantley",
    body: "Beautiful: The Carole King Musical” should probably be titled “Brooklyn Girl.” This renaming would allow theatergoers to know exactly what to expect of the friendly, formulaic bio-musical",
    score: 70,
    show_id: m12.id,
    publication: "The New York Times",
    link_to_review: "https://www.nytimes.com/2014/01/13/theater/beautiful-the-carole-king-musical-at-sondheim-theater.html"
    })

  cr46 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Zachery Stewart",
    body: "Director Marc Bruni has taken the gift of a smart and economical script and run with it. Amid lightning-quick transitions, this show only decelerates when it wants to. Split-second costume changes (designer Alejo Vietti must be a witch) add to the magic and fun of the evening",
    score: 75,
    show_id: m12.id,
    publication: "Theatermania",
    link_to_review: "http://www.theatermania.com/new-york-city-theater/reviews/01-2014/beautiful-the-carole-king-musical_67140.html"
    })

  cr47 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Maralyn Stasio",
    body: "The early life and career of legendary singer-songwriter Carole King surely deserves more imaginative treatment than the corny chronological storytelling and old-fashioned musical format of “Beautiful.” But all is forgiven, whenever Jessie Mueller, in the modest person of Carole King, sits down at the piano and pours heart and soul into familiar favorites from the composer’s songbook",
    score: 65,
    show_id: m12.id,
    publication: "Variety",
    link_to_review: "http://variety.com/2014/legit/reviews/broadway-review-beautiful-the-carole-king-musical-1201049758/"
    })

  cr48 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Jesse Green",
    body: "Perhaps such material can’t be well directed, but we will never know. What I can say is that Marc Bruni certainly hasn’t improved it. The show is full of clunky transitions, dead space, scenes that peter out until someone mercifully snaps off the lights",
    score: 40,
    show_id: m12.id,
    publication: "Vulture",
    link_to_review: "http://www.vulture.com/2014/01/theater-review-beautiful-carole-king.html"
    })

  cr49 = CriticReview.create!({
    type: "CriticReview",
    author_name: "David Finkle",
    body: "Before we get to what's wrong with Beautiful: The Carole King Musical, let's establish what's so right that it instantly joins the ranks of irresistible jukebox tuners. In other words, it should have a long and healthy run, if, the producers can either convince Jessie Mueller to remain in the title role forever or if they can find replacements as enormously talented as she is",
    score: 70,
    show_id: m12.id,
    publication: "The Huffington Post",
    link_to_review: "https://www.huffingtonpost.com/david-finkle/first-nighter-beautiful-t_b_4586854.html"
    })

  cr50 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Charles Isherwood",
    body: "This latest musical adapted from one of Disney’s popular movies defied my dour expectations...“Aladdin” has an infectious and only mildly syrupy spirit. Not to mention enough baubles, bangles and beading to keep a whole season of “RuPaul’s Drag Race” contestants in runway attire",
    score: 70,
    show_id: m13.id,
    publication: "The New York Times",
    link_to_review: "https://www.nytimes.com/2014/03/21/theater/aladdin-tweaks-the-disney-formula-with-breezy-insouciance.html"
    })

  cr51 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Elisabeth Vincentelli",
    body: "James Monroe Iglehart injects liveliness and humor into a merely tolerable stage adaptation of Disney’s animated hit 'Aladdin'",
    score: 60,
    show_id: m13.id,
    publication: "New York Post",
    link_to_review: "https://nypost.com/2014/03/20/aladdin-musical-doesnt-quite-seem-like-a-disney-hit/"
    })

  cr52 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Zachery Stewart",
    body: "You're going to have a great time at Aladdin, despite its conflict-starved filler of a book. But are you really going for the dramaturgy? No, you're going to see sexy actors sing and dance while performing magic tricks. In that regard, Aladdin delivers in abundance",
    score: 70,
    show_id: m13.id,
    publication: "Theatermania",
    link_to_review: "http://www.theatermania.com/new-york-city-theater/reviews/aladdin_67938.html"
    })

  cr53 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Adam Feldman",
    body: "Aside from the tonic of Iglehart’s djinn, however, Aladdin is short on magic.",
    score: 50,
    show_id: m13.id,
    publication: "Time Out New York",
    link_to_review: "http://www.timeout.com/newyork/theater/aladdin-1"
    })

  cr54 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Jonathan Mandell",
    body: "In Aladdin, the new Disney musical on Broadway, the genie grants theatergoers the first of their wishes – to be entertained",
    score: 80,
    show_id: m13.id,
    publication: "New York Theater",
    link_to_review: "https://newyorktheater.me/2014/03/20/aladdin-review-a-genie-works-his-magic-on-broadway/"
    })

  cr55 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Ben Brantley",
    body: "Yes, it really is that good...I am loath to tell people to mortgage their houses and lease their children to acquire tickets to a hit Broadway show. But 'Hamilton,' directed by Thomas Kail and starring Mr. Miranda, might just about be worth it — at least to anyone who wants proof that the American musical is not only surviving but also evolving in ways that should allow it to thrive and transmogrify in years to come",
    score: 100,
    show_id: m14.id,
    publication: "The New York Times",
    link_to_review: "https://www.nytimes.com/2015/08/07/theater/review-hamilton-young-rebels-changing-history-and-theater.html"
    })

  cr56 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Elisabeth Vincentelli",
    body: "Lin-Manuel Miranda’s 'In the Heights' may have been a hit — but his 'Hamilton' is a phenomenon...But “revolutionary” the show is not. Truly radical art is divisive, and under its brash exterior, 'Hamilton' is warmly reassuring — a love letter to a land of opportunity where 'The 10-dollar founding father without a father/Got a lot farther by working a lot harder/By being a lot smarter/By being a self-starter.",
    score: 80,
    show_id: m14.id,
    publication: "New York Post",
    link_to_review: "https://nypost.com/2015/08/06/hamilton-isnt-quite-revolutionary/"
    })

  cr57 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Michael Dale",
    body: "As with 'In The Heights', Miranda's ear-popping material kinetically fuses with the exemplary work of director Thomas Kail to explosively tell the story of a man considered one of the first quintessential New Yorkers - a poor immigrant with radical ideas who pushed his way to prominence for the betterment of society.",
    score: 90,
    show_id: m14.id,
    publication: "BroadwayWorld",
    link_to_review: "https://www.broadwayworld.com/article/BWW-Reviews-HAMILTON-Takes-a-Shot-at-Broadway-20150807"
    })

  cr58 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Marilyn Stasio",
    body: "This innovative show is shaping up to be just as much of a phenomenon uptown, playing in a Broadway house with four times the seating capacity, and to a more traditional but no less enthusiastic audience. That universal appeal to crossover audiences is one unmistakable sign of a groundbreaking show...Like any true landmark, 'Hamilton' stands up to repeated viewings. After six months, the show’s initial impact hasn’t dulled a bit; in fact, the qualities that made it so extraordinary the first...”",
    score: 100,
    show_id: m14.id,
    publication: "Variety",
    link_to_review: "http://variety.com/2015/legit/reviews/hamilton-review-broadway-1201557679/"
    })

  cr59 = CriticReview.create!({
    type: "CriticReview",
    author_name: "David Cote",
    body: "What is left to say? After every critic in town (including me) praised the Public Theater world premiere to high heaven; and after seeing this language-drunk, rhyme-crazy dynamo a second time, I can only marvel: They used up all the damn words. Wait, here are three stragglers, straight from the heart: I love 'Hamilton.' I love it like I love New York, or Broadway when it gets it right. And this is so right",
    score: 100,
    show_id: m14.id,
    publication: "Time Out New York",
    link_to_review: "http://www.timeout.com/newyork/theater/hamilton-1"
    })

  cr60 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Ben Brantley",
    body: "'School of Rock' doesn’t strain to mix whimsy with grandeur...For its first half, at least, it charmingly walks the line between the cute and the precious…In the more lazily formulaic second act, you can taste glucose in the air. But mostly, 'Rock' is surprisingly easy to swallow, in large part because everyone involved seems to be having such a fine time...Family audiences should be grateful for a Lloyd Webber show that only wants to have fun and hopes that you do, too.",
    score: 80,
    show_id: m15.id,
    publication: "The New York Times",
    link_to_review: "https://www.nytimes.com/2015/12/07/theater/review-school-of-rock-teaches-the-abcs-of-power-chords.html"
    })

  cr61 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Zachery Stewart",
    body: "'School of Rock' is cute and occasionally funny, but not any more than its source material, making its onstage existence something of an extravagant 'meh'… Songs resemble a cell phone ringtone...Still, they're often catchy and hard to forget…Glenn Slater's lyrics are adequate yet unremarkable…'School of Rock' has a supercharged cast to transform this leaden material into musical-comedy gold…An undeniably fun musical that is nevertheless not particularly special",
    score: 70,
    show_id: m15.id,
    publication: "Theatermania",
    link_to_review: "http://www.theatermania.com/broadway/reviews/school-of-rock_75205.html"
    })

  cr62 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Marilyn Stasio",
    body: "An exuberant feel-good musical…A cast of super-talented kids who rock out on the kind of songs you always wished had been in the movie…Webber has the ideal sensibility to relate to children whose freakish talents might make them seem a little bit…peculiar…Thankfully, nothing savage has been done to the original film story…The creatives have given the children a sensitive backstory about their parents and home lives that’s missing from the movie",
    score: 85,
    show_id: m15.id,
    publication: "Variety",
    link_to_review: "http://variety.com/2015/legit/reviews/school-of-rock-review-broadway-musical-1201655018/"
    })

  cr63 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Jesse Green",
    body: "'School of Rock' has a fair amount to offer...The kids are terrific: They sing very well and play their own instruments…Webber grabs whatever tropes seem handy, from power to glitter to punk, garbling our understanding of Dewey’s inner soundscape...Anyway, Lloyd Webber isn’t the problem.The problem is what the point is, and that falls on Fellowes, who has not resolved, but rather exposed, the confusions latent in the material",
    score: 55,
    show_id: m15.id,
    publication: "Vulture",
    link_to_review: "http://www.vulture.com/2015/12/theater-for-those-attending-school-of-rock.html"
    })

  cr64 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Terry Teachout",
    body: "Turning 'School of Rock' into a musical isn’t the worst idea in the world, and if you need a safe, undemanding show to take your baby-boom parents to see over the holidays, it’ll do perfectly fine—but if that sounds like lukewarm praise, it is...I’ve seen worse and so have you...Just be forewarned: This is the kind of musical that sends you home wanting to rent the movie. I don’t know about you, but that’s not why I go to the theater",
    score: 60,
    show_id: m15.id,
    publication: "The Wall Street Journal",
    link_to_review: "https://www.wsj.com/articles/school-of-rock-review-its-only-rock-n-roll-but-youll-like-it-1449695512"
    })

  cr65 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Charles Isherwood",
    body: "Much of the score is appealing. But the book tends to flatten most of the characters into comic cartoons...'Waitress' taps into its wellsprings of universal feeling with a slick surface professionalism rather than anything approaching real depth...It is when Mueller tears into the musical’s climactic number that her talents are most movingly harnessed...Suddenly, a pleasant and polished but weightless musical comedy rises to transporting heights, and sweeps up your heart along with it.",
    score: 75,
    show_id: m16.id,
    publication: "The New York Times",
    link_to_review: "https://www.nytimes.com/2016/04/25/theater/review-jessie-mueller-serves-a-slice-of-life-with-pie-in-sara-bareilless-waitress.html"
    })

  cr66 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Elisabeth Vincentelli",
    body: "From score to casting, book to staging, everything comes together with a deceiving ease. Jessie Mueller is the heart and soul of the show as Jenna. No wonder she takes so easily to Bareilles’ score: The songwriter’s piano-driven style combines storytelling and catchy melodies...The show is also better than the movie in how it creates a tightknit, affectionate community onstage",
    score: 85,
    show_id: m16.id,
    publication: "New York Post",
    link_to_review: "https://nypost.com/2016/04/24/women-songwriters-like-sara-bareilles-are-owning-broadway/"
    })

  cr67 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Zachery Stewart",
    body: "The cast and creative team behind 'Waitress' pulls off a rare feat: They give us a big, happy musical comedy that simultaneously manages to push the form in exciting ways. 'Waitress' is a definite winner...The earnest anxiety of the story is superbly conveyed through a score by singer-songwriter Bareilles...Her gorgeous lyrics move the plot forward while deepening the emotional world of the characters, bringing the best of a pop sensibility to musical theater",
    score: 90,
    show_id: m16.id,
    publication: "Theatermania",
    link_to_review: "http://www.theatermania.com/broadway/reviews/waitress_76826.html?cid=homepage_news"
    })

  cr68 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Marilyn Stasio",
    body: "'Waitress' owes its sweetness to the mouth-watering goodness of Jessie Mueller...The musical resorts to comic overkill to create characters. But Sara Bareilles has written a charming score that suits the quirky material and Mueller’s dazzling voice and endearing personality...There are good things in the second act, which is more lyrical and less silly...Too bad it took so long to get here",
    score: 70,
    show_id: m16.id,
    publication: "Variety",
    link_to_review: "http://variety.com/2016/legit/reviews/waitress-review-broadway-musical-1201759570/"
    })

  cr69 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Jesse Green",
    body: "'Waitress' is clearly, passionately, and for the most part delightfully a feminist musical....'Waitress' can be an uncomfortable genre mix: domestic-violence drama and workplace romcom. That’s in the source material, and the musicalization exaggerates it. What I didn’t expect is that the musicalization could also help to justify the mismatch. As the story rushed toward its conclusion, I began to understand that for these characters, life itself is an uncomfortable genre mix",
    score: 70,
    show_id: m16.id,
    publication: "Vulture",
    link_to_review: "http://www.vulture.com/2016/04/theater-review-waitress.html"
    })

  cr70 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Charles Isherwood",
    body: "The overriding spirit of the revival appears to be the familiar motto: Don’t mess with success...The most significant nod to the intervening decades and changing tastes is the hiring of Andy Blankenbuehler...The felines prance and romp and occasionally hiss at one another as they introduce themselves in songs that provide the show’s greatest allure, as well as its variety. Mr. Lloyd Webber is a musical magpie...The cast for the revival is largely excellent.",
    score: 75,
    show_id: m17.id,
    publication: "The New York Times",
    link_to_review: "https://www.nytimes.com/2016/08/01/theater/cats-broadway-revival-review.html?partner=rssnyt&emc=rss"
    })

  cr71 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Zachery Stewart",
    body: "Nunn seems to have revisited the material with the attitude, 'If it ain't broke, don't fix it.' Despite new choreography and cutting-edge lighting, it still carries a retro vibe...Plot is ancillary to a beautiful fantasy conveyed through music and dance...Still, if you look around and see the remarkable creativity and innovation happening on Broadway these days, it is hard to view this production as anything more than a museum piece",
    score: 60,
    show_id: m17.id,
    publication: "Theatermania",
    link_to_review: "http://www.theatermania.com/broadway/reviews/cats_77953.html"
    })

  cr72 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Marilyn Stasio",
    body: "Memories could be fatal to this revival—specifically, the memory of Betty Buckley as Grizabella, singing ‘Memory'...Leona Lewis isn’t in her league. Happily, nothing as catty can be said of the rest of this fabulous revival of the 1981 musical phenom...A corps of brilliant dancers leap with feline agility through every style of dance, from toe-tapping Broadway jazz steps to the classic ballet moves...The genius of the show is in the dancing...The dancers are in perfectly splendid form",
    score: 80,
    show_id: m17.id,
    publication: "Variety",
    link_to_review: "http://variety.com/2016/legit/reviews/review-andrew-lloyd-webbers-cats-returns-to-broadway-1201827376/"
    })

  cr73 = CriticReview.create!({
    type: "CriticReview",
    author_name: "David Cote",
    body: "This was a lost opportunity. Rather than lamely re-creating the original, why not orchestrate the score for acoustic instruments, redo the costumes and dances, and find fresh drama underneath the tacky, dated pageantry? Instead we get a taxidermied pet. If there is heart to the piece, it’s Grizabella, the faded, outcast 'glamour cat.' British crooner Leona Lewis has a big, yearning voice, but even her (heavily amplified) yowling of 'Memory' can’t make the past worth revisiting",
    score: 30,
    show_id: m17.id,
    publication: "Time Out New York",
    link_to_review: "https://www.timeout.com/newyork/blog/broadway-review-cats-at-the-neil-simon-theatre-080116"
    })

  cr74 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Jesse Green",
    body: "The wan revival at least gets the lighting right...No greater ambition seems to have animated the revival as a whole. Other than Katz’s spectacular lighting, the design and staging are at best equivalent to the original’s, even after decades of adjustments and second thoughts...Seeing it 34 years later, in a Broadway environment that has recently produced the likes of ‘Hamilton’ and ‘Fun Home’, is to experience something milder and less dangerous than it once seemed",
    score: 40,
    show_id: m17.id,
    publication: "Vulture",
    link_to_review: "http://www.vulture.com/2016/07/theater-review-the-persistence-of-cats.html"
    })

  cr75 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Charles Isherwood",
    body: "The marvelous young actor Ben Platt is giving a performance that’s not likely to be bettered on Broadway this season. What’s more, this gorgeous heartbreaker of a musical has grown in emotional potency during its journey to the big leagues...The musical finds endless nuances in the relationships among its characters...Under the superb direction of the veteran Michael Greif, the show has been subtly refined, its brasher comedy softened, and the performances have grown in delicacy",
    score: 95,
    show_id: m18.id,
    publication: "The New York Times",
    link_to_review: "https://www.nytimes.com/2016/12/04/theater/dear-evan-hansen-review.html"
    })

  cr76 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Marilyn Stasio",
    body: "Not since 'Next to Normal' has a score tapped so deeply into the troubled psyche of its needy protagonist...The lyrics go beyond the spoken thought and reach for the unspoken feelings hiding behind the words. Better yet, there’s not a hint of sentimentality...Under the thoughtful direction of Greif, Platt goes beyond physical specificity to get under Evan’s skin and into his unsettled mind. And the introspective, gentle score becomes the language of his troubled thoughts and yearnings",
    score: 90,
    show_id: m18.id,
    publication: "Variety",
    link_to_review: "http://variety.com/2016/legit/reviews/dear-evan-hansen-review-broadway-1201933338/"
    })

  cr77 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Adam Feldman",
    body: "Platt is giving one of the greatest leading male performances I’ve ever seen in a musical, and the thrillingly modern and moving 'Dear Evan Hansen' is worthy of it...The musical benefits mightily from Greif’s dynamic direction, Korins’s vivid set design, Nigrini's cascading projections and an excellent cast...Benj Pasek and Justin Paul’s score brims with tuneful and thoughtful songs...And Levenson’s book is unfailingly smart...'Dear Evan Hansen' must be seen to be believed",
    score: 100,
    show_id: m18.id,
    publication: "Time Out New York",
    link_to_review: "https://www.timeout.com/newyork/blog/broadway-review-dear-evan-hansen-is-lit-by-a-dazzling-star-turn-120416"
    })

  cr78 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Hayley Levitt",
    body: "Ben Platt is stripped down to his emotional skivvies for us voyeurs to judge, gawk at, and pity. His breathtaking performance in the show's title role is just one of the reasons Pasek, Paul, and Levenson's new musical moves audiences to their feet before the lights even come down...This musical offers a truly 21st-century story...The composers strike a balance between substance and popular appeal with memorable melodies and character-driven lyrics",
    score: 95,
    show_id: m18.id,
    publication: "Theatermania",
    link_to_review: "http://www.theatermania.com/broadway/reviews/dear-evan-hansen-music-box-theatre_79312.html"
    })

  cr79 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Jesse Green",
    body: "So fine in its craft and rich in its gathering of themes that it rewards being seen again—and again...Platt imbues the character with so much pathos and lively detail that he succeeds as the story’s engine despite being almost pathologically passive...That Levenson has been able to find spots for humor at all in this grippingly sad story, and that Pasek and Paul have been able to turn those opportunities into songs of comic relief is a sign of the size of the ideas in play",
    score: 95,
    show_id: m18.id,
    publication: "Vulture",
    link_to_review: "http://www.vulture.com/2016/12/theater-review-dear-evan-hansen-moves-uptown.html"
    })

  cr80 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Ben Brantley",
    body: "’Come From Away' is smarter than it first appears...The show covers a vast expanse of sensitive material with a respect for its complexity...It sustains an air of improvisational urgency, which feels appropriate to a show about making do in crisis, and it doesn’t linger on obvious moments of heartbreak and humanity",
    score: 85,
    show_id: m19.id,
    publication: "The New York Times",
    link_to_review: "https://www.nytimes.com/2017/03/12/theater/come-from-away-review.html"
    })

  cr81 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Michael Dale",
    body: "'Come From Away,' the inspiring, funny and kick-ass beautiful new musical...takes a true story that began on September 11th, 2001, and tells it in an exhilarating fashion that celebrates decency and human kindness...Director Christopher Ashley's production seamlessly moves from tense moments to humorous ones to unabashedly joyous ones...As long as 'Come From Away' is playing on Broadway, I will recommend it to everyone. Everyone.",
    score: 95,
    show_id: m19.id,
    publication: "BroadwayWorld",
    link_to_review: "https://www.broadwayworld.com/article/BWW-Review-Exhilarating-New-Musical-COME-FROM-AWAY-Celebrates-The-Helpers-20170312"
    })

  cr82 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Marilyn Stasio",
    body: "The cast is a hearty group and so good-natured they really put the lyrics across...Ashley keeps the traffic moving smartly...But there’s no getting away from it—as broad representatives from both camps of hosts and guests, the characters have no character...By the end of the show, the characters are scarcely more defined than they were at the beginning, and the monotonous music may be pounding on your head. But the intentions of the show are so heartfelt",
    score: 65,
    show_id: m19.id,
    publication: "Variety",
    link_to_review: "http://variety.com/2017/legit/reviews/come-from-away-review-broadway-1202007241/"
    })

  cr83 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Adam Feldman",
    body: "A swelling heart of a musical...'Come from Away's' multiple narratives mostly have low stakes...When it touches on weightier concerns it falters; it is better at celebrating less consequential things...Under Christopher Ashley’s fluid direction, the 12 versatile actors form a true ensemble cast...Despite minor stumbles of craft, 'Come from Away' makes a persuasive case for the value of good intentions. For this kind of uplift you don’t need planes.",
    score: 80,
    show_id: m19.id,
    publication: "Time Out New York",
    link_to_review: "https://www.timeout.com/newyork/blog/broadway-review-come-from-away-takes-off-on-broadway-031217"
    })

  cr84 = CriticReview.create!({
    type: "CriticReview",
    author_name: "David Gordon",
    body: "A show that everybody needs to see...A thoroughly moving experience, brimming with humanity and tolerance. Admittedly, it's not without its flaws; Sankoff and Hein's sweet Celtic melodies have a tendency to blend in together, and the book could afford to flesh out certain situations with greater depth. But Ashley's fast-paced staging is mesmerizing, Devine's foot-stomping choreography is joyful, and an awesome onstage jam band plays Eriksmoen's driving orchestrations with excitement.",
    score: 80,
    show_id: m19.id,
    publication: "Theatermania",
    link_to_review: "http://www.theatermania.com/broadway/reviews/come-from-away_80331.html"
    })

  cr85 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Ben Brantley",
    body: "'Miss Saigon' is as mechanically melodramatic as any theatrical potboiler from the early 20th century...It’s not as if such stories don’t still have the power to stir suspense and tears. But this eventful, sung-through production out of London, directed by Laurence Connor, feels about as affecting as a historical diorama, albeit a lavishly appointed one. This despite the hard and dedicated work of its earnest cast.",
    score: 40,
    show_id: m20.id,
    publication: "The New York Times",
    link_to_review: "https://www.nytimes.com/2017/03/23/theater/miss-saigon-on-broadway-review.html"
    })

  cr86 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Zachery Stewart",
    body: "The show retains everything that made it noteworthy in the first place: Schönberg's ear-worm melodies, a massive ensemble of attractive dancers, and a helicopter landing onstage...Connor has opted for the more-is-more approach...When you look beyond the hulking scenery and 'American Idol'-style glory notes, you can see 'Miss Saigon' for what it really is: a bruising indictment of American self-pity in an age in which we still control the lion's share of wealth and power",
    score: 80,
    show_id: m20.id,
    publication: "Theatermania",
    link_to_review: "http://www.theatermania.com/broadway/reviews/miss-saigon_80480.html"
    })

  cr87 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Michael Dale",
    body: "True to its operatic source, the sung-through drama of 'Miss Saigon' is better conveyed via its sweeping, power-ballad-driven music than by its lyrics...Nevertheless, strong performances keep the proceedings stimulating, particularly that of Jon Jon Briones, especially charismatic as The Engineer...Powerfully voiced Eva Noblezada combines sensitive nobility and naiveté as Kim, and Alistair Brammer's rocker-belting Chris effectively displays the steady growth of PTSD",
    score: 70,
    show_id: m20.id,
    publication: "BroadwayWorld",
    link_to_review: "https://www.broadwayworld.com/article/BWW-Review-MISS-SAIGON-Gains-New-Relevance-As-Americans-Debate-Refugee-Issues-20170324"
    })

  cr88 = CriticReview.create!({
    type: "CriticReview",
    author_name: "David Cote",
    body: "It’s less a song-and-dance affair in any recognizable sense than it is an ’80s summer movie, weighed down with ridiculous special F/X...Boublil’s lyrics are awfully leaden and generic, and Schönberg churns out predictably pseudo-Asian passages throughout the score—pentatonic patterns, flutes and plucked strings—the musicological equivalent of yellowface...Diversity on Broadway should be celebrated, but give actors of color characters we all can care about",
    score: 35,
    show_id: m20.id,
    publication: "Time Out New York",
    link_to_review: "https://www.timeout.com/newyork/theater/miss-saigon-1"
    })

  cr89 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Jesse Green",
    body: "In condemning the exploitation of the Vietnamese while in alternate breaths exploiting them for Broadway-scale titillation, the show tries to have it both ways...It’s one thing to dramatize the degradation of women; it’s another thing to wink while doing it...The unrelieved hyper-emphasis of Laurence Connor’s direction basically squashes whatever might be good in 'Miss Saigon'...I am also sorry to report that the helicopter looks like a manatee.",
    score: 25,
    show_id: m20.id,
    publication: "Vulture",
    link_to_review: "http://www.vulture.com/2017/03/theater-review-why-are-we-in-miss-saigon.html"
    })

  cr90 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Ben Brantley",
    body: "Pretty much everything Midler does stops the show...Midler never pushes for effect. Her every bit of shtick has been precisely chosen and honed, and rather than forcing it down our throats, she makes us come to her to admire it. Much of the rest of Zaks’ production charges at us like a prancing elephant, festooned in shades of pink…A tone of sunny desperation isn’t out of keeping with what seems to be this production’s escapist mission, which is to deliver nostalgia with an exclamation point",
    score: 80,
    show_id: m21.id,
    publication: "The New York Times",
    link_to_review: "https://www.nytimes.com/2017/04/20/theater/hello-dolly-review-bette-midler.html"
    })

  cr91 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Charles Isherwood",
    body: "Midler serves up a star performance of glowing luster, rambunctious clowning and, on just a few occasions, surprising emotional delicacy...Midler transforms this cotton-candy cloud of a musical into a bona fide theatrical event...The aesthetic approach here is more a matter of loving restoration than reinvention...It remains a featherweight piece of pure escapism...A star shines best when there are strong talents around her to reflect her light, and Midler has been so surrounded here",
    score: 85,
    show_id: m21.id,
    publication: "Broadway News",
    link_to_review: "https://broadway.news/2017/04/20/review/hello-dolly-review/"
    })

  cr92 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Zachery Stewart",
    body: "Midler is dishing out comic gold in a joyous revival that will remind you why you fell in love with Broadway in the first place…‘Dolly’ is as catchy and irresistible as ever. Jerry Herman's hit-parade score will stick with you for weeks…The cast brings pristine comic timing to Michael Stewart's hilarious book…Midler embraces the audience and the energy it brings with a giant bear hug...A rare experience that even the most jaded theatergoer will have trouble resisting",
    score: 95,
    show_id: m21.id,
    publication: "Theatermania",
    link_to_review: "http://www.theatermania.com/broadway/reviews/hello-dolly_80778.html"
    })

  cr93 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Michael Dale",
    body: "Midler glows...as she lands schticky gags, sings with moxie, conveys sincerity and leads the colorful parade proudly strutting across the stage. That said, it must be stressed that under the care of director Jerry Zaks...the star of the evening is 'Hello, Dolly!.' Its reputation as a glitzy star vehicle may overshadow the fact that this is a superbly written work of bubbly fun and warm sentiment enhanced by a score full memorable melodies and smart lyrics",
    score: 90,
    show_id: m21.id,
    publication: "BroadwayWorld",
    link_to_review: "https://www.broadwayworld.com/article/BWW-Review-Bette-Midlers-The-Star-Attraction-But-HELLO-DOLLY-is-The-Star-20170423"
    })

  cr94 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Adam Feldman",
    body: "A blissful Broadway revival…The part of Dolly is exquisitely suited to Midler’s enormous warmth, savvy and drive. It’s hard to imagine a better match of actor and role: It is, in a word, perfection…‘Hello, Dolly!’ may be a vehicle for its star, but this revival treats it like a vintage Rolls-Royce. From the rousing overture on, everything about the production, directed with joyful aplomb by Jerry Zaks, gleams with old-fashioned charm…Jerry Herman’s exuberant score is a show-tune bonanza",
    score: 95,
    show_id: m21.id,
    publication: "Time Out New York",
    link_to_review: "https://www.timeout.com/newyork/theater/hello-dolly-2"
    })

  cr95 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Ben Brantley",
    body: "This big but tentative show doesn’t burst with flavor of any kind, not during its exposition-crammed first act. Only in its second half does the show acquire a distinct taste and it isn’t confectionary...The idea of macabre punishment seems to have acted as a stimulant on the creative faculties of everyone involved as the show turns increasingly surreal...Most gratifying is the transformation of Borle...Willy switches into dissing diva mode with a skip in his step and a fork in his tongue",
    score: 55,
    show_id: m22.id,
    publication: "The New York Times",
    link_to_review: "https://www.nytimes.com/2017/04/23/theater/charlie-and-the-chocolate-factory-review-broadway.html"
    })

  cr96 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Marilyn Stasio",
    body: "The uncanny darkness of Dahl’s imagination has been lightened and brightened in helmer Jack O’Brien’s mechanized production...While visually droll, too many of the gimmicks distract from the story and encourage the cartoon treatment of characters as caricatures. Happily, the character of Charlie Bucket escapes this mishandling...Ryan Foust was the best thing in the show...As played by Borle, Willy Wonka's much too charming and lacks the aura of stranger-danger",
    score: 40,
    show_id: m22.id,
    publication: "Variety",
    link_to_review: "http://variety.com/2017/legit/reviews/charlie-and-the-chocolate-factory-review-musical-broadway-1202392554/"
    })

  cr97 = CriticReview.create!({
    type: "CriticReview",
    author_name: "David Cote",
    body: "Joyless, shapeless and grating...a stale Necco wafer of a musical...O’Brien directs this dull, clunky adaptation of the book and movie with none of the wit of the former nor the dreamy wonder of the latter. Maybe kids will enjoy the gaudy design and veneer of sassy satire, but when you bite down, there’s only empty shell. Younger audiences can cheer, but adults are bound to conclude that 'Charlie' is like what happens with an Everlasting Gobstopper: lots of sucking",
    score: 35,
    show_id: m22.id,
    publication: "Time Out New York",
    link_to_review: "https://www.timeout.com/newyork/theater/charlie-and-the-chocolate-factory-1"
    })

  cr98 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Jesse Green",
    body: "A show like 'Charlie' ought to have been a treat...So why did the thing turn into a hideous, cheap-looking, melted Whitman’s sampler? The glib answer is: too many cooks...The longer answer begins with Dahl. On the page, 'Charlie' immediately reveals itself as a bad candidate for stage musicalization...I doubt this musical would have proved at all likable even if an apt style and thrilling visuals had been found for it. The story is too maudlin and, at the same time, too angry",
    score: 20,
    show_id: m22.id,
    publication: "Vulture",
    link_to_review: "http://www.vulture.com/2017/04/theater-review-a-wonka-thats-anything-but-sweet.html"
    })

  cr99 = CriticReview.create!({
    type: "CriticReview",
    author_name: "David Finkle",
    body: "There’s enough on-stage pizzazz to keep the pre-teens charged and cheering...I have to report that the sweets dispensed here have no appeal for me...The primary problem is with Greig’s prolific book, which, among other things, is all over the place...In regards to humor, of which ‘Charlie and the Chocolate Factory’ is totally devoid: book writer Greig is unable to land a single joke...Given the wafer-thin meager material, the cast members are pretty much left to fend for themselves",
    score: 35,
    show_id: m22.id,
    publication: "The Huffington Post",
    link_to_review: "https://www.huffingtonpost.com/entry/charlie-and-the-chocolate-factory-encounters-assembly_us_58fd7717e4b086ce589812c0"
    })

  cr100 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Ben Brantley",
    body: "The amnesiac title character of 'Anastasia' isn’t alone in suffering a serious identity crisis. The postcard-scenic show that bears her name has its own troubling case of multiple personality disorder...The show in which she appears trembles nonstop with internal conflicts during its drawn-out two-and-a-half hours...The cartoon version from 1997 is very fondly remembered by people who saw it as tweens...Those without such nostalgic insulation are likely to find this 'Anastasia' a chore",
    score: 40,
    show_id: m23.id,
    publication: "The New York Times",
    link_to_review: "https://www.nytimes.com/2017/04/24/theater/anastasia-review-broadway.html"
    })

  cr101 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Michael Dale",
    body: "No, that's not some forgotten Golden Age musical floating effervescently across the Broadhurst stage, but ‘Anastasia’ sure has the old-fashioned romantic feel of one…Director Darko Tresnjak's charming production is played on designer Alexander Dodge's simple unit set that frames storybook projections by Aaron Rhyne…While the story may be told in broad strokes, ‘Anastasia's’ attractively traditional score, good humor and winning performances make it a family-friendly delight",
    score: 80,
    show_id: m23.id,
    publication: "BroadwayWorld",
    link_to_review: "https://www.broadwayworld.com/article/BWW-Review-ANASTASIA-Brings-Romantic-Golden-Age-Style-Back-To-Broadway-20170425"
    })

  cr102 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Adam Feldman",
    body: "The happiest surprise is how consistently good the musical turns out to be. Smartly adapted by Terrence McNally from the 1997 animated film...with Stephen Flaherty and Lynn Ahrens impressively expanding their score...'Anastasia' is a sweeping adventure, romance and historical epic whose fine craftsmanship will satisfy musical-theater fans beyond the show’s ideal audience of teenage girls...'Anastasia' is the richest and fullest family show to hit Broadway in years",
    score: 85,
    show_id: m23.id,
    publication: "Time Out New York",
    link_to_review: "https://www.timeout.com/newyork/theater/anastasia"
    })

  cr103 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Jesse Green",
    body: "There’s something soothing (in the wrong way) about the team’s ability to follow all the templates of normal musical-making even while writing about something so abnormal...A score of singular characterlessness. McNally’s book, its structural improvements notwithstanding, is similarly bland...Tresnjak’s tonally schizophrenic staging only makes things worse...It bewilders me that in making stage musicals from animated movies, adapters seem to think they can remain outside history",
    score: 35,
    show_id: m23.id,
    publication: "Vulture",
    link_to_review: "http://www.vulture.com/2017/04/theater-review-anastasia-staged-in-vain.html"
    })

  cr104 = CriticReview.create!({
    type: "CriticReview",
    author_name: "Frank Rizzo",
    body: "A sumptuous fairy tale of a musical that should please the kids, satisfy the sentimental and comfort those who thought the old templates for musical comedy were passé. The broad strokes of the familiar—a romantic young couple, a villain in hot pursuit, comic supporting characters—can still be irresistible when combined with taste, craftsmanship and a willing suspension of disbelief. Director Tresnjak, together with much of that first-class design team, weave an enchanting spell",
    score: 85,
    show_id: m23.id,
    publication: "Variety",
    link_to_review: "http://variety.com/2017/legit/reviews/anastasia-review-broadway-musical-1202393569/"
    })


# ----------------------------------------------------------
# UserReview Seeds

    ur1 = UserReview.create!({
      type: "UserReview",
      author_name: u1.username,
      body: "This show looks AMAZING!!!  I want to see it so bad!  I’ve heard such great things about it.",
      score: 100,
      show_id: p6.id,
      author_id: u1.id})

    ur2 = UserReview.create!({
      type: "UserReview",
      author_name: u2.username,
      body: "Good Show. Made me laugh a lot.",
      score: 80,
      show_id: p6.id,
      author_id: u2.id})

    ur3 = UserReview.create!({
      type: "UserReview",
      author_name: u3.username,
      body: "THESE GUYS ARE HILARIOUS!",
      score: 90,
      show_id: p6.id,
      author_id: u3.id})

    ur4 = UserReview.create!({
      type: "UserReview",
      author_name: u4.username,
      body: "A great night at the theater",
      score: 85,
      show_id: p6.id,
      author_id: u1.id})

    ur5 = UserReview.create!({
      type: "UserReview",
      author_name: u5.username,
      body: "I don't understand the hype.  Funny, but not worth the price of a broadway ticket.",
      score: 60,
      show_id: p6.id,
      author_id: u5.id})

    ur6 = UserReview.create!({
      type: "UserReview",
      author_name: u6.username,
      body: "It's that chick from Downton! Nice surprise.",
      score: 80,
      show_id: p7.id,
      author_id: u6.id})

    ur7 = UserReview.create!({
      type: "UserReview",
      author_name: u7.username,
      body: "I definitely fell asleep during this one.",
      score: 50,
      show_id: p7.id,
      author_id: u7.id})

    ur8 = UserReview.create!({
      type: "UserReview",
      author_name: u8.username,
      body: "I love a good revival",
      score: 90,
      show_id: p7.id,
      author_id: u8.id})

    ur9 = UserReview.create!({
      type: "UserReview",
      author_name: u9.username,
      body: "I hate when TV people think they can actually act.",
      score: 70,
      show_id: p7.id,
      author_id: u9.id})

    ur10 = UserReview.create!({
      type: "UserReview",
      author_name: u10.username,
      body: "Definitely worth it if you can get a cheap ticket!",
      score: 85,
      show_id: p7.id,
      author_id: u10.id})

    ur11 = UserReview.create!({
      type: "UserReview",
      author_name: u11.username,
      body: "I don't get it...",
      score: 60,
      show_id: p8.id,
      author_id: u11.id})

    ur12 = UserReview.create!({
      type: "UserReview",
      author_name: u1.username,
      body: "JULIE TAYMOR CAN DO NO WRONG!",
      score: 90,
      show_id: p8.id,
      author_id: u1.id})

    ur13 = UserReview.create!({
      type: "UserReview",
      author_name: u3.username,
      body: "I don't understand the hype.  Confusing and not worth the price of a broadway ticket.",
      score: 50,
      show_id: p8.id,
      author_id: u3.id})

    ur14 = UserReview.create!({
      type: "UserReview",
      author_name: u4.username,
      body: "Yes. This is everything I want in a play.",
      score: 60,
      show_id: p8.id,
      author_id: u4.id})

    ur15 = UserReview.create!({
      type: "UserReview",
      author_name: u5.username,
      body: "An oldie but definitely a goodie",
      score: 80,
      show_id: m6.id,
      author_id: u5.id})

    ur16 = UserReview.create!({
      type: "UserReview",
      author_name: u6.username,
      body: "Who doesn't like Phantom? Honestly?!?!",
      score: 90,
      show_id: m6.id,
      author_id: u6.id})

    ur17 = UserReview.create!({
      type: "UserReview",
      author_name: u7.username,
      body: "This is a garbage musical",
      score: 20,
      show_id: m6.id,
      author_id: u7.id})

    ur18 = UserReview.create!({
      type: "UserReview",
      author_name: u8.username,
      body: "LOVE LOVE LOVE LOVE LOVE LOVE LOVE",
      score: 100,
      show_id: m6.id,
      author_id: u8.id})

    ur19 = UserReview.create!({
      type: "UserReview",
      author_name: u9.username,
      body: "The PHAAAAAAAAAAAAAAAANTOM of the opera is theeeeeeeeeeeeere",
      score: 93,
      show_id: m6.id,
      author_id: u9.id})

    ur20 = UserReview.create!({
      type: "UserReview",
      author_name: u10.username,
      body: "Better than the movie!",
      score: 83,
      show_id: m7.id,
      author_id: u10.id})

    ur21 = UserReview.create!({
      type: "UserReview",
      author_name: u11.username,
      body: "And all that Jazz",
      score: 91,
      show_id: m7.id,
      author_id: u10.id})

    ur22 = UserReview.create!({
      type: "UserReview",
      author_name: u2.username,
      body: "Still good after all these years",
      score: 89,
      show_id: m7.id,
      author_id: u2.id})

    ur23 = UserReview.create!({
      type: "UserReview",
      author_name: u3.username,
      body: "I'll be singing these tunes all week.",
      score: 91,
      show_id: m7.id,
      author_id: u3.id})

    ur24 = UserReview.create!({
      type: "UserReview",
      author_name: u4.username,
      body: "I could watch the cell block tango on repeat",
      score: 100,
      show_id: m7.id,
      author_id: u4.id})

    ur25 = UserReview.create!({
      type: "UserReview",
      author_name: u5.username,
      body: "It's just Hamlet with Lions. Great...",
      score: 70,
      show_id: m8.id,
      author_id: u5.id})

    ur26 = UserReview.create!({
      type: "UserReview",
      author_name: u6.username,
      body: "CAN YOU FEEL THE LOVE TONIGHT!",
      score: 93,
      show_id: m8.id,
      author_id: u6.id})

    ur27 = UserReview.create!({
      type: "UserReview",
      author_name: u7.username,
      body: "How can anyone give this show less than 100?",
      score: 100,
      show_id: m8.id,
      author_id: u7.id})

    ur28 = UserReview.create!({
      type: "UserReview",
      author_name: u8.username,
      body: "An elephant walks down the isles... AMAZING!",
      score: 95,
      show_id: m8.id,
      author_id: u8.id})

    ur29 = UserReview.create!({
      type: "UserReview",
      author_name: u9.username,
      body: "IT'S SOOOOOO GOOOOOD!",
      score: 100,
      show_id: m8.id,
      author_id: u9.id})

    ur30 = UserReview.create!({
      type: "UserReview",
      author_name: u10.username,
      body: "NO ONE'S GONNA BRING MAYYYYYYYYY DOWN!",
      score: 89,
      show_id: m9.id,
      author_id: u10.id})

    ur31 = UserReview.create!({
      type: "UserReview",
      author_name: u11.username,
      body: "That green chick can really sing!",
      score: 83,
      show_id: m9.id,
      author_id: u11.id})

    ur32 = UserReview.create!({
      type: "UserReview",
      author_name: u1.username,
      body: "There's a reason Avenue Q won the Tony...",
      score: 75,
      show_id: m9.id,
      author_id: u1.id})

    ur33 = UserReview.create!({
      type: "UserReview",
      author_name: u3.username,
      body: "Stephen Shwartz is a rock star.",
      score: 92,
      show_id: m9.id,
      author_id: u3.id})

    ur34 = UserReview.create!({
      type: "UserReview",
      author_name: u4.username,
      body: "I wish I could have seen the original cast.",
      score: 99,
      show_id: m9.id,
      author_id: u4.id})

    ur35 = UserReview.create!({
      type: "UserReview",
      author_name: u5.username,
      body: "Parker and Stone are briliant.",
      score: 100,
      show_id: m10.id,
      author_id: u5.id})

    ur36 = UserReview.create!({
      type: "UserReview",
      author_name: u6.username,
      body: "Can you believe this is the same guy that wrote FROZEN?",
      score: 97,
      show_id: m10.id,
      author_id: u6.id})

    ur37 = UserReview.create!({
      type: "UserReview",
      author_name: u7.username,
      body: "Give me more Josh Gad.",
      score: 100,
      show_id: m10.id,
      author_id: u7.id})

    ur38 = UserReview.create!({
      type: "UserReview",
      author_name: u8.username,
      body: "My parents were super offended, but I guess that happens.",
      score: 99,
      show_id: m10.id,
      author_id: u4.id})

    ur39 = UserReview.create!({
      type: "UserReview",
      author_name: u9.username,
      body: "hasa diga eebowai",
      score: 100,
      show_id: m10.id,
      author_id: u9.id})

    ur40 = UserReview.create!({
      type: "UserReview",
      author_name: u10.username,
      body: "Wayne Brady on Broadway!!!",
      score: 99,
      show_id: m11.id,
      author_id: u10.id})

    ur41 = UserReview.create!({
      type: "UserReview",
      author_name: u11.username,
      body: "Lots of dancing and big red boots. Awesome",
      score: 90,
      show_id: m11.id,
      author_id: u9.id})

    ur42 = UserReview.create!({
      type: "UserReview",
      author_name: u2.username,
      body: "cyndi lauper.  What else do you need?",
      score: 91,
      show_id: m11.id,
      author_id: u2.id})

    ur43 = UserReview.create!({
      type: "UserReview",
      author_name: u3.username,
      body: "This show has so much heart! <3 ",
      score: 98,
      show_id: m12.id,
      author_id: u9.id})

    ur44 = UserReview.create!({
      type: "UserReview",
      author_name: u4.username,
      body: "YAAAAAASSSSSS QUEEEEEEEN",
      score: 100,
      show_id: m12.id,
      author_id: u9.id})

    ur45 = UserReview.create!({
      type: "UserReview",
      author_name: u5.username,
      body: "More Carol King Please",
      score: 88,
      show_id: m12.id,
      author_id: u5.id})

    ur46 = UserReview.create!({
      type: "UserReview",
      author_name: u6.username,
      body: "I wanted to like this more",
      score: 70,
      show_id: m12.id,
      author_id: u6.id})

    ur47 = UserReview.create!({
      type: "UserReview",
      author_name: u7.username,
      body: "Really great date night",
      score: 82,
      show_id: m12.id,
      author_id: u7.id})

    ur48 = UserReview.create!({
      type: "UserReview",
      author_name: u8.username,
      body: "5 Stars, would definitely see again",
      score: 88,
      show_id: m12.id,
      author_id: u8.id})

    ur49 = UserReview.create!({
      type: "UserReview",
      author_name: u9.username,
      body: "The music is fantastic",
      score: 79,
      show_id: m12.id,
      author_id: u9.id})

    ur50 = UserReview.create!({
      type: "UserReview",
      author_name: u10.username,
      body: "More Disney, More Problems",
      score: 50,
      show_id: m13.id,
      author_id: u10.id})

    ur51 = UserReview.create!({
      type: "UserReview",
      author_name: u1.username,
      body: "This is one of my favorite movies, but the show is garbage",
      score: 60,
      show_id: m13.id,
      author_id: u1.id})

    ur52 = UserReview.create!({
      type: "UserReview",
      author_name: u2.username,
      body: "Great family fun!",
      score: 88,
      show_id: m13.id,
      author_id: u2.id})

    ur53 = UserReview.create!({
      type: "UserReview",
      author_name: u3.username,
      body: "A Whole NEW WOOOOOOOOORLD",
      score: 100,
      show_id: m13.id,
      author_id: u3.id})

    ur54 = UserReview.create!({
      type: "UserReview",
      author_name: u4.username,
      body: "YOU AINT NEVER HAD A FRIEND LIKE ME!",
      score: 100,
      show_id: m13.id,
      author_id: u4.id})

    ur55 = UserReview.create!({
      type: "UserReview",
      author_name: u5.username,
      body: "This is the best show I've ever seen",
      score: 100,
      show_id: m14.id,
      author_id: u5.id})

    ur56 = UserReview.create!({
      type: "UserReview",
      author_name: u6.username,
      body: "This is the best show I've ever seen",
      score: 100,
      show_id: m14.id,
      author_id: u6.id})

    ur57 = UserReview.create!({
      type: "UserReview",
      author_name: u7.username,
      body: "This is the best show I've ever seen",
      score: 100,
      show_id: m14.id,
      author_id: u7.id})

    ur58 = UserReview.create!({
      type: "UserReview",
      author_name: u8.username,
      body: "This is the best show I've ever seen",
      score: 100,
      show_id: m14.id,
      author_id: u8.id})

    ur59 = UserReview.create!({
      type: "UserReview",
      author_name: u9.username,
      body: "This is the best show I've ever seen",
      score: 100,
      show_id: m14.id,
      author_id: u9.id})

    ur60 = UserReview.create!({
      type: "UserReview",
      author_name: u10.username,
      body: "These kids are so talented.",
      score: 89,
      show_id: m15.id,
      author_id: u10.id})

    ur61 = UserReview.create!({
      type: "UserReview",
      author_name: u11.username,
      body: "Would have been better with Jack Black",
      score: 65,
      show_id: m15.id,
      author_id: u11.id})

    ur62 = UserReview.create!({
      type: "UserReview",
      author_name: u2.username,
      body: "I loved the movie, and I loved the show! Bravo.",
      score: 93,
      show_id: m15.id,
      author_id: u2.id})

    ur63 = UserReview.create!({
      type: "UserReview",
      author_name: u3.username,
      body: "I wish I could play guitar like that",
      score: 100,
      show_id: m15.id,
      author_id: u3.id})

    ur64 = UserReview.create!({
      type: "UserReview",
      author_name: u4.username,
      body: "Oh great... another movie being made into a musical.",
      score: 60,
      show_id: m15.id,
      author_id: u4.id})

    ur65 = UserReview.create!({
      type: "UserReview",
      author_name: u5.username,
      body: "Songs, heartbreak and pie.  Count me in.",
      score: 91,
      show_id: m16.id,
      author_id: u5.id})

    ur66 = UserReview.create!({
      type: "UserReview",
      author_name: u6.username,
      body: "It's not the same without Jessie Mueler.",
      score: 70,
      show_id: m16.id,
      author_id: u6.id})

    ur67 = UserReview.create!({
      type: "UserReview",
      author_name: u7.username,
      body: "It's very charming. Got tickets for a great price on TDF",
      score: 88,
      show_id: m16.id,
      author_id: u7.id})

    ur68 = UserReview.create!({
      type: "UserReview",
      author_name: u8.username,
      body: "I definitely fell asleep.  Pretty music though.",
      score: 71,
      show_id: m16.id,
      author_id: u8.id})

    ur69 = UserReview.create!({
      type: "UserReview",
      author_name: u9.username,
      body: "Seeing this in 3 weeks when I visit New York!",
      score: 100,
      show_id: m16.id,
      author_id: u9.id})

    ur70 = UserReview.create!({
      type: "UserReview",
      author_name: u10.username,
      body: "Another unnecessary revival.",
      score: 50,
      show_id: m17.id,
      author_id: u10.id})

    ur71 = UserReview.create!({
      type: "UserReview",
      author_name: u1.username,
      body: "Nothing brings people together like a bad show.",
      score: 20,
      show_id: m17.id,
      author_id: u1.id})

    ur72 = UserReview.create!({
      type: "UserReview",
      author_name: u2.username,
      body: "Why Webber... Why!?!?!?",
      score: 33,
      show_id: m17.id,
      author_id: u2.id})

    ur73 = UserReview.create!({
      type: "UserReview",
      author_name: u3.username,
      body: "What a waste of money",
      score: 12,
      show_id: m17.id,
      author_id: u10.id})

    ur74 = UserReview.create!({
      type: "UserReview",
      author_name: u4.username,
      body: "MEMORY!!! I love that song.",
      score: 100,
      show_id: m17.id,
      author_id: u4.id})

    ur75 = UserReview.create!({
      type: "UserReview",
      author_name: u5.username,
      body: "Ben Platt is %^$@ing AMAZING!",
      score: 100,
      show_id: m18.id,
      author_id: u5.id})

    ur76 = UserReview.create!({
      type: "UserReview",
      author_name: u6.username,
      body: "I saw this at Second Stage. It's fantastic.",
      score: 100,
      show_id: m18.id,
      author_id: u6.id})

    ur77 = UserReview.create!({
      type: "UserReview",
      author_name: u7.username,
      body: "I wish I could afford tickets to see this.  I love the music.",
      score: 100,
      show_id: m18.id,
      author_id: u7.id})

    ur78 = UserReview.create!({
      type: "UserReview",
      author_name: u8.username,
      body: "SO much better than La La Land.",
      score: 100,
      show_id: m18.id,
      author_id: u8.id})

    ur79 = UserReview.create!({
      type: "UserReview",
      author_name: u9.username,
      body: "Pasek and Paul can do no wrong... Accept for that weird circus movie they have coming out.",
      score: 100,
      show_id: m18.id,
      author_id: u9.id})

    ur80 = UserReview.create!({
      type: "UserReview",
      author_name: u10.username,
      body: "A Canadian Musical... Color me interested",
      score: 87,
      show_id: m19.id,
      author_id: u10.id})

    ur81 = UserReview.create!({
      type: "UserReview",
      author_name: u11.username,
      body: "What a breautiful story.",
      score: 90,
      show_id: m19.id,
      author_id: u11.id})

    ur82 = UserReview.create!({
      type: "UserReview",
      author_name: u2.username,
      body: "It's nice to see theater about good people.",
      score: 93,
      show_id: m19.id,
      author_id: u2.id})

    ur83 = UserReview.create!({
      type: "UserReview",
      author_name: u3.username,
      body: "A triumph of the human spirit",
      score: 82,
      show_id: m19.id,
      author_id: u3.id})

    ur84 = UserReview.create!({
      type: "UserReview",
      author_name: u4.username,
      body: "I wanted to clap, but all the songs went one into the next.",
      score: 70,
      show_id: m19.id,
      author_id: u4.id})

    ur85 = UserReview.create!({
      type: "UserReview",
      author_name: u5.username,
      body: "I left at intermission",
      score: 50,
      show_id: m20.id,
      author_id: u5.id})

    ur86 = UserReview.create!({
      type: "UserReview",
      author_name: u6.username,
      body: "It's like Les Mis in Vietnam!",
      score: 75,
      show_id: m20.id,
      author_id: u6.id})

    ur87 = UserReview.create!({
      type: "UserReview",
      author_name: u7.username,
      body: "WHY GOD!?!?! WHY THIS SHOW??",
      score: 20,
      show_id: m20.id,
      author_id: u7.id})

    ur88 = UserReview.create!({
      type: "UserReview",
      author_name: u8.username,
      body: "This score makes me weep!",
      score: 100,
      show_id: m20.id,
      author_id: u8.id})

    ur89 = UserReview.create!({
      type: "UserReview",
      author_name: u9.username,
      body: "There was a helicopter on stage. Nuff said.",
      score: 90,
      show_id: m20.id,
      author_id: u9.id})

    ur90 = UserReview.create!({
      type: "UserReview",
      author_name: u10.username,
      body: "Bette Middler is everything and more",
      score: 100,
      show_id: m21.id,
      author_id: u10.id})

    ur91 = UserReview.create!({
      type: "UserReview",
      author_name: u1.username,
      body: "Hello Dolly! It's so nice to have you back where you belong!",
      score: 100,
      show_id: m21.id,
      author_id: u1.id})

    ur92 = UserReview.create!({
      type: "UserReview",
      author_name: u2.username,
      body: "You're looking swell Dolly!",
      score: 100,
      show_id: m21.id,
      author_id: u2.id})

    ur93 = UserReview.create!({
      type: "UserReview",
      author_name: u3.username,
      body: "Put on your sunday clothes when you feel down and out!",
      score: 99,
      show_id: m21.id,
      author_id: u10.id})

    ur94 = UserReview.create!({
      type: "UserReview",
      author_name: u4.username,
      body: "Bette Middler is great and everything... But Gavin Creel THO!",
      score: 100,
      show_id: m21.id,
      author_id: u4.id})

    ur95 = UserReview.create!({
      type: "UserReview",
      author_name: u5.username,
      body: "Great movie. Horrible musical",
      score: 20,
      show_id: m22.id,
      author_id: u5.id})

    ur96 = UserReview.create!({
      type: "UserReview",
      author_name: u6.username,
      body: "Cheer up Charlie! ",
      score: 60,
      show_id: m22.id,
      author_id: u6.id})

    ur97 = UserReview.create!({
      type: "UserReview",
      author_name: u7.username,
      body: "I just want to watch Gene Wilder, is that so wrong??",
      score: 70,
      show_id: m22.id,
      author_id: u7.id})

    ur98 = UserReview.create!({
      type: "UserReview",
      author_name: u8.username,
      body: "Don’t forget what happened to the man who suddenly got everything he wanted.",
      score: 99,
      show_id: m22.id,
      author_id: u8.id})

    ur99 = UserReview.create!({
      type: "UserReview",
      author_name: u9.username,
      body: "He lived Happily Ever After",
      score: 20,
      show_id: m22.id,
      author_id: u9.id})

    ur100 = UserReview.create!({
      type: "UserReview",
      author_name: u10.username,
      body: "Bring back the bat!",
      score: 75,
      show_id: m23.id,
      author_id: u10.id})

    ur101 = UserReview.create!({
      type: "UserReview",
      author_name: u1.username,
      body: "I just love Ahrens and Flaherty.",
      score: 90,
      show_id: m23.id,
      author_id: u1.id})

    ur102 = UserReview.create!({
      type: "UserReview",
      author_name: u2.username,
      body: "Have you heard?!? There's a rumour in St. Petersburg!",
      score: 100,
      show_id: m23.id,
      author_id: u2.id})

    ur103 = UserReview.create!({
      type: "UserReview",
      author_name: u3.username,
      body: "Once Upon a December",
      score: 75,
      show_id: m23.id,
      author_id: u3.id})

    ur104 = UserReview.create!({
      type: "UserReview",
      author_name: u10.username,
      body: "On a journey to the paaaaaaaaaaaast",
      score: 75,
      show_id: m23.id,
      author_id: u10.id})

end
