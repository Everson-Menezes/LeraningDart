void learningDart() {
  //Map exemplo:
  //Object it is on the top of inheritance chain types to a variable. Under that we've got (string, interger, float, etc..).
  //I understand that map it's a generic list of objects with key and values. So in this case I create a const list named
  // person that has the keys (name, lastName, age, weight and hight) and your values are (Evers, Menezes, 20, 90.99, 1.77)

  const person = {
    'name': "Everson",
    'lastName': "Menezes",
    'age': 20,
    'weight': 90.99,
    'hight': 1.77
  };
  //this print the hole object values person
  print(person);

  //this print the value associated at key
  print(person['name']);
  //person['name'] = "Jõãozinho"; this line of code will throw an exception because const variables are unmodify.
  print(person['name']);

  print(person['age']);
  print(person['hight']);
  var person2 = {
    'name': "Everson",
    'lastName': "Menezes",
    'age': 20,
    'weight': 90.99,
    'hight': 1.77
  };
  //this print the hole object values person
  print(person2);

  //this print the value associated at key
  print(person2['name']);
  person2['name'] = "Jõãozinho";
  print(person2['name']);
}
