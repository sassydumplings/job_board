# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# applicants => role = 0
# employers => role = 1
# admin => role = 2

applicant1 = User.create(
    name: 'Applicant1',
    email: 'applicant1@example.com',
    password: 'demo',
    password_confirmation: 'demo',
    role: 0
)

applicant2 = User.create(
    name: 'Applicant2',
    email: 'applicant2@example.com',
    password: 'demo',
    password_confirmation: 'demo',
    role: 0
)


employer1 = User.create(
    name: 'Employer1',
    email: 'employer1@example.com',
    password: 'demo',
    password_confirmation: 'demo',
    role: 1
)

employer2 = User.create(
    name: 'Employer2',
    email: 'employer2@example.com',
    password: 'demo',
    password_confirmation: 'demo',
    role: 1
)

admin = User.create(
    name: 'Admin',
    email: 'admin@example.com',
    password: 'demo',
    password_confirmation: 'demo',
    role: 2
)
