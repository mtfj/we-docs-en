��          �      L      �     �  �   �       �   �  �   (  )  �  �      d   �  �   3  �  �  p  �	  �   	    �     �  <   �  .   �  �   *  /  �  o  ,     �  j   �       X     g   w  *  �  h   
  ,   s  I   �  �   �  �   �  d   �  �        �  '   �     �  \   
  �   g                             	                         
                                              PKI Администратор УЦ (CA Administrator) - сотрудник, обеcпечивающий управление службами УЦ и выпуск сертификатов. Блокчейн Vostok. Далее пользователь может применять методы API :ref:`PKI <pki-api>` для использования ЭП. Для обмена информацией с УЦ используется защищённый канал TLS с двухсторонней аутентификацией. Инфраструктура публичных ключей (PKI - Public Key Infrastructure) предназначена для безопасного обмена данными между пользователями. В основе инфраструктуры лежат цифровые сертификаты, связывающие приватный и публичный ключи пользователя. Подробнее про PKI можно почитать на `Wikipedia <https://en.wikipedia.org/wiki/Public_key_infrastructure>`_. Инфраструктура публичных ключей, использующаяся в блокчейне Vostok, включает в себя следующие базовые компоненты: Общий алгоритм работы с PKI состоит из слелующих этапов: Пользователь - владелец сертификата, или субъект, запрашивающий сертификат. Пользователь готовит персональные данные для получения сертификата. Для физического лица такими данными могут быть ФИО, из которых формируется ``commonName`` как идентификатор пользователя. Для юридических лиц это может быть наименование организации и её адрес. Пользователь отправляет данные в УЦ в формате ``*.req`` для создания сертификата. Администратор передаёт данные о запросе в УЦ, где на основе предоставленных данных центр создаёт сертификат пользователя. Пользователь получает сертификат в формате ``*.cer`` от администратора УЦ или самого УЦ. При помощи ПО `"СКЗИ КриптоПро JCP 2.0" <https://www.cryptopro.ru/products/csp/jcp>`_ пользователь помещает сертификат в криптоконтейнер и передаёт его на ноду в keystore. Работа с PKI Схема PKI в блокчейн-платформе Vostok Схема взаимодействия в PKI Удостоверяющий центр (Certification Authority) - точка доверия, ответственная за создание сертификатов ключей пользователей. Удостоверяющим центром может быть как независимый сервер с установленным ПО `УЦ ПАК «КриптоПро УЦ 2.0» <https://www.cryptopro.ru/products/ca/2.0>`_, так и отдельная организация, специализирующаяся в таком виде деятельности. Также пользователь может взаимодействовать как с администратором УЦ, так и со структурой УЦ напрямую. Project-Id-Version: Vostok 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-08-22 14:54+0300
PO-Revision-Date: 2019-08-22 14:55+0300
Last-Translator: 
Language: en
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
X-Generator: Poedit 2.2.1
 PKI CA Administrator - an employee which is responsible for the CA services managing and certificates issuing. Vostok blockchain. Further a user can use the :ref:`PKI <pki-api>` methods for using the digital signature. A secure TLS channel with two-way authentication is used to exchange information between a user and CA. PKI - Public Key Infrastructure is intended for the safe data exchange between users. Digital certificates linking users public and private keys together are the base unit of the PKI. More information about PKI you can find on `Wikipedia <https://en.wikipedia.org/wiki/Public_key_infrastructure>`_. Public key infrastructure which is used by the Vostok blockchain includes the following base components: Work with PKI includes the following stages: User - an certificate owner or a person requesting a digital certificate. A user prepares the personal data for receiving a certificate. Individuals can use the full name and surname for the creation of the ``commonName`` parameter as an user's identifier. For legal entities this may be a company name and its address. A user sends the data to CA using the``*.req`` format to create the certificate. An administrator sends the user request to CA, which issues a digital certificate based on the provided data. A user receives the digital certificate in the ``*.cer`` format from the administrator or CA itself. A user places the certificate into a crypto container using the `"CryptoPro JCP 2.0" <https://www.cryptopro.ru/products/csp/jcp>`_ software and sends this data to the node keystore. Working with PKI The PKI scheme of the Vostok blockchain PKI interaction scheme Certification Authority - an entity of trust that issues digital key certificates for users. An autonomous server with installed CryptoPro CA 2.0 software can be used as a CA. Also a separate company with exact specialization can perform CA functions. A user can interact with CA administrator as well as with CA company directly. 