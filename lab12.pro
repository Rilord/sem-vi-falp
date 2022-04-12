domains
  name, phone, city, street = symbol.
  house, flat = unsigned.
  manufacturer, colour = symbol.
  price = unsigned.
  bank, account = symbol. 
  amount = unsigned.
  
predicates
  contact(name, phone, address).
  car(name, manufacturer, colour, price).
  investment(name, bank, account, amount).
  
  contactToCar(name, phone, manufacturer, price).
  phoneToCar(phone, manufacturer).
  nameAndCityTobankAndStreet(name, city, bank, street).
  
clauses
  contact("Kirill", "8-800-555-35-35", address("Moscow", "Pr.Vernadskogo", 15, 100)).
  contact("Ivan", "8-915-433-34-14", address("Moscow", "Tverskaya-Yamskaya", 24, 234)).
  contact("Pavel", "8-800-555-25-35", address("Moscow", "Kantemirovskaya", 100, 10)).
  contact("Alex", "+1-234-567-89-10", address("London", "Odessa street", 25, 15)).
  contact("Mikhail", "8-800-555-35-35", address("Odessa", "Novoselskogo", 45, 3)).
  
  car("Kirill", "e-twow", "Black", 40000).
  car("Pavel", "Volga", "Black", 100000).
  car("Mikhail", "T-72", "Camo", 50000000).
  
  investment("Kirill", "Barclays", 10000).
  investment("Ivan", "Barclays", 10000).
  investment("Ivan", "Alpha", 50000).
  investment("Alex", "Chase", 10000).
  investment("Alex", "Bank of America", 2000).
  
  contactToCar(Phone, Name, Manufacturer, Price) :- 
    contact(Name, Phone, _), car(Name, Manufacturer, _, Price).
    
    nameAndCityTobankAndStreet(Name, City, Bank, Stree) :- 
      contact(Name, _, address(City, Stree, _, _)), investment(Surname, Bank, _).

goal
  contactToCar("8-800-555-35-35", QName, QManufacturer, QPrice).
  
  investor().