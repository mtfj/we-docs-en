��            )         �  !   �  6   �     
     *     H  L   d  T   �  �     W  �  o   �  �   W    �  2   	  >   :	  $   y	      �	  0   �	  �   �	  �   �
  �   b  r   �  �   [     T  .   �  �     �   �  ;   $  �   `     )  0   �  r  �     M  "   j     �     �     �  L   �  T     P   c  �   �  C   �  \   �  {  3     �  *   �     �          "  �   ?  d   �  X   0  =   �  �   �  4   K     �  U   �  l   �  .   b  m   �  U   �     U                           
                	                                                                                             **Описание работы** **Пример входящих параметров** **Пример запроса** **Пример ответа** **Тело запроса** http://localhost:6862/contracts/2sqPS2VAKmK77FoNakw1VtDTCbDSa7nqh5wTXvJeYGo2 http://localhost:6862/transactions/info/2sqPS2VAKmK77FoNakw1VtDTCbDSa7nqh5wTXvJeYGo2 В поле ``contractId`` указать идентификатор транзакции инициализации контракта. В разделе рассматривается пример создания и запуска простого смарт-контракта. Контракт выполняет суммирование 2х чисел, переданных на вход контракта в :ref:`call-транзакции <first-contract-tutorial-call>`. Возвращает результат в виде значения поля "{a}+{b}" в формате json. Для операционной системы Windows в настройках Docker включить признак "Expose deamon on .... without TLS". Для создания ключевой пары и адреса участника используется утилита `generators.jar <https://github.com/vostokplatform/Vostok-Releases/releasesd>`_. Порядок действий создания ключевой пары приведен в :ref:`п.1 <address-creation>` раздела "Подключение к сети". Правила формирования запросов к ноде приведены в разделе :ref:`REST API ноды <rest-api-node>`. Исполнение смарт-контракта Листинг программы ``contract.py`` на Python: Листинг файла Dockerfile Листинг файла run.sh Описание логики программы Отправить подписанную транзакцию в блокчейн. Ответ от метода sign необходимо передать на вход для метода broadcast. По id транзакции убедиться, что транзакция с инициализацией контракта размещена в блокчейне Подготовить образ контракта. В папке ``sum-contract-kv`` создать следующие файлы: Подписать call-транзакцию на вызов (исполнение) смарт-контракта. Подписать транзакцию на создание смарт-контракта. В рассматриваемом примере транзакция подписывается ключом, сохраненным в keystore ноды. Получить результат выполнения смарт-контракта по его идентификатору Пример запуска контракта Программа ожидает получить структуру данных в формате json с полем "params"; Скачать и установить `Docker for Developers <https://www.docker.com/get-started>`_ для вашей операционной системы Считывает значение полей "а" и "b"; Техническое описание особенностей реализации контрактов приведено в разделе :ref:`"Смарт-контракты "Docker" <docker>`. Установить образ в Docker registry. Выполнить в терминале следующие команды: Установка смарт-контракта Project-Id-Version: Vostok master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-05-06 14:33+0300
PO-Revision-Date: 2019-05-06 14:35+0300
Last-Translator: 
Language: en
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
X-Generator: Poedit 2.2.1
 **Description of operation** **Example of incoming parameters** **Sample query** **Sample response** **Query Body** http://localhost:6862/contracts/2sqPS2VAKmK77FoNakw1VtDTCbDSa7nqh5wTXvJeYGo2 http://localhost:6862/transactions/info/2sqPS2VAKmK77FoNakw1VtDTCbDSa7nqh5wTXvJeYGo2 In the ''contractID'' field, specify the contract initialization transaction ID. This module reviews an example of how to create and run a simple smart contract. The contract performs summing up of 2x numbers transferred to the contract entry in :ref:`call-transactions <first-contract-tutorial-call>`. Returns the result as a value of fields "{a} + {b}" in json format. For Windows operating system, enable "Expose deamon on .... without TLS" in Docker settings. To create a key pair and the participant address, use the utility `generators.jar <https://github.com/vostokplatform/Vostok-Releases/releasesd>`_. The procedure for creating a key pair is given in :ref:`item 1 <address-creation>` of the module "Connecting to the Network". The rules for generating queries to the node are given in the module :ref:`Node REST API <rest-api-node>`. Smart Contract Execution Program listing ''contract.py'' on Python: Dockerfile File Listing Listing of run.sh file Description of program logic Send the signed transaction to the blockchain. The response from the sign method must be transferred to the input for the broadcast method. Use the transaction ID to check that the contract initiation transaction is placed in the blockchain Prepare a contract image. In the ''sum-contract-kv'' folder, create the following files: Sign a call-transaction to call (execute) the smart contract. Sign a transaction to create a smart contract. In this example, the transaction is signed with the key stored in the node keystore. Get the result of smart contract execution by its ID Example of starting a contract The program expects to get the data structure in json format with the field "params"; Download and install `Docker for Developers <https://www.docker.com/get-started>`_ for your operating system It reads the values of the "a" and "b" fields; Technical description of contracts implementation is given in module :ref:`"Docker Smart Contracts"<docker>`. Install the image in Docker registry. Execute the following commands in the terminal: Installing a smart contract 