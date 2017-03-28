

User.create(username: "test",
            email: "test@test.com",
            password: "test",
            avatar_url: "https://static.comicvine.com/uploads/original/4/46347/1889307-fafhrd.jpg"
            )

User.create(username: "example",
            email: "example@example.com",
            password: "example",
            avatar_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzqZc8Uo9cu7fyLHzuBXv-U17svUx8YNYvhz_LT_yZIzebV-Bf"
            )

Story.create!(user_id: 1,
             title: "Fahfrd and the Grey Mouser",
             tagline: "Classic Adventure!",
             image:"https://d2lzb5v10mb0lj.cloudfront.net/covers/600/10/10686.jpg",
             number_of_players: 2
             )

Story.create!(user_id: 2,
             title: "Shogun",
             tagline: "Battle for Japan",
             image: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Minamoto_no_Yoritomo.jpg/220px-Minamoto_no_Yoritomo.jpg",
             number_of_players: 1
             )

Player.create(story_id: 1,
              art: "http://piq.codeus.net/static/media/userpics/piq_157557_400x400.png",
              player_ordinal_number: 1,
              name: "Fahfrd"
              )


Player.create(story_id: 1,
              art: "https://opengameart.org/sites/default/files/idle_11.gif",
              player_ordinal_number: 2,
              name: "Grey Mouser"
              )

Panel.create(story_id: 1,
             image: "https://s-media-cache-ak0.pinimg.com/originals/c8/84/76/c88476a91f0084629ad5dbfcd9ab9335.jpg",
             body_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tristique sollicitudin luctus. Ut diam libero, maximus vitae consequat at, tristique sodales massa. Vestibulum viverra tincidunt dui, vitae ultricies diam sodales varius. Phasellus blandit tortor nisi, in dapibus leo hendrerit in.",
             player_id: 1
             )

Panel.create(story_id: 1,
             image: "https://static.pexels.com/photos/6548/cold-snow-winter-mountain.jpeg",
             body_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tristique sollicitudin luctus. Ut diam libero, maximus vitae consequat at, tristique sodales massa. Vestibulum viverra tincidunt dui, vitae ultricies diam sodales varius. Phasellus blandit tortor nisi, in dapibus leo hendrerit in.",
             player_id: 1
             )

Panel.create(story_id: 2,
             image: "http://www.myabandonware.com/media/screenshots/j/james-clavells-shogun-gp/james-clavells-shogun_7.gif",
             body_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tristique sollicitudin luctus. Ut diam libero, maximus vitae consequat at, tristique sodales massa. Vestibulum viverra tincidunt dui, vitae ultricies diam sodales varius. Phasellus blandit tortor nisi, in dapibus leo hendrerit in.",
             player_id: 1
             )


Player.create(story_id: 2,
              art: "http://www.coverbrowser.com/image/misc-games/3956-1.jpg",
              player_ordinal_number: 1,
              name: "Anjin-san"
              )

Choice.create(panel_id: 1,
              path_to: 2,
              body_text: "Lorem Ipsum",
              player_id: 1
              )

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
