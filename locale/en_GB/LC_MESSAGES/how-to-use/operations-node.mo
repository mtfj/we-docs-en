��    3      �  G   L      h     i  �   �  h   ;  s   �  H     ;   a  z   �  �     �   �  B   �  0   �  �   +	  �   �	  T   �
  T     @  a  !  �  �   �  �   y  �  A  T       m    �  a   �  .   �  �   )  6    m  U    �  V  �  �   !  �     -   �  O   �  I   K  �   �    3   �   K!    �!  
  	#  �   $  M    %  X  N%  �   �&  �   e'  �   !(     �(  �   �(    �)     �*  r  �,     &.  l   =.  >   �.  K   �.  ?   5/  2   u/  `   �/  d   	0  �   n0  *   �0  *   $1  k   O1  h   �1  2   $2  4   W2  �   �2  �   t3  e   14  x   �4  �   5  <   �5  �  6  z   �7  )   E8     o8  �   �8  �   9  �   �9  �   �:    �;  �   �<  �   l=     �=  ,   >  +   ;>  Y   g>  �   �>  k   s?     �?  �   _@  �   A      �A  �   �A  D   �B  D   �B  D   5C     zC  �   �C  �   D  e  �D         2          /       &           .                     	                      3       (       '   )   +   "              -         1   ,         #                
      $                          %         !              0             *               **Схема процесса** :ref:`Добавьте <add-privacy-policy>` или :ref:`измените <update-privacy-policy>` группу доступа к конфиденциальным данным. :ref:`Обменяйтесь <data-privacy-exchange>` конфиденциальными данными. :ref:`Подключите <connect-existing-net>` новую ноду к уже существующей сети. :ref:`Удалите <delete-node>` лишние ноды из сети. description - описание группы доступа. opType - опция добавления (``add``) или удаления (``remove``) участников группы. owners - публичные ключи владельцев группы доступа, которые добавляются или удаляются из группы доступа. owners - публичные ключи владельцев группы доступа, которые, помимо доступа к данным, смогут изменять состав участников группы. policyId - идентификатор группы доступа. policyName - имя группы доступа. recipients - публичные ключи участников группы доступа, которые будут иметь право получать конфиденциальные данные. recipients - публичные ключи участников группы доступа, которые добавляются или удаляются из группы доступа. sender - публичный ключ владельца группы доступа. sender - публичный ключ создателя группы доступа. Администратор сети (нода с ролью "Connection-manager") использует полученные публичный ключ и описание ноды при создании транзакции :ref:`111 RegisterNode <RegisterNodeTransaction>` с параметром ``"opType": "add"``. Администратор сети создает транзакцию :ref:`111 RegisterNode <RegisterNodeTransaction>` с параметром ``"opType": "remove"`` для удаления ноды из сети, в которую помещается её публичный ключ. В упрощенном варианте передача конфиденциальных данных между нодами состоит из следующих этапов: Владелец группы доступа создаёт транзакцию :ref:`113 UpdatePolicy <UpdatePolicyTransaction>` со следующими основными параметрами: Группу доступа к конфиденциальным данным может создать любой участник сети. Перед созданием группы необходимо определиться с кругом участников сети, которые будут получать конфиденциальные данные. Далее любой из участников выполняет следующие действия: Далее вы можете выполнить следующие операции: Далее данные из Private Store ноды-отправителя участники сети запрашивают по прямому соединению, используя криптографические пары ключей. Если вы используете криптографию Waves, то пара ключей создаётся на базе генерирования секретного ключа (shared secret) с использованием алгоритма Curve25519 (эллиптическая кривая Diffie-Hellman). При использовании криптографии ГОСТ генерация симметричных ключей шифрования выполняется в соответствии с ГОСТ 28147-89. Далее ноды удаляют сетевой адрес ноды с ключом, указанным в транзакции :ref:`111 RegisterNode <RegisterNodeTransaction>`, из списка ``network.known-peers`` конфигурационного файла ноды. Добавление группы доступа к конфиденциальным данным Изменение группы доступа Изменять группы доступа могут только их владельцы. Выполняются следующие действия для изменения списка участников в группе доступа: Клиент через API отправляет данные в ноду, используя инструмент :ref:`API <privacy-api>` POST /privacy/sendData (параметры API: отправитель, пароль, ID группы, тип данных, инфо о данных, дата и хэш). Момент :ref:`запуска <node-start>` первой ноды можно считать началом создания новой блокчейн-сети. Разворачивать блокчейн-сеть вы можете со старта всего одной ноды, добавляя новые ноды по мере необходимости. Новые ноды можно добавлять в сеть в любой момент времени. Настройка конфигурационных файлов новой ноды описана в подразделе :ref:`Конфигурация ноды <configuration>`. Выполните все указанные в приведённом подразделе действия и :ref:`запустите <node-start>` ноду. Далее выполняются следующие действия: Нода запрашивает группу, ID которой клиент передал в API, из своего стейта и удостоверяется, что может участвовать в обмене конфиденциальных данных (адрес ноды есть в списке адресов группы). Нода помещает данные в Private Store, подписывает и рассылает по сети транзакцию 114 :ref:`PolicyDataHashTransaction <PolicyDataHashTransaction>` с хэшом данных. Ноды в сети проверяют, являются ли они участниками группы, и если да, то принимают транзакцию с хэшом данных. Основные операции в сети Подключение новой ноды к существующей сети Пользователь :ref:`запускает <node-start>` ноду. Пользователь новой ноды передаёт публичный ключ и описание ноды администратору сети. После запуска нода отправляет :ref:`handshake-сообщение <network-message-auth-handshake>` со своим публичным ключом участникам из списка "peers" своего конфигурационного файла. После принятия транзакции в сети обновляется информация об участниках изменённой группы. После принятия транзакции доступ к отправляемым в сеть конфиденциальным данным получают все участники, зарегистрированные в созданной группе доступа. После принятия транзакции ноды находят в своем стейте публичный ключ, указанный в транзакции :ref:`111 RegisterNode <RegisterNodeTransaction>`, и удаляют его из стейта. При необходимости администратор сети может добавить новой ноде дополнительные роли при помощи транзакции :ref:`102 Permit <PermitTransaction>`. Процесс обмена конфиденциальными данными Транзакция попадает в блок и далее в стейты нод участников сети. Вследствие транзакции среди сохраняемых данных каждый участник сети хранит обязательно публичный ключ и адрес новой ноды. Транзакция с изменением группы доступа вместе с остальными попадает в блок, и её принимают другие ноды. Транзакция с созданием группы доступа вместе с остальными попадает в блок, и её принимают другие ноды. Транзакция с удалением ноды вместе с остальными попадает в блок, и её принимают другие ноды. Удаление ноды Успешно подключившись, новая нода выполняет синхронизацию с сетью и получает таблицу адресов участников сети. Участник сети, который будет владельцем группы доступа, создаёт транзакцию :ref:`112 CreatePolicy <CreatePolicyTransaction>` со следующими основными параметрами: Участники сети сравнивают публичный ключ из :ref:`handshake-сообщения <network-message-auth-handshake>` и ключ из транзакции :ref:`111 RegisterNode <RegisterNodeTransaction>`, отправленной администратором сети. Если проверка успешна, участник сети обновляет свою БД и рассылает в сеть сообщение :ref:`Peers Message <network-message-PeersMessage>`. Project-Id-Version: Vostok master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-05-21 15:42+0300
PO-Revision-Date: 2019-05-21 15:42+0300
Last-Translator: 
Language: en
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
X-Generator: Poedit 2.2.1
 **The process scheme** :ref:`Add <add-privacy-policy>` or :ref:`change <update-privacy-policy>` the confidential data access group. :ref:`Exchange <data-privacy-exchange>` the confidential data. :ref:`Connect <connect-existing-net>` a new node into the existing network. :ref:`Delete <delete-node>` unnecessary nodes from the network. description - the description of the access group. opType - the option of the adding (``add``) or the removing (``remove``) the group participants. owners - public keys of access group participants, which are added or removed from the access group. owners - public keys of access group participants, which, in addition to the data access, can change the lineup of the group participants. policyId - identifier of the access group. policyName - the name of the access group. recipients - public keys of access group participants, which will have the access to the confidential data. recipients - public keys of access group participants, which are added or removed from the access group. sender - the public key of the access group owner. sender - the public key of the access group creator. The network administrator (the node with "Connection-manager" role) uses the received public key and description for the :ref:`111 RegisterNode <RegisterNodeTransaction>` transaction creation with the ``"opType": "add"`` parameter. The network administrator creates the :ref:`111 RegisterNode <RegisterNodeTransaction>` transaction with the parameter ``"opType": "remove"`` and the public key of the removed node within. In a simple way, the transfer of the confidential data between nodes consists of the following steps: The group owner creates the :ref:`113 UpdatePolicy <UpdatePolicyTransaction>` transaction with the following parameters: The confidential data access group can be created by any network participant. You need to specify the range of participants, which will get the data. Then any of participant will perform the following actions: After starting a node you can make the following operations: Then the data from the Private Store of the sender node is requested by the network participants over a direct connection using cryptographic key pairs. If you use the Waves cryptography, the key pair is created based on a generating a secret key (shared secret) using the Curve25519 algorithm (elliptic curve Diffie-Hellman). When using GOST cryptography asymmetric encryption keys are generated according with GOST 28147-89. Then nodes delete the network address of the removed node from the ``network.known-peers`` of the node configuration file. Adding the confidential data access group Changing the access group Access groups can only be changed by their owners. The following actions are performed to change the list of participants in the access group: Using the :ref:`API <privacy-api>` POST /privacy/sendData tool the client sends the data to the node (API parameters: sender, password, policy ID, data type, data information, date and hash). The moment of the first node :ref:`running <node-start>` is the beginning of the new blockchain net creation. You can create the blockchain net from the starting only one node, further you can add new nodes as required. You can add new nodes into the net at any time. The configuration files setting is described in the section :ref:`Node configuration <configuration>`. Perform all these actions and :ref:`run <node-start>` the node. The following steps are making: The node requests the policy from its state according to the ID, which was sent the client inside the API parameters, then the node makes sure that it can participate in the exchange of confidential data (node address is in the addresses list of the policy ). The node places the data in the Private Store in the Unaccepted status, signs and sends the transaction 114 :ref:`PolicyDataHashTransaction <PolicyDataHashTransaction>` with the data hash. The network nodes check to see if they are participants of the policy, and if yes, they accept the transaction with the data hash. Main operations in the network Connection of a new node to the existing net The user :ref:`runs <node-start>` the node. The new node user gives the public key and the node description to the net administrator. After starting, the node sends :ref:`handshake-message <network-message-auth-handshake>` with its public key to the participants from the "peers" list of its configuration file. After accepting the transaction the information about participants of the changed access group will update. After accepting the transaction the nodes which are the access group participants will get the access to the confidential data. After accepting the transaction the nodes find the public key specified in the transaction :ref:`111 RegisterNode <RegisterNodeTransaction>` in their state and delete it from there. If necessary, the network administrator can add additional roles to the new node using the transaction :ref:`102 Permit <PermitTransaction>`. Exchanging the confidential data Transaction falls to the block and further into the nodes states of network participants. As a result of the transaction among the stored data, each participant of the network stores the public key and the address of the new node. This transaction is fell into the block and approved by other nodes. This transaction is fell into the block and approved by other nodes. This transaction is fell into the block and approved by other nodes. Deleting the node Having successfully connected, the new node synchronizes with the network and receives the address table of the network participants. The network participant, the future owner of the group, is creating the :ref:`112 CreatePolicy <CreatePolicyTransaction>` with the following parameters: Network participants compare the public key from the :ref:`handshake message <network-message-auth-handshake>` and the key from transaction :ref:`111 RegisterNode <RegisterNodeTransaction>` sent earlier by the network administrator. If the check is successful, the network participant updates its database and sends the Peers Message message to the network. 