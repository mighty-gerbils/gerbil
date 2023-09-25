;; -*- Gerbil -*-
;;; © fare
;;;; Sourceable Representation of Gerbil entities

(export
  default-representation-options current-representation-options
  display-separated print-representation print-unrepresentable-object representable
  pr prn repr)

(import
  :gerbil/gambit
  :std/sort
  ./rtd)

;; Definition of for-each! copied from :std/misc/list,
;; Unlike for-each, also works on improper lists, ended by non-pairs other than '()
;; : <- (list X) (<- X)
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
;; : <- (List Any) port: Port prefix: String separator: String suffix: String display-element: (<- Any)
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

;; Print an evaluable representation of an object on the given port with the given options.
;; The port defaults to (current-output-port). The options are reserved for future use.
;; : <- Any (Optional Port) (Optional Table)
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

   ((or (symbol? x) (null? x)) ;; requires slightly more care: write it after a quote.
    (d "") (w x))

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
           (and (type-descriptor? t) (assgetq transparent: (type-descriptor-plist t)))))
    (display-separated
     (cdr (if (struct-type? (object-type x)) (struct->list x) (class->list x))) port
     prefix: (string-append "(" (symbol->string (type-name (object-type x))))
     separate-prefix?: #t
     suffix: ")"
     display-element: p))

   ((##values? x)
    (let ((vs (call-with-values (lambda () x) list)))
      (display-separated vs prefix: "(values" separate-prefix?: #t suffix: ")" display-element: p)))

   (else
    (print-unrepresentable-object x port options))))

;; Given an object without a known evaluable representation, a port and options,
;; print a general-purpose escape, using the #42 syntax and putting in a string
;; a hint as to what the value is, as obtained from the write function.
;; : <- Any Port Table
(def (print-unrepresentable-object
      object (port (current-output-port)) (options (current-representation-options)))
  (def (d x) (display x port))
  (def (w x) (write x port))
  (d "") (d (object->serial-number object)) (d " #;") (w (object->string object)))

;; Class for representable objects with a :pr method.
(defclass representable ())

;; Given an object, a port and options, print a representation of the object.
;; : <- Any (Optional Port) (Optional Table)
(defmethod {:pr representable} print-unrepresentable-object)

;; Short hand for the print-representation function
;; : <- Any (Optional Port) (Optional Table)

(defalias pr print-representation)

;; Print a representation, then print a newline
;; : <- Any (Optional Port) (Optional Table)
(def (prn x (p (current-output-port)) (o (current-representation-options)))
  (pr x p o) (newline p))

;; Return a representation of the object, as a string, with given options.
;; : <- Any (Optional Table)
(def (repr x (options (current-representation-options)))
  (call-with-output-string
    [] (lambda (port) (print-representation x port options))))
