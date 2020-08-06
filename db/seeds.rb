User.create(first_name: "Will", last_name: "Harris", password: "1234", account_type: 0, email: "willmharris0@gmail.com", phone_number: 1111111111)
User.create(first_name: "Leslie", last_name: "Knope", password: "1234", account_type: 2, email: "leslieknope@gmail.com", phone_number: 2222222222, zip_code: 22222)
User.create(first_name: "Ron", last_name: "Swanson", password: "1234", account_type: 2, email: "ronswanson0@gmail.com", phone_number: 3333333333, zip_code: 33333)
User.create(first_name: "Andy", last_name: "Dwyer", password: "1234", account_type: 1, email: "andydwyer0@gmail.com", phone_number: 4444444444, zip_code: 44444, entry_point: 0, call_scheduled: true, lead_active: true)

date1 = DateTime.parse("25/01/2020 11:00")
date2 = DateTime.parse("20/01/2020 11:00")
date3 = DateTime.parse("21/01/2020 11:00")

Case.create(active: true, planned_date: date1, planned_location: "Town Hall", confirmed_date: date1, confirmed_location: "Town Hall")

Session.create(case_id: 1, date: date1, location: "Town Hall")

UserCase.create(user_id: 2, case_id: 1, first_contact_date: date2, first_contact_status: 0, planned_session_confirmed: true, team: 0, team_relationship: "coworker")
UserCase.create(user_id: 3, case_id: 1, first_contact_date: date3, first_contact_status: 0, planned_session_confirmed: true, team: 1, team_relationship: "coworker")
