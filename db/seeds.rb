# coding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Eiga.create(name: 'test1', year: "2018", description: "this is a test movie1", image_url: 'https://picsum.photos/300/200', is_showing: false)
Eiga.create(name: 'test2', year: "2019", description: "this is a test movie2", image_url: 'https://picsum.photos/300/200', is_showing: false)
Eiga.create(name: 'test3', year: "2020", description: "this is a test movie3", image_url: 'https://picsum.photos/300/200', is_showing: false)
Eiga.create(name: 'test4', year: "2021", description: "this is a test movie4", image_url: 'https://picsum.photos/300/200', is_showing: true)
Eiga.create(name: 'test5', year: "2021", description: "this is a test movie5", image_url: 'https://picsum.photos/300/200', is_showing: true)