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

    final response = request.response;    // получаем объект ответа
    response.write("Hello World!");       // отправляем в ответ строку "Hello World!"
    response.close();                     // закрываем и отправляем ответ
  });
}