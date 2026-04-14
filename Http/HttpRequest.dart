/*
Когда сервер получает очередной запрос от клиента, для этого запроса создается объект типа HttpRequest.
Этот класс реализует интерфейс класса Stream и поэтому представляет поток для чтения.
HttpRequest позволяет получить информацию ряда свойств:
contentLength: длина тела запроса
cookies: куки, отправленные клиентом, в виде объекта List<Cookie>
headers: заголовки запроса (объект HttpHeaders)
method: метод запроса, например, GET, POST, PUT и т.д.
requestedUri: запрошенный адрес в виде объекта Uri
response: объект HttpResponse, который ассоциирован с данным запрос и который используется для отправки ответа
uri: запрошенный путь в виде объекта Uri
 */

import 'dart:io';

void main() async
{
  var server = await HttpServer.bind(InternetAddress.anyIPv6, 8888);
  print("Сервер запущен...");
  await server.forEach((HttpRequest request)
  {
    var responseText = "Page Not Found";
    switch (request.uri.path) {
      case "/":                       // Если обращение к главной странице.
        responseText = "Index Page";
      case "/about":                  // Если обращение по пути "/about".
        responseText = "About Page";
      case "/contact":                // Если обращение по пути "/contacts".
        responseText = "Contacts Page";
    }
    final response = request.response;
    response.write(responseText);
    response.close();
  });
}