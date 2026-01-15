;;; -*- Gerbil -*-
;;; © vyzo
;;; string output
(import :std/io/interface
        :std/io/bio/api
        ./io)
(export #t)

(def (to-string obj (buffer-size : :fixnum := very-small-buffer-size))
  (let (env XXX)
    (using (writer (open-buffered-writer #f buffer-size) :- BufferedWriter)
      (writer.format-object obj )
      (get-buffer-output-string-utf8 writer))))
