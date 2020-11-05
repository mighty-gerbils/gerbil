;;; -*- Gerbil -*-
;;; (C) fare at tunes.org
;;; :std/crypto/digest unit-tests

(import :std/test
        :std/iter
        :std/sugar
        :std/text/hex
        :std/crypto/digest
        :std/crypto/libcrypto)
(export digest-test main)

(defrule (test-digest-vectors fun (msg dig) ...)
  (when fun (check-equal? (hex-encode (fun msg)) dig) ...))
(defrule (test-vectors (fun vectors ...) ...)
  (begin (test-digest-vectors fun vectors ...) ...))

;; TODO: add a lot more test vectors?
(def digest-test
  (test-suite "test :std/crypto/digest"
    (test-case "test digest vectors"
      (test-vectors
       (sha1
        ("" "da39a3ee5e6b4b0d3255bfef95601890afd80709")
        ("abc" "a9993e364706816aba3e25717850c26c9cd0d89d")
        ("abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq" "84983e441c3bd26ebaae4aa1f95129e5e54670f1"))
       (sha224
        ("" "d14a028c2a3a2bc9476102bb288234c415a2b01f828ea62ac5b3e42f")
        ("abc" "23097d223405d8228642a477bda255b32aadbce4bda0b3f7e36c9da7")
        ("abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq" "75388b16512776cc5dba5da1fd890150b0c6455cb4f58b1952522525"))
       (sha256
        ("" "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855")
        ("abc" "ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad")
        ("abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq" "248d6a61d20638b8e5c026930c3e6039a33ce45964ff2167f6ecedd419db06c1"))
       (sha384
        ("" "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b")
        ("abc" "cb00753f45a35e8bb5a03d699ac65007272c32ab0eded1631a8b605a43ff5bed8086072ba1e7cc2358baeca134c825a7")
        ("abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq" "3391fdddfc8dc7393707a65b1b4709397cf8b1d162af05abfe8f450de5f36bc6b0455a8520bc4e6f5fe95b1fe3c8452b"))
       (sha512
        ("" "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e")
        ("abc" "ddaf35a193617abacc417349ae20413112e6fa4e89a97ea20a9eeee64b55d39a2192992a274fc1a836ba3c23a3feebbd454d4423643ce80e2a9ac94fa54ca49f")
        ("abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq" "204a8fc6dda82f0a0ced7beb8e08a41657c16ef468b228a8279be331a703c33596fd15c13b1b07f9aa1d3bea57789ca031ad85c7a71dd70354ec631238ca3445"))
       (sha3_224
        ("" "6b4e03423667dbb73b6e15454f0eb1abd4597f9a1b078e3f5b5a6bc7")
        ("abc" "e642824c3f8cf24ad09234ee7d3c766fc9a3a5168d0c94ad73b46fdf"))
       (sha3_256
        ("" "a7ffc6f8bf1ed76651c14756a061d662f580ff4de43b49fa82d80a4b80f8434a")
        ("abc" "3a985da74fe225b2045c172d6bd390bd855f086e3e9d525b46bfe24511431532"))
       (sha3_384
        ("" "0c63a75b845e4f7d01107d852e4c2485c51a50aaaa94fc61995e71bbee983a2ac3713831264adb47fb6bd1e058d5f004")
        ("abc" "ec01498288516fc926459f58e2c6ad8df9b473cb0fc08c2596da7cf0e49be4b298d88cea927ac7f539f1edf228376d25"))
       (sha3_512
        ("" "a69f73cca23a9ac5c8b567dc185a756e97c982164fe25859e0d1dcc1475c80a615b2123af1f5f94c11e3e9402c3ac558f500199d95b6d3e301758586281dcd26")
        ("abc" "b751850b1a57168a5693cd924b6b096e08f621827444f70d884f5d0240d2712e10e116e9192af3c91a7ec57647e3934057340b4cf408d5a56592f8274eec53f0"))
       (blake2s256 ;; from https://tools.ietf.org/html/rfc7693
        ("abc" "508c5e8c327c14e2e1a72ba34eeb452f37458b209ed63a294d999b4c86675982"))
       (blake2b512 ;; from https://tools.ietf.org/html/rfc7693
        ("abc" "ba80a53f981c4d0d6a2797b69f12f6e94c212f14685ac4b74b12bb6fdbffa2d17d87c5392aab792dc252d5de4533cc9518d38aa8dbf1925ab92386edd4009923"))
       ))))


;; For the purpose of testing: gxc -exe -static digest-test.ss
(def (main . _)
  (run-tests! digest-test)
  (test-report-summary!)
  (exit (case (test-result) ((OK) 0) (else 1))))
