��          �            x     y     �     �     �     �  	   �     �     �     �     �  �   �  3  �          !     5  o  9     �     �     �     �     �  	   �     �     �     �        �     !  �     �     �     	                                              
                  	               **Пример запроса** **Пример ответа** 1 2 3 CAdES-BES CAdES-T CAdES-X Long Type 1 PKI POST /pki/verify В PKI используются форматы ЭП, представленные в таблице ниже. Номер формата ЭП из таблицы соответствует значению поля ``sigtype``. Метод выполняет проверку отсоединённой ЭП для данных, переданных в запросе. Поле ``extendedKeyUsageList`` является опциональным и может содержать массив значений OID (Объектный идентификатор) для определения области действия сертификата. Проверку сертификата может осуществлять любая нода, имеющая параметры запроса. Формат ЭП Форматы ЭП № Project-Id-Version: Vostok 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-09-18 12:44+0300
PO-Revision-Date: 2019-09-18 12:56+0300
Last-Translator: 
Language: en
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.7.0
X-Generator: Poedit 2.2.1
 **Request example** **Answer example** 1 2 3 CAdES-BES CAdES-T CAdES-X Long Type 1 PKI POST /pki/verify Digital signature formats listed in the table below is used in PKI. The digital signature number in the table is consistent for the ``sigType`` field value. This method checks the detached digital signature for the sent data. The ``extendedKeyUsageList`` is optional and may contain an array of object identifiers - OID. It is useful for the determination of the scope of the certificate. Any node with query parameters can check the certificate. Digital signature format Digital signature formats # 