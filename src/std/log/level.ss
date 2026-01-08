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
  (:- (hash-ref __level-map stx) :fixnum))

(def __level-vector
  (vector
   "CRITICAL"
   "ERROR"
   "WARN"
   "INFO"
   "DEBUG"
   "VERBOSE"))

(def (log-level->string (level : :fixnum)) => :string
  (:- (vector-ref __level-vector (fx1+ level)) :string))

(def __default-log-level
  (delay-atomic
   (let (lvl (getenv "GERBIL_LOG_LEVEL" #f))
     (if lvl
       (string->log-level lvl)
       ERROR))))

(def (default-log-level) => :fixnum
  (:- (force __default-log-level)
      :fixnum))
