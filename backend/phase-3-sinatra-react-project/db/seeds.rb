puts "🌱 Seeding spices..."

# Seed your database here

Doctor1 = Doctor.create(name: "Job Harry", email:"jobharry@gmail.com", password:666)
Doctor2 = Doctor.create(name: "Larry Page", email:"larrypage@gmail.com", password:555)
Doctor3 = Doctor.create(name: "Mary Sania", email:"marysania@gmail.com", password:444)
Doctor4 = Doctor.create(name: "Luke Safi", email:"lukesafi@gmail.com", password:111)
Doctor5 = Doctor.create(name: "Chery Blake", email:"cheryblake@gmail.com", password:222)
Doctor6 = Doctor.create(name: "Faith Neema", email:"faithneema@gmail.com",password:333)


Notification1 = Notification.create(about:"Your due to hold a meeting", doctor_id:Doctor1.id)
Notification2 = Notification.create(about:"Kindly see the HR", doctor_id:Doctor1.id)
Notification3 = Notification.create(about:"Advice Nurse Lucy on CPR procedure", doctor_id:Doctor1.id)
Notification4 = Notification.create(about:"Weekly Doctors meeting is next week", doctor_id:Doctor2.id)
Notification5 = Notification.create(about:"Administer Weekly checkups", doctor_id:Doctor2.id)
Notification6 = Notification.create(about:"Take a lunch break", doctor_id:Doctor2.id)
Notification7 = Notification.create(about:"Weekly Doctors meeting is next week", doctor_id:Doctor3.id)
Notification8 = Notification.create(about:"Yearly Nurses convention is next month on 24th", doctor_id:Doctor3.id)
Notification7 = Notification.create(about:"Head Evening roll call", doctor_id:Doctor3.id)
Notification8 = Notification.create(about:"Advice Nurse Lucy on CPR procedure", doctor_id:Doctor4.id)
Notification9 = Notification.create(about:"Weekly Doctors meeting is next week", doctor_id:Doctor4.id)
Notification10 = Notification.create(about:"Administer Weekly checkups", doctor_id:Doctor4.id)
Notification11 = Notification.create(about:"Your due to hold a meeting", doctor_id:Doctor5.id)
Notification12 = Notification.create(about:"Kindly see the HR", doctor_id:Doctor5.id)
Notification13 = Notification.create(about:"Advice Nurse Lucy on CPR procedure", doctor_id:Doctor5.id)
Notification14 = Notification.create(about:"Meeting at 12 ocklock with Dr Ryan", doctor_id:Doctor6.id)
Notification15 = Notification.create(about:"Revisit Patient Nancy Kimbo ailment history", doctor_id:Doctor6.id)
Notification16 = Notification.create(about:"Plan a surgery for Patient Jude", doctor_id:Doctor6.id)

Nurse1 = Nurse.create(name:"Betty Nduta", email:"bettynduta@gmail.com", job_id:11)
Nurse2 = Nurse.create(name:"Grace Kimani", email:"kimanigracea@gmail.com", job_id:12)
Nurse3 = Nurse.create(name:"Caleb Nyarindo", email:"calebnyarindo@gmail.com", job_id:13)
Nurse4 = Nurse.create(name:"Florence Wambugu", email:"wambuguflorence@gmail.com", job_id:14)

Patient1 = Patient.create_table(name:"Ryan Flake", telephone_number:254756789567, date_of_birth:1973-8-1, gender:"male", weight:56, bloodtype:"A", symptoms:"Headache", diagnosis:"Body fatigue")
Patient2 = Patient.create_table(name:"Mercy Tanui", telephone_number:254767897345, date_of_birth:1983-2-3, gender:"female", weight:46, bloodtype:"B", symptoms:"Muscle pains", diagnosis:"Body fatigue")
Patient3 = Patient.create_table(name:"Paul Mabeko", telephone_number:254734789509, date_of_birth:1993-1-5, gender:"male", weight:59, bloodtype:"O", symptoms:"Insomnia", diagnosis:"Needs more rest")
Patient4 = Patient.create_table(name:"Brenda Wairimu", telephone_number:254736879475, date_of_birth:1998-4-5, gender:"female", weight:89, bloodtype:"B", symptoms:"Diarrhoea", diagnosis:"Stomach infection")
Patient5 = Patient.create_table(name:"Haryy Fresh", telephone_number:254758456324, date_of_birth:2000-7-6, gender:"male", weight:32, bloodtype:"A", symptoms:"Vomiting", diagnosis:"Bilhazea")
Patient6 = Patient.create_table(name:"ALbert Biko", telephone_number:254709657349, date_of_birth:2004-6-2, gender:"male", weight:58, bloodtype:"B", symptoms:"Skin rushes", diagnosis:"Chicken pox")
Patient7 = Patient.create_table(name:"Mwendwa Alice", telephone_number:254748034078, date_of_birth:1974-9-7, gender:"female", weight:94, bloodtype:"A", symptoms:"Sweating", diagnosis:"Covid")


Appointment1 = Apppointment.create(date: 2022-9-10, time:"7:00am-8:00am", patient_id:Patient1.id, doctor_id:Doctor2.id)
Appointment2 = Apppointment.create(date: 2022-9-10, time:"9:00am-10:00am", patient_id:Patient2.id, doctor_id:Doctor2.id)
Appointment3 = Apppointment.create(date: 2022-9-10, time:"8:00am-9:00am", patient_id:Patient4.id, doctor_id:Doctor1.id)
Appointment4 = Apppointment.create(date: 2022-9-10, time:"7:00am-8:00am", patient_id:Patient3.id, doctor_id:Doctor1.id)
Appointment5 = Apppointment.create(date: 2022-9-10, time:"7:30am-8:00am", patient_id:Patient5.id, doctor_id:Doctor3.id)
Appointment6 = Apppointment.create(date: 2022-9-10, time:"8:00am-9:00am", patient_id:Patient6.id, doctor_id:Doctor3.id)
Appointment7 = Apppointment.create(date: 2022-9-10, time:"10:00am-11:00am", patient_id:Patient7.id, doctor_id:Doctor4.id)
Appointment8 = Apppointment.create(date: 2022-10-10, time:"7:00am-8:30am", patient_id:Patient4.id, doctor_id:Doctor4.id)
Appointment9 = Apppointment.create(date: 2022-8-10, time:"7:00am-9:30am", patient_id:Patient1.id, doctor_id:Doctor5.id)
Appointment10 = Apppointment.create(date: 2022-9-11, time:"10:00am-11:30am", patient_id:Patient6.id, doctor_id:Doctor5.id)
Appointment11 = Apppointment.create(date: 2022-9-7, time:"10:30am-11:00am", patient_id:Patient5.id, doctor_id:Doctor6.id)
Appointment12 = Apppointment.create(date: 2022-9-8, time:"9:00am-10:30am", patient_id:Patient2.id, doctor_id:Doctor6.id)

puts "✅ Done seeding!"
