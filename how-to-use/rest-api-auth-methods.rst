
.. _rest-api-auth-methods:

Методы REST API для сервиса авторизации
=============================================

Подробно о работе с REST API можно почитать в :ref:`этом <rest-api-node>` разделе. Доступ к REST API сервиса авторизации осуществляется по протоколу HTTPS. Методы, закрытые авторизацией, отмечены значком |lock|.

.. |lock| image:: img/lock.png

GET ​/status
~~~~~~~~~~~~~~

Получение статуса сервиса авторизации.

**Ответ метода**

.. code:: js

    {
      "status": "OK"
     }

POST ​/v1​/user
~~~~~~~~~~~~~~~

Регистрация нового пользователя.

**Запрос метода**

.. code:: js

    {
      "username": "string",
      "password": "string",
      "locale": "string"
     }

**Ответ метода**

.. code:: js

    {
     "access_token": "string",
     "refresh_token": "string",
     "token_type": "string"
     }

GET ​/v1​/user​/profile
~~~~~~~~~~~~~~~~~~~~~~~~~

.. figure:: img/lock.png            
          :scale: 100 %

Получение данных пользователя.

**Ответ метода**

.. code:: js

    {
     "id": "string",
     "name": "string",
     "locale": "en",
     "addresses": [
     "string"
     ],
     "roles": [
     "string"
     ]
     }

POST ​/v1​/user​/address
~~~~~~~~~~~~~~~~~~~~~~~~~

.. figure:: img/lock.png            
          :scale: 100 %

Получение адреса пользователя.

**Запрос метода**

.. code:: js

    {
      "address": "string",
      "type": "string"
     }

**Ответ метода**

.. code:: js

    {
      "addressId": "string"
     }

GET ​/v1​/user​/doesEmailExist
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Проверка адреса электронной почты пользователя.

**Ответ метода**

.. code:: js

   {
      "exist": true
    }

POST ​/v1​/user​/password​/restore
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Восстановление пароля доступа к аккаунту пользователя.

**Запрос метода**

.. code:: js

    {
      "email": "string"
     }

**Ответ метода**

.. code:: js

    {
      "email": "string"
     }

POST ​/v1​/user​/password​/reset
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Сброс пароля пользователя.

**Запрос метода**

.. code:: js

    {
      "token": "string",
      "password": "string"
     }

**Ответ метода**

.. code:: js

    {
      "userId": "string"
     }

GET ​/v1​/user​/confirm​/{code}
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Ввод кода подтверждения для восстановления пароля для доступа к аккаунту пользователя.

POST ​/v1​/user​/resendEmail
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Повторная отправка кода восстановления пароля на указанный электронный адрес.

**Запрос метода**

.. code:: js

   {
      "email": "string"
   }

**Ответ метода**

.. code:: js

   {
      "email": "string"
   }

POST ​/v1​/auth​/login
~~~~~~~~~~~~~~~~~~~~~~~~

Регистрация нового пользователя в сервисе авторизации.

**Запрос метода**

.. code:: js

     {
       "username": "string",
       "password": "string",
       "locale": "string"
      }

**Ответ метода**

.. code:: js

     {
       "access_token": "string",
       "refresh_token": "string",
       "token_type": "string"
      }

POST ​/v1​/auth​/token
~~~~~~~~~~~~~~~~~~~~~~~

.. figure:: img/lock.png            
          :scale: 100 %

Регистрация внешних сервисов и приложений в сервисе авторизации.

**Запрос метода**

.. code:: js

     {
       "token": "string"
      }

**Ответ метода**

.. code:: js

     {
       "access_token": "string",
       "refresh_token": "string",
       "token_type": "string"
      }

POST ​/v1​/auth​/refresh
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Получение нового refresh токена.

**Запрос метода**

.. code:: js

     {
       "token": "string"
      }

**Ответ метода**

.. code:: js

     {
       "access_token": "string",
       "refresh_token": "string",
       "token_type": "string"
      }

GET​ /v1​/auth​/publicKey
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Получение публичного ключа сервиса авторизации.

**Ответ метода**

.. code:: js

    -----BEGIN PUBLIC KEY-----
    MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA7d9Oj/ZQTkkjf4UuMfUu
    QIFDTYxYf6QBKMVJnq/wXyPYYkV8HVFYFizCaEciv3CXmBH77sXnuTlrEtvK7zHB
    KvV870HmZuazjIgZVSkOnOY7F8UUVNXnlzVD1dPsOGJ6orM41DnC1W65mCrP3bjn
    fV4RbmykN/lk7McA6EsMcLEGbKkFhmeq2Nk4hn2CQvoTkupJUnOCP1dhO4bq1lQ7
    Ffj9K/FJq73wSXDoH+qqdRG9sfrtgrhtJHerruhv3456e0zyAcDO8+sJUQFKY80B
    SZMEndVzFS2ub9Q8e7BfcNxTmQPM4PhHO5wuTqL32qt3uJBx2OI4lu3OND44ZrDJ
    BbVog73oPjRYXj+kTbwUZI66SP4aLcQ8sypQyLwqKk5DtLRozSN0OIrupJJ/pwZs
    9zPEggL91T0rirbEhGlf5U8/6XN8GVXX4iMk2fD8FHLFJuXCD7Oj4JC2iWfFDC6a
    uUkwUfqfjJB8BzIHkncoqOZbpidEE2lTWl+svuEu/wyP5rNlyMiE/e/fZQqM2+o0
    cH5Qow6HH35BrloCSZciutUcd1U7YPqESJ5tryy1xn9bsMb+On1ocZTtvec/ow4M
    RmnJwm0j1nd+cc19OKLG5/boeA+2zqWu0jCbWR9c0oCmgbhuqZCHaHTBEAKDWcsC
    VRz5qD6FPpePpTQDb6ss3bkCAwEAAQ==
    -----END PUBLIC KEY-----



