��          �            x  �  y  �  P  �  �  �   {  �   b  �  I  �   �	  !   �
  �   �
  H  |  n   �     4  �   M  >       G  r  T    �    �  �   �  �   �  �   :  �   �  g   �     >  \   P  �   �  9   O     �  X   �     �  �                            
                                  	                    Base58 — вариант кодирования двоичных данных в виде буквенно-цифрового текста на основе латинского алфавита. Содержит 58 символов, исключены используемые в base64 символы 0, O, I, l, +, / . Применяется для передачи данных в разнородных сетях (транспортное кодирование). Base64 — стандарт кодирования двоичных данных при помощи 64 символов ASCII. Алфавит кодирования содержит латинские символы и цифры A-Z, a-z и 0-9 (62 знака) и 2 служебных символа. Каждые 3 исходных байта кодируются 4 символами (увеличение на ¹⁄₃). Алгоритм хэширования реализован по ГОСТ Р 34.11 2012 "Информационная технология. Криптографическая защита информации. Функция хэширования". Используется функция «Стрибог» с размером блоков выходных данных 256 бит. Алгоритм хэширования реализован последовательным хешированием функциями Blake2b256 и Keccak256. Размер блоков выходных данных 256 бит. Алгоритмы формирования и проверки ЭЦП реализованы на базе эллиптической кривой Curve25519 (ED25519 с ключами X25519). Длина ключей 256 бит. Алгоритмы формирования и проверки ЭЦП реализованы по ГОСТ Р 34.10-2012 "Информационная технология. Криптографическая защита информации. Процессы формирования и проверки электронной цифровой подписи". Длина ключей 256 бит. Все байтовые последовательности перед операциями хеширования или подписания преобразовываются по алгоритму Base58 или Base64. ГОСТ-криптография ГОСТ-криптография - для реализации проектов в государственных структурах и ведомствах; Для обеспечения безопасности в платформе Vostok используются криптографически стойкие алгоритмы, соответствующие требованиям ГОСТ, а также квалифицированные электронные подписи. Использование эллиптической кривой Curve25519 (криптография Waves) Криптография Платформа предоставляет выбор используемой криптографии, которая базируется на одном из стандартов: Предварительная обработка данных Эллиптическая кривая Curve25519 - для проектов, в которых не требуется строгое соответствие ГОСТу (коммерческие компании, организации за пределами РФ). Project-Id-Version: Vostok master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-06-06 16:54+0300
PO-Revision-Date: 2019-06-06 16:55+0300
Last-Translator: 
Language: en
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
X-Generator: Poedit 2.2.1
 BASE58 is a variant of encoding binary data in the form of alphanumeric text based on the Latin alphabet. It contains 58 characters, the characters used in Base64, such as 0, O, I, L, +,/ are excluded. It is used for data transmission in heterogeneous networks (transport coding). Base64 is a binary data encoding standard using 64 ASCII characters. The encoding alphabet contains Latin symbols and numbers A-Z, a-z and 0-9 (62 characters) and 2 service symbols. Every 3 source bytes are encoded with 4 characters (¹ ⁄ ₃ magnification). Hashing algorithm is implemented according to GOST R 34.11 2012 'Information Technology. Cryptographic Protection of Information. Hashing Function'. The Stribog function is used with 256 bits output blocks. The hashing algorithm is implemented by successive hashing functions Blake2b256 and Keccak256. The size of output blocks is 256 bits. EDS generation and verification algorithms are implemented on the basis of elliptical curve Curve25519 (ED25519 with X25519 keys). The key length is 256 bits. EDS generation and verification algorithms are implemented according to GOST R 34.10-2012 'Information Technology. Cryptographic Protection of Information. Electronic Digital Signature Generation and Verification Processes'. The key length is 256 bits. All byte sequences before hashing or signing operations are converted using Base58 or Base64 algorithm. GOST-Cryptography GOST-cryptography - for implementation of projects in government structures and departments; To ensure security, the Vostok platform uses cryptographically resistant algorithms complying with GOST requirements, as well as qualified electronic signatures. Using an elliptical curve Curve25519 (Waves cryptography) Cryptography The platform provides a choice of cryptography to be used based on one of the standards: Data Pre-processing Elliptical curve Curve25519 - for projects which do not require strict compliance with GOST (commercial companies, organizations outside the Russian Federation). 