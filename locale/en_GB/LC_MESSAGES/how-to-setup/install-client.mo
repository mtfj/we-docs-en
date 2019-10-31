��          �      <      �    �     �  �   �  �  �  s   h     �     �  �     �  �  a   �  (   	  �   +	  �   �	  $   �
  �   �
  �   b  @   .  r  o  �   �     �  �   �  "  n  9   �     �     �  f   �  K  V  A   �     �  `   �  a   _     �  r   �  �   O      �        	                                                              
                               1.2. После установки убедитесь, что успешно установились приложения `Docker CE <https://docs.docker.com/install/>`_ и `Docker-compose <https://docs.docker.com/compose/install/>`_ (часть дистрибутива Docker CE): БД PostgreSQL. В конфигурационном файле приложения ``frontend-deployment/config/nginx-proxy.env`` укажите путь до REST API и hostname ноды: В конфигурационном файле приложения ``frontend-deployment/config/postgres.env`` в параметрах ``POSTGRES_USER`` и ``POSTGRES_PASSWORD`` укажите логин и пароль для пользователя соответственно. Рекомендуется использовать сложные комбинации букв, цифр и символов для повышения уровня безопасности. Выполните следующие действия для установки клиентской версии: Дата-краулер. Дата-сервис. Для операционных систем семейств Linux и macOS используются команды ``docker --version`` и ``docker-compose --version``. Для полноценной работы необходимо установить дополнительно приложения `Docker CE <https://docs.docker.com/install/>`_ и `Docker-compose <https://docs.docker.com/compose/install/>`_. Полные требования к окружению для блокчейн-платформы Waves Enterprise вы можете посмотреть в разделе :ref:` Системные требования<system-requirements>`. Запустите скрипт развертывания командой ``bash ./deploy.sh``. Корпоративный клиент. Откройте браузер и перейдите по адресу ``localhost``, чтобы убедиться, что клиент системы успешно развернут. Пакет дополнительных сервисов поставляется в виде Docker-контейнера, в котором содержатся следующие сервисы: Сервис авторизации. Скачайте и разархивируйте файл `frontend-deployment.zip <https://github.com/waves-enterprise/WE-releases/releases>`_. Скачайте и установите дистрибутив `Docker CE <https://docs.docker.com/install/>`_. Для скачивания потребуется регистрация на сайте. Установка дополнительных сервисов Project-Id-Version: Vostok master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-10-29 14:11+0300
PO-Revision-Date: 2019-10-30 11:31+0300
Last-Translator: 
Language: en
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.7.0
X-Generator: Poedit 2.2.1
 1.2 After installation check if applications `Docker CE <https://docs.docker.com/install/>`_ and `Docker-compose <https://docs.docker.com/compose/install/>`_ (the part of the Docker CE installation package) have been successfully installed: PostgreSQL DB. Specify the path to REST API and node hostname in the configuration file of the application ``frontend-deployment/config/nginx-proxy.env``: Specify a user login and a password in the ``POSTGRES_USER`` и ``POSTGRES_PASSWORD`` parameters of the configuration file of the application ``frontend-deployment/config/postgres.env``. We recommend to use complex combinations of letters, numbers and symbols to increase your safety level. Follow these steps to deploy the additional services set: The data crawler. The data service. You can use the commands ``docker --version`` and ``docker-compose --version`` for macOS and Linux OS. The additional services set needs the apps `Docker CE <https://docs.docker.com/install/>`_ and `Docker-compose <https://docs.docker.com/compose/install/>`_ for the fully running. You can check the full list of environment requirements for the Waves Enterprise platform in the :ref:` System requirements <system-requirements>` page. Run the deployment script using the command ``bash ./deploy.sh``. The corporate web client. Open the browser and go to ``localhost`` to check if the system client is successfully deployed. The additional services set is offered as a Docker container with the following list of services: The authorization service. Download and unzip the file `frontend-deployment.zip <https://github.com/waves-enterprise/WE-releases/releases>`_. Download and install the installation package `Docker CE <https://docs.docker.com/install/>`_. Registration on the site is need for downloading. Additional services installation 