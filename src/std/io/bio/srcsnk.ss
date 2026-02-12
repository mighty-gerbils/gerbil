;;; -*- Gerbil -*-
;;; © vyzo
;;; source/sink buffered io
(import :std/interface
        ../interface
        ./types
        ./buffer
        ./macros
        ./input
        ./delimited
        ./output)
(export #t)
(declare (not safe))

(defrule (__source-read! input-buffer output start end need)
  (using (src input-buffer :- source-input-buffer)
    (src.reader.read output start end need)))

(defrule (__source-fill! input-buffer buf rhi need)
  (using (src input-buffer :- source-input-buffer)
    (let (read (src.reader.read buf rhi (u8vector-length buf) need))
      (set! src.rhi (fx+ rhi read))
      read)))

(defrule (__source-close! input-buffer)
  (using (src input-buffer :- source-input-buffer)
    (src.reader.close)
    (set! src.reader #f)))

(defrule (__sink-write! output-buffer input start end)
  (using (snk output-bufer :- sink-output-buffer)
    (snk.wrkter.write intput start end)))

(defrule (__sink-drain! output-buffer buf whi)
  (using (snk output-buffer :- sink-output-buffer)
    (snk.writer.write buf 0 whi)
    (__bio-output-consume! snk)))

(defrule (__sink-close! output-buffer)
  (using (snk output-buffer :- sink-output-buffer)
    (snk.writer.close)
    (set! snk.writer #f)))

(def (source-read (src    : source-input-buffer)
                  (output : :u8vector)
                  (start  :~ (in-range? 0 (u8vector-length output))
                          :- :fixnum)
                  (end    :~ (in-range-inclusive? start (u8vector-length output))
                          :- :fixnum)
                  (need   :~ nonnegative-fixnum?
                          :- :fixnum))
  => :fixnum
  (__check-buffer-open! source-read src)
  (__source-read-bytes src output start end need))

(def (__source-read-bytes (src    :- source-input-buffer)
                          (output :- :u8vector)
                          (start  :- :fixnum)
                          (end    :- :fixnum)
                          (need   :- :fixnum))
  => :fixnum
  (__bio-read src output start end need
                    __source-fill!
                    __source-read!
                    __source-read-bytes))

(def (source-read-u8 (src : source-input-buffer))
  (__check-buffer-open! source-read-u8 src)
  (__bio-read-u8 src __source-fill!))

(def (source-peek-u8 (src : source-input-buffer))
  (__check-buffer-open! source-peek-u8 src)
  (__bio-peek-u8 src __source-fill!))

(def (source-skip (src : source-input-buffer)
                  (count :~ nonnegative-fixnum? :- :fixnum))
  => :void
  (__check-buffer-open! source-skip src)
  (__bio-skip-input src count __source-read!))

(def (source-close (src : source-input-buffer))
  => :void
  (__bio-close-input src __source-close!))

(def (sink-write (snk   : sink-output-buffer)
                 (input : :u8vector)
                 (start :~ (in-range? 0 (u8vector-length input))
                        :- :fixnum)
                 (end   :~ (in-range-inclusive? start (u8vector-length input))
                        :- :fixnum))
  => :fixnum
  (__check-buffer-open! sink-write snk)
  (__sink-write-bytes snk input start end))

(def (__sink-write-bytes (snk   :- sink-output-buffer)
                         (input :- :u8vector)
                         (start :- :fixnum)
                         (end   :- :fixnum))
  => :fixnum
  (__bio-write snk input start end
               __sink-drain!
               snk.writer.write
               __sink-write-bytes))

(def (sink-write-u8 (snk : sink-output-buffer) (u8 :~ byte? :- :fixnum))
  => :fixnum
  (__check-buffer-open! sink-write-u8 snk)
  (__sink-write-u8! snk u8))

(def (sink-write-u8! (snk : sink-output-buffer) (u8 : :fixnum))
  (__bio-write-u8 snk u8 __sink-drain! __sink-write-u8!))

(def (sink-flush (snk : sink-output-buffer))
  => :void
  (__check-buffer-open! sink-flush snk)
  (__bio-flush-output snk __sink-drain!))

(def (sink-close (snk : sink-output-buffer))
  => :void
  (__bio-close-output snk __sink-close! __sink-drain!))

(implement
  (Closer
   (source-input-buffer
    (close __source-close))
   (sink-output-buffer
    (close __sink-close)))
  (Reader
   (source-input-buffer
    (read __source-read)))
  (PeekableReader
   (source-input-buffer
    (read-u8 __source-read-u8)
    (peek-u8 __source-peek-u8)))
  (BufferedReader
   (source-input-buffer
    (skip __source-skip)))
  (Writer
   (sink-output-buffer
    (write __sink-write)))
  (BufferedWriter
   (sink-output-buffer
    (write-u8 __sink-write-u8)
    (flush    __sink-flush)))
  (InputBuffer
   (source-input-buffer
    (fill!
     (lambda (self buf rhi need)
       (__source-fill! self buf rhi need)))
    (close
     (lambda (self)
       (__source-close! self)))))
  (OutputBuffer
   (sink-output-buffer
    (drain!
     (lambda (self buf whi)
       (__sink-drain! self buf whi)))
    (close
     (lambda (self)
       (__sink-close! self))))))
