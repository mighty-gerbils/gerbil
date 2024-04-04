;;; -*- Gerbil -*-
;;; © vyzo
;;; Generic dispatch

(import :std/error)
(export make-generic generic? generic-id generic-dispatch
        generic-bind! generic-dispatch generic-dispatch-next
        generic-dispatch1 generic-dispatch2 generic-dispatch3 generic-dispatch4
        dispatch-error?)

(declare (not safe))

(deferror-class DispatchError () dispatch-error?)
(defraise/context (raise-dispatch-error where method-id args)
  (DispatchError "generic dispatch failure; no matching method"
                 irritants: (cons method-id args)))

;;; Generic Methods

;; generic method objects
;; id: the id of the generic
;; tabs: a vector of generic-table per arity
;; default: the default method invoked if no method matches
;; mx: the mutex write-protecting the generic method tables
(defstruct generic (id tabs default mx)
  final: #t constructor: :init!)

(defmethod {:init! generic}
  (lambda (self id (default #f))
    (unless (or (not default) (procedure? default))
      (raise-bad-argument generic "procedure or #f -- default method" id default))
    (struct-instance-init! self id (vector) default (make-mutex 'generic))))

;; generic dispatch tables
;; methods: [[arg-types . proc] ...]
;; cache: cache for fast dispatch
;; mx: the mutex write-protecting the table
(defstruct generic-table (methods cache mx)
  final: #t constructor: :init!)

(defmethod {:init! generic-table}
  (lambda (self)
    (struct-instance-init! self [] (make-vector 10 #f) (make-mutex 'generic-table))))

;;; Generic Method binding

(def (generic-bind! (gen :- generic) signature method)
  (unless (procedure? method)
    (raise-bad-argument generic-bind! "procedure -- method implementation" method))
  (let ((arity (length signature))
        (mx gen.mx))
    (mutex-lock! mx)
    (let (tabs gen.tabs)
      (if (fx< arity (vector-length tabs))
        (cond
         ((vector-ref tabs arity)
          => (lambda (gtab)
               (generic-bind-method! gtab signature method)))
         (else
          (let (gtab (make-generic-table))
            (vector-set! tabs arity gtab)
            (generic-bind-method! gtab signature method))))
        (let ((new-tabs (make-vector (fx+ arity 1) #f))
              (gtab (make-generic-table)))
          (subvector-move! tabs 0 (vector-length tabs) new-tabs 0)
          (vector-set! new-tabs arity gtab)
          (set! gen.tabs new-tabs)
          (generic-bind-method! gtab signature method))))
    (mutex-unlock! mx)))

(def (generic-bind-method! (gtab :- generic-table) signature method)
  (def (invalidate? cache)
    (let (cache-len (vector-length cache))
      (let lp ((i 0))
        (if (fx< i cache-len)
          (or (vector-ref cache i)
              (lp (fx+ i 1)))
          #f))))

  (let again ()
    (let* ((old-methods gtab.methods)
           (new-methods (generic-add-method old-methods signature method)))
      (let (mx gtab.mx)
        (mutex-lock! mx)
        (cond
         ((eq? old-methods gtab.methods)
          (set! gtab.methods new-methods)
          ;; invalidate cache if it has any entries
          (when (invalidate? gtab.cache)
            (set! gtab.cache
              (make-vector (vector-length gtab.cache) #f)))
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
          ((equal? signature hd-signature)
           (cons (cons signature method) rest))
          ((generic-dispatch-before? signature hd-signature)
           (cons* (cons signature method) hd rest))
          (else
           (cons hd (recur rest))))))
      (else
       [(cons signature method)]))))

(def (generic-dispatch-before? sig-a sig-b)
  (let lp ((rest-a sig-a) (rest-b sig-b))
    (match rest-a
      ([type-a . rest-a]
       (with ([type-b . rest-b] rest-b)
         (and (not (generic-dispatch-type<=? type-b type-a))
              (or (generic-dispatch-type<=? type-a type-b)
                  (lp rest-a rest-b)))))
      (else #f))))

(def (generic-dispatch-type<=? type-a type-b)
  (or (eq? type-a type-b)
      (memq type-b (class-type-precedence-list type-a))))

;;; Generic Method Dispatch

(def (generic-dispatch (gen :- generic) . args)
  (let ((arity (length args))
        (tabs gen.tabs))
    (cond
     ((and (fx< arity (vector-length tabs))
           (vector-ref tabs arity))
      => (lambda (gtab)
           (cond
            ((generic-dispatch-method gtab args gen.default)
             => (lambda (method)
                  (apply method args)))
            (else
             (raise-dispatch-error generic-dispatch (generic-id gen) args)))))
     (gen.default
      => (lambda (method)
           (apply method args)))
     (else
      (raise-dispatch-error generic-dispatch (generic-id gen) args)))))

(def (generic-dispatch-method (gtab :- generic-table) args default)
  (cond
   ((generic-dispatch-cache-lookup gtab.cache args))
   (else
    (generic-dispatch-method-ref gtab args default))))

(def (generic-dispatch-method-ref (gtab :- generic-table) args default)
  (let* ((methods gtab.methods)
         (method (or (generic-dispatch-find-method methods args) default)))
    (when method
      (let (mx gtab.mx)
        (mutex-lock! mx)
        ;; we only cache if there was no concurrent redefinition
        (when (eq? methods gtab.methods)
          ;; don't try to cache if a concurrent cache miss already did so
          (unless (generic-dispatch-cache-lookup gtab.cache args)
            (generic-dispatch-cache! gtab args method)))
        (mutex-unlock! mx)))
    method))

(defrules defdispatch* ()
  ((_ dispatch-e method-e cache-lookup-e arity arg ...)
   (begin
     (def (dispatch-e gen arg ...)
       (using (gen :- generic)
         (let (tabs gen.tabs)
           (cond
            ((and (fx< arity (vector-length tabs))
                  (vector-ref tabs arity))
             => (lambda (gtab)
                  (cond
                   ((method-e gtab gen.default arg ...)
                    => (lambda (method)
                         (method arg ...)))
                   (else
                    (raise-dispatch-error dispatch-e (generic-id gen) [arg ...])))))
            (gen.default
             => (lambda (method) (method arg ...)))
            (else
             (raise-dispatch-error dispatch-e (generic-id gen) [arg ...]))))))
     (def (method-e gtab default arg ...)
       (using (gtab :- generic-table)
         (cond
          ((cache-lookup-e gtab.cache arg ...))
          (else
           (generic-dispatch-method-ref gtab [arg ...] default))))))))

(defdispatch* generic-dispatch1 generic-dispatch-method1 generic-dispatch-cache-lookup1 1 arg1)
(defdispatch* generic-dispatch2 generic-dispatch-method2 generic-dispatch-cache-lookup2 2 arg1 arg2)
(defdispatch* generic-dispatch3 generic-dispatch-method3 generic-dispatch-cache-lookup3 3 arg1 arg2 arg3)
(defdispatch* generic-dispatch4 generic-dispatch-method4 generic-dispatch-cache-lookup4 4 arg1 arg2 arg3 arg4)

(def (generic-dispatch-find-method methods args)
  (let (arg-types (map class-of args))
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
           (rest-sig signature))
    (match rest-args
      ([arg-type . rest-args]
       (with ([sig-type . rest-sig] rest-sig)
         (and (or (eq? sig-type arg-type)
                  (memq sig-type (class-type-precedence-list arg-type)))
              (lp rest-args rest-sig))))
      (else #t))))

;; @next-method implementation
(def (generic-dispatch-next (gen :- generic) method . args)
  (def (drop method methods)
    (let lp ((rest methods))
      (match rest
        ([[signature . proc] . rest]
         (if (eq? method proc)
           rest
           (lp rest)))
        (else []))))

  (let ((arity (length args))
        (tabs gen.tabs))
    (cond
     ((and (fx< arity (vector-length tabs))
           (vector-ref tabs arity))
      => (lambda (gtab)
           (using (gtab :- generic-table)
             (let (methods (drop method gtab.methods))
               (cond
                ((generic-dispatch-find-method methods args)
                 => (lambda (method)
                      (apply method args)))
                (gen.default
                 => (lambda (method)
                      (apply method args)))
                (else
                 (raise-dispatch-error generic-dispatch-next (generic-id gen) args)))))))
     (else
      (raise-dispatch-error generic-dispatch-next (generic-id gen) args)))))

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
       (let* ((klass (class-of arg))
              (hash (cache-hash-e hash shift klass)))
         (match (lookup hash (fx+ shift 1) rest)
           ([xklass . xrest]
            (and (eq? klass xklass)
                 xrest))
           (else #f))))
      (else
       (let* ((len (vector-length cache))
              (ix (fxmodulo hash len)))
         (vector-ref cache ix)))))

  (let (proc (lookup 0 0 args))
    (and (procedure? proc) proc)))

(defrules cache-hash-e ()
  ((_ mix shift klass)
   (fxxor mix (fxarithmetic-shift (class-hash klass) shift))))

(defrules cache-hash-ref ()
  ((_ obj klass)
   (match obj
     ([xklass . rest]
      (and (eq? klass xklass) rest))
     (else #f))))

(def (cache-hash1 cache mix shift arg)
  (declare (not interrupts-enabled))
  (let* ((klass (class-of arg))
         (hash (cache-hash-e mix shift klass))
         (len (vector-length cache))
         (ix (fxmodulo hash len))
         (obj (vector-ref cache ix)))
    (cache-hash-ref obj klass)))

(defrules defcache-hash* ()
  ((_ cache-hash cache-hash-next arg1 arg ...)
   (def (cache-hash cache mix shift arg1 arg ...)
     (declare (not interrupts-enabled))
     (let* ((klass (class-of arg1))
            (hash (cache-hash-e mix shift klass))
            (obj (cache-hash-next cache hash (fx1+ shift) arg ...)))
       (cache-hash-ref obj klass)))))

(defcache-hash* cache-hash2 cache-hash1 arg1 arg2)
(defcache-hash* cache-hash3 cache-hash2 arg1 arg2 arg3)
(defcache-hash* cache-hash4 cache-hash3 arg1 arg2 arg3 arg4)

(defrules deflookup* ()
  ((_ lookup-e hash-e arg ...)
   (def (lookup-e cache arg ...)
     (declare (not interrupts-enabled))
     (let (method (hash-e cache 0 0 arg ...))
       (and (procedure? method) method)))))

(deflookup* generic-dispatch-cache-lookup1 cache-hash1 arg1)
(deflookup* generic-dispatch-cache-lookup2 cache-hash2 arg1 arg2)
(deflookup* generic-dispatch-cache-lookup3 cache-hash3 arg1 arg2 arg3)
(deflookup* generic-dispatch-cache-lookup4 cache-hash4 arg1 arg2 arg3 arg4)

;; cache the result of method dispatch
(def (generic-dispatch-cache! (gtab :- generic-table) args method)
  (let* ((arg-types (map class-of args))
         (entry (foldl cons method arg-types))
         (hash (foldl (lambda (klass shift r)
                        (fxxor r (fxarithmetic-shift (class-hash klass) shift)))
                      0 arg-types (iota (length args)))))
    (let lp ((cache gtab.cache))
      (let* ((len (vector-length cache))
             (ix (fxmodulo hash len)))
        (if (vector-ref cache ix)       ; conflict
          (cond
           ((generic-dispatch-cache-rehash cache) => lp))
          (begin
            (vector-set! cache ix entry)
            (set! gtab.cache cache)))))))

(def (generic-dispatch-cache-rehash cache)
  (def cache-len (vector-length cache))

  (def (hash-entry entry)
    (let lp ((rest entry) (count 0) (r []))
      (match rest
        ([klass . rest]
         (lp rest (fx+ count 1) (cons klass r)))
        (else
         (foldl (lambda (klass shift r)
                  (fxxor r (fxarithmetic-shift (class-hash klass) shift)))
                0 r (iota count))))))

  (def (rehash! new-cache)
    (def new-cache-len (vector-length new-cache))
    (let lp ((i 0))
      (if (fx< i cache-len)
        (let (entry (vector-ref cache i))
          (if entry
            (let* ((hash (hash-entry entry))
                   (ix (fxmodulo hash new-cache-len)))
              (if (vector-ref new-cache ix)
                #f
                (begin
                  (vector-set! new-cache ix entry)
                  (lp (fx+ i 1)))))
            (lp (fx+ i 1))))
        #t)))

    (let retry ((new-cache-len (fxquotient (fx* 3 cache-len) 2)))
      (if (fx< new-cache-len +max-cache-size+)
        (let (new-cache (make-vector new-cache-len #f))
          (if (rehash! new-cache)
            new-cache
            (retry (fxquotient (fx* 3 new-cache-len) 2))))
        (begin
          ;; that's a cache pathology -- i'd like to know about it.
          (display "*** Warning: cannot rehash generic cache; maximum cache size exceeded\n"
                   ##stderr-port)
          #f))))

(def (class-hash klass)
  (##symbol-hash (##type-id klass)))

(def +max-cache-size+ (expt 2 16)) ; 64K ought to be enough for everyone -- famous last words
