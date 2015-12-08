require_relative "config"

Category.delete_all
Article.delete_all
User.delete_all

gear = Category.create({name: "Gear"})
album_reviews = Category.create({name: "Album Reviews"})
show_reviews = Category.create({name: "Show Reviews"})
band_members = Category.create({name: "Band Members"})


a1 = Article.create({
	post: "Interviews with Springsteen and his guitar techs indicate that the Esquire was a 1953 or ’54 model (note that the post-factory addition of a neck pickup makes this normally single-pickup Esquire look like a two-pickup Telecaster), and its — heavily worn — transparent butterscotch blonde finish and black pickguard would seem to uphold that notion. The neck, however, wears the “butterfly” string guide for the B and E strings positioned roughly in line with the A-string tuner post, which replaced the round guide that was more distant from the nut in mid-’56, along with the logo decal at the far side of this guide, a change made at the same time. Myriad interviews also indicate that the neck has the soft-V profile that came back into fashion at Fender in late ’55 and remained largely through ’57 (early ’50-’51 necks were also V’d, or “boat necks,” but were thicker overall). All of this points at a neck made later than ’53 or ’54, and although an earlier neck could have been modified to these specs, the correct answer is usually the simplest: a later neck was added to an earlier body (just guessing here folks, but logic dictates that there might be something in this speculation).",
	subject: "Bruce's Telecaster", 
	img_url:"http://www.springsteeninformationcenter.com/wp-content/uploads/2009/03/newsrockhallguitars1.jpg",
	post_date: DateTime.now
	})

a2 = Article.create({
	post: "Occasionally, a record appears that changes fundamentally the way we hear rock & roll, the way it's recorded, the way it's played. Such records — Jimi Hendrix's Are You Experienced, Bob Dylan's \"Like a Rolling Stone,\" Van Morrison's Astral Weeks, Who's Next, The Band — force response, both from the musical community and the audience. To me, these are the records justifiably called classics, and I have no doubt that Bruce Springsteen's Darkness on the Edge of Town will someday fit as naturally within that list as the Rolling Stones'(I Can't Get No) Satisfaction or Sly and the Family Stone's \"Dance to the Music.\" One ought to be wary of making such claims, but in this case, they're justified at every level. In the area of production, Darkness on the Edge of Town is nothing less than a breakthrough. Springsteen — with coproducer Jon Landau, engineer Jimmy Iovine and Charles Plotkin, who helped Iovine mix the LP — is the first artist to fuse the spacious clarity of Los Angeles record making and the raw density of English productions. That's the major reason why the result is so different from Born to Run's Phil Spector wall of sound. On the earlier album, for instance, the individual instruments were deliberately obscured to create the sense of one huge instrument. Here, the same power is achieved more naturally. Most obviously, Max Weinberg's drumming has enormous size, a heartbeat with the same kind of space it occupies onstage (the only other place I've heard a bass drum sound this big).", 
	subject: "Born to Run Review", 
	img_url: "http://1.bp.blogspot.com/-ZRY-xN90BIQ/TgO8xFwaZAI/AAAAAAAAAVs/TlunT6C6Qbk/s1600/6_7_small.jpg",
	post_date: DateTime.now
	})

a3 = Article.create({
	post: "For almost two decades Clarence Clemons was the source of the driving tenor saxophone riffs in Bruce Springsteen’s E Street Band. Known as the King of the World, the Master of Disaster, and especially the Big Man, Clemons provided energetic backup vocals and music on many of Springsteen’s best-selling albums. Onstage, the towering Clemons proved the perfect counterpart to the wiry Springsteen throughout years of hectic touring. Down Beat contributor Don Palmer noted in 1984 that the Big Man was “the troubleshooter, the enforcer, a bloodline to the [rhythm and blues] ancestors” and offered “legitimacy and a sense of cohesion for what might otherwise be just another band trying to cover an attitude.”
		Clemons’s long dedication to the E Street Band has not hampered his solo career, however. Since 1981 he has been cutting albums on his own, and he has worked with other rock and roll and rhythm and blues entertainers as well. Freed from his commitment to the E Street Band in 1989, Clemons was even more excited about forging his own signature style. He noted in the Phoenix Gazette at the time that working with Springsteen had a number of drawbacks. “I was constantly in a shadow,” he recalled. “I wasn’t playing what I wanted to hear; it was always what [Springsteen] wanted to hear.… That’s not what I want to do in my life; I didn’t want to be a dwindling sideman. So I’m pretty happy … now. [Leaving the E Street Band] gives me the opportunity to go out and become Clarence Clemons.", 
	subject: "The Big Man In The Band", 
	img_url: "http://brucespringsteen.net/wp-content/uploads/2012/02/clarence.jpg",
	post_date: DateTime.now
	})

a4 = Article.create({
	post: "Epic is one of those superlatives whose meaning has been watered down in our culture to the point of near-uselessness: like awesome,hilarious or superstar. But to blazes with hyperbole: Tuesday night’s concert by Bruce Springsteen and the E Street Band was epic, arguably their best local show since the mid-’80s glory days. Forget the notion of a band cruising on a tour’s second leg, this sold-out Honda Center gig was longer, more energetic, more fun, more … everything than Springsteen’s L.A. show in April. And that one was very good. No, this 28-song, 3½-hour intermissionless marathon brought old fans back to the times of a quarter-century and more ago when singer, band and crowd bonded in ways rarely experienced in rock history. Sheer symbiosis.Something for everybody -- another overused phrase that abuts cliche, except when it’s entirely merited. Consider: The oldest-school fans got songs from the first two albums, the die-hards got deep cuts, the pop fans got “Hungry Heart” and “Dancing in the Dark,” the kiddies got “Waitin’ on a Sunny Day,” the folkies got tunes recalling or inspired by Seeger and Guthrie, the scholarly got Steinbeck, the soulsters got “Raise Your Hand,” and the catnip encore of megahits -- including “Santa Claus Is Comin’ to Town” -- was for, well, everyone. Springsteen even regaled the crowd in a funny story, a tactic rarely deployed in recent years.", 
	subject: "Bruce In L.A.", 
	img_url: "http://assets.rollingstone.com/assets/images/story/50-greatest-live-acts-right-now-20130731/1000x600/20130729-bruce-springsteen-600-1375130708.jpg",
	post_date: DateTime.now
	})

a1.categories.push(gear)
a2.categories.push(album_reviews)
a3.categories.push(band_members)
a4.categories.push(show_reviews)

user = User.create({
	password: "whatever", 
	password_confirmation: "whatever", 
	user_name: "Chris", 
	location: "NYC", 
	join_date: DateTime.now
})

user2 = User.create({
	password: "admin", 
	password_confirmation: "admin", 
	user_name: "Admin", 
	location: "NYC", 
	join_date: DateTime.now,
	avatar_url: "http://findicons.com/files/icons/1072/face_avatars/300/i04.png"
})

# user.articles.create({
# 	post: "Hello",
# 	img_url: "Image",
# 	post_date: DateTime.now,
# 	subject: "Reviews"
# })

user.articles.push(a1)
user.articles.push(a2)
user.articles.push(a3)
user2.articles.push(a4)