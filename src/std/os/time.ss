;;; -*- Gerbil -*-
;;; © vyzo
;;; time related OS provided functionality
(import :std/ffi
        ./error)
(export #t)

(def (current-system-time-coarse) => timeval
  (let (tv (make-timeval))
    (do-syscall (__gettimeofday rv))
    tv))

(def (current-system-time-precise) => timespec
  (let (ts (make-timespec))
    (do-syscall (__clock_getrealtime ts))
    ts))

(C-ffi-macrology)
(C-include "<errno.h>"
           "<time.h>"
           "<sys/time.h>")

(def-C-struct timespec
  ((sec  ts_sec  :u64)
   (usec ts_nsec :long)))

(def-C-struct timeval
  ((sec  ts_sec  :uint64)
   (usec ts_usec :long)))

(def-C-syscall (__gettimeofday (result :- timeval))
  "gettimeofday(___arg1, NULL)")

(def-C-syscall (__clock_getrealtime (result :- timespec))
  "clock_gettime(CLOCK_REALTIME, ___arg1)")

;; (def-C-code (__gettimeofday (result :- :u8vector))
;;   => :fixnum
;;   "___TRAP_ERRNO(gettimeofday(___U8VECTOR_AS (struct timeval* ___ARG1), NULL))")

;; (def-C-code (__clock_getrealtime (result :- :uvector))
;;   => :fixnum
;;   "___TRAP_ERRNO(clock_gettime(CLOCK_REALTIME., ___U8VECTOR_AS (struct timespec*,___ARG1)))")
