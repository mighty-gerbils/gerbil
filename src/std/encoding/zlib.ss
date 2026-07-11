;;; -*- Gerbil -*-
;;; © vyzo
;;; zlib ffi and io interfaces
(export open-inflate-reader
        open-deflate-writer
        open-deflate-gz-writer
        compress
        compress-gz
        uncompress)
(import :std/ffi
        :std/error
        :std/interface
        :std/io
        :std/io/bio/cache
        :std/io/bio/buffer)

(defstruct zlib-stream
  ((zstream :- :foreign)
   (buffer  :- :u8vector)
   (lo      :- :fixnum)
   (hi      :- :fixnum)
   (closed? :- :boolean))
  transparent: #f)

(defstruct (zlib-writer zlib-stream)
  ((writer   :- Writer)
   (buffered :- BufferedWriter)
   (flush    :- :fixnum)))

(defstruct (zlib-buffered-writer zlib-stream)
  ((writer :- BufferedWriter)))

(defstruct (zlib-reader zlib-stream)
  ((reader :- Reader)))

(deferror-class ZLibError () zlib-error?)
(defraise/context (raise-zlib-error where message irritants ...)
  (ZLibError message irritants: [irritants ...]))

(defsyntax-case with-zlib-error ()
  ((_ (prim zs arg ...) ok ...)
   (with-syntax ((($arg ...) (gentemps #'(arg ...))))
     #'(let (($arg arg) ...)
         (let (result (prim zs $arg ...))
           (if (or (fx= result ok) ...)
             result
             (raise-zlib-error where (z_stream_msg zs) result 'prim zs $arg ...)))))))

(def (__open-deflate (zstream :- :foreign)
                     (writer  :- Writer)
                     (buffer-size :- :fixnum)
                     (flush :- :fixnum))
  => Writer
  (let (buffer (buffer-cache.get buffer-size))
    (Writer
     (zlib-writer zstream buffer 0 (u8vector-length buffer) #f
                  writer
                  (try-BufferedWriter writer)
                  flush))))

(def (__open-inflate (zstream :- :foreign)
                     (reader  :- Reader)
                     (buffer-size :- :fixnum))
  => Reader
  (let (buffer (buffer-cache.get buffer-size))
    (Reader
     (zlib-reader zstream buffer 0 0 #f
                  reader))))

(def (open-deflate-writer (writer      : Writer)
                          (buffer-size : :fixnum := default-buffer-size)
                          gzip:        (gzip?       : :boolean := #f)
                          compression: (compression : :fixnum := Z_DEFAULT_COMPRESSION)
                          flush:       (flush?      : :boolean := #f))
  => Writer
  (let (zstream (check-pointer open-deflate-writer (make_z_stream)))
    (if gzip?
      (with-zlib-error (deflateInit_gz zstream compression) Z_OK)
      (with-zlib-error (deflateInit zstream compression) Z_OK))
    (__open-deflate zstream writer buffer-size
                    (if flush? Z_SYNC_FLUSH Z_NO_FLUSH))))

(def (open-deflate-gz-writer (writer      : Writer)
                             (buffer-size : :fixnum := default-buffer-size)
                             compression: (compression : :fixnum := Z_DEFAULT_COMPRESSION))
  => Writer
  (open-deflate-writer writer buffer-size
                       gzip: #t
                       compression: compression))

(def (open-inflate-reader (reader : Reader)
                          (buffer-size : :fixnum := default-buffer-size))
  => Reader
  (let (zstream (check-pointer open-inflate-reader (make_z_stream)))
    (with-zlib-error (inflateInit zstream) Z_OK)
    (__open-inflate zstream reader buffer-size)))

(def (compress (data : :u8vector)
               gzip:        (gzip? : :boolean := #f)
               compression: (compression : :fixnum := Z_DEFAULT_COMPRESSION))
  => :u8vector
  (let (output-buffer (open-buffered-writer #f (u8vector-length data)))
    (using (writer (open-deflate-writer output-buffer
                                        gzip: gzip?
                                        compression: compression)
                   : Writer)
      (writer.write data)
      (buffer-detach! writer))
    (get-memory-output-u8vector output-buffer)))

;; same compression algorithm as compress (LZ77) but different
;; wrapping.  evolutionary gzip came to existence coz compress
;; was patented, long time ago.
(def (compress-gz (data : :u8vector)
                  compression: (compression : :fixnum := Z_DEFAULT_COMPRESSION))
  => :u8vector
  (compress data gzip: #t compression: compression))

(def (uncompress (data : :u8vector))
  => :u8vector
  (let* ((input-buffer (open-buffered-reader data))
         (reader (open-inflate-reader input-buffer)))
      (read-all-from-reader reader)))

(defsyntax-case do-close ()
  ((_ self fini ...)
   (with-identifiers ((self.closed? #'self #'self ".closed?")
                      (self.zstream #'self #'self ".zstream")
                      (self.buffer #'self #'self ".buffer"))
     #'(unless self.closed?
         (set! self.closed? #t)
         fini ...
         (foreign-release! self.zstream)
         (set! self.zstream #f)
         (buffer-cache.put! self.buffer)
         (set! self.buffer #f)))))

(defsyntax-case check-closed!()
  ((_ where self)
   (with-identifier (self.closed? #'self #'self ".closed?")
     #'(when self.closed?
         (raise-io-closed where "zlib stream have been closed")))))

(def (zlib-read (self   : zlib-reader)
                (output : :u8vector)
                (start  : :fixnum)
                (end    : :fixnum)
                (need   : :fixnum))
  (check-closed! zlib-read self)
  (: (let/cc return
       (let loop ((start start :- :fixnum)
                  (need  need  :- :fixnum)
                  (count 0     :- :fixnum))
         (unless (fx< start end)
           (return count))
         ;; fetch data if needed
         (when (fx= self.lo self.hi)
           (set! self.lo 0)
           (set! self.hi 0)
           (let (rd (self.reader.read self.buffer))
             (if (fx= rd 0)
               (if (fx> need 0)
                 (raise-premature-end-of-input zlib-read)
                 (return count))
               (set! self.hi rd))))
         ;; decode some
         (let* ((want   (fx- end start))
                (have   (fx- self.hi self.lo))
                (icount (z_stream_total_in self.zstream))
                (ocount (z_stream_total_out self.zstream))
                (result (with-zlib-error
                         (inflate self.zstream
                                  output start want
                                  self.buffer self.lo have
                                  Z_SYNC_FLUSH)
                         Z_OK Z_STREAM_END))
                (read   (fx- (z_stream_total_in self.zstream) icount))
                (wrote  (fx- (z_stream_total_out self.zstream) ocount))
                (remain (z_stream_avail_in self.zstream)))
           (set! self.lo (fx+ self.lo read))
           (cond
            ((fx= result Z_OK)
             (cond
              ((fx= remain 0)
               ;; all input was used
               (fx+ count wrote))
              (else
               (loop (fx+ start wrote)
                     (fx- need wrote)
                     (fx+ count wrote)))))
            ((fx= result Z_STREAM_END)
             (let ((need  (fx- need wrote))
                   (count (fx+ count wrote)))
               (if (fx> need 0)
                 (raise-premature-end-of-input zlib-read)
                 count)))
            (else
             (BUG "unexpected inflate result" result))))))
     :fixnum))

(def (zlib-write (self  : zlib-writer)
                 (input : :u8vector)
                 (start : :fixnum)
                 (end   : :fixnum))
  (check-closed! zlib-write self)
  (: (let/cc return
       (let loop ((start start :- :fixnum)
                  (count 0     :- :fixnum))
         (unless (fx< start end)
           (return count))

         ;; encode some
         (let* ((want   (fx- end start))
                (icount (z_stream_total_in self.zstream))
                (ocount (z_stream_total_out self.zstream))
                (result (with-zlib-error
                         (deflate self.zstream
                           self.buffer 0 self.hi
                           input start want
                           self.flush)
                         Z_OK))
                (read   (fx- (z_stream_total_in self.zstream) icount))
                (wrote  (fx- (z_stream_total_out self.zstream) ocount))
                (remain (z_stream_avail_out self.zstream)))
           (cond
            ((fx= result Z_OK)
             (when (fx> wrote 0)
               (self.writer.write self.buffer 0 wrote))
             (cond
              ((fx= remain 0)
               ;; all output was used
               (loop (fx+ start read)
                     (fx+ count read)))
              (else
               (fx+ count read))))
            (else
             (BUG "unexpected deflate result" result))))))
     :fixnum))

(def (zlib-write-finish (self : zlib-writer))
  (let again ()
    (let* ((ocount (z_stream_total_out self.zstream))
           (result (with-zlib-error
                    (deflate self.zstream
                      self.buffer 0 self.hi
                      '#u8() 0 0
                      Z_FINISH)
                    Z_OK Z_STREAM_END))
           (wrote  (fx- (z_stream_total_out self.zstream) ocount)))
      (when (fx> wrote 0)
        (self.writer.write self.buffer 0 wrote)
        (again))))
  (when self.buffered
    (self.buffered.flush)))

(implement
  (Closer
   (zlib-reader
    (close
     (lambda (self)
       (do-close self
                 (ignore-errors (self.reader.close))
                 (report-errors
                  (with-zlib-error (inflateEnd self.zstream)
                                   Z_OK))))))
   (zlib-writer
    (close
     (lambda (self)
       (unless self.closed?
         (zlib-write-finish self))
       (do-close self
                 (ignore-errors (self.writer.close))
                 (report-errors
                  (with-zlib-error (deflateEnd self.zstream)
                                   Z_OK)))))))
  (Reader
   (zlib-reader
    (read __zlib-read)))
  (Writer
   (zlib-writer
    (write __zlib-write)))
  (DetachableBuffer
   (zlib-writer
    (detach!
     (lambda (self)
       (unless self.closed?
         (zlib-write-finish self))
       (do-close self
                 (report-errors
                  (with-zlib-error (deflateEnd self.zstream)
                                   Z_OK))))))))

(C-ffi-macrology)
(C-include "<stdlib.h>"
           "<string.h>"
           "<zlib.h>")

(C-declare #<<END-C
static z_stream *ffi_zlib_make_z_stream ()
{
 z_stream *zs = (z_stream *)malloc (sizeof (z_stream));
 if (zs) {
  memset (zs, 0, sizeof (z_stream));
 }
 return zs;
}

static int ffi_zlib_inflate (z_stream *zs, ___SCMOBJ dest, int dstart, int dcount, ___SCMOBJ src, int start, int count, int flush)
{
 zs->next_out = U8_DATA (dest) + dstart;
 zs->avail_out = dcount;
 zs->next_in = U8_DATA (src) + start;
 zs->avail_in = count;
 return inflate (zs, flush);
}

static int ffi_zlib_deflate (z_stream* zs, ___SCMOBJ dest, int dstart, int dcount, ___SCMOBJ src, int start, int count, int flush)
{
 zs->next_out = U8_DATA (dest) + dstart;
 zs->avail_out = dcount;
 zs->next_in = U8_DATA (src) + start;
 zs->avail_in = count;
 return deflate (zs, flush);
}
END-C
)

(def-C-const*
  Z_OK
  Z_STREAM_ERROR
  Z_STREAM_END
  Z_NEED_DICT
  Z_NO_COMPRESSION
  Z_BEST_SPEED
  Z_BEST_COMPRESSION
  Z_DEFAULT_COMPRESSION
  Z_FINISH
  Z_NO_FLUSH
  Z_SYNC_FLUSH
  Z_BLOCK
  Z_TREES)

(def-C-type/pointer z_stream release: "ffi_free")

(def-C-lambda make_z_stream () z_stream*
  "ffi_zlib_make_z_stream")

(def-C-lambda z_stream_total_in (z_stream*) unsigned-long
  "___return (___arg1->total_in);")
(def-C-lambda z_stream_total_out (z_stream*) unsigned-long
  "___return (___arg1->total_out);")
(def-C-lambda z_stream_avail_in (z_stream*) unsigned-long
  "___return (___arg1->avail_in);")
(def-C-lambda z_stream_avail_out (z_stream*) unsigned-long
  "___return (___arg1->avail_out);")
(def-C-lambda z_stream_msg (z_stream*) char-string
  "___return (___arg1->msg);")

(def-C-lambda inflateInit (z_stream*) int
  "___return (inflateInit2 (___arg1, MAX_WBITS + 32));")
(def-C-lambda inflate (z_stream* scheme-object int int scheme-object int int int) int
  "ffi_zlib_inflate")
(def-C-lambda inflateEnd (z_stream*) int)
(def-C-lambda deflateInit (z_stream* int) int
  "deflateInit")
(def-C-lambda deflateInit_gz (z_stream* int) int
  "___return (deflateInit2 (___arg1, ___arg2, Z_DEFLATED, MAX_WBITS + 16, MAX_MEM_LEVEL, Z_DEFAULT_STRATEGY ));")
(def-C-lambda deflate (z_stream* scheme-object int int scheme-object int int int) int
  "ffi_zlib_deflate")
(def-C-lambda deflateEnd (z_stream*) int
  "deflateEnd")
(def-C-lambda deflateBound (z_stream* unsigned-long) unsigned-long
  "deflateBound")
