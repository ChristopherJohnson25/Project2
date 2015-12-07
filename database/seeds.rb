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
	post: "## Born to Run  
	Occasionally, a record appears that changes fundamentally the way we hear rock & roll, the way it's recorded, the way it's played. Such records — Jimi Hendrix's Are You Experienced, Bob Dylan's \"Like a Rolling Stone,\" Van Morrison's Astral Weeks, Who's Next, The Band — force response, both from the musical community and the audience. To me, these are the records justifiably called classics, and I have no doubt that Bruce Springsteen's Darkness on the Edge of Town will someday fit as naturally within that list as the Rolling Stones'(I Can't Get No) Satisfaction or Sly and the Family Stone's \"Dance to the Music.\" One ought to be wary of making such claims, but in this case, they're justified at every level. In the area of production, Darkness on the Edge of Town is nothing less than a breakthrough. Springsteen — with coproducer Jon Landau, engineer Jimmy Iovine and Charles Plotkin, who helped Iovine mix the LP — is the first artist to fuse the spacious clarity of Los Angeles record making and the raw density of English productions. That's the major reason why the result is so different from Born to Run's Phil Spector wall of sound. On the earlier album, for instance, the individual instruments were deliberately obscured to create the sense of one huge instrument. Here, the same power is achieved more naturally. Most obviously, Max Weinberg's drumming has enormous size, a heartbeat with the same kind of space it occupies onstage (the only other place I've heard a bass drum sound this big).", 
	subject: "Born to Run Review", 
	img_url: "http://1.bp.blogspot.com/-ZRY-xN90BIQ/TgO8xFwaZAI/AAAAAAAAAVs/TlunT6C6Qbk/s1600/6_7_small.jpg",
	post_date: DateTime.now
	})

a3 = Article.create({
	post: "###THE BIG MAN IN THE BAND

		So who is the “Minister of Soul” and the “Secretary of the Brotherhood?” In concert introductions Bruce would ask: “Do I have to say his name?” to which the audience would dutifully reply with only one word: “Clarence!”

	Clarence Clemons, who at the age of nine received as a Christmas present his first saxophone in lieu of a train set, was born in Norfolk, Virginia, on January 11, 1942. His early love of football nearly led to another career, but, influenced by legendary players such as King Curtis and Junior Walker, it was the sax in which Clarence found his true calling.

	Like other E Streeters, Clarence played with other bands around the Asbury Park, New Jersey area before meeting Bruce. The meeting, and his subsequent entry into the E Street Band, is the stuff of legend: a stormy night, the Bruce Springsteen Band at a club called Student Prince, Clarence bursting through the door that literally blew off its hinges and stating his desire to play in the band. How much is truth and how much exaggeration seems irrelevant; suffice to say that, from the moment “the Big Man joined the Band,” the E Street Band had found its soul.

	The sound of Clarence’s sax reverberates through so many E Street classics — “Born to Run,” “Rosalita,” “Prove it All Night,” “Bobby Jean,” “Spirit in the Night,” to name just a few — it is impossible to imagine what they would have been without Clarence. And his solo in “Jungleland” is nothing short of sheer brilliance, an epic and signature performance in Clarence’s long and storied career with the E Street Band.", 
	subject: "The Big Man", 
	img_url: "http://brucespringsteen.net/wp-content/uploads/2012/02/clarence.jpg",
	post_date: DateTime.now
	})

a1.categories.push(gear)
a2.categories.push(album_reviews)
a3.categories.push(band_members)

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