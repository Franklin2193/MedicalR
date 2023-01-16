# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


admin = User.new
admin.email = "franklinmont@gmail.com"
admin.password = 'medicalr'
admin.password_confirmation = 'medicalr'
admin.save



50.times do # 50
  user = User.new
  user.email = Faker::Internet.email
  user.password = 'medico'
  user.save
end
