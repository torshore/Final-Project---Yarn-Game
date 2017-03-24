Panel.create(story_id: 1,
             image: "https://s-media-cache-ak0.pinimg.com/originals/c8/84/76/c88476a91f0084629ad5dbfcd9ab9335.jpg",
             body_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tristique sollicitudin luctus. Ut diam libero, maximus vitae consequat at, tristique sodales massa. Vestibulum viverra tincidunt dui, vitae ultricies diam sodales varius. Phasellus blandit tortor nisi, in dapibus leo hendrerit in.",
             player_id: 1)


User.create(username: "test",
            email: "test@test.com",
            password: "test",
            avatar_url: "https://static.comicvine.com/uploads/original/4/46347/1889307-fafhrd.jpg"
            )


Story.create(user_id: 1,
             title: "Fahfrd and the Grey Mouser",
             tagline: "Classic Adventure!",
             number_of_players: 2)


Player.create(story_id: 1,
              art: "http://piq.codeus.net/static/media/userpics/piq_157557_400x400.png",
              player_ordinal_number: 1,
              name: "Fahfrd")


Player.create(story_id: 2,
              art: "https://opengameart.org/sites/default/files/idle_11.gif",
              player_ordinal_number: 2,
              name: "Grey Mouser")


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
