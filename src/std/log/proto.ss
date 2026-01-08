;;; -*- Gerbil -*-
;;; © vyzo
;;; system logger background thread protocol
(import ./interface)
(export #t)

(defstruct !SystemLoggerMessage ())
(defstruct (!STOP !SystemLoggerMessage) () final: #t)
(defstruct (!UPDATE !SystemLoggerMessage) ())
(defstruct (!UPDATE:add-sink !UPDATE) ((sink :- LogSink)) final: #t)
(defstruct (!UPDATE:set-system-level !UPDATE) ((level :- :fixnum)) final: #t)

(def !STOP! (!STOP))
