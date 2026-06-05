;;; -*- Gerbil -*-
;;; © vyzo
;;; address resolution
(import :std/interface
        :std/error
        :std/list/random
        ./types)
(export #t)

(deferror-class ResolverError ())

(defraise/context (raise-resolver-error where message irritants ...)
  (ResolverError message irritants: [irritants ...]))

(interface EndpointAddressResolver
  (resolve) =>  EndpointAddress)

(defcall-interface-method EndpointAddressResolver resolve
  (resolve->endpoint addr)
  :- EndpointAddress)

(implement EndpointAddressResolver
  (InetAddress
   (resolve identity))
  (UnixAddress
   (resolve identity))
  (DNSAddress
   (resolve
    (lambda (self)
      (if (pair? self.resolved)
        (:- (list-random-ref self.resolved) EndpointAddress)
        (let* ((info
                (host-info self.host))
               (ips
                (map u8vector->ip-address
                     (host-info-addresses info)))
               (resolved
                (map (cut InetAddress <> self.port)
                     ips)))
          (when (null? resolved)
            (raise-resolver-error DNSAddress::resolve "no inet addresses" host: self.host))
          (set! self.resolved resolved)
          (:- (list-random-ref resolved) EndpointAddress)))))))

(def (u8vector->ip-address (ip : :u8vector))
  => IPAddress
  (case (u8vector-length ip)
    ((4)  (IP4Address ip))
    ((16) (IP6Address ip))
    (else
     (raise-bad-argument u8vector->ip-address "bad address length" ip))))
