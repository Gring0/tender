# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'DEFAULT FEATURES'

f = Feature.create(:title => "Стройка и реконструкция Детский сад" , :level => "1")
f = Feature.create(:title => "Стройка Физкультурно оздоровительный комплекс" , :level => "1")
f = Feature.create(:title => "Совместные торги" , :level => "1")
f = Feature.create(:title => "Мед. оборудование" , :level => "1")
f = Feature.create(:title => "Дороги (содержание, ремонт, реконструкция, стройка)" , :level => "1")
f = Feature.create(:title => "Стройка, реконструкция, ПИР" , :level => "1")
f = Feature.create(:title => "Стройка Фельдшерские Акушерские Пункты" , :level => "1")
f = Feature.create(:title => "Лекарства" , :level => "1")
f = Feature.create(:title => "Школы" , :level => "1")
f = Feature.create(:title => "Охрана" , :level => "1")
f = Feature.create(:title => "Перевозки автотранспортом " , :level => "1")
f = Feature.create(:title => "Горячее питание " , :level => "1")
f = Feature.create(:title => "Благоустройство территорий" , :level => "1")

puts 'DEFAULT TENDERS'

t = Auction.create(:customer => "Министерство строительного комплекса МО", 
	:subject => "выполнение работ по строительству объекта: «Комплексная поликлиника на 600 посещений в смену в г. Павловский Посад, микрорайон Южный»", 
	:nmc => "423628460,00",
	:category => "Конкурс с ограниченным участием",
	:notice_number => "0148200005414000001",
	:object => "",
	:public_date => "11.02.2014",
	:end_date_time => "17.03.2014 10:00",
	:first_consideration_date => "26.03.14",
	:realization_date => "",
	:second_consideration_date => "",
	:demand_quantity => "4",
	:demand_withdrawal_quantity => "0",
	:urz => "ООО «ЭКС ПП Экологические технологии»",
	:participants => "ЗАО «Энергопроммонтаж»; ОАО Холдинговая компания «Главмосстрой»; ООО «ЛСР. Строительство-М»",
	:winner => "ООО «ЛСР.Строительство-М» ",
	:price => "421520856,00",
	:result => "состоялся",
	:reason => "",
	:competition_regulator => "",
	:performer_name => "Григорьева",
	:customer_category => "Гос")

t = Auction.create(:customer => "Администрация Коломенского м/р", 
	:subject => "Доставка товаров в 2014г гражданам, проживающим в сельских населенных пунктах Коломенского м/р Московской области с частичной компенсацией транспортных расходов из фонда софинансирования социальных расходов Московской области по перечню населенных пунктов", 
	:nmc => "1885344750,00",
	:category => "Запрос котировок",
	:notice_number => "0148200005414000002",
	:object => "",
	:public_date => "19.02.2014",
	:end_date_time => "27.02.2014 11:00",
	:first_consideration_date => "27.02.2014",
	:realization_date => "",
	:second_consideration_date => "",
	:demand_quantity => "1",
	:demand_withdrawal_quantity => "0",
	:urz => "0",
	:participants => "ОАО «Трест Мосэлектротягстрой»",
	:winner => "ОАО «Трест Мосэлектротягстрой»",
	:price => "1857064460,00",
	:result => "не состоялся",
	:reason => "1 заявка",
	:competition_regulator => "",
	:performer_name => "Григорьева",
	:customer_category => "Гос")


t = Auction.create(:customer => "Главное управление по информационной политике МО", 
	:subject => "оказание информационных услуг по изготовлению и распространению (вещанию) в эфире телевизионного электронного средства массовой информации Московской области телевизионных материалов, посвященных 700-летию со дня рождения преподобного Сергия Радонежского", 
	:nmc => "1939251940,00",
	:category => "Конкурс",
	:notice_number => "0148200005414000003",
	:object => "",
	:public_date => "20.02.2014",
	:end_date_time => "14.03.2014 10:00",
	:first_consideration_date => "17.03.2014",
	:realization_date => "",
	:second_consideration_date => "",
	:demand_quantity => "4",
	:demand_withdrawal_quantity => "0",
	:urz => "ООО «ПРОИНВЕСТ-Рус»; ЗАО «Компакт»",
	:participants => "ООО «МЕТС-ЦЕНТР»; ООО «Стем Строй»",
	:winner => "ООО «Стем Строй»",
	:price => "1910163160,90",
	:result => "состоялся",
	:reason => "",
	:competition_regulator => "",
	:performer_name => "Григорьева",
	:customer_category => "Гос")

