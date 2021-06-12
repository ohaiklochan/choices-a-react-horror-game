# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Choices.destroy_all

User.create(name: "Chloe", age: "31")

# 1st Choice
Choice.create(prompt: "Your work day has ended. You wait for the elevator. You see Cassandra, a girl that works with you on the 32nd floor of your building. You both are the last two done for the night. You talk about how hard the work day was and that the boss isn’t giving you any breaks. She agrees with you as you both enter the elevator.", choiceA: "Notice the flashing lights of the floor", choiceB: "Notice the unnerving quiet of the floor", turn: 1, path: "left", route: "none", from: "Start")


