��    ]           �      �     �     �  "         9  $   Z  #        �     �     �     �     	     	     '	     :	     G	     W	     u	     �	  %   �	  &   �	     �	     
  #   9
     ]
     `
     d
     h
     l
     p
     t
     x
     {
     
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
  ?   �
  <   :     w  A   �  C   �  J        ^  ,   v  @   �  <   �      !     B  <   `     �     �  1   �     �     �  "        :     U     X     ^     k     y     �     �     �     �     �       i     g   |  _   �  �   D  �   �  W   �  E   �  U   !     w  �   �  b   o     �     �  r  �     h     v  "   �      �  $   �  #   �     "     ?     U     k     �     �     �     �     �     �     �     �          %     ;     L     `     s     v     z     ~     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �  ;   �  ?     <   P     �  A   �  C   �  J   )     t  ,   �  @   �  <   �      7     X  <   v     �     �  1   �     �       "   -     P     k     n     t     �     �     �     �     �                 8   (  8   a  ;   �  |   �  h   S  2   �  (   �  )     �   B  �   �  2   o      �      �      1       M   N   @   Z   4       3                A              ;      Y      K           =                     '   P       ]   D      O       X   !   "   #   $             F   7   >   %   *   +   ,   -   .   /       E              	   5       V                      &      (               0   9   S       H   G   I   C       [      ?   6      2   
                      8          <   )   T   \                    L       U   R           W   B       Q      :      J           **10. Alias** **102. PermissionTransaction** **103. CreateContractTransaction** **104. CallContractTransaction** **105. ExecutedContractTransaction** **106. DisableContractTransaction** **110. GenesisRegisterNode** **111. RegisterNode** **112. CreatePolicy** **113. UpdatePolicy** **114. PolicyDataHash** **12. Data** **13. Set Script** **3. Issue** **4. Transfer** **Запрос метода** **Ответ метода** **Ответ метода:** **Параметры запроса** **Параметры запроса:** **Пример запроса** **Пример ответа** **Примеры запросов** 10 101 102 103 104 105 106 11 110 111 112 113 114 12 13 14 3 4 5 6 7 8 9 :ref:`Alias <tx-alias>` :ref:`CallContractTransaction <tx-CallContractTransaction>` :ref:`CreateContractTransaction <tx-CreateContractTransaction>` :ref:`CreatePolicy Transaction <tx-CreatePolicyTransaction>` :ref:`Data <tx-data>` :ref:`DisableContractTransaction <tx-DisableContractTransaction>` :ref:`ExecutedContractTransaction <tx-ExecutedContractTransaction>` :ref:`GenesisRegisterNode Transaction <tx-GenesisRegisterNodeTransaction>` :ref:`Issue <tx-issue>` :ref:`PermissionTransaction <tx-permission>` :ref:`PolicyDataHash Transaction <tx-PolicyDataHashTransaction>` :ref:`RegisterNode Transaction <tx-RegisterNodeTransaction>` :ref:`Set Script <tx-setscript>` :ref:`Transfer <tx-transfer>` :ref:`UpdatePolicy Transaction <tx-UpdatePolicyTransaction>` Burn Exchange GET /transactions/address/{address}/limit/{limit} GET /transactions/info/{id} GET /transactions/unconfirmed GET /transactions/unconfirmed/size GET /unconfirmed/info/{id} ID Lease Lease Cancel Mass Transfer POST /transactions/broadcast POST /transactions/calculateFee POST /transactions/sign Permission (for Genesis block) Reissue Set Sponsorship Transactions Возвращает все неподтвержденные транзакции из utx-pool ноды. Возвращает количество транзакций, находящихся в UTX-пуле. Возвращает последние {limit} транзакций с адреса {address}. Для подписания запросов ключом из keystore ноды требуется обязательное указание пароля в поле ``password``. За один запрос через API **/transactions/...** Data service вовращает не более 500 транзакций. Запрос сведений по транзакции из UTX-пула по ее ID. Запрос сведений по транзакции по ее ID. Отправляет подписанную транзакцию в блокчейн. Подписывает транзакцию закрытым ключом отправителя, сохраненным в keystore ноды. После подписания ответ метода должен быть подан на вход метода :ref:`Broadcast <broadcast>`. Правила формирования запросов к ноде приведены в разделе :ref:`rest-api-node`. Посмотреть :ref:`примеры <transaction-example>` транзакций. Расчитывет размер комиссии по переданной транзакции. Тип транзакции или Project-Id-Version: Vostok master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-05-27 17:31+0300
PO-Revision-Date: 2019-05-28 10:17+0300
Last-Translator: 
Language: en
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
X-Generator: Poedit 2.2.1
 **10. Alias** **102. PermissionTransaction** **103. CreateContractTransaction** **104. CallContractTransaction** **105. ExecutedContractTransaction** **106. DisableContractTransaction** **110. GenesisRegisterNode** **111. RegisterNode** **112. CreatePolicy** **113. UpdatePolicy** **114. PolicyDataHash** **12. Data** **13. Set Script** **3. Issue** **4. Transfer** **Method Query** **Method Response** **Method Response:** **Query Parameters** **Query Parameters:** **Sample query** **Sample response** **Sample queries** 10 101 102 103 104 105 106 11 110 111 112 113 114 12 13 14 3 4 5 6 7 8 9 :ref:`Alias <tx-alias>` :ref:`CallContractTransaction <tx-CallContractTransaction>` :ref:`CreateContractTransaction <tx-CreateContractTransaction>` :ref:`CreatePolicy Transaction <tx-CreatePolicyTransaction>` :ref:`Data <tx-data>` :ref:`DisableContractTransaction <tx-DisableContractTransaction>` :ref:`ExecutedContractTransaction <tx-ExecutedContractTransaction>` :ref:`GenesisRegisterNode Transaction <tx-GenesisRegisterNodeTransaction>` :ref:`Issue <tx-issue>` :ref:`PermissionTransaction <tx-permission>` :ref:`PolicyDataHash Transaction <tx-PolicyDataHashTransaction>` :ref:`RegisterNode Transaction <tx-RegisterNodeTransaction>` :ref:`Set Script <tx-setscript>` :ref:`Transfer <tx-transfer>` :ref:`UpdatePolicy Transaction <tx-UpdatePolicyTransaction>` Burn Exchange GET /transactions/address/{address}/limit/{limit} GET /transactions/info/{id} GET /transactions/unconfirmed GET /transactions/unconfirmed/size GET /unconfirmed/info/{id} ID Lease Lease Cancel Mass Transfer POST /transactions/broadcast POST /transactions/calculateFee POST /transactions/sign Permission (for Genesis block) Reissue Set Sponsorship Transactions Returns all unconfirmed transactions from node utx-pool. Return the number of transactions available in UTX pool. Returns latest {limit} transactions from address {address}. It is necessary to enter the password into the ``password`` field in order to sign requests with the key from keystore node. Data service does not return more than 500 records during the one request via API **/transactions/...**. Query transaction details from UTX pool by its ID. Query transaction information by its ID. Sends a signed transaction to blockchain. Signs a transaction with sender's private key stored in node keystore. After signing, method response must be sent to method input :ref:`Broadcast <broadcast>`. The rules for generating node queries are given in module :ref:`rest-api-node`. View :ref:`examples of <transaction-example>` transactions. Calculates fee amount for transferred transaction. Transaction type or 