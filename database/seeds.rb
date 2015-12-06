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
	img_url: "http://assets.rollingstone.com/assets/images/album_review/202b550cdc5c8b25dcda9f91676fda6558754cff.jpeg",
	post_date: DateTime.now
	})

a1.categories.push(gear)
a2.categories.push(album_reviews)

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