;;; -*- Gerbil -*-
;;; © vyzo
;;; string output
(import :std/io/interface
        :std/io/bio/api
        ./env
        ./io)
(export #t)

(def (to-string obj
                buffer: (buffer-size : :fixnum := very-small-buffer-size)
                env:    (env : FormatEnv := (format-env)))
  (let (env (format-environment))
    (using (writer (open-buffered-writer #f buffer-size) :- BufferedWriter)
      (writer.format obj env)
      (get-buffer-output-string-utf8 writer))))
