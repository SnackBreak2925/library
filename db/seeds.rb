# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

if Rails.env.development?
  fake_user = User.find_by(email: 'admin@admin.com')
  User.create(email: 'admin@admin.com', password: 'admin123') unless fake_user.present?

  for _ in 1..10 do
    fake_book = Book.new
    fake_book.title = Faker::Book.title
    fake_author = fake_book.authors.new
    fake_author.name = Faker::Book.author
    fake_book.save
  end
end
