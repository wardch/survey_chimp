# P2 Active Record [People Skills][office space]

## Learning Competencies

* Use Active Record Migrations
* Use Active Record Queries
* Use Active Record to create Associations between database tables

## Summary

In order for you to better understand your competence with ActiveRecord, we've
built a challenge that is purely ActiveRecord. No Sinatra, Javascript, jQuery,
or anything. Yay!

## Releases

###Release 0 : 

Demonstrate you can create working Ruby code from scratch that uses ActiveRecord
to model a many-to-many relationship.

Start with the skeleton in [`./source/ar-people-skills`][office space].  Build
ActiveRecord Models, Migrations, Validations, and Relations to model the
following user stories:

1. A `User` has many skills and a `Skill` can be assigned to many users.
2. A `User` has a proficiency rating for each of their skills.
3. Multiple `Skill`s can not be saved with the same name.

**(Hint: )** You will need to create several instance methods on the models for the driver code to pass.

#### You will know you are done when:

1. You can create a `User` and assign them skills from `rake console`
2. You can determine a `User`s proficiency rating for a particular `Skill` in `rake console`
3. running `ruby driver_code.rb` results in all true statements

<!-- ## Optimize Your Learning -->

## Resources

* ["Office Space"][office space]: a film about life in the tech industry you should see

[office space]:   http://www.youtube.com/watch?v=RAY27NU1Jog
