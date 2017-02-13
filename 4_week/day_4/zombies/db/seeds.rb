require_relative( '../models/zombie.rb' )
require_relative( '../models/victim.rb' )
require_relative( '../models/biting.rb' )
require('pry-byebug')

Biting.delete_all
Zombie.delete_all
Victim.delete_all

zombie1 = Zombie.new({
  'name' => "John",
  'type' => 'Drooler'
})

zombie1.save

zombie2 = Zombie.new({
  'name' => "Ally",
  'type' => 'Walker'
})

zombie2.save

zombie3 = Zombie.new({
  'name' => "Alan",
  'type' => 'Bearded'
})

zombie3.save

zombie4 = Zombie.new({
  'name' => "Steven",
  'type' => 'Runner'
})

zombie4.save

victim1 = Victim.new({
  'name' => "Keir",
  'run_speed' => 70
})

victim1.save

victim2 = Victim.new({
  'name' => "Michaela",
  'run_speed' => 90
})

victim2.save

victim3 = Victim.new({
  'name' => "Chris",
  'run_speed' => 100
})

victim3.save

victim4 = Victim.new({
  'name' => "Ryan",
  'run_speed' => 80
})

victim4.save

biting1 = Biting.new({
  'victim_id' => victim1.id,
  'zombie_id' => zombie1.id
})

biting1.save

biting2 = Biting.new({
  'victim_id' => victim2.id,
  'zombie_id' => zombie2.id
})

biting2.save