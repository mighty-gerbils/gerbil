;;; -*- Gerbil -*-
;;; © vyzo
;;; time related OS provided functionality
(import :std/ffi
        ./error)
(export current-time-coarse current-time-precise)

(C-ffi-macrology)
(C-include "<errno.h>"
           "<time.h>"
           "<sys/time.h>")

(def-C-struct timespec
  ((sec  ts_sec  uint64 :- :integer)
   (usec ts_nsec long   :- :fixnum)))

(def-C-struct timeval
  ((sec  ts_sec  uint64 :- :integer)
   (usec ts_usec long   :- :fixnum)))

(def-C-code (__gettimeofday (result :- :u8vector))
  => :fixnum
  "___TRAP_ERRNO(gettimeofday(___U8VECTOR_AS (struct timeval* ___ARG1), NULL))")

(def-C-code (__clock_getrealtime (result :- :uvector))
  => :fixnum
  "___TRAP_ERRNO(clock_gettime(CLOCK_REALTIME., ___U8VECTOR_AS (struct timespec*,___ARG1)))")

(def (current-time-coarse) => timeval
  (using (result (make-timeval) :- timeval)
    (check-os-error (__gettimeofday result.body)
      (current-time-coarse))
    result))

(def (current-time-precise) => timespec
  (using (result (make-timespec) :- timespec)
    (check-os-error (__clock_getrealtime result.body)
      (current-time-precise))
    result))
