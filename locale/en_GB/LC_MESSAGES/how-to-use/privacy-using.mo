��          �      \      �     �  ]  �  �   O      4     :  A  �  |  ^  B    �	  �   �
    n  K   p  �   �    �  �   �  M   �  X     �   Y  �  %  r  �     C     V  e   W  u   �     3  �   E          �      �   �  u   `  -   �  �     �   �  �   L      �  �   �  �   �  7  l                                                                             	   
                   **Схема процесса** Администратор сети (нода с ролью "Connection-manager") получает от нового пользователя публичный ключ и описание ноды, далее создаёт транзакцию :ref:`111 RegisterNodeTransaction <RegisterNodeTransaction>` с полученными данными. В упрощенном варианте передача конфиденциальных данных между нодами состоит из следующих этапов: Далее данные из Private Store ноды-отправителя участники сети запрашивают по прямому соединению, используя эфемерные криптографические пары ключей. Добавление в сеть новой ноды Клиент через API отправляет данные в ноду, используя инструмент :ref:`API <privacy-api>` POST /privacy/sendData (параметры API: отправитель, пароль, ID политики, тип данных, инфо о данных, дата и хэш). Новые ноды можно добавлять в сеть в любой момент времени. Настройка конфигурационных файлов новой ноды описана в подразделе :ref:`Подключение к существующей сети <configuration>`. Далее будут описаны действия, выполняемые при подключении новой ноды в сеть. Нода запрашивает политику, ID которой клиент передал в API, из своего стейта и удостоверяется, что может участвовать в обмене конфиденциальных данных (адрес ноды есть в списке адресов политики). Нода помещает данные в Private Store в статусе Unaccepted, подписывает и рассылает по сети транзакцию 114 :ref:`PolicyDataHashTransaction <PolicyDataHashTransaction>` с хэшом данных. Ноды в сети проверяют, являются ли они участниками политики, и если да, то принимают транзакцию с хэшом данных. Пользователь генерирует криптографически связанную пару ключей - публичный и приватный, которые сохраняются в хранилище ключей ноды (keyStore). Пользователь запускает :ref:`ноду <install-node>`. После запуска нода отправляет handshake-сообщение со своим публичным ключом участникам из списка "peers" своего конфигурационного файла. После принятия участниками сети и попадания в блокчейн транзакции 114 нода-отправитель изменяет статус данных из своего Private Store с **Unaccepted** на **Accepted**. При необходимости администратор сети может добавить новой ноде дополнительные роли при помощи транзакции :ref:`102 PermitTransaction <PermitTransaction>`. Процесс обмена конфиденциальными данными Транзакция попадает в блок и далее в стейты нод участников сети. Вследствие транзакции среди сохраняемых данных каждый участник сети хранит обязательно публичный ключ и адрес новой ноды. Успешно подключившись, новая нода выполняет синхронизацию с сетью и получает таблицу адресов участников сети. Участники сети сравнивают публичный ключ из handshake-сообщения и ключ из транзакции 111, отправленной администратором сети. Если проверка успешна, участник сети обновляет свою БД и рассылает в сеть сообщение :ref:`Peers Message <network-message-PeersMessage>`. Project-Id-Version: Vostok master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-04-26 11:46+0300
PO-Revision-Date: 2019-05-06 15:05+0300
Last-Translator: 
Language: en
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
X-Generator: Poedit 2.2.1
 **Process scheme** The network administrator (the node with the role of "Connection-manager") receives the public key and the node description from the new user, then creates the :ref:`111 RegisterNodeTransaction <RegisterNodeTransaction>` transaction with the received data. In a simple way, the transfer of the confidential data between nodes consists of the following steps: Network participant request the data from the node-sender via the direct connection using the encrypted pair of keys. Adding a new node Using the :ref:`API <privacy-api>` POST /privacy/sendData tool the client sends the data to the node (API parameters: sender, password, policy ID, data type, data information, date and hash). New nodes can be added to the network at any time. Setting up the configuration files for the new node is described in the subsection :ref:`Connecting to an existing network <configuration>`. Next we will describe the steps to be taken when connecting a new node to the network. The node requests the policy from its state according to the ID, which was sent the client inside the API parameters, then the node makes sure that it can participate in the exchange of confidential data (node address is in the addresses list of the policy ). The node places the data in the Private Store in the Unaccepted status, signs and sends the transaction 114 :ref:`PolicyDataHashTransaction <PolicyDataHashTransaction>` with the data hash. The network nodes check to see if they are participants of the policy, and if yes, they accept the transaction with the data hash. The user generates an encrypted pair of keys - public and private, which are stored in the node key store (keyStore). The user runs :ref:`the node <install-node>`. After starting the node sends a handshake message containing its public key to participants from the "peers" list of its configuration file. After acceptance the 114 transaction by the network participants and falling into the blockchain, node-sender changes the data status **Unaccepted** to **Accepted** in its Private Store. If necessary, the administrator can add additional roles to the new node using the :ref:`102 PermitTransaction <PermitTransaction>` transaction. Exchanging the confidential data The transaction falls into the block and then into the node states of the network participants. As a result of the transaction, each member of the network must store the public key and address of the new node among the stored data. Having successfully connected, the new node synchronizes with the network and receives the address table of the network participants. Network participants compare the public key from the handshake message and the key from transaction 111 sent earlier by the network administrator. If the check is successful, the network participant updates its database and sends the :ref:`Peers Message <network-messagee-Peers Message>` message to the network. 