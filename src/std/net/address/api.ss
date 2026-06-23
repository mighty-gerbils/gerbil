;;; -*- Gerbil -*-
;;; © vyzo
;;; network address api
(import ./types
        ./parser
        ./stringer
        ./resolver
        ./serde)
(export (struct-out
         Address
         NullAddress
         EndpointAddress
         IPAddress
         IP4Address
         IP6Address
         InetAddress
         UnixAddress
         DNSAddress)
        inaddr-any4
        inaddr-any6
        localhost4
        localhost6
        string->address
        address->string
        resolve->endpoint resolve->host)
