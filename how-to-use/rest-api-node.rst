.. _rest-api-node:

REST API ноды
=================

Блокчейн-платформа Vostok предоставляет возможность взаимодействия с блокчейном как в части получения данных (транзакции, блоки, балансы и др.), так и в части записи информации в блокчейн (подписание и отправка транзакций) при помощи RESTful API ноды. REST API позволяет пользователям удалённо взаимодействовать с нодой через запросы и ответы в формате JSON. Работа с API происходит по протоколу HTTPS. Удобным интерфейсом к API служит известный фреймворк Swagger.

Как использовать REST API
---------------------------

Все вызовы методов API — это GET, POST или DELETE HTTPS-запросы к URL ``https://yournetwork.com/node-N/api-docs/swagger.json`` с набором параметров. В интерфейсе Swagger выбираются нужные группы запросов и далее маршруты с точками доступа. Маршрут в Swagger это URL к HTTP-методу, а точка доступа (endpoint) - конечная часть маршрута, само обращение к методу. Пример:

**URL к HTTP-методу**

.. image:: img/route-endpoint.png
   :align: center

Для запросов, требующих нижеперечисленных действий, необходима обязательная передача параметра ``X-Api-Key`` со значением секретной фразы, hash которой указан в конфигурационном файле ноды (поле ``rest-api.api-key-hash``):

- доступ к keystore ноды (например, метод sign);
- доступ к конфигурации ноды.

Генерация значения поля ``rest-api.api-key-hash`` выполняется с использованием метода :ref:`/utils/hash/secure <utils-hash>` REST API ноды. Для подписания запросов ключем из keystore ноды в поле ``password`` запроса ``POST /transaction/sign`` требуется указания пароля доступа к keystore.

Пример запроса: 

.. code::

    curl -X POST 
    --header 'Content-Type: application/json' 
    --header 'Accept: application/json' 
    --header 'X-API-Key: 1' -d '1' 'http://2.testnet-pos.vostoknodes.com:6862/transactions/calculateFee'

.. Примеры транзакций приведены на странице :ref:`transaction-example`.



