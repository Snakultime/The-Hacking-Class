require 'faker'
# Create 10 cours with 2 to 8 lessons each
46.times do
  course = Course.create!(title: Faker::Community.characters, description: Faker::FamilyGuy.quote)
  i = rand(25) + 8
  i.times do
    student = Student.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, course_id: course.id)
  end
end
