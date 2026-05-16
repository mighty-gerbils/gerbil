;;; -*- Gerbil -*-
;;; © vyzo
;;; buffered reader extension methods
(import :std/error
        ../interface
        ./types
        ./macros
        ./buffer
        ./input
        ./cache)
(export #t)
(declare (not safe))

(defwriter-ext (write-u16 writer (uint : :fixnum))
  (writer.write-uint uint 2))
(defwriter-ext (write-s16 writer (int  : :fixnum))
  (writer.write-sint int 2))
(defwriter-ext (write-u32 writer (uint : :integer))
  (writer.write-uint uint 4))
(defwriter-ext (write-s32 writer (int  : :integer))
  (writer.write-sint int 4))
(defwriter-ext (write-u64 writer (int  : :integer))
  (writer.write-uint int 8))
(defwriter-ext (write-s64 writer (int  : :integer))
  (writer.write-sint int 8))

(defwriter-ext (write-uint writer (uint : :integer) (len : :fixnum))
  (if (is-output-buffer-instance? writer)
    (using (bio (&interface-instance-object writer) :- basic-output-buffer)
      (__check-buffer-open! bio)
      (if (fx<= len (u8vector-length bio.buf))
        (__bio-write-uint bio uint len)
        (__bio-write-uint-generic writer uint len)))
    (__bio-write-uint-generic writer uint len)))

(def (bio-write-uint (bio : basic-output-buffer) (uint : :integer) (len : :fixnum))
  => :fixnum
  (let* ((buf bio.buf)
         (buflen (u8vector-length buf)))
    (let again ()
      => :fixnum
      (let* ((whi bio.whi)
             (whi+len (fx+ whi len)))
        (cond
         ((fx< whi+len buflen)
          (let loop ((whi whi :- :fixnum)
                     (shift (fx- (fxarithmetic-shift-left len 3) 8) :- :fixnum))
            => :fixnum
            (if (fx< whi whi+len)
              (let (u8 (bitwise-and (arithmetic-shift uint (fx- shift)) #xff))
                (u8vector-set! buf whi u8)
                (loop (fx+ whi 1) (fx- shift 8)))
              (begin
                (__bio-output-advance! bio whi+len)
                len))))
         (else
          (__bio-output-buffer-drain! bio buf whi)
          (again)))))))

(def (bio-write-uint-generic (writer : BufferedWriter) (uint : :integer) (len : :fixnum))
  => :fixnum
  (let loop ((i 0 :- :fixnum)
             (shift (fx- (fxarithmetic-shift-left len 3) 8) :- :fixnum))
    => :fixnum
    (if (fx< i len)
      (let (u8 (bitwise-and (arithmetic-shift uint (fx- shift)) #xff))
        (writer.write-u8 u8)
        (loop (fx+ i 1) (fx- shift 8)))
      len)))

(defwriter-ext (write-sint writer (int : :integer) (len : :fixnum))
  (writer.write-uint (complement-output int len) len))

(def (complement-output (int : :integer) (len : :fixnum))
  => :integer
  (if (< int 0)
    (let (bits (fxarithmetic-shift-left len 3))
      (+ (__expt-cache-get bits) int))
    int))

(defwriter-ext (write-varuint writer (uint : :integer) (max-bits 64 : :fixnum))
  (when (fx> (integer-length uint) max-bits)
    (raise-io-error write-varuint "varuint max bits exceeded"))
  (if (is-output-buffer-instance? writer)
    (using (bio (&interface-instance-object reader) :- basic-output-buffer)
      (__check-buffer-open! bio)
      (if (fx<= (fx/ max-bits 8) (u8vector-length bio.buf))
        (__bio-write-varuint bio uint max-bits)
        (__bio-write-varuint-generic writer uint max-bits)))
    (__bio-write-varuint-generic writer uint max-bits)))

(def (bio-write-varuint (bio : basic-output-buffer) (uint : :integer) (max-bits : :fixnum))
  => :fixnum
  (let* ((buf bio.buf)
         (buflen (u8vector-length buf)))
    (let loop ((whi bio.whi :- :fixnum) (uint uint :- :integer) (wrote 0 :- :fixnum))
      => :fixnum
      (cond
       ((fx< whi buflen)
        (if (> uint #x7f)
          (let (limb (fxior (bitwise-and uint #x7f) #x80))
            (u8vector-set! buf whi limb)
            (loop (fx+ whi 1) (arithmetic-shift uint -7) (fx+ wrote 1)))
          (begin
            (u8vector-set! buf whi uint)
            (__bio-output-advance bio whi)
            (fx+ wrote 1))))
       (else
        (__bio-output-buffer-drain! bio buf whi)
        (loop bio.whi uint wrote))))))

(def (bio-write-varuint-generic (writer : Writer) (uint : :integer) (max-bits : :fixnum))
  => :fixnum
  (let loop ((uint uint :- :integer) (wrote 0 :- :fixnum))
    => :fixnum
    (if (> uint #x7f)
      (let (limb (fxior (bitwise-and uint #x7f) #x80))
        (writer.write-u8 limb)
        (loop (arithmetic-shift uint -7) (fx+ wrote 1)))
      (begin
        (writer.write-u8 uint)
        (fx+ wrote 1)))))

(defwriter-ext (write-varint writer (int : :integer) (max-bits 64 : :fixnum))
  (let* ((signed (< int 0))
         (uint
          (if signed
            (bitwise-not int)
            int))
         (uint
          (arithmetic-shift uint 1))
         (uint
          (if signed
            (bitwise-ior uint 1)
            uint)))
    (writer.write-varuint uint max-bits)))

(defwriter-ext (write-char-utf8 writer (char : :char))
  (if (is-output-buffer-instance? writer)
    (using (bio (&interface-instance-object reader) :- basic-input-buffer)
      (__check-buffer-open! bio)
      (if (fx<= 4 (u8vector-length bio.buf))
        (__bio-write-char-utf8 bio char)
        (__bio-write-char-utf8-generic writer char)))
    (__bio-write-char-utf8-generic writer char)))

(def (bio-write-char-utf8 (bio : basic-output-buffer) (char : char))
  => :fixnum
  (let (c (char->integer char))
    (let* ((buf bio.buf)
           (buflen (u8vector-length buf)))
      (let again ((whi bio.whi))
        (cond
         ((fx<= c #x7f)
          (if (fx< whi buflen)
            (begin
              (u8vector-set! buf whi c)
              (let (whi (fx+ whi 1))
                (__bio-output-advance! bio whi)
                1))
            (begin
              (__bio-output-drain! bio buf whi)
              (again bio.whi))))
         ((fx<= c #x7ff)
          (let (whi+1 (fx+ whi 1))
            (if (fx< whi+1 buflen)
              (let ((b1 (fxior #xc0 (fxarithmetic-shift-right c 6)))
                    (b2 (fxior #x80 (fxand c #x3f))))
                (u8vector-set! buf whi b1)
                (u8vector-set! buf whi+1 b2)
                (let (whi (fx+ whi+1 1))
                  (__bio-output-advance! bio whi)
                  2))
              (begin
              (__bio-output-drain! bio buf whi)
              (again bio.whi)))))
         ((##fx<= c #xffff)
          (let ((whi+1 (fx+ whi 1))
                (whi+2 (fx+ whi 2)))
            (if (fx< whi+2 buflen)
              (let ((b1 (fxior #xe0 (fxarithmetic-shift-right c 12)))
                    (b2 (fxior #x80 (fxand (fxarithmetic-shift-right c 6) #x3f)))
                    (b3 (fxior #x80 (fxand c #x3f))))
                (u8vector-set! buf whi b1)
                (u8vector-set! buf whi+1 b2)
                (u8vector-set! buf whi+2 b3)
                (let (whi (fx+ whi+2 1))
                  (__bio-output-advance! bio whi)
                  3))
              (begin
              (__bio-output-drain! bio buf whi)
              (again bio.whi)))))
         (else                          ; max char is #x10ffff
          (let ((whi+1 (fx+ whi 1))
                (whi+2 (fx+ whi 2))
                (whi+3 (fx+ whi 3)))
            (if (fx< whi+3 buflen)
              (let ((b1 (fxior #xf0 (fxarithmetic-shift-right c 18)))
                    (b2 (fxior #x80 (fxand (fxarithmetic-shift-right c 12) #x3f)))
                    (b3 (fxior #x80 (fxand (fxarithmetic-shift-right c 6) #x3f)))
                    (b4 (fxior #x80 (fxand c #x3f))))
                (u8vector-set! buf whi b1)
                (u8vector-set! buf whi+1 b2)
                (u8vector-set! buf whi+2 b3)
                (u8vector-set! buf whi+3 b4)
                (let (whi (fx+ whi+3 1))
                  (__bio-output-advance! bio whi)
                  4))
              (begin
              (__bio-output-drain! bio buf whi)
              (again bio.whi))))))))))

(def (bio-write-char-utf8-generic (writer : Writer) (char : :char))
  => :fixnum
  (let (c (char->integer char))
    (cond
     ((fx<= c #x7f)
      (writer.write-u8 c))
     ((fx<= c #x7ff)
      (let ((b1 (fxior #xc0 (fxarithmetic-shift-right c 6)))
            (b2 (fxior #x80 (fxand c #x3f))))
        (writer.write-u8 b1)
        (writer.write-u8 b2)
        2))
     ((##fx<= c #xffff)
      (let ((b1 (fxior #xe0 (fxarithmetic-shift-right c 12)))
            (b2 (fxior #x80 (fxand (fxarithmetic-shift-right c 6) #x3f)))
            (b3 (fxior #x80 (fxand c #x3f))))
        (writer.write-u8 b1)
        (writer.write-u8 b2)
        (writer.write-u8 b3)
        3))
     (else                              ; max char is #x10ffff
      (let ((b1 (fxior #xf0 (fxarithmetic-shift-right c 18)))
            (b2 (fxior #x80 (fxand (fxarithmetic-shift-right c 12) #x3f)))
            (b3 (fxior #x80 (fxand (fxarithmetic-shift-right c 6) #x3f)))
            (b4 (fxior #x80 (fxand c #x3f))))
        (writer.write-u8 b1)
        (writer.write-u8 b2)
        (writer.write-u8 b3)
        (writer.write-u8 b4)
        4)))))

(defwriter-ext (write-string-utf8 writer
                                  (str   : :string)
                                  (start 0
                                         :~ (in-range? 0 (string-length str))
                                         :- :fixnum)
                                  (end   (string-length str)
                                         :~ (in-range-inclusive? start (string-length str))
                                         : :fixnum))
  => :fixnum
  (if (is-output-buffer-instance? writer)
    (using (bio (&interface-instance-object writer) :- basic-output-buffer)
      (__check-buffer-open! bio)
      (if (fx<= len (u8vector-length bio.buf))
        (__bio-write-string-utf8 bio str start end)
        (__bio-write-string-utf8-generic writer str start end)))
    (__bio-write-string-utf8-generic writer str start end)))

(defrule (__bio-output-write-string output str start end __write-char)
  (let loop ((i start :- :fixnum) (result 0 :- :fixnum))
    => :fixnum
    (if (fx< i end)
      (let (wrote (__write-char output (string-ref str i)))
        (lp (fx+ i 1) (fx+ result wrote)))
      result)))

(def (bio-write-string-utf8 (bio   : basic-input-buffer)
                            (str   : :string)
                            (start : :fixnum)
                            (end   : :fixnum))
  => :fixnum
  (__bio-output-write-string bio str start end __bio-write-char-utf8))

(def (bio-write-string-utf8-generic (writer : Writer)
                                    (str    : :string)
                                    (start  : :fixnum)
                                    (end    : :fixnum))
  => :fixnum
  (__bio-output-write-string bio str start end __bio-write-char-utf8-generic))

(defwriter-ext (write-line-utf8 writer (str : :string) (separator #\newline : :t))
  (if (is-output-buffer-instance? writer)
    (using (bio (&interface-instance-object writer) :- basic-output-buffer)
      (__check-buffer-open! bio)
      (if (fx<= len (u8vector-length bio.buf))
        (__bio-write-line-utf8 bio str start separator)
        (__bio-write-line-utf8-generic writer str separator)))
    (__bio-write-line-utf8-generic writer str separator)))

(defrule (__bio-output-write-line output str separator __write-string __write-char)
  (let (result (__write-string output str))
    (if (char? separator)
      (let (wrote (__write-char output separator))
        (fx+ result wrote))
      (let loop ((rest separator) (result result :- :fixnum))
        => :fixnum
        (match rest
          ([char . rest]
           (using (char : :char)
             (let (wrote (__write-char char))
               (lp rest (fx+ result wrote)))))
          (else result))))))

(def (bio-write-line-utf8 (bio : basic-output-buffer) (str : :string) (separator #\newline : :t))
  => :fixnum
  (__bio-output-write-line bio str separator __bio-write-string-utf8 __bio-write-char-utf8))

(def (bio-write-line-utf8-generic (writer : Writer) (str : :string) (separator #\newline : :t))
  => :fixnum
  (__bio-output-write-line writer str separator __bio-write-string-utf8-generic __bio-write-char-utf8-generic))
