;;; -*- Gerbil -*-
;;; © vyzo
;;; URLs
(export (struct-out URL)
        URL-relative
        URL-with-query
        as-url)
(import :std/error
        :std/net/address
        :std/net/address/parser
        :std/net/uri
        :std/text/pregexp)

(defstruct URL
  ((string   :  :string)
   (address  :  Address)
   (proto    :  :string)
   (host     :  :string)
   (path     :  :string)
   (query    :? :string))
  print: (string)
  equal: (string)
  final: #t
  constructor: :init!)

(def url-rx
  (pregexp "^(?:([a-z]+(?=://))://)?([a-zA-Z0-9][^/?#:]*(?::[0-9]+)?)(/(?:[^/?#][^?#]*)?)?(?:[?]([^#]+))?(?:#.*)?$"))
(def url-path-rx
  (pregexp "^([^?#]*)(?:[?]([^#]*))?(?:#.*)?$"))

(defmethod {:init! URL}
  (lambda (self (str : :string))
    (match (pregexp-match url-rx str)
      ([_ proto host path query]
       (set! self.proto (or proto "https"))
       (set! self.host host)
       (let (address (url-host->address host self.proto))
         (set! self.address address))
       ;; TODO validation would be nice but maybe expensive
       (set! self.path (or path "/"))
       (set! self.query query)
       (set! self.string
         (if query
           (string-append self.proto "://" self.host self.path
                          "?" query)
           (string-append self.proto "://" self.host self.path))))
      (else
       (raise-bad-argument URL "malformed url" str)))))

(def (URL-relative (str : :string) (rel : URL))
  => URL
  (if (string-contains str "://")
    ;; not relative
    (URL str)
    (using (url (##structure-copy rel) :- URL)
      (def (update! (path :- :string) (query :- :string))
        (set! url.path path)
        (set! url.query query)
        (set! url.string
          (if query
            (string-append url.proto "://" url.host url.path "?" query)
            (string-append url.proto "://" url.host url.path))))

      (cond
       ((string-empty? str)
        ;; root
        (update! "/" #f))
       ((eq? (##string-ref str 0) #\/)
        ;; absolute
        (let ((values path query)
              (split-url-path str))
          (update! path query)))
       (else
        ;; relative
        (let* ((slash (string-rindex url.path #\/))
               (base  (substring url.path 0 (fx+ slash 1)))
               ((values path query)
                (split-url-path str))
               (path (string-append base path)))
          (update! path query))))

      url)))

(defrules try-parse-address (=> else)
  ((_ (else fail)) fail)
  ((_ (try-parse => to-address) . rest)
   (try try-parse
        (catch (e)
          (try-parse-address . rest)))))


(def (url-host->address (host : :string) (proto : :string))
  => Address
  (cond
   ((pregexp-match ip4-address-rx host)
    (InetAddress (string->ip4-address host)
                 (default-protocol-port proto)))
   ((pregexp-match dns-host-rx host)
    (DNSAddress host (default-protocol-port proto)))
   (else
    (try-parse-address
     ((string->dns-address host) => identity)
     ((string->inet4-address host) => identity)
     ((string->inet6-address host) => identity)
     ((string->ip6-address host)
      => (lambda (ip6addr)
           (InetAddress ip6addr (default-protocol-port proto))))
     (else
      (raise-bad-argument url-host->address "url host" host))))))

(def (default-protocol-port proto)
  (cond
   ((hash-get __default-ports proto))
   (else
    (raise-bad-argument default-protocol-port "no default port for proto" proto))))

(def __default-ports
  ;; TODO more from IANA, as needed
  (hash ("http"  80)
        ("https" 443)))

(def (split-url-path (str : :string))
  => :values
  (match (pregexp-match url-path-rx str)
    ([_ path query]
     (values path query))
    (else
     (raise-bad-argument split-url-path "bad url path" str))))

(def (URL-with-query (url : URL) (params : :list))
  => URL
  (using (url (##structure-copy url) :- URL)
    (if (null? params)
      (begin
        (set! url.query #f)
        (set! url.string
          (string-append url.proto "://" url.host url.path)))
      (let* ((query (form-url-encode params))
             (string
              (string-append
               url.proto "://" url.host url.path
               "?" query)))
        (set! url.query query)
        (set! url.string string)))
    url))

(def (as-url x)
  => URL
  (cond
   ((URL? x) x)
   ((string? x) (URL x))
   (else
    (raise-bad-argument to-url "URL or string" x))))
