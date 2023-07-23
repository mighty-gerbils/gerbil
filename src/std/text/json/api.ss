;;; -*- Gerbil -*-
;;; ̧© vyzo
;;; json api
(import :gerbil/gambit/ports
        :std/io
        :std/text/utf8
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
   ((BufferedReader? input)
    (read-json-object/buffer input (make-env)))
   (else
    (error "Bad input source; expected input port or BufferedReader" input))))

(def (string->json-object str)
  (read-json-object/buffer (open-string-buffered-reader str) (make-env)))

(def (write-json obj (output (current-output-port)))
  (cond
   ((output-port? output)
    (write-json-object/port obj output (make-env))
    (force-output output))
   ((BufferedWriter? output)
    (write-json-object/buffer obj output (make-env)))
   ((Writer? output)
    (let (output (open-buffered-writer output))
      (write-json-object/buffer obj output (make-env))
      (&BufferedWriter-flush output)))
   (else
    (error "Bad output sink; expected output port, Writer or BufferedWriter" output))))

(def (json-object->string obj)
  (let (buffer (open-u8vector-buffered-writer))
    (write-json-object/buffer obj buffer (make-env))
    (&BufferedWriter-flush buffer)
    (utf8->string (get-buffer-output-u8vector buffer))))
