;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Simple example that uses the auto-export prelude
prelude: :tutorial/lang/auto-export

;; everything is automagically exported, so no export directive needed
(def (greet x)
  (displayln "hello " x))
