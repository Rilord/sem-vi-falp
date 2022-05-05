domains
  name = symbol.
  gender = symbol.
  male, female = symbol.
  order = unsigned.

predicates
  parent(name, name, gender).
  mother_order(name, name, order).

clauses
  parent("Andrey", "Boris", male).
  parent("Andrey", "Daria", female).
  parent("Boris", "Denis", male).
  parent("Boris", "Eugenia", female).
  parent("Daria", "Fedor", male).
  parent("Daria", "Julia", female).
  parent("Julia", "Elizabeth", female).
  parent("Julia", "Margo", female).
  
  mother_order(Name, NMother, 1) :- parent(Name, NMother, female).

  mother_order(Name, NMother, Order) :- 
    parent(Name, Mother, female), mother_order(Mother, NMother, Order1), Order = Order1 + 1.

goal

  mother_order("Andrey", Mother, 3).
