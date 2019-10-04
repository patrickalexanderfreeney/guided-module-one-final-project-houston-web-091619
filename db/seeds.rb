Member.destroy_all
Specialist.destroy_all
Session.destroy_all




m1 = Member.create(name: “Patrick”, email: “pat@pat.com”, password: “patpat”)
m2 = Member.create(name: “D-Money”, email: “securethebag@mail.com”, password: “alwaysgotdamoney”)


sp1 = Specialist.create(name: “Massage Master”, specialty: “Massage Therapy”)
sp2 = Specialist.create(name: “YogaMaste”, specialty: “Yoga”)
sp3 = Specialist.create(name: “Meditate on that”, specialty: “Meditation”)
sp4 = Specialist.create(name: “WalkOn”, specialty: “Speed walking coach”)
sp5 = Specialist.create(name: “RunThat”, specialty: “Cross Country”) 


