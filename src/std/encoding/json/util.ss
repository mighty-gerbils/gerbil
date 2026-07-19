;;; -*- Gerbil -*-
;;; © vyzo
;;; json utilities
(import :std/error
        :std/format/ioutil
        :std/io
        :std/io/bio/api
        :std/iter
        :std/list/alist
        :std/list/list
        :std/list/list-builder
        :std/list/plist
        :std/list/walist
        (only-in :std/misc/ports read-all-as-string)
        ./env
        ./io
        ./writer
        ./reader)
(export #t)

;;; BufferedReader / BufferedWriter (direct, efficient)

(def* read-json
  ((reader options)
   (with-buffered-reader (reader)
     (parse-json (open-buffered-reader reader) options)))
  ((reader)
   (read-json reader (current-json-read-options)))
  ((reader . args)
   (read-json reader (apply json-read-options args))))

(def* write-json
  ((writer obj ctx)
   (with-buffered-writer (writer)
     (write-json-object writer obj ctx)))
  ((writer obj)
   (write-json writer obj (json-write-context)))
  ((writer obj . args)
   (write-json writer obj (apply make-json-write-context args))))

;;; String / bytes convenience

(def (string->json (str : :string)
                   (opt : JSONReadOptions := (current-json-read-options)))
  (u8vector->json (string->utf8 str) opt))

(def (json->string obj . args)
  (apply write-json #f obj args))

(def (u8vector->json (bytes : :u8vector)
                     (opt : JSONReadOptions := (current-json-read-options)))
  (using ((reader (open-buffered-reader bytes) : BufferedReader))
    (begin0
      (reader.parse-json opt)
      ;; verify trailing content is whitespace-only
      (let lp ()
        (let (char (reader.peek-char-utf8))
          (cond
           ((eof-object? char) (void))
           ((char-whitespace? char)
            (reader.read-char-utf8)
            (lp))
           (else
            (raise-io-error u8vector->json
                            "Unexpected trailing content after JSON value"
                            bytes char))))))))

(def (json->u8vector obj (ctx : JSONWriteContext := (json-write-context)))
  => :u8vector
  (using ((writer (open-buffered-writer #f) : BufferedWriter))
    (writer.write-json obj ctx)
    (get-memory-output-u8vector writer)))

;;; Pretty-print variants

(def (pretty-json writer obj
                  scan: (scan #f)
                  indent: (indent 2)
                  style: (style 'standard)
                  sort-keys: (sort-keys #f))
  ;; standard style is the RFC 8259 / jq style; lisp style is compact Lisp-friendly indentation
  (with-buffered-writer (writer)
    (let (ctx (make-json-write-context scan: scan sort-keys: sort-keys
                                       pretty: style indent: indent))
      (write-json-object writer obj ctx)
      (writer.write-newline))))

;;; Simple default handling for objects

(def (trivial-object->json object)
  (match (class->list object)
    ([type . plist]
     (walist
      `(;;(__class . ,(symbol->string (type-name type)))
        ,@(plist->alist plist))))))

(def (json->alist json)
  (cond
   ((AList? json) (walist->list json))
   ((hash-table? json) (hash->list json))
   (else (raise-bad-argument json->alist "AList or hash" json))))

(def (trivial-json->object klass json)
  (def (find-key key)
    (or (##find-interned-keyword (as-string key))
        (error "invalid json key for class" key klass)))
  (apply make-instance klass (alist->plist (map (cut map/car find-key <>) (json->alist json)))))

(def (trivial-struct->json struct)
  (walist
   (with ([strukt . fields] (struct->list struct))
     (with-list-builder (c)
       (struct-field-fold
        strukt
        (lambda (i j type fields)
          (let* ((field-info (##type-fields type))
                 (j3 (fx* 3 j))
                 (printable? (zero? (fxand 1 (vector-ref field-info (fx+ 1 j3))))))
            (when printable?
              (let ((field-name (vector-ref field-info j3)))
                (c (cons field-name (car fields)))))
            (cdr fields)))
        fields)))))

(def (trivial-json->struct strukt json (defaults_ #f))
  (def defaults (or defaults_ (hash)))
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
      (##structure-set! object v p strukt 'trivial-json-object->struct)))
  (def unbounds
    (with-list-builder (c)
     (for ((p (in-range 1 n)))
       (let ((b? (vector-ref bound? p))
             (slot (vector-ref slots p)))
         (cond
          (b? (void))
          ((hash-key? defaults slot) (##structure-set! object (hash-ref defaults slot) p strukt 'trivial-json-object->struct))
          (else (c slot)))))))
  (unless (null? unbounds)
    (error "unbound fields" unbounds strukt json))
  object)

(defmethod {:json :object}
  trivial-struct->json)
