;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
package: gerbil/compiler
namespace: gxc

(import :gerbil/expander
        "base"
        "compile"
        <syntax-case> <syntax-sugar>)
(export #t (import: <syntax-case> <syntax-sugar>))

(def current-compile-optimizer-info
  (make-parameter #f))
(def current-compile-mutators
  (make-parameter #f))
(def current-compile-local-type
  (make-parameter #f))

(defstruct optimizer-info (type ssxi methods)
  constructor: :init!)

(defmethod {:init! optimizer-info}
  (lambda (self)
    (struct-instance-init! self (make-hash-table-eq) (make-hash-table-eq) (make-hash-table-eq))))

;;; optimizer-info: types
(defstruct !type (id))
(defstruct (!alias !type) ())
(defstruct (!struct-type !type) (super fields xfields ctor plist methods)
  constructor: :init!)
(defstruct (!class-type !type) (super mixin slots xslots ctor plist methods)
  constructor: :init!)
(defstruct (!procedure !type) ())
(defstruct (!struct-pred !procedure) ())
(defstruct (!struct-cons !procedure) ())
(defstruct (!struct-getf !procedure) (off unchecked?))
(defstruct (!struct-setf !procedure) (off unchecked?))
(defstruct (!class-pred !procedure) ())
(defstruct (!class-cons !procedure) ())
(defstruct (!class-getf !procedure) (slot unchecked?))
(defstruct (!class-setf !procedure) (slot unchecked?))
(defstruct (!lambda !procedure) (arity dispatch inline inline-typedecl)
  constructor: :init!)
(defstruct (!case-lambda !procedure) (clauses))
(defstruct (!kw-lambda !procedure) (table dispatch))
(defstruct (!kw-lambda-primary !procedure) (keys main))

;; primitive markers (necessary to avoid unsound call optimizations)
(defclass !primitive ())
(defclass (!primitive-lambda !primitive !lambda) ()
  constructor: :init!)
(defclass (!primitive-case-lambda !primitive !case-lambda) ()
  constructor: :init!)

(defmethod {:init! !struct-type}
  (lambda (self id super fields xfields ctor plist)
    (struct-instance-init! self id super fields xfields ctor plist #f)))

(defmethod {:init! !class-type}
  (lambda (self id super mixin slots xslots ctor plist)
    (struct-instance-init! self id super mixin slots xslots ctor plist #f)))

(defmethod {:init! !lambda}
  (lambda (self id arity dispatch (inline #f) (typedecl #f))
    (struct-instance-init! self id arity dispatch inline typedecl)))

(defmethod {:init! !primitive-lambda}
  !lambda:::init!)

(defmethod {:init! !primitive-case-lambda}
  (lambda (self . args)
    (apply struct-instance-init! self args)))

(def (!struct-type-vtab type)
  (cond
   ((!struct-type-methods type) => values)
   (else
    (let (vtab (make-hash-table-eq))
      (set! (!struct-type-methods type) vtab)
      vtab))))

(def (!class-type-vtab type)
  (cond
   ((!class-type-methods type) => values)
   (else
    (let (vtab (make-hash-table-eq))
      (set! (!class-type-methods type) vtab)
      vtab))))

(def (!type-vtab type)
  (cond
   ((!struct-type? type)
    (!struct-type-vtab type))
   ((!class-type? type)
    (!class-type-vtab type))
   (else #f)))

(def (!struct-type-lookup-method type method)
  (alet (vtab (!struct-type-methods type))
    (hash-get vtab method)))

(def (!class-type-lookup-method type method)
  (alet (vtab (!class-type-methods type))
    (hash-get vtab method)))

(def (!type-lookup-method type method)
  (cond
   ((!struct-type? type)
    (!struct-type-lookup-method type method))
   ((!class-type? type)
    (!class-type-lookup-method type method))
   (else #f)))

(def (!class-type-complete? type)
  (and (!class-type-slots type)
       (let (super (!class-type-super type))
         (cond
          ((not super) #t)
          ((optimizer-lookup-type super)
           => (lambda (super-t)
                (and (!struct-type-xfields super-t) #t)))
          (else #f)))))

(def (optimizer-declare-type! sym type (local? #f))
  (unless (!type? type)
    (error "bad declaration: expected !type" sym type))
  (verbose "declare-type " sym " " (struct->list type))
  (hash-put! (if local?
               (current-compile-local-type)
               (optimizer-info-type (current-compile-optimizer-info)))
             sym type))

(def (optimizer-clear-type! sym (local? #f))
  (verbose "clear-type " sym)
  (hash-remove! (if local?
                  (current-compile-local-type)
                  (optimizer-info-type (current-compile-optimizer-info)))
                sym))

(def (optimizer-declare-method! type-t method sym (rebind? #f))
  (let (type (optimizer-resolve-type type-t))
    (cond
     ((!type-vtab type)
      => (lambda (vtab)
           (cond
            ((hash-key? vtab method)
             (if rebind?
               (begin
                 (verbose "declare-method: rebind existing method" type-t " " method)
                 (hash-put! vtab method sym))
               (error "declare-method: duplicate method declaration")))
            (else
             (verbose "declare-method " type-t " " method " => " sym)
             (hash-put! vtab method sym)))))
     ((not type)
      (verbose "declare-method: unknown type "  type-t))
     (else
      (error "declare-method: bad method declaration; no method table" type-t type)))))

(def (optimizer-lookup-type sym)
  (or (alet (ht (current-compile-local-type))
        (hash-get ht sym))
      (hash-get (optimizer-info-type (current-compile-optimizer-info))
                sym)))

(def (optimizer-resolve-type sym)
  (alet (type (optimizer-lookup-type sym))
    (if (!alias? type)
      (optimizer-resolve-type (!type-id type))
      type)))

(def (optimizer-lookup-method type-t method)
  (!type-lookup-method (optimizer-resolve-type type-t) method))

(def (optimizer-top-level-method! sym)
  (verbose "top-level method: " sym)
  (hash-put! (optimizer-info-methods (current-compile-optimizer-info)) sym #t))

(def (optimizer-top-level-method? sym)
  (hash-get (optimizer-info-methods (current-compile-optimizer-info)) sym))

(def (identifier-symbol stx)
  (if (syntax-quote? stx)
    (generate-runtime-binding-id stx)
    (stx-e stx)))
