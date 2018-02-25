;; -*- Gerbil -*-
package: std/misc
;;;; Sourceable Representation of Gerbil entities

(export
  default-representation-options current-representation-options
  display-separated print-representation print-unrepresentable-object representable
  pr prn repr)

(import
  :gerbil/gambit/hash :gerbil/gambit/ports
  :std/format :std/misc/list :std/misc/rtd :std/sort :std/srfi/1)

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
      port: (port (current-output-port))
      prefix: (prefix "")
      separator: (separator " ")
      suffix: (suffix "")
      display-element: (display-element (lambda (x) (display x port))))
  (display prefix port)
  (def first? #t)
  (for-each
   (lambda (elem)
     (if first?
       (set! first? #f)
       (display separator port))
     (display-element elem))
   list)
  (display suffix port))

;; Print an evaluable representation of an object on the given port with the given options.
;; The port defaults to (current-output-port). The options are reserved for future use.
;; : <- Any port: Port options: Table
(def (print-representation
      x
      port: (port (current-output-port))
      options: (options (current-representation-options)))

  ;; Our universal utilities: print (recurse), repr, display, write
  (def (p y) (print-representation y port: port options: options))
  (def (r y) (repr y options: options))
  (def (d y) (display y port))
  (def (w y) (write y port))
  (def (simple? x) (or (number? x) (boolean? x) (string? x) (char? x) (void? x) (eof-object? x)))

  (cond
   ;; Simplest case: just write it.
   ((simple? x)
    (w x))
   ((or (symbol? x) (null? x)) ;; requires slightly more care: write it after a quote.
    (d "'") (w x))
   ((pair? x) ;; pair: print as [ ... ].
    (display-separated x prefix: "[" separator: " " display-element: p port: port)
    (let ((end (cdr (last-pair x))))
      (cond
       ((null? end) (void))
       ((simple? end) (d " . ") (p end))
       (else (d " ") (p end) (d " ..."))))
    (d "]"))
   ((vector? x) ;; vector: print as (vector ...).
    (display-separated (vector->list x)
                       prefix: "(vector " separator: " " display-element: p suffix: ")" port: port))
   ((u8vector? x) ;; u8vector: print as (u8vector ...).
    (display-separated (u8vector->list x)
                       prefix: "(u8vector " separator: " " display-element: p suffix: ")" port: port))
   ((hash-table? x) ;; hash-table: print as (hash ...)
    ;; NB: also assumes (1) it is a equal? table, and (2) you use :std/sugar ...
    (display-separated
     (sort (map (lambda (k) (cons (r k) (hash-ref x k))) (hash-keys x)) ;; sort keys by repr
           (lambda (krv1 krv2) (string<? (car krv1) (car krv2))))
     port: port prefix: "(hash " suffix: ")"
     display-element: (match <> ([kr . v] (d "(") (d kr) (d " ") (p v) (d ")")))))
   ((representable? x)
    {:pr x port: port options: options})
   ((and (object? x) (find-method (object-type x) ':pr))
    => (lambda (m) (m x port: port options: options)))
   ((and (object? x) (struct-type? (object-type x)))
    (display-separated
     (cdr (struct->list x))
     port: port prefix: (format "(~a " (##type-name (object-type x))) suffix: ")"
     display-element: p))
   (else
    (print-unrepresentable-object x port: port))))

;; Given an object without a known evaluable representation, a port and options,
;; print a general-purpose escape, using the #42 syntax and putting in a string
;; a hint as to what the value is, as obtained from the write function.
;; : <- Any port: Port options: Table
(def (print-unrepresentable-object
      object
      port: (port (current-output-port))
      options: (options (current-representation-options)))
  (def (d x) (display x port))
  (def (w x) (write x port))
  (d "(begin0 #") (d (object->serial-number object)) (d " ") (w (object->string object)) (d ")"))

;; Class for representable objects with a :pr method.
(defclass representable ())

;; Given an object, a port and options, print a representation of the object.
;; : <- Any port: Port options: Table
(defmethod {:pr representable} print-unrepresentable-object)

;; Short hand for the print-representation function
;; : <- Any port: Port options: Table
(def pr (values print-representation))

;; Print a representation, then print a newline
;; : <- Any port: Port options: Table
(def (prn x port: (p (current-output-port)) options: (o (current-representation-options)))
  (pr x port: p options: o) (newline p))

;; Return a representation of the object, as a string, with given options.
;; : <- Any options: Table
(def (repr x options: (options (current-representation-options)))
  (call-with-output-string
    [] (lambda (port) (print-representation x port: port options: options))))
