# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Course.create!(
  name: "Thea 100",
  user_id: 1,
  university_id: 3,
  course_number: 100,
)

Course.create!(
  name: "Econ 270",
  user_id: 1,
  university_id: 3,
  course_number: 270,
)

Course.create!(
  name: "Bio 230",
  user_id: 1,
  university_id: 4,
  course_number:230,
)

Course.create!(
  name: "Chem 325",
  user_id: 1,
  university_id: 4,
  course_number: 325,
)

Course.create!(
  name: "PE 400",
  user_id: 2,
  university_id: 5,
  course_number: 400,
)

Course.create!(
  name: "HBO 100",
  user_id: 1,
  university_id: 7,
  course_number: 100,
)

Course.create!(
  name: "Comm 300",
  user_id: 1,
  university_id: 8,
  course_number: 300,
)

Course.create!(
  name: "Eng 230",
  user_id: 1,
  university_id: 8,
  course_number: 230,
)
