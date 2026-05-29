;;; -*- Gerbil -*-
;;; © vyzo
;;; serialization macro
(import	:std/io/interface
        :std/io/bio/api
	./interface
        ./scan
	./scanner)
(export #t)

(defrules do-write ()
  ((_ (wr init) write-op rest ... end)
   (identifier? #'wr)
   (let* ((wr init)
          (wr (fx+ wr write-op))
          (wr (fx+ wr rest)) ...)
     end)))

(defsyntax-case @serialize ()
  ((_ obj sctx do-object do-anchor do-reference)
   (with-identifiers ((ctx             '$ctx)
                      (ctx.written     #'ctx #'ctx ".written")
                      (ctx.scanned     #'ctx #'ctx ".scanned")
                      (ctx.scanned.ref #'ctx #'ctx ".scanned.ref")
                      (ctx.cycles      #'ctx #'ctx ".cycles")
                      (ctx.cycles.ref  #'ctx #'ctx ".cycles.ref")
                      (ctx.compress?   #'ctx #'ctx ".compress?"))
     #'(using (ctx sctx :- ScanContext)
         (defrule (has-cycle? obj)
           (ctx.cycles.ref obj #f))
         (cond
          ((or (not ctx) (immediate? obj))
           (do-object obj))
          ((hash-get ctx.written obj)
           => (lambda ((id :- :fixnum)) => :fixnum
                 (if (or ctx.compress? (has-cycle? obj))
                   (do-reference id)
                   (do-object obj))))
          ((has-cycle? obj)
           => (lambda ((id :- :fixnum)) => :fixnum
                 (hash-put! ctx.written obj id)
                 (do-anchor obj id)))
          ((hash-get ctx.scanned obj)
           => (lambda (e) => :fixnum
                 (if ctx.compress?
                   (using ((e             :- :pair)
                           (id    (car e) :- :fixnum)
                           (count (cdr e) :- :fixnum))
                     (hash-put! ctx.written obj id)
                     (if (fx> count 1)
                       (do-anchor obj id)
                       (do-object obj)))
                   (using (id e :- :fixnum)
                     (hash-put! ctx.written obj id)
                     (do-object obj)))))
          (else
           (let (id (scan-object! obj ctx))
             (if (fx> id 0)
               (begin
                 (hash-put! ctx.written obj id)
                 (cond
                  ((has-cycle? obj)
                   (do-anchor obj id))
                  (ctx.compress?
                   (using ((e     (ctx.scanned.ref obj #f) :- :pair)
                           (count (cdr e)                  :- :fixnum))
                     (if (fx> count 1)
                       (do-anchor obj id)
                       (do-object obj))))
                  (else
                   (do-object obj))))
               (do-object obj)))))))))

(defsyntax-case @serialize! ()
  ((_ writer obj ctx rule)
   (with-identifiers ((do-object    'do-object)
		      (do-anchor    'do-anchor)
		      (do-reference 'do-reference)
		      (ctx.scan
		       #'ctx #'ctx ".scan")
		      (ctx.methods.write-anchor-begin
		       #'ctx #'ctx ".methods.write-anchor-begin")
		      (ctx.methods.write-anchor-end
		       #'ctx #'ctx ".methods.write-anchor-end")
		      (ctx.methods.write-reference
		       #'ctx #'ctx ".methods.write-reference"))
     #'(let ()
	 (defrule (do-object obj)
	   rule)
	 (defrule (do-anchor obj id)
	   (do-write (wr 0)
	     (ctx.methods.write-anchor-begin writer id ctx)
	     (do-object obj)
	     (ctx.methods.write-anchor-end writer ctx)
	     wr))
	 (defrule (do-reference id)
	   (ctx.methods.write-reference writer id ctx))

	 (@serialize obj ctx.scan do-object do-anchor do-reference)))))

(defwriter-ext (serialize-raw writer obj (ctx : WriteContext))
  (__object-write obj writer ctx))

(defwriter-ext (serialize writer obj (ctx : WriteContext))
  (@serialize! writer obj ctx (writer.serialize-raw obj ctx)))

;; standard classes
(defwriter-ext (write-object-type writer (klass : class) (ctx : WriteContext))
  (if (ctx.allow-class? klass)
    (@serialize! writer klass ctx
      (ctx.methods.write-class writer klass ctx))
    (runtime-contract-violation! serialize (ctx.allow-class? klass) klass)))

(defobject-writer class (write-class writer klass ctx)
  (@serialize! writer klass ctx
    (do-write (wr 0)
      (ctx.methods.write-object-begin writer ctx)
      (writer.write-object-type (class-type klass) ctx)
      (writer.write-field 'id (##type-id klass) ctx)
      (ctx.methods.write-object-end writer ctx)
      wr)))

;; standard objects
(defwriter-ext (write-field writer (slot : :symbol) (obj : :t) (ctx : WriteContext))
  (defrule (do-object slot)
    (ctx.methods.write-slot writer slot ctx))
  (defrule (do-anchor slot id)
    (do-write (wr 0)
      (ctx.methods.write-anchor-begin writer id ctx)
      (do-object slot)
      (ctx.methods.write-anchor-end writer ctx)
      wr))
  (defrule (do-reference id)
    (ctx.methods.write-reference writer id ctx))

  (do-write (wr 0)
    (ctx.methods.write-delimiter writer ctx)
    (@serialize slot ctx.scan
      do-object do-anchor do-reference)
    (ctx.methods.write-field-delimiter writer ctx)
    (writer.serialize obj ctx)
    wr))

(defwriter-ext (write-slot writer (obj : :object) (slot : :symbol) (offset : :fixnum) (ctx : WriteContext))
  (writer.write-field slot (unchecked-field-ref obj offset) ctx))

(defwriter-ext (write-object-slots writer obj (klass : class) (ctx : WriteContext))
  (let (len (##structure-length obj))
    (if (fx> len 1)
      (if ctx.scan.all-slots?
        (let (slots (class-type-field-list klass))
          (let loop ((rest slots) (offset 1 :- :fixnum) (wr 0 :- :fixnum))
            => :fixnum
            (match rest
              ([slot . rest]
               (using (slot :- :symbol)
                 (do-write (wr wr)
                   (writer.write-slot obj slot offset ctx)
                   (loop rest (fx+ offset 1) wr))))
              (else wr))))
	(let (slots (class-type-printable-slots klass))
          ;; print spec: [[slot . offset] ...]
          (let loop ((rest slots) (wr 0 :- :fixnum))
            => :fixnum
            (match rest
              ([print-spec . rest]
               (using ((spec   print-spec :- :pair)
                       (slot   (car spec) :- :symbol)
                       (offset (cdr spec) :- :fixnum))
		 (do-write (wr wr)
                   (writer.write-slot obj slot offset ctx)
                   (loop rest wr))))
              (else wr)))))
      0)))

(defwriter-ext (write-object-raw writer obj (klass : class) (ctx : WriteContext))
  (do-write (wr 0)
    (ctx.methods.write-object-begin writer ctx)
    (writer.write-object-type klass ctx)
    (writer.write-object-slots obj klass ctx)
    (ctx.methods.write-object-end writer ctx)
    wr))

(defobject-writer :object (write-object writer obj ctx)
  (let (klass (object-class obj))
    (@serialize! writer obj ctx
      (writer.write-object-raw obj klass ctx))))

(defwriter-ext (write-interface-instance-raw writer (inst : interface-instance) (ctx : WriteContext))
  (do-write (wr 0)
    (ctx.methods.write-object-begin writer ctx)
    (writer.write-object-type (object-class inst) ctx)
    (writer.write-field 'object inst.object ctx)
    (ctx.methods.write-object-end writer ctx)
    wr))

(defobject-writer interface-instance (write-interface-instance writer inst ctx)
  (@serialize! writer inst ctx
    (writer.write-interface-instance-raw inst ctx)))

;; hash tables are special cased to accomodate their central
;; semantics in most serialization protocols.
(defobject-writer HashTable (write-hash-table writer ht ctx)
  (@serialize! writer ht ctx
    (ctx.methods.write-hash-table writer ht ctx)))

;; builtin objects
(defobject-writer :builtin (write-builtin-object writer obj ctx)
  (let (klass (class-of obj))
    (@serialize! writer obj ctx
      (do-write (wr 0)
	(ctx.methods.write-object-begin writer ctx)
	(writer.write-object-type klass ctx)
	(ctx.methods.write-object-end writer ctx)
	wr))))

(defobject-writer :char (write-char writer char ctx)
  (ctx.methods.write-char writer char ctx))

(defobject-writer :boolean (write-boolean writer bool ctx)
  (ctx.methods.write-boolean writer bool ctx))

(defobject-writer :special (write-special writer atom ctx)
  (ctx.methods.write-special writer atom ctx))

(defobject-writer :integer (write-integer writer int ctx)
  (@serialize! writer int ctx
    (ctx.methods.write-integer writer int ctx)))

(defobject-writer :flonum (write-flonum writer num ctx)
  (@serialize! writer num ctx
    (ctx.methods.write-flonum writer num ctx)))

(defobject-writer :ratnum (write-ratnum writer num ctx)
  (@serialize! writer num ctx
    (ctx.methods.write-ratnum writer num ctx)))

(defobject-writer :cpxnum (write-cpxnum writer num ctx)
  (@serialize! writer num ctx
    (ctx.methods.write-cpxnum writer num ctx)))

(defobject-writer :symbol (write-symbol writer sym ctx)
  (@serialize! writer sym ctx
    (ctx.methods.write-symbol writer sym ctx)))

(defobject-writer :keyword (write-keyword writer sym ctx)
  (@serialize! writer sym ctx
    (ctx.methods.write-keyword writer sym ctx)))

(defsyntax-case do-serialize-list ()
  ((_ (writer ctx) body rest ...)
   (with-syntax ((do-serialize           (syntax-local-introduce 'do-serialize))
                 (do-serialize-raw       (syntax-local-introduce 'do-serialize-raw))
                 (do-serialize-anchor    (syntax-local-introduce 'do-serialize-anchor))
                 (do-serialize-reference (syntax-local-introduce 'do-serialize-reference)))
     (with-identifiers ((ctx.methods.write-delimiter
			 #'ctx #'ctx ".methods.write-delimiter")
			(ctx.methods.write-pair-delimiter
			 #'ctx #'ctx ".methods.write-pair-delimiter")
			(ctx.methods.write-anchor-begin
			 #'ctx #'ctx ".methods.write-anchor-begin")
			(ctx.methods.write-anchor-end
			 #'ctx #'ctx ".methods.write-anchor-end")
			(ctx.methods.write-reference
			 #'ctx #'ctx ".methods.write-reference")
                        (writer.serialize
			 #'writer #'writer ".serialize")
                        (writer.serialize-raw
			 #'writer #'writer ".serialize-raw"))
       #'(let ()
           (defrule (do-serialize obj wr)
             (do-write (wr wr)
               (ctx.methods.write-delimiter writer ctx)
               (writer.serialize obj ctx)
               wr))

           (defrule (do-serialize-raw obj wr)
             (do-write (wr wr)
               (ctx.methods.write-delimiter writer ctx)
               (writer.serialize-raw obj ctx)
               wr))

           (defrule (do-serialize-anchor obj id wr)
             (do-write (wr wr)
	       (ctx.methods.write-delimiter writer ctx)
               (ctx.methods.write-anchor-begin writer id ctx)
               (writer.serialize-raw obj ctx)
	       (ctx.methods.write-anchor-end writer ctx)
               wr))

           (defrule (do-serialize-reference id wr)
             (do-write (wr wr)
               (ctx.methods.write-delimiter writer ctx)
               (ctx.methods.write-reference writer id ctx)
               wr))

           body rest ...)))))

(defobject-writer :list (write-list writer lst ctx)
  (do-serialize-list (writer ctx)
    (def (loop rest (wr :- :fixnum))
      => :fixnum

      (defrule (do-loop obj)
        (with ([hd . tl] obj)
          (do-write (wr wr)
            (do-serialize-raw hd wr)
            (loop tl wr))))

      (defrule (do-tail wr continue)
        (do-write (wr wr)
          (ctx.methods.write-delimiter writer ctx)
          (ctx.methods.write-pair-delimiter writer ctx)
          continue
          (ctx.methods.write-list-end writer ctx)
          wr))

      (cond
       ((pair? rest)
        (@serialize rest ctx.scan
                    (lambda (obj) => :fixnum
                       (do-loop obj))
                    (lambda (obj id) => :fixnum
                       (do-tail wr
                         (do-serialize-anchor obj id wr)))
                    (lambda (id) => :fixnum
                       (do-tail wr
                         (do-serialize-reference id wr)))))
       ((null? rest)
        (do-write (wr wr)
	  (ctx.methods.write-list-end writer ctx)
          wr))
       (else
        (do-tail wr
          (@serialize rest ctx.scan
                      (lambda (obj) => :fixnum
                         (do-serialize-raw obj wr))
                      (lambda (obj id) => :fixnum
                         (do-serialize-anchor obj id wr))
                      (lambda (id) => :fixnum
                         (do-serialize-reference id wr)))))))

    (if (pair? lst)
      (@serialize lst ctx.scan
                  (lambda (obj) => :fixnum
		     (do-write (wr 0)
		       (ctx.methods.write-list-begin writer ctx)
		       (writer.serialize-raw (car obj) ctx)
		       (loop (cdr obj) 0)
		       wr))
                  (lambda (obj id) => :fixnum
		     (do-write (wr 0)
		       (ctx.methods.write-anchor-begin writer id ctx)
		       (ctx.methods.write-list-begin writer ctx)
		       (writer.serialize-raw (car obj) ctx)
		       (loop (cdr obj) 0)
		       (ctx.methods.write-anchor-end writer ctx)
		       wr))
                  (lambda (id) => :fixnum
		     (ctx.methods.write-reference writer id ctx)))
      (do-write (wr 0)
	(ctx.methods.write-list-begin writer ctx)
	(ctx.methods.write-list-end writer ctx)
	wr))))

(defobject-writer :string (write-string writer str ctx)
  (@serialize! writer str ctx
    (ctx.methods.write-string writer str ctx)))

(defsyntax-case do-write-vector ()
  ((_ writer v ctx write-begin write-end v-length v-ref)
   (with-identifiers ((writer.serialize
		       #'writer #'writer ".serialize")
		      (ctx.methods.write-begin
		       #'ctx #'ctx ".methods." #'write-begin)
		      (ctx.methods.write-end
		       #'ctx #'ctx ".methods." #'write-end)
		      (ctx.methods.write-delimiter
		       #'ctx #'ctx ".methods.write-delimiter"))
     #'(do-write (wr 0)
         (ctx.methods.write-begin writer v ctx)
         (let* ((len   (:- (v-length v) :fixnum))
                (len-1 (fx- len 1)))
           (let loop ((i 0 :- :fixnum) (wr wr :- :fixnum)) => :fixnum
                (cond
                 ((fx< i len-1)
                  (do-write (wr wr)
                    (writer.serialize (v-ref v i) ctx)
                    (ctx.methods.write-delimiter writer ctx)
                    (loop (fx+ i 1) wr)))
                 ((fx< i len)
		  (writer.serialize (v-ref v i) ctx))
                 (else 0))))
	 (ctx.methods.write-end writer ctx)
         wr))))

(defobject-writer :vector (write-vector writer v ctx)
  (@serialize! writer v ctx
    (do-write-vector writer v ctx
                     write-vector-begin
		     write-vector-end
                     ##vector-length
                     ##vector-ref)))

(defobject-writer :values (write-values writer v ctx)
  (@serialize! writer v ctx
    (do-write-vector writer v ctx
                     write-values-begin
		     write-values-end
                     ##values-length
                     ##values-ref)))

(defsyntax-case do-write-hvector ()
  ((_ writer v ctx v-length v-ref write-method)
   (with-identifiers ((ctx.methods.write-method
		       #'ctx #'ctx ".methods." #'write-method)
		      (ctx.methods.write-begin
		       #'ctx #'ctx ".methods.write-hvector-begin")
		      (ctx.methods.write-end
		       #'ctx #'ctx ".methods.write-hvector-end")
		      (ctx.methods.write-delimiter
		       #'ctx #'ctx ".methods.write-delimiter"))
     #'(do-write (wr 0)
         (ctx.methods.write-begin writer v ctx)
         (let* ((len   (:- (v-length v) :fixnum))
                (len-1 (fx- len 1)))
           (let loop ((i 0 :- :fixnum) (wr wr :- :fixnum)) => :fixnum
                (cond
                 ((fx< i len-1)
                  (do-write (wr wr)
                    (ctx.methods.write-method writer (v-ref v i) ctx)
                    (ctx.methods.write-delimiter writer ctx)
                    (loop (fx+ i 1) wr)))
                 ((fx< i len)
		  (ctx.methods.write-method writer (v-ref v i) ctx))
                 (else 0))))
	 (ctx.methods.write-end writer ctx)
         wr))))

(defobject-writer :u8vector (write-u8vector writer v ctx)
  (do-write-hvector writer v ctx
                   ##u8vector-length
                   ##u8vector-ref
                   write-integer))

(defobject-writer :u16vector (write-u16vector writer v ctx)
  (do-write-hvector writer v ctx
                   ##u16vector-length
                   ##u16vector-ref
                   write-integer))

(defobject-writer :u32vector (write-u32vector writer v ctx)
  (do-write-hvector writer v ctx
                   ##u32vector-length
                   ##u32vector-ref
                   write-integer))

(defobject-writer :u64vector (write-u64vector writer v ctx)
  (do-write-hvector writer v ctx
                   ##u64vector-length
                   ##u64vector-ref
                   write-integer))

(defobject-writer :s8vector (write-s8vector writer v ctx)
  (do-write-hvector writer v ctx
                   ##s8vector-length
                   ##s8vector-ref
                   write-integer))

(defobject-writer :s16vector (write-s16vector writer v ctx)
  (do-write-hvector writer v ctx
                   ##s16vector-length
                   ##s16vector-ref
                   write-integer))

(defobject-writer :s32vector (write-s32vector writer v ctx)
  (do-write-hvector writer v ctx
                   ##s32vector-length
                   ##s32vector-ref
                   write-integer))

(defobject-writer :s64vector (write-s64vector writer v ctx)
  (do-write-hvector writer v ctx
                   ##s64vector-length
                   ##s64vector-ref
                   write-integer))

(defobject-writer :f32vector (write-f32vector writer v ctx)
  (do-write-hvector writer v ctx
                   ##f32vector-length
                   ##f32vector-ref
                   write-flonum))

(defobject-writer :f64vector (write-f64vector writer v ctx)
  (do-write-hvector writer v ctx
                   ##f64vector-length
                   ##f64vector-ref
                   write-flonum))

(defobject-writer :box (write-box writer v ctx)
  (@serialize! writer v ctx
    (do-write (wr 0)
      (ctx.methods.write-box-begin writer ctx)
      (writer.serialize (unbox v) ctx)
      (ctx.methods.write-box-end writer ctx)
      wr)))

(defobject-writer :promise (write-promise writer v ctx)
  (@serialize! writer v ctx
    (writer.serialize (force v) ctx)))

(defobject-writer :procedure (write-procedure writer proc ctx)
  (@serialize! writer proc ctx
    (do-write (wr 0)
      (ctx.methods.write-object-begin writer ctx)
      (writer.write-object-type procedure::t ctx)
      (let (name (##procedure-name proc))
	(if name
	  (writer.write-field 'name name ctx)
	  0))
      (ctx.methods.write-object-end writer ctx)
      wr)))

(defobject-writer :foreign (write-foreign writer obj ctx)
  (@serialize! writer obj ctx
  (do-write (wr 0)
    (ctx.methods.write-object-begin writer ctx)
    (writer.write-object-type foreign::t ctx)
    (ctx.methods.write-delimiter writer ctx)
    (writer.serialize (##foreign-tags obj) ctx)
    (ctx.methods.write-object-end writer ctx)
    wr)))

(defobject-writer :structure (write-structure writer obj ctx)
  (let (klass (class-of obj))
    (@serialize! writer obj ctx
      (writer.write-object-raw obj klass ctx))))
