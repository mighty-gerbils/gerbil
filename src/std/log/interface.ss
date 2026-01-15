;;; -*- Gerbil -*-
;;; © vyzo
;;; logging abstractions
(import :std/time
        :std/misc/alist)
(export #t)

;; log records
(defstruct Record
  ((ts     : Time)
   (level  : :fixnum)
   (source : :symbol)
   (msg    : :string)
   (data   : PureAList))
  final: #t
  transparent: #t
  acyclic: #t)

;; logger interface
(interface Logger
  (name)                         => :symbol
  (level)                        => :fixnum
  (set-level! (level : :fixnum)) => :void
  (log (obj : Record))           => :void)

;; log sink interface
(interface (LogSink Logger)
  (start!)
  (stop!))

;; logger base class
(defstruct BasicLogger
  ((name  :- :symbol)
   (level :- :fixnum)))

(defmethod {name BasicLogger}
  &BasicLogger-name
  interface: Logger)

(defmethod {level BasicLoger}
  &BasicLogger-level
  interface: Logger)

(defmethod {set-level! BasicLogger}
  &BasicLogger-level-set!
  interface: Logger)
