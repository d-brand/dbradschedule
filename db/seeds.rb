# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#管理マスター登録
user = User.new(:email => 'info@d-brand.jp', :password => 'dbrand25',:name=> '管理者マスター',:admin => true,:confirmed_at => DateTime.now)
user.save!