# Require config/environment.rb. This loads app/models, etc.
require ::File.expand_path('../config/environment',  __FILE__)

### TEST HELPERS ###
def clean_up_data
  # Clean up data between tests to prevent cross talk
  User.destroy_all
  Skill.destroy_all
end

def assert(boolean, message)
  puts "#{boolean} #{message}"
end





# DO NOT CHANGE BELOW THIS LINE. FEEL FREE TO WRITE MORE DRIVER CODE ABOVE
clean_up_data

zee = User.create({:name => "Zee", :email => "zee@example.com"})
beard_growing = Skill.create({:name => "Beard Growing", :context => "personal"})


### This confirms you may add a skill to a user 
zee.skills << beard_growing
assert(Skill.find_by_name("Beard Growing").users.include?(zee), "Zee has the beard growing skill!")

### This confirms a user may have many skills
programming = Skill.create({:name => "Programming", :context => "technical"})
zee.skills << programming
assert(Skill.find_by_name("Programming").users.include?(zee), "Zee can Programm!!!!!!")

### This confirms that skills can have many users
jesse = User.create({:name => "Jesse", :email => "jesse@example.com"})
beard_growing.users << jesse
assert(Skill.find_by_name("Beard Growing").users.include?(jesse), "Jesse has the beard growing skill!")

### This confirms that skills cannot have the same name
beard_growing2 = Skill.create({:name => "Beard Growing", :context => "personal"})
assert(!beard_growing2.persisted?, "Second Beard Growing Skill is not saved")

### This confirms that a person starts with a proficiency of 0 for a skill
assert(jesse.proficiency_for(beard_growing) == 0, " Jesse cannot grow a beard :(")

### This confirms that a person can be given a proficiency for a skill
zee.set_proficiency_for(beard_growing, 900)
beard_skills = Skill.find_by_name("Beard Growing").user_with_proficiency(900) == zee
assert(beard_skills, "! Zee is a Beard Growing MASTER")

