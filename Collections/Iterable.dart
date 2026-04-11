//Класс Iterable<E> представляет базовый тип для других типов коллекций,
// в частности, для типов List и Set, и предоставляет ряд общей функциональности.

void main () {
  // Фильтрация элементов
  var list = ["Tom", "Alice", "Bob", "Sam", "Kate"];
  // Метод where() позволяет выбрать элементы по условию.
  var new_list = list.where((item)=> item.length==3);
  print(new_list);   // (Tom, Bob, Sam)

  const numbers = [1, 2, 3, 4];
  // Метод map() позволяет преобразовать данные коллекции:
  final squares = numbers.map((n) => n * n);
  print(squares);     // (1, 4, 9, 16)

  // Метод reduce() позволяет свести элементы коллекции к одному значению.
  final sum = numbers.reduce((total, element) => total += element);
  print(sum);     // 10

  // Метод fold() также позволяет свести все элементы коллекции к одному значению.
  // Но в отличие от метода reduce() метод fold() позволяет задать начальное значение.
  const nums = <int>[];
  final sum2 = nums.fold(0, (total, element) => total += element);
  print(sum2);     // 0

  // Методы every() и any() проверяют соответствие элементов некоторому условию
  print(list.every((element)=>element.length > 2));    // true
  print(list.every((element)=>element.length > 3));   // false

  print(list.any((element)=>element.length > 3));    // true
  print(list.any((element)=>element.length > 4));   // false

  // Метод skip() позволяет пропустить некоторое количество элементов.
  var new_list2 = list.skip(2);    // пропускаем 2 первых элемента
  print(new_list2);    // (Sam, Kate, Alice)

  // Метод skipWhile() позволяет пропустить элементы с начала коллекции
  var new_list3 = list.skipWhile((elem) => elem.length==3);  // пропускаем первые строки с длиной в 3 символа
  print(new_list3);

  // Метод take() позволяет взять из коллекции некоторое количество элементов
  var new_list4 = list.take(3);    // берем 3 первых элемента
  print(new_list4);

  // Метод takeWhile() позволяет извлекать элементы с начала коллекции, пока они соответствуют условию.
  var new_list5 = list.takeWhile((elem) => elem.length==3);  // берем первые строки с длиной в 3 символа
  print(new_list5);

}

