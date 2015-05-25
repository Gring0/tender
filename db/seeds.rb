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


require 'csv'
 
seed_data_path = "lib/seed/" 
CSV.foreach(Rails.root.join(seed_data_path + "BD.csv"), encoding: "utf-8" , :col_sep => ';', headers: :first_row) do |row|
  t = Auction.create(:customer => row[2], 
	:subject => row[3], 
	:nmc => row[4],
	:category => row[5],
	:notice_number => row[6],
	:object => row[7],
	:public_date => row[8],
	:end_date_time => row[9],
	:first_consideration_date => row[10],
	:realization_date => row[11],
	:second_consideration_date => row[12],
	:demand_quantity => row[13],
	:demand_withdrawal_quantity => row[14],
	:urz => row[15],
	:participants => row[16],
	:winner => row[17],
	:price => row[18],
	:result => row[19],
	:reason => row[20],
	:competition_regulator => row[21],
	:performer_name => row[22],
	:customer_category => row[23])
end