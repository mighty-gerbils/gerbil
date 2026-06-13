;;; -*- Gerbil -*-
;;; © vyzo
;;; predefined log levels
(import :std/iter
        :std/list/walist)
(export CRITICAL
        ERROR
        WARN
        INFO
        DEBUG
        VERBOSE
        string->log-level
        log-level->string
        parse-log-level-string
        set-default-log-levels!
        default-log-level
        user-log-level)

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
   ("critical" CRITICAL)
   ("error" ERROR)
   ("warn" WARN)
   ("info" INFO)
   ("debug" DEBUG)
   ("verbose" VERBOSE)
   (CRITICAL CRITICAL)
   (ERROR ERROR)
   (WARN WARN)
   (INFO INFO)
   (DEBUG DEBUG)
   (VERBOSE VERBOSE)))

(def (string->log-level (str : :string)
                        (default VERBOSE : :fixnum))
  => :fixnum
  (:- (hash-ref __level-map str default) :fixnum))

(def __level-vector
  (vector
   "CRITICAL"
   "ERROR"
   "WARN"
   "INFO"
   "DEBUG"
   "VERBOSE"))

(def (log-level->string (level : :fixnum)) => :string
  (cond
   ((fx< level CRITICAL) "CRITICAL")
   ((fx> level VERBOSE)  "VERBOSE")
   (else
    (let ()
      (declare (not safe))
      (:- (vector-ref __level-vector (fx1+ level)) :string)))))

(def __default-level   0)
(def __user-sources    (hash))
(def __user-subsystems (wanullq))

;; log level initialization string format
;; <level>*(,<system>:<level>)*
(def (parse-log-level-string (str : :string))
  => :values
  (match (string-split str #\,)
    ([level . sources]
     (values
      (hash-ref __level-map level __default-level)
      (map (lambda (spec)
             (match (string-split spec #\:)
               ([source level]
                (cons source
                      (hash-ref __level-map level __default-level)))))
           sources)))))

(def (init-log-levels! (levels : :string))
  (let ((values default sources)
        (parse-log-level-string levels))
    (set! __default-level (: default :fixnum))
    (for ([src . level] sources)
      (if (string-suffix? "/*" src)
        (set! __user-subsystems
          (wacons __user-subsystems
                  (substring src 0 (fx1- (string-length src)))
                  level))
        (hash-put! __user-sources src level)))))

(def __default-log-levels!
  (delay-atomic
   (let (levels (getenv "GERBIL_LOG_LEVEL" #f))
     (when levels
       (init-log-levels! levels)))))

;; set the application default log levels
;; should only be called at initialization
(def (set-default-log-levels! (levels : :string))
  => :void
  (force __default-log-levels!)
  (init-log-levels! levels))

(def (default-log-level) => :fixnum
  (force __default-log-levels!)
  __default-level)

(def (user-log-level (source : :string)) => :fixnum
  (force __default-log-levels!)
  (:- (cond
       ((hash-get __user-sources source))
       ((wagetf __user-subsystems (cut string-prefix? <> source)))
       (else __default-level))
      :fixnum))
