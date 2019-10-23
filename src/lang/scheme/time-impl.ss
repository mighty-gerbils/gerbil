;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme time) library -- implementation details
(import :gerbil/gambit/os)
(export #t)

(begin-foreign
  (c-declare #<<END-C
#include <time.h>
#include <stdio.h>

#ifdef __MACH__
#include <mach/clock.h>
#include <mach/mach.h>

#ifndef CLOCK_MONOTONIC
#define CLOCK_MONOTONIC 0
#endif
#define clock_gettime ffi_clock_gettime

static clock_serv_t ffi_clock_svc;
static int ffi_clock_gettime (int ignore, struct timespec *ts)
{
 mach_timespec_t mts;
 clock_get_time(ffi_clock_svc, &mts);
 ts->tv_sec = mts.tv_sec;
 ts->tv_nsec = mts.tv_nsec;
 return 0;
}
#endif

static long ffi_jiffie_res;
static struct timespec ffi_jiffie_start;
static long ffi_get_jiffies ()
{
 struct timespec ts;

 if (!ffi_jiffie_res)
 {
  goto err;
 }

 int r; r = clock_gettime (CLOCK_MONOTONIC, &ts);
 if (r)
 {
  perror ("clock_gettime");
  goto err;
 }

 return (ts.tv_sec - ffi_jiffie_start.tv_sec) * 1000000000 / ffi_jiffie_res
      + (ts.tv_nsec - ffi_jiffie_start.tv_nsec) / ffi_jiffie_res;

 err:
 return -1;
}
END-C
)

(c-initialize #<<END-C
#ifndef __MACH__

struct timespec ts;
int r = clock_getres (CLOCK_MONOTONIC, &ts);
if (r)
{
 perror ("clock_getres");
 goto err;
}

ffi_jiffie_res = ts.tv_nsec;

r = clock_gettime (CLOCK_MONOTONIC, &ffi_jiffie_start);
if (r)
{
 perror ("clock_gettime");
}

err:

#else

host_get_clock_service(mach_host_self(), REALTIME_CLOCK, &ffi_clock_svc);
ffi_jiffie_res = CLOCK_GET_TIME_RES;

#endif

END-C
)

(define-macro (define-c-lambda id args ret #!optional (name #f))
  (let ((name (or name (##symbol->string id))))
    `(define ,id
       (c-lambda ,args ,ret ,name))))

(define-c-lambda scheme/time-impl#get-jiffies () long
  "ffi_get_jiffies")
(define-c-lambda scheme/time-impl#jiffie-res () long
  "___return (ffi_jiffie_res);")
)

(extern get-jiffies jiffie-res)

(def (current-second)
  (time->seconds (current-time)))

;; not supported by Gambit
(def (current-jiffy)
  (let (jiffies (get-jiffies))
    (if (fxpositive? jiffies)
      jiffies
      (error "Error getting jiffies; something went wrong..."))))

(def (jiffies-per-second)
  (let (res (jiffie-res))
    (if (fxpositive? res)
      (/ 1000000000 res)
      (error "Error determining jiffy resolution; something went wrong..."))))
