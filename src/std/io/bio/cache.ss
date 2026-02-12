;;; -*- Gerbil -*-
;;; © vyzo
;;; buffered io related caches
(import :std/error
        :std/interface
        :std/iter
        :std/cache
        :std/sync/spinlock)
(export #t)
(declare (not safe))

(defstruct (ExptCache Cache)
  ((expts :- :vector))
  final: #t)

(implement CacheOps ExptCache
  (size
   (lambda (self)
     (do-with-spin-lock self.lock : :fixnum
       (for/fold (r 0) (e self.expts)
         (unless (immediate? e) (fx+ r 1))))))
  (flush!
   (lambda (self)
     (do-with-spin-lock self.lock
       (for (i (in-range 64))
         (let (e (vector-ref self.expts i))
           (unless (immediate? e)
             (vector-set! self.expts i #f))))))))

(def __expt-cache
  (ExptCache '/system/cache/bio/expt (SpinLock) (make-vector 64 #f)))

(global-cache-register! __expt-cache)

(def (expt-cache.get (len :- :fixnum))
  => :integer
  (using (cache __expt-cache : ExptCache)
    (do-with-spin-lock cache.lock :- :integer
      (if (fx<= len (vector-length cache.expts))
        (let (index (fx- len 1))
          (cond
           ((vector-ref cache.expts index))
           (else
            (let (e (expt 2 len))
              (vector-set! cache.expts index e)
              e)))
          (expt 2 len))))))

(defstruct (BufferCache Cache)
  ((caches         :- :vector)
   (max-cache-size :- :fixnum))
  final: #t)

(implement CacheOps BufferCache
  (size
   (lambda (self)
     (do-with-spin-lock self.lock :- :fixnum
       (for/fold (r 0) (cache (in-vector self.caches) when cache :- ObjectCache)
         (fx+ r (__cache-size cache))))))
  (flush!
   (lambda (self)
     (do-with-spin-lock self.lock :- :fixnum
       (for (cache (in-vector self.caches) when cache :- ObjectCache)
         (__cache-flush! cache))))))

(def __buffer-cache
  (BufferCache '/system/cache/bio/buffer (SpinLock)
               (make-vector 64 #f)
               DEFAULT-OBJECT-CACHE-SIZE))

(global-cache-register! __buffer-cache)

(def (buffer-cache.get (size : :fixnum))
  => :u8vector
  (let* ((bits   (integer-length size))
         (bucket (fx- bits 1)))
    (let again ((bucket bucket)
                (bucket-size (fxshift 1 bucket)))
      (if (fx< bucket-size size)
        (again (fx+ bucket 1) (fxshift bucket-size 1))
        (using (cache __buffer-cache :- BufferCache)
          (cond
           ((do-with-spin-lock cache.lock
              (and (fx< bucket (vector-length cache.caches))
                   (vector-ref cache.caches bucket)))
            => (lambda ((ocache :- ObjectCache))
                 => :u8vector
                 (:- (object-cache-get ocache) :u8vector)))
           (else
            (make-u8vector size))))))))

(def (buffer-cache.put! (buf : :u8vector))
  => :void
  (let* ((size   (u8vector-length buf))
         (bits   (integer-length size))
         (bucket (fx- bits 1)))
    (let again ((bucket bucket)
                (bucket-size (fxshift 1 bucket)))
      (if (fx< bucket-size size)
        (again (fx+ bucket 1) (fxshift bucket-size 1))
        (using (cache __buffer-cache :- BufferCache)
          (do-with-spin-lock cache.lock
            (when (fx< bucket (vector-length cache.caches))
              (cond
               ((vector-ref cache.caches bucket)
                => (lambda ((ocache :- ObjectCache))
                     (object-cache-put! ocache buf)))
               (else
                (let (ocache
                      (ObjectCache (make-symbol "system/cache/bio/buffer/" size)
                                   (SpinLock)
                                   []
                                   0
                                   cache.max-cache-size
                                   (lambda () (make-u8vector bucket-size))
                                   (lambda (buf)
                                     (when (fx> (u8vector-length buf) bucket-size)
                                       (u8vector-shrink! buf bucket-size))
                                     (u8vector-fill! buf 0 0 bucket-size))))
                  (vector-set! cache.caches bucket ocache)
                  (object-cache-put! ocache buf)))))))))))

(def very-small-buffer-size 256)
(def small-buffer-size      1024)
(def default-buffer-size    32768)

(def (get-u8vector-buffer buffer-or-size)
  => :u8vector
  (cond
   ((fixnum? buffer-or-size)
    (buffer-cache.get buffer-or-size))
   ((u8vector? buffer-or-size)
    buffer-or-size)
   (else
    (raise-bad-argument make-u8vector-buffer "fixnum or u8vector" buffer-or-size))))
