��    _                      	       "   6      Y  $   z  #   �     �     �     �     	     "	     :	     G	     Z	     g	     w	     �	     �	  %   �	  &   �	     
     ;
  #   Y
     }
     �
     �
     �
     �
     �
     �
     �
     �
     �
     �
     �
     �
     �
     �
     �
     �
     �
     �
     �
     �
     �
     �
     �
  ;   �
  ?     <   Z     �  A   �  C   �  J   3     ~  ,   �  @   �  <         A     b  <   �     �     �  1   �  ?   �     =     Y  "   w     �     �     �     �     �     �     �          .     M     U     e  i   r  g   �  _   D  �   �  �   ?  �   �  W   ~  E   �  U        r  �   �  b   j     �     �  r  �     c     q  "   �      �  $   �  #   �          :     P     f     |     �     �     �     �     �     �     �                6     G     [     n     q     u     y     }     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �  ;   �  ?     <   K     �  A   �  C   �  J   $     o  ,   �  @   �  <   �      2     S  <   q     �     �  1   �  ?   �     .     J  "   h     �     �     �     �     �     �     �               >     F     V  8   c  8   �  ;   �  Q     |   c  h   �  2   I   (   |   )   �   �   �   �   p!  2   �!     /"     @"     1       N   O   @   \   4       3         X      A              ;      [      L           =                     '   Q       _   E      P       Z   !   "   #   $             G   7   >   %   *   +   ,   -   .   /       F              	   5       B                      &      (               0   9   T       I   H   J   D       ]      ?   6      2   
                      8          <   )   V   ^   U                M       W   S           Y   C       R      :      K           **10. Alias** **102. PermissionTransaction** **103. CreateContractTransaction** **104. CallContractTransaction** **105. ExecutedContractTransaction** **106. DisableContractTransaction** **110. GenesisRegisterNode** **111. RegisterNode** **112. CreatePolicy** **113. UpdatePolicy** **114. PolicyDataHash** **12. Data** **13. Set Script** **3. Issue** **4. Transfer** **Запрос метода** **Ответ метода** **Ответ метода:** **Параметры запроса** **Параметры запроса:** **Пример запроса** **Пример ответа** **Примеры запросов** 10 101 102 103 104 105 106 11 110 111 112 113 114 12 13 14 3 4 5 6 7 8 9 :ref:`Alias <tx-alias>` :ref:`CallContractTransaction <tx-CallContractTransaction>` :ref:`CreateContractTransaction <tx-CreateContractTransaction>` :ref:`CreatePolicy Transaction <tx-CreatePolicyTransaction>` :ref:`Data <tx-data>` :ref:`DisableContractTransaction <tx-DisableContractTransaction>` :ref:`ExecutedContractTransaction <tx-ExecutedContractTransaction>` :ref:`GenesisRegisterNode Transaction <tx-GenesisRegisterNodeTransaction>` :ref:`Issue <tx-issue>` :ref:`PermissionTransaction <tx-permission>` :ref:`PolicyDataHash Transaction <tx-PolicyDataHashTransaction>` :ref:`RegisterNode Transaction <tx-RegisterNodeTransaction>` :ref:`Set Script <tx-setscript>` :ref:`Transfer <tx-transfer>` :ref:`UpdatePolicy Transaction <tx-UpdatePolicyTransaction>` Burn Exchange GET /transactions/address/{address}/limit/{limit} GET /transactions/address/{address}/limit/{limit}?after={after} GET /transactions/info/{id} GET /transactions/unconfirmed GET /transactions/unconfirmed/size GET /unconfirmed/info/{id} ID Lease Lease Cancel Mass Transfer POST /transactions/broadcast POST /transactions/calculateFee POST /transactions/sign Permission (for Genesis block) Reissue Set Sponsorship Transactions Возвращает все неподтвержденные транзакции из utx-pool ноды. Возвращает количество транзакций, находящихся в UTX-пуле. Возвращает последние {limit} транзакций с адреса {address}. Возвращает список транзакций, в которых в качестве одного из адресатов указан {address}. Для подписания запросов ключом из keystore ноды требуется обязательное указание пароля в поле ``password``. За один запрос через API **/transactions/...** Data service вовращает не более 500 транзакций. Запрос сведений по транзакции из UTX-пула по ее ID. Запрос сведений по транзакции по ее ID. Отправляет подписанную транзакцию в блокчейн. Подписывает транзакцию закрытым ключом отправителя, сохраненным в keystore ноды. После подписания ответ метода должен быть подан на вход метода :ref:`Broadcast <broadcast>`. Правила формирования запросов к ноде приведены в разделе :ref:`rest-api-node`. Посмотреть :ref:`примеры <transaction-example>` транзакций. Расчитывет размер комиссии по переданной транзакции. Тип транзакции или Project-Id-Version: Vostok master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-05-22 14:18+0300
PO-Revision-Date: 2019-05-22 15:21+0300
Last-Translator: 
Language: en
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
X-Generator: Poedit 2.2.1
 **10. Alias** **102. PermissionTransaction** **103. CreateContractTransaction** **104. CallContractTransaction** **105. ExecutedContractTransaction** **106. DisableContractTransaction** **110. GenesisRegisterNode** **111. RegisterNode** **112. CreatePolicy** **113. UpdatePolicy** **114. PolicyDataHash** **12. Data** **13. Set Script** **3. Issue** **4. Transfer** **Method Query** **Method Response** **Method Response:** **Query Parameters** **Query Parameters:** **Sample query** **Sample response** **Sample queries** 10 101 102 103 104 105 106 11 110 111 112 113 114 12 13 14 3 4 5 6 7 8 9 :ref:`Alias <tx-alias>` :ref:`CallContractTransaction <tx-CallContractTransaction>` :ref:`CreateContractTransaction <tx-CreateContractTransaction>` :ref:`CreatePolicy Transaction <tx-CreatePolicyTransaction>` :ref:`Data <tx-data>` :ref:`DisableContractTransaction <tx-DisableContractTransaction>` :ref:`ExecutedContractTransaction <tx-ExecutedContractTransaction>` :ref:`GenesisRegisterNode Transaction <tx-GenesisRegisterNodeTransaction>` :ref:`Issue <tx-issue>` :ref:`PermissionTransaction <tx-permission>` :ref:`PolicyDataHash Transaction <tx-PolicyDataHashTransaction>` :ref:`RegisterNode Transaction <tx-RegisterNodeTransaction>` :ref:`Set Script <tx-setscript>` :ref:`Transfer <tx-transfer>` :ref:`UpdatePolicy Transaction <tx-UpdatePolicyTransaction>` Burn Exchange GET /transactions/address/{address}/limit/{limit} GET /transactions/address/{address}/limit/{limit}?after={after} GET /transactions/info/{id} GET /transactions/unconfirmed GET /transactions/unconfirmed/size GET /unconfirmed/info/{id} ID Lease Lease Cancel Mass Transfer POST /transactions/broadcast POST /transactions/calculateFee POST /transactions/sign Permission (for Genesis block) Reissue Set Sponsorship Transactions Returns all unconfirmed transactions from node utx-pool. Return the number of transactions available in UTX pool. Returns latest {limit} transactions from address {address}. Returns a list of transactions where {address} is specified as one of addressees. It is necessary to enter the password into the ``password`` field in order to sign requests with the key from keystore node. Data service does not return more than 500 records during the one request via API **/transactions/...**. Query transaction details from UTX pool by its ID. Query transaction information by its ID. Sends a signed transaction to blockchain. Signs a transaction with sender's private key stored in node keystore. After signing, method response must be sent to method input :ref:`Broadcast <broadcast>`. The rules for generating node queries are given in module :ref:`rest-api-node`. View :ref:`examples of <transaction-example>` transactions. Calculates fee amount for transferred transaction. Transaction type or 