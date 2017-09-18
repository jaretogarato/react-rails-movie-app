# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create({title: 'The Shawshank Redemption', summary: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.", release_year: 1994, stars: 9.2, rank: 1, genre: 'Drama', director: 'Frank Darabont', img_url: 'https://images-na.ssl-images-amazon.com/images/M/MV5BODU4MjU4NjIwNl5BMl5BanBnXkFtZTgwMDU2MjEyMDE@._V1_SY1000_CR0,0,672,1000_AL_.jpg' })

Movie.create({title: 'The Godfather', summary: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.", release_year: 1972, stars: 9.1, rank: 2, genre: 'Action', director: 'Francis Ford Coppola', img_url: 'https://images-na.ssl-images-amazon.com/images/M/MV5BZTRmNjQ1ZDYtNDgzMy00OGE0LWE4N2YtNTkzNWQ5ZDhlNGJmL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SY1000_CR0,0,704,1000_AL_.jpg' })

Movie.create({title: 'The Godfather: Part II', summary: "The early life and career of Vito Corleone in 1920s New York is portrayed while his son, Michael, expands and tightens his grip on the family crime syndicate.", release_year: 1974, stars: 9.1, rank: 3, genre: 'Action', director: 'Francis Ford Coppola', img_url: 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjZiNzIxNTQtNDc5Zi00YWY1LThkMTctMDgzYjY4YjI1YmQyL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SY1000_CR0,0,702,1000_AL_.jpg' })

Movie.create({title: 'The Dark Knight', summary: "When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham, the Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.", release_year: 2008, stars: 9.0, rank: 4, genre: 'Suspense', director: 'Christopher Nolan', img_url: 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SY1000_CR0,0,675,1000_AL_.jpg' })

Movie.create({title: '12 Angry Men', summary: "A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.", release_year: 1957, stars: 8.9, rank: 5, genre: 'Crime', director: 'Sidney Lumet', img_url: 'http://www.imdb.com/title/tt0050083/mediaviewer/rm2927108352' })
