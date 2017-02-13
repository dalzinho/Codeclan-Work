require_relative './space_bounty'
require 'pry-byebug'

bounty1 = SpaceBounty.new('name' => 'Han Solo','last_known_location' => 'Tatooine', 'favourite_weapon' => 'Blaster', 'danger_level' => 4 )
bounty2 = SpaceBounty.new('name' => 'Desperate Dan', 'last_known_location' => 'Cactusville', 'favourite_weapon' => 'Fists', 'danger_level' => 3)

binding.pry
nil