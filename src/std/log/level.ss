;;; -*- Gerbil -*-
;;; © vyzo
;;; predefined log levels
(export #t)

;; predefined log levels
(def CRITICAL -1)
(def ERROR     0)
(def WARN      1)
(def INFO      2)
(def DEBUG     3)
(def VERBOSE   4)

(def __level-map
  (hash
   ("CRITICAL" CRITICAL)
   ("ERROR" ERROR)
   ("WARN" WARN)
   ("INFO" INFO)
   ("DEBUG" DEBUG)
   ("VERBOSE" VERBOSE)
   (CRITICAL CRITICAL)
   (ERROR ERROR)
   (WARN WARN)
   (INFO INFO)
   (DEBUG DEBUG)
   (VERBOSE VERBOSE)))

(def (string->log-level (str : :string)) => :fixnum
  (:- (hash-ref __level-map str VERBOSE) :fixnum))

(def __level-vector
  (vector
   "CRITICAL"
   "ERROR"
   "WARN"
   "INFO"
   "DEBUG"
   "VERBOSE"))

(def (log-level->string (level : :fixnum)) => :string
  (if (and (fx>= level CRITICAL) (fx<= level VERBOSE))
    (:- (##vector-ref __level-vector (fx1+ level)) :string)
    "VERBOSE"))

(def __default_log_level 0)
(def __user_log-levels (hash))

(def (__init-log-levels! (lvl : string))
  XXX
  )

(def __default-log-levels!
  (delay-atomic
   (let (lvl (getenv "GERBIL_LOG_LEVEL" #f))
     (when lvl
       (__init-log-levels! lvl)))))

(def (default-log-level) => :fixnum
  (force __default-log-levels!)
  (: (force __default-log-level)
     :fixnum))

(def (user-log-level (source : :symbol)) => :fixnum
  (force __default_log-levels!)
  (:- (hash-ref __user-log-level
                source
                __default-log-level)
      :fixnum))
