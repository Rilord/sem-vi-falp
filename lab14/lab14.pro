domains
  name = symbol.
  gender = symbol.
  male, female = symbol.

predicates
  parent(name, name, gender).
  grandparent(name, name, gender, gender).

clauses
  parent("Andrey", "Boris", male).
  parent("Andrey", "Daria", female).
  parent("Boris", "Denis", male).
  parent("Boris", "Eugenia", female).
  parent("Daria", "Fedor", male).
  parent("Daria", "Julia", female).

  grandparent(Child, Grandparent, Branch, Gender) :-
    parent(Child, Parent, Branch),
    parent(Parent, Grandparent, Gender).

goal
  % grandparent("Andrey", Grandmother, _, female).
  % grandparent("Andrey", Grandfather, _, male).
  grandparent("Andrey", Grandparents, _, _).
  %grandparent("Andrey", Grandmother, female, female).
  %grandparent("Andrey", Grandmothers, female, _).
