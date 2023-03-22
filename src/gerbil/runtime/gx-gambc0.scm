;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Gerbil stage0 -- Gambit-C host runtime
(##namespace (""))
;;(include "gx-gambc#.scm")

(declare
  (block)
  (standard-bindings)
  (extended-bindings))
(declare (not safe))

;;; Change all vector stuff to this
(define (_gx#vector-ref svs n)
  (if (##structure? svs)
      (##unchecked-structure-ref svs n ##type-type _gx#vector-ref)
      (if (##values? svs)
          (##values-ref svs n)
          (if (##vector? svs)
           (##vector-ref svs n)
           (error "Tried _gx#vector-ref on a non-vector/struct/values: " svs)))))
(define (_gx#vector-set! svs i value)
  (if (##structure? svs)
      (##unchecked-structure-set!
       svs value i ##type-type _gx#vector-set!)
      (if (##values? svs)
          (##values-set! svs i value)
          (if (##vector? svs)
           (##vector-set! svs i value)
           (error "Tried _gx#vector-set! on a non-vector/struct/values: " svs)))))
(define (_gx#vector-length svs)
  (if (##structure? svs) (##structure-length svs)
      (if (##values? svs) (##values-length svs)
          (if (##vector? svs) (##vector-length svs)
           (error "Tried _gx#vector-length on a non-vector/struct/values: " svs)))))
(define (_gx#vector->list svs)
  (if (##vector? svs)
      (##vector->list svs)
      (if (##structure? svs)
          (let ((end (##structure-length svs)))
            (let sl ((n 0))
              (if (= n end) '()
                  (cons (##unchecked-structure-ref
                         svs n ##type-type _gx#vector->list)
                        (sl (+ 1 n))))))
          (if (##values? svs) (##values->list svs)
              (error "Tried _gx#vector->list on a non-vector/struct/values: " svs)))))

;;;
;;; Host Runtime
;;;

(include "gx-version.scm")

(define (gerbil-system-version-string)
  (string-append "Gerbil " (gerbil-version-string) " on Gambit " (system-version-string)))

(define (gerbil-system)
  'gerbil-gambit)

(define gerbil-greeting
  (gerbil-system-version-string))
(set! gerbil-greeting gerbil-greeting) ; allow user mutation

(define (gerbil-runtime-smp?)
  ;; voodoo hack; this relies on the deq of the thread-group structure having
  ;; 3 fields in UP and 4 fields in SMP
 ;; maybe one day marc will provide a primitive/principled way to figure that out, but
  ;; until that day comes we really need to know in order to have the right cond-expand
  ;; branch when we include _gambit# or gx-gambc# (which includes _gambit#)
  (not (%%vector-ref (thread-thread-group ##primordial-thread) 3)))

(cond-expand
  (enable-smp
   (unless (gerbil-runtime-smp?)
     (display "*** WARNING -- SMP compiled Gerbil on UP Gambit runtime\n" ##stderr-port)))
  (else
   (when (gerbil-runtime-smp?)
     (display "*** WARNING -- UP compiled Gerbil on SMP Gambit runtime\n" ##stderr-port))))

;;; Dynamic Module Loading
(define &current-module-libpath
  (make-parameter #f))
(define &current-module-registry
  (make-parameter #f))
(define (gx#dbug)
  (with-exception-catcher
   (lambda _ _)
   (lambda () (##eval '(gx#dbg-core-cxt)))))
(define (load-module modpath #!optional (reload? #f))
  (gx#dbug)
  (cond
   ((and (not reload?) (hash-get (&current-module-registry) modpath))
    => values)
   ((find-library-module modpath)
    => (lambda (path)

  ;; (gx#dbug)
         (let ((lpath (load path)))
  ;; (gx#dbug)
           (hash-put! (&current-module-registry) modpath lpath)
           lpath)))
   (else
    (error "Cannot load module; not found" modpath))))


(define (find-library-module modpath)
  (define (find-compiled-file npath)
    (let ((basepath (%%string-append npath ".o")))
      (let lp ((current #f) (n 1))
        (let ((next (%%string-append basepath (##number->string n))))
          (if (##file-exists? next)
              (lp next (%%fx+ n 1))
              current)))))

  (define (find-source-file npath)
    (let ((spath (%%string-append npath ".scm")))
      (and (##file-exists? spath) spath)))

  (let lp ((rest (&current-module-libpath)))
    (core-match rest
                ((dir . rest)
                 (let ((npath (path-expand modpath (path-expand dir))))
                   (cond
                    ((find-compiled-file npath) => path-normalize)
                    ((find-source-file npath) => path-normalize)
                    (else (lp rest)))))
                (else #f))))

(define (file-newer? file1 file2)
  (define (modification-time file)
    (time->seconds
     (file-info-last-modification-time
      (file-info file #t))))

  (%%fl> (modification-time file1)
         (modification-time file2)))

;; hook for loading compiled module phases
;; when this parameter is set, phase modules will be reloaded
(define _gx#reload-module
  (make-parameter #f))

(define (_gx#load-module modpath)
  (load-module modpath (_gx#reload-module)))

;; introspection repl: this is part of gx-gambc0 so that it is available
;; to all binaries.
;; Starts a nested repl with an exception handler that nests a repl
;; within, so that it can handle introspection exceptions regardless of
;; exception handler in the inspsected thread
(define (replx)
  (define (write-reason exn)
    (lambda (cont port)
      (##display-exception-in-context exn cont port)
      #f))

  (with-exception-handler
   (lambda (exn)
     (continuation-capture
      (lambda (cont)
        (##repl-within cont (write-reason exn) exn))))
   ##repl))


;;; MOP
;;
;; Gerbil rtd:
;;  {##struct-t id super fields name plist ctor slots methods}
;;  {##class-t  id super fields name plist ctor slots methods}
;;
;; Gambit structure rtd:
;;  (define-type type
;;    (id      unprintable: equality-test:)
;;    (name    unprintable: equality-skip:)
;;    (flags   unprintable: equality-skip:)
;;    (super   unprintable: equality-skip:)
;;    (fields  unprintable: equality-skip:))
;;
;; Gerbil rtd on gambit
;; ##structure ##type-type
;;  1  ##type-id
;;  2  ##type-name
;;  3  ##type-flags
;;  4  ##type-super
;;  5  ##type-fields
;;  6                       type-descriptor-mixin
;;  7                       type-descriptor-fields
;;  8                       type-descriptor-plist
;;  9                       type-descriptor-ctor
;; 10                       type-descriptor-slots
;; 11                       type-descriptor-methods
;;
(define (type-descriptor? klass)
  (and (%%type? klass)
       (eq? (%%vector-length klass) 12)))

(define (struct-type? klass)
  (and (type-descriptor? klass)
       (not (type-descriptor-mixin klass))))

(define (class-type? klass)
  (and (type-descriptor? klass)
       (type-descriptor-mixin klass)
       #t))

(define (make-type-descriptor type-id type-name type-super
                              rtd-mixin rtd-fields rtd-plist
                              rtd-ctor rtd-slots rtd-methods)

  (define (put-props! ht key)
    (define (put-plist! ht key plist)
      (cond
       ((assgetq key plist)
        => (lambda (lst)
             (for-each (lambda (id) (hash-put! ht id #t)) lst)))))

    (put-plist! ht key rtd-plist)
    (when rtd-mixin
      (for-each (lambda (klass)
                  (when (type-descriptor-mixin klass) ; ignore structs
                    (let ((plist (type-descriptor-plist klass)))
                      (if (assgetq transparent: plist)
                        (put-plist! ht slots: plist)
                        (put-plist! ht key plist)))))
                rtd-mixin)))

  (let* ((transparent? (assgetq transparent: rtd-plist))
         (field-names
          (cond
           ((assq fields: rtd-plist) => cdr)
           (else '())))
         (field-names
          (cond
           ((assq slots: rtd-plist)
            => (lambda (slots)
                 (append field-names (cdr slots))))
           (else field-names)))
         (_
          (unless (fx= rtd-fields (length field-names))
            (error "Bad field descriptor; length mismatch" type-id rtd-fields field-names)))
         (canonical-fields
          (if type-super
            (list-tail field-names (type-descriptor-fields type-super))
            field-names))
         (printable
          (if transparent?
            #f                          ; all printable
            (let ((ht (make-hash-table-eq)))
              (put-props! ht print:)
              ht)))
         (equality
          (if transparent?
            #f                          ; all equality comparable
            (let ((ht (make-hash-table-eq)))
              (put-props! ht equal:)
              ht)))
         (field-info
          (let recur ((rest canonical-fields))
            (core-match rest
              ((id . rest)
               (let ((flags
                      (if transparent? 0
                          (%%fxior (if (hash-get printable id) 0 1)
                                   (if (hash-get equality id)  0 4)))))
                 (cons* id flags #f (recur rest))))
              (else '()))))
         (opaque?
          (if (or transparent? (assq equal: rtd-plist))
            (if type-super
              (%%fx= (%%fxand (%%type-flags type-super) 1) 1)
              #f)
            #t)))
    (%%structure ##type-type
                 type-id type-name
                 (+ 24 (if opaque? 1 0))
                 type-super
                 (list->vector field-info)
                 rtd-mixin rtd-fields rtd-plist rtd-ctor
                 rtd-slots rtd-methods)))

(define (make-struct-type-descriptor id name super fields plist ctor)
  (make-type-descriptor id name super #f fields plist ctor #f #f))

(define (make-class-type-descriptor id name super mixin fields plist ctor slots)
  (make-type-descriptor id name super mixin fields plist ctor slots #f))

(define (type-descriptor-mixin klass)
  (%%vector-ref klass 6))
(define (type-descriptor-fields klass)
  (%%vector-ref klass 7))
(define (type-descriptor-plist klass)
  (%%vector-ref klass 8))
(define (type-descriptor-ctor klass)
  (%%vector-ref klass 9))
(define (type-descriptor-slots klass)
  (%%vector-ref klass 10))
(define (type-descriptor-methods klass)
  (%%vector-ref klass 11))
(define (type-descriptor-methods-set! klass ht)
  (%%vector-set! klass 11 ht))

(define (type-descriptor-sealed? klass)
  (%%fxbit-set? 20 (%%type-flags klass)))
(define (type-descriptor-seal! klass)
  (%%vector-set! klass 3 (%%fxior (%%fxarithmetic-shift 1 20) (%%type-flags klass))))

(define (make-struct-type id super fields name plist ctor #!optional (field-names #f))
  (when (and super (not (struct-type? super)))
    (error "Illegal super type; not a struct-type" super))
  (when (and super (assgetq final: (type-descriptor-plist super)))
    (error "Cannot extend final struct" super))

  (let* ((super-fields
          (if super (type-descriptor-fields super) 0))
         (std-fields
          (fx+ fields super-fields))
         (std-field-names
          (let* ((super-fields
                  (if super
                    (assgetq fields: (type-descriptor-plist super))
                    '()))
                 (field-names
                  (or field-names (make-list fields ':))))
            (append super-fields field-names)))
         (_
          (unless (%%fx= std-fields (length std-field-names))
            (error "Bad field specification; length mismatch" id std-fields std-field-names)))
         (std-plist
          (cons (cons fields: std-field-names) plist))
         (ctor
          (or ctor (and super (type-descriptor-ctor super)))))
    (make-struct-type-descriptor id name super std-fields std-plist ctor)))

(define (make-struct-predicate klass)
  (let ((tid (%%type-id klass)))
    (if (assgetq final: (type-descriptor-plist klass))
      (lambda (obj)
        (%%structure-direct-instance-of? obj tid))
      (lambda (obj)
        (%%structure-instance-of? obj tid)))))

(define (make-struct-field-accessor klass field)
  (let ((off (%%fx+ (struct-field-offset klass field) 1)))
    (lambda (obj)
      (##structure-ref obj off klass #f))))

(define (make-struct-field-mutator klass field)
  (let ((off (%%fx+ (struct-field-offset klass field) 1)))
    (lambda (obj val)
      (##structure-set! obj val off klass #f))))

(define (make-struct-field-unchecked-accessor klass field)
  (let ((off (%%fx+ (struct-field-offset klass field) 1)))
    (lambda (obj)
      (%%unchecked-structure-ref obj off klass #f))))

(define (make-struct-field-unchecked-mutator klass field)
  (let ((off (%%fx+ (struct-field-offset klass field) 1)))
    (lambda (obj val)
      (%%unchecked-structure-set! obj val off klass #f))))

(define (struct-field-offset klass field)
  (%%fx+ field
         (cond
          ((%%type-super klass) => type-descriptor-fields)
          (else 0))))

(define (struct-field-ref klass obj off)
  (##structure-ref obj (%%fx+ off 1) klass #f))

(define (struct-field-set! klass obj off val)
  (##structure-set! obj val (%%fx+ off 1) klass #f))

(define (struct-subtype? klass xklass)
  (let ((klass-t (%%type-id klass)))
    (let lp ((next xklass))
      (cond
       ((not next)
        #f)
       ((eq? klass-t (%%type-id next))
        #t)
       (else
        (lp (%%type-super next)))))))

(define (make-class-type id super slots name plist ctor)
  (define (class-slots klass)
    (assgetq slots: (type-descriptor-plist klass)))

  (define (make-slots off)
    (let ((slot-table (make-hash-table-eq)))
      (let lp ((rest super) (off off) (slot-list '()))
        (core-match rest
          ((hd . rest)
           (merge-slots slot-table (class-slots hd) off slot-list
                        (lambda (off slot-list)
                          (lp rest off slot-list))))
          (else
           (merge-slots slot-table slots off slot-list
                        (lambda (off slot-list)
                          (values off slot-table (reverse slot-list)))))))))

  (define (merge-slots ht lst off r K)
    (let lp ((rest lst) (off off) (r r))
      (core-match rest
        ((slot . rest)
         (if (hash-get ht slot)
           (lp rest off r)
           (begin
             (hash-put! ht slot off)
             (hash-put! ht (symbol->keyword slot) off)
             (lp rest (%%fx+ off 1) (cons slot r)))))
        (else
         (K off r)))))

  (define (find-super-ctor super)
    (let lp ((rest super) (ctor #f))
      (core-match rest
        ((hd . rest)
         (cond
          ((type-descriptor-ctor hd)
           => (lambda (xctor)
                (if (or (not ctor) (eq? ctor xctor))
                  (lp rest xctor)
                  (error "Conflicting implicit constructors" ctor xctor))))
          (else (lp rest ctor))))
        (else ctor))))

  (define (find-super-struct super)
    (define (base-struct super-struct klass)
      (cond
       (super-struct
        (cond
         ((struct-subtype? super-struct klass)
          (let lp ((klass klass))
            (if (struct-type? klass)
              klass
              (lp (%%type-super klass)))))
         ((struct-subtype? klass super-struct)
          super-struct)
         (else
          (error "Bad mixin: incompatible struct bases" klass super-struct))))
       ((struct-type? klass) klass)
       ((class-type? klass)
        (let lp ((next (%%type-super klass)))
          (cond
           ((not next)
            #f)
           ((struct-type? next)
            next)
           ((class-type? next)
            (lp next))
           (else #f))))
       (else #f)))

    (let lp ((rest super) (super-struct #f))
      (core-match rest
        ((hd . rest)
         (lp rest (base-struct super-struct hd)))
        (else super-struct))))

  (define (expand-struct-mixin super)
    (let lp ((rest super) (mixin '()))
      (core-match rest
        ((hd . rest)
         (if (struct-type? hd)
           (let lp2 ((next hd) (mixin mixin))
             (cond
              ((not next)
               (lp rest mixin))
              ((struct-type? next)
               (lp2 (%%type-super next) (cons next mixin)))
              (else
               (lp rest mixin))))
           (lp rest (cons hd mixin))))
        (else
         (reverse mixin)))))

  (cond
   ((find (lambda (klass) (not (type-descriptor? klass))) super)
    => (lambda (klass)
         (error "Illegal super class; not a type descriptor" klass)))
   ((find (lambda (klass)
             (assgetq final: (type-descriptor-plist klass)))
           super)
    => (lambda (klass)
         (error "Cannot extend final class" klass))))

  (let* ((std-super (find-super-struct super))
         (mixin (if std-super (expand-struct-mixin super) super)))
    (let-values (((std-fields std-slots std-slot-list)
                  (make-slots (if std-super (type-descriptor-fields std-super) 0))))
      (let* ((std-mixin  (class-linearize-mixins mixin))
             (std-plist  (if std-super
                           (let ((fields (assgetq fields: (type-descriptor-plist std-super))))
                             (cons (cons fields: fields) plist))
                           plist))
             (std-plist  (cons (cons slots: std-slot-list) std-plist))
             (std-ctor   (or ctor (find-super-ctor super))))
        (make-class-type-descriptor id name std-super std-mixin std-fields std-plist std-ctor std-slots)))))

(define (class-linearize-mixins klass-lst)
  (define (class->list klass)
    (cons klass (or (type-descriptor-mixin klass) '())))

  (core-match klass-lst
    (() '())
    ((klass)
     (class->list klass))
    (else
     (&linearize-mixins
      (map class->list klass-lst)))))

(define (&linearize-mixins lst)
  (define (K rest r)
    (core-match rest
      ((hd . rest)
       (linearize1 hd rest r))
      (else
       (reverse r))))

  (define (linearize1 hd rest r)
    (core-match hd
      ((hd-first . hd-rest)
       (if (findq hd-first rest)
         (linearize2 rest (list hd) r)
         (K (cons hd-rest rest)
            (putq hd-first r))))
      (else
       (K rest r))))

  (define (linearize2 rest pre r)
    (let lp ((rest rest) (pre pre))
      (core-match rest
        ((hd . rest)
         (core-match hd
           ((hd-first . hd-rest)
            (if (findq hd-first rest)
              (lp rest (cons hd pre))
              (K (foldl cons (cons hd-rest rest) pre)
                 (putq hd-first r))))
           (else
            (lp rest pre)))))))

  (define (putq hd lst)
    (if (memq hd lst) lst
        (cons hd lst)))

  (define (findq hd rest)
    (find (lambda (lst) (memq hd lst)) rest))

  (K lst '()))

(define (make-class-predicate klass)
  (if (assgetq final: (type-descriptor-plist klass))
    (lambda (obj)
      (direct-class-instance? klass obj))
    (lambda (obj)
      (class-instance? klass obj))))

(define (make-class-slot-accessor klass slot)
  (lambda (obj)
    (slot-ref obj slot)))

(define (make-class-slot-mutator klass slot)
  (lambda (obj val)
    (slot-set! obj slot val)))

(define (make-class-slot-unchecked-accessor klass slot)
  (lambda (obj)
    (unchecked-slot-ref obj slot)))

(define (make-class-slot-unchecked-mutator klass slot)
  (lambda (obj val)
    (unchecked-slot-set! obj slot val)))

(define (class-slot-offset klass slot)
  (cond
   ((type-descriptor-slots klass)
    => (lambda (slots) (hash-get slots slot)))
   (else #f)))

(define (class-slot-ref klass obj slot)
  (if (class-instance? klass obj)
    (let ((off (class-slot-offset (object-type obj) slot)))
      (%%unchecked-structure-ref obj (%%fx+ off 1) klass #f))
    (raise-type-error 'class-slot-ref klass obj)))

(define (class-slot-set! klass obj slot val)
  (if (class-instance? klass obj)
    (let ((off (class-slot-offset (object-type obj) slot)))
      (%%unchecked-structure-set! obj val (%%fx+ off 1) klass #f))
    (raise-type-error 'class-slot-set! klass obj)))

(define (class-subtype? klass xklass)
  (let ((klass-t (%%type-id klass)))
    (cond
     ((eq? klass-t (%%type-id xklass)))
     ((type-descriptor-mixin xklass)
      => (lambda (mixin)
           (and (find (lambda (xklass) (eq? klass-t (%%type-id xklass)))
                      mixin)
                #t)))
     (else #f))))

(define object?
  ##structure?)
(define object-type
  ##structure-type)

(define (direct-instance? klass obj)
  (%%structure-direct-instance-of? obj (%%type-id klass)))

(define (struct-instance? klass obj)
  (%%structure-instance-of? obj (%%type-id klass)))

(define direct-struct-instance?
  direct-instance?)

(define (class-instance? klass obj)
  (and (object? obj)
       (let ((klass-id (%%type-id klass))
             (type (object-type obj)))
         (and (type-descriptor? type)
              (or (eq? (%%type-id type) klass-id)
                  (cond
                   ((type-descriptor-mixin type)
                    => (lambda (mixin)
                         (ormap (lambda (type) (eq? (%%type-id type) klass-id))
                                mixin)))
                   (else #f)))))))

(define direct-class-instance?
  direct-instance?)

 (define (make-object klass k)
   (let ((obj (##make-structure klass (%%fx+ k 1))))
     (let effoff ((n 1))
       (if (= n k) obj
           (begin
             (##unchecked-structure-set! obj #f n klass make-object)
             (effoff (+ 1 n)))))))

(define (make-struct-instance klass . args)
  (let ((fields (type-descriptor-fields klass)))
    (cond
     ((type-descriptor-ctor klass)
      => (lambda (kons-id)
           (&constructor-init! klass kons-id (make-object klass fields) args)))
     ((%%fx= fields (length args))
      (apply ##structure klass args))
     (else
      (error "Arguments don't match object size"
        klass fields args)))))

(define (make-class-instance klass . args)
  (let ((obj (make-object klass (type-descriptor-fields klass))))
    (cond
     ((type-descriptor-ctor klass)
      => (lambda (kons-id)
           (&constructor-init! klass kons-id obj args)))
     (else
      (&class-instance-init! klass obj args)))))

(define (struct-instance-init! obj . args)
  (if (%%fx< (length args) (%%vector-length obj))
    (&struct-instance-init! obj args)
    (error "Too many arguments for struct" obj args)))

(define (&struct-instance-init! obj args)
  (let lp ((k 1) (rest args))
    (core-match rest
      ((hd . rest)
       (%%vector-set! obj k hd)
       (lp (%%fx+ k 1) rest))
      (else obj))))

(define (class-instance-init! obj . args)
  (&class-instance-init! (object-type obj) obj args))

(define (&class-instance-init! klass obj args)
  (let lp ((rest args))
    (core-match rest
      ((key val . rest)
       (cond
        ((class-slot-offset klass key)
         => (lambda (off)
              (%%vector-set! obj (%%fx+ off 1) val)
              (lp rest)))
        (else
         (error "No slot for keyword initializer" klass key))))
      (else
       (if (null? rest) obj
           (error "Unexpected class initializer arguments" rest))))))

(define (constructor-init! klass kons-id obj . args)
  (&constructor-init! klass kons-id obj args))

(define (&constructor-init! klass kons-id obj args)
  (cond
   ((&find-method klass kons-id)
    => (lambda (kons)
         (apply kons obj args)
         obj))
   (else
    (error "Missing constructor" klass kons-id))))

(define (struct-copy struct)
  (unless (##structure? struct)
    (error "Not a structure" 'struct-copy struct))
  (##structure-copy struct))

(define (struct->list obj)
  (if (object? obj)
    (%%vector->list obj)
    (error "Not an object" obj)))

(define (class->list obj)
  (if (object? obj)
    (let ((klass (object-type obj)))
      (if (type-descriptor? klass)
        (cond
         ((type-descriptor-slots klass)
          => (lambda (slots)
               (cons klass
                     (hash-fold
                      (lambda (slot off r)
                        (if (keyword? slot)
                          (cons* slot (unchecked-field-ref obj off) r)
                          r))
                      '() slots))))
         (else
          (list klass)))
        (error "Not a class type" obj klass)))
    (error "Not an object" obj)))

(define (unchecked-field-ref obj off)
  (%%vector-ref obj (%%fx+ off 1)))
(define (unchecked-field-set! obj off val)
  (%%vector-set! obj (%%fx+ off 1) val))
(define (unchecked-slot-ref obj slot)
  (unchecked-field-ref obj (class-slot-offset (object-type obj) slot)))
(define (unchecked-slot-set! obj slot val)
  (unchecked-field-set! obj (class-slot-offset (object-type obj) slot) val))

(define-macro (&slot-e obj slot K E)
  `(if (object? ,obj)
     (let ((klass (object-type ,obj)))
       (cond
        ((and (type-descriptor? klass) (class-slot-offset klass ,slot))
         => ,K)
        (else (,E ,obj ,slot))))
     (,E ,obj ,slot)))

(define (slot-ref obj slot #!optional (E &slot-error))
  (&slot-e obj slot (lambda (off) (%%vector-ref obj (%%fx+ off 1))) E))

(define (slot-set! obj slot val #!optional (E &slot-error))
  (&slot-e obj slot (lambda (off) (%%vector-set! obj (%%fx+ off 1) val)) E))

(define (&slot-error obj slot)
  (error "Cannot find slot" obj slot))

(define (call-method obj id . args)
  (cond
   ((method-ref obj id)
    => (lambda (method) (apply method obj args)))
   (else
    (error "Cannot find method" obj id))))

;; Methods
(define &builtin-type-methods
  (make-table test: eq?))

(define (method-ref obj id)
  (and (object? obj)
       (find-method (object-type obj) id)))

(define (checked-method-ref obj id)
  (or (method-ref obj id)
      (error "Missing method" obj id)))

(define (bound-method-ref obj id)
  (cond
   ((method-ref obj id)
    => (lambda (method)
         (lambda args
           (apply method obj args))))
   (else #f)))

(define (checked-bound-method-ref obj id)
  (let ((method (checked-method-ref obj id)))
    (lambda args
      (apply method obj args))))

(define (find-method klass id)
  (cond
   ((type-descriptor? klass)
    (&find-method klass id))
   ((%%type? klass)
    (or (builtin-method-ref klass id)
        (builtin-find-method (%%type-super klass) id)))
   (else #f)))

(define (&find-method klass id)
  (cond
   ((direct-method-ref klass id)
    => values)
   ((type-descriptor-sealed? klass)
    #f)
   ((type-descriptor-mixin klass)
    => (lambda (mixin)
         (mixin-find-method mixin id)))
   (else
    (struct-find-method (%%type-super klass) id))))

(define (struct-find-method klass id)
  (cond
   ((type-descriptor? klass)
    (or (direct-method-ref klass id)
        (struct-find-method (%%type-super klass) id)))
   ((%%type? klass)
    (or (builtin-method-ref klass id)
        (builtin-find-method (%%type-super klass) id)))
   (else #f)))

(define (class-find-method klass id)
  (and (type-descriptor? klass)
       (or (direct-method-ref klass id)
           (mixin-method-ref klass id))))

(define (mixin-find-method mixin id)
  (let lp ((rest mixin))
    (core-match rest
      ((klass . rest)
       (or (direct-method-ref klass id)
           (lp rest)))
      (else #f))))

(define (builtin-find-method klass id)
  (and (%%type? klass)
       (or (builtin-method-ref klass id)
           (builtin-find-method (%%type-super klass) id))))

(define (direct-method-ref klass id)
  (cond
   ((type-descriptor-methods klass)
    => (lambda (ht) (hash-get ht id)))
   (else #f)))

(define (mixin-method-ref klass id)
  (cond
   ((type-descriptor-mixin klass)
    => (lambda (mixin)
         (mixin-find-method mixin id)))
   (else #f)))

(define (builtin-method-ref klass id)
  (cond
   ((hash-get &builtin-type-methods (%%type-id klass))
    => (lambda (mtab)
         (hash-get mtab id)))
   (else #f)))

(define (bind-method! klass id proc #!optional (rebind? #t))
  (define (bind! ht)
    (if (and (not rebind?) (hash-get ht id))
        (error "Method already bound" klass id)
        (hash-put! ht id proc)))

  #;(map display (list " **** binding method " id " on " klass "? "
       (and proc #t) " Rebind:" rebind? "\n"))
  (unless (procedure? proc)
    (error "Bad method; expected procedure" proc))

  (cond
   ((type-descriptor? klass)
    (let ((ht (type-descriptor-methods klass)))
      (if ht
          (bind! ht)
          (let ((ht (make-hash-table-eq)))
            (type-descriptor-methods-set! klass ht)
            (bind! ht)))))
   ((%%type? klass)
    (let ((ht
           (cond
            ((hash-get &builtin-type-methods (%%type-id klass)) => values)
            (else
             (let ((ht (make-hash-table-eq)))
               (hash-put! &builtin-type-methods (%%type-id klass) ht)
               ht)))))
      (bind! ht)))
   (else
    (error "Bad class; expected type-descriptor" klass))))

(define &method-specializers
  (make-table test: eq?))

(define (bind-specializer! proc specializer)
  (hash-put! &method-specializers proc specializer))

(define (seal-class! klass)
  (define (collect-methods! mtab)
    (define (merge! tab)
      (hash-for-each (lambda (id proc) (hash-put! mtab id proc))
                     tab))

    (define (collect-direct-methods! klass)
      (cond
       ((type-descriptor-methods klass) => merge!)))

    (cond
     ((type-descriptor-mixin klass)
      => (lambda (mixin)
           (let recur ((rest mixin))
             (core-match rest
               ((klass . rest)
                (recur rest)
                (cond
                 ((type-descriptor? klass)
                  (collect-direct-methods! klass))
                 ((and (%%type? klass) (hash-get &builtin-type-methods (%%type-id klass)))
                  => merge!)))
               (else (void))))))
     (else
      (let recur ((klass (%%type-super klass)))
        (cond
         ((type-descriptor? klass)
          (recur (%%type-super klass))
          (collect-direct-methods! klass))
         ((%%type? klass)
          (recur (%%type-super klass))
          (cond
           ((hash-get &builtin-type-methods (%%type-id klass))
            => merge!)))))))
    (collect-direct-methods! klass))

  (when (type-descriptor? klass)
    (unless (type-descriptor-sealed? klass)
      (unless (assgetq final: (type-descriptor-plist klass))
        (error "Cannot seal non-final class" klass))
      (let ((vtab (make-hash-table-eq))
            (mtab (make-hash-table-eq)))
        (collect-methods! mtab)
        (hash-for-each
         (lambda (id proc)
           (cond
            ((hash-get &method-specializers proc)
             => (lambda (specializer)
                  (let ((proc (specializer klass))
                        (gid (make-symbol (%%type-id klass) "::[" id "]")))
                    ;; give the proecure a name and make it accesible to the debugger
                    (eval `(define ,gid (quote ,proc)))
                    (hash-put! vtab id proc))))
            (else
             (hash-put! vtab id proc))))
         mtab)
        (type-descriptor-methods-set! klass vtab)
        (type-descriptor-seal! klass)))))

(define (next-method subklass obj id)
  (let ((klass (object-type obj))
        (type-id (%%type-id subklass)))
    (cond
     ((type-descriptor? klass)
      (cond
       ((type-descriptor-mixin klass)
        => (lambda (mixin)
             (let lp ((rest (cons klass mixin)))
               (core-match rest
                 ((klass . rest)
                  (if (eq? type-id (%%type-id klass))
                    (mixin-find-method rest id)
                    (lp rest)))
                 (else #f)))))
       (else
        (let lp ((klass klass))
          (cond
           ((eq? type-id (%%type-id klass))
            (struct-find-method (%%type-super klass) id))
           ((%%type-super klass)
            => lp)
           (else #f))))))
     ((%%type? klass)
      (let lp ((klass klass))
        (cond
         ((eq? type-id (%%type-id klass))
          (builtin-find-method (%%type-super klass) id))
         ((%%type-super klass)
          => lp)
         (else #f))))
     (else #f))))

(define (call-next-method subklass obj id . args)
  (cond
   ((next-method subklass obj id)
    => (lambda (methodf) (apply methodf obj args)))
   (else
    (error "Cannot find next method" obj id))))

;; custom writers
(define (write-style we)
  (macro-writeenv-style we))

(define (write-object we obj)
  (cond
   ((method-ref obj ':wr)
    => (lambda (method) (method obj we)))
   (else
    (##default-wr we obj))))

(##wr-set! write-object)

;;; etc
;; use gambit type for this
(define (raise-type-error where type obj)
  (##raise-type-exception obj type where (list obj)))

(define absent-obj
  (macro-absent-obj))

(define absent-value
  '#(#!void))

(define (true . _)
  #t)
(define (true? obj)
  (eq? obj #t))

(define (false . _)
  #f)

(define (void . _)
  #!void)
(define (void? obj)
  (eq? obj #!void))

(define (eof-object . _)
  '#!eof)

(define (identity obj)
  obj)

(define (dssl-object? obj)
  (and (memq obj '(#!key #!rest #!optional)) #t))
(define (dssl-key-object? obj)
  (eq? obj #!key))
(define (dssl-rest-object? obj)
  (eq? obj #!rest))
(define (dssl-optional-object? obj)
  (eq? obj #!optional))

(define (immediate? obj)
  (let ((t (%%type obj)))
    (%%fxzero? (%%fxand t #b1))))

(define (nonnegative-fixnum? obj)
  (and (fixnum? obj)
       (not (fxnegative? obj))))

(define (values-count obj)
  (if (%%values? obj)
    (%%vector-length obj)
    1))

(define (values-ref obj k)
  (if (%%values? obj)
    (%%vector-ref obj k)
    obj))

(define (values->list obj)
  (if (%%values? obj)
    (%%vector->list obj)
    (list obj)))

(define (subvector->list obj #!optional (start 0))
  (let ((lst (%%vector->list obj)))
    (list-tail lst start)))

(define make-hash-table make-table)
(define (make-hash-table-eq . args)
  (apply make-table test: eq? args))
(define (make-hash-table-eqv . args)
  (apply make-table test: eqv? args))

(define list->hash-table list->table)
(define (list->hash-table-eq lst . args)
  (apply list->table lst test: eq? args))
(define (list->hash-table-eqv lst . args)
  (apply list->table lst test: eqv? args))

(define hash?
  table?)
(define hash-table?
  table?)

(define hash-length
  table-length)
(define hash-ref
  table-ref)
(define (hash-get ht k)
  (table-ref ht k #f))
(define (hash-put! ht k v)
  (table-set! ht k v))
(define (hash-update! ht k update #!optional (default #!void))
  (let ((value (hash-ref ht k default)))
    (hash-put! ht k (update value))))

(define (hash-remove! ht k)
  (table-set! ht k))

(define hash->list
  table->list)

(define (hash->plist ht)
  (hash-fold cons* '() ht))

(define (plist->hash-table plst #!optional (ht (make-hash-table)))
  (let lp ((rest plst))
    (core-match rest
      ((k v . rest)
       (hash-put! ht k v)
       (lp rest))
      (() ht))))

(define (plist->hash-table-eq plst)
  (plist->hash-table plst (make-hash-table-eq)))
(define (plist->hash-table-eqv plst)
  (plist->hash-table plst (make-hash-table-eqv)))

(define (hash-key? ht k)
  (not (eq? (hash-ref ht k absent-value) absent-value)))

(define hash-for-each
  table-for-each)

(define (hash-map fun ht)
  (hash-fold
   (lambda (k v r) (cons (fun k v) r))
   '() ht))

(define (hash-fold fun iv ht)
  (let ((ret iv))
    (hash-for-each
     (lambda (k v) (set! ret (fun k v ret)))
     ht)
    ret))

(define hash-find
  table-search)

(define (hash-keys ht)
  (hash-map (lambda (k v) k) ht))

(define (hash-values ht)
  (hash-map (lambda (k v) v) ht))

(define (hash-copy hd . rest)
  (let ((hd (table-copy hd)))
    (if (null? rest) hd
        (apply hash-copy! hd rest))))

(cond-expand

 ((compilation-target js)
  (begin
    (define (table-merge! table1
                          table2
                          #!optional
                          (table2-takes-precedence? #f))
      (if table2-takes-precedence?
          (table-for-each
           (lambda (k v)
             (table-set! table1 k v))
           table2)
          (table-for-each
           (lambda (k v)
             (if (eq? (table-ref table1 k (macro-unused-obj))
                      (macro-unused-obj))
                 (table-set! table1 k v)))
           table2))
      table1)


    (define (copy-file from to)
      (##inline-host-declaration "
@gx_copy_file@ = (scm_from, scm_to) => {
 let from = @scm2host@(scm_from), to = @scm2host@(scm_to)
const { cpSync } = require('node:fs');
 console.log('Copy File', from, to)
 return cpSync(from, to);
}")
      (##inline-host-expression "@gx_copy_file@(@1@, @2@)"
                                from to))


    (define (open-process path-or-settings)
      (##inline-host-declaration "
@gx_open_process@ = (path_or_settings_scm) => {
if (typeof window !== 'undefined') {
  return(-1);
} else {
  const { spawn } = require('node:child_process');

  function cmd(...command) {
   let p = spawn(...command);
    return new Promise((resolveFunc) => {
    p.stdout.on(\"data\", (x) => {
      process.stdout.write(x.toString());
    });
    p.stderr.on(\"data\", (x) => {
      process.stderr.write(x.toString());
    });
    p.on(\"close\", (code) => {
      console.log(`child process exited with code ${code}`);
      resolveFunc(code);
    });
  });
}


  // convert the arg list into an object
  var array = @scm2host@(path_or_settings_scm);
  var args = {};

  array.forEach(function(item, index) {
    if(index % 2 === 0) {
       args[item] = array[index + 1];
    }
  });


  const gsc = cmd(args.path, args.arguments);
  console.log('gx-open-process',args, gsc.child)

  return @host2scm@(gsc);
}

};
")
      (##inline-host-expression "@gx_open_process@(@1@)"
                                path-or-settings))

    (define (process-status proc)
      (displayln "We have a process/promise, yeah?" proc)
      (##scm2host-call-return proc))))

 ;; For C et al.
 (else (void)))


(define (hash-copy! hd . rest)
  ;; (displayln "In hash copy" table-merge!)
  (for-each (lambda (r) (table-merge! hd r)) rest)
  hd)

(define (hash-merge hd . rest)
  (foldl (lambda (tab r) (table-merge r tab))
         hd rest))

(define (hash-merge! hd . rest)
  (foldl (lambda (tab r) (table-merge! r tab))
         hd rest))

(define (hash-clear! ht #!optional (size 0))
  (let ((gcht (%%vector-ref ht 5)))
    (if (not (fixnum? gcht))
      (%%vector-set! ht 5 size))))

(define (make-list k #!optional (val #f))
  (unless (fixnum? k)
    (error "expected argument 1 to be fixnum" k))
  (let lp ((n 0) (r '()))
    (if (%%fx< n k)
      (lp (%%fx+ n 1) (cons val r))
      r)))

(define (cons* x y . rest)
  (define (recur x rest)
    (if (pair? rest)
      (cons x (recur (%%car rest) (%%cdr rest)))
      x))
  (cons x (recur y rest)))

(define (foldl1 f iv lst)
  (let lp ((rest lst) (r iv))
    (core-match rest
      ((x . rest)
       (lp rest (f x r)))
      (else r))))

(define (foldl2 f iv lst1 lst2)
  (let lp ((rest1 lst1) (rest2 lst2) (r iv))
    (core-match rest1
      ((x1 . rest1)
       (core-match rest2
         ((x2 . rest2)
          (lp rest1 rest2 (f x1 x2 r)))
         (else r)))
      (else r))))

(define (foldl f iv lst . rest)
  (define (fold* f iv rest)
    (if (andmap1 pair? rest)
      (fold* f
             (apply f (foldr1 (lambda (xs r) (cons (car xs) r))
                              (list iv) rest))
             (map cdr rest))
      iv))

  (cond
   ((null? rest)
    (foldl1 f iv lst))
   ((null? (cdr rest))
    (foldl2 f iv lst (car rest)))
   (else
    (fold* f iv (cons lst rest)))))

(define (foldr1 f iv lst)
  (let recur ((rest lst))
    (core-match rest
      ((x . rest)
       (f x (recur rest)))
      (else iv))))

(define (foldr2 f iv lst1 lst2)
  (let recur ((rest1 lst1) (rest2 lst2))
    (core-match rest1
      ((x1 . rest1)
       (core-match rest2
         ((x2 . rest2)
          (f x1 x2 (recur rest1 rest2)))
         (else iv)))
      (else iv))))

(define (foldr f iv lst . rest)
  (define (fold* f iv rest)
    (if (andmap1 pair? rest)
      (apply f
        (foldr1 (lambda (xs r) (cons (car xs) r))
                (list (fold* f iv (map cdr rest)))
                rest))
      iv))

  (cond
   ((null? rest)
    (foldr1 f iv lst))
   ((null? (cdr rest))
    (foldr2 f iv lst (car rest)))
   (else
    (fold* f iv (cons lst rest)))))

(define (andmap1 f lst)
  (let lp ((rest lst))
    (core-match rest
      ((x . rest)
       (and (f x) (lp rest)))
      (else #t))))

(define (andmap2 f lst1 lst2)
  (let lp ((rest1 lst1) (rest2 lst2))
    (core-match rest1
      ((x1 . rest1)
       (core-match rest2
         ((x2 . rest2)
          (and (f x1 x2) (lp rest1 rest2)))
         (else #t)))
      (else #t))))

(define (andmap f lst . rest)
  (define (fold* f rest)
    (if (andmap1 pair? rest)
      (and (apply f (map car rest))
           (fold* f (map cdr rest)))
      #t))

  (cond
   ((null? rest)
    (andmap1 f lst))
   ((null? (cdr rest))
    (andmap2 f lst (car rest)))
   (else
    (fold* f (cons lst rest)))))

(define (ormap1 f lst)
  (let lp ((rest lst))
    (core-match rest
      ((x . rest)
       (or (f x) (lp rest)))
      (else #f))))

(define (ormap2 f lst1 lst2)
  (let lp ((rest1 lst1) (rest2 lst2))
    (core-match rest1
      ((x1 . rest1)
       (core-match rest2
         ((x2 . rest2)
          (or (f x1 x2) (lp rest1 rest2)))
         (else #f)))
      (else #f))))

(define (ormap f lst . rest)
  (define (fold* f rest)
    (if (andmap1 pair? rest)
      (or (apply f (map car rest))
          (fold* f (map cdr rest)))
      #f))

  (cond
   ((null? rest)
    (ormap1 f lst))
   ((null? (cdr rest))
    (ormap2 f lst (car rest)))
   (else
    (fold* f (cons lst rest)))))

(define (filter f lst)
  (let recur ((lst lst))
    (core-match lst
      ((hd . rest)
       (if (f hd)
         (let ((tail (recur rest)))
           (if (eq? tail rest)
             lst
             (cons hd tail)))
         (recur rest)))
      (else '()))))

(define (filter-map1 f lst)
  (let recur ((rest lst))
    (core-match rest
      ((x . rest)
       (cond
        ((f x) => (lambda (r) (cons r (recur rest))))
        (else (recur rest))))
      (else '()))))

(define (filter-map2 f lst1 lst2)
  (let recur ((rest1 lst1) (rest2 lst2))
    (core-match rest1
      ((x1 . rest1)
       (core-match rest2
         ((x2 . rest2)
          (cond
           ((f x1 x2) => (lambda (r) (cons r (recur rest1 rest2))))
           (else (recur rest1 rest2))))
         (else '())))
      (else '()))))

(define (filter-map f lst . rest)
  (define (fold* f rest)
    (if (andmap1 pair? rest)
      (cond
       ((apply f (map car rest))
        => (lambda (r) (cons r (fold* f (map cdr rest)))))
       (else
        (fold* f (map cdr rest))))
      '()))

  (cond
   ((null? rest)
    (filter-map1 f lst))
   ((null? (cdr rest))
    (filter-map2 f lst (car rest)))
   (else
    (fold* f (cons lst rest)))))

(define (iota count #!optional (start 0) (step 1))
  (unless (fixnum? count)
    (error "Bad argument; expected fixnum" count))
  (unless (number? start)
    (error "Bad argument; expected number" start))
  (unless (number? step)
    (error "Bad argument; expected number" step))
  (let ((root (cons #f '())))
    (let lp ((i 0) (x start) (tl root))
      (if (%%fx< i count)
        (let ((tl* (cons x '())))
          (%%set-cdr! tl tl*)
          (lp (%%fx+ i 1) (+ x step) tl*))
        (%%cdr root)))))

(define (last-pair lst)
  (core-match lst
    ((_ . rest)
     (if (pair? rest)
       (last-pair rest)
       lst))))

(define (last lst)
  (car (last-pair lst)))

(define-macro (define-assget assget assf)
  `(define (,assget key lst #!optional (default #f))
     (cond
      ((and (pair? lst) (,assf key lst)) => cdr)
      ((procedure? default)
       (default key))
      (else default))))

(define-assget assgetq assq)
(define-assget assgetv assv)
(define-assget assget assoc)

(define-macro (define-pget pget cmp)
  `(define (,pget key lst #!optional (default #f))
     (let lp ((rest lst))
       (core-match rest
         ((k v . rest)
          (if (,cmp k key) v (lp rest)))
         (else
          (if (procedure? default)
            (default key)
            default))))))

(define-pget pgetq eq?)
(define-pget pgetv eqv?)
(define-pget pget equal?)

(define (find pred lst)
  (cond
   ((memf pred lst) => car)
   (else #f)))

(define (memf proc lst)
  (let lp ((rest lst))
    (core-match rest
      ((hd . tl)
       (if (proc hd) rest (lp tl)))
      (else #f))))

(define-macro (define-remove1 remove cmp)
  `(define (,remove el lst)
    (let lp ((rest lst) (r '()))
      (core-match rest
        ((hd . rest)
         (if (,cmp el hd)
           (foldl1 cons rest r)
           (lp rest (cons hd r))))
        (else lst)))))

(define-remove1 remove1 equal?)
(define-remove1 remv eqv?)
(define-remove1 remq eq?)

(define (remf proc lst)
  (let lp ((rest lst) (r '()))
    (core-match rest
      ((hd . rest)
       (if (proc hd)
         (foldl1 cons rest r)
         (lp rest (cons hd r))))
      (else lst))))

(define (1+ x)
  (+ x 1))
(define (1- x)
  (- x 1))
(define (fx1+ x)
  (fx+ x 1))
(define (fx1- x)
  (fx- x 1))
(define fxshift
  fxarithmetic-shift)
(define fx/
  fxquotient)

(define (interned-symbol? x)
  (and (symbol? x)
       (not (uninterned-symbol? x))))

(define (make-symbol . args)
  (string->symbol
   (apply string-append
     (map (lambda (x)
            (cond
             ((string? x) x)
             ((symbol? x) (symbol->string x))
             ((keyword? x) (keyword->string x))
             ((number? x) (number->string x))
             (else (error "Cannot convert to symbol" x))))
          args))))

(define (interned-keyword? x)
  (and (keyword? x)
       (not (uninterned-keyword? x))))

(define (symbol->keyword sym)
  ((if (uninterned-symbol? sym)
     string->uninterned-keyword
     string->keyword)
   (symbol->string sym)))

(define (keyword->symbol kw)
  ((if (uninterned-keyword? kw)
     string->uninterned-symbol
     string->symbol)
   (keyword->string kw)))

(define (bytes->string bstr #!optional (enc 'UTF-8))
  (let* ((in (open-input-u8vector `(char-encoding: ,enc init: ,bstr)))
         (len (u8vector-length bstr))
         (out (make-string len))
         (n (read-substring out 0 len in)))
    (string-shrink! out n)
    out))

(define (string->bytes str #!optional (enc 'UTF-8))
  (substring->bytes str 0 (string-length str) enc))

(define (substring->bytes str start end #!optional (enc 'UTF-8))
  (let ((out (open-output-u8vector `(char-encoding: ,enc))))
    (write-substring str start end out)
    (get-output-u8vector out)))

(define (string-empty? str)
  (%%fxzero? (string-length str)))

(define (string-prefix? prefix str)
  (let ((str-len (string-length str))
        (prefix-len (string-length prefix)))
    (and (%%fx<= prefix-len str-len)
         (let lp ((i 0))
           (if (%%fx< i prefix-len)
             (and (eq? (%%string-ref str i) (%%string-ref prefix i))
                  (lp (%%fx+ i 1)))
             #t)))))

(define (string-index str char #!optional (start 0))
  (let ((len (string-length str)))
    (let lp ((k start))
      (and (%%fx< k len)
           (if (eq? char (%%string-ref str k)) k
               (lp (%%fx+ k 1)))))))

(define (string-rindex str char #!optional (start #f))
  (let* ((len (string-length str))
         (start (or start (%%fx- len 1))))
    (let lp ((k start))
      (and (%%fx>= k 0)
           (if (eq? char (%%string-ref str k)) k
               (lp (%%fx- k 1)))))))

(define (string-split str char)
  (let ((len (string-length str)))
    (let lp ((start 0) (r '()))
      (cond
       ((string-index str char start)
        => (lambda (end)
             (lp (%%fx+ end 1) (cons (%%substring str start end) r))))
       ((%%fx< start len)
        (foldl cons (list (%%substring str start len)) r))
       (else
        (reverse r))))))

(define (string-join strs join)
  ;; TODO conditionally disable contract checks
  (define (join-length strs jlen)
    (let lp ((rest strs) (len 0))
      (core-match rest
        ((hd . rest)
         (if (string? hd)
           (if (pair? rest)
             (lp rest
                 (%%fx+ (%%string-length hd)
                        jlen len))
             (%%fx+ (%%string-length hd)
                    len))
           (error "expected string" hd)))
        (else 0))))                     ; empty

  (let* ((join
          (cond
           ((char? join)
            (string join))
           ((string? join)
            join)
           (else
            (error "expected string or char" join))))
         (jlen (%%string-length join))
         (olen (join-length strs jlen))
         (ostr (make-string olen)))
    (let lp ((rest strs) (k 0))
      (core-match rest
        ((hd . rest)
         (let ((hdlen (%%string-length hd)))
           (if (pair? rest)
             (begin
               (%%substring-move! hd 0 hdlen ostr k)
               (%%substring-move! join 0 jlen ostr (%%fx+ k hdlen))
               (lp rest (%%fx+ k hdlen jlen)))
             (begin
               (%%substring-move! hd 0 hdlen ostr k)
               ostr))))
        (else "")))))                   ; empty

(eval-when (< (system-version) 409002)
  (define (vector-map f vec . rest)
    (define (fold1 vec)
      (let* ((len (vector-length vec))
             (r (make-vector len)))
        (do ((k 0 (%%fx+ k 1)))
            ((%%fx= k len) r)
          (%%vector-set! r k (f (%%vector-ref vec k))))))

    (define (fold* vecs)
      (let* ((len (apply min (map vector-length vecs)))
             (r (make-vector len)))
        (do ((k 0 (%%fx+ k 1)))
            ((%%fx= k len) r)
          (%%vector-set! r k
                         (apply f
                           (map (lambda (vec) (%%vector-ref vec k))
                                vecs))))))

    (if (null? rest)
      (fold1 vec)
      (fold* (cons vec rest)))))

(define (displayln . args)
  (let lp ((rest args))
    (core-match rest
      ((hd . rest)
       (display hd)
       (lp rest))
      (else
       (newline)))))

(define (display* . args)
  (for-each display args))

;; control
(eval-when (< (system-version) 409003)
  (define make-promise
    ##make-promise)

  (define promise?
    ##promise?))

(eval-when (>= (system-version) 409003)
  (define (make-promise thunk)
    (##make-delay-promise thunk)))

;; TODO: change this to version check when gambit v4.9.4 is released
(eval-if-bound ##parameterize1
  (define (call-with-parameters thunk . rest)
    (core-match rest
      ((param val . rest)
       (##parameterize1 param val
                       (if (null? rest) thunk
                           (lambda () (apply call-with-parameters thunk rest)))))
      (() (thunk))))
  (define (call-with-parameters thunk . rest)
    (core-match rest
      ((param val . rest)
       (##parameterize param val
                       (if (null? rest) thunk
                           (lambda () (apply call-with-parameters thunk rest)))))
      (() (thunk)))))

(define (call-with-escape K)
  (call-with-current-continuation K))

(define with-catch
  with-exception-catcher)

(define (with-unwind-protect K fini)
  (let ((once #f))
    (dynamic-wind
      (lambda ()
        (declare (not interrupts-enabled))
        (if once
          (error "Cannot re-enter unwind protected block")
          (set! once #t)))
      K fini)))

;; gerbil errors
(define exception-type::t (macro-type-exception))

(define (type-descriptor-super-set! type super)
  (%%vector-set! type 4 super))

(define exception::t
  (let ((t (make-struct-type 'gerbil#exception::t #f 0 'exception '() #f)))
    (type-descriptor-super-set! t exception-type::t)
    t))

(define error::t
  (make-struct-type 'gerbil#error::t exception::t 3 'error '() #f))

;; some minimal integration with gambit exception
(define (exception? obj)
  (%%structure-instance-of? obj (%%type-id exception-type::t)))

(define (error? obj)
  (%%structure-instance-of? obj (%%type-id error::t)))

(define (error-object? obj)
  (error-exception? obj))

(define (type-error? obj)
  (%%structure-instance-of? obj (%%type-id (macro-type-type-exception))))

(define (error-message obj)
  (if (error? obj)
    (%%vector-ref obj 1)
    (with-output-to-string '() (lambda () (display-exception obj)))))

(define (error-irritants obj)
  (and (error? obj)
       (%%vector-ref obj 2)))

(define (error-trace obj)
  (and (error? obj)
       (%%vector-ref obj 3)))

(define (datum-parsing-exception-filepos e)
  (macro-readenv-filepos (datum-parsing-exception-readenv e)))

;;; assorted
(define (create-directory* dir #!optional (perms #o755))
  (define (create1 path)
    (cond
     ((file-exists? path)
      (unless (eq? (file-type path) 'directory)
        (error "Path component is not a directory" path)))
     (perms
      (create-directory (list path: path permissions: perms)))
     (else
      (create-directory path))))

  (unless (file-exists? dir)
    (let lp ((start 0))
      (cond
       ((string-index dir #\/ start)
        => (lambda (x)
             (when (%%fx> x 0)
               (create1 (substring dir 0 x)))
             (lp (%%fx+ x 1))))
       (else
        (create1 dir))))))

;; kwt: #f or a vector as a perfect hash-table for expected keywords
(define (keyword-dispatch kwt K . all-args)
  (when kwt
    (unless (vector? kwt)
      (##raise-type-exception 1 'vector 'keyword-dispatch
                              (cons* kwt K all-args))))
  (unless (procedure? K)
    (##raise-type-exception 2 'procedure 'keyword-dispatch
                            (cons* kwt K all-args)))
  (let ((keys (make-hash-table-eq hash: keyword-hash)))
    (let lp ((rest all-args) (args #f) (tail #f))
      (core-match rest
        ((hd . hd-rest)
         (cond
          ((keyword? hd)
           (core-match hd-rest
             ((val . rest)
              (when kwt
                (let ((pos (%%fxmodulo (keyword-hash hd) (%%vector-length kwt))))
                  (unless (eq? hd (%%vector-ref kwt pos))
                    (error "Unexpected keyword argument" K hd))))
              (when (hash-key? keys hd)
                (error "Duplicate keyword argument" K hd))
              (hash-put! keys hd val)
              (lp rest args tail))))
          ((eq? hd #!key)               ; keyword escape
           (core-match hd-rest
             ((val . rest)
              (if args
                (begin
                  (%%set-cdr! tail hd-rest)
                  (lp rest args hd-rest))
                (lp rest hd-rest hd-rest)))))
          ((eq? hd #!rest)              ; end keyword processing
           (if args
             (begin
               (%%set-cdr! tail hd-rest)
               (%%apply K (cons keys args)))
             (%%apply K (cons keys hd-rest))))
          (else                         ; plain argument
           (if args
             (begin
               (%%set-cdr! tail rest)
               (lp hd-rest args rest))
             (lp hd-rest rest rest)))))
        (else
         (if args
           (begin
             (%%set-cdr! tail '())
             (%%apply K (cons keys args)))
           (K keys)))))))

(define (keyword-rest kwt . drop)
  (for-each (lambda (kw) (hash-remove! kwt kw)) drop)
  (hash-fold (lambda (k v r) (cons* k v r)) '() kwt))

(eval-if-bound string-concatenate (void) (define string-concatenate append-strings))
(eval-if-bound vector-concatenate (void) (define vector-concatenate append-vectors))
(eval-if-bound u8vector-concatenate (void) (define u8vector-concatenate append-u8vectors))
(eval-if-bound s8vector-concatenate (void) (define s8vector-concatenate append-s8vectors))
(eval-if-bound u16vector-concatenate (void) (define u16vector-concatenate append-u16vectors))
(eval-if-bound s16vector-concatenate (void) (define s16vector-concatenate append-s16vectors))
(eval-if-bound u32vector-concatenate (void) (define u32vector-concatenate append-u32vectors))
(eval-if-bound s32vector-concatenate (void) (define s32vector-concatenate append-s32vectors))
(eval-if-bound u64vector-concatenate (void) (define u64vector-concatenate append-u64vectors))
(eval-if-bound s64vector-concatenate (void) (define s64vector-concatenate append-s64vectors))
(eval-if-bound f32vector-concatenate (void) (define f32vector-concatenate append-f32vectors))
(eval-if-bound f64vector-concatenate (void) (define f64vector-concatenate append-f64vectors))
(eval-if-bound first-set-bit (void) (define first-set-bit first-bit-set))
(eval-if-bound fxfirst-set-bit (void) (define fxfirst-set-bit fxfirst-bit-set))
