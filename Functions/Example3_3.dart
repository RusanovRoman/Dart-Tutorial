// Параметры функций
// тип название_параметра

void main() {
  sum(5,7);
  printPerson("Roman", 29);
  printPersonDynamic("Irina", 32);
  printPersonNext("Tom");
  printPersonNamed(name: "Bob", age: 35);   // Передача параметров по имени.
  printPersonNamed(age: 29, name: "Alice");
  printPersonMust(name: "Kate");            // Обязательные параметры
  printPersonConst("Peter", 37);
}

void sum(int a, int b){
  int c = a + b;
  print(c);
}

void printPerson(String name, int age) {
  print("Name: $name");
  print("Age: $age \n");
}

void printPersonDynamic(dynamic name, dynamic age) {
  print("Name: $name");
  print("Age: $age \n");
}

// Может быть несколько необязательных параметров,
// и все помещаются в квадратные скобки:
void printPersonNext(String name, [int age = 22, String company = "Undefined"]) {
  print("Name: $name");
  print("Age: $age");
  print("Company: $company \n");
}

// Dart поддерживает передачу параметров по имени.
void printPersonNamed({String name = "undefined", int age=0}) {
  print("Name: $name");
  print("Age: $age \n");
}

// Обязательные параметры. Для этого применяется
// оператор required, который указывается перед параметром.
void printPersonMust({required String name, int age = 22}) {
  print("Name: $name");
  print("Age: $age\n");
}

// Также можно передавать через параметры значения локальным final-константам,
// поскольку они определяются во время выполнения.
void printPersonConst(String userName, int userAge) {
  // const int initialAge = userAge; - так нельзя, константа должна определяться на этапе компиляции
  final String name = userName;
  final int age = userAge;
  print("Name: $name; Age: $age \n");
}