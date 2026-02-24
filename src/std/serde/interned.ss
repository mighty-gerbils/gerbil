;;; -*- Gerbil -*-
;;; © vyzo
;;; serialization interned represntation
(import :std/interface
        :std/cache
        :std/sync/spinlock
        :std/io/interface
        :std/io/bio/api)

(defstruct (InternedReprCache Cache)
  (table)
  final: #t)

(defclass interned-symbolic-repr
  ((format        :- :u8vector)
   (format/quote  :- :u8vector)
   (format/string :- :u8vector))
  final: #t)

(implement CacheOps InternedReprCache
  (size
   (lambda (self)
     (do-with-spin-lock self.lock :- :fixnum (raw-table-length self.table))))
  (flush!
   (lambda (self)
     (do-with-spin-lock self.lock (raw-table-clear! self.table)))))

(def __interned-symbolic-repr
  (InternedReprCache 'sys/serde/interned
                     (SpinLock)
                     (make-symbolic-table #f 0)))

(global-cache-register! __interned-symbolic-repr)

(defsyntax-case do-write-interned-symbolic ()
  ((writer obj write-method slot)
   (with-identifiers ((writer.write       #'writer #'writer ".write")
                      (repr               '$repr)
                      (repr.slot           #'repr #'repr "." #'slot)
                      (buffer             '$buffer)
                      (buffer.write-method #'buffer #'buffer "." #'write-method))
     (with-syntax ((slot-key (symbol->keyword (stx-e #'slot))))
       #'(cond
          ((do-with-spin-lock __interned-symbolic-repr.lock
             (symbolic-table-ref __interned-symbolic-repr.table obj #f))
           => (lambda ((repr :- interned-symbolic-repr))
                => :fixnum
                 (if repr.slot
                   (writer.write repr.slot)
                   (using (buffer (open-buffered-writer #f very-small-buffer-size)
                                  :- BufferedWriter)
                     (buffer.write-method obj)
                     (let (bytes (get-memory-output-u8vector buffer))
                       ;; it's ok if we overwrite a concurrent write
                       (set! repr.slot bytes)
                       (writer.write bytes))))))
          (else
           (using (buffer (open-buffered-writer #f very-small-buffer-size)
                          :- BufferedWriter)
             (buffer.write-method obj)
             (let* ((bytes (get-memory-output-u8vector buffer))
                    (repr  (interned-symbolic-repr slot-key bytes)))
               (do-with-spin-lock __interned-symbolic-repr.lock
                 (cond
                  ((symbolic-table-ref __interned-symbolic-repr.table obj #f)
                   => (lambda ((repr :- interned-symbolic-repr))
                        (set! repr.slot bytes)))
                  (else
                   (symbolic-table-set! __interned-symbolic-repr obj repr)))))
             (writer.write bytes))))))))
