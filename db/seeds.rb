# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

8.times do
  Board.create(
    name: Faker::Book.genre + " Top 10"
  )
end

200.times do
  Song.create(
    name: Faker::Book.title,
    board_id: Faker::Number.between(1, 10)
    )
end

@x = 0

200.times do
  @x += 1
  Artist.create(
    name: Faker::Book.author,
    song_id: @x
  )
end

puts 'seeded'