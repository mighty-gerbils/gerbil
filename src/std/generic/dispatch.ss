;;; -*- Gerbil -*-
;;; © vyzo
;;; Generic dispatch
package: std/generic

(import :gerbil/gambit/threads)
(export type-of linear-type-of type-linearize-class
        make-generic generic? generic-id generic-dispatch
        generic-dispatch)

(declare (not safe))

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
       ((##eq? obj #f)     'false)
       ((##eq? obj #t)     'true)
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
       ((##eq? obj #f)     '(false boolean t))
       ((##eq? obj #t)     '(true boolean t))
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
  (foldr (lambda (klass r)
           (cons (##type-id klass) r))
         [(##type-id klass) 'object 't]
         (type-descriptor-mixin klass)))

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
  ((macro-subtype-continuation) continuation)
  ((macro-subtype-promise)      promise)
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
      (error "Bad default method; expected procedure or #f" id default))
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
    (struct-instance-init! self [] (vector #f) (make-mutex 'generic-table))))

;;; Generic Method Dispatch

;; generic-dispatch
(def (generic-dispatch gen . args)
  (let ((arity (##length args))
        (tabs (&generic-tabs gen)))
    (cond
     ((and (##fx< arity (##vector-length tabs))
           (##vector-ref tabs arity))
      => (lambda (gtab)
           (cond
            ((generic-dispatch-method gtab args)
             => (lambda (method)
                  (apply method args)))
            ((&generic-default gen)
             => (lambda (method)
                  (apply method args)))
            (else
             (error "No method matching arguments" (generic-id gen) args)))))
     ((&generic-default gen)
      => (lambda (method)
           (apply method args)))
     (else
      (error "No method matching arguments" (generic-id gen) args)))))

(def (generic-dispatch-method gtab args)
  (cond
   ((generic-dispatch-cache-lookup (&generic-table-cache gtab) args)
    => values)
   (else
    (let* ((methods (&generic-table-methods gtab))
           (method (generic-dispatch-find-method methods args)))
      (when method
        (let (mx (&generic-table-mx gtab))
          (mutex-lock! mx)
          (when (eq? methods (&generic-table-methods gtab))
            ;; we only cache if there was no concurrent redefinition
            (generic-dispatch-cache! gtab args method))
          (mutex-unlock! mx)))
      method))))

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

;; The cache is a perfect hash table represented as a vector containing
;; cache entries. A cache entry is an inverted arg type id improper list
;; terminating to the the method procedure.
;; This allows for lock-free allocation-free recursive lookup
;; and reasonably fast dispatch
(def (generic-dispatch-cache-lookup cache args)
  (declare (not interrupts-enabled))
  (def (lookup hash rest)
    (match rest
      ([arg . rest]
       (let* ((tid (type-of arg))
              (hash (##fxxor hash (##symbol-hash tid))))
         (match (lookup hash rest)
           ([xtid . xrest]
            (and (##eq? tid xtid)
                 xrest))
           (else #f))))
      (else
       (let* ((len (##vector-length cache))
              (ix (##fxmodulo hash len)))
         (##vector-ref cache ix)))))

  (let (proc (lookup 0 args))
    (and (##procedure? proc) proc)))

;; cache the result of method dispatch
(def (generic-dispatch-cache! gtab args method)
  (error "XXX IMPLEMENT ME: generic-dispatch-cache!"))

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
