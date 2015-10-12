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
product1 = Product.create!(:title => 'товар 1')

  tele = Product.create!(:title => 'телевизоры', :is_catalog => true).move_to_child_of(video)
  rack = Product.create!(:title => 'стойки и кронштейны', :is_catalog => true).move_to_child_of(video)
  accessories = Product.create!(:title => 'аксессуары', :is_catalog => true).move_to_child_of(video)

    projectors = Product.create!(:title => 'проекторы', :is_catalog => true).move_to_child_of(tele)
      projector1 = Product.create!(:title => 'проектор 1').move_to_child_of(projectors)
      projector2 = Product.create!(:title => 'проектор 2').move_to_child_of(projectors)
      projector3 = Product.create!(:title => 'проектор 3').move_to_child_of(projectors)
      projector4 = Product.create!(:title => 'проектор 4').move_to_child_of(projectors)
      projector5 = Product.create!(:title => 'проектор 5').move_to_child_of(projectors)
    televisors = Product.create!(:title => 'телевизоры', :is_catalog => true).move_to_child_of(tele)
      televisor1 = Product.create!(:title => 'телевизор 1').move_to_child_of(televisors)
      televisor2 = Product.create!(:title => 'телевизор 2').move_to_child_of(televisors)
      televisor3 = Product.create!(:title => 'телевизор 3').move_to_child_of(televisors)
      televisor4 = Product.create!(:title => 'телевизор 4').move_to_child_of(televisors)
      televisor5 = Product.create!(:title => 'телевизор 5').move_to_child_of(televisors)
      televisor6 = Product.create!(:title => 'телевизор 6').move_to_child_of(televisors)
    sputniks = Product.create!(:title => 'спутниковое тв', :is_catalog => true).move_to_child_of(tele)
      sputnik1 = Product.create!(:title => 'спутник 1').move_to_child_of(sputniks)
      sputnik2 = Product.create!(:title => 'спутник 2').move_to_child_of(sputniks)
      sputnik3 = Product.create!(:title => 'спутник 3').move_to_child_of(sputniks)
      sputnik4 = Product.create!(:title => 'спутник 4').move_to_child_of(sputniks)

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
