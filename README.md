# B2 Assessments

Base repository for B2 assessments and diagnostics.

This repository requires and has been tested on Ruby v2.5.3 and is based on Rails 5.2.4.3.

RSpec and Shoulda-Matchers have been installed and set up.

## Setup

1. fork this repo
2. clone your fork
3. `git clone <paste_repo>`
4. `cd b2-mid-mod`
5. `bundle install`

When you run `bundle exec rspec` you should have 0 tests.

## Instructions

* Work on this assessment independently. DO NOT discuss with anyone.
* Read each story carefully before you start working.
* Commit Frequently, about every 15 - 30 minutes
* Push your code to your fork once the time is up (not before!)

## Submission

Once the time for the assessment is up, push your code to your fork and create a pull request to the `turingschool-examples` repository. Include the following:

* Your Name
* A reflection on how you felt you did with this challenge and what story you got through

## Requirements

* TDD all new work
* model methods and relationships must be fully tested.

## Not Required

* No visual styling is required or expected
* You do not need to test for or create any model validations.

## User Stories

User stories will be released at the start of the assessment.

---
## Overview

We are creating an application to track the maintenance of rides at amusement parks. We will be tracking the following:

* Amusement Parks have a name and admission price
* Mechanics have a name and years of experience
* Rides have a name and thrill rating (1-10)
* Amusement parks have many rides
* rides belong to an amusement park
* rides can have many mechanics working on it
* mechanics can work on multiple rides.

You will need to create all the migrations. You do not need to do model testing for validations, just make sure you test any relationships and model methods that you create.

Read each story carefully.

## User Stories

```
Story 1
As a user,
When I visit a mechanics index page
I see a header saying “All Mechanics”
And I see a list of all mechanic’s names and their years of experience
Ex:
             All Mechanics
   Sam Mills - 10 years of experience
   Kara Smith - 11 years of experience
```

```
Story 2
As a visitor,
When I visit an amusement park’s show page
I see the name and price of admissions for that amusement park
And I see the names of all the rides that are at that park
And I see the average thrill rating of this amusement park’s rides
Ex: Hershey Park
   Admissions: $50.00

   Rides:
          1. Lightning Racer
          2. Storm Runner
          3. The Great Bear
   Average Thrill Rating of Rides: 7.8/10
```

```
Story 3
As a user,
When I go to a mechanics show page
I see their name, years of experience, and names of all rides they’re working on
And I also see a form to add a ride to their workload
When I fill in that field with an id of a ride that exists in the database
And I click submit
I’m taken back to that mechanics show page
And I see the name of that newly added ride on this mechanics show page
Ex:
Mechanic: Kara Smith
Years of Experience: 11
Current rides they’re working on:
The Frog Hopper
Fahrenheit
The Kiss Raise
Add a ride to workload:
_pretend_this_is_a_textfield_
                      Submit
```
## Extensions

```
User Story 4

As a user,
When I visit a mechanic's show page
Then I see all their rides listed in alphabetical order
```
