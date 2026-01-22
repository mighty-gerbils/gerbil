;;; -*- Gerbil -*-
;;; © vyzo
;;; string output
(import :std/io/interface
        :std/io/bio/api
        ./env
        ./io)
(export #t)

(interface Stringer
  (to-string) => :string)

(def (to-string obj) => :string
  (__object-to-string obj))

(def (format-object-to-string obj
                              buffer: (buffer-size : :fixnum := very-small-buffer-size)
                              env:    (env : FormatEnv := (format-env)))
  (let (env (format-environment))
    (using (writer (open-buffered-writer #f buffer-size) :- BufferedWriter)
      (writer.format obj env)
      (get-buffer-output-string-utf8 writer))))

(defwriter-ext (format-object-to-string writer obj (env : FormatEnv))
  XXX
  )

(defwriter-ext (format-object-to-string/quote writer obj (env : FormatEnv))
  XXX
  )

(defcall-interface-method/fallback Stringer to-string
  (__object-to-string obj)
  (lambda (obj)
    (fomat-object-to-string obj))
  :- :string)

(defmethod {to-string :sting}
  identity
  interface: Stringer)

(defmethod {to-string :symbol}
  ##symbol->to-string
  interface: Stringer)

(defmethod {to-string :keyword}
  keyword->to-string
  interface: Stringer)
