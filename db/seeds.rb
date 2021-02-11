

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tag.create(tag_name: "meme")

Tag.create(tag_name: "personal")

Tag.create(tag_name: "queer")

Tag.create(tag_name: "research")

Tag.create(tag_name: "comedy")

Tag.create(tag_name: "autobiographical")

Tag.create(tag_name: "poetry")

Tag.create(tag_name: "novel")

Tag.create(tag_name: "short_story")

Tag.create(tag_name: "essay")

Tag.create(tag_name: "not_explicitly_autistic")

Tag.create(tag_name: "by_autistic_creator")

Tag.create(tag_name: "article")

Tag.create(tag_name: "academic")

Tag.create(tag_name: "book")

Tag.create(tag_name: "twitter")

Tag.create(tag_name: "tiktok")

Tag.create(tag_name: "instagram")

Tag.create(tag_name: "youtube")

Tag.create(tag_name: "TV")

Tag.create(tag_name: "movie")


# 1
Creator.create(
    first_name:"Barb",
    last_name:"Cook",
    autistic: true,
    url: "https://barbcook.com.au/",
    bio: "Barb Cook - Editor in Chief Formally identified on the autism spectrum along with ADHD and phonological dyslexia in 2009 at the age of 40, Barb is founder and editor in chief of Spectrum Women Magazine and editor and co-author of Spectrum Women: Walking to the Beat of Autism.",
    pronouns: "she/her/hers"
)
# 2
Creator.create(
    first_name:"Michelle",
    last_name:"Garnett",
    autistic: false,
    title: "Dr.",
    url: "https://mindsandhearts.net/dr-michelle-garnett/",
    bio: "Dr Michelle Garnett PhD is a clinical psychologist and founder of Minds & Hearts, a clinic specialising in Autism Spectrum Disorders (ASD) in Brisbane, Australia.",
    pronouns: "she/her/hers"
)

# 3
Creator.create(
    first_name:"Camilla",
    last_name:"Pang",
    autistic: true,
    title: "PhD",
    url: "https://www.camillapang.com/",
    bio: "Camilla Sih Mai Pang is a British computational biologist, writer and autism advocate. In 2020 she was awarded the Royal Society Prizes for Science Books for her memoir Explaining Humans: What Science Can Teach Us about Life, Love and Relationships.",
    pronouns: "she/her/hers"
)

#4
Creator.create(
    first_name:"Ira",
    last_name:"Kraemer",
    autistic: true,
    url: "https://autisticscienceperson.com/",
    bio: "Ira Kraemer is an autistic disability advocate. They serve on multiple disability committees and speak on hyperacusis and auditory sensitivity. Ira is a campaigner for accessibility, disability rights, and acceptance of autistic people in this world.",
    pronouns: "they/them/theirs"
)

#5
Creator.create(
    first_name:"M. Remi",
    last_name:"Yergeau",
    autistic: true,
    url: "https://autisticscienceperson.com/",
    bio: "Remi Yergeau is an associate professor of Digital Studies and English and associate director of the Digital Studies Institute at the University of Michigan. They are an autistic academic, and their scholarly interests include writing studies, digital studies, queer rhetorics, disability studies, and theories of mind.",
    pronouns: "they/them/theirs"
)

#6
Creator.create(
    first_name:"Ann",
    last_name:"Memmott",
    autistic: true,
    url: "https://twitter.com/AnnMemmott",
    pronouns: "she/they"
)

Book.create(
    title: "Spectrum Women", 
    genre: "Autobiographical", 
    url: "https://www.goodreads.com/book/show/38884913-spectrum-women",
    img_url: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1534033798l/38884913._SX318_.jpg", 
    tag_ids: %w[2 6 9 15],
    creator_ids: %w[1 2],
    description: "Barb Cook and 14 other autistic women describe life from a female autistic perspective, and present empowering, helpful and supportive insights from their personal experience for fellow autistic women. Michelle Garnett's comments validate and expand the experiences described from a clinician's perspective, and provide extensive recommendations."
)

Book.create(
    title: "An Outsider's Guide to Humans", 
    genre: "Science", 
    url: "https://www.goodreads.com/book/show/52559342-an-outsider-s-guide-to-humans",
    img_url: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1585179141l/52559342.jpg", 
    tag_ids: %w[4 8 12 15],
    creator_ids: %w[3],
    description: "Diagnosed with Autism Spectrum Disorder at the age of eight, Camilla Pang struggled to understand the world around her. Desperate for a solution, she asked her mother if there was an instruction manual for humans that she could consult. With no blueprint to life, Pang began to create her own, using the language she understands best: science."
)

Book.create(
    title: "Authoring Autism: On Rhetoric and Neurological Queerness", 
    genre: "Academia", 
    url: "https://www.goodreads.com/en/book/show/33673918-authoring-autism",
    img_url: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1510777050l/33673918._SY475_.jpg", 
    tag_ids: %w[3 4 12 14 15],
    creator_ids: %w[5],
    description: "In Authoring Autism Melanie Yergeau defines neurodivergence as an identity—neuroqueerness—rather than an impairment. Using a queer theory framework, Yergeau notes the stereotypes that deny autistic people their humanity and the chance to define themselves while also challenging cognitive studies scholarship and its reification of the neurological passivity of autistics."
)

Article.create(
    title: "Autistic People Care Too Much, Research Says", 
    genre: "Science", 
    url: "https://neuroclastic.com/2020/11/07/autistic-people-care-too-much-research-says/",
    img_url: "https://i2.wp.com/neuroclastic.com/wp-content/uploads/2020/11/BunnyImage_AutisticPeopleAreTooGenerous.jpg?w=1600&ssl=1", 
    tag_ids: %w[4 12 13],
    creator_ids: %w[4],
    description: "A research article concluded that autistic people cared too much about others, citing inflexibility to be an issue by following moral code even when individual gains are high. In my personal opinion as an autistic person, I would argue that the non-autistic participants did not weight the negative consequences of their actions enough, and simply chose individual benefit over other people."
)

SocialMediaAccount.create(
    platform: "Twitter",
    handle: "@AnnMemmott", 
    url: "https://twitter.com/AnnMemmott",
    img_url: "https://pbs.twimg.com/profile_images/1231855713955262466/HN5QgOy3_400x400.jpg", 
    genre: "Research critique",
    tag_ids: %w[3 4 12 16],
    creator_ids: %w[6],
    bio: "Drinker of tea.
    Excellent at not climbing mountains.
    Views my own. Tough subjects on this personal page.
    Autistic Elder. Masters dissertation.
    She/they."
)

Feedback.create(
    title: "Example feedback response",
    feedback: "I want to see more movies on here", 
    name: "Billius"
)






