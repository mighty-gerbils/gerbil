(import
  :gerbil/gambit/ports
  :std/io :std/misc/ports :std/misc/process
  :std/iter :std/misc/alist :std/misc/hash :std/misc/list :std/misc/list-builder
  :std/misc/ports :std/misc/plist :std/misc/rtd :std/misc/walist
  :std/sort :std/srfi/43 :std/sugar :std/values
  ./env ./input ./output)

(export #t)

(def (read-json (input (current-input-port)) (junk-allowed? #t))
  (cond
   ((input-port? input)
    (read-json-object/port input (make-env) junk-allowed?))
   ((is-BufferedStringReader? input)
    (read-json-object/reader (BufferedStringReader input) (make-env) junk-allowed?))
   ((is-BufferedReader? input)
    (read-json-object/buffer (BufferedReader input) (make-env) junk-allowed?))
   (else
    (error "Bad input source; expected input port, BufferedStringReader or BufferedReader instance" input))))

(def (string->json-object str)
  (read-json-object/reader (open-buffered-string-reader str) (make-env) #f))

(def (bytes->json-object bytes)
  (read-json (open-buffered-reader bytes) #f))

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
    (error "Bad output sink; expected output port, Writer, StringWriter or BufferedStringWriter" output))))

(def (json-object->string obj)
  (let (buffer (open-buffered-string-writer #f))
    (write-json-object/writer obj buffer (make-env))
    (get-buffer-output-string buffer)))

(def (json-object->bytes obj)
  (let (buffer (open-buffered-writer #f))
    (write-json-object/writer obj buffer (make-env))
    (get-buffer-output-u8vector buffer)))

(def (trivial-class->json-object object)
  (match (class->list object)
    ([type . plist]
     (list->hash-table
      `(#|(__class . ,(symbol->string (type-name type)))|#
        ,@(plist->alist plist))))))

(def (trivial-json-object->class klass json)
  (def (find-key s)
    (or (and (symbol? s) s)
        (##find-interned-keyword s)
        (error "invalid json key for class" s klass)))
  (apply make-class-instance klass (alist->plist (map (cut map/car find-key <>) (hash->list json)))))

(def (trivial-struct->json-object struct)
  (defvalues (strukt fields) (cons->values (struct->list struct)))
  (def names (cdr (assoc fields: (type-descriptor-plist strukt))))
  (def json (make-hash-table))
  (def f (if (json-symbolic-keys) identity symbol->string))
  (for ((name names) (v fields)) (hash-put! json (f name) v))
  json)

(def (trivial-json-object->struct strukt json (defaults #f))
  (unless defaults (set! defaults (hash)))
  (def names (list->vector (cdr (assoc fields: (type-descriptor-plist strukt)))))
  (def positions (invert-hash<-vector names))
  (def (pos<-field f)
    (def s (cond
            ((symbol? f) f)
            ((string? f) (##find-interned-symbol f))
            (else #f)))
    (or (hash-get positions s)
        (error "invalid json key for struct" f strukt json)))
  (def n (vector-length names))
  (def fields (make-vector n #f))
  (def bound? (make-vector n #f))
  (for (((values k v) (in-hash json)))
    (let (p (pos<-field k))
      (when (vector-ref bound? p) (error "field multiply defined" k strukt json))
      (vector-set! bound? p #t)
      (vector-set! fields p v)))
  (def unbounds
    (with-list-builder (c)
     (for ((i (in-naturals))
           (b? bound?)
           (name names))
       (cond
        (b? (void))
        ((hash-key? defaults name) (vector-set! fields i (hash-ref defaults name)))
        (else (c name))))))
  (unless (null? unbounds)
    (error "unbound fields" unbounds strukt json))
  (apply make-struct-instance strukt (vector->list fields)))

;; Mixin for a trivial method that just lists all slots
(defclass jsonable ())
(defmethod {:json jsonable} trivial-class->json-object)

(def (pretty-json object (out #f))
  (with-output (out)
    (filter-with-process
     ["jq" "-M" "."]
     (cut write-json object <>)
     (cut copy-port <> out))))
