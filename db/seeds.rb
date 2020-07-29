# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#ADMIN USER --> Somente para esse usuário o "Espaço Admin" está liberado, no qual estão as rotas para Sports, Facilities e Timeslots

User.create(email: 'admin@sportshub.com.br', password: 'adminuser123', password_confirmation: 'adminuser123', name: 'Admin 1', numeroUSP: 9457803, telephone: '+5511997861096')

#DEFAULT SPORTS

sport1 = Sport.create(code: 1, name: 'Tênis')
sport2 = Sport.create(code: 2, name: 'Futebol de Campo')
sport3 = Sport.create(code: 3, name: 'Futebol de Areia')
sport4 = Sport.create(code: 4, name: 'Demais Esportes (Vôlei, Handebol, Basquete)')


#DEFAULT TIMESLOTS

#Segunda

Timeslot.create(code: 1, weekday: 1, start_time: "2000-01-01 06:30:00", end_time:"2000-01-01 07:30:00")
Timeslot.create(code: 2, weekday: 1, start_time: "2000-01-01 07:30:00", end_time:"2000-01-01 08:30:00")
Timeslot.create(code: 3, weekday: 1, start_time: "2000-01-01 08:30:00", end_time:"2000-01-01 09:30:00")
Timeslot.create(code: 4, weekday: 1, start_time: "2000-01-01 09:30:00", end_time:"2000-01-01 10:30:00")
Timeslot.create(code: 5, weekday: 1, start_time: "2000-01-01 10:30:00", end_time:"2000-01-01 11:30:00")
Timeslot.create(code: 6, weekday: 1, start_time: "2000-01-01 11:30:00", end_time:"2000-01-01 12:30:00")
Timeslot.create(code: 7, weekday: 1, start_time: "2000-01-01 12:30:00", end_time:"2000-01-01 13:30:00")
Timeslot.create(code: 8, weekday: 1, start_time: "2000-01-01 13:30:00", end_time:"2000-01-01 14:30:00")
Timeslot.create(code: 9, weekday: 1, start_time: "2000-01-01 14:30:00", end_time:"2000-01-01 15:30:00")
Timeslot.create(code: 10, weekday: 1, start_time: "2000-01-01 15:30:00", end_time:"2000-01-01 16:30:00")
Timeslot.create(code: 11, weekday: 1, start_time: "2000-01-01 16:30:00", end_time:"2000-01-01 17:30:00")
Timeslot.create(code: 12, weekday: 1, start_time: "2000-01-01 17:30:00", end_time:"2000-01-01 18:30:00")
Timeslot.create(code: 13, weekday: 1, start_time: "2000-01-01 18:30:00", end_time:"2000-01-01 19:30:00")
Timeslot.create(code: 14, weekday: 1, start_time: "2000-01-01 19:30:00", end_time:"2000-01-01 20:30:00")
Timeslot.create(code: 15, weekday: 1, start_time: "2000-01-01 20:30:00", end_time:"2000-01-01 21:30:00")

#Terça

Timeslot.create(code: 16, weekday: 2, start_time: "2000-01-01 06:30:00", end_time:"2000-01-01 07:30:00")
Timeslot.create(code: 17, weekday: 2, start_time: "2000-01-01 07:30:00", end_time:"2000-01-01 08:30:00")
Timeslot.create(code: 18, weekday: 2, start_time: "2000-01-01 08:30:00", end_time:"2000-01-01 09:30:00")
Timeslot.create(code: 19, weekday: 2, start_time: "2000-01-01 09:30:00", end_time:"2000-01-01 10:30:00")
Timeslot.create(code: 20, weekday: 2, start_time: "2000-01-01 10:30:00", end_time:"2000-01-01 11:30:00")
Timeslot.create(code: 21, weekday: 2, start_time: "2000-01-01 11:30:00", end_time:"2000-01-01 12:30:00")
Timeslot.create(code: 22, weekday: 2, start_time: "2000-01-01 12:30:00", end_time:"2000-01-01 13:30:00")
Timeslot.create(code: 23, weekday: 2, start_time: "2000-01-01 13:30:00", end_time:"2000-01-01 14:30:00")
Timeslot.create(code: 24, weekday: 2, start_time: "2000-01-01 14:30:00", end_time:"2000-01-01 15:30:00")
Timeslot.create(code: 25, weekday: 2, start_time: "2000-01-01 15:30:00", end_time:"2000-01-01 16:30:00")
Timeslot.create(code: 26, weekday: 2, start_time: "2000-01-01 16:30:00", end_time:"2000-01-01 17:30:00")
Timeslot.create(code: 27, weekday: 2, start_time: "2000-01-01 17:30:00", end_time:"2000-01-01 18:30:00")
Timeslot.create(code: 28, weekday: 2, start_time: "2000-01-01 18:30:00", end_time:"2000-01-01 19:30:00")
Timeslot.create(code: 29, weekday: 2, start_time: "2000-01-01 19:30:00", end_time:"2000-01-01 20:30:00")
Timeslot.create(code: 30, weekday: 2, start_time: "2000-01-01 20:30:00", end_time:"2000-01-01 21:30:00")

#Quarta

Timeslot.create(code: 31, weekday: 3, start_time: "2000-01-01 06:30:00", end_time:"2000-01-01 07:30:00")
Timeslot.create(code: 32, weekday: 3, start_time: "2000-01-01 07:30:00", end_time:"2000-01-01 08:30:00")
Timeslot.create(code: 33, weekday: 3, start_time: "2000-01-01 08:30:00", end_time:"2000-01-01 09:30:00")
Timeslot.create(code: 34, weekday: 3, start_time: "2000-01-01 09:30:00", end_time:"2000-01-01 10:30:00")
Timeslot.create(code: 35, weekday: 3, start_time: "2000-01-01 10:30:00", end_time:"2000-01-01 11:30:00")
Timeslot.create(code: 36, weekday: 3, start_time: "2000-01-01 11:30:00", end_time:"2000-01-01 12:30:00")
Timeslot.create(code: 37, weekday: 3, start_time: "2000-01-01 12:30:00", end_time:"2000-01-01 13:30:00")
Timeslot.create(code: 38, weekday: 3, start_time: "2000-01-01 13:30:00", end_time:"2000-01-01 14:30:00")
Timeslot.create(code: 39, weekday: 3, start_time: "2000-01-01 14:30:00", end_time:"2000-01-01 15:30:00")
Timeslot.create(code: 40, weekday: 3, start_time: "2000-01-01 15:30:00", end_time:"2000-01-01 16:30:00")
Timeslot.create(code: 41, weekday: 3, start_time: "2000-01-01 16:30:00", end_time:"2000-01-01 17:30:00")
Timeslot.create(code: 42, weekday: 3, start_time: "2000-01-01 17:30:00", end_time:"2000-01-01 18:30:00")
Timeslot.create(code: 43, weekday: 3, start_time: "2000-01-01 18:30:00", end_time:"2000-01-01 19:30:00")
Timeslot.create(code: 44, weekday: 3, start_time: "2000-01-01 19:30:00", end_time:"2000-01-01 20:30:00")
Timeslot.create(code: 45, weekday: 3, start_time: "2000-01-01 20:30:00", end_time:"2000-01-01 21:30:00")


#Quinta

Timeslot.create(code: 46, weekday: 4, start_time: "2000-01-01 06:30:00", end_time:"2000-01-01 07:30:00")
Timeslot.create(code: 47, weekday: 4, start_time: "2000-01-01 07:30:00", end_time:"2000-01-01 08:30:00")
Timeslot.create(code: 48, weekday: 4, start_time: "2000-01-01 08:30:00", end_time:"2000-01-01 09:30:00")
Timeslot.create(code: 49, weekday: 4, start_time: "2000-01-01 09:30:00", end_time:"2000-01-01 10:30:00")
Timeslot.create(code: 50, weekday: 4, start_time: "2000-01-01 10:30:00", end_time:"2000-01-01 11:30:00")
Timeslot.create(code: 51, weekday: 4, start_time: "2000-01-01 11:30:00", end_time:"2000-01-01 12:30:00")
Timeslot.create(code: 52, weekday: 4, start_time: "2000-01-01 12:30:00", end_time:"2000-01-01 13:30:00")
Timeslot.create(code: 53, weekday: 4, start_time: "2000-01-01 13:30:00", end_time:"2000-01-01 14:30:00")
Timeslot.create(code: 54, weekday: 4, start_time: "2000-01-01 14:30:00", end_time:"2000-01-01 15:30:00")
Timeslot.create(code: 55, weekday: 4, start_time: "2000-01-01 15:30:00", end_time:"2000-01-01 16:30:00")
Timeslot.create(code: 56, weekday: 4, start_time: "2000-01-01 16:30:00", end_time:"2000-01-01 17:30:00")
Timeslot.create(code: 57, weekday: 4, start_time: "2000-01-01 17:30:00", end_time:"2000-01-01 18:30:00")
Timeslot.create(code: 58, weekday: 4, start_time: "2000-01-01 18:30:00", end_time:"2000-01-01 19:30:00")
Timeslot.create(code: 59, weekday: 4, start_time: "2000-01-01 19:30:00", end_time:"2000-01-01 20:30:00")
Timeslot.create(code: 60, weekday: 4, start_time: "2000-01-01 20:30:00", end_time:"2000-01-01 21:30:00")

#Sexta

Timeslot.create(code: 61, weekday: 5, start_time: "2000-01-01 06:30:00", end_time:"2000-01-01 07:30:00")
Timeslot.create(code: 62, weekday: 5, start_time: "2000-01-01 07:30:00", end_time:"2000-01-01 08:30:00")
Timeslot.create(code: 63, weekday: 5, start_time: "2000-01-01 08:30:00", end_time:"2000-01-01 09:30:00")
Timeslot.create(code: 64, weekday: 5, start_time: "2000-01-01 09:30:00", end_time:"2000-01-01 10:30:00")
Timeslot.create(code: 65, weekday: 5, start_time: "2000-01-01 10:30:00", end_time:"2000-01-01 11:30:00")
Timeslot.create(code: 66, weekday: 5, start_time: "2000-01-01 11:30:00", end_time:"2000-01-01 12:30:00")
Timeslot.create(code: 67, weekday: 5, start_time: "2000-01-01 12:30:00", end_time:"2000-01-01 13:30:00")
Timeslot.create(code: 68, weekday: 5, start_time: "2000-01-01 13:30:00", end_time:"2000-01-01 14:30:00")
Timeslot.create(code: 69, weekday: 5, start_time: "2000-01-01 14:30:00", end_time:"2000-01-01 15:30:00")
Timeslot.create(code: 70, weekday: 5, start_time: "2000-01-01 15:30:00", end_time:"2000-01-01 16:30:00")
Timeslot.create(code: 71, weekday: 5, start_time: "2000-01-01 16:30:00", end_time:"2000-01-01 17:30:00")
Timeslot.create(code: 72, weekday: 5, start_time: "2000-01-01 17:30:00", end_time:"2000-01-01 18:30:00")
Timeslot.create(code: 73, weekday: 5, start_time: "2000-01-01 18:30:00", end_time:"2000-01-01 19:30:00")
Timeslot.create(code: 74, weekday: 5, start_time: "2000-01-01 19:30:00", end_time:"2000-01-01 20:30:00")
Timeslot.create(code: 75, weekday: 5, start_time: "2000-01-01 20:30:00", end_time:"2000-01-01 21:30:00")

#Sabado

Timeslot.create(code: 76, weekday: 6, start_time: "2000-01-01 08:00:00", end_time:"2000-01-01 09:00:00")
Timeslot.create(code: 77, weekday: 6, start_time: "2000-01-01 09:00:00", end_time:"2000-01-01 10:00:00")
Timeslot.create(code: 78, weekday: 6, start_time: "2000-01-01 10:00:00", end_time:"2000-01-01 11:00:00")
Timeslot.create(code: 79, weekday: 6, start_time: "2000-01-01 11:00:00", end_time:"2000-01-01 12:00:00")
Timeslot.create(code: 80, weekday: 6, start_time: "2000-01-01 12:00:00", end_time:"2000-01-01 13:00:00")
Timeslot.create(code: 81, weekday: 6, start_time: "2000-01-01 13:00:00", end_time:"2000-01-01 14:00:00")
Timeslot.create(code: 82, weekday: 6, start_time: "2000-01-01 14:00:00", end_time:"2000-01-01 15:00:00")
Timeslot.create(code: 83, weekday: 6, start_time: "2000-01-01 15:00:00", end_time:"2000-01-01 16:00:00")
Timeslot.create(code: 84, weekday: 6, start_time: "2000-01-01 16:00:00", end_time:"2000-01-01 17:30:00")

#Domingo

Timeslot.create(code: 85, weekday: 0, start_time: "2000-01-01 08:00:00", end_time:"2000-01-01 09:00:00")
Timeslot.create(code: 86, weekday: 0, start_time: "2000-01-01 09:00:00", end_time:"2000-01-01 10:00:00")
Timeslot.create(code: 87, weekday: 0, start_time: "2000-01-01 10:00:00", end_time:"2000-01-01 11:00:00")
Timeslot.create(code: 88, weekday: 0, start_time: "2000-01-01 11:00:00", end_time:"2000-01-01 12:00:00")
Timeslot.create(code: 89, weekday: 0, start_time: "2000-01-01 12:00:00", end_time:"2000-01-01 13:00:00")
Timeslot.create(code: 90, weekday: 0, start_time: "2000-01-01 13:00:00", end_time:"2000-01-01 14:00:00")
Timeslot.create(code: 91, weekday: 0, start_time: "2000-01-01 14:00:00", end_time:"2000-01-01 15:00:00")
Timeslot.create(code: 92, weekday: 0, start_time: "2000-01-01 15:00:00", end_time:"2000-01-01 16:00:00")
Timeslot.create(code: 93, weekday: 0, start_time: "2000-01-01 16:00:00", end_time:"2000-01-01 17:00:00")


#DEFAULT FACILITIES

#Facilities para Tênis

Facility.create(name: 'Quadra 1' , mode: 'Outdoor', sport: sport1)
Facility.create(name: 'Quadra 2' , mode: 'Outdoor', sport: sport1)
Facility.create(name: 'Quadra 3' , mode: 'Outdoor', sport: sport1)
Facility.create(name: 'Quadra 4' , mode: 'Outdoor', sport: sport1)
Facility.create(name: 'Quadra 5' , mode: 'Outdoor', sport: sport1)
Facility.create(name: 'Quadra 6' , mode: 'Outdoor', sport: sport1)
Facility.create(name: 'Quadra 7' , mode: 'Outdoor', sport: sport1)
Facility.create(name: 'Quadra 8' , mode: 'Outdoor', sport: sport1)
Facility.create(name: 'Quadra 9' , mode: 'Outdoor', sport: sport1)

#Facilities para Futebol de Campo

Facility.create(name: 'Campo 1' , mode: 'Outdoor', sport: sport2)
Facility.create(name: 'Campo 2' , mode: 'Outdoor', sport: sport2)
Facility.create(name: 'Campo 3' , mode: 'Outdoor', sport: sport2)
Facility.create(name: 'Campo 4' , mode: 'Outdoor', sport: sport2)
Facility.create(name: 'Campo 5' , mode: 'Outdoor', sport: sport2)

#Facilities para Futebol de Areia

Facility.create(name: 'Campo de Areia' , mode: 'Outdoor', sport: sport3)

#Facilities para Demais Esportes

Facility.create(name: 'Quadra Externa 1' , mode: 'Outdoor', sport: sport4)
Facility.create(name: 'Quadra Externa 2' , mode: 'Outdoor', sport: sport4)
Facility.create(name: 'Quadra Externa 3' , mode: 'Outdoor', sport: sport4)
Facility.create(name: 'Quadra Externa 4' , mode: 'Outdoor', sport: sport4)
Facility.create(name: 'Quadra Externa 5' , mode: 'Outdoor', sport: sport4)
Facility.create(name: 'Quadra Externa 6' , mode: 'Outdoor', sport: sport4)
Facility.create(name: 'Quadra Externa 7' , mode: 'Outdoor', sport: sport4)
Facility.create(name: 'Quadra Externa 8' , mode: 'Outdoor', sport: sport4)
Facility.create(name: 'Quadra Externa 9' , mode: 'Outdoor', sport: sport4)
Facility.create(name: 'Quadra Externa 10' , mode: 'Outdoor', sport: sport4)

Facility.create(name: 'Quadra Coberta 1' , mode: 'Indoor', sport: sport4)
Facility.create(name: 'Quadra Coberta 2' , mode: 'Indoor', sport: sport4)
Facility.create(name: 'Quadra Coberta 3' , mode: 'Indoor', sport: sport4)
Facility.create(name: 'Quadra Coberta 4' , mode: 'Indoor', sport: sport4)

