;;; -*- Gerbil -*-
;;; © vyzo
;;; in memory buffered io
(import ../interface
        ./types
        ./input
        ./macros)
(export #t)
(declare (not safe))

XXX

(def (mem-read (mem          : memory-input-buffer)
               (output       : :u8vector)
               (output-start : :fixnum)
               (output-end   : :fixnum)
               (input-need   : :fixnum))
  => :fixnum
  (__check-input-open? mem)
  (__bio-read-bytes mem output output-start output-end input-need
                    __zero __zero __zero))

(def (mem-read-u8 (mem : memory-input-buffer))
  (__check-input-open? mem)
  (__bio-read-u8 mem ___zero))

(def (mem-peek-u8 (mem : memory-input-buffer))
  (__check-input-open? mem)
  (__bio-peek-u8 mem __zero))

(def (mem-skip (mem : memory-input-buffer)
               (count :~ nonnegative-fixnum? :- :fixnum))
  => :void
  (__check-input-open? mem)
  (__bio-skip-input mem count __zero))

(def (mem-input-reset! (mem : memory-input-buffer) (reader : Reader) close?)
  => :void
  (set! mem.rlo 0)
  (set! mem.closed? #f))

(def (mem-input-close (mem : memory-input-buffer))
  (set! mem.closed #f))

(def (mem-write (mem         : memory-output-buffer)
                 (input       : :u8vector)
                 (input-start :~ (in-range? 0 (u8vector-length u8v))
                              :- :fixnum)
                 (input-end   :~ (in-range-inclusive? start (u8vector-length u8v))
                              :- :fixnum))
  => :fixnum
  (defrule (__fail-write! arg ...)
    (__fail-output! mem-write arg ))
  (__check-output-open? mem)
  (__bio-write-bytes mem input input-start input-end
                     __fail-write! __fail-write! __fail-write!))

(def (mem-write-u8 (mem : memory-output-buffer) (u8 :~ byte? :- : :fixnum))
  => :fixnum
  (defrule (__fail-write! arg ...)
    (__fail-output! mem-write-u8 arg ))
  (__check-output-open? mem)
  (__bio-write-u8 mem u8 __fail-write! __fail-write!))

(def (mem-flush (mem : memory-output-buffer))
  => :void
  (defrule (__fail-write! arg ...)
    (__fail-output! mem-flush arg ))
  (__check-output-open? mem)
  (__bio-flush-output snk __fail-write!))

(def (mem-output-reset! (mem : memory-input-buffer) (writer : Writer) close?)
  => :void
  (set! mem.whi 0)
  (set! mem.closed? #f))

(def (sink-close (mem : memory-output-buffer))
  => :void
  (set! mem.closed? #t))
