;;; -*- Gerbil -*-
;;; © vyzo
;;; time related OS provided functionality
(import :std/ffi
        ./error)
(export #t)

(def (current-system-time-coarse) => timeval
  (let (tv (make-timeval))
    (do-syscall (__gettimeofday tv))
    tv))

(def (current-system-time-precise) => timespec
  (let (ts (make-timespec))
    (do-syscall (__clock_getrealtime ts))
    ts))

(C-ffi-macrology)
(C-include "<errno.h>"
           "<time.h>"
           "<sys/time.h>")

(def-C-struct timespec)
(def-C-struct timeval)

(def (timespec-tv_sec (ts : timespec))
  => :integer
  (___timespec-tv_sec ts.body))

(def-C-lambda (___timespec-tv_sec (ts : scheme-object))
  => int64
  "___result = ___U8VECTOR_AS(struct timespec*,___ARG1)->tv_sec;")

(def (timespec-tv_nsec (ts : timespec))
  => :integer
  (___timespec-tv_nsec ts.body))

(def-C-lambda (___timespec-tv_nsec (ts : scheme-object))
  => long
  "___result = ___U8VECTOR_AS(struct timespec*,___ARG1)->tv_nsec;")

(def (timeval-tv_sec (tv : timeval))
  => :integer
  (___timeval-tv_sec tv.body))

(def-C-lambda (___timeval-tv_sec (tv : scheme-object))
  => int64
  "___result = ___U8VECTOR_AS(struct timeval*,___ARG1)->tv_sec;")

(def (timeval-tv_usec (tv : timeval))
  => :integer
  (___timeval-tv_usec tv.body))

(def-C-lambda (___timeval-tv_usec (tv : scheme-object))
  => long
  "___result = ___U8VECTOR_AS(struct timeval*,___ARG1)->tv_usec;")

(def-C-syscall (__gettimeofday (result :- timeval))
  "gettimeofday(___arg1, NULL)")

(def-C-syscall (__clock_getrealtime (result :- timespec))
  "clock_gettime(CLOCK_REALTIME, ___arg1)")
