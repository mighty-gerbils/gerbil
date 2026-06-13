;;; -*- Gerbil -*-
;;; © vyzo
;;; logging abstractions
(import :std/time/precise
        :std/list/walist)
(export #t)

;; log records
(defstruct Record
  ((ts     : CoarseTime)
   (level  : :fixnum)
   (source : :string)
   (msg    : :string)
   (data   : PureAList))
  final: #t)

;; logger interface
(interface Logger
  (name)                         => :string
  (level)                        => :fixnum
  (set-level! (level : :fixnum)) => :void
  (log (obj : Record))           => :void)

;; log sink interface
(interface (LogSink Logger)
  (start!)
  (stop!))

;; logger base class
(defstruct BasicLogger
  ((name  :- :string)
   (level :- :fixnum)))

(defmethod {name BasicLogger}
  &BasicLogger-name
  interface: Logger)

(defmethod {level BasicLogger}
  &BasicLogger-level
  interface: Logger)

(defmethod {set-level! BasicLogger}
  &BasicLogger-level-set!
  interface: Logger)

;; log directory
(def current-log-directory
  (make-parameter #f))

(def (log-directory)
  => :string
  (cond
   ((current-log-directory)
    => (cut : <> :string))
   (else
    (path-expand "log" (gerbil-path)))))
