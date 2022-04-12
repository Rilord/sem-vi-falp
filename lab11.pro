domains
  name, phone, university = symbol.
  
predicates
  student(name, phone, university).
  
clauses
  student("Kirill", "8-800-555-35-35", "MGTU").
  student("Ivan", "8-915-433-34-14", "MGTU").
  student("Pavel", "8-977-152-45-43", "MEPHI").
  student("Alex", "+1-234-435-32-12", "UCLA").
  student("Alex", "+1-234-435-32-12", "MSU").
  
goal
  % student("Alex", "+1-234-435-32-12", "MGTU").
  % student("Alex", "+1-234-435-32-12", "MSU").
  student("Ivan", Phone, "MGTU").