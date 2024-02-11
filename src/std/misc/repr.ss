;; -*- Gerbil -*-
;;; © fare
;;;; Sourceable Representation of Gerbil entities
;;
;; The goal is that printing an object with prn (or capturing its output in a string with repr)
;; shall yield a representation that if copy-pasted into the REPL in some reasonable context
;; would yield the same object as printed, up to equal?.
;; In other words, this equation should hold whenever possible
;; (though it is obviously not guaranteed on arbitrary user-defined objects):
;;               (equal? (eval (call-with-input-string (repr o) read)) o)
;;
;; Now, if no other suitable method is found, an object with be printed using the
;; #42 #;"<foo #42>" notation wherein a magic syntax using the "serial number" syntax
;; of Gambit Scheme, that only works in the same thread as the printer for reading back,
;; but still produces as much information as possible in a subsequent #; comment.
;; You can still use the #n handle to access and query the object.

(export
  default-representation-options current-representation-options
  display-separated print-representation representable
  print-unrepresentable-object unrepresentable-object-string?
  pr prn repr)

(import
  :gerbil/gambit
  :std/sort
  ./rtd)

;; Definition of for-each! copied from :std/misc/list,
;; Unlike for-each, also works on improper lists, ended by non-pairs other than '()
;; : (list X) (X ->) ->
(def (for-each! list fun)
  (match list
    ([elem . more] (fun elem) (for-each! more fun))
    (_ (void))))

;; --------------------------------------------------------

;; Default options for printing an evaluable representation. Keep it empty for now.
;; Note: we don't actually use options yet, but
;; it is intended to contain pretty-printing state such as desired number of columns, etc.
;; : Table
(def default-representation-options (make-hash-table))

;; Current options for printing an evaluable representation. Always empty for now.
;; TODO: use immutable hash tables instead when available
;; : (Parameter Table)
(def current-representation-options (make-parameter default-representation-options))

;; Display a list of items, with prefix and suffix, separated by given separator.
;; Print the prefix, suffix and separator strings on the given port.
;; Call the display-element function on each element.
;; : (List Any) port: Port prefix: String separator: String suffix: String display-element: (Any ->) ->
(def (display-separated
      list
      (port (current-output-port))
      prefix: (prefix "")
      separate-prefix?: (separate? #f)
      separator: (separator " ")
      suffix: (suffix "")
      display-element: (display-element display))
  (display prefix port)
  (for-each! ;; NB: also works on improper lists.
   list
   (lambda (elem)
     (if separate?
       (display separator port)
       (set! separate? #t))
     (display-element elem port)))
  (display suffix port))

;; Utilities we reimplement rather than import because of dependency circularity issues
(def (plist->alist p)
  (match p ([k v . rest] (cons (cons k v) (plist->alist rest))) ([] [])))
(def (alist->plist a)
  (match a ([[k . v] . rest] (cons* k v (alist->plist rest))) ([] [])))
(def (keyword<? kv1 kv2)
  (string<? (keyword->string (car kv1)) (keyword->string (car kv2))))

;; Print an evaluable representation of an object on the given port with the given options.
;; The port defaults to (current-output-port). The options are reserved for future use.
;; : Any (Optional Port) (Optional Table) ->
(def (print-representation x (port (current-output-port)) (options (current-representation-options)))

  ;; Our universal utilities: print (recurse), repr, display, write
  (def (p y (q port)) (print-representation y q options))
  (def (r y) (repr y options))
  (def (d y) (display y port))
  (def (w y) (write y port))
  (def (simple? x) (or (number? x) (boolean? x) (string? x) (char? x) (void? x) (keyword? x) (eof-object? x)))

  (cond
   ;; Simplest case: just write it.
   ((simple? x)
    (w x))

   ((symbol? x) ;; requires slightly more care: write it after a quote.
    (d "'") (w x))

   ((null? x)
    (d "[]"))

   ((pair? x) ;; pair: print as [ ... ].
    (display-separated x port prefix: "[" display-element: p)
    (let ((end (cdr (last-pair x))))
      (cond
       ((null? end) (void))
       ((simple? end) (d " . ") (p end))
       (else (d " ") (p end) (d " ..."))))
    (d "]"))

   ((vector? x) ;; vector: print as (vector ...).
    (display-separated (vector->list x) port
                       prefix: "(vector" separate-prefix?: #t display-element: p suffix: ")"))

   ((u8vector? x) ;; u8vector: print as #u8(...), knowing that elements are all bytes.
    (display-separated (u8vector->list x) port
                       prefix: "#u8(" suffix: ")"))

   ((hash-table? x) ;; hash-table: print as (hash ...)
    (let* ((prefix
            (let (testf (##vector-ref x 2))
              (cond
               ((or (not testf)
                    (eq? testf eq?)
                    (eq? testf ##eq?))
                "(hash-eq")
               ((or (eq? testf eqv?)
                    (eq? testf ##eqv?))
                "(hash-eqv")
               (else
                "(hash"))))
           (kr
            (lambda (k)
              (if (or (simple? k) (symbol? k) (null? k))
                (object->string k)
                (string-append "," (r k))))))
      (display-separated
       (sort (hash-map (lambda (k v) (cons (kr k) v)) x) ;; sort keys by repr
             (lambda (krv1 krv2) (string<? (car krv1) (car krv2))))
       port prefix: prefix separate-prefix?: #t suffix: ")"
       display-element:
       (lambda (x _)
         (with ([kr . v] x)
           (d "(")
           (d kr)
           (d " ") (p v)
           (d ")"))))))

   ((and (procedure? x) (##procedure-name x))
    => (lambda (name) (display name port)))

   ((method-ref x ':pr) => (lambda (m) (m x port options)))

   ((and (object? x)
         (let (t (object-type x))
           (and (type-descriptor? t) (assgetq transparent: (type-descriptor-properties t)))))
    (display-separated
     (if (type-struct? (object-type x))
       (cdr (struct->list x))
       (alist->plist (sort (plist->alist (cdr (class->list x))) keyword<?)))
     port
     prefix: (string-append "(" (symbol->string (type-name (object-type x))))
     separate-prefix?: #t
     suffix: ")"
     display-element: p))

   ((##values? x)
    (display-separated (values->list x) port
                       prefix: "(values" separate-prefix?: #t display-element: p suffix: ")"))

   (else
    (print-unrepresentable-object x port options))))

;; Given an object without a known evaluable representation, a port and options,
;; print a general-purpose escape, using the #42 syntax followed by the
;; string from object->string (as in the write function) in a #; comment.
;; : Any (Optional Port) (Optional Table) ->
(def (print-unrepresentable-object
      object (port (current-output-port)) (options (current-representation-options)))
  (def (d x) (display x port))
  (def (w x) (write x port))
  (def s (object->string object))
  (if (unrepresentable-object-string? s)
    (d s)
    (begin (d "#") (d (object->serial-number object)) (d " #;") (w s))))

(def (unrepresentable-object-string? s)
  ;; we can't depend on std/pregexp or std/text/char-set for dependency reasons,
  ;; so no (pregexp-match "^#[0-9]+ #;" s) or char-ascii-numeric?
  (def (is? i p) (and (> (string-length s) i) (p (string-ref s i))))
  (def (is=? i c) (is? i (cut eqv? c <>)))
  (def (is-num? i) (is? i (lambda (c) (char<=? #\0 c #\9))))
  (and (is=? 0 #\#) (is-num? 1)
       (let loop ((i 2))
         (if (is-num? i)
           (loop (1+ i))
           (and (is=? i #\space) (is=? (1+ i) #\#) (is=? (+ i 2) #\;))))))

;; Class for representable objects with a :pr method.
(defclass representable ())

;; Given an object, a port and options, print a representation of the object.
;; : Any (Optional Port) (Optional Table)
(defmethod {:pr representable} print-unrepresentable-object)

;; Short hand for the print-representation function
;; : <- Any (Optional Port) (Optional Table)

(defalias pr print-representation)

;; Print a representation, then print a newline
;; : Any (Optional Port) (Optional Table) ->
(def (prn x (p (current-output-port)) (o (current-representation-options)))
  (pr x p o) (newline p))

;; Return a representation of the object, as a string, with given options.
;; : Any (Optional Table) ->
(def (repr x (options (current-representation-options)))
  (call-with-output-string
    [] (lambda (port) (print-representation x port options))))
