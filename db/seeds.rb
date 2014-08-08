# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'Users'
[
 {username: 'Филатова Ксения Макаровна',   email: "shyanne_altenwerth@dareerdman.info", password: "2z2gvvs4pi03glyg35koecdyw"},
 {username: 'Виктор Никитин',              email: "stuart.zemlak@ebert.org",            password: "fovqv56ar5buq3_57ih3d8a_t"},
 {username: 'Жанна Эдуардовна Новикова',   email: "alexzander@will.org",                password: "gh1wzsfhj62j6pc2mvr31hwhp"},
 {username: 'Вероника Игоревна Панфилова', email: "retha_prosacco@rempel.net",          password: "bu2_xB8gc7jmX7R26-nouNmnA"},
 {username: 'Methodius Bykov',             email: "jamaal.collins@keeling.net",         password: "3G_hhEHY_brceKFz-i9koAKzw"},
 {username: 'Stepanida Kuznetsova',        email: "effie@krajcik.net",                  password: "h5qt5sdjhl"},
 {username: 'Вадим Булгаков',              email: "kaylee.little@batzhickle.com",       password: "niigr49x0s"},
 {username: 'Василько Филатов',            email: "harmon@feestbartoletti.net",         password: "u4szsle8o3"}
].each do |params|
  print "."
  User.create params
end


 Account.create(name: "rerum",      balance: 12.05, user_id: 1)
 Account.create(name: "non",        balance: 12.05, user_id: 2)
 Account.create(name: "earum",      balance: 12.05, user_id: 3)
 Account.create(name: "voluptates", balance: 12.05, user_id: 4)
 Account.create(name: "tempora",    balance: 12.05, user_id: 5)
 Account.create(name: "dolor",      balance: 12.05, user_id: 6)
 Account.create(name: "laboriosam", balance: 12.05, user_id: 7)
 Account.create(name: "aspernatur", balance: 12.05, user_id: 8)
 Account.create(name: "minima",     balance: 12.05, user_id: 9)

Transaction.create(amount: 100.0, account_id: 35, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
Transaction.create(amount: 100.0, account_id: 36, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
Transaction.create(amount: 100.0, account_id: 37, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
Transaction.create(amount: 100.0, account_id: 38, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
Transaction.create(amount: 100.0, account_id: 39, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
Transaction.create(amount: 100.0, account_id: 40, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
Transaction.create(amount: 100.0, account_id: 41, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
Transaction.create(amount: 100.0, account_id: 42, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
Transaction.create(amount: 100.0, account_id: 43, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")

