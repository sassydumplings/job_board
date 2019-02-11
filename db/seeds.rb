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

applicant1 = User.create!(
    name: 'Applicant1',
    email: 'applicant1@example.com',
    password: 'for_demo',
    role: 0
)

applicant2 = User.create!(
    name: 'Applicant2',
    email: 'applicant2@example.com',
    password: 'for_demo',
    role: 0
)


employer1 = User.create!(
    name: 'Employer1',
    email: 'employer1@example.com',
    password: 'for_demo',
    role: 1
)

employer2 = User.create!(
    name: 'Employer2',
    email: 'employer2@example.com',
    password: 'for_demo',
    role: 1
)

admin = User.create!(
    name: 'Admin',
    email: 'admin@example.com',
    password: 'for_demo',
    role: 2
)


# job openings for employer1

Job.create([
  {
    job_title: 'Software Engineer',
    description: 'Write quality code',
    employer_name: 'Apps4Us',
    employer_id: employer1.id,
    location: 'San Francisco, CA'
  },
  {
    job_title: 'Sr. Software Engineer',
    description: 'Write quality code and mentor others',
    employer_name: 'Apps4Us',
    employer_id: employer1.id,
    location: 'San Francisco, CA'
  },
  {
    job_title: 'Sales Engineer',
    description: 'Sell our quality code',
    employer_name: 'Apps4Us',
    employer_id: employer1.id,
    location: 'San Francisco, CA'
  },
  {
    job_title: 'Solutions Engineer',
    description: 'Help our customers use our quality code',
    employer_name: 'Apps4Us',
    employer_id: employer1.id,
    location: 'San Francisco, CA'
  },
  {
    job_title: 'Support Engineer',
    description: 'Troubleshoot and resolve customer issues',
    employer_name: 'Apps4Us',
    employer_id: employer1.id,
    location: 'San Francisco, CA'
  },
  {
    job_title: 'Software QA Engineer',
    description: 'Write quality code for test automation',
    employer_name: 'Apps4Us',
    employer_id: employer1.id,
    location: 'San Francisco, CA'
  }
  ])

# job openings for employer2

Job.create([
  {
    job_title: 'Customer Support Associate',
    description: 'Resolve support issues',
    employer_name: 'ServiceMax',
    employer_id: employer1.id,
    location: 'San Mateo, CA'
  },
  {
    job_title: 'Customer Support Manager',
    description: 'Lead support team to success',
    employer_name: 'ServiceMax',
    employer_id: employer1.id,
    location: 'San Mateo, CA'
  },
  {
    job_title: 'Customer Support DevOPs',
    description: 'Build and maintain internal support tools',
    employer_name: 'ServiceMax',
    employer_id: employer1.id,
    location: 'San Mateo, CA'
  },
  {
    job_title: 'SR Customer Support Associate',
    description: 'Resolve support issues, manage solutions database and champion best practices',
    employer_name: 'ServiceMax',
    employer_id: employer1.id,
    location: 'San Mateo, CA'
  }
  ])