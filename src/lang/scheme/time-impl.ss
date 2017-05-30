;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme time) library -- implementation details
package: scheme

(import :scheme/stubs
        :gerbil/gambit)
(export #t)

(begin-foreign
  (c-declare #<<END-C
#include <time.h>
static long ffi_jiffie_res;
static struct timespec ffi_jiffie_start;
static long ffi_get_jiffies ()
{
 struct timespec ts;

 if (!ffi_jiffie_res)
 {
  goto err;
 }
        
 int r = clock_gettime (CLOCK_MONOTONIC, &ts);
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

