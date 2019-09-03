.. _transaction-structure:

Транзакции
=====================

В этом разделе приведена структура хранения транзакций в блокчейн-платформе Waves Enterprise.
Для некоторых типов транзакций введено версионирование. Также транзакции, которые содержат вложенные данные, имеют ограничение на объём передаваемых данных - 165 КБ. Это такие транзакции, как :ref:`Data Transaction <DataTransaction>` и :ref:`CreateContract Transaction <CreateContractTransaction>`.

.. table:: Типы транзакций

   ===   =============================================================================   ====================   ======================================================================
   №	  Тип транзакции                                                                  Комиссия               Описание                                               
   ===   =============================================================================   ====================   ======================================================================
   1	 :ref:`Genesis transaction <GenesisTransaction>`                                 отсутствует            Первоначальная привязка баланса к адресам создаваемых при старте блокчейна нод
   2	 Payment Transaction (не используется)                                                         
   3	 :ref:`Issue Transaction <issueTransaction>`                                     1VST                   Выпуск токенов     
   4	 :ref:`Transfer Transaction <TransferTransaction>`                               0.01VST                Перевод токенов        
   5	 :ref:`Reissue Transaction <ReissueTransaction>`                                 1VST                   Перевыпуск токенов    
   6	 :ref:`Burn Transaction <BurnTransaction>`                                       0.05VST                Сжигание токенов        
   7	 :ref:`Exchange Transaction (не используется) <ExchangeTransaction>`                                                       
   8	 :ref:`Lease Transaction <LeaseTransaction>`                                     0.01VST                Передача токенов в аренду
   9	 :ref:`Lease Cancel Transaction <LeaseCancelTransaction>`                        0.01VST                Отмена аренды токенов        
   10	 :ref:`Create Alias Transaction <CreateAliasTransaction>`                        1VST                   Создание псевдонима         
   11	 :ref:`MassTransfer Transaction <MassTransferTransaction>`                       0.05VST                Массовый перевод токенов. Указана минимальная комиссия
   12	 :ref:`Data Transaction <DataTransaction>`                                       0.05VST                Транзакция с данными в виде полей с парой ключ-значение. Указана минимальная комиссия
   13	 :ref:`SetScript Transaction <SetScriptTransaction>`                             0.5VST                 Транзакция, привязывающая скрипт с RIDE-контрактом к аккаунту   
   14	 SponsorFee Transaction (не используется)              
   15    :ref:`SetAssetScript <SetAssetScriptTransaction>`                               1VST                   Транзакция, привязывающая скрипт с RIDE-контрактом к ассету  
   101   :ref:`Genesis Permission Transaction <GenesisPermitTransaction>`                отсутствует            Назначение первого администратора сети для дальнейшей раздачи прав
   102   :ref:`Permission Transaction <PermitTransaction>`                               0.01VST                Выдача/отзыв прав у аккаунта
   103   :ref:`CreateContract Transaction <CreateContractTransaction>`                   1VST                   Создание Docker-контракта      
   104   :ref:`CallContract Transaction <CallContractTransaction>`                       0.1VST                 Вызов Docker-контракта         
   105   :ref:`ExecutedContract Transaction <ExecutedContractTransaction>`               отсутствует            Выполнение Docker-контракта     
   106   :ref:`DisableContract Transaction <DisableContractTransaction>`                 0.1VST                 Отключение Docker-контракта
   110   :ref:`GenesisRegisterNode Transaction <GenesisRegisterNodeTransaction>`         отсутствует            Регистрация ноды в генезис-блоке при старте блокчейна    
   111   :ref:`RegisterNode Transaction <RegisterNodeTransaction>`                       0.01VST                Регистрация новой ноды в сети    
   112   :ref:`CreatePolicy Transaction <CreatePolicyTransaction>`                       1VST                   Создание группы доступа к конфиденциальным данным  
   113   :ref:`UpdatePolicy Transaction <UpdatePolicyTransaction>`                       0.5VST                 Изменение группы доступа    
   114   :ref:`PolicyDataHash Transaction <PolicyDataHashTransaction>`                   0.05VST                Отправка в сеть хеша данных       
   ===   =============================================================================   ====================   ======================================================================


.. .. csv-table:: Типы транзакций
   :header: "№","Тип транзакции","Комиссия","Описание"
   :widths: 10, 30, 25, 50
   1,:ref:`Genesis transaction <GenesisTransaction>`,отсутствует
   2,Payment Transaction (не используется)
   3,:ref:`Issue Transaction <issueTransaction>`,1 - 1.004VST,Выпуск токенов     
   4,:ref:`Transfer Transaction <TransferTransaction>`,0.001 - 0.009VST,Перевод токенов        
   5,:ref:`Reissue Transaction <ReissueTransaction>`,1 - 1.008VST,Перевыпуск токенов    
   6,:ref:`Burn Transaction <BurnTransaction>`,0.001 - 0.009VST,Сжигание токенов        
   7,:ref:`Exchange Transaction (не используется) <ExchangeTransaction>`,0.003 - 0.007VST,Обмен токенами       
   8,:ref:`Lease Transaction <LeaseTransaction>`,0.001 - 0.005VST,Аренда токенов        
   9,:ref:`Lease Cancel Transaction <LeaseCancelTransaction>`,0.001 - 0.005VST,Отмена аренды токенов        
   10,:ref:`Create Alias Transaction <CreateAliasTransaction>`,0.001 - 0.005VST,Создание псевдонима         
   11,:ref:`MassTransfer Transaction <MassTransferTransaction>`,0.001 - 0.009VST,Массовый перевод токенов        
   12,:ref:`Data Transaction <DataTransaction>`,0.001 - 0.005VST,Транзакция с данными в виде полей с парой ключ-значение    
   13,:ref:`SetScript Transaction <SetScriptTransaction>`,0.01 - 0.014VST,Транзакция, привязывающая скрипт с RIDE-контрактом к аккаунту   
   14,SponsorFee Transaction (не используется)              
   15,:ref:`SetAssetScript <SetAssetScriptTransaction>`,0.996 - 1VST,Транзакция, привязывающая скрипт с RIDE-контрактом к ассету  
   101,:ref:`Genesis Permission Transaction <GenesisPermitTransaction>`,отсутствует,Назначение первого администратора сети для дальнейшей раздачи прав
   102,:ref:`Permission Transaction <PermitTransaction>`,0VST,Выдача/забор прав у аккаунта
   103,:ref:`CreateContract Transaction <CreateContractTransaction>`,1 - 1.004VST,Создание Docker-контракта      
   104,:ref:`CallContract Transaction <CallContractTransaction>`,0.15 - 0.154VST,Вызов Docker-контракта         
   105,:ref:`ExecutedContract Transaction <ExecutedContractTransaction>`,отсутствует,Выполнение Docker-контракта     
   106,:ref:`DisableContract Transaction <DisableContractTransaction>`,0.15 - 0.154VST,Отключение Docker-контракта
   110,:ref:`GenesisRegisterNode Transaction <GenesisRegisterNodeTransaction>`,0-0.004VST,Регистрация ноды в генезис-блоке при старте блокчейна    
   111,:ref:`RegisterNode Transaction <RegisterNodeTransaction>`,отсутствует,Регистрация новой ноды в сети    
   112,:ref:`CreatePolicy Transaction <CreatePolicyTransaction>`,отсутствует,Создание политики доступа к конфиденциальным данным  
   113,:ref:`UpdatePolicy Transaction <UpdatePolicyTransaction>`,отсутствует,Изменение политики доступа    
   114,:ref:`PolicyDataHash Transaction <PolicyDataHashTransaction>`,отсутствует,Отправка в сеть хэша данных 


.. 107   :ref:`UpdateContract Transaction <UpdateContractTransaction>`                     0.15 - 0.154VST                


.. _GenesisTransaction:

1. Genesis transaction
~~~~~~~~~~~~~~~~~~~~~~~
.. csv-table::
   :header: "Field","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10

   type             ,+      ,+      ,Byte
   id               ,+      ,       ,Byte
   fee              ,+      ,       ,Long
   timestamp        ,+      ,+      ,Long
   signature        ,+      ,       ,ByteStr
   recipient        ,+      ,+      ,ByteStr
   amount           ,+      ,+      ,Long
   height           ,+      ,       , 

.. _issueTransaction:

3. issueTransaction
~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","JSON to sign","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10, 10

   type             ,+      ,+      ,+      ,Byte               
   id               ,       ,+      ,       ,Byte               
   sender           ,+      ,+      ,       ,PublicKeyAccount   
   senderPublicKey  ,       ,+      ,+      ,PublicKeyAccount   
   fee              ,+      ,+      ,+      ,Long               
   timestamp        ,+ (opt),+      ,+      ,Long               
   proofs           ,       ,+      ,+      ,List[ByteStr]      
   version          ,+      ,+      ,+      ,Byte               
   assetId          ,       ,+      ,       ,ByteStr            
   name             ,+      ,+      ,+      ,Array[Byte]        
   quantity         ,+      ,+      ,+      ,Long               
   reissuable       ,+      ,+      ,+      ,Boolean            
   decimals         ,+      ,+      ,+      ,Byte               
   description      ,+      ,+      ,+      ,Array[Byte]        
   chainId          ,       ,+      ,+      ,Byte               
   script           ,+ (opt),+      ,+      ,Bytes
   password         ,+ (opt),       ,       ,String
   height           ,       ,+      ,       , 

**JSON для вызова метода sign**

.. code:: js

   { 
      "type": 3,
      "version":2,
      "name": "Test Asset 1",
      "quantity": 100000000000,
      "description": "Some description",
      "sender": "3FSCKyfFo3566zwiJjSFLBwKvd826KXUaqR",
      "decimals": 8,
      "reissuable": true,
      "fee": 100000000
   }

**Broadcasted JSON**

.. code:: js

    {
        "type": 3,
        "id": "DnK5Xfi2wXUJx9BjK9X6ZpFdTLdq2GtWH9pWrcxcmrhB",
        "sender": "3N65yEf31ojBZUvpu4LCo7n8D73juFtheUJ",
        "senderPublicKey": "C1ADP1tNGuSLTiQrfNRPhgXx59nCrwrZFRV4AHpfKBpZ",
        "fee": 100000000,
        "timestamp": 1549378509516,
        "proofs": [ "NqZGcbcQ82FZrPh6aCEjuo9nNnkPTvyhrNq329YWydaYcZTywXUwDxFAknTMEGuFrEndCjXBtrueLWaqbJhpeiG" ],
        "version": 2,
        "assetId": "DnK5Xfi2wXUJx9BjK9X6ZpFdTLdq2GtWH9pWrcxcmrhB",
        "name": "Token Name",
        "quantity": 10000,
        "reissuable": true,
        "decimals": 2,
        "description": "SmarToken",
        "chainId": 84,
        "script": "base64:AQa3b8tH",
        "height": 60719
    },

.. _TransferTransaction:

4. TransferTransaction
~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","JSON to sign","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10, 10

   type             ,+      ,+      ,+      ,Byte
   id               ,       ,+      ,       ,Byte
   sender           ,+      ,+      ,       ,PublicKeyAccount
   senderPublicKey  ,       ,+      ,+      ,PublicKeyAccount
   fee              ,+      ,+      ,+      ,Long
   timestamp        ,+ (opt),+      ,+      ,Long
   proofs           ,       ,+      ,+      ,List[ByteStr]
   version          ,+      ,+      ,+      ,Byte
   recipient        ,+      ,+      ,+      ,ByteStr
   assetId          ,+ (opt),+      ,+      ,ByteStr
   feeAssetId       ,+ (opt),+      ,+      ,Bytes
   amount           ,+      ,+      ,+      ,Long
   attachment       ,+ (opt),+      ,+      ,Bytes
   password         ,+ (opt),       ,       ,String   
   height           ,       ,+      ,       ,

**JSON для вызова метода sign**

.. code:: js

    {
      "type": 4,
      "version": 2,
      "sender": "3M6dRZXaJY9oMA3fJKhMALyYKt13D1aimZX",
      "password": "",
      "recipient": "3M6dRZXaJY9oMA3fJKhMALyYKt13D1aimZX",
      "amount": 40000000000,
      "fee": 100000
    }


**Broadcasted JSON**

.. code:: js

    {
        "senderPublicKey": "4WnvQPit2Di1iYXDgDcXnJZ5yroKW54vauNoxdNeMi2g",
        "amount": 200000000,
        "fee": 100000,
        "type": 4,
        "version": 2,
        "attachment": "3uaRTtZ3taQtRSmquqeC1DniK3Dv",
        "sender": "3GLWx8yUFcNSL3DER8kZyE4TpyAyNiEYsKG",
        "feeAssetId": null,
        "proofs": [
        "2hRxJ2876CdJ498UCpErNfDSYdt2mTK4XUnmZNgZiq63RupJs5WTrAqR46c4rLQdq4toBZk2tSYCeAQWEQyi72U6"
        ],
        "assetId": null,
        "recipient": "3GPtj5osoYqHpyfmsFv7BMiyKsVzbG1ykfL",
        "id": "757aQzJiQZRfVRuJNnP3L1d369H2oTjUEazwtYxGngCd",
        "timestamp": 1558952680800
    }

.. _ReissueTransaction:

5. ReissueTransaction
~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","JSON to sign","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10, 10

   type             ,+      ,+      ,+      ,Byte
   id               ,       ,+      ,       ,Byte
   sender           ,+      ,+      ,       ,PublicKeyAccount
   senderPublicKey  ,       ,+      ,+      ,PublicKeyAccount
   fee              ,+      ,+      ,+      ,Long
   timestamp        ,+ (opt),+      ,+      ,Long
   proofs           ,       ,+      ,+      ,List[ByteStr]
   version          ,+      ,+      ,+      ,Byte
   chainId          ,       ,+      ,+      ,Byte
   assetId          ,+      ,+      ,+      ,ByteStr
   quantity         ,+      ,+      ,+      ,Long
   reissuable       ,+      ,+      ,+      ,Boolean
   password         ,+ (opt),       ,       ,String
   height           ,       ,       ,       ,

**JSON для вызова метода sign**

.. code:: js

    {
        "type": 5, 
        "version":2, 
        "quantity": 10000, 
        "sender": "3N9vL3apA4j2L5PojHW8TYmfHx9Lo2ZaKPB", 
        "assetId": "7bE3JPwZC3QcN9edctFrLAKYysjfMEk1SDjZx5gitSGg", 
        "reissuable": true, 
        "fee": 100000001
    }


**Broadcasted JSON**

.. code:: js

    {
        "senderPublicKey": "Fbt5fKHesnQG2CXmsKf4TC8v9oB7bsy2AY56CUopa6H3",
        "quantity": 10000,
        "sender": "3N9vL3apA4j2L5PojHW8TYmfHx9Lo2ZaKPB",
        "chainId": 84,
        "proofs": [ "3gmgGM6rYpxuuR5QvJkugPsERG7yWYF7JN6QzpUGJwT8Lw6SUHkzzk8R22A7cGQz7TQQ5NifKxvAQzwPyDQbwmBg" ],
        "assetId": "7bE3JPwZC3QcN9edctFrLAKYysjfMEk1SDjZx5gitSGg",
        "fee": 100000001,
        "id": "GsNvk15Vu4kqtRmMSpYW21WzgJpZrLBwjCREHWuwnvh5",
        "type": 5,
        "version": 2,
        "reissuable": true,
        "timestamp": 1551447859299,
        "height": 1190
    }


.. _BurnTransaction:

6. BurnTransaction
~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","JSON to sign","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10, 10

   type             ,+      ,+      ,+      ,Byte
   id               ,       ,+      ,       ,Byte
   sender           ,+      ,+      ,       ,PublicKeyAccount
   senderPublicKey  ,       ,+      ,+      ,PublicKeyAccount
   fee              ,+      ,+      ,+      ,Long
   timestamp        ,+ (opt),+      ,+      ,Long
   proofs           ,       ,+      ,+      ,List[ByteStr]
   version          ,+      ,+      ,+      ,Byte
   chainId          ,       ,+      ,+      ,Byte
   assetId          ,+      ,+      ,+      ,ByteStr
   quantity         ,+      ,       ,+      ,Long
   amount           ,       ,+      ,       ,Long
   password         ,+ (opt),       ,       ,String
   height           ,       ,       ,       ,

**JSON для вызова метода sign**

.. code:: js

    {
        "type": 6,
        "version": 2,
        "sender": "3MtrNP7AkTRuBhX4CBti6iT21pQpEnmHtyw",
        "assetId": "7bE3JPwZC3QcN9edctFrLAKYysjfMEk1SDjZx5gitSGg",
        "quantity": 1000,
        "fee": 100000,
        "attachment": "string"
    }

**Broadcasted JSON**

.. code:: js

    {
        "senderPublicKey": "Fbt5fKHesnQG2CXmsKf4TC8v9oB7bsy2AY56CUopa6H3",
        "amount": 1000,
        "sender": "3N9vL3apA4j2L5PojHW8TYmfHx9Lo2ZaKPB",
        "chainId": 84,
        "proofs": [ "kzTwsNXjJkzk6dpFFZZXyeimYo6iLTVbCnCXBD4xBtyrNjysPqZfGKk9NdJUTP3xeAPhtEgU9hsdwzRVo1hKMgS" ],
        "assetId": "7bE3JPwZC3QcN9edctFrLAKYysjfMEk1SDjZx5gitSGg",
        "fee": 100000,
        "id": "3yd2HZq7sgun7GakisLH88UeKcpYMUEL4sy57aprAN5E",
        "type": 6,
        "version": 2,
        "timestamp": 1551448489758,
        "height": 1190
    }

.. _ExchangeTransaction:

7. ExchangeTransaction
~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10

   type             ,+          ,+      ,Byte
   id               ,+          ,       ,Byte
   sender           ,+          ,       ,PublicKeyAccount
   senderPublicKey  ,+          ,+      ,PublicKeyAccount
   fee              ,+          ,+      ,Long
   timestamp        ,+          ,+      ,Long
   proofs           ,+          ,+      ,List[ByteStr]
   version          ,+          ,+      ,Byte
   amount           ,+          ,+      ,Long
   Price            ,+          ,+      ,Long
   buyOrder         ,+(order1)  ,+      ,Bytes
   sellOrder        ,+(order2)  ,+      ,Bytes
   buyMatcherFee    ,+          ,+      ,Long
   sellMatcherFee   ,+          ,+      ,Long
   height           ,           ,       ,

.. _LeaseTransaction:

8. LeaseTransaction
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","JSON to sign","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10, 10

   type             ,+      ,+      ,+      ,Byte
   id               ,       ,+      ,       ,Byte
   sender           ,+      ,+      ,       ,PublicKeyAccount
   senderPublicKey  ,       ,+      ,+      ,PublicKeyAccount
   fee              ,+      ,+      ,+      ,Long
   timestamp        ,+ (opt),+      ,+      ,Long
   proofs           ,       ,+      ,+      ,List[ByteStr]
   version          ,+      ,+      ,+      ,Byte
   amount           ,+      ,+      ,+      ,Long
   recipient        ,+      ,+      ,+      ,ByteStr
   status           ,       ,+      ,       ,
   password         ,+ (opt),       ,       ,String
   height           ,       ,+      ,       ,

**JSON для вызова метода sign**

.. code:: js

    {
        "type": 8,
        "version": 2,
        "sender": "3N9vL3apA4j2L5PojHW8TYmfHx9Lo2ZaKPB",
        "recipient": "3N1ksBqc6uSksdiYjCzMtvEpiHhS1JjkbPh",
        "amount": 1000,
        "fee": 100000
    }

**Broadcasted JSON**

.. code:: js

    {
        "senderPublicKey": "Fbt5fKHesnQG2CXmsKf4TC8v9oB7bsy2AY56CUopa6H3",
        "amount": 1000,
        "sender": "3N9vL3apA4j2L5PojHW8TYmfHx9Lo2ZaKPB",
        "proofs": [ "5jvmWKmU89HnxXFXNAd9X41zmiB5fSGoXMirsaJ9tNeyiCAJmjm7MR48g789VucckQw2UExaVXfhsdEBuUrchvrq" ],
        "fee": 100000,
        "recipient": "3N1ksBqc6uSksdiYjCzMtvEpiHhS1JjkbPh",
        "id": "6Tn7ir9MycHW6Gq2F2dGok2stokSwXJadPh4hW8eZ8Sp",
        "type": 8,
        "version": 2,
        "timestamp": 1551449299545,
        "height": 1190
    }

.. _LeaseCancelTransaction:

9. LeaseCancelTransaction
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","JSON to sign","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10, 10

   type             ,+      ,+      ,+      ,Byte
   id               ,       ,+      ,       ,Byte
   sender           ,+      ,+      ,       ,PublicKeyAccount
   senderPublicKey  ,       ,+      ,+      ,PublicKeyAccount
   fee              ,+      ,+      ,+      ,Long
   timestamp        ,+ (opt),+      ,+      ,Long
   proofs           ,       ,+      ,+      ,List[ByteStr]
   version          ,+      ,+      ,+      ,Byte
   chainId          ,       ,+      ,+      ,Byte
   leaseId          ,+ (txId),+     ,+      ,Byte
   lease            ,       ,+      ,       ,
   password         ,+ (opt),       ,       ,String
   height           ,       ,+      ,       ,

**JSON для вызова метода sign**

.. code:: js

    { 
        "type": 9, 
        "version": 2, 
        "fee": 100000, 
        "sender": "3N9vL3apA4j2L5PojHW8TYmfHx9Lo2ZaKPB",         
        "txId": "6Tn7ir9MycHW6Gq2F2dGok2stokSwXJadPh4hW8eZ8Sp" 
    }
    
**Broadcasted JSON**

.. code:: js

    {
       "senderPublicKey": "Fbt5fKHesnQG2CXmsKf4TC8v9oB7bsy2AY56CUopa6H3",
        "leaseId": "6Tn7ir9MycHW6Gq2F2dGok2stokSwXJadPh4hW8eZ8Sp",
        "sender": "3N9vL3apA4j2L5PojHW8TYmfHx9Lo2ZaKPB",
        "chainId": 84,
        "proofs": [ "2Gns72hraH5yay3eiWeyHQEA1wTqiiAztaLjHinEYX91FEv62HFW38Hq89GnsEJFHUvo9KHYtBBrb8hgTA9wN7DM" ],
        "fee": 100000,
        "id": "9vhxB2ZDQcqiumhQbCPnAoPBLuir727qgJhFeBNmPwmu",
        "type": 9,
        "version": 2,
        "timestamp": 1551449835205,
        "height": 1190
    }

.. _CreateAliasTransaction:

10. CreateAliasTransaction
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","JSON to sign","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10, 10

   type             ,+      ,+      ,+      ,Byte
   id               ,       ,+      ,       ,Byte
   sender           ,+      ,+      ,       ,PublicKeyAccount
   senderPublicKey  ,       ,+      ,+      ,PublicKeyAccount
   fee              ,+      ,+      ,+      ,Long
   timestamp        ,+ (opt),+      ,+      ,Long
   proofs           ,       ,+      ,+      ,List[ByteStr]
   version          ,+      ,+      ,+      ,Byte
   alias            ,+      ,+      ,+      ,Bytes
   password         ,+ (opt),       ,       ,String
   height           ,       ,+      ,       ,

**JSON для вызова метода sign**

.. code:: js

    { 
        "type": 10, 
        "version": 2, 
        "fee": 100000, 
        "sender": "3N9vL3apA4j2L5PojHW8TYmfHx9Lo2ZaKPB",         
        "alias": "hodler" 
    }
    
**Broadcasted JSON**

.. code:: js

    {
        "type": 10,
        "id": "DJTaiMpb7eLuPW5GcE4ndeE8jWsWPjx8gPYmbZPJjpag",
        "sender": "3N65yEf31ojBZUvpu4LCo7n8D73juFtheUJ",
        "senderPublicKey": "C1ADP1tNGuSLTiQrfNRPhgXx59nCrwrZFRV4AHpfKBpZ",
        "fee": 0,
        "timestamp": 1549290335781,
        "signature": "2qYepod9DhpxVad1yQDbv1QzU4KLKcbjjdtGY7De2272K76nbQfaXsRnyd31hUE8bhvLjjpHRdtoLVzbBDzRZYEY",
        "proofs": [ "2qYepod9DhpxVad1yQDbv1QzU4KLKcbjjdtGY7De2272K76nbQfaXsRnyd31hUE8bhvLjjpHRdtoLVzbBDzRZYEY" ],
        "version": 1,
        "alias": "chuvaknoimer4",
        "height": 59245
    }

.. _MassTransferTransaction:

11. MassTransferTransaction
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","JSON to sign","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10, 10

   type             ,+      ,+      ,+      ,Byte
   id               ,       ,+      ,       ,Byte
   sender           ,+      ,+      ,       ,PublicKeyAccount
   senderPublicKey  ,       ,+      ,+      ,PublicKeyAccount
   fee              ,+      ,+      ,+      ,Long
   timestamp        ,+ (opt),+      ,+      ,Long
   proofs           ,       ,+      ,+      ,List[ByteStr]
   version          ,+      ,+      ,+      ,Byte
   assetId          ,+ (opt),+      ,+      ,ByteStr
   attachment       ,+ (opt),+      ,+      ,
   transfers        ,+      ,+      ,+      ,List[Transfer]
   transferCount    ,       ,+      ,+      ,
   totalAmount      ,       ,+      ,       ,
   password         ,+ (opt),       ,       ,String
   height           ,       ,+      ,       ,

**JSON для вызова метода sign**

.. code:: js

    { 
        "type": 11, 
        "sender": "3N9vL3apA4j2L5PojHW8TYmfHx9Lo2ZaKPB",
        "fee": 2000000,
        "version": 1, 
        "transfers": 
        [
            { "recipient": "3MtHszoTn399NfsH3v5foeEXRRrchEVtTRB", "amount": 100000 },
            { "recipient": "3N7BA6J9VUBfBRutuMyjF4yKTUEtrRFfHMc", "amount": 100000 }
        ],
        "height": 1190
    }
    
**Broadcasted JSON**

.. code:: js

    {
        "senderPublicKey": "Fbt5fKHesnQG2CXmsKf4TC8v9oB7bsy2AY56CUopa6H3",
        "fee": 2000000,
        "type": 11,
        "transferCount": 2,
        "version": 1,
        "totalAmount": 200000,
        "attachment": "",
        "sender": "3N9vL3apA4j2L5PojHW8TYmfHx9Lo2ZaKPB",
        "proofs": [ "2gWpMWdgZCjbygCX5US3aAFftKtGPRSK3aWGJ6RDnWJf9hend5sBFAgY6u3Mp4jN8cqwaJ5o8qrKNedGN5CPN1GZ" ],
        "assetId": null,
        "transfers": 
        [
            {
                "recipient": "3MtHszoTn399NfsH3v5foeEXRRrchEVtTRB",
                "amount": 100000
            },
            {
                "recipient": "3N7BA6J9VUBfBRutuMyjF4yKTUEtrRFfHMc",
                "amount": 100000
            }
        ],
        "id": "D9jUSHHcJqVAvkFMiRfDBhQbUzoSfQqd9cjaunMmtjdu",
        "timestamp": 1551450279637
    }

.. _DataTransaction:

12. DataTransaction
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","JSON to sign","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10, 10

   type             ,+      ,+      ,+      ,Byte
   id               ,       ,+      ,       ,Byte
   sender           ,+      ,+      ,       ,PublicKeyAccount
   senderPublicKey  ,+      ,+      ,+      ,PublicKeyAccount
   fee              ,+      ,+      ,+      ,Long
   timestamp        ,+ (opt),+      ,+      ,Long
   proofs           ,       ,+      ,+      ,List[ByteStr]
   version          ,+      ,+      ,       ,Byte
   authorPublicKey  ,       ,+      ,+      ,PublicKeyAccount
   author           ,+      ,+      ,       ,
   data             ,+      ,+      ,+      ,
   password         ,+ (opt),       ,       ,String
   height           ,       ,+      ,       ,

**JSON для вызова метода sign** 

.. code:: js

    {
        "type": 12,
        "version": 1,
        "sender": "3N9vL3apA4j2L5PojHW8TYmfHx9Lo2ZaKPB",
        "senderPublicKey": "Fbt5fKHesnQG2CXmsKf4TC8v9oB7bsy2AY56CUopa6H3",
        "author": "3N9vL3apA4j2L5PojHW8TYmfHx9Lo2ZaKPB",
        "data": [
            {
            "key": "objectId",
            "type": "string",
            "value": "obj:123:1234"
            }
        ],
        "fee": 100000
    }

**Broadcasted JSON**

.. code:: js

    {
    "senderPublicKey": "Fbt5fKHesnQG2CXmsKf4TC8v9oB7bsy2AY56CUopa6H3",
    "authorPublicKey": "Fbt5fKHesnQG2CXmsKf4TC8v9oB7bsy2AY56CUopa6H3",
    "data": 
    [
        {
            "type": "string",
            "value": "obj:123:1234",
            "key": "objectId"
        }
    ],
    "sender": "3N9vL3apA4j2L5PojHW8TYmfHx9Lo2ZaKPB",
    "proofs": [ "2T7WQm5XW8cFHfiFkdDEic9oNiT7aFiH3TyKkARERopr1VJvzRKqHAVnQ3eiYZ3uYN8uQnPopQEH4XV8z5SgSwsf" ],
    "author": "3N9vL3apA4j2L5PojHW8TYmfHx9Lo2ZaKPB",
    "fee": 100000,
    "id": "7dMMCQNTusahZ7DWtNGjCwAhRYpjaH1hsepRMbpn2BkD",
    "type": 12,
    "version": 1,
    "timestamp": 1551680510183
    }


.. _SetScriptTransaction:

13. SetScriptTransaction
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","JSON to sign","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10, 10

   type             ,+      ,+      ,+      ,Byte
   id               ,       ,+      ,       ,Byte
   sender           ,+      ,+      ,       ,PublicKeyAccount
   senderPublicKey  ,       ,+      ,+      ,PublicKeyAccount
   fee              ,+      ,+      ,+      ,Long
   timestamp        ,+ (opt),+      ,+      ,Long
   proofs           ,       ,+      ,+      ,List[ByteStr]
   chainId          ,       ,+      ,+      ,Byte
   version          ,+      ,+      ,+      ,Byte
   script           ,+ (opt),+      ,+      ,Bytes
   name             ,+      ,+      ,+      ,Array[Byte]
   description      ,+ (opt),+      ,+      ,Array[Byte]
   password         ,+ (opt),       ,       ,String
   height           ,       ,+      ,       ,

**JSON для вызова метода sign** 

.. code:: js

    {
        "type": 13,
        "version": 1,
        "sender": "3N9vL3apA4j2L5PojHW8TYmfHx9Lo2ZaKPB",
        "fee": 1000000,
        "name": "faucet",
        "script": "base64:AQQAAAAHJG1hdGNoMAUAAAACdHgG+RXSzQ=="
    }

**Broadcasted JSON**

.. code:: js

    {
        "type": 13,
        "id": "HPDypnQJHJskN8kwszF8rck3E5tQiuiM1fEN42w6PLmt",
        "sender": "3N9vL3apA4j2L5PojHW8TYmfHx9Lo2ZaKPB",
        "senderPublicKey": "Fbt5fKHesnQG2CXmsKf4TC8v9oB7bsy2AY56CUopa6H3",
        "fee": 1000000,
        "timestamp": 1545986757233,
        "proofs": [ "2QiGYS2dqh8QyN7Vu2tAYaioX5WM6rTSDPGbt4zrWS7QKTzojmR2kjppvGNj4tDPsYPbcDunqBaqhaudLyMeGFgG" ],
        "chainId": 84,
        "version": 1,
        "script": "base64:AQQAAAAHJG1hdGNoMAUAAAACdHgG+RXSzQ==",
        "name": "faucet",
        "description": "",
        "height": 3805
    }

.. _SetAssetScriptTransaction:

15. SetAssetScriptTransaction
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","JSON to sign","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10, 10

   type             ,+      ,+      ,+      ,Byte
   id               ,       ,+      ,       ,Byte
   sender           ,+      ,+      ,       ,PublicKeyAccount
   senderPublicKey  ,       ,+      ,+      ,PublicKeyAccount
   fee              ,+      ,+      ,+      ,Long
   timestamp        ,+ (opt),+      ,+      ,Long
   proofs           ,       ,+      ,+      ,List[ByteStr]
   version          ,+      ,+      ,+      ,Byte
   chainId          ,       ,+      ,+      ,Byte
   assetId          ,+      ,+      ,+      ,ByteStr
   script           ,+ (opt),+      ,+      ,Bytes
   password         ,+ (opt),       ,       ,String
   height           ,       ,+      ,       ,


**JSON для вызова метода sign** 

.. code:: js

    {
        "type": 15,
        "version": 1,
        "sender": "3N9vL3apA4j2L5PojHW8TYmfHx9Lo2ZaKPB",
        "fee": 100000000,
        "script": "base64:AQQAAAAHJG1hdGNoMAUAAAACdHgG+RXSzQ==",
        "assetId": "7bE3JPwZC3QcN9edctFrLAKYysjfMEk1SDjZx5gitSGg"
    }

**Broadcasted JSON**

.. code:: js

    {
        "type": 15,
        "id": "CQpEM9AEDvgxKfgWLH2HxE82iAzpXrtqsDDcgZGPAF9J",
        "sender": "3N65yEf31ojBZUvpu4LCo7n8D73juFtheUJ",
        "senderPublicKey": "C1ADP1tNGuSLTiQrfNRPhgXx59nCrwrZFRV4AHpfKBpZ",
        "fee": 100000000,
        "timestamp": 1549448710502,
        "proofs": [ "64eodpuXQjaKQQ4GJBaBrqiBtmkjSxseKC97gn6EwB5kZtMr18mAUHPRkZaHJeJxaDyLzGEZKqhYoUknWfNhXnkf" ],
        "version": 1,
        "chainId": 84,
        "assetId": "DnK5Xfi2wXUJx9BjK9X6ZpFdTLdq2GtWH9pWrcxcmrhB",
        "script": "base64:AQQAAAAHJG1hdGNoMAUAAAACdHgG+RXSzQ==",
        "height": 61895
    }

.. _GenesisPermitTransaction:

101. GenesisPermitTransaction
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","JSON to sign","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10, 10

   type             ,+      ,+      ,Byte
   id               ,+      ,       ,Byte
   fee              ,+      ,       ,Long
   timestamp        ,+      ,+      ,Long
   signature        ,+      ,       ,ByteStr
   target           ,+      ,+      ,ByteStr
   role             ,+      ,+      ,String
   height           ,       ,       ,


.. _PermitTransaction:

102. PermitTransaction
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","JSON to sign","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10, 10

   type             ,+      ,+      ,+      ,Byte
   id               ,       ,+      ,       ,Byte
   sender           ,+      ,+      ,       ,PublicKeyAccount
   senderPublicKey  ,       ,+      ,+      ,PublicKeyAccount
   fee              ,       ,+      ,       ,Long
   timestamp        ,+ (opt),+      ,+      ,Long
   proofs           ,       ,+      ,+      ,List[ByteStr]
   version          ,       ,       ,+      ,Byte
   target           ,+      ,+      ,+      ,ByteStr
   PermissionOp     ,       ,       ,+      ,PermissionOp
   opType           ,+      ,+      ,       ,String
   role             ,+      ,+      ,       ,String
   dueTimestamp     ,+ (opt),+      ,       ,Option[Long]
   password         ,+ (opt),       ,       ,String
   height           ,       ,+      ,       ,

**JSON для вызова метода sign** 

.. code:: js

   {
      "type":102,
      "sender":"3GLWx8yUFcNSL3DER8kZyE4TpyAyNiEYsKG",
      "senderPublicKey":"4WnvQPit2Di1iYXDgDcXnJZ5yroKW54vauNoxdNeMi2g",
      "fee":0,
      "proofs":[""],
      "target":"3GPtj5osoYqHpyfmsFv7BMiyKsVzbG1ykfL",
      "opType":"add",
      "role":"contract_developer",
      "dueTimestamp":null
    }

**Broadcasted JSON**

.. code:: js

    {
      "senderPublicKey": "4WnvQPit2Di1iYXDgDcXnJZ5yroKW54vauNoxdNeMi2g",
      "role": "contract_developer",
      "sender": "3GLWx8yUFcNSL3DER8kZyE4TpyAyNiEYsKG",
      "proofs": [
        "5ABJCRTKGo6jmDZCRWcLQc257CCeczmcjmtfJmbBE7TP3KsVkwvisH9kEkfYPckVCzEMKZTCd3LKAPcN8o4Git3j"
      ],
      "fee": 0,
      "opType": "add",
      "id": "8zVUH7nsDCcpwyfxiq8DCTgqL7Q23FW1KWepB9EZcFG6",
      "type": 102,
      "dueTimestamp": null,
      "timestamp": 1559048837487,
      "target": "3GPtj5osoYqHpyfmsFv7BMiyKsVzbG1ykfL"
    }

.. _CreateContractTransaction:

103. CreateContractTransaction
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","JSON to sign","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10, 10

   type             ,+      ,+      ,+      ,Byte
   id               ,       ,+      ,       ,Byte
   sender           ,+      ,+      ,       ,PublicKeyAccount
   senderPublicKey  ,       ,+      ,+      ,PublicKeyAccount
   fee              ,+      ,+      ,+      ,Long
   timestamp        ,+ (opt),+      ,+      ,Long
   proofs           ,       ,+      ,+      ,List[ByteStr]
   version          ,       ,+      ,+      ,Byte
   image            ,+      ,+      ,+      ,Array[Bytes]
   imageHash        ,+      ,+      ,+      ,Array[Bytes]
   params           ,+      ,+      ,+      ,List[DataEntry[_]]
   height           ,       ,+      ,       ,

**JSON для вызова метода sign** 

.. code:: js

    {
        "type": 103,
        "sender":"3PKyW5FSn4fmdrLcUnDMRHVyoDBxybRgP58",
        "image":"localhost:5000/sum-contract-kv",
        "params":[],
        "imageHash": "930d18dacb4f49e07e2637a62115510f045da55ca16b9c7c503486828641d662",
        "fee":500000
    }

**Broadcasted JSON**

.. code:: js

    {
        "type": 103,
        "id": "ULcq9R7PvUB2yPMrmBdxoTi3bcRmQPT3JDLLLZVj4Ky",
        "sender": "3N3YTj1tNwn8XUJ8ptGKbPuEFNa9GFnhqew",
        "senderPublicKey": "3kW7vy6nPC59BXM67n5N56rhhAv38Dws5skqDsjMVT2M",
        "fee": 500000,
        "timestamp": 1550591678479,
        "proofs": [ "yecRFZm9iBLyDy93bDVaNo1PR5Qkkic7196GAgUt9TNH1cnQphq4yGQQ8Fxj4BYA4TaqYVw5qxtWzGMPQyVeKYv" ], 
        "version": 1, 
        "image": "localhost:5000/lshevtsova", 
        "imageHash": "a93c124016b87bbbf1c1deff9638c0f9393d31289d824401d280f85098d154f7", 
        "params": [], 
        "height": 1619 
    }

.. _CallContractTransaction:   
   
104. CallContractTransaction
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","JSON to sign","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10, 10

   type             ,+      ,+      ,+      ,Byte
   id               ,       ,+      ,       ,Byte
   sender           ,+      ,+      ,       ,PublicKeyAccount
   senderPublicKey  ,       ,+      ,+      ,PublicKeyAccount
   fee              ,+      ,+      ,+      ,Long
   timestamp        ,+ (opt),+      ,+      ,Long
   proofs           ,       ,+      ,+      ,List[ByteStr]
   version          ,       ,+      ,+      ,Byte
   contractId       ,+      ,+      ,+      ,ByteStr
   params           ,+      ,+      ,+      ,List[DataEntry[_]]
   height           ,       ,+      ,       ,

**JSON для вызова метода sign**

.. code:: js

    {
        "contractId": "2sqPS2VAKmK77FoNakw1VtDTCbDSa7nqh5wTXvJeYGo2",
        "fee": 10,
        "sender": "3PKyW5FSn4fmdrLcUnDMRHVyoDBxybRgP58",
        "type": 104,
        "params": 
        [
            {
               "type": "integer",
               "key": "a",
               "value": 1
            },
            {
               "type": "integer",
               "key": "b",
               "value": 100

            }
        ]
    }

**Broadcasted JSON**

.. code:: js

    {
        "type": 104,
        "id": "9fBrL2n5TN473g1gNfoZqaAqAsAJCuHRHYxZpLexL3VP",
        "sender": "3PKyW5FSn4fmdrLcUnDMRHVyoDBxybRgP58",
        "senderPublicKey": "2YvzcVLrqLCqouVrFZynjfotEuPNV9GrdauNpgdWXLsq",
        "fee": 10,
        "timestamp": 1549365736923,
        "proofs": [ "2q4cTBhDkEDkFxr7iYaHPAv1dzaKo5rDaTxPF5VHryyYTXxTPvN9Wb3YrsDYixKiUPXBnAyXzEcnKPFRCW9xVp4v" ],
        "version": 1,
        "contractId": "2sqPS2VAKmK77FoNakw1VtDTCbDSa7nqh5wTXvJeYGo2",
        "params": 
        [
            {
            "key": "a",
            "type": "integer",
            "value": 1
            },
            {
            "key": "b",
            "type": "integer",
            "value": 100
            }
        ]
    }

.. _ExecutedContractTransaction:

105. ExecutedContractTransaction
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10

   type             ,+      ,+      ,Byte
   id               ,+      ,       ,Byte
   sender           ,+      ,       ,PublicKeyAccount
   senderPublicKey  ,+      ,+      ,PublicKeyAccount
   fee              ,+      ,       ,Long
   timestamp        ,+      ,+      ,Long
   proofs           ,+      ,+      ,List[ByteStr]
   version          ,+      ,+      ,Byte
   tx               ,+      ,+      ,ExecutableTransaction
   results          ,+      ,+      ,List[DataEntry[_]]
   height           ,+      ,       ,

**Broadcasted JSON**

.. code:: js

    { 
        "type": 105, 
        "id": "38GmSVC5s8Sjeybzfe9RQ6p1Mb6ajb8LYJDcep8G8Umj", 
        "sender": "3N3YTj1tNwn8XUJ8ptGKbPuEFNa9GFnhqew", 
        "senderPublicKey": "3kW7vy6nPC59BXM67n5N56rhhAv38Dws5skqDsjMVT2M", 
        "fee": 500000, 
        "timestamp": 1550591780234, 
        "proofs": [ "5whBipAWQgFvm3myNZe6GDd9Ky8199C9qNxLBHqDNmVAUJW9gLf7t9LBQDi68CKT57dzmnPJpJkrwKh2HBSwUer6" ], 
        "version": 1, 
        "tx": 
        { 
            "type": 103,
            "id": "ULcq9R7PvUB2yPMrmBdxoTi3bcRmQPT3JDLLLZVj4Ky", 
            "sender": "3N3YTj1tNwn8XUJ8ptGKbPuEFNa9GFnhqew", 
            "senderPublicKey": "3kW7vy6nPC59BXM67n5N56rhhAv38Dws5skqDsjMVT2M", 
            "fee": 500000, 
            "timestamp": 1550591678479, 
            "proofs": [ "yecRFZm9iBLyDy93bDVaNo1PR5Qkkic7196GAgUt9TNH1cnQphq4yGQQ8Fxj4BYA4TaqYVw5qxtWzGMPQyVeKYv" ], 
            "version": 1, 
            "image": "localhost:5000/lshevtsova", 
            "imageHash": "a93c124016b87bbbf1c1deff9638c0f9393d31289d824401d280f85098d154f7", 
            "params": [] 
        }, 
        "results": [], 
        "height": 1619 
    }

.. _DisableContractTransaction:

106. DisableContractTransaction
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","JSON to sign","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10, 10

   type             ,+      ,+      ,+      ,Byte
   id               ,       ,+      ,       ,Byte
   sender           ,+      ,+      ,       ,PublicKeyAccount
   senderPublicKey  ,       ,+      ,+      ,PublicKeyAccount
   fee              ,+      ,+      ,+      ,Long
   timestamp        ,+ (opt),+      ,+      ,Long
   proofs           ,       ,+      ,+      ,List[ByteStr]
   version          ,       ,+      ,+      ,Byte
   contractId       ,+      ,+      ,+      ,ByteStr
   height           ,       ,+      ,       ,

**JSON для вызова метода sign**

.. code:: js

    {
        "sender":"3N3YTj1tNwn8XUJ8ptGKbPuEFNa9GFnhqew",
        "contractId":"Fz3wqAWWcPMT4M1q6H7crLKtToFJvbeLSvqjaU4ZwMpg",
        "fee":500000,
        "timestamp":1549474811381,
        "type":106
    }

**Broadcasted JSON**

.. code:: js

    {
    "type": 106,
    "id": "8Nw34YbosEVhCx18pd81HqYac4C2pGjyLKck8NhSoGYH",
    "sender": "3N3YTj1tNwn8XUJ8ptGKbPuEFNa9GFnhqew",
    "senderPublicKey": "3kW7vy6nPC59BXM67n5N56rhhAv38Dws5skqDsjMVT2M",
    "fee": 500000,
    "timestamp": 1549474811381,
    "proofs": [ "5GqPQkuRvG6LPXgPoCr9FogAdmhAaMbyFb5UfjQPUKdSc6BLuQSz75LAWix1ok2Z6PC5ezPpjqzqnr15i3RQmaEc" ],
    "version": 1,
    "contractId": "Fz3wqAWWcPMT4M1q6H7crLKtToFJvbeLSvqjaU4ZwMpg",
    "height": 1632 
    }


.. _GenesisRegisterNodeTransaction:

110. GenesisRegisterNodeTransaction
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10

   type             ,+      ,+      ,Byte
   id               ,+      ,       ,Byte
   fee              ,+      ,       ,Long
   timestamp        ,+      ,+      ,Long
   signature        ,+      ,       ,Bytes
   version          ,       ,+      ,Byte
   targetPubKey     ,+      ,+      ,
   height           ,+      ,       ,

.. _RegisterNodeTransaction:

111. RegisterNodeTransaction
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","JSON to sign","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10, 10

   type             ,+      ,+      ,+      ,Byte
   id               ,       ,+      ,       ,Byte
   sender           ,+      ,+      ,       ,PublicKeyAccount
   senderPublicKey  ,       ,+      ,+      ,PublicKeyAccount
   fee              ,+      ,+      ,       ,Long
   timestamp        ,+ (opt),+      ,+      ,Long
   proofs           ,       ,+      ,+      ,List[ByteStr]
   version          ,       ,       ,+      ,Byte
   targetPubKey     ,+      ,+      ,+      ,PublicKeyAccount
   nodeName         ,+      ,+      ,+      ,String
   opType           ,+      ,+      ,+      ,
   height           ,       ,+      ,       ,

**JSON для вызова метода sign**

.. code:: js

    {
    "type": 111,
    "opType": "add",
    "sender":"3HYW75PpAeVukmbYo9PQ3mzSHdKUgEytUUz",
    "targetPubKey": "apgJP9atQccdBPAgJPwH3NBVqYXrapgJP9atQccdBPAgJPwHapgJP9atQccdBPAgJPwHDKkh6A8",
    "nodeName": "Node #1",
    "fee": 500000,
    "timestamp": 1111111111
    }

.. _CreatePolicyTransaction:

112. CreatePolicyTransaction
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","JSON to sign","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10, 10

   type             ,+      ,+      ,+      ,Byte
   id               ,       ,+      ,+      ,Byte
   sender           ,+      ,+      ,+      ,PublicKeyAccount
   senderPublicKey  ,       ,+      ,+      ,PublicKeyAccount
   policyName       ,+      ,+      ,+      ,String
   recipients       ,+      ,+      ,+      ,Array[Byte]
   owners           ,+      ,+      ,+      ,Array[Byte]
   fee              ,+      ,+      ,+      ,Long
   timestamp        ,+ (opt),+      ,+      ,Long
   proofs           ,       ,+      ,+      ,List[ByteStr]
   height           ,       ,       ,+      ,Long
   description      ,+      ,+      ,+      ,String
   password         ,+ (opt),       ,       ,String

**JSON для вызова метода sign**

.. code:: js

     {
      "sender": "3NkZd8Xd4KsuPiNVsuphRNCZE3SqJycqv8d",
      "policyName": "Policy# 7777",
      "password":"sfgKYBFCF@#$fsdf()*%",
      "recipients": [
        "3NkZd8Xd4KsuPiNVsuphRNCZE3SqJycqv8d",
        "3NotQaBygbSvYZW4ftJ2ZwLXex4rTHY1Qzn",
        "3Nm84ERiJqKfuqSYxzMAhaJXdj2ugA7Ve7T",
	    "3NtNJV44wyxRXv2jyW3yXLxjJxvY1vR88TF",
	    "3NxAooHUoLsAQvxBSqjE91WK3LwWGjiiCxx"
      ],
      "fee": 15000000,
      "description": "Buy bitcoin by 1c",
      "owners": [
        "3NkZd8Xd4KsuPiNVsuphRNCZE3SqJycqv8d",
        "3NotQaBygbSvYZW4ftJ2ZwLXex4rTHY1Qzn",
        "3Nm84ERiJqKfuqSYxzMAhaJXdj2ugA7Ve7T"
      ],
      "type": 112
    }

.. _UpdatePolicyTransaction:

113. UpdatePolicyTransaction
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
   :header: "Field","JSON to sign","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10, 10

   type             ,+      ,+      ,+      ,Byte
   id               ,       ,+      ,+      ,Byte
   sender           ,+      ,+      ,+      ,PublicKeyAccount
   senderPublicKey  ,       ,+      ,+      ,PublicKeyAccount
   policyName       ,+      ,+      ,+      ,String
   recipients       ,+      ,+      ,+      ,Array[Byte]
   owners           ,+      ,+      ,+      ,Array[Byte]
   fee              ,+      ,+      ,+      ,Long
   timestamp        ,+ (opt),+      ,+      ,Long
   proofs           ,       ,+      ,+      ,List[ByteStr]
   height           ,       ,       ,+      ,Long
   opType           ,+      ,+      ,+      ,
   description      ,+      ,+      ,+      ,String
   password         ,+ (opt),       ,       ,String

**JSON для вызова метода sign**

.. code:: js

   {
     "policyId": "7wphGbhqbmUgzuN5wzgqwqtViTiMdFezSa11fxRV58Lm",
     "password":"sfgKYBFCF@#$fsdf()*%",
     "sender": "3NkZd8Xd4KsuPiNVsuphRNCZE3SqJycqv8d",
     "proofs": [],
     "recipients": [
     "3NkZd8Xd4KsuPiNVsuphRNCZE3SqJycqv8d",
     "3NotQaBygbSvYZW4ftJ2ZwLXex4rTHY1Qzn",
     "3Nm84ERiJqKfuqSYxzMAhaJXdj2ugA7Ve7T",
	 "3NtNJV44wyxRXv2jyW3yXLxjJxvY1vR88TF",
	 "3NxAooHUoLsAQvxBSqjE91WK3LwWGjiiCxx",
	 "3NwJfjG5RpaDfxEhkwXgwD7oX21NMFCxJHL"
      ],
      "fee": 15000000,
      "opType": "add",
     "owners": [
       "3NkZd8Xd4KsuPiNVsuphRNCZE3SqJycqv8d",
       "3NotQaBygbSvYZW4ftJ2ZwLXex4rTHY1Qzn",
       "3Nm84ERiJqKfuqSYxzMAhaJXdj2ugA7Ve7T"
     ],
     "type": 113,
    }

.. _PolicyDataHashTransaction:

114. PolicyDataHashTransaction
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Когда пользователь отправляет конфиденциальные данные в сеть при помощи :ref:`POST /privacy/sendData <privacy-api>`, нода автоматически формирует транзакцию 114.

.. csv-table::
   :header: "Field","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10

   type             ,+      ,+      ,Byte
   id               ,+      ,+      ,Byte
   sender           ,+      ,+      ,PublicKeyAccount
   senderPublicKey  ,+      ,+      ,PublicKeyAccount
   policyId         ,+      ,+      ,String
   dataHash         ,+      ,+      ,String
   fee              ,+      ,+      ,Long
   timestamp        ,+      ,+      ,Long
   proofs           ,+      ,+      ,List[ByteStr]
   height           ,       ,+      ,Long

..  .. _SponsorFeeTransaction:
  14. SponsorFeeTransaction
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  .. csv-table::
   :header: "Field","JSON to sign","Broadcasted JSON","Blockchain state","Type"
   :widths: 10, 10, 10, 10, 10
   type                ,+       ,+      ,+      ,Byte
   id                  ,        ,+      ,       ,Byte
   sender              ,+       ,+      ,       ,PublicKeyAccount
   senderPublicKey     ,        ,+      ,+      ,PublicKeyAccount
   fee                 ,+       ,+      ,+      ,Long
   timestamp           ,+ (opt) ,+      ,+      ,Long
   proofs              ,        ,+      ,+      ,List[ByteStr]
   version             ,+       ,+      ,+      ,Byte
   assetId             ,+       ,+      ,       ,ByteStr
   minSponsorAssetFee  ,+ (opt) ,       ,+      ,
   password            ,+ (opt) ,       ,       ,String
   height              ,        ,+      ,       ,
.. .. _UpdateContractTransaction:
    107. UpdateContractTransaction
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
