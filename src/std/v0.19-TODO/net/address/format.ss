;;; -*- Gerbil -*-
;;; © vyzo
;;; network address io
(import :std/io
        :std/io/bio/api
        :std/format/io
        :std/format/ioutil
        :std/text/json/io
        ./address)
(export #t)

(defformatter IP4Address (format-ip4-address writer addr env)
  XXX
  )

(defformatter IP6Address (format-ip6-address writer addr env)
  XXX
  )

(defformatter DNSAddress (format-dns-address writer addr env)
  XXX
  )

(defformatter Address (format-address writer addr env)
  XXX
  )

(defjson-writer IP4Address (write-ip4-address-json writer addr env)
  XXX
  )

(defjson-writer IP6Address (write-ip6-address-json writer addr env)
  XXX
  )

(defjson-writer DNSAddress (write-dns-address-json writer addr env)
  XXX
  )

(defjson-writer Address (write-address-json writer addr env)
  XXX
  )
