
.. _config-examples:

Примеры конфигурационных фалов для сети "Waves Enterprise Mainnet"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Описание полной конфигурации ноды вы можете почитать :ref:`здесь <configuration>`.

Пример конфигурационного файла ``accounts.conf``
""""""""""""""""""""""""""""""""""""""""""""""""""""

::

    // accounts.conf listing

    accounts-generator {
      waves-crypto = yes
      chain-id = V
      amount = 1
      wallet = ${user.home}"/nodeName/keystore.dat"
      wallet-password = "some string as password"
      reload-node-wallet {
        enabled = false
        url = "http://localhost:6869/utils/reload-wallet"
      }
    }

Параметр ``chain-id`` содержит идентификационный байт сети, для сети "Waves Enterprise Mainnet" это значение ``V``.

Пример конфигурационного файла ``api-key-hash``
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

  ::

    // api-key-hash.conf listing

    apikeyhash-generator {
      waves-crypto = no
      api-key = "some string"
    }

Пример конфигурационного файла ноды
""""""""""""""""""""""""""""""""""""""""

  ::

    node {
    # Type of cryptography
    waves-crypto = yes

    # Node owner address
    owner-address = ""

    # Node "home" and data directories to store the state
    # directory = ${user.home}"/nodeName"
    # data-directory = ${nodeName.directory}"/data"
  
    # Settings for Privacy Data Exchange
    # Uncomment and fill to enable
    #  privacy {
    #    storage {
    #      url = "jdbc:postgresql://"${POSTGRES_ADDRESS}":"${POSTGRES_PORT}"/"${POSTGRES_DB}
    #      driver = "org.postgresql.Driver"
    #      profile = "slick.jdbc.PostgresProfile$"
    #
    #      user = ${POSTGRES_USER}
    #      password = ${POSTGRES_PASSWORD}
    #      connectionPool = HikariCP
    #      connectionTimeout = 5000
    #      connectionTestQuery = "SELECT 1"
    #      queueSize = 10000
    #      numThreads = 20
    #      schema = "public"
    #      migration-dir = "db/migration"
    #    }
    #  }
  
    # Blockchain settings
    # Mainnet blockchain settings (should match on all nodes for consistency)
    blockchain {
    type = CUSTOM
    consensus.type = pos

    custom {
    address-scheme-character = "V"
    functionality {
        feature-check-blocks-period = 15000
        blocks-for-feature-activation = 10000
        pre-activated-features = {
          2 = 0
          3 = 0
          4 = 0
          5 = 0
          6 = 0
          7 = 0
          9 = 0
          10 = 0
        }
      }

      # Mainnet genesis settings
      genesis {
        average-block-delay: 40s
        initial-base-target: 10000000000
        block-timestamp: 1559320391040
        initial-balance: 100000000000000000
        genesis-public-key-base-58: "D7tDsKd7DQ7H9m6fPRyk1GsNQxjAQXsETtuVgqSaaXDs"
        signature: "P7kwe3dWSWgUYL8FZu5kccPfPzoxGgLuKjTCkeapTxoDbdpo6EtcqndXoSjqKUUVS67xXfogGmaNroLgNocWcBg"
        transactions = [
          {recipient: "3Nnq14SGqeYETSd1SJ6z8LsgBRYB2ya1yRC", amount: 99990000000000000}
          {recipient: "3Nrysx7J1TN6vB1eYdHgug2nfxA7um918zy", amount: 1000000000000},
          {recipient: "3NuiCzDhmeSKL5QFa5sqZzzm9zTL4max4fZ", amount: 1500000000000},
          {recipient: "3NqaDWdEgGsqJj1HjznDQMtk6v5KVxmRceg", amount: 2000000000000},
          {recipient: "3Nckru7f8Y8vS3PXGyy5iwoheRrKvqW5u8x", amount: 2500000000000},
          {recipient: "3NmHrYoC8S2SUosy6UJp47bBwq2Cr2X6Yq1", amount: 3000000000000}
          
        ]
        network-participants = [
          {public-key: "GasRtAUXMhifrUUmgU66rRZPii68tE4QxdQmtCcrV3xL", roles: [permissioner, connection_manager]},
          {public-key: "Er29kgV3yeumEAtPxBAk5fXPERYYa1wmAcPgzWw4mxHi", roles: [miner]},
          {public-key: "9eoVBycnr2m8bgu1WvYySoFJ1QqFLPAMzhnmErp291f6", roles: [miner]},
          {public-key: "9ngXJ3d1XSQgXcYbgZm2wH4QHS8CTc5mtf9M4XDoz5db", roles: [miner]},
          {public-key: "2cvrBT6jePt6mjinE1EdLLymoqRHFhWwepM3E5gRuSeL", roles: [miner]},
          {public-key: "87ZVwBTeBiKYdF2Q5hxGazwhR1pKy9VYgun8rLFMEmoW", roles: [miner]}
        ]
      }

      fees {
        genesis = 0
        genesis-permit = 0
        issue = 100000000
        transfer = 1000000
        reissue = 100000000
        burn = 5000000
        exchange = 500000
        lease = 1000000
        lease-cancel = 1000000
        create-alias = 100000000
        mass-transfer = 5000000
        data = 5000000
        set-script = 50000000
        sponsor-fee = 100000000
        set-asset-script = 100000000
        permit = 1000000
        create-contract = 100000000
        call-contract = 10000000
        executed-contract = 0
        disable-contract = 1000000
        update-contract = 0
        register-node = 1000000
        create-policy = 100000000
        update-policy = 50000000
        policy-data-hash = 5000000
        additional {
          mass-transfer = 1000000
          data = 1000000
        }
      }
    }
    }
  
    # Application logging level. Could be DEBUG | INFO | WARN | ERROR. Default value is INFO.
    logging-level = DEBUG
  
    features {
    supported = [] # NG
    }
  
    # P2P Network settings
    network {
    # Network address
    bind-address = "0.0.0.0"
    # Port number
    port = 6864
    
    # Peers network addresses and ports
    #   Example: known-peers = ["node-0.wavesenterprise.com:6862", "node-1.wavesenterprise.com:6862"]
    known-peers = [ ]
    
    # Node name to send during handshake. Comment this string out to set random node name.
    # node-name = "nodeName"

    # String with IP address and port to send as external address during handshake. Could be set automatically if uPnP is enabled.
    declared-address = "0.0.0.0:6864"
    }
  
    wallet {
    # Path to keystore. In case of GOST cryptography keys stored in a './keystore/' folder. In case of Waves-cryptography keys stored in a 'keystore.dat' file.
    file = ${user.home}"/nodeName/keystore.dat"
    # Access password
    password = ""
    }
  
    # Node's REST API settings
    rest-api {
    enable = yes
    bind-address = "0.0.0.0"
    port = 6862

    # Hashed secret Api-Key to access node's REST API
    api-key-hash = ""

    # Api-key hash for Privacy Data Exchange REST API methods
    privacy-api-key-hash = ""
    }
  
    # New blocks generator settings
    miner {
    enable = no
    quorum = 2
    interval-after-last-block-then-generation-is-allowed = 35d
    micro-block-interval = 5s
    min-micro-block-age = 3s
    max-transactions-in-micro-block = 500
    minimal-block-generation-offset = 200ms
    }
  
    # Anchoring settings
    scheduler-service.enable = no
  
    # Docker smart-contracts engine config
    docker-engine {
    enable = no
    execution-limits {
      timeout = 10s
      memory = 512
      memory-swap = 512
    }
    }
    }







