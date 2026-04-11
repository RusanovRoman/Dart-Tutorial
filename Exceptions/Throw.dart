// Оператор throw позволяет нам самим сгенерировать исключение в необходимом месте.
void main (){

  try {
    Person tom = Person("Tom", 122);
    print(tom.age);
  }
  on Exception catch(e) {
    print(e);
  }
}

class Person{
  String name;
  int age = 1;

  Person(this.name, age){
    if(age < 1 || age > 110) {
      //throw Exception("Недопустимый возраст");  // Обычный вариант
      throw AgeException(age);    // генерируем исключение AgeException
    }
    this.age = age; // если возраст корректный, устанавливем его
  }
}

// Создание своих исключений
class AgeException implements Exception{
  int value;
  AgeException(this.value);
  @override
  String toString() => "Недопустимый возраст";
}