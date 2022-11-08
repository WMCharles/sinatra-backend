puts "seeding database..."

Job.create(title: "Software Developer", description: "3 Year Experience", deadline: 2022-11-8)
Job.create(title: "Software Engineer", description: "4 Year Experience", deadline: 2022-11-8)
Job.create(title: "ML Engineer", description: "2 Year Experience", deadline: 2022-12-8)
Job.create(title: "Geospatial Analytics", description: "6 Year Experience", deadline: 2023-01-7)

Category.create(name: "Front-End Dev", description:"React")
Category.create(name: "Backend Dev", description: "Ruby/Sinatra/Rails")
Category.create(name: "Geospatial", description: "Conversant with R && C++")
Category.create(name: "Full-Stack", description: "React + Django")

job1 = Job.find(1) 
job2 = Job.find(2) 
job3 = Job.find(3) 

category1 = Job.find(1) 
category2 = Job.find(2) 
category3 = Job.find(3) 


Tag.create(name:"ML", job_id: job1.id, category_id: category1.id)
Tag.create(name:"GIS", job_id: job2.id, category_id: category2.id)
Tag.create(name:"AI", job_id: job3.id, category_id: category3.id)

puts "Done Seeding!!"