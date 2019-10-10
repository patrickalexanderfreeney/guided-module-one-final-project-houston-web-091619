Member.destroy_all
Specialist.destroy_all
Session.destroy_all




m1 = Member.create(name: "Patrick", email: "pat@pat.com", password: "patpat")
m2 = Member.create(name: "D-Money", email: "securethebag@mail.com", password: "alwaysgotdamoney")

sp1 = Specialist.create(name: "Massage Master - Massage", specialty: "Massage Therapy")
sp2 = Specialist.create(name: "YogaMaste - Yoga", specialty: "Yoga")
sp3 = Specialist.create(name: "Meditate on that - Meditation", specialty: "Meditation")
sp4 = Specialist.create(name: "WalkOn - Speed Walking", specialty: "Speed walking coach")
sp5 = Specialist.create(name: "RunThat - Cross Country", specialty: "Cross Country")

ses1 = Session.create(member_id: m1.id, specialist_id: sp1.id, time: "1pm" )
ses2 = Session.create(member_id: m1.id, specialist_id: sp1.id, time: "2pm" )
ses3 = Session.create(member_id: m2.id, specialist_id: sp2.id, time: "3pm" )
ses4 = Session.create(member_id: m2.id, specialist_id: sp1.id, time: "4pm" )
ses5 = Session.create(member_id: m1.id, specialist_id: sp3.id, time: "5pm" )

