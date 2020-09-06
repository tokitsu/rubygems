User.create!(email: 'momo@mail.com', password: 'momomo', password_confirmation: 'momomo')

30.times do
    Course.create!([{
      title: Faker::Educator.course_name,
      description: Faker::TvShows::GameOfThrones.quote,
      user_id: User.first.id
    }])
end