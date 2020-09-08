#User.create!(email: 'momo@mail.com', password: 'momomo', password_confirmation: 'momomo')

30.times do
    Course.create!([{
      title: Faker::Educator.course_name,
      description: Faker::TvShows::GameOfThrones.quote,
      user_id: User.first.id,
      short_description: Faker::Quote.famous_last_words,
      level: 'Beginner',
      language: Faker::ProgrammingLanguage.name,
      price: Faker::Number.between(from: 1000, to: 2000)
    }])
end