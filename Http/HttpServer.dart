/*
Библиотека dart:io предоставляет функционал для работы с протоколом http/https.
Http-сервер представляет программу, которая принимает запросы по протоколу http
и обратно отправляет некоторый ответ. Например, чтобы пользователи могли обращаться к веб-сайту,
веб-сайт должен размещаться на http-сервере.
*/

import 'dart:io';

void main() async
{
  var server = await HttpServer.bind(InternetAddress.anyIPv6, 8888);
  print("Сервер запущен...");
  await server.forEach((HttpRequest request)
  {

    final response = request.response;    // Получаем объект ответа

    // Добавляем заголовки
    response.headers.add(HttpHeaders.contentTypeHeader, "text/plain; charset=utf-8");
    response.headers.add(HttpHeaders.hostHeader, "Home.com");
    response.headers.add(HttpHeaders.dateHeader, DateTime.now());
    response.headers.contentType= ContentType("text", "html");
    response.write("<h1>Hello World!</h1><h3>Hello from Dart</h3>");

    response.write("Hello World!");       // отправляем в ответ строку "Hello World!"
    response.close();                     // закрываем и отправляем ответ
  });
}