## Overview

In order for you to better understand your competence with ActiveRecord, we've
built a challenge that is purely ActiveRecord. No sinatra, javascript, jquery,
or anything. Yay!

### Core
Demonstrate you can create working ruby code from scratch that uses ActiveRecord
to model a many to many relationship.

#### Objectives
Start with this
[skeleton](http://s3.amazonaws.com/dbc_socrates/challenges/ar-people-skills.zip),
then build ActiveRecord Models, Migrations, Validations, and Relations to model the following user stories:

1. A User has many skills and a Skill can be assigned to many users.
2. A User has a proficiency rating for each of their skills.
3. Multiple skills can not be saved with the same name.

**(Hint: )** You will need to create several instance methods on the models for the driver code to pass.

#### You will know you are done when:
1. You can create a User and assign them skills from `rake console`
2. You can determine a users proficiency rating for a particular skill in `rake console`
3. running `ruby driver_code.rb` results in all true statements
