;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-42: Eager Comprehensions

(export
  do-ec
  list-ec append-ec
  string-ec string-append-ec
  vector-ec
  sum-ec product-ec
  min-ec max-ec
  any?-ec every?-ec
  first-ec last-ec
  fold-ec fold3-ec
  : :list :string :vector :integers
  :range :real-range :char-range
  :port
  :dispatched
  :do :let :parallel :while :until)

(include "srfi-42.scm")
