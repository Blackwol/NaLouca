# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Criando admin padrão..."
Admin.create!(email: "admin@admin.com", 
	password: "123456", password_confirmation: "123456")
puts "Criando admin padrão...[OK!]"

puts "Criando as categorias..."
categories = ["Segunda-Feira", "Terça-feira", "Quarta-Feira", 
	"Quinta-Feira", "Sexta-Feira", "Sábado"]

categories.each do |category|
	Category.find_or_create_by(name: category)
end
puts "Criando as categorias...[OK!]"

puts "Criando os pratos..."
50.times do
	Food.create!(title: Faker::Name.name, category: Category.all.sample, 
		description: LeroleroGenerator.paragraph([1,2].sample), 
		price: "#{Random.rand(30)}, #{Random.rand(99)}", 
		picture: File.new(Rails.root.join('public', 'templates', 'images', "#{Random.rand(9)}.jpg"), 'r') )
end
puts "Criando os pratos...[OK!]"

puts "Criando Comentários..."
		Food.all.each do |food|
			(Random.rand(3)).times do
				Comment.create!(
					name: Faker::Name.name,
					body: Faker::Lorem.paragraph([1,2,3].sample), 
					food: food)
			end
		end

puts "Criando Comentários...[OK!]"


