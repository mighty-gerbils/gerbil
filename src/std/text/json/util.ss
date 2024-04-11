;;; -*- Gerbil -*-
;;; © vyzo, fare
;;; json utilities
(import
  :gerbil/gambit
  :gerbil/runtime/hash
  :std/contract
  :std/error
  :std/io
  :std/io/strio/types
  :std/misc/ports
  :std/misc/process
  :std/iter
  :std/misc/alist
  :std/misc/hash
  :std/misc/list
  :std/misc/list-builder
  :std/misc/number
  :std/misc/ports
  :std/misc/plist
  :std/misc/walist
  :std/parser/ll1
  :std/sort
  :std/srfi/43
  :std/sugar
  :std/values
  ./env ./input ./output)

(export #t)

(def (read-json (input (current-input-port)))
  (cond
   ((input-port? input)
    (read-json-object/port input (make-env)))
   ((is-BufferedStringReader? input)
    (read-json-object/reader (BufferedStringReader input) (make-env)))
   ((is-BufferedReader? input)
    (read-json-object/buffer (BufferedReader input) (make-env)))
   (else
    (raise-bad-argument read-json "input port, BufferedStringReader or BufferedReader instance" input))))

(def (string->json-object str)
  (let (reader (open-buffered-string-reader str))
    (begin0 (read-json-object/reader reader (make-env))
      (ll1-skip-space-to-eof (PeekableStringReader reader)))))

(def (bytes->json-object bytes)
  (let (buffer (open-buffered-reader bytes))
    (begin0 (read-json-object/buffer buffer (make-env))
      (ll1-skip-space-to-eof (PeekableStringReader (open-buffered-string-reader buffer))))))

(def (port->json-object port)
  (begin0 (read-json-object/port port (make-env))
    (ll1-skip-space-to-eof (PeekableStringReader (open-buffered-string-reader port)))))

(def (write-json obj (output (current-output-port)))
  (cond
   ((output-port? output)
    (write-json-object/port obj output (make-env))
    (force-output output))
   ((is-BufferedStringWriter? output)
    (write-json-object/writer obj (BufferedStringWriter output) (make-env)))
   ((is-BufferedWriter? output)
    (write-json-object/buffer obj (BufferedWriter output) (make-env)))
   ((or (is-StringWriter? output) (is-Writer? output))
    (let (output (open-buffered-string-writer output))
      (write-json-object/writer obj output (make-env))
      (&BufferedStringWriter-flush output)))
   (else
    (raise-bad-argument write-json "output port, Writer, StringWriter or BufferedStringWriter" output))))

(def (json-object->string obj)
  (let (buffer (open-buffered-string-writer #f))
    (write-json-object/writer obj buffer (make-env))
    (get-buffer-output-string buffer)))

(def (json-object->bytes obj)
  (let (buffer (open-buffered-writer #f))
    (write-json-object/buffer obj buffer (make-env))
    (get-buffer-output-u8vector buffer)))

(def (trivial-class->json-object object)
  (match (class->list object)
    ([type . plist]
     (list->hash-table
      `(#|(__class . ,(symbol->string (type-name type)))|#
        ,@(plist->alist plist))))))

(def (trivial-json-object->class klass json)
  (def (find-key key)
    (or (and (symbol? key) key)
        (##find-interned-keyword key)
        (error "invalid json key for class" key klass)))
  (apply make-instance klass (alist->plist (map (cut map/car find-key <>) (hash->list json)))))

(def (trivial-struct->json-object struct)
  (with ([strukt . fields] (struct->list struct))
    (let (f (if (json-symbolic-keys) cons (lambda (slot v) (cons (symbol->string slot) v))))
      (walist (map f (cdr (vector->list (class-type-slot-vector strukt))) fields)))))

(def (trivial-json-object->struct strukt json (defaults #f))
  (unless defaults (set! defaults (hash)))
  (def offsets (cast HashTable::interface (class-type-slot-table strukt)))
  (def slots (class-type-slot-vector strukt))
  (def n (vector-length slots))
  (def (get-pos key)
    (def slot
      (cond
       ((symbol? key) key)
       ((string? key) (##find-interned-symbol key))
       (else #f)))
    (or (hash-get offsets slot)
        (error "invalid json key for struct" key strukt json)))
  (def object (make-object strukt n))
  (def bound? (make-vector n #f))
  (vector-set! bound? 0 #t)
  (for (((values k v) (in-hash json)))
    (let (p (get-pos k))
      (when (vector-ref bound? p) (error "field multiply defined" k strukt json))
      (vector-set! bound? p #t)
      (##vector-set! object p v)))
  (def unbounds
    (with-list-builder (c)
     (for ((p (in-range 1 n)))
       (let ((b? (vector-ref bound? p))
             (slot (vector-ref slots p)))
         (cond
          (b? (void))
          ((hash-key? defaults slot) (##vector-set! object p (hash-ref defaults slot)))
          (else (c slot)))))))
  (unless (null? unbounds)
    (error "unbound fields" unbounds strukt json))
  object)

;; Mixin for a trivial method that just lists all slots
(defclass JSON ())
(defmethod {:json JSON} trivial-class->json-object)

(def (pretty-json object (output (current-output-port))
                  indent: (indent 2)
                  sort-keys?: (sort-keys? (json-sort-keys))
                  lisp-style?: (lisp-style? #f))
  (check-argument-positive-integer indent)
  (using (out (open-buffered-string-writer output) : BufferedStringWriter)
    (def env (make-env))
    (def (simple? obj)
      (or (number? obj) (string? obj) (symbol? obj) (keyword? obj)
          (boolean? obj) (void? obj) (null? obj) (equal? obj #())
          (and (hash-table? obj) (zero? (hash-length obj)))
          (and (walist? obj) (null? (walist-alist obj)))))
    (def (write-value obj indentation)
      (cond
       ((simple? obj)
        (write-json-object/writer obj out env))
       ((list? obj)
        (write-list obj indentation))
       ((vector? obj)
        (write-list (vector->list obj) indentation))
       ((hash-table? obj)
        (write-alist (hash->list obj) indentation))
       ((walist? obj)
        (write-alist (walist-alist obj) indentation))
       (else
        (write-value {:json obj} indentation))))
    (def (write-many write-one open close lst indentation)
      (let (new-indentation (+ indentation indent))
        (out.write-char-inline open)
        (unless lisp-style? (newline-indent new-indentation))
        (let lp ((l lst))
          (match l
            ([e . r]
             (write-one e new-indentation)
             (unless (null? r)
               (out.write-char-inline #\,)
               (newline-indent new-indentation)
               (lp r)))))
        (unless lisp-style? (newline-indent indentation))
        (out.write-char-inline close)))
    (def (write-alist alist indentation)
      (let (alst (if (json-sort-keys) (json-sort-alist alist) alist))
        (write-many write-binding #\{ #\} alst indentation)))
    (def (write-list list indentation)
      (write-many write-value #\[ #\] list indentation))
    (def (space!) (out.write-char-inline #\space))
    (def (newline!) (out.write-char-inline #\newline))
    (def (newline-indent indentation)
      (newline!)
      (for (_ (in-range indentation)) (space!)))
    (def (write-binding binding indentation)
      (match binding
        ([key . val]
         (let (key (json-key-string key))
           (write-json-object/writer key out env)
           (out.write-char-inline #\:)
           (if (or (not lisp-style?) (simple? val))
             (space!)
             (newline-indent (1+ indentation)))
           (write-value val indentation)))))
    (parameterize ((write-json-sort-keys? sort-keys?))
      (write-value object (if lisp-style? -1 0)))
    (newline!)
    (unless output (get-buffer-output-string out))))
