if (u1 = User.find_by_email('admin@localhost')).nil?
  u1 = User.create!(password: 'qwerty', password_confirmation: 'qwerty',
    email: 'admin@localhost')
  u1.activate!
end
if (u2 = User.find_by_email('user@localhost')).nil?
  u2 = User.create!(password: 'qwerty', password_confirmation: 'qwerty',
    email: 'user@localhost')
  u2.activate!
end
r1, r2 = Role.create_main_roles
ru1 = RoleUser.create(role: r1, user: u1)
ru2 = RoleUser.create(role: r2, user: u2)
Card.create(lastname: 'Иванов', firstname: 'Иван', secondname: 'Иванович', nomer: 1,
insurancepolicy: 123, typeoftreatment: 'Платно', dateofcreation: DateTime.parse("01/05/2017", "%m/%d/%Y %H:%M"), pindex: 123456, city: 'Москва', street: 'Мясницкая', house: '14', building: '1', flat: '5', telephone: '777-777', passportseries: 4510, passportnumber: 444555, passsportfrom: 'Москва', passportwhen: DateTime.parse("01/05/1990", "%m/%d/%Y %H:%M"), allergy: 'Аспирин')
Card.create(lastname: 'Петров', firstname: 'Петр', secondname: 'Петрович', nomer: 2,
insurancepolicy: 456, typeoftreatment: 'Бесплатно', dateofcreation: DateTime.parse("01/03/2017", "%m/%d/%Y %H:%M"), pindex: 654321, city: 'Москва', street: 'Автозаводская', house: '20', building: '1', flat: '9', telephone: '999-999', passportseries: 1457, passportnumber: 222000, passsportfrom: 'Москва', passportwhen: DateTime.parse("05/09/2000", "%m/%d/%Y %H:%M"), allergy: 'Аспирин')
Ward.create(floor: 1, nomer: 1, otdel: 'Терапевтический', capacity: 10)
Ward.create(floor: 2, nomer: 5, otdel: 'Хирургический', capacity: 5)
Period.create(dateofentrance: DateTime.parse("01/01/2017", "%m/%d/%Y %H:%M"), 
reasonofentrance: 'Жалобы на головные боли', dateofissue: DateTime.parse("01/02/2017", "%m/%d/%Y %H:%M"), dischargesummary: 'Лечение идет', card_id: 1, ward_id: 1)
Period.create(dateofentrance: DateTime.parse("01/01/2017", "%m/%d/%Y %H:%M"), 
reasonofentrance: 'Жалобы на сердце', dateofissue: DateTime.parse("01/02/2017", "%m/%d/%Y %H:%M"), dischargesummary: 'Выписаны препараты', card_id: 2, ward_id: 2)
