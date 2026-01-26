;;; -*- Gerbil -*-
;;; © vyzo
;;; time related OS provided functionality
(import :std/foreign
        ./error)
(export current-time-coarse current-time-precise)

;; Note: POSIX requires that time_t is an integer; POSIX.1-2024 requires
;;       that it is at least 64 bit long
;; But we don't know the exact sizes, it is system dependent.
;; Also note tv_usec/tv_nsec fields are long, which means annoyance when it
;; comes to determining  the exact size and layout of the record.
;; Also note that we don't want to be generating foreign objects, as those are
;; reference counted and handled by the bump allocator and moving gc, so they
;; can cause fragmentation... let's avoid this, getting the current time is a
;; very frequent operation, that goes throught he VDSO.
(def (current-time-coarse) => :pair
  (let (result (make-timestruct))
    (check-os-error (_gettimeofday result)
      (current-time-coarse))
    (time-from-timestruct result)))

(def (current-time-precise) => :pair
  (let (result (make-timestruct))
    (check-os-error (_clock_gettime CLOCK_REALTIME result)
      (current-time-precise))
    (time-from-timestruct result)))

(def (make-timestruct)
  (make-u8vector sizeof-timestruct))

(def (time-from-timestruct tm) => :pair
  (cons (timestruct-sec tm)
        (timestruct-subsec tm)))

(begin-ffi (_gettimeofday _gettimeofday _clock_gettime _clock_gettime CLOCK_REALTIME
            sizeof-timestruct timestruct-sec timestruct-subsec)
  (c-declare #<<END-C
#include <time.h>
#include <sys/time.h>

static int64_t ffi_time_timestruct_sec(___SCMOBJ res)
{
 struct timespec *tm = (struct timespec*)U8_DATA(res);
 return tm->tv_sec;
}

static long ffi_time_timestruct_subsec(___SCMOBJ res)
{
 struct timespec *tm = (struct timespec*)U8_DATA(res);
 return tm->tv_nsec;
}

static int ffi_time_gettimeofday(___SCMOBJ res)
{
 return gettimeofday((struct timeval*)U8_DATA(res), NULL);
}

static int ffi_time_clock_gettime(int clockid, ___SCMOBJ res)
{
  return clock_gettime(clockid, (struct timespec*)U8_DATA(res));
}
END-C
)

  (define-const CLOCK_REALTIME)

  (define sizeof-timestruct
    ((c-lambda () size_t "sizeof(struct timespec);")))

  (define-c-lambda timestruct-sec (scheme-object) int64
    "ffi_time_timestruct_sec")
  (define-c-lambda timestruct-sec (scheme-object) long
    "ffi_time_timestruct_subsec")

  (define-c-lambda __gettimeofday (scheme-object) int
    "ffi_time_gettimeofday")
  (define-c-lambda __clock_gettime (int scheme-object) int
    "ffi_time_clock_gettime")

  (define-with-errno _gettimeofday __gettimeofday (result))
  (define-with-errno _clock_getttime __clock_gettime (clockid result)))
