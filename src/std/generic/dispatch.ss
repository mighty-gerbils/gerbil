;;; -*- Gerbil -*-
;;; © vyzo
;;; Generic dispatch

(import :std/error)
(export type-of linear-type-of type-linearize-class
        make-generic generic? generic-id generic-dispatch
        generic-bind! generic-dispatch generic-dispatch-next
        generic-dispatch1 generic-dispatch2 generic-dispatch3 generic-dispatch4
        dispatch-error?)

(declare (not safe))

(deferror-class DispatchError () dispatch-error?)
(defraise/context (raise-dispatch-error where method-id args)
  (DispatchError "generic dispatch failure; no matching method"
                 irritants: (cons method-id args)))

;;; type-of
(def (type-of obj)
  (declare (not interrupts-enabled))
  (let (t (##type obj))
    (cond
     ((##fx= t (macro-type-mem1))       ; subtyped
      (let (st (##subtype obj))
        (cond
         ((##fx= st (macro-subtype-structure)) ; object
          (##type-id (##structure-type obj)))
         ((##fx= st (macro-subtype-boxvalues)) ; box or values?
          (if (##fx= (##vector-length obj) 1)
            'box
            'values))
         (else
          (##vector-ref +subtype-id+ st)))))
     ((##fx= t (macro-type-mem2))       ; pair
      'pair)
     ((##fx= t (macro-type-fixnum))     ; fixnum
      'fixnum)
     (else                              ; special (immediate)
      (cond
       ((##char? obj)      'char)
       ((##eq? obj '())    'null)
       ((##eq? obj #f)     'boolean)
       ((##eq? obj #t)     'boolean)
       ((##eq? obj #!void) 'void)
       ((##eq? obj #!eof)  'eof)
       (else 'unknown))))))

(def (linear-type-of obj)
  (let (t (##type obj))
    (cond
     ((##fx= t (macro-type-mem1))       ; subtyped
      (let (st (##subtype obj))
        (cond
         ((##fx= st (macro-subtype-structure)) ; object
          (let (klass (##structure-type obj))
            (type-linearize-class klass)))
         ((##fx= st (macro-subtype-boxvalues)) ; box or values?
          (if (##fx= (##vector-length obj) 1)
            '(box t)
            '(values t)))
         (else
          (##vector-ref +subtype-linear+ st)))))
     ((##fx= t (macro-type-mem2))       ; pair
      '(pair t))
     ((##fx= t (macro-type-fixnum))     ; fixnum
      '(fixnum integer real number t))
     (else                              ; special (immediate)
      (cond
       ((##char? obj)      '(char t))
       ((##eq? obj '())    '(null t))
       ((##eq? obj #f)     '(boolean t))
       ((##eq? obj #t)     '(boolean t))
       ((##eq? obj #!void) '(void t))
       ((##eq? obj #!eof)  '(eof t))
       (else '(unknown)))))))

(extern namespace: #f type-descriptor-mixin) ; runtime

(def (type-linearize-class klass)
  (if (type-descriptor? klass)
    (if (type-descriptor-mixin klass)
      (type-linearize-class-type klass)
      (type-linearize-struct-type klass))
    (type-linearize-record-type klass)))

(def (type-linearize-class-type klass)
  (let lp ((rest (type-descriptor-mixin klass))
           (r [(##type-id klass)]))
    (match rest
      ([klass . rest]
       (lp rest (cons (##type-id klass) r)))
      (else
       (foldl cons '(object t) r)))))

(def (type-linearize-struct-type klass)
  (type-linearize-record-type klass '(object t)))

(def (type-linearize-record-type klass (base '(t)))
  (let lp ((klass klass) (r []))
    (if (##type? klass)
      (lp (##type-super klass)
          (cons (##type-id klass) r))
      (foldl cons base r))))

(def +subtype-id+ (make-vector 32 'unknown))
(def +subtype-linear+ (make-vector 32 '(unknown)))

(defrules defsubtype ()
  ((_ decl ...)
   (begin (declare-subtype decl) ...)))

(defrules declare-subtype ()
  ((_ (st id))
   (begin
     (vector-set! +subtype-id+ st 'id)
     (vector-set! +subtype-linear+ st '(id t))))
  ((_ (st id lids))
   (begin
     (vector-set! +subtype-id+ st 'id)
     (vector-set! +subtype-linear+ st 'lids))))

(defsubtype
  ((macro-subtype-vector)       vector)
  ((macro-subtype-pair)         pair)
  ((macro-subtype-ratnum)       ratnum  (ratnum real number t))
  ((macro-subtype-cpxnum)       cpxnum  (cpxnum number t))
  ((macro-subtype-symbol)       symbol)
  ((macro-subtype-keyword)      keyword)
  ((macro-subtype-frame)        frame)
  ((macro-subtype-continuation) continuation)
  ((macro-subtype-promise)      promise)
  ((macro-subtype-weak)         weak)
  ((macro-subtype-procedure)    procedure)
  ((macro-subtype-foreign)      foreign)
  ((macro-subtype-string)       string)
  ((macro-subtype-s8vector)     s8vector)
  ((macro-subtype-u8vector)     u8vector)
  ((macro-subtype-s16vector)    s16vector)
  ((macro-subtype-u16vector)    u16vector)
  ((macro-subtype-s32vector)    s32vector)
  ((macro-subtype-u32vector)    u32vector)
  ((macro-subtype-f32vector)    f32vector)
  ((macro-subtype-s64vector)    s64vector)
  ((macro-subtype-u64vector)    u64vector)
  ((macro-subtype-f64vector)    f64vector)
  ((macro-subtype-flonum)       flonum  (flonum real number t))
  ((macro-subtype-bignum)       bignum (bignum integer real number t)))

;;; Generic Methods

;; generic method objects
;; id: the id of the generic
;; tabs: a vector of generic-table per arity
;; default: the default method invoked if no method matches
;; mx: the mutex write-protecting the generic method tables
(defstruct generic (id tabs default mx)
  final: #t unchecked: #t
  constructor: :init!)

(defmethod {:init! generic}
  (lambda (self id (default #f))
    (unless (or (not default) (procedure? default))
      (raise-bad-argument 'generic "procedure or #f -- default method" id default))
    (struct-instance-init! self id (vector) default (make-mutex 'generic))))

;; generic dispatch tables
;; methods: [[arg-types . proc] ...]
;; cache: cache for fast dispatch
;; mx: the mutex write-protecting the table
(defstruct generic-table (methods cache mx)
  final: #t unchecked: #t
  constructor: :init!)

(defmethod {:init! generic-table}
  (lambda (self)
    (struct-instance-init! self [] (make-vector 10 #f) (make-mutex 'generic-table))))

;;; Generic Method binding

(def (generic-bind! gen signature method)
  (unless (procedure? method)
    (raise-bad-argument 'generic-bind! "procedure -- method implementation" method))
  (let ((arity (length signature))
        (mx (&generic-mx gen)))
    (mutex-lock! mx)
    (let (tabs (&generic-tabs gen))
      (if (##fx< arity (##vector-length tabs))
        (cond
         ((##vector-ref tabs arity)
          => (lambda (gtab)
               (generic-bind-method! gtab signature method)))
         (else
          (let (gtab (make-generic-table))
            (##vector-set! tabs arity gtab)
            (generic-bind-method! gtab signature method))))
        (let ((new-tabs (make-vector (##fx+ arity 1) #f))
              (gtab (make-generic-table)))
          (##subvector-move! tabs 0 (##vector-length tabs) new-tabs 0)
          (##vector-set! new-tabs arity gtab)
          (set! (&generic-tabs gen) new-tabs)
          (generic-bind-method! gtab signature method))))
    (mutex-unlock! mx)))

(def (generic-bind-method! gtab signature method)
  (def (invalidate? cache)
    (let (cache-len (##vector-length cache))
      (let lp ((i 0))
        (if (##fx< i cache-len)
          (or (##vector-ref cache i)
              (lp (##fx+ i 1)))
          #f))))

  (let again ()
    (let* ((old-methods (&generic-table-methods gtab))
           (new-methods (generic-add-method old-methods signature method)))
      (let (mx (&generic-table-mx gtab))
        (mutex-lock! mx)
        (cond
         ((eq? old-methods (&generic-table-methods gtab))
          (set! (&generic-table-methods gtab)
            new-methods)
          ;; invalidate cache if it has any entries
          (when (invalidate? (&generic-table-cache gtab))
            (set! (&generic-table-cache gtab)
              (make-vector (##vector-length (&generic-table-cache gtab)) #f)))
          (mutex-unlock! mx))
         (else
          ;; concurrent redefinition, try again
          (mutex-unlock! mx)
          (again)))))))

(def (generic-add-method methods signature method)
  (let recur ((rest methods))
    (match rest
      ([hd . rest]
       (with ([hd-signature . hd-method] hd)
         (cond
          ((generic-dispatch-before? signature hd-signature)
           (cons* (cons signature method) hd rest))
          ((equal? signature hd-signature)
           (cons (cons signature method) rest))
          (else
           (cons hd (recur rest))))))
      (else
       [(cons signature method)]))))

(def (generic-dispatch-before? sig-a sig-b)
  (let lp ((rest-a sig-a) (rest-b sig-b))
    (match rest-a
      ([type-a . rest-a]
       (with ([type-b . rest-b] rest-b)
         (and (not (generic-dispatch-type<? type-b type-a))
              (or (generic-dispatch-type<? type-a type-b)
                  (lp rest-a rest-b)))))
      (else #f))))

(def (generic-dispatch-type<? type-a type-b)
  (memq (car type-b) type-a))

;;; Generic Method Dispatch

(def (generic-dispatch gen . args)
  (let ((arity (##length args))
        (tabs (&generic-tabs gen)))
    (cond
     ((and (##fx< arity (##vector-length tabs))
           (##vector-ref tabs arity))
      => (lambda (gtab)
           (cond
            ((generic-dispatch-method gtab args (&generic-default gen))
             => (lambda (method)
                  (apply method args)))
            (else
             (raise-dispatch-error 'generic-dispatch (generic-id gen) args)))))
     ((&generic-default gen)
      => (lambda (method)
           (apply method args)))
     (else
      (raise-dispatch-error 'generic-dispatch (generic-id gen) args)))))

(def (generic-dispatch-method gtab args default)
  (cond
   ((generic-dispatch-cache-lookup (&generic-table-cache gtab) args))
   (else
    (generic-dispatch-method-ref gtab args default))))

(def (generic-dispatch-method-ref gtab args default)
  (let* ((methods (&generic-table-methods gtab))
         (method (or (generic-dispatch-find-method methods args) default)))
    (when method
      (let (mx (&generic-table-mx gtab))
        (mutex-lock! mx)
        ;; we only cache if there was no concurrent redefinition
        (when (eq? methods (&generic-table-methods gtab))
          ;; don't try to cache if a concurrent cache miss already did so
          (unless (generic-dispatch-cache-lookup (&generic-table-cache gtab) args)
            (generic-dispatch-cache! gtab args method)))
        (mutex-unlock! mx)))
    method))

(defrules defdispatch* ()
  ((_ dispatch-e method-e cache-lookup-e arity arg ...)
   (begin
     (def (dispatch-e gen arg ...)
       (let (tabs (&generic-tabs gen))
         (cond
          ((and (##fx< arity (##vector-length tabs))
                (##vector-ref tabs arity))
           => (lambda (gtab)
                (cond
                 ((method-e gtab (&generic-default gen) arg ...)
                  => (lambda (method)
                       (method arg ...)))
                 (else
                  (raise-dispatch-error 'dispatch-e (generic-id gen) [arg ...])))))
          ((&generic-default gen)
           => (lambda (method) (method arg ...)))
          (else
           (raise-dispatch-error 'dispatch-e (generic-id gen) [arg ...])))))
     (def (method-e gtab default arg ...)
       (cond
        ((cache-lookup-e (&generic-table-cache gtab) arg ...))
        (else
         (generic-dispatch-method-ref gtab [arg ...] default)))))))

(defdispatch* generic-dispatch1 generic-dispatch-method1 generic-dispatch-cache-lookup1 1 arg1)
(defdispatch* generic-dispatch2 generic-dispatch-method2 generic-dispatch-cache-lookup2 2 arg1 arg2)
(defdispatch* generic-dispatch3 generic-dispatch-method3 generic-dispatch-cache-lookup3 3 arg1 arg2 arg3)
(defdispatch* generic-dispatch4 generic-dispatch-method4 generic-dispatch-cache-lookup4 4 arg1 arg2 arg3 arg4)

(def (generic-dispatch-find-method methods args)
  (let (arg-types (map linear-type-of args))
    (let lp ((rest methods))
      (match rest
        ([hd . rest]
         (with ([signature . method] hd)
           (if (generic-dispatch-match? arg-types signature)
             method
             (lp rest))))
        (else #f)))))

(def (generic-dispatch-match? arg-types signature)
  (let lp ((rest-args arg-types)
           (rest-sign signature))
    (match rest-args
      ([arg-tids . rest-args]
       (with ([sign-tids . rest-sign] rest-sign)
         (and (memq (car sign-tids) arg-tids)
              (lp rest-args rest-sign))))
      (else #t))))

;; @next-method implementation
(def (generic-dispatch-next gen method . args)
  (def (drop method methods)
    (let lp ((rest methods))
      (match rest
        ([[signature . proc] . rest]
         (if (eq? method proc)
           rest
           (lp rest)))
        (else []))))

  (let ((arity (##length args))
        (tabs (&generic-tabs gen)))
    (cond
     ((and (##fx< arity (##vector-length tabs))
           (##vector-ref tabs arity))
      => (lambda (gtab)
           (let (methods (drop method (&generic-table-methods gtab)))
             (cond
              ((generic-dispatch-find-method methods args)
               => (lambda (method)
                    (apply method args)))
              ((&generic-default gen)
               => (lambda (method)
                    (apply method args)))
              (else
               (raise-dispatch-error 'generic-dispatch-next (generic-id gen) args))))))
     (else
      (raise-dispatch-error 'generic-dispatch-next (generic-id gen) args)))))

;; The cache is a perfect hash table represented as a vector containing
;; cache entries. A cache entry is an inverted arg type id improper list
;; terminating to the the method procedure.
;; This allows for lock-free allocation-free recursive lookup
;; and reasonably fast dispatch
(def (generic-dispatch-cache-lookup cache args)
  (declare (not interrupts-enabled))
  (def (lookup hash shift rest)
    (match rest
      ([arg . rest]
       (let* ((tid (type-of arg))
              (hash (cache-hash-e hash shift tid)))
         (match (lookup hash (##fx+ shift 1) rest)
           ([xtid . xrest]
            (and (##eq? tid xtid)
                 xrest))
           (else #f))))
      (else
       (let* ((len (##vector-length cache))
              (ix (##fxmodulo hash len)))
         (##vector-ref cache ix)))))

  (let (proc (lookup 0 0 args))
    (and (##procedure? proc) proc)))

(defrules cache-hash-e ()
  ((_ mix shift tid)
   (##fxxor mix (##fxarithmetic-shift (##symbol-hash tid) shift))))

(defrules cache-hash-ref ()
  ((_ obj tid)
   (match obj
     ([xtid . rest]
      (and (eq? tid xtid) rest))
     (else #f))))

(def (cache-hash1 cache mix shift arg)
  (declare (not interrupts-enabled))
  (let* ((tid (type-of arg))
         (hash (cache-hash-e mix shift tid))
         (len (##vector-length cache))
         (ix (##fxmodulo hash len))
         (obj (##vector-ref cache ix)))
    (cache-hash-ref obj tid)))

(defrules defcache-hash* ()
  ((_ cache-hash cache-hash-next arg1 arg ...)
   (def (cache-hash cache mix shift arg1 arg ...)
     (declare (not interrupts-enabled))
     (let* ((tid (type-of arg1))
            (hash (cache-hash-e mix shift tid))
            (obj (cache-hash-next cache hash (fx1+ shift) arg ...)))
       (cache-hash-ref obj tid)))))

(defcache-hash* cache-hash2 cache-hash1 arg1 arg2)
(defcache-hash* cache-hash3 cache-hash2 arg1 arg2 arg3)
(defcache-hash* cache-hash4 cache-hash3 arg1 arg2 arg3 arg4)

(defrules deflookup* ()
  ((_ lookup-e hash-e arg ...)
   (def (lookup-e cache arg ...)
     (declare (not interrupts-enabled))
     (let (method (hash-e cache 0 0 arg ...))
       (and (##procedure? method) method)))))

(deflookup* generic-dispatch-cache-lookup1 cache-hash1 arg1)
(deflookup* generic-dispatch-cache-lookup2 cache-hash2 arg1 arg2)
(deflookup* generic-dispatch-cache-lookup3 cache-hash3 arg1 arg2 arg3)
(deflookup* generic-dispatch-cache-lookup4 cache-hash4 arg1 arg2 arg3 arg4)

;; cache the result of method dispatch
(def (generic-dispatch-cache! gtab args method)
  (let* ((arg-types (map type-of args))
         (entry (foldl cons method arg-types))
         (hash (foldl (lambda (tid shift r)
                        (##fxxor r (##fxarithmetic-shift (##symbol-hash tid) shift)))
                      0 arg-types (iota (length args)))))
    (let lp ((cache (&generic-table-cache gtab)))
      (let* ((len (##vector-length cache))
             (ix (##fxmodulo hash len)))
        (if (##vector-ref cache ix)     ; conflict
          (cond
           ((generic-dispatch-cache-rehash cache) => lp))
          (begin
            (##vector-set! cache ix entry)
            (set! (&generic-table-cache gtab) cache)))))))

(def (generic-dispatch-cache-rehash cache)
  (def cache-len (##vector-length cache))

  (def (hash-entry entry)
    (let lp ((rest entry) (count 0) (r []))
      (match rest
        ([tid . rest]
         (lp rest (##fx+ count 1) (cons tid r)))
        (else
         (foldl (lambda (tid shift r)
                  (##fxxor r (##fxarithmetic-shift (##symbol-hash tid) shift)))
                0 r (iota count))))))

  (def (rehash! new-cache)
    (def new-cache-len (##vector-length new-cache))
    (let lp ((i 0))
      (if (##fx< i cache-len)
        (let (entry (##vector-ref cache i))
          (if entry
            (let* ((hash (hash-entry entry))
                   (ix (##fxmodulo hash new-cache-len)))
              (if (##vector-ref new-cache ix)
                #f
                (begin
                  (##vector-set! new-cache ix entry)
                  (lp (##fx+ i 1)))))
            (lp (##fx+ i 1))))
        #t)))

    (let retry ((new-cache-len (##fxquotient (##fx* 3 cache-len) 2)))
      (if (##fx< new-cache-len +max-cache-size+)
        (let (new-cache (make-vector new-cache-len #f))
          (if (rehash! new-cache)
            new-cache
            (retry (##fxquotient (##fx* 3 new-cache-len) 2))))
        (begin
          ;; that's a cache pathology -- i'd like to know about it.
          (display "*** Warning: cannot rehash generic cache; maximum cache size exceeded\n"
                   ##stderr-port)
          #f))))

(def +max-cache-size+ (expt 2 16)) ; 64K ought to be enough for everyone -- famous last words

;;; _gambit#
(extern namespace: #f
  macro-type-mem1
  macro-type-mem2
  macro-type-fixnum
  macro-subtype-structure
  macro-subtype-boxvalues
  macro-subtype-vector
  macro-subtype-pair
  macro-subtype-ratnum
  macro-subtype-cpxnum
  macro-subtype-symbol
  macro-subtype-keyword
  macro-subtype-frame
  macro-subtype-continuation
  macro-subtype-promise
  macro-subtype-weak
  macro-subtype-procedure
  macro-subtype-foreign
  macro-subtype-string
  macro-subtype-s8vector
  macro-subtype-u8vector
  macro-subtype-s16vector
  macro-subtype-u16vector
  macro-subtype-s32vector
  macro-subtype-u32vector
  macro-subtype-f32vector
  macro-subtype-s64vector
  macro-subtype-u64vector
  macro-subtype-f64vector
  macro-subtype-flonum
  macro-subtype-bignum)
