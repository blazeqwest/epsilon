# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 User.create(email: "shyanne_altenwerth@dareerdman.info", encrypted_password: "$2a$10$3tSCYFKrF3nOctZ/T/MTnefgRHo3JkPz90DhtVQ4CcPDBgo3ZYc8.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, created_at: "2014-08-03 09:44:49", updated_at: "2014-08-03 09:44:49")
 User.create(email: "stuart.zemlak@ebert.org",            encrypted_password: "$2a$10$w741CYrzRwxp9xGgwJ/NDOJQbmdauekqh.sy7K9/kUJyyYPMnKKTi", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, created_at: "2014-08-03 09:45:35", updated_at: "2014-08-03 09:45:35")
 User.create(email: "deshawn.ruecker@fadel.biz",          encrypted_password: "$2a$10$X/J9KJetHWjOsIKWB6Mkm.u/svyX1V6M5BzEZ2Cd3E4hsnyU8PCDa", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, created_at: "2014-08-03 09:46:31", updated_at: "2014-08-03 09:46:31")
 User.create(email: "alexzander@will.org",                encrypted_password: "$2a$10$RItWp7W8Aj5XcdEo0MFiGem4MRJ1ZFKiNRPvswpXRcxVkVENyU1Ra", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, created_at: "2014-08-03 09:46:39", updated_at: "2014-08-03 09:46:39")
 User.create(email: "retha_prosacco@rempel.net",          encrypted_password: "$2a$10$Geo4QL1ZfKhfEaF7MMSd6e0M.FoiT/mE.yt4xWSWZnEhzuqv5Kixm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, created_at: "2014-08-03 09:48:04", updated_at: "2014-08-03 09:48:04")
 User.create(email: "jamaal.collins@keeling.net",         encrypted_password: "$2a$10$Rw9RTdvkWc0sIksE/r/WPOPpFgKTWhuA.hwhu4FbspQVttYmSqiJ6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, created_at: "2014-08-03 09:48:23", updated_at: "2014-08-03 09:48:23")
 User.create(email: "effie@krajcik.net",                  encrypted_password: "$2a$10$zV3hqrvJKL5SW7WHMDp0uORZQtAjQbyMDTZrEfXsxK2CCdLhiPHCm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, created_at: "2014-08-03 09:48:29", updated_at: "2014-08-03 09:48:29")
 User.create(email: "kaylee.little@batzhickle.com",       encrypted_password: "$2a$10$lEu7Uw8DjpjM64.2RM.aXe87aCIKVzA.bV4COu07JcQROp6Q/8SRG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, created_at: "2014-08-03 09:50:43", updated_at: "2014-08-03 09:50:43")
 User.create(email: "harmon@feestbartoletti.net",         encrypted_password: "$2a$10$RfWVq3zvTTnihM.fziRdROkOKg/t2KQigSiqUfoz3AxM2cqLJRLAq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, created_at: "2014-08-03 09:51:06", updated_at: "2014-08-03 09:51:06")

 Account.create(name: "rerum",      balance: 12.05, user_id: 1, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
 Account.create(name: "non",        balance: 12.05, user_id: 2, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
 Account.create(name: "earum",      balance: 12.05, user_id: 3, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
 Account.create(name: "voluptates", balance: 12.05, user_id: 4, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
 Account.create(name: "tempora",    balance: 12.05, user_id: 5, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
 Account.create(name: "dolor",      balance: 12.05, user_id: 6, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
 Account.create(name: "laboriosam", balance: 12.05, user_id: 7, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
 Account.create(name: "aspernatur", balance: 12.05, user_id: 8, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
 Account.create(name: "minima",     balance: 12.05, user_id: 9, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")

Transaction.create(amount: 100.0, account_id: 35, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
Transaction.create(amount: 100.0, account_id: 36, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
Transaction.create(amount: 100.0, account_id: 37, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
Transaction.create(amount: 100.0, account_id: 38, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
Transaction.create(amount: 100.0, account_id: 39, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
Transaction.create(amount: 100.0, account_id: 40, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
Transaction.create(amount: 100.0, account_id: 41, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
Transaction.create(amount: 100.0, account_id: 42, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")
Transaction.create(amount: 100.0, account_id: 43, created_at: "2014-08-03 11:18:24", updated_at: "2014-08-03 11:18:24")

