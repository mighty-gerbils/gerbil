;;; -*- Gerbil -*-
;;; ̧© vyzo
;;; json api
(import :gerbil/gambit/ports
        :std/io
        ./env
        ./input
        ./output)
(export read-json write-json
        string->json-object json-object->string
        json-symbolic-keys json-list-wrapper json-sort-keys)

(def (read-json (input (current-input-port)))
  (cond
   ((input-port? input)
    (read-json-object/port input (make-env)))
   ((is-BufferedStringReader? input)
    (read-json-object/reader (BufferedStringReader input) (make-env)))
   ((is-BufferedReader? input)
    (read-json-object/buffer (BufferedReader input) (make-env)))
   (else
    (error "Bad input source; expected input port, BufferedStringReader or BufferedReader instance" input))))

(def (string->json-object str)
  (read-json-object/reader (open-buffered-string-reader str) (make-env)))

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
    (&BufferedStringWriter-flush buffer)
    (get-buffer-output-string buffer)))
