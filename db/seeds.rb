# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


video = Product.create!(:title => 'телевизоры и видео', :is_catalog => true)
audio = Product.create!(:title => 'аудин техника', :is_catalog => true)
computers = Product.create!(:title => 'компьютеры', :is_catalog => true)
phones = Product.create!(:title => 'телефоны', :is_catalog => true)
photo = Product.create!(:title => 'фото техника', :is_catalog => true)
product1 = Product.create!(:title => 'товар 1', :price => Faker::Number.decimal(2), :weight => Faker::Number.number(3), :color => Faker::Number.between(1, 4), :description => Faker::Lorem.paragraph(8))

  tele = Product.create!(:title => 'телевизоры', :is_catalog => true).move_to_child_of(video)
  rack = Product.create!(:title => 'стойки и кронштейны', :is_catalog => true).move_to_child_of(video)
  accessories = Product.create!(:title => 'аксессуары', :is_catalog => true).move_to_child_of(video)

    projectors = Product.create!(:title => 'проекторы', :is_catalog => true).move_to_child_of(tele)
      30.times do |n|
        Product.create!(
          :title => Faker::Name.title, 
          :price => Faker::Number.decimal(2), 
          :weight => Faker::Number.number(3), 
          :color => Faker::Number.between(1, 4), 
          :description => Faker::Lorem.paragraph(8)
        ).move_to_child_of(projectors)
      end
    televisors = Product.create!(:title => 'телевизоры', :is_catalog => true).move_to_child_of(tele)
      30.times do |n|
        Product.create!(
          :title => Faker::Name.title, 
          :price => Faker::Number.decimal(2), 
          :weight => Faker::Number.number(3), 
          :color => Faker::Number.between(1, 4), 
          :description => Faker::Lorem.paragraph(8)
        ).move_to_child_of(televisors)
      end
    sputniks = Product.create!(:title => 'спутниковое тв', :is_catalog => true).move_to_child_of(tele)
      30.times do |n|
        Product.create!(
          :title => Faker::Name.title, 
          :price => Faker::Number.decimal(2), 
          :weight => Faker::Number.number(3), 
          :color => Faker::Number.between(1, 4), 
          :description => Faker::Lorem.paragraph(8)
        ).move_to_child_of(sputniks)
      end
      
    sputnik = Product.create!(:title => 'стойки для телевизоров', :is_catalog => true).move_to_child_of(rack)
    sputnik = Product.create!(:title => 'кронштейны для телевизоров', :is_catalog => true).move_to_child_of(rack)
    sputnik = Product.create!(:title => 'подставки для телевизоров', :is_catalog => true).move_to_child_of(rack)

    cleaners = Product.create!(:title => 'чистящие средства', :is_catalog => true).move_to_child_of(accessories)
    pults = Product.create!(:title => 'пульты управления', :is_catalog => true).move_to_child_of(accessories)
    cables = Product.create!(:title => 'кабели', :is_catalog => true).move_to_child_of(accessories)
    stabilsators = Product.create!(:title => 'стабилизаторы напряжения', :is_catalog => true).move_to_child_of(accessories)



  headphones = Product.create!(:title => 'наушники', :is_catalog => true).move_to_child_of(audio)
  autoaccoustic = Product.create!(:title => 'автоакустика', :is_catalog => true).move_to_child_of(audio)
  portable_autio = Product.create!(:title => 'портативное аудио', :is_catalog => true).move_to_child_of(audio)
  hi_fi = Product.create!(:title => 'hi-fi', :is_catalog => true).move_to_child_of(audio)

  comps = Product.create!(:title => 'планшеты, ноутбуки и компьютеры', :is_catalog => true).move_to_child_of(computers)
  e_books = Product.create!(:title => 'электронные книги', :is_catalog => true).move_to_child_of(computers)
  apples = Product.create!(:title => 'техника apple', :is_catalog => true).move_to_child_of(computers)
  peripherals = Product.create!(:title => 'периферийные устройства', :is_catalog => true).move_to_child_of(computers)
  game_mouses = Product.create!(:title => 'игровые мыши', :is_catalog => true).move_to_child_of(computers)
