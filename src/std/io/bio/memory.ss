;;; -*- Gerbil -*-
;;; © vyzo
;;; in memory buffered io
(import :std/error
        ../interface
        ./types
        ./macros
        ./buffer
        ./input
        ./output)
(export #t)
(declare (not safe))

(defrule (__mem-error! where)
  (raise-io-error where "no underlying io device"))

(defrule (__mem-fill-error! arg ...)
  (__mem-error! memory-input-buffer-fill!))
(defrule (__mem-drain-error! arg ...)
  (__mem-error! memory-output-buffer-drain!))
(defrule (__mem-write-error! arg ...)
  (__mem-error! memory-output-buffer-drain!))

(defmethod {fill! memory-input-buffer}
  (lambda (self buf rhi need)
    (__mem-fill-error! self buf rhi need))
  interface: InputBuffer)

(defmethod {close memory-input-buffer}
  void
  interface: InputBuffer)

(defmethod {drain! memory-output-buffer}
  (lambda (self buf whi)
    (__mem-drain-error! self buf whi))
  interface: OutputBuffer)

(defmethod {close memory-output-buffer}
  void
  interface: OutputBuffer)

(def (mem-read (mem          : memory-input-buffer)
               (output       : :u8vector)
               (output-start : :fixnum)
               (output-end   : :fixnum)
               (input-need   : :fixnum))
  => :fixnum
  (__check-buffer-open! mem)
  (__bio-read mem output output-start output-end input-need
              __mem-fill-error! __zero __zero))

(def (mem-read-u8 (mem : memory-input-buffer))
  (__check-buffer-open! mem)
  (__bio-read-u8 mem ___mem-fill-error!))

(def (mem-peek-u8 (mem : memory-input-buffer))
  (__check-buffer-open! mem)
  (__bio-peek-u8 mem __mem-fill-error!))

(def (mem-skip (mem : memory-input-buffer)
               (count :~ nonnegative-fixnum? :- :fixnum))
  => :void
  (__check-buffer-open! mem)
  (__bio-skip-input mem count __zero))

(def (mem-close-input (mem : memory-input-buffer))
  => :void
  (__bio-close-input mem void))

(def (mem-write (mem         : memory-output-buffer)
                 (input       : :u8vector)
                 (input-start :~ (in-range? 0 (u8vector-length u8v))
                              :- :fixnum)
                 (input-end   :~ (in-range-inclusive? start (u8vector-length u8v))
                              :- :fixnum))
  => :fixnum
  (__check-output-open? mem)
  (__bio-write-bytes mem input input-start input-end
                     __mem-drain-error! __mem-write-error! __mem-write-error!))

(def (mem-write-u8 (mem : memory-output-buffer) (u8 :~ byte? :- : :fixnum))
  => :fixnum
  (__check-output-open? mem)
  (__bio-write-u8 mem u8 __mem-drain-error! __mem-write-error!))

(def (mem-flush (mem : memory-output-buffer))
  => :void
  (__check-output-open? mem)
  (void))

(def (mem-close-output (mem : memory-output-buffer))
  => :void
  (__bio-close-output mem void))
