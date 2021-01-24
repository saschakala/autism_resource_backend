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

Tag.create(tag_name: "created_by_autistic")

Tag.create(tag_name: "article")

# 1
Creator.create(
    first_name:"Barb",
    last_name:"Cook",
    autistic: true,
    url: "https://barbcook.com.au/"
)
# 2
Creator.create(
    first_name:"Michelle",
    last_name:"Garnett",
    autistic: false,
    title: "Dr.",
    url: "https://mindsandhearts.net/dr-michelle-garnett/"
)

# 3
Creator.create(
    first_name:"Camilla",
    last_name:"Pang",
    autistic: true,
    title: "PhD",
    url: "https://www.camillapang.com/"
)

#4
Creator.create(
    first_name:"Ira",
    last_name:"Kraemer",
    autistic: true,
    url: "https://autisticscienceperson.com/"
)

Source.create(
    source_type: "Book",
    title: "Spectrum Women", 
    genre: "Autobiographical", 
    url: "https://www.goodreads.com/book/show/38884913-spectrum-women",
    img_url: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1534033798l/38884913._SX318_.jpg", 
    tag_ids: %w[2 6 9],
    creator_ids: %w[1 2],
    description: "Barb Cook and 14 other autistic women describe life from a female autistic perspective, and present empowering, helpful and supportive insights from their personal experience for fellow autistic women. Michelle Garnett's comments validate and expand the experiences described from a clinician's perspective, and provide extensive recommendations."
)

Source.create(
    source_type: "Book",
    title: "An Outsider's Guide to Humans", 
    genre: "Science", 
    url: "https://www.goodreads.com/book/show/52559342-an-outsider-s-guide-to-humans",
    img_url: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1585179141l/52559342.jpg", 
    tag_ids: %w[4 8 12],
    creator_ids: %w[3],
    description: "Diagnosed with Autism Spectrum Disorder at the age of eight, Camilla Pang struggled to understand the world around her. Desperate for a solution, she asked her mother if there was an instruction manual for humans that she could consult. With no blueprint to life, Pang began to create her own, using the language she understands best: science."
)

Source.create(
    source_type: "Article",
    title: "Autistic People Care Too Much, Research Says", 
    genre: "Science", 
    url: "https://neuroclastic.com/2020/11/07/autistic-people-care-too-much-research-says/",
    img_url: "https://i2.wp.com/neuroclastic.com/wp-content/uploads/2020/11/BunnyImage_AutisticPeopleAreTooGenerous.jpg?w=1600&ssl=1", 
    tag_ids: %w[4 12 13],
    creator_ids: %w[4],
    description: "A research article concluded that autistic people cared too much about others, citing inflexibility to be an issue by following moral code even when individual gains are high. In my personal opinion as an autistic person, I would argue that the non-autistic participants did not weight the negative consequences of their actions enough, and simply chose individual benefit over other people."
)





