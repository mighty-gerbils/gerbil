;;; -*- Gerbil -*-
;;; © vyzo
;;; format object writers and scanners
(import :gerbil/runtime/mop
        :std/io/interface
        :std/io/bio/api
        ./io
        ./ioutil)
(export #t)

;; standard objects
(defformatter :object (format-object writer obj env)
  XXX
  )

(defformatter :string (format-string writer str env)
  (if env.display?
    (writer.write-string str)
    (let* ((wr (writer.write-squote))
           (wr (fx+ wr (writer.write-string str)))
           (wr (fx+ wr (writer.write-squote))))
      wr)))

(defformatter :symbol (format-symbol writer sym env)
  (writer.write-symbol sym))

(defformatter :keyword (format-keyword writer key env)
  (if env.display?
    (writer.write-keyword key)
    (let* ((wr (writer.write-keyword key))
           (wr (fx+ wr (writer.write-colon))))
      wr)))
