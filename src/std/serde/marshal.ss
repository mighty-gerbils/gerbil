;;; -*- Gerbil -*-
;;; © vyzo
;;; binary serialization marshaller
(import :std/error
        :std/interface
        :std/io/interface
        :std/io/bio/api
        :std/string/utf8
        ./interface
        ./scan
        ./scanner
        ./serialize
        ./binary)
(export #t)

(defstruct MarshalEnv
  ((max-integer-bits     :- :fixnum)
   (hvector-write-packed :- :procedure))
  final: #t)

(def (marshal-context dag:         (dag?                  : :boolean := #f)
                      allow-class: (allow-class?          : :procedure := (lambda (x) #t) )
                      max-integer-bits: (max-integer-bits : :fixnum := 16384))
  => WriteContext
  (WriteContext
   (ScanContext (not dag?) #t #f)
   (WriteTraits (MarshalEnv max-integer-bits #f))
   allow-class?))

(def (marshal (obj : :t) (ctx (marshal-context) : WriteContext))
  => :u8vector
  (using (writer (open-buffered-writer #f small-buffer-size)
                 : BufferedWriter)
    (writer.serialize obj ctx)
    (get-memory-output-u8vector writer)))

(implement WriteTraits MarshalEnv
  (write-delimiter
   (lambda (self writer ctx) 0))
  (write-field-delimiter
   (lambda (self writer ctx) 0))
  (write-anchor-begin
   (lambda (self writer id ctx)
     (do-write (wr 0)
       (writer.write-u8 anchor-tag)
       (writer.write-varuint id)
       wr)))
  (write-anchor-end
   (lambda (self writer ctx) 0))
  (write-reference
   (lambda (self writer id ctx)
     (do-write (wr 0)
       (writer.write-u8 reference-tag)
       (writer.write-varuint id)
       wr)))
  (write-object-begin
   (lambda (self writer ctx)
     (writer.write-u8 object-begin-tag)))
  (write-object-end
   (lambda (self writer ctx)
     (writer.write-u8 object-end-tag)))
  (write-list-begin
   (lambda (self writer ctx)
     (writer.write-u8 list-begin-tag)))
  (write-list-end
   (lambda (self writer ctx)
     (writer.write-u8 list-end-tag)))
  (write-pair-delimiter
   (lambda (self writer ctx)
     (writer.write-u8 list-tail-tag)))
  (write-class
   (lambda (self writer klass ctx)
     (do-write (wr 0)
       (writer.write-u8 class-tag)
       (writer.serialize (symbol->string (##type-id klass)) ctx)
       wr)))
  (write-slot
   (lambda (self writer slot ctx)
     (writer.serialize (symbol->string slot) ctx)))
  (write-char
   (lambda (self writer char ctx)
     (do-write (wr 0)
       (writer.write-u8 char-tag)
       (writer.write-char-utf8 char)
       wr)))
  (write-boolean
   (lambda (self writer bool ctx)
     (let (tag (if bool true-tag false-tag))
       (writer.write-u8 tag))))
  (write-special
   (lambda (self writer atom ctx)
     (let (tag
           (cond
            ((void? atom)            void-tag)
            ((eof-object? atom)      eof-tag)
            ((unbound-object? atom)  unbound-tag)
            ((unbound2-object? atom) unbound2-tag)
            ((unused-object? atom)   unused-tag)
            ((deleted-object? atom)  deleted-tag)
            ((absent-object? atom)   absent-tag)
            ((dssl-key? atom)        key-tag)
            ((dssl-optional? atom)   optional-tag)
            ((dssl-rest? atom)       rest-tag)
            (else
             (raise-contract-violation marshal-special
                                       (special? atom)
                                       atom))))
       (writer.write-u8 tag))))
  (write-integer
   (lambda (self writer int ctx)
     (cond
      (self.hvector-write-packed
       (:- (self.hvector-write-packed writer int) :fixnum))
      ((> int 0)
       (do-write (wr 0)
         (writer.write-u8 uint-tag)
         (writer.write-varuint int self.max-integer-bits)
         wr))
      (else
       (do-write (wr 0)
         (writer.write-u8 sint-tag)
         (writer.write-varint int self.max-integer-bits)
         wr)))))
  (write-flonum
   (lambda (self writer float ctx)
      (if self.hvector-write-packed
        (:- (self.hvector-write-packed writer float) :fixnum)
        (do-write (wr 0)
          (writer.write-u8 float64-tag)
          (writer.write-f64 float)
          wr))))
  (write-ratnum
   (lambda (self writer num ctx)
     (do-write (wr 0)
       (writer.write-u8 ratnum-tag)
       (writer.serialize (##ratnum-numerator num) ctx)
       (writer.serialize (##ratnum-denominator num) ctx)
       wr)))
  (write-cpxnum
   (lambda (self writer num ctx)
     (do-write (wr 0)
       (writer.write-u8 cpxnum-tag)
       (writer.serialize (##cpxnum-real num) ctx)
       (writer.serialize (##cpxnum-imag num) ctx)
       wr)))
  (write-symbol
   (lambda (self writer sym ctx)
     (let* ((str (symbol->string sym))
            (len (string-utf8-length str)))
       (do-write (wr 0)
         (writer.write-u8 symbol-tag)
         (writer.write-varuint len)
         (writer.write-string-utf8 str)
         wr))))
  (write-keyword
   (lambda (self writer key ctx)
     (let* ((str (keyword->string key))
            (len (string-utf8-length str)))
       (do-write (wr 0)
         (writer.write-u8 keyword-tag)
         (writer.write-varuint len)
         (writer.write-string-utf8 str)
         wr))))
  (write-string
   (lambda (self writer str ctx)
     (let (len (string-utf8-length str))
       (do-write (wr 0)
         (writer.write-u8 string-tag)
         (writer.write-varuint len)
         (writer.write-string-utf8 str)
         wr))))
  (write-vector-begin
   (lambda (self writer vec ctx)
     (let (len (vector-length vec))
       (do-write (wr 0)
         (writer.write-u8 vector-tag)
         (writer.write-varuint len)
         wr))))
  (write-vector-end
   (lambda (self writer ctx) 0))
  (write-hvector-begin
   (lambda (self writer vec ctx)
     (let* ((tag (hvector-tag vec))
            (len (hvector-length vec))
            (write-packed (hvector-write-packed-proc vec)))
       (set! self.hvector-write-packed write-packed)
       (do-write (wr 0)
         (writer.write-u8 tag)
         (writer.write-varuint len)
         wr))))
  (write-hvector-end
   (lambda (self writer ctx)
     (set! self.hvector-write-packed #f)
     0))
  (write-values-begin
   (lambda (self writer vec ctx)
     (let (len (##values-length vec))
       (do-write (wr 0)
         (writer.write-u8 values-tag)
         (writer.write-varuint len)
         wr))))
  (write-values-end
   (lambda (self writer ctx) 0))
  (write-box-begin
   (lambda (self writer ctx)
     (writer.write-u8 box-tag)))
  (write-box-end
   (lambda (self writer ctx) 0))
  (write-hash-table
   (lambda (self writer ht ctx)
     (let ((klass (class-of (&interface-instance-object ht)))
           (size  (ht.length)))
       (do-write (wr 0)
         (writer.write-u8 hash-table-tag)
         (ctx.methods.write-class writer klass ctx)
         (writer.write-varuint size)
         (let (wr 0)
           (ht.for-each
            (lambda (k v)
              (set! wr (fx+ wr (writer.serialize k ctx)))
              (set! wr (fx+ wr (writer.serialize v ctx)))))
           wr)
         wr)))))
