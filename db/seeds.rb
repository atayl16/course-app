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

# PublicActivity.enabled = false

# 5.times do
#   Course.create!([{
#     title: Faker::Educator.course_name,
#     short_description: Faker::Quote.famous_last_words,
#     description: Faker::Lorem.paragraph,
#     user: User.find_by(email: "admintest@example.com"),
#     language: "English",
#     level: "All levels",
#     # price: Faker::Number.between(from: 1000, to: 20000),
#     price: 0,
#     approved: true,
#     published: true
#   }])
# end
#
# 5.times do
#   Course.create!([{
#     title: Faker::Educator.course_name,
#     short_description: Faker::Quote.famous_last_words,
#     description: Faker::Lorem.paragraph,
#     user: User.find_by(email: "studentteacher@example.com"),
#     language: Faker::ProgrammingLanguage.name,
#     level: "Beginner",
#     # price: Faker::Number.between(from: 1000, to: 20000),
#     price: 0,
#     approved: true,
#     published: true
#   }])
# end
#
# Course.all.each do |course|
#   # Enrollment.create!([{
#   #   user: User.find_by(email: "studentteacher@example.com"),
#   #   course: course
#   #   }])
#   Enrollment.create!([{
#     user: User.find_by(email: "student@example.com"),
#     course: course,
#     price: course.price
#     }])
#   5.times do
#     row = [0...4]
#     Chapter.create!([{
#       row_order: row.sample(5),
#       course_id: course.id,
#       title: Faker::Educator.course_name,
#     }])
#   end
# end
#
# Chapter.all.each do
#   Lesson.create!([{
#     title: Faker::Lorem.sentence(word_count: 3),
#     content: Faker::Lorem.sentence,
#     chapter_id: chapter.id
#     }])
# end
#
#
# PublicActivity.enabled = true
