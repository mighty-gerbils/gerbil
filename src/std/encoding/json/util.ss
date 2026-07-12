;;; -*- Gerbil -*-
;;; © vyzo
;;; json utilities
(import :std/error
        :std/io
        :std/io/bio/api
        :std/format/ioutil
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

(def (pretty-json obj
                  out: (out (current-output-port))
                  scan: (scan #f)
                  indent: (indent 2)
                  style: (style 'standard)
                  sort-keys: (sort-keys #f))
  ;; standard style is the RFC 8259 / jq style; lisp style is compact Lisp-friendly indentation
  (let (ctx (make-json-write-context scan: scan sort-keys: sort-keys
                                     pretty: style indent: indent))
    (if out
      (write-json out obj ctx)
      (using ((writer (open-buffered-writer #f) : BufferedWriter))
        (write-json-object writer obj ctx)
        (writer.write-newline)
        (utf8->string (get-memory-output-u8vector writer))))))
