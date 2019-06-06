Workout City

This app will allow trainers to develop workout routines for clients.  The clients will be able to view the workouts using the app.  The trainers will have access to a library of exercises to include in the workouts.

Models
client
has_many workouts
has_many trainers through workouts

trainer
has_many workouts
has_many clients through workouts

workout
belong_to trainer
belong_to client
has_many exercises

exercise
belongs_to workout

Validations
client needs username and password
trainer needs username and password

OmniAuth
Consider Fitbit authentication

Active Record Scope method
  scope :favorited, -> { where(favorited: true) }

  def self.favorited
    where(favorited: true)
  end

  scope :legal_age, -> { where(:age > 21) }

  @legal_users = Users.legal_age

Future build:
1. Consider appointment model.
2. Sets, reps, muscles targeted.


1. User submittable attribute on join table
  Date
  Name of the client
  number of exercises
