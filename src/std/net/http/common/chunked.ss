;;; -*- Gerbil -*-
;;; © vyzo
;;; HTTP chunked reader and writer
(export open-chunked-reader
        open-chunked-writer)
(import :std/error
        :std/interface
        :std/io
        :std/io/bio/buffer
        :std/iter
        ./ioutil)
(declare (mostly-fixnum))

(defstruct chunked-reader
  ((reader    :- BufferedReader) ; underlying reader
   (remaining :- :integer)       ; bytes remaining in current chunk
   (first     :- :boolean)       ; if its the first chunk, no leading \r\n
   (last      :- :boolean))      ; if its the last chunk
  transparent: #f
  final: #t)

(defstruct chunked-writer
  ((writer :- BufferedWriter)
   (last   :- :boolean))
  transparent: #f
  final: #f)

(def (open-chunked-reader (reader : BufferedReader))
  => Reader
  (Reader (make-chunked-reader reader 0 #t #f)))

(def (open-chunked-writer (writer : BufferedWriter))
  => Writer
  (Writer (make-chunked-writer writer #f)))

(def (chunked-reader-read (self   : chunked-reader)
                          (buffer : :u8vector)
                          (start  : :fixnum)
                          (end    : :fixnum)
                          (need   : :fixnum))
  (let loop ((start start :- :fixnum)
             (need  need  :- :fixnum)
             (read  0     :- :fixnum))
    => :fixnum
    (let (want (fx- end start))
      (cond
       ((fx= want 0)
        read)
       (self.last
        (if (fx> need 0)
          (raise-premature-end-of-input chunked-reader-read)
          read))
       ((>= self.remaining want)
        (let (rd (self.reader.read buffer start end need))
          (cond
           ((fx> rd 0)
            (set! self.remaining
              (- self.remaining rd))
            (fx+ read rd))
           ((fx> need 0)
            (raise-premature-end-of-input chunked-reader-read))
           (else read))))
       ((> self.remaining 0)
        (let (rd (self.reader.read buffer start (fx+ start self.remaining) need))
          (cond
           ((fx> rd 0)
            (set! self.remaining
              (- self.remaining rd))
            (loop (fx+ start rd)
                  (fxmax (fx- need rd) 0)
                  (fx+ read rd)))
           ((fx> need 0)
            (raise-premature-end-of-input chunked-reader-read))
           (else read))))
       (else
        (read-next-chunk! self)
        (loop start need read))))))

(def (chunked-writer-write (self   : chunked-writer)
                           (buffer : :u8vector)
                           (start  : :fixnum)
                           (end    : :fixnum))
  (when self.last
    (raise-io-closed chunked-writer-write "last chunk has been written"))
  (if (fx< start end)
    (begin
      (write-chunk-length! self (fx- end start))
      (self.writer.write buffer start end)
      (write-newline! self.writer)
      (self.writer.flush)
      (fx- end start))
    0))


(def (chunked-writer-close (self : chunked-writer))
  => :void
  (unless self.last
    (let (writer self.writer)
      (chunked-writer-detach! self)
      (BufferedWriter-close writer))))

(def (chunked-writer-detach! (self : chunked-writer))
  => :void
  (unless self.last
    (set! self.last #t)
    (write-chunk-length! self 0)
    (self.writer.flush)
    (set! self.writer #f)))

(implement
  (Closer
   (chunked-reader
    (close
     (lambda (self)
       (self.reader.close))))
   (chunked-writer
    (close __chunked-writer-write)))
  (Reader
   (chunked-reader
    (read __chunked-reader-read)))
  (Writer
   (chunked-writer
    (write __chunked-writer-write)))
  (DetachableBuffer
   (chunked-writer
    (detach! __chunked-writer-detach!))))

(def (read-next-chunk! (self : chunked-reader))
  (when self.last
    (raise-io-error read-next-chunk! "last chunk consumed"))
  (if self.first
    (set! self.first #f)
    (read-newline! self))
  (let (len (read-chunk-length! self))
    (set! self.remaining len)
    (when (= len 0)
      (set! self.last #t))))

(def (read-newline! (self : chunked-reader))
  (consume-newline! self.reader))

(def (read-next! (self : chunked-reader) (token : :fixnum))
  (consume-next-token! self.reader token))

(def (read-chunk-length! (self : chunked-reader))
  => :integer
  (let loop ((result 0 :- :integer) (gits 0 :- :fixnum))
    => :integer
    (let (next (self.reader.read-u8))
      (cond
       ((fx> gits max-chunk-size-digits)
        (raise-io-error read-next-chunk! "chunk size too large"
                        digits: gits))
       ((eof-object? next)
        (raise-premature-end-of-input read-next-chunk!))
       ((##vector-ref __chunk-digits->int next)
        => (lambda (int)
             (loop (bitwise-ior (arithmetic-shift result 4) int)
                   (fx+ gits 1))))
       ((eq? next (@int #\return))
        (read-next! self (@int #\newline))
        result)
       (else
        (raise-io-error read-next-chunk! "unexpected token"
                        token: next))))))

(def (write-chunk-length! (self : chunked-writer) (len : :fixnum))
  => :void
  (self.writer.write-string-utf8 (number->string len 16))
  (write-newline! self.writer))

(def max-chunk-size-digits 16) ; 64 bits

(def __chunk-digits->int
  (let (vec (make-vector 256 #f))
    (for (i (in-range 0 10))
      (vector-set! vec (fx+ #x30 i) i))
    (for (i (in-range 10 16))
      (vector-set! vec (fx+ #x41 i -10) i)
      (vector-set! vec (fx+ #x61 i -10) i))
    vec))
