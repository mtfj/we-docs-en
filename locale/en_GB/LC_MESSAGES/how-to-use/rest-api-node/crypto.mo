��          t      �                 /     M     T     i     �     �  �   !  �   �  x   �  o  )     �     �     �     �     �     �  V     m   i  v   �  H   N                              
          	                    **Запрос метода** **Пример ответа** Crypto POST /crypto/decrypt POST /crypto/encryptCommon POST /crypto/encryptSeparate Правила формирования запросов к ноде приведены в разделе :ref:`rest-api-node`. Расшифровывает данные. Расшифровка доступна в случае, если ключ получателя сообщения находится в keystore ноды. Шифрует данные единым ключом CEK для всех получателей, CEK оборачивается уникальными KEK для каждого получателя. Шифрует текст отдельно для каждого получателя уникальным ключом. Project-Id-Version: Vostok 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-07-22 10:56+0300
PO-Revision-Date: 2019-07-22 11:15+0300
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
Plural-Forms: nplurals=2; plural=(n != 1);
Last-Translator: 
Language-Team: 
Language: en
X-Generator: Poedit 2.2.1
 **Method Query** **Method Response** Crypto POST /crypto/decrypt POST /crypto/encryptCommon POST /crypto/encryptSeparate The rules for generating queries to the node are given in module :ref:`rest-api-node`. Decrypts the data. The decryption is available only if the message recipient's key is in the node's keystore. Encrypts the data with a single CEK key for all recipients and the CEK wraps into a unique KEK for the each recipient. Encrypts the text separately for the each recipient with the unique key. 