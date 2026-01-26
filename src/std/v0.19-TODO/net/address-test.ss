(import :std/test
        :std/error
        ./address)

(export address-test)

(def (test-ip4<->string str ip)
  (test-ip<->string str ip string->ip4-address ip4-address->string))

(def (test-ip6<->string str ip)
  (test-ip<->string str ip string->ip6-address ip6-address->string))

(def (test-ip6<-string str ip)
  (test-ip<-string str ip string->ip6-address))

(def (test-ip<->string str ip to-ip to-string)
  (test-ip<-string str ip to-ip)
  (test-ip->string str ip to-string))

(def (test-ip<-string str ip to-ip)
  (check (to-ip str) => ip))

(def (test-ip->string str ip to-string)
  (check (to-string ip) => str))

(def address-test
  (test-suite "IP address to string conversion"
    (test-case "IPv4"
      (test-ip4<->string "0.0.0.0" inaddr-any4)
      (test-ip4<->string "127.0.0.1" localhost4)
      (test-ip4<->string "192.168.1.1" #u8(192 168 1 1))
      (check-exception
       (string->ip4-address "192.279.302.543")
       contract-violation-error?)
      (check-exception
       (string->ip4-address "192..168.1.1")
       contract-violation-error?)
      (check-exception
       (string->ip4-address "192.168.1.1.2")
       contract-violation-error?)
      (check-exception
       (string->ip4-address "192.168.1")
       contract-violation-error?))
    (test-case "IPv6"
      (test-ip6<-string "0:0:0:0:0:0:0:0" inaddr-any6)
      (test-ip6<->string "::" inaddr-any6)
      (test-ip6<-string "0:0:0:0:0:0:0:1" localhost6)
      (test-ip6<->string "::1" localhost6)
      (test-ip6<->string "f::1"
                         #u8(0 15 0 0 0 0 0 0 0 0 0 0 0 0 0 1))
      (test-ip6<->string "ff::1"
                         #u8(0 255 0 0 0 0 0 0 0 0 0 0 0 0 0 1))
      (test-ip6<->string "fff::1"
                         #u8(15 255 0 0 0 0 0 0 0 0 0 0 0 0 0 1))
      (test-ip6<->string "ffff::1"
                         #u8(255 255 0 0 0 0 0 0 0 0 0 0 0 0 0 1))
      (test-ip6<->string "f::"
                         #u8(0 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
      (test-ip6<->string "ff::"
                         #u8(0 255 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
      (test-ip6<->string "fff::"
                         #u8(15 255 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
      (test-ip6<->string "ffff::"
                         #u8(255 255 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
      (test-ip6<-string "2001:DB8:0:0:8:800:200C:417A"
                        #u8(#x20 #x01 #xd #xb8 0 0 0 0 0 #x8 #x8 0 #x20 #xc #x41 #x7a))
      (test-ip6<-string "2001:db8:0:0:8:800:200c:417a"
                        #u8(#x20 #x01 #xd #xb8 0 0 0 0 0 #x8 #x8 0 #x20 #xc #x41 #x7a))
      (test-ip6<-string "2001:DB8::8:800:200C:417A"
                        #u8(#x20 #x01 #xd #xb8 0 0 0 0 0 #x8 #x8 0 #x20 #xc #x41 #x7a))
      (test-ip6<->string "2001:db8::8:800:200c:417a"
                         #u8(#x20 #x01 #xd #xb8 0 0 0 0 0 #x8 #x8 0 #x20 #xc #x41 #x7a))
      (check-exception
       (string->ip6-address "randomjunk:DB8::8:800:200C:417A")
       contract-violation-error?)
      (check-exception
       (string->ip6-address ":::DB8::8:800:200C:417A")
       contract-violation-error?)
      (check-exception
       (string->ip6-address "::DB8:::8:800:200C:417A")
       contract-violation-error?)
      (check-exception
       (string->ip6-address "DB8::8:800::200C:417A")
       contract-violation-error?)
      (check-exception
       (string->ip6-address "0:0:0:0:0:0:0:0:0")
       contract-violation-error?)
      (check-exception
       (string->ip6-address "0:0:0:0::0:0:0:0:0")
       contract-violation-error?))))
