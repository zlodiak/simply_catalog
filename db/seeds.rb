# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
video = Product.create!(:title => 'телевизоры и видео', :is_catalog: true)
audio = Product.create!(:title => 'аудин техника', :is_catalog: true)
computers = Product.create!(:title => 'компьютеры', :is_catalog: true)
phones = Product.create!(:title => 'телефоны', :is_catalog: true)
photo = Product.create!(:title => 'фото техника', :is_catalog: true)

Product.create!(:title => 'телевизоры').move_to_child_of(video)
Product.create!(:title => 'стойки и кронштейны').move_to_child_of(video)
Product.create!(:title => 'аксессуары').move_to_child_of(video)
=end
