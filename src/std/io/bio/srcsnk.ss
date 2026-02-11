;;; -*- Gerbil -*-
;;; © vyzo
;;; source/sink buffered io
(import ../interface
        ./types
        ./buffer
        ./input
        ./output)
(export #t)
(declare (not safe))

(defrule (__source-fill! input-buffer buf rhi need)
  (using (src input-buffer :- source-input-buffer)
    (let (read (src.reader.read buf rhi (u8vector-length buf) need))
      (set! src.rhi (fx+ rhi read))
      read)))

(defrule (__source-close! input-buffer)
  (using (src input-buffer :- source-input-buffer)
    (src.reader.close)
    (set! src.reader #f)))

(defrule (__sink-drain! output-buffer buf whi)
  (using (bio output-buffer :- source-output-buffer)
    (snk.writer.write buf 0 whi)
    (__bio-output-consume! bio)))

(defrule (__sink-close! output-buffer)
  (using (snk output-buffer :- source-output-buffer)
    (snk.writer.close)
    (set! snk.writer #f)))

(defmethod {fill! source-input-buffer}
  (lambda (self buf rhi need)
    (__source-fill! self buf rhi need))
  interface: InputBuffer)

(defmethod {close source-input-buffer}
  (lambda (self)
    (__source-close! self))
  interface: InputBuffer)

(defmethod {drain! sink-output-buffer}
  (lambda (self buf whi)
    (__source-drain! self buf whi))
  interface: OutputBuffer)

(defmethod {close sink-output-buffer}
  (lambda (self)
    (__sink-close! self))
  interface: OutputBuffer)

(def (source-read (src          : source-input-buffer)
                  (output       : :u8vector)
                  (output-start :~ (in-range? 0 (u8vector-length u8v))
                                :- :fixnum)
                  (output-end   :~ (in-range-inclusive? output-start (u8vector-length u8v))
                                :- :fixnum)
                  (input-need   :~ nonnegative-fixnum?
                                :- :fixnum))
  => :fixnum
  (__check-buffer-open! src)
  (__source-read-bytes src output output-start output-end input-need))

(def (__source-read-bytes (src          :- source-input-buffer)
                          (output       :- :u8vector)
                          (output-start :- :fixnum)
                          (output-end   :- :fixnum)
                          (input-need   :- :fixnum))
  => :fixnum
  (__bio-read src output output-start output-end input-need
                    __source-fill!
                    src.reader.read
                    __source-read-bytes))

(def (source-read-u8 (src : source-input-buffer))
  (__check-buffer-open! src)
  (__bio-read-u8 src __source-fill!))

(def (source-peek-u8 (src : source-input-buffer))
  (__check-buffer-open! src)
  (__bio-peek-u8 src __source-fill!))

(def (source-skip (src : source-input-buffer)
                  (count :~ nonnegative-fixnum? :- :fixnum))
  => :void
  (__check-buffer-open! src)
  (__bio-skip-input src count src.reader.read))

(def (source-close (src : source-input-buffer))
  => :void
  (__bio-close-input src __source-close!))

(def (sink-write (snk         : sink-output-buffer)
                 (input       : :u8vector)
                 (input-start :~ (in-range? 0 (u8vector-length u8v))
                              :- :fixnum)
                 (input-end   :~ (in-range-inclusive? start (u8vector-length u8v))
                              :- :fixnum))
  => :fixnum
  (__check-buffer-open! snk)
  (__sink-write-bytes snk input input-start input-end))

(def (__sink-write-bytes (snk         :- sink-output-buffer)
                         (input       :- :u8vector)
                         (input-start :- :fixnum)
                         (input-end   :- :fixnum))
  => :fixnum
  (__bio-write snk input input-start input-end
               __sink-drain!
               snk.writer.write
               __sink-write-bytes))

(def (sink-write-u8 (snk : sink-output-buffer) (u8 :~ byte? :- : :fixnum))
  => :fixnum
  (__check-buffer-open! snk)
  (__sink-write-u8! snk))

(def (sink-write-u8! (snk : sink-output-buffer) (u8 : :fixnum))
  (__bio-write-u8 snk u8 __sink-drain! __sink-write-u8!))

(def (sink-flush (snk : sink-output-buffer))
  => :void
  (__check-buffer-open! snk)
  (__bio-flush-output snk __sink-drain!))

(def (sink-close (snk : sink-output-buffer))
  => :void
  (__bio-close-output snk __sink-close! __sink-drain!))
