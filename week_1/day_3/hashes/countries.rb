countries = {
  uk:{
    capital: "London",
    population: 65_000_000,
    pure_magic: false,
  },

  germany:{
    capital: "Berlin",
    population: 87_000_000,
    pure_magic: false,
    },

  scotland: {
    capital: "Edinburgh",
    population: 6_000_000,
    pure_magic: true,
  }
}

puts countries[:uk][:capital]
puts countries[:germany][:population]
puts countries[:scotland][:pure_magic]