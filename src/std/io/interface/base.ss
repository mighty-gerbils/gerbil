;;; -*- Gerbil -*-
;;; © vyzo
;;; base IO interfaces
(export #t)

;; closable io sources and sinks
(interface Closer
  (close) => :void)

;; Cursor-based IO
(interface Seeker
  ;; Seek to a particular position in the backing IO source.
  ;; - position denotes where, relative to `from` that the cursor should be moved to.
  ;;   When `START is supplied, `position` must be positive.
  ;;   When `END` or `CURRENT` is supplied, `position` may be positive or negative
  ;; - from is one of 3 possible origins to seek about. Defaults to `'start`.
  (seek (position : :integer)
        (whence   : :fixnum))
  => :integer)

;; generic binary IO
(interface (Reader Closer)
  ;; read into a buffer; it _must_ be a u8vector.
  ;; - start denotes the start of the read region; it must be a fixnum within the buffer range.
  ;; - end denotes the read region end
  ;; - need denotes the minimum required input; it must be a fixnum
  ;; Returns the number of bytes read; 0 denotes the end of input.
  ;; If less than the needed bytes are read, an io-error is raised.
  (read (u8v    : :u8vector)
        (start  :~ (in-range? 0 (u8vector-length u8v))               :- :fixnum :=  0)
        (end    :~ (in-range-inclusive? start (u8vector-length u8v)) :- :fixnum := (u8vector-length u8v))
        (need   :~  nonnegative-fixnum?                              :- :fixnum :=  0))
  => :fixnum)


(interface (Writer Closer)
  ;; write from a buffer; it _must_ be a u8vector
  ;; - start denotes the start of the write region; it must be a fixnum within the buffer range.
  ;; - end denotes the write region end; #f means the end of the buffer
  ;; Returns the number of bytes written.
  (write (u8v   :  :u8vector)
         (start :~ (in-range? 0 (u8vector-length u8v))               :- :fixnum :=  0)
         (end   :~ (in-range-inclusive? start (u8vector-length u8v)) :- :fixnum := (u8vector-length u8v)))
  => :fixnum)
