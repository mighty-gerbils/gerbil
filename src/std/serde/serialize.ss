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
  ((_ obj senv do-object do-anchor do-reference)
   (with-identifiers ((env             '$env)
                      (env.written     #'env #'env ".written")
                      (env.scanned     #'env #'env ".scanned")
                      (env.scanned.ref #'env #'env ".scanned.ref")
                      (env.cycles      #'env #'env ".cycles")
                      (env.cycles.ref  #'env #'env ".cycles.ref")
                      (env.compress?   #'env #'env ".compress?"))
     #'(using (env senv :- ScanEnv)
         (defrule (has-cycle? obj)
           (env.cycles.ref obj #f))
         (cond
          ((or (not env) (immediate? obj))
           (do-object obj))
          ((hash-get env.written obj)
           => (lambda ((id :- :fixnum)) => :fixnum
                 (if (or env.compress? (has-cycle? obj))
                   (do-reference id)
                   (do-object obj))))
          ((has-cycle? obj)
           => (lambda ((id :- :fixnum)) => :fixnum
                 (hash-put! env.written obj id)
                 (do-anchor obj id)))
          ((hash-get env.scanned obj)
           => (lambda (e) => :fixnum
                 (if env.compress?
                   (using ((e             :- :pair)
                           (id    (car e) :- :fixnum)
                           (count (cdr e) :- :fixnum))
                     (hash-put! env.written obj id)
                     (if (fx> count 1)
                       (do-anchor obj id)
                       (do-object obj)))
                   (using (id e :- :fixnum)
                     (hash-put! env.written obj id)
                     (do-object obj)))))
          (else
           (let (id (scan-object! obj env))
             (if (fx> id 0)
               (begin
                 (hash-put! env.written obj id)
                 (cond
                  ((has-cycle? obj)
                   (do-anchor obj id))
                  (env.compress?
                   (using ((e     (env.scanned.ref obj #f) :- :pair)
                           (count (cdr e)                  :- :fixnum))
                     (if (fx> count 1)
                       (do-anchor obj id)
                       (do-object obj))))
                  (else
                   (do-object obj))))
               (do-object obj)))))))))

(defsyntax-case @serialize! ()
  ((_ writer obj env rule)
   (with-identifiers ((do-object    'do-object)
		      (do-anchor    'do-anchor)
		      (do-reference 'do-reference)
		      (env.scan
		       #'env #'env ".scan")
		      (env.methods.write-anchor-begin
		       #'env #'env ".methods.write-anchor-begin")
		      (env.methods.write-anchor-end
		       #'env #'env ".methods.write-anchor-end")
		      (env.methods.write-reference
		       #'env #'env ".methods.write-reference"))
     #'(let ()
	 (defrule (do-object obj)
	   rule)
	 (defrule (do-anchor obj id)
	   (do-write (wr 0)
	     (env.methods.write-anchor-begin writer id env)
	     (do-object obj)
	     (env.methods.write-anchor-end writer env)
	     wr))
	 (defrule (do-reference id)
	   (env.methods.write-reference writer id env))

	 (@serialize obj env.scan do-object do-anchor do-reference)))))

(defwriter-ext (serialize-raw writer obj (env : WriteEnv))
  (__object-write obj writer env))

(defwriter-ext (serialize writer obj (env : WriteEnv))
  (@serialize! writer obj env (writer.serialize-raw obj env)))

;; standard classes
(defwriter-ext (write-object-type writer (klass : class) (env : WriteEnv))
  (if (env.allow-class? klass)
    (@serialize! writer klass env
      (env.methods.write-class writer klass env))
    (runtime-contract-violation! serialize (env.allow-class? klass) klass)))

(defobject-writer class (write-class writer klass env)
  (@serialize! writer klass env
    (do-write (wr 0)
      (env.methods.write-object-begin writer env)
      (writer.write-object-type (class-type klass) env)
      (env.methods.write-delimiter writer env)
      (writer.write-object-type klass env)
      (env.methods.write-object-end writer env)
      wr)))

;; standard objects
(defwriter-ext (write-field writer (slot : :symbol) (obj : :t) (env : WriteEnv))
  (defrule (do-object slot)
    (env.methods.write-slot writer slot env))
  (defrule (do-anchor slot id)
    (do-write (wr 0)
      (env.methods.write-anchor-begin writer id env)
      (do-object slot)
      (env.methods.write-anchor-end writer env)
      wr))
  (defrule (do-reference id)
    (env.methods.write-reference writer id env))

  (do-write (wr 0)
    (env.methods.write-delimiter writer env)
    (@serialize slot env.scan
      do-object do-anchor do-reference)
    (env.methods.write-field-delimiter writer env)
    (writer.serialize obj env)
    wr))

(defwriter-ext (write-slot writer (obj : :object) (slot : :symbol) (offset : :fixnum) (env : WriteEnv))
  (writer.write-field slot (unchecked-field-ref obj offset) env))

(defwriter-ext (write-object-slots writer obj (klass : class) (env : WriteEnv))
  (let (len (##structure-length obj))
    (if (fx> len 1)
      (if env.scan.all-slots?
        (let (slots (class-type-field-list klass))
          (let loop ((rest slots) (offset 1 :- :fixnum) (wr 0 :- :fixnum))
            => :fixnum
            (match rest
              ([slot . rest]
               (using (slot :- :symbol)
                 (do-write (wr wr)
                   (writer.write-slot obj slot offset env)
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
                   (writer.write-slot obj slot offset env)
                   (loop rest wr))))
              (else wr)))))
      0)))

(defwriter-ext (write-object-raw writer obj (klass : class) (env : WriteEnv))
  (do-write (wr 0)
    (env.methods.write-object-begin writer env)
    (writer.write-object-type klass env)
    (writer.write-object-slots obj klass env)
    (env.methods.write-object-end writer env)
    wr))

(defobject-writer :object (write-object writer obj env)
  (let (klass (object-class obj))
    (@serialize! writer obj env
      (writer.write-object-raw obj klass env))))

(defwriter-ext (write-interface-instance-raw writer (inst : interface-instance) (env : WriteEnv))
  (do-write (wr 0)
    (env.methods.write-object-begin writer env)
    (writer.write-object-type (object-class inst) env)
    (env.methods.write-delimiter writer env)
    (writer.serialize inst.object env)
    (env.methods.write-object-end writer env)
    wr))

(defobject-writer interface-instance (write-interface-instance writer inst env)
  (@serialize! writer inst env
    (writer.write-interface-instance-raw inst env)))

(defobject-writer HashTable (write-hash-table writer ht env)
  (@serialize! writer ht env
    (env.methods.write-hash-table writer ht env)))

;; builtin objects
(defobject-writer :builtin (write-builtin-object writer obj env)
  (let (klass (class-of obj))
    (@serialize! writer obj env
      (do-write (wr 0)
	(env.methods.write-object-begin writer env)
	(writer.write-object-type klass env)
	(env.methods.write-object-end writer env)
	wr))))

(defobject-writer :char (write-char writer char env)
  (env.methods.write-char writer char env))

(defobject-writer :boolean (write-boolean writer bool env)
  (env.methods.write-boolean writer bool env))

(defobject-writer :special (write-special writer atom env)
  (env.methods.write-special writer atom env))

(defobject-writer :integer (write-integer writer int env)
  (@serialize! writer int env
    (env.methods.write-integer writer int env)))

(defobject-writer :flonum (write-flonum writer num env)
  (@serialize! writer num env
    (env.methods.write-flonum writer num env)))

(defobject-writer :ratnum (write-ratnum writer num env)
  (@serialize! writer num env
    (env.methods.write-ratnum writer num env)))

(defobject-writer :cpxnum (write-cpxnum writer num env)
  (@serialize! writer num env
    (env.methods.write-cpxnum writer num env)))

(defobject-writer :symbol (write-symbol writer sym env)
  (@serialize! writer sym env
    (env.methods.write-symbol writer sym env)))

(defobject-writer :keyword (write-keyword writer sym env)
  (@serialize! writer sym env
    (env.methods.write-keyword writer sym env)))

(defsyntax-case do-serialize-list ()
  ((_ (writer env) body rest ...)
   (with-syntax ((do-serialize           (syntax-local-introduce 'do-serialize))
                 (do-serialize-raw       (syntax-local-introduce 'do-serialize-raw))
                 (do-serialize-anchor    (syntax-local-introduce 'do-serialize-anchor))
                 (do-serialize-reference (syntax-local-introduce 'do-serialize-reference)))
     (with-identifiers ((env.methods.write-delimiter
			 #'env #'env ".methods.write-delimiter")
			(env.methods.write-pair-delimiter
			 #'env #'env ".methods.write-pair-delimiter")
			(env.methods.write-anchor-begin
			 #'env #'env ".methods.write-anchor-begin")
			(env.methods.write-anchor-end
			 #'env #'env ".methods.write-anchor-end")
			(env.methods.write-reference
			 #'env #'env ".methods.write-reference")
                        (writer.serialize
			 #'writer #'writer ".serialize")
                        (writer.serialize-raw
			 #'writer #'writer ".serialize-raw"))
       #'(let ()
           (defrule (do-serialize obj wr)
             (do-write (wr wr)
               (env.methods.write-delimiter writer env)
               (writer.serialize obj env)
               wr))

           (defrule (do-serialize-raw obj wr)
             (do-write (wr wr)
               (env.methods.write-delimiter writer env)
               (writer.serialize-raw obj env)
               wr))

           (defrule (do-serialize-anchor obj id wr)
             (do-write (wr wr)
	       (env.methods.write-delimiter writer env)
               (env.methods.write-anchor-begin writer id env)
               (writer.serialize-raw obj env)
	       (env.methods.write-anchor-end writer env)
               wr))

           (defrule (do-serialize-reference id wr)
             (do-write (wr wr)
               (env.methods.write-delimiter writer env)
               (env.methods.write-reference writer id env)
               wr))

           body rest ...)))))

(defobject-writer :list (format-list writer lst env)
  (do-serialize-list (writer env)
    (def (loop rest (wr :- :fixnum))
      => :fixnum

      (defrule (do-loop obj)
        (with ([hd . tl] obj)
          (do-write (wr wr)
            (do-serialize-raw hd wr)
            (loop tl wr))))

      (defrule (do-tail wr continue)
        (do-write (wr wr)
          (env.methods.write-delimiter writer env)
          (env.methods.write-pair-delimiter writer env)
          continue
          (env.methods.write-list-end writer env)
          wr))

      (cond
       ((pair? rest)
        (@serialize rest env.scan
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
	  (env.methods.write-list-end writer env)
          wr))
       (else
        (do-tail wr
          (@serialize rest env.scan
                      (lambda (obj) => :fixnum
                         (do-serialize-raw obj wr))
                      (lambda (obj id) => :fixnum
                         (do-serialize-anchor obj id wr))
                      (lambda (id) => :fixnum
                         (do-serialize-reference id wr)))))))

    (if (pair? lst)
      (@serialize lst env.scan
                  (lambda (obj) => :fixnum
		     (do-write (wr 0)
		       (env.methods.write-list-begin writer env)
		       (writer.serialize-raw (car obj) env)
		       (loop (cdr obj) 0)
		       wr))
                  (lambda (obj id) => :fixnum
		     (do-write (wr 0)
		       (env.methods.write-anchor-begin writer id env)
		       (env.methods.write-list-begin writer env)
		       (writer.serialize-raw (car obj) env)
		       (loop (cdr obj) 0)
		       (env.methods.write-anchor-end writer env)
		       wr))
                  (lambda (id) => :fixnum
		     (env.methods.write-reference writer id env)))
      (do-write (wr 0)
	(env.methods.write-list-begin writer env)
	(env.methods.write-list-end writer env)
	wr))))

(defobject-writer :string (write-string writer str env)
  (@serialize! writer str env
    (env.methods.write-string writer str env)))

(defsyntax-case do-write-vector ()
  ((_ writer v env write-begin write-end v-length v-ref)
   (with-identifiers ((writer.serialize
		       #'writer #'writer ".serialize")
		      (env.methods.write-begin
		       #'env #'env ".methods." #'write-begin)
		      (env.methods.write-end
		       #'env #'env ".methods." #'write-end)
		      (env.methods.write-delimiter
		       #'env #'env ".methods.write-delimiter"))
     #'(do-write (wr 0)
         (env.methods.write-begin writer v env)
         (let* ((len   (:- (v-length v) :fixnum))
                (len-1 (fx- len 1)))
           (let loop ((i 0 :- :fixnum) (wr wr :- :fixnum)) => :fixnum
                (cond
                 ((fx< i len-1)
                  (do-write (wr wr)
                    (writer.serialize (v-ref v i) env)
                    (env.methods.write-delimiter writer env)
                    (loop (fx+ i 1) wr)))
                 ((fx< i len)
		  (writer.serialize (v-ref v i) env))
                 (else 0))))
	 (env.methods.write-end writer env)
         wr))))

(defobject-writer :vector (write-vector writer v env)
  (@serialize! writer v env
    (do-write-vector writer v env
                     write-vector-begin
		     write-vector-end
                     ##vector-length
                     ##vector-ref)))

(defobject-writer :values (write-values writer v env)
  (@serialize! writer v env
    (do-write-vector writer v env
                     write-values-begin
		     write-values-end
                     ##values-length
                     ##values-ref)))

(defsyntax-case do-write-hvector ()
  ((_ writer v env v-length v-ref write-method)
   (with-identifiers ((env.methods.write-method
		       #'env #'env ".methods." #'write-method)
		      (env.methods.write-begin
		       #'env #'env ".methods.write-hvector-begin")
		      (env.methods.write-end
		       #'env #'env ".methods.write-hvector-end")
		      (env.methods.write-delimiter
		       #'env #'env ".methods.write-delimiter"))
     #'(do-write (wr 0)
         (env.methods.write-begin writer v env)
         (let* ((len   (:- (v-length v) :fixnum))
                (len-1 (fx- len 1)))
           (let loop ((i 0 :- :fixnum) (wr wr :- :fixnum)) => :fixnum
                (cond
                 ((fx< i len-1)
                  (do-write (wr wr)
                    (env.methods.write-method writer (v-ref v i) env)
                    (env.methods.write-delimiter writer env)
                    (loop (fx+ i 1) wr)))
                 ((fx< i len)
		  (env.methods.write-method writer (v-ref v i) env))
                 (else 0))))
	 (env.methods.write-end writer env)
         wr))))

(defobject-writer :u8vector (write-u8vector writer v env)
  (do-write-hvector writer v env
                   ##u8vector-length
                   ##u8vector-ref
                   write-integer))

(defobject-writer :u16vector (write-u16vector writer v env)
  (do-write-hvector writer v env
                   ##u16vector-length
                   ##u16vector-ref
                   write-integer))

(defobject-writer :u32vector (write-u32vector writer v env)
  (do-write-hvector writer v env
                   ##u32vector-length
                   ##u32vector-ref
                   write-integer))

(defobject-writer :u64vector (write-u64vector writer v env)
  (do-write-hvector writer v env
                   ##u64vector-length
                   ##u64vector-ref
                   write-integer))

(defobject-writer :s8vector (write-s8vector writer v env)
  (do-write-hvector writer v env
                   ##s8vector-length
                   ##s8vector-ref
                   write-integer))

(defobject-writer :s16vector (write-s16vector writer v env)
  (do-write-hvector writer v env
                   ##s16vector-length
                   ##s16vector-ref
                   write-integer))

(defobject-writer :s32vector (write-s32vector writer v env)
  (do-write-hvector writer v env
                   ##s32vector-length
                   ##s32vector-ref
                   write-integer))

(defobject-writer :s64vector (write-s64vector writer v env)
  (do-write-hvector writer v env
                   ##s64vector-length
                   ##s64vector-ref
                   write-integer))

(defobject-writer :f32vector (write-f32vector writer v env)
  (do-write-hvector writer v env
                   ##f32vector-length
                   ##f32vector-ref
                   write-flonum))

(defobject-writer :f64vector (write-f64vector writer v env)
  (do-write-hvector writer v env
                   ##f64vector-length
                   ##f64vector-ref
                   write-flonum))

(defobject-writer :box (write-box writer v env)
  (@serialize! writer v env
    (do-write (wr 0)
      (env.methods.write-box-begin writer env)
      (writer.serialize (unbox v) env)
      (env.methods.write-box-end writer env)
      wr)))

(defobject-writer :promise (write-promise writer v env)
  (@serialize! writer v env
    (writer.serialize (force v) env)))

;; this is to dump stack traces effectively
(defwriter-ext (write-continuation-raw writer (cont : :continuation) (env : WriteEnv))
  (do-write (wr 0)
    (env.methods.write-object-begin writer env)
    (writer.write-object-type continuation::t env)
    (env.methods.write-delimiter writer env)
    (env.methods.write-list-begin writer env)
    (let loop ((cont  (##continuation-first-frame cont #f))
               (last   #f)
               (depth  0)
               (space? #f)
               (wr     0 :- :fixnum))
      => :fixnum
      (cond
       (cont
        (let (creator (##continuation-creator cont))
          (if (and creator (eq? last creator))
            (loop (##continuation-next-frame cont #f)
                  last
                  (fx+ depth 1)
                  space?
                  wr)
            (do-write (wr wr)
              (if space?
                (env.methods.write-delimiter writer env)
                0)
              (cond
               ((and creator (##procedure-name creator))
                => (lambda (name)
                     => :fixnum
                     (writer.serialize name env)))
               (else
                (env.methods.write-symbol writer '? env)))
              (loop (##continuation-next-frame cont #f)
                    creator
                    (fx+ depth 1)
                    #t
                    wr)))))
       (cont
        (do-write (wr wr)
          (if space?
            (env.methods.write-delimiter writer env)
            0)
          (env.methods.write-symbol writer '... env)
          wr))
       (else wr)))
    (env.methods.write-list-end writer env)
    (env.methods.write-object-end writer env)
    wr))

(defobject-writer :continuation (write-continuation writer cont env)
  (@serialize! writer cont env
    (writer.write-continuation-raw cont env)))

(defobject-writer :procedure (write-procedure writer proc env)
  (@serialize! writer proc env
    (do-write (wr 0)
      (env.methods.write-object-begin writer env)
      (writer.write-object-type procedure::t env)
      (env.methods.write-delimiter writer env)
      (writer.serialize (##procedure-name proc) env)
      (env.methods.write-object-end writer env)
      wr)))

(defobject-writer :foreign (write-foreign writer obj env)
  (@serialize! writer obj env
  (do-write (wr 0)
    (env.methods.write-object-begin writer env)
    (writer.write-object-type foreign::t env)
    (env.methods.write-delimiter writer env)
    (writer.serialize (##foreign-tags obj) env)
    (env.methods.write-object-end writer env)
    wr)))

(defobject-writer :structure (write-structure writer obj env)
  (let (klass (class-of obj))
    (@serialize! writer obj env
      (writer.write-object-raw obj klass env))))
