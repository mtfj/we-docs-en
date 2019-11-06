
.. _config-examples-partnernet:

Примеры конфигурационных фалов для сети "Waves Enterprise Partnernet"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Описание полной конфигурации ноды вы можете почитать :ref:`здесь <configuration>`.

Пример конфигурационного файла ``accounts.conf``
"""""""""""""""""""""""""""""""""""""""""""""""""""""

::

    // accounts.conf listing

    accounts-generator {
      waves-crypto = yes
      chain-id = P
      amount = 1
      wallet = ${user.home}"/nodeName/keystore.dat"
      wallet-password = "some string as password"
      reload-node-wallet {
        enabled = false
        url = "http://localhost:6869/utils/reload-wallet"
      }
    }

Параметр ``chain-id`` содержит идентификационный байт сети, для сети "Waves Enterprise Partnernet" это значение ``P``. Если хотите использовать ГОСТ-криптографию, установите значение ``no`` параметра ``waves-crypto`` во всех конфигурационных файлах. Также перед конфигурацией ноды установите `CryptoPro JCP 2.0.40035 <https://www.cryptopro.ru/sites/default/files/private/jcp/jcp-2.0.40035.zip>`_. Полная инструкция по установке представлена :ref:`здесь <install-node>`.

Пример конфигурационного файла ``api-key-hash``
"""""""""""""""""""""""""""""""""""""""""""""""""""""

  ::

    // api-key-hash.conf listing

    apikeyhash-generator {
      waves-crypto = yes
      api-key = "some string"
    }

Пример конфигурационного файла ноды
""""""""""""""""""""""""""""""""""""""""

  ::

      node {
      waves-crypto = yes
      # Blockchain settings
      blockchain {
      type: CUSTOM
      consensus.type = PoS
      custom {
      address-scheme-character: "P"
      functionality {
        feature-check-blocks-period = 1
        blocks-for-feature-activation = 1
        pre-activated-features { 1 = 0, 2 = 0, 3 = 0, 4 = 0, 5 = 0, 6 = 0, 7 = 0, 8 = 0, 9 = 0, 10 = 0 }
        double-features-periods-after-height = 100000000
      }
      genesis {
        average-block-delay: 60s
        initial-base-target: 153722867
        timestamp: 1552467772740
        block-timestamp: 1552467772740
        initial-balance: 1625000000000000
        genesis-public-key-base-58: "8RbU8qKWWxLuVk49LgeE39y83LUTVp1zHEJwMM7zKaMC"
        signature: "2dKzduxL9bdWz1B9wBPnGALfowrPDSidEoGAQEoRogGuBB4sQanCr4JySXvWoAmpu1EmcU8MsCQTL3TaSMnFxG2U"
        transactions = [
          { recipient: "3LWg4n6VmN6DKBSwGF1hwnaCzXdjMkQCFrn", amount: 1250000000000000 },
          { recipient: "3LPPZNhakdm9ZPiGShNvWGCshFqsQXFjUQ1", amount: 300000000000000 },
          { recipient: "3LEpXfh7XmCRias92swo6LUJqyo9MA7SaFc", amount: 75000000000000 }
        ]
        network-participants = [
          {public-key: "CaFrRzAv7B3DrECR4i2Los1DwxHj4yKAEKCT3zEke9U4", roles: [permissioner, miner, connection_manager]},
          {public-key: "Vxb6LQ8Qt9Afs6VJuyiMbMN5qM2pm1EEcWdoZo3WmkN", roles: [miner, permissioner]},
          {public-key: "FmzyByBePwbKDjSdnYjwF9G12zGrQc7Gcr8WvQ5ybejC", roles: [miner]}
        ]
      }
      }
      }
      # Application logging level. Could be DEBUG | INFO | WARN | ERROR. Default value is INFO.
      logging-level = DEBUG
      # P2P Network settings
      network {
      # Network address
      bind-address = "0.0.0.0"
      # Port number
      port = 6864
      known-peers = [
      "node0-partnernet.wavesenterprise.com:6864",
      "node1-partnernet.wavesenterprise.com:6864",
      "node2-partnernet.wavesenterprise.com:6864"
      ]
      # Node name to send during handshake. Comment this string out to set random node name.
      # String with IP address and port to send as external address during handshake. Could be set automatically if uPnP is enabled.
      declared-address = "0.0.0.0:6864"
      }
      wallet {
      file = "" #FILL
      password = "" #FILL
      }
      # Privacy network settings: node owner address is used to sign handshakes
      owner-address = "" #FILL
  
   
      # Matcher settings
      matcher.enable = no
      # Node's REST API settings
      rest-api {
       enable = yes
       bind-address = "0.0.0.0"
       port = 6862
       api-key-hash = "" #api-key for all api #FILL
       privacy-api-key-hash = ""   #api-key for SendData api #FILL
      }
      # New blocks generator settings
      miner {
       enable = yes
       interval-after-last-block-then-generation-is-allowed = 15d
       quorum = 1
       minimal-block-generation-offset = 200ms
      }
      # Anchoring
      scheduler-service.enable = no
  
      # For docker smart-contracts
      docker-engine {
      enable = yes
      # Optional connection string to docker host
      # docker-host = "unix:///var/run/docker.sock"
      # Optional string to node REST API if we use remote docker host
      # node-rest-api = "https://clinton.weservices.com/node-0"
      execution-limits {
       timeout = 10s
       memory = 512
       memory-swap = 512
      }
      allow-net-access = yes
      }
  
      privacy {
      # DB connection config
      storage {
      url = "" #FILL insert DB connection string here, example "jdbc:postgresql://db_hostname:5432/_____?user=_____________&password=____"
      driver = "org.postgresql.Driver"
      profile = "slick.jdbc.PostgresProfile$"
      connectionPool = HikariCP
      connectionTimeout = 5000
      connectionTestQuery = "SELECT 1"
      queueSize = 10000
      numThreads = 10
      schema = "public"
      migration-dir = "db/migration"
      }
      }
      }







