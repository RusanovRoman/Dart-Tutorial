// Область видимости переменных и констант.
const global = "global";

void main()
{
  const local_main = "main";

  if(true) {
    const local_if = "if";

    print(global);
    print(local_main);
    print(local_if);
  }

  print(global);
  print(local_main);
  // print(local_if);     // ! Ошибка
  // print(local_hello);  // Так нельзя - константа local_hello не доступна
}

void hello() {
  const local_hello = "hello";
  print(global);
  print(local_hello);
  //print(local_main);  // Так нельзя - константа local_main не доступна
}