if User.find_by_email("admintest@example.com").nil?
  admin = User.create!(email: "admintest@example.com", password: "admintest@example.com", password_confirmation: "admintest@example.com", confirmed_at: Time.now)
  # admin.skip_confirmation!
  admin.add_role(:admin) unless admin.has_role?(:admin)
  admin.add_role(:teacher) unless admin.has_role?(:teacher)
end

if User.find_by_email("studentteacher@example.com").nil?
  studentteacher = User.create!(email: "studentteacher@example.com", password: "studentteacher@example.com", password_confirmation: "studentteacher@example.com", confirmed_at: Time.now)
  # studentteacher.skip_confirmation!
  studentteacher.add_role(:teacher) unless studentteacher.has_role?(:teacher)
  studentteacher.add_role(:student) unless studentteacher.has_role?(:student)
end

if User.find_by_email("student@example.com").nil?
  student = User.create!(email: "student@example.com", password: "student@example.com", password_confirmation: "student@example.com", confirmed_at: Time.now)
  # student.skip_confirmation!
  student.add_role(:student) unless student.has_role?(:student)
end

PublicActivity.enabled = false

100.times do
  Course.create!([{
    title: Faker::Lorem.sentence(word_count: 2, supplemental: true, random_words_to_add: 3),
    short_description: Faker::Lorem.sentence(word_count: 6, supplemental: false, random_words_to_add: 4),
    description: Faker::Lorem.paragraph,
    user: User.find_by(email: "admintest@example.com"),
    language: "English",
    level: "All levels",
    # price: Faker::Number.between(from: 1000, to: 20000),
    price: 0,
    approved: true,
    published: true
  }])
end


PublicActivity.enabled = true
