# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless Studio.first
  [
    [
      "20th Century Fox",
      [
        "STAR WARS Episode IV",
        "STAR WARS Episode V",
        "STAR WARS Episode VI",
      ],
    ],
    [
      "Paramount Pictures",
      [
        "The Godfather",
        "The Godfather Part II",
        "The Godfather Part III",
      ]
    ]
  ].each do |a|
p a
    s = Studio.create name:a.first
    a.last.each do |t|
p t
      s.movies << Movie.new(title:t)
    end
  end
end
