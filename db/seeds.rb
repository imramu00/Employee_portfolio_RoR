# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Employee.destroy_all
Experience.destroy_all
Employee.create(name: 'Ramanathan')
Experience.create(name: 'xyz', from: '22', to: '32', role: 'developer',employee: Ramanathan)