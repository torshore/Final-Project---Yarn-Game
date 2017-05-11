Story.create!(title: "Fahfrd and the Grey Mouser",
             tagline: "Classic Adventure!",
             image:"https://d2lzb5v10mb0lj.cloudfront.net/covers/600/10/10686.jpg",
             firstpanel: 1
             )

Panel.create(story_id: 1,
             image: "https://s-media-cache-ak0.pinimg.com/originals/c8/84/76/c88476a91f0084629ad5dbfcd9ab9335.jpg",
             body_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tristique sollicitudin luctus. Ut diam libero, maximus vitae consequat at, tristique sodales massa. Vestibulum viverra tincidunt dui, vitae ultricies diam sodales varius. Phasellus blandit tortor nisi, in dapibus leo hendrerit in.",
             panel_title: "Fahfrd and the Grey Mouser",
             index: 1,
             image_height: "600px",
             image_width: "350px",
             body_text_height: "350px",
             body_text_width: "260px",
             body_text_position_x: 540,
             body_text_position_y: -580,
             body_text_background_color: "white"
             )

Panel.create(story_id: 1,
             image: "https://static.pexels.com/photos/6548/cold-snow-winter-mountain.jpeg",
             body_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tristique sollicitudin luctus. Ut diam libero, maximus vitae consequat at, tristique sodales massa. Vestibulum viverra tincidunt dui, vitae ultricies diam sodales varius. Phasellus blandit tortor nisi, in dapibus leo hendrerit in.",
             panel_title: "An Enemy!",
             index: 2,
             image_height: "600px",
             image_width: "350px",
             body_text_height: "350px",
             body_text_width: "260px",
             body_text_position_x: 540,
             body_text_position_y: -580,
             body_text_background_color: "white"
             )

Panel.create(story_id: 1,
             image: "http://2.bp.blogspot.com/_tXIhwKxOXb8/TT7l0f88K-I/AAAAAAAAALc/R6E4ZLRKn1M/s1600/69622021.jpg",
             body_text: "You fought!",
             panel_title: "Fight",
             index: 3,
             image_height: "600px",
             image_width: "350px",
             body_text_height: "350px",
             body_text_width: "260px",
             body_text_position_x: 540,
             body_text_position_y: -580,
             body_text_background_color: "white"
             )

Panel.create(story_id: 1,
             image: "http://images.clipartpanda.com/girl-running-away-clipart-74058338.jpg",
             body_text: "You fled!",
             panel_title: "Flee",
             index: 4,
             image_height: "600px",
             image_width: "350px",
             body_text_height: "350px",
             body_text_width: "260px",
             body_text_position_x: 540,
             body_text_position_y: -580,
             body_text_background_color: "white"
             )

Choice.create(panel_id: 1,
              path_to: 2,
              body_text: "Lorem Ipsum",
              story_id: 1,
              panel_title: "An Enemy",
              index: 1,
              index2: 2,
              image: "https://static.pexels.com/photos/6548/cold-snow-winter-mountain.jpeg",
              panel_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tristique sollicitudin luctus. Ut diam libero, maximus vitae consequat at, tristique sodales massa. Vestibulum viverra tincidunt dui, vitae ultricies diam sodales varius. Phasellus blandit tortor nisi, in dapibus leo hendrerit in."
              )

Choice.create(panel_id: 2,
              path_to: 3,
              body_text: "Fight",
              story_id: 1,
              panel_title: "Fight!",
              index: 2,
              index2: 3,
              image: "http://2.bp.blogspot.com/_tXIhwKxOXb8/TT7l0f88K-I/AAAAAAAAALc/R6E4ZLRKn1M/s1600/69622021.jpg",
              panel_text: "You fought!")

Choice.create(panel_id: 2,
              path_to: 4,
              body_text: "Flee",
              story_id: 1,
              panel_title: "Flee!",
              index: 2,
              index2: 4,
              image: "http://images.clipartpanda.com/girl-running-away-clipart-74058338.jpg",
              panel_text: "You fled!"
              )


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
