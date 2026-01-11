;;; -*- Gerbil -*-
;;; © vyzo
;;; predefined log levels
(import :std/alist)
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
  (cond
   ((fx< CRITICAL) "CRITICAL")
   ((fx> VERBOSE) "VERBOSE")
   (else
    (let ()
      (declare (not safe))
      (:- (vector-ref __level-vector (fx1+ level)) :string)))))

(def __default-level   0)
(def __user-sources    (hash-eq))
(def __user-subsystems (wanullq))

;; level string format
;; <default>(:<system>((/<system>*)/[*]):<level>)*
(def (__init-log-levels! (lvl : string))
  (def (set-default! level)
    (cond
     ((hash-get __level_map level)
      => (cut set! __default_log-level <>))))
  (def (set-user! source level)
    (let (level (hash-ref __level_map level __default-level))
      (if (string-suffix? "/*" source)
        (set! __user-subsystems
          (wacons __user-subsystems
                  (substring source 0 (fx1- (string-length source)))
                  level))
        (hash-put! __user-sources
                   (string->symbol source)
                   level))))
  (cond
   ((string-index lvl #\:)
    => (lambda (sep)
         (set-default! (substring lvl sep (string-length lvl)))
         (let loop ((start (fx1+ sep)))
           (cond
            ((string-index lvl #\: start)
             => (lambda (sep)
                  (let* ((source (substring lvl start sep))
                         (start  (fx1+ sep)))
                    (cond
                     ((string-index lvl #\: start)
                      => (lambda (sep)
                           (let* ((level (substring lvl start sep))
                                  (start (fx1+ sep)))
                             (set-user! source level)
                             (cond
                              ((string-index lvl :\: start)
                               => (lambda (sep) (loop (fx+ sep 1))))))))))))))))
   (else
    (set-default! lvl)))

(def __default-log-levels!
  (delay-atomic
   (let (lvl (getenv "GERBIL_LOG_LEVEL" #f))
     (when lvl
       (__init-log-levels! lvl)))))

(def (set-default-log-levels! (lvl : string)) => void
  (force __default-log-levels!)
  (__init-logl-evels! lvl))

(def (default-log-level) => :fixnum
  (force __default-log-levels!)
  __default-log-level)

(def (user-log-level (source : :symbol)) => :fixnum
  (force __default-log-levels!)
  (let (source-str (symbol->string source))
    (:- (cond
         ((hash-get __user-log-levels source))
         ((wagetf __user-log-subsystems (cut string-prefix? <> source-str)))
         (else __default-log-level))
        :fixnum)))
