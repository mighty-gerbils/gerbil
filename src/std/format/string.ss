;;; -*- Gerbil -*-
;;; © vyzo
;;; string output
(import :std/io
        :std/io/bio/api
        ./io)
(export #t)

(def (to-string obj (buffer-size : :fixnum := very-small-buffer-size)
  (using (writer (open-buffered-writer #f buffer-size) :- BufferedWriter)
    (writer.format-object obj)
    (get-buffer-output-string writer)))
