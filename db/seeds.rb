Breed.create(name: "labrador")
Breed.create(name: "husky")
Breed.create(name: "rotweiler")
Breed.create(name: "beagle")
Breed.create(name: "bull dog")

User.create(first_name: "Bob", last_name: "Smith", email: "bob@smith.com", password: "123456")
User.create(first_name: "Anne", last_name: "Mayer", email: "anne@mayer.com", password: "123456")
User.create(first_name: "Michael", last_name: "Giuliani", email: "miachel@giuliani.com", password: "123456")

Dog.create(
  name: "Benny",
  breed_id: 4,
  user_id: 1,
  photo: "https://i.pinimg.com/originals/98/26/0c/98260c79de186780c226ad39479b30f2.jpg",
  description: "Benny comes off as polite and shy, but as he has gotten comfy in his foster family's home and routine, he is gaining confidence and becoming quite the sweet clown. He is gentle and affectionate. He plays a lot with Eric (another Wonder dog available now!) - they dance around and cuddle in exhaustion! Benny is great on leash and loves when he sees you grab the leash. If you are just relaxing - he's fine with that too. He is not pushy or aggressive - he's just happy to be with you whether working out or hanging at the house. He is shy in a busy dog park situation and will stay with you looking for calm in the dog park storm. He will be shy with you, initially, but he warms up in a few days. He does like to get under your covers at night, fyi. ",
  age: 2,
  pedigree: false,
  address: "Via Aosta, Milano")
Dog.create(
  name: "Eric",
  breed_id: 4,
  user_id: 1,
  photo: "https://www.pets4homes.co.uk/images/breeds/45/large/effe1a5f6e2d91436a33a90b92928386.jpg",
  description: "Eric comes off as polite and shy, but as he has gotten comfy in his foster family's home and routine, he is gaining confidence and becoming quite the sweet clown. He is gentle and affectionate. He plays a lot with Benny (another Wonder dog available now!) - they dance around and cuddle in exhaustion! Benny is great on leash and loves when he sees you grab the leash. If you are just relaxing - he's fine with that too. He is not pushy or aggressive - he's just happy to be with you whether working out or hanging at the house. He is shy in a busy dog park situation and will stay with you looking for calm in the dog park storm. He will be shy with you, initially, but he warms up in a few days. He does like to get under your covers at night, fyi. ",
  age: 2,
  pedigree: false,
  address: "Via manusardi, Milano")
Dog.create(
  name: "Tammy",
  breed_id: 2,
  user_id: 3,
  photo: "http://cdn0.wideopenpets.com/wp-content/uploads/2017/11/AdobeStock_38568757-1024x683.jpeg",
  description: "now is the second of two dogs rescued from Korea by Mr. Muggles several weeks ago. This beautiful dog with her sparkling white teeth is probably just a year of age and she’s friendly, sweet and playful. We have not tested her around cats at this point. Here with her San Francisco foster parent, Snow has been learning about potty training and how to walk on a leash and she is making good progress. Snow will make a wonderful companion for some lucky family ",
  age: 3,
  pedigree: true,
  address: "Bologna")
Dog.create(
  name: "Duchess",
  breed_id: 1,
  user_id: 3,
  photo: "https://www.dogalize.com/wp-content/uploads/2016/12/dog-1210559_1280.jpg",
  description: "Duchess is a 3-year-old spayed female yellow lab. Duchess weighs 80 pounds and is up to date on shots. This dog is approved for homes with children ages 7 and up",
  age: 72,
  pedigree: false,
  address: "Pavia")
Dog.create(
  name: "Lenny",
  breed_id: 1,
  user_id: 3,
  photo: "http://www.allevamento-giorgi-labrador.it/wp-content/uploads/2017/12/porthos-labrador-chocolate.jpg",
  description: "Lenny is a very scared pup.  He is more comfortable having another confident dog along his side.  He seems to be house trained, crate trained.",
  age: 40,
  pedigree: false,
  address: "Asti")
  Dog.create(
  name: "Grace",
  breed_id: 3,
  user_id: 3,
  photo: "https://imieianimali.it/wp-content/uploads/2015/06/Rottweiler.jpg",
  description: "Grace was rescued from the Fresno area. She was unable to stand when brought into the shelter and things did not look good. We jumped in to help her! Medical work showed that she was anemic and had high liver values. These could be the result of malnutrition or liver disease. She’s eating well right now and we will be retesting her blood work around the end of March. Her foster mom says she is doing quite well! Stay tuned for an update! ",
  age: 40,
  pedigree: false,
  address: "Via Lanzone, Milano")
  Dog.create(
  name: "Loly",
  breed_id: 1,
  user_id: 3,
  photo: "https://www.casasuper.it/images/animali/cani/cucciolo-di-rottweiler.jpg",
  description: "Loly is well trained using positive reinforcement training and behaviour modification and relaxation protocols. She loves to work for treats and her kibble and is clicker trained. She also loves praise and encouragement meant to build up her confidence.",
  age: 2,
  pedigree: false,
  address: "La Spezia")
  Dog.create(
  name: "Oreo",
  breed_id: 1,
  user_id: 3,
  photo: "http://www.labradorretrieverguide.com/wp-content/uploads/2013/02/First-Day-Home-of-Labrador-Puppy.png",
  description: "Oreo is enjoying being walked by volunteers but he can be a bit strong in the beginning of his stroll. We are working on having him focus when he gets too excited. Positive obedience training in his new home would help him to be the best boy he could be.",
  age: 10,
  pedigree: false,
  address: "Macugnaga")
  Dog.create(
  name: "Robby",
  breed_id: 1,
  user_id: 3,
  photo: "http://www.stylelabrador.it/wp-content/uploads/2017/06/maschio.jpg",
  description: "Robby was rescued from the Fresno area. She was unable to stand when brought into the shelter and things did not look good. We jumped in to help her! Medical work showed that she was anemic and had high liver values. These could be the result of malnutrition or liver disease. She’s eating well right now and we will be retesting her blood work around the end of March. Her foster mom says she is doing quite well! Stay tuned for an update! ",
  age: 40,
  pedigree: false,
  address: "Via cadore, Milano")
  Dog.create(
  name: "Maya",
  breed_id: 5,
  user_id: 3,
  photo: "https://irp-cdn.multiscreensite.com/a123db97/dms3rep/multi/IMG_3571-03-08-17-05-55.JPG",
  description: "Maya was rescued from the Fresno area. She was unable to stand when brought into the shelter and things did not look good. We jumped in to help her! Medical work showed that she was anemic and had high liver values. These could be the result of malnutrition or liver disease. She’s eating well right now and we will be retesting her blood work around the end of March. Her foster mom says she is doing quite well! Stay tuned for an update! ",
  age: 7,
  pedigree: false,
  address: "Via brioschi, Milano")
  Dog.create(
  name: "Shila",
  breed_id: 4,
  user_id: 4,
  photo: "https://www.selectadogbreed.com/media/1017/beagle_adult.jpg",
  description: "Robby was rescued from the Fresno area. She was unable to stand when brought into the shelter and things did not look good. We jumped in to help her! Medical work showed that she was anemic and had high liver values. These could be the result of malnutrition or liver disease. She’s eating well right now and we will be retesting her blood work around the end of March. Her foster mom says she is doing quite well! Stay tuned for an update! ",
  age: 30,
  pedigree: false,
  address: "Via pola, Milano")
  Dog.create(
  name: "Sonny",
  breed_id: 2,
  user_id: 1,
  photo: "http://www.annunciefree.com/img/annunci/030610/Siberian-Husky-cuccioli-per-l-adozione_3219_1.jpg",
  description: "Robby was rescued from the Fresno area. She was unable to stand when brought into the shelter and things did not look good. We jumped in to help her! Medical work showed that she was anemic and had high liver values. These could be the result of malnutrition or liver disease. She’s eating well right now and we will be retesting her blood work around the end of March. Her foster mom says she is doing quite well! Stay tuned for an update! ",
  age: 10,
  pedigree: false,
  address: "Via savona, Milano")
  Dog.create(
  name: "Buddy",
  breed_id: 2,
  user_id: 2,
  photo: "http://www.siberian-husky-baikal.it/wp-content/uploads/2015/09/F2-TANGOTARA-COTTON-CLUB-e1454428691809-1024x684.jpg",
  description: "Robby was rescued from the Fresno area. She was unable to stand when brought into the shelter and things did not look good. We jumped in to help her! Medical work showed that she was anemic and had high liver values. These could be the result of malnutrition or liver disease. She’s eating well right now and we will be retesting her blood work around the end of March. Her foster mom says she is doing quite well! Stay tuned for an update! ",
  age: 45,
  pedigree: false,
  address: "Via lombardini, Milano")
  Dog.create(
  name: "Spot",
  breed_id: 1,
  user_id: 3,
  photo: "https://i.pinimg.com/originals/a1/f2/23/a1f223a93fb862276d8e86c6f8e6e646.jpg",
  description: "Robby was rescued from the Fresno area. She was unable to stand when brought into the shelter and things did not look good. We jumped in to help her! Medical work showed that she was anemic and had high liver values. These could be the result of malnutrition or liver disease. She’s eating well right now and we will be retesting her blood work around the end of March. Her foster mom says she is doing quite well! Stay tuned for an update! ",
  age: 3,
  pedigree: false,
  address: "Viale umbria, Milano")
  Dog.create(
  name: "Billy",
  breed_id: 5,
  user_id: 1,
  photo: "http://best5.it/b5/wp-content/uploads/2013/08/bulldog-inglese-foto-1.jpg",
  description: "Robby was rescued from the Fresno area. She was unable to stand when brought into the shelter and things did not look good. We jumped in to help her! Medical work showed that she was anemic and had high liver values. These could be the result of malnutrition or liver disease. She’s eating well right now and we will be retesting her blood work around the end of March. Her foster mom says she is doing quite well! Stay tuned for an update! ",
  age: 40,
  pedigree: false,
  address: "Via santa marta, Milano")

Appointment.create(
  date: "2018-04-21",
  message: "Hey!! I'd love to come take a look at your dog!!",
  status: 0,
  user_id: 1,
  dog_id: 2
  )

Appointment.create(
  date: "2018-04-23",
  message: "Hey!! Can we meet up to see your dog??",
  status: 0,
  user_id: 2,
  dog_id: 3
  )

Appointment.create(
  date: "2018-04-21",
  message: "Hey!! I'd love to come take a look at your dog!!",
  status: 0,
  user_id: 1,
  dog_id: 2
  )

Appointment.create(
  date: "2018-04-20",
  message: "Do you have some time to show me your cute dog??",
  status: 0,
  user_id: 3,
  dog_id: 1
  )
