��          �               l  s   m  H   �  @  *  !  k  T   �    �  m  �     g  -   �	  O   �	  I   
  �   P
    �
  
    �     X  �  �   V     �  �        �  �  �  s   k  H   �  @  (  !  i  T   �    �  m  �     e  -   �  O   �  I     �   N    �  
    �      X  �   �   T"     �"  �   #     �#   :ref:`Подключите <connect-existing-net>` новую ноду к уже существующей сети. :ref:`Удалите <delete-node>` лишние ноды из сети. Администратор сети (нода с ролью "Connection-manager") использует полученные публичный ключ и описание ноды при создании транзакции :ref:`111 RegisterNode <RegisterNodeTransaction>` с параметром ``"opType": "add"``. Администратор сети создает транзакцию :ref:`111 RegisterNode <RegisterNodeTransaction>` с параметром ``"opType": "remove"`` для удаления ноды из сети, в которую помещается её публичный ключ. Далее вы можете выполнить следующие операции: Далее ноды удаляют сетевой адрес ноды с ключом, указанным в транзакции :ref:`111 RegisterNode <RegisterNodeTransaction>`, из списка ``network.known-peers`` конфигурационного файла ноды. Момент :ref:`запуска <node-start>` первой ноды можно считать началом создания новой блокчейн-сети. Разворачивать блокчейн-сеть вы можете со старта всего одной ноды, добавляя новые ноды по мере необходимости. Новые ноды можно добавлять в сеть в любой момент времени. Настройка конфигурационных файлов новой ноды описана в подразделе :ref:`Подключение к существующей сети <configuration>`. Выполните все указанные в приведённом подразделе действия и :ref:`запустите <node-start>` ноду. Далее выполняются следующие действия: Основные операции в сети Подключение новой ноды к существующей сети Пользователь :ref:`запускает <node-start>` ноду. Пользователь новой ноды передаёт публичный ключ и описание ноды администратору сети. После запуска нода отправляет :ref:`handshake-сообщение <network-message-auth-handshake>` со своим публичным ключом участникам из списка "peers" своего конфигурационного файла. После принятия транзакции ноды находят в своем стейте публичный ключ, указанный в транзакции :ref:`111 RegisterNode <RegisterNodeTransaction>`, и удаляют его из стейта. При необходимости администратор сети может добавить новой ноде дополнительные роли при помощи транзакции :ref:`102 Permit <PermitTransaction>`. Транзакция попадает в блок и далее в стейты нод участников сети. Вследствие транзакции среди сохраняемых данных каждый участник сети хранит обязательно публичный ключ и адрес новой ноды. Транзакция с удалением ноды вместе с остальными попадает в блок, и её принимают другие ноды. Удаление ноды Успешно подключившись, новая нода выполняет синхронизацию с сетью и получает таблицу адресов участников сети. Участники сети сравнивают публичный ключ из :ref:`handshake-сообщения <network-message-auth-handshake>` и ключ из транзакции :ref:`111 RegisterNode <RegisterNodeTransaction>`, отправленной администратором сети. Если проверка успешна, участник сети обновляет свою БД и рассылает в сеть сообщение :ref:`Peers Message <network-message-PeersMessage>`. Project-Id-Version: Vostok master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-05-17 17:13+0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: en_GB
Language-Team: en_GB <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 :ref:`Подключите <connect-existing-net>` новую ноду к уже существующей сети. :ref:`Удалите <delete-node>` лишние ноды из сети. Администратор сети (нода с ролью "Connection-manager") использует полученные публичный ключ и описание ноды при создании транзакции :ref:`111 RegisterNode <RegisterNodeTransaction>` с параметром ``"opType": "add"``. Администратор сети создает транзакцию :ref:`111 RegisterNode <RegisterNodeTransaction>` с параметром ``"opType": "remove"`` для удаления ноды из сети, в которую помещается её публичный ключ. Далее вы можете выполнить следующие операции: Далее ноды удаляют сетевой адрес ноды с ключом, указанным в транзакции :ref:`111 RegisterNode <RegisterNodeTransaction>`, из списка ``network.known-peers`` конфигурационного файла ноды. Момент :ref:`запуска <node-start>` первой ноды можно считать началом создания новой блокчейн-сети. Разворачивать блокчейн-сеть вы можете со старта всего одной ноды, добавляя новые ноды по мере необходимости. Новые ноды можно добавлять в сеть в любой момент времени. Настройка конфигурационных файлов новой ноды описана в подразделе :ref:`Подключение к существующей сети <configuration>`. Выполните все указанные в приведённом подразделе действия и :ref:`запустите <node-start>` ноду. Далее выполняются следующие действия: Основные операции в сети Подключение новой ноды к существующей сети Пользователь :ref:`запускает <node-start>` ноду. Пользователь новой ноды передаёт публичный ключ и описание ноды администратору сети. После запуска нода отправляет :ref:`handshake-сообщение <network-message-auth-handshake>` со своим публичным ключом участникам из списка "peers" своего конфигурационного файла. После принятия транзакции ноды находят в своем стейте публичный ключ, указанный в транзакции :ref:`111 RegisterNode <RegisterNodeTransaction>`, и удаляют его из стейта. При необходимости администратор сети может добавить новой ноде дополнительные роли при помощи транзакции :ref:`102 Permit <PermitTransaction>`. Транзакция попадает в блок и далее в стейты нод участников сети. Вследствие транзакции среди сохраняемых данных каждый участник сети хранит обязательно публичный ключ и адрес новой ноды. Транзакция с удалением ноды вместе с остальными попадает в блок, и её принимают другие ноды. Удаление ноды Успешно подключившись, новая нода выполняет синхронизацию с сетью и получает таблицу адресов участников сети. Участники сети сравнивают публичный ключ из :ref:`handshake-сообщения <network-message-auth-handshake>` и ключ из транзакции :ref:`111 RegisterNode <RegisterNodeTransaction>`, отправленной администратором сети. Если проверка успешна, участник сети обновляет свою БД и рассылает в сеть сообщение :ref:`Peers Message <network-message-PeersMessage>`. 