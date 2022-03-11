actor = Actor.new({ first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock" })
actor.save

new_movie = Movie.new({ title: "Pacific Rim", year: 2013, plot: "In 2013, massive alien monsters called Kaiju begin emerging from an interdimensional portal called 'The Breach' at the bottom of the Pacific Ocean and attacking coastal cities. In response, humanity builds massive robots called Jaegers." })

new_movie.save

new_movie = Movie.new({ title: "Alien", year: 1979, plot: "The commercial space tug Nostromo is returning to Earth with a seven-member crew in stasis: Captain Dallas, Executive Officer Kane, Warrant Officer Ripley, Navigator Lambert, Science Officer Ash, and engineers Parker and Brett. Detecting a transmission from a nearby moon, the ship's computer, Mother, awakens the crew." })

new_movie.save
