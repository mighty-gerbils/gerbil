;;; -*- Gerbil -*-
;;; © vyzo
;;; buffered io related caches
(export #t)
(declare (not safe))

(def __expt-cache
  (let (cache (make-vector 64 #f))
    (for-each (lambda (i) (vector-set! cache i (expt 2 (fx+ i 1))))
              (iota 64))
    cache))

(def (__expt-cache-get (len :- :fixnum))
  => :integer
  (cond
   ((fx<= len (vector-length __expt-cache))
    (vector-ref __expt-cache (fx- len 1)))
   (else
    (expt 2 len))))


(def (__buffer-cache.get (size :- :fixnum))
  => u8vector
  XXX)

(def (__buffer_cache.put! (buf :- :u8vector))
  XXX
  )


(def very-small-buffer-size 256)
(def small-buffer-size      1024)
(def default-buffer-size    32768)

(def (get-u8vector-buffer buffer-or-size)
  => :u8vector
  (cond
   ((fixnum? buffer-or-size)
    (__buffer_cache.get buffer-or-size))
   ((u8vector? buffer-or-size)
    buffer-or-size)
   (else
    (raise-bad-argument make-u8vector-buffer "fixnum or u8vector" buffer-or-size))))
