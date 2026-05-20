;;; -*- Gerbil -*-
;;; © vyzo
;;; in memory buffered io
(import :std/error
        :std/interface
        ../interface
        ./types
        ./buffer
        ./cache
        ./macros
        ./input
        ./delimited
        ./output)
(export #t)
(declare (not safe))

(defrule (__mem-error! where)
  (raise-io-error where "no underlying io device"))

(defrule (__mem-fill! input-buffer buf rhi need)
  (if (fx> need 0)
    (raise-premature-end-of-input mem-read)
    0))

(defrule (__mem-read! input-buffer output start end need)
  (if (fx> need 0)
    (raise-premature-end-of-input mem-read)
    0))

(defrule (__mem-drain! output-buffer buf whi)
  (__mem-write! output-buffer buf 0 whi))

(defrule (__mem-write! output-buffer input start end)
  (using (mem output-buffer :- memory-output-buffer)
    (let* ((size        (u8vector-length mem.buf))
           (input-size (fx- end start))
           (new-size   (fx+ size (max input-size size)))
           (new-buf    (buffer-cache.get new-size)))
      (subu8vector-move! input start end new-buf 0)
      (when mem.cached?
        (buffer-cache.put! mem.buf))
      (set! mem.buf new-buf)
      (set! mem.cached? #t)
      input-size)))

(def (mem-read (mem    : memory-input-buffer)
               (output : :u8vector)
               (start  :~ (in-range? 0 (u8vector-length output))
                       :- :fixnum)
               (end    :~ (in-range-inclusive? start (u8vector-length output))
                       :- :fixnum)
               (need   : :fixnum))
  => :fixnum
  (__check-buffer-open! mem-read mem)
  (__bio-read mem output start end need
              __mem-fill! __mem-read! __mem-read))

(def (mem-read-u8 (mem : memory-input-buffer))
  (__check-buffer-open! mem-read-u8 mem)
  (__bio-read-u8 mem __mem-fill!))

(def (mem-peek-u8 (mem : memory-input-buffer))
  (__check-buffer-open! mem-peek-u8 mem)
  (__bio-peek-u8 mem __mem-fill!))

(def (mem-skip (mem : memory-input-buffer)
               (count :~ nonnegative-fixnum? :- :fixnum))
  => :void
  (__check-buffer-open! mem-skip mem)
  (__bio-skip-input mem count __zero))

(def (mem-close-input (mem : memory-input-buffer))
  => :void
  (__bio-close-input mem void))

(def (mem-write (mem   : memory-output-buffer)
                (input : :u8vector)
                (start :~ (in-range? 0 (u8vector-length input))
                       :- :fixnum)
                (end   :~ (in-range-inclusive? start (u8vector-length input))
                       :- :fixnum))
  => :fixnum
  (__check-buffer-open! mem-write mem)
  (__mem-write-bytes mem input start end))

(def (__mem-write-bytes (mem :- memory-output-buffer)
                        (input :- :u8vector)
                        (start :- :fixnum)
                        (end :- :fixnum))
  (__bio-write mem input start end
               __mem-drain! __mem-write! __mem-write-bytes))

(def (mem-write-u8 (mem : memory-output-buffer) (u8 :~ byte? :- :fixnum))
  => :fixnum
  (__check-buffer-open! mem-write-u8 mem)
  (__mem-write-u8! mem u8))

(def (__mem-write-u8! (mem :- memory-output-buffer) (u8 :- :fixnum))
  => :fixnum
  (__bio-write-u8 mem u8 __mem-drain! __mem-write-u8!))

(def (mem-flush (mem : memory-output-buffer))
  => :void
  (__check-buffer-open! mem-flush mem)
  (void))

(def (mem-close-output (mem : memory-output-buffer))
  => :void
  (__bio-close-output mem void void))

(implement
  (Closer
   (memory-input-buffer
    (close __mem-close-input))
   (memory-output-buffer
    (close __mem-close-output)))
  (Reader
   (memory-input-buffer
    (read __mem-read)))
  (PeekableReader
   (memory-input-buffer
    (read-u8 __mem-read-u8)
    (peek-u8 __mem-peek-u8)))
  (BufferedReader
   (memory-input-buffer
    (skip __mem-skip)))
  (Writer
   (memory-output-buffer
    (write __mem-write)))
  (BufferedWriter
   (memory-output-buffer
    (write-u8 __mem-write-u8)
    (flush   __mem-flush)))
  (InputBuffer
   (memory-input-buffer
    (fill!
     (lambda (self buf rhi need)
       (__mem-fill! self buf rhi need)))
    (close void)))
  (OutputBuffer
   (memory-output-buffer
    (drain!
     (lambda (self buf whi)
       (__mem-drain! self buf whi)))
    (close void)))
  (DetachableBuffer
   (memory-output-buffer
    (detach! void))))
