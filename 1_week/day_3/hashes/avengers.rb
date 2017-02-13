avengers = {
  hulk:{
    attack: 20,
    intelligence: 1,
    alter_ego: "Bruce Banner",
    deceased: true,

  },

  iron_man:{
    attack: 11,
    intelligence: 14,
    alter_ego: "Tony Stark",
    deceased: false,
  },

  spiderman:{
    attack: 13,
    intelligence: 19,
    alter_ego: "Peter Parker",
    deceased: false,
    },
}

puts avengers[:hulk][:alter_ego]
puts avengers[:iron_man][:intelligence]
puts avengers[:spiderman][:intelligence]