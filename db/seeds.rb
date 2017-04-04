Story.create!(title: "Fahfrd and the Grey Mouser",
             tagline: "Classic Adventure!",
             image:"https://d2lzb5v10mb0lj.cloudfront.net/covers/600/10/10686.jpg",
             firstpanel: 1
             )

Story.create!(title: "Shogun",
             tagline: "Battle for Japan",
             image: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Minamoto_no_Yoritomo.jpg/220px-Minamoto_no_Yoritomo.jpg",
             firstpanel: 3
             )

Panel.create(story_id: 1,
             image: "https://s-media-cache-ak0.pinimg.com/originals/c8/84/76/c88476a91f0084629ad5dbfcd9ab9335.jpg",
             body_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tristique sollicitudin luctus. Ut diam libero, maximus vitae consequat at, tristique sodales massa. Vestibulum viverra tincidunt dui, vitae ultricies diam sodales varius. Phasellus blandit tortor nisi, in dapibus leo hendrerit in.",
             )

Panel.create(story_id: 1,
             image: "https://static.pexels.com/photos/6548/cold-snow-winter-mountain.jpeg",
             body_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tristique sollicitudin luctus. Ut diam libero, maximus vitae consequat at, tristique sodales massa. Vestibulum viverra tincidunt dui, vitae ultricies diam sodales varius. Phasellus blandit tortor nisi, in dapibus leo hendrerit in.",
             )

Panel.create(story_id: 1,
             image: "http://2.bp.blogspot.com/_tXIhwKxOXb8/TT7l0f88K-I/AAAAAAAAALc/R6E4ZLRKn1M/s1600/69622021.jpg",
             body_text: "You fought!",
             )

Panel.create(story_id: 1,
             image: "http://images.clipartpanda.com/girl-running-away-clipart-74058338.jpg",
             body_text: "You fled!",
             )

Panel.create(story_id: 2,
             image: "http://www.myabandonware.com/media/screenshots/j/james-clavells-shogun-gp/james-clavells-shogun_7.gif",
             body_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tristique sollicitudin luctus. Ut diam libero, maximus vitae consequat at, tristique sodales massa. Vestibulum viverra tincidunt dui, vitae ultricies diam sodales varius. Phasellus blandit tortor nisi, in dapibus leo hendrerit in.",
             )

Choice.create(panel_id: 1,
              path_to: 2,
              body_text: "Lorem Ipsum",
              story_id: 1,
              )

Choice.create(panel_id: 2,
              path_to: 3,
              body_text: "Fight",
              story_id: 1,
              )

Choice.create(panel_id: 2,
              path_to: 4,
              body_text: "Flee",
              story_id: 1,
              )

Choice.create(panel_id: 1,
              path_to: 0,
              body_text: "test",
              story_id: 2,
              )
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
