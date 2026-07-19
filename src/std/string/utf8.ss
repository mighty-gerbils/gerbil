;;; -*- Gerbil -*-
;;; © vyzo
;;; string utf8 utilities
(import :std/error)
(export #t)

(def (string-utf8-length (str : :string)
                         (start  :~ (in-range? 0 (string-length str))               :- :fixnum :=  0)
                         (end    :~ (in-range-inclusive? start (string-length str)) :- :fixnum := (string-length str)))
  => :fixnum
  (: (##string->utf8-length str start end)
     :fixnum))

(def (utf8-char-length (char : :char))
  => :fixnum
  (let (c (char->integer char))
    (cond
     ((fx<= c #x7f)   1)
     ((fx<= c #x7ff)  2)
     ((fx<= c #xffff) 3)
     (else 4))))
