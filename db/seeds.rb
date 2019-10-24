# On supprime les bases de données précédentes : 
  Dogsitter.destroy_all
  Dog.destroy_all
  Stroll.delete_all

# On crée 6 promeneurs :
  Dogsitter.create(id: 1, first_name: "Audrey", last_name: "TAUTOU")
  Dogsitter.create(id: 2, first_name: "Robert", last_name: "DE NIRO")
  Dogsitter.create(id: 3, first_name: "Emma", last_name: "STONE")
  Dogsitter.create(id: 4, first_name: "Ryan", last_name: "GOSLING")
  Dogsitter.create(id: 5, first_name: "Marion", last_name: "COTILLARD")
  Dogsitter.create(id: 6, first_name: "Al", last_name: "PACINO")

# On affiche les 6 promeneurs créés :
  puts "\n"
  puts "6 promeneurs ont été créés :"
  puts "\n"
  tp Dogsitter.all, :first_name, :last_name

# On crée 6 chiens : 
  Dog.create(id:1, name: "Médor", breed: "labrador")
  Dog.create(id:2, name: "Bongo", breed: "rottweiler")
  Dog.create(id:3, name: "Audrétoutou", breed: "caniche")
  Dog.create(id:4, name: "Choupette", breed: "chihuahua")
  Dog.create(id:5, name: "Snoupedog", breed: "labrador")
  Dog.create(id:6, name: "Oddie", breed: "labrador")

# On affiche les 6 chiens créés :
  puts "\n"
  puts "6 chiens ont été créés :"
  puts "\n"
  tp Dog.all, :name, :breed

# On créé 4 promenades :
  Stroll.create(id: 1, dogsitter_id: 1, dog_id: 2, date: DateTime.new(2019,10,31,17,00))
  Stroll.create(id: 2, dogsitter_id: 5, dog_id: 1, date: DateTime.new(2019,11,22,18,00))
  Stroll.create(id: 3, dogsitter_id: 3, dog_id: 2, date: DateTime.new(2019,10,29,19,00))
  Stroll.create(id: 4, dogsitter_id: 3, dog_id: 2, date: DateTime.new(2019,12,31,12,00))
  puts "\n"
  puts "4 promenades ont été créées"

# On affiche tous les promeneurs de Bongo
  puts "\n"
  puts "Voici les promeneurs de Bongo :"
  puts "\n"
  tp Dog.find(2).dogsitters, :first_name, :last_name

# On affiche tous les labradors et leurs noms :
  puts "\n"
  puts "Voici tous les labradors :"
  puts "\n"
  tp Dog.where(breed: "labrador"), :name

# On modifie le promeneur d'une des promenades de Bongo :
  puts "\n"
  puts "Oups, la promenade de Bongo du 31 décembre est en fait avec Ryan et non avec Emma !"
  Stroll.find(4).update(dogsitter_id: 4)
  puts "\n"
  puts "--> PROMENADE MODIFIÉE"

# On affiche les nouveaux promeneurs de Bongo :
  puts "\n"
  puts "Voici la liste à jour des promeneurs de Bongo :"
  tp Dog.find(2).dogsitters, :first_name, :last_name

