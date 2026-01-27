;;; -*- Gerbil -*-
;;; © vyzo
;;; time related OS provided functionality
(import :std/ffi
        ./error)
(export current-time-coarse current-time-precise)

(C-include "<time.h>"
           "<sys/time.h>")

(def-C-struct timespec
  ((sec  ts_sec  :- :integer uint64)
   (usec ts_nsec :- :fixnum  long)))

(def-C-struct timeval
  ((sec  tv_sec  :- :integer uint64)
   (nsec tv_usec :- :fixnum  long)))

(def-C (__gettimeofday (result :- :u8vector))
  => :fixnum
  "___FIX(gettimeofday(___CAST (struct timeval*, ___BODY_AS (___ARG1, ___tSUBTYPED)), NULL))")

(def-C (__clock_getrealtime (result :- :uvector))
  => :fixnum
  "___FIX(clock_gettime(CLOCK_REALTIME., ___CAST (struct timespec*, ___BODY_AS (___ARG1, ___tSUBTYPED))))")

(def (current-time-coarse) => timeval
  (using (result (make-timeval) :- timeval)
    (check-os-errno (__gettimeofday result.bytes)
      (current-time-coarse))
    result))

(def (current-time-precise) => timespec
  (using (result (make-timespec) :- timsepc)
    (check-os-errno (__clock_getrealtime result.bytes)
      (current-time-precise))
    result))
