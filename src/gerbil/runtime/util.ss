;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil runtime assorted utilities
prelude: "../core"
package: gerbil/runtime
namespace: #f

(import "gambit")
(export #t)

;; syntax utilities
(begin-syntax
  (def (procedure-formals ctx args)
    (let recur ((rest args))
      (syntax-case rest ()
        ((hd . rest)
         (syntax-case #'hd (:=)
           (id
            (identifier? #'id)
            (cons #'hd (recur #'rest)))
           ((id default)
            (identifier? #'id)
            (cons #'hd (recur #'rest)))
           ((id contract ... := default)
            (identifier? #'id)
            (cons #'(id default) (recur #'rest)))
           ((id sigil . _)
            (and (identifier? #'sigil)
                 (or (free-identifier=? #'sigil #':)
                     (free-identifier=? #'sigil #':-)
                     (free-identifier=? #'sigil #':~)))
            (cons #'id (recur #'rest)))
           (_ (raise-syntax-error #f "bad procedure formals" ctx args #'hd))))
        (id (identifier? #'id) #'id)
        (() [])
        (_ (raise-syntax-error #f "bad procedure formals" ctx args #'hd)))))

  (def (procedure-signature ctx args return effect)
    (let* ((argument-types
            (let recur ((rest args))
              (syntax-case rest ()
                ((hd . rest)
                 (syntax-case #'hd (: :~ :-)
                   (id
                    (identifier? #'id)
                    (cons (core-quote-syntax 't::t) (recur #'rest)))
                   ((id default)
                    (identifier? #'id)
                    (cons (core-quote-syntax 't::t) (recur #'rest)))
                   ((id : type . _)
                    (and (identifier? #'id)
                         (syntax-local-class-type-info? #'type))
                    (let (info (syntax-local-value #'type))
                      (cons (!class-type-descriptor info)
                            (recur #'rest))))
                   ((id :- type . _)
                    (and (identifier? #'id)
                         (syntax-local-class-type-info? #'type))
                    (cons (core-quote-syntax 't::t)
                          (recur #'rest)))
                   ((id :~ contract :- type . _)
                    (and (identifier? #'id)
                         (identifier? #'contract)
                         (syntax-local-class-type-info? #'type))
                    (let (info (syntax-local-value #'type))
                      (cons #f (recur #'rest))))
                   (_ (raise-syntax-error #f "bad procedure signature" ctx #'hd))))
                (id (identifier? #'id) (core-quote-syntax 't::t))
                (() []))))
           (return-type
            (let (info (syntax-local-value return false))
              (if (class-type-info? info)
                (!class-type-descriptor info)
                (raise-syntax-error #f "bad procedure return type" ctx return)))))
      [arguments: argument-types return: return-type effect: effect]))

  (def (procedure-typedecl ctx args)
    (let recur ((rest args))
      (syntax-case rest ()
        ((hd . rest)
         (syntax-case #'hd (: :~ :-)
           (id
            (identifier? #'id)
            (cons #'(id :t) (recur #'rest)))
           ((id default)
            (identifier? #'id)
            (cons #'(id :t) (recur #'rest)))
           ((id : type . _)
            (and (identifier? #'id)
                 (syntax-local-class-type-info? #'type))
            (cons #'(id type) (recur #'rest)))
           ((id :- type . _)
            (and (identifier? #'id)
                 (syntax-local-class-type-info? #'type))
            (cons #'(id type) (recur #'rest)))
           ((id :~ contract :- type . _)
            (and (identifier? #'id)
                 (identifier? #'contract)
                 (syntax-local-class-type-info? #'type))
            (cons #'(id type) (recur #'rest)))))
        (id (identifier? #'id) #'((id :t)))
        (() []))))

  (def (procedure-contract ctx args)
    (let recur ((rest args))
      (syntax-case rest ()
        ((hd . rest)
         (syntax-case #'hd (: :~ :-)
           (id
            (identifier? #'id)
            (recur #'rest))
           ((id default)
            (identifier? #'id)
            (recur #'rest))
           ((id : type . _)
            (and (identifier? #'id)
                 (syntax-local-class-type-info? #'type))
            (let (info (syntax-local-value #'type))
              (with-syntax ((klass (!class-type-descriptor info))
                            (predicate (!class-type-predicate info)))
                (cons #'(unless (predicate id)
                          (error "bad argument; contract violation" 'klass id ))
                      (recur #'rest)))))
           ((id :- type . _)
            (and (identifier? #'id)
                 (syntax-local-class-type-info? #'type))
            (recur #'rest))
           ((id :~ contract :- type . _)
            (and (identifier? #'id)
                 (identifier? #'contract)
                 (syntax-local-class-type-info? #'type))
            (cons #'(unless (contract id)
                      (error "bad argument; contract violation" 'contract id))
                  (recur #'rest)))))
        (id (identifier? #'id) [])
        (() []))))

  (def (procedure-invocation ctx invoke args)
    (let loop ((rest args) (invocation-args []))
      (syntax-case rest ()
        ((hd . rest)
         (syntax-case #'hd (: :~ :-)
           (id
            (identifier? #'id)
            (loop #'rest (cons #'id invocation-args)))
           ((id default)
            (identifier? #'id)
            (loop #'rest (cons #'id invocation-args)))
           ((id : type . _)
            (and (identifier? #'id)
                 (syntax-local-class-type-info? #'type))
            (loop #'rest (cons #'id invocation-args)))
           ((id :- type . _)
            (and (identifier? #'id)
                 (syntax-local-class-type-info? #'type))
            (loop #'rest (cons #'id invocation-args)))
           ((id :~ contract :- type . _)
            (and (identifier? #'id)
                 (syntax-local-class-type-info? #'type))
            (loop #'rest (cons #'id invocation-args)))))
        (id (identifier? #'id)
            (cons* 'apply invoke (reverse! (cons #'id invocation-args))))
        (() (cons invoke (reverse! invocation-args)))))))

;; definition macro for public API procedures, which must be safe and typed.
(defsyntax (defapi stx)
  (syntax-case stx (:-)
    ((_ (proc . args) :- return effect: effect body ...)
     (let ((unchecked (stx-identifier #'proc "__" #'proc))
           (effect (alet (effect (stx-e #'effect))
                     (map stx-e effect))))
       (with-syntax ((formals (procedure-formals stx #'args))
                     ((contract-check ...) (procedure-contract stx #'args))
                     (signature
                      (cons* unchecked: (core-quote-syntax unchecked)
                             (procedure-signature stx #'args #'return effect)))
                     (unchecked-signature
                      [return: (!class-type-descriptor (syntax-local-value #'return))
                               effect: effect])
                     (unchecked-typedecl (procedure-typedecl stx #'args))
                     (unchecked-invocation (procedure-invocation stx unchecked #'args))
                     (unchecked-proc unchecked))
         #'(begin
             (def (proc . formals)
               (begin-annotation (@type.signature . signature)
                 (begin
                   contract-check ...
                   unchecked-invocation)))
             (def (unchecked-proc . formals)
               (begin-annotation (@type.signature . unchecked-signature)
                 (with-type unchecked-typedecl
                   body ...)))))))
    ((_ (proc . args) :- return body ...)
     #'(defapi (proc . args) :- return effect: #f body ...))
    ((_ (proc . args) body ...)
     #'(defapi (proc . args) :- :t effect: #f body ...))))

;; definition macro for internal typed procedures
(defsyntax (deftyped stx)
  (syntax-case stx (:-)
    ((_ (proc . args) :- return body ...)
     (with-syntax ((formals   (procedure-formals stx #'args))
                   (signature (procedure-signature stx #'args #'return #f))
                   (typedecl  (procedure-typedecl stx #'args)))
       #'(def (proc . formals)
           (begin-annotation (@type.signature . signature)
             (with-type typedecl
               body ...)))))
    ((_ hd body ...)
     #'(deftyped hd :- :t body ...))))

(defsyntax (with-type stx)
  (syntax-case stx ()
    ((_ ((id type) ...) body ...)
     (and (identifier-list? #'(id ...))
          (andmap syntax-local-class-type-info? #'(type ...)))
     (with-syntax (((qid ...) (map core-quote-syntax #'(id ...)))
                   ((tid ...) (map !class-type-descriptor
                                   (map syntax-local-value #'(type ...)))))
       #'(begin-annotation (@type.assert (qid tid) ...)
           (let () body ...))))))

;;; low level locks
(cond-expand
  (gerbil-smp
   (defrules __lock-inline! ()
     ((_ mx)
      (let ()
        (declare (not interrupts-enabled))
        (let again ((spin 0))
          (cond
           ((##fx= (##vector-cas! mx 0 1 0) 0))
           ((##fx< spin 100)
            (again (##fx+ spin 1)))
           (else
            (##thread-yield!)
            (again 0))))))))
  (else
   (defrules __lock-inline! ()
     ((_ mx)
      (let ()
        (declare (not interrupts-enabled))
        (let again ()
          (unless (##fx= (##vector-cas! mx 0 1 0) 0)
            (##thread-yield!)
            (again))))))))

(defrules __unlock-inline! ()
  ((_ mx)
   (##vector-cas! mx 0 0 1)))

(defrules __make-inline-lock ()
  ((_) (vector 0)))

;;;

(defapi (displayln . args)
  :- :void
  (let lp ((rest args))
    (match rest
      ([hd . rest]
       (display hd)
       (lp rest))
      (else
       (newline)))))

(defapi (display* . args)
  :- :void
  (for-each display args))

(defapi (file-newer? (file1 : :string)
                     (file2 : :string))
  :- :boolean
  (deftyped (modification-time (file :- :string))
    :- :flonum
    (time->seconds
     (file-info-last-modification-time
      (file-info file #t))))

  (fl> (modification-time file1)
       (modification-time file2)))

(defapi (create-directory* (dir   : :string)
                           (perms : :fixnum := #o755 ))
  :- :void
  (deftyped (create1 (path :- :string))
    (cond
     ((file-exists? path)
      (unless (eq? (file-type path) 'directory)
        (error "Path component is not a directory" path)))
     (perms
      (create-directory [path: path permissions: perms]))
     (else
      (create-directory path))))

  (unless (file-exists? dir)
    (let lp ((start 0))
      (cond
       ((string-index dir #\/ start)
        => (lambda (x)
             (when (fx> x 0)
               (create1 (substring dir 0 x)))
             (lp (fx+ x 1))))
       (else
        (create1 dir))))))

(def absent-obj
  (##absent-object))

(def absent-value
  '#(#!void))

(defapi (true . ignore)
  :- :true
  #t)

(defapi (true? obj)
  :- :boolean
  (eq? obj #t))

(defapi (false . ignore)
  :- :false
  #f)

(defapi (void . ignore)
  :- :void
  #!void)

(defapi (void? obj)
  :- :boolean
  (eq? obj #!void))

(defapi (dssl-object? obj)
  :- :boolean
  (and (memq obj '(#!key #!rest #!optional)) #t))
(defapi (dssl-key-object? obj)
  :- :boolean
  (eq? obj #!key))
(defapi (dssl-rest-object? obj)
  :- :boolean
  (eq? obj #!rest))
(defapi (dssl-optional-object? obj)
  :- :boolean
  (eq? obj #!optional))

(defapi (immediate? obj)
  :- :boolean
  (let (t (:- (##type obj) :fixnum))
    (fxzero? (fxand t #b1))))

(defapi (nonnegative-fixnum? obj)
  :- :boolean
  (and (fixnum? obj) (##fx>= obj 0)))

(defapi (pair-or-null? obj)
  :- :boolean
  (or (pair? obj) (null? obj)))

(defapi (values-count obj)
  :- :fixnum
  (if (##values? obj)
    (##vector-length obj)
    1))

(defapi (values-ref obj (k : :fixnum))
  (if (##values? obj)
    (##vector-ref obj k)
    obj))

(defapi (values->list obj)
  :- :list
  (if (##values? obj)
    (##vector->list obj)
    (list obj)))

(defapi (subvector->list (obj : :vector)
                         (start  :~ nonnegative-fixnum? :- :fixnum := 0))
  :- :list
  (let (lst (vector->list obj))
    (list-tail lst start)))

(defapi (cons* x y . rest)
  :- :pair
  (def (recur x rest)
    (if (pair? rest)
      (let (rest (:- rest :pair))
        (cons x (recur (car rest) (cdr rest))))
      x))
  (cons x (recur y rest)))

(defapi (foldl1 (f : :procedure) iv lst)
  (let lp ((rest lst) (r iv))
    (match rest
      ([x . rest]
       (lp rest (f x r)))
      (else r))))

(defapi (foldl2 (f : :procedure) iv lst1 lst2)
  (let lp ((rest1 lst1) (rest2 lst2) (r iv))
    (match rest1
      ([x1 . rest1]
       (match rest2
         ([x2 . rest2]
          (lp rest1 rest2 (f x1 x2 r)))
         (else r)))
      (else r))))

(def* foldl
  ((f iv lst)
   (foldl1 f iv lst))
  ((f iv lst1 lst2)
   (foldl2 f iv lst1 lst2))
  ((f iv lst1 lst2 . rest)
   (apply foldl* f iv lst1 lst2 rest)))

(defapi (foldl* (f : :procedure) iv . rest)
  (let recur ((iv iv) (rest rest))
    (if (andmap1 pair? rest)
      (recur (apply f
               (:- (foldr1 (lambda (xs r) (cons (car xs) r))
                           (list iv) rest)
                   :list))
             (map cdr rest))
      iv)))

(defapi (foldr1 (f : :procedure) iv lst)
  (let recur ((rest lst))
    (match rest
      ([x . rest]
       (f x (recur rest)))
      (else iv))))

(defapi (foldr2 (f : :procedure) iv lst1 lst2)
  (let recur ((rest1 lst1) (rest2 lst2))
    (match rest1
      ([x1 . rest1]
       (match rest2
         ([x2 . rest2]
          (f x1 x2 (recur rest1 rest2)))
         (else iv)))
      (else iv))))

(def* foldr
  ((f iv lst)
   (foldr1 f iv lst))
  ((f iv lst1 lst2)
   (foldr2 f iv lst1 lst2))
  ((f iv lst1 lst2 . rest)
   (apply foldr* f iv lst1 lst2 rest)))

(defapi (foldr* (f : :procedure) iv . rest)
  (let recur ((rest rest))
    (if (andmap1 pair? rest)
      (apply f
        (:- (foldr1 (lambda (xs r) (cons (car xs) r))
                    (list (recur (map cdr rest)))
                    rest)
            :list))
      iv)))

;; Destructively remove the empty lists from a list of lists, returns the list.
;; : (List (List X)) -> (List (NonEmptyList X))
(defapi (remove-nulls! l)
  :- :list
  (match l
    ([[] . r]
     (remove-nulls! r))
    ([_ . r]
     (let loop ((l l) (r r))
       (match r
         ([[] . rr] (set-cdr! (:- l :pair) (remove-nulls! rr)))
         ([_ . rr] (loop r rr))
         (_ (void))))
     l)
    (_ l))) ;; []

;; : (List X) X -> (NonEmptyList X)
(defapi (append1! l x)
  :- :list
  (let (l2 [x])
    (if (pair? l)
      (begin (set-cdr! (:- (##last-pair l) :pair) l2) l)
      l2)))

;; Append the elements the list in the first argument to the front of the list
;; in second argument until an element satisfies a predicate.
;; Return two values, the rest of the first list including the element
;; satisfying the predicate if any (or the empty list if none exists),
;; and the tail with the reverse of the rhead up till then appended in front.
;; : (X -> Bool) (List X) (List X) -> (List X) (List X)
(defapi (append-reverse-until (pred  : :procedure) rhead tail)
  :- :list
  (let loop ((rhead rhead) (tail tail))
    (match rhead
      ([] (values [] tail))
      ([a :: r]
       (if (pred a)
         (values rhead tail)
         (loop r (cons a tail)))))))

(defapi (andmap1 (f : :procedure) lst)
  :- :boolean
  (let lp ((rest lst))
    (match rest
      ([x . rest]
       (and (f x) (lp rest)))
      (else #t))))

(defapi (andmap2 (f : :procedure) lst1 lst2)
  :- :boolean
  (let lp ((rest1 lst1) (rest2 lst2))
    (match rest1
      ([x1 . rest1]
       (match rest2
         ([x2 . rest2]
          (and (f x1 x2) (lp rest1 rest2)))
         (else #t)))
      (else #t))))

(def* andmap
  ((f lst)
   (andmap1 f lst))
  ((f lst1 lst2)
   (andmap2 f lst1 lst2))
  ((f lst1 lst2 . rest)
   (apply andmap* f lst1 lst2 rest)))

(defapi (andmap* (f : :procedure) . rest)
  :- :boolean
  (let recur ((rest rest))
    (if (andmap1 pair? rest)
      (and (apply f (map car rest))
           (recur (map cdr rest)))
      #t)))

(defapi (ormap1 (f : :procedure) lst)
  (let lp ((rest lst))
    (match rest
      ([x . rest]
       (or (f x) (lp rest)))
      (else #f))))

(defapi (ormap2 (f : :procedure) lst1 lst2)
  (let lp ((rest1 lst1) (rest2 lst2))
    (match rest1
      ([x1 . rest1]
       (match rest2
         ([x2 . rest2]
          (or (f x1 x2) (lp rest1 rest2)))
         (else #f)))
      (else #f))))

(def* ormap
  ((f lst)
   (ormap1 f lst))
  ((f lst1 lst2)
   (ormap2 f lst1 lst2))
  ((f lst1 lst2 . rest)
   (apply ormap* f lst1 lst2 rest)))

(defapi (ormap* (f : :procedure) . rest)
  (let recur ((rest rest))
    (if (andmap1 pair? rest)
      (or (apply f (map car rest))
          (recur (map cdr rest)))
      #f)))

(defapi (filter-map1 (f : :procedure) lst)
  :- :list
  (let recur ((rest lst))
    (match rest
      ([x . rest]
       (cond
        ((f x) => (lambda (r) (cons r (recur rest))))
        (else (recur rest))))
      (else []))))

(defapi (filter-map2 (f : :procedure) lst1 lst2)
  :- :list
  (let recur ((rest1 lst1) (rest2 lst2))
    (match rest1
      ([x1 . rest1]
       (match rest2
         ([x2 . rest2]
          (cond
           ((f x1 x2) => (lambda (r) (cons r (recur rest1 rest2))))
           (else (recur rest1 rest2))))
         (else [])))
      (else []))))

(def* filter-map
  ((f lst)
   (filter-map1 f lst))
  ((f lst1 lst2)
   (filter-map2 f lst1 lst2))
  ((f lst1 lst2 . rest)
   (apply filter-map* f lst1 lst2 rest)))

(defapi (filter-map* (f : :procedure) . rest)
  :- :list
  (let recur ((rest rest))
    (if (andmap1 pair? rest)
      (cond
       ((apply f (map car rest))
        => (lambda (r) (cons r (recur (map cdr rest)))))
       (else
        (recur (map cdr rest))))
      [])))

(defrules defaget ()
  ((_ aget assf)
   (defapi (aget key lst (default #f))
     (cond
      ((and (pair? lst) (assf key lst)) => cdr)
      ((procedure? default)
       ((:- default :procedure) key))
      (else default)))))

(defaget agetq assq)
(defaget agetv assv)
(defaget aget assoc)

;; backwards compatibility aliases until we switch to the new name
(def assgetq agetq)
(def assgetv agetv)
(def assget  aget)

(defrules defpget ()
  ((_ pget cmp)
   (defapi (pget key lst (default #f))
     (let lp ((rest lst))
       (match rest
         ([k v . rest]
          (if (cmp k key) v (lp rest)))
         (else
          (if (procedure? default)
            ((:- default :procedure) key)
            default)))))))

(defpget pgetq eq?)
(defpget pgetv eqv?)
(defpget pget equal?)

(defapi (find (pred : :procedure) lst)
  (cond
   ((memf pred lst) => ##car)
   (else #f)))

(defapi (memf (proc : :procedure) lst)
  (let lp ((rest lst))
    (match rest
      ([hd . tl]
       (if (proc hd) rest (lp tl)))
      (else #f))))

(defrules defremove1 ()
  ((_ remove cmp)
   (defapi (remove el lst)
     (let lp ((rest lst) (r []))
       (match rest
         ([hd . rest]
          (if (cmp el hd)
            (foldl1 cons rest r)
            (lp rest (cons hd r))))
         (else lst))))))

(defremove1 remove1 equal?)
(defremove1 remv1 eqv?)
(defremove1 remq1 eq?)

(defapi (remf (proc : :procedure) lst)
  (let lp ((rest lst) (r []))
    (match rest
      ([hd . rest]
       (if (proc hd)
         (foldl1 cons rest r)
         (lp rest (cons hd r))))
      (else lst))))

(defapi (1+ (x : :number)) :- :number
  (+ x 1))
(defapi (1- (x : :number)) :- :number
  (- x 1))
(defapi (fx1+ (x : :fixnum)) :- :fixnum
  (fx+ x 1))
(defapi (fx1- (x : :fixnum)) :- :fixnum
  (fx- x 1))
(def fxshift
  fxarithmetic-shift)
(def fx/
  fxquotient)
(defapi (fx>=0? x) :- :boolean
  (and (fixnum? x) (##fx>= x 0)))
(defapi (fx>0? x) :- :boolean
  (and (fixnum? x) (##fx> x 0)))
(defapi (fx=0? x) :- :boolean
  (##fx= x 0))
(defapi (fx<0? x) :- :boolean
  (and (fixnum? x) (##fx< x 0)))
(defapi (fx<=0? x) :- :boolean
  (and (fixnum? x) (##fx<= x 0)))

(defapi (interned-symbol? x)
  :- :boolean
  (and (symbol? x)
       (not (uninterned-symbol? x))))

(defapi (display-as-string x (port :~ output-port? :- :port))
  :- :void
  (cond
   ((or (string? x) (symbol? x) (keyword? x) (number? x) (char? x))
    (display x port))
   ((pair? x)
    (display-as-string (car x) port)
    (display-as-string (cdr x) port))
   ((vector? x)
    (vector-for-each (cut display-as-string <> port) x))
   ((or (null? x) (void? x) (eof-object? x) (boolean? x))
    (void))
   (else (error "cannot convert as string" x))))

(def* as-string
  ((x)
   (cond
    ((string? x) x)
    ((symbol? x)
     (symbol->string x))
    ((keyword? x)
     (keyword->string x))
    ((number? x)
     (number->string x))
    (else
     (call-with-output-string [] (cut display-as-string x <>)))))
  (args
   (call-with-output-string [] (cut display-as-string args <>))))

(def* make-symbol
  ((x) (if (interned-symbol? x) x (string->symbol (as-string x))))
  (args (string->symbol (apply as-string args))))

(def* make-keyword
  ((x) (if (interned-keyword? x) x (string->keyword (as-string x))))
  (args (string->keyword (apply as-string args))))

(defapi (interned-keyword? x)
  :- :boolean
  (and (keyword? x)
       (not (uninterned-keyword? x))))

(defapi (symbol->keyword (sym : :symbol))
  :- :keyword
  (if (uninterned-symbol? sym)
    (string->uninterned-keyword (symbol->string sym))
    (string->keyword (symbol->string sym))))

(defapi (keyword->symbol (sym : :keyword))
  :- :symbol
  (if (uninterned-keyword? sym)
    (string->uninterned-symbol (keyword->string sym))
    (string->symbol (keyword->string sym))))

(defapi (bytes->string (bstr : :u8vector)
                       (enc  : :symbol := 'UTF-8))
  :- :string
  (if (eq? enc 'UTF-8)
    (utf8->string bstr)
    (let* ((in (open-input-u8vector `(char-encoding: ,enc init: ,bstr)))
           (len (u8vector-length bstr))
           (out (make-string len))
           (n (read-substring out 0 len in)))
      (string-shrink! out n)
      out)))

(defapi (string->bytes (str : :string)
                       (enc : :symbol := 'UTF-8))
  :- :u8vector
  (if (eq? enc 'UTF-8)
    (string->utf8 str)
    (substring->bytes str 0 (string-length str) enc)))

(defapi (substring->bytes (str : :string)
                          (start :~ nonnegative-fixnum? :- :fixnum)
                          (end :~ nonnegative-fixnum? :- :fixnum)
                          (enc 'UTF-8))
  :- :u8vector
  (if (eq? enc 'UTF-8)
    (string->utf8 str start end)
    (let ((out (open-output-u8vector `(char-encoding: ,enc))))
      (write-substring str start end out)
      (get-output-u8vector out))))

(defapi (string-empty? (str : :string))
  :- :boolean
  (fxzero? (string-length str)))

(defapi (string-index (str : :string)
                      (char : :char)
                      (start :~ nonnegative-fixnum? :- :fixnum :=  0))
  (let ((len (string-length str)))
    (let lp ((k start))
      (with-type ((k :fixnum))
        (and (fx< k len)
             (if (eq? char (##string-ref str k))
               k
               (lp (fx+ k 1))))))))

(defapi (string-rindex (str : :string)
                       (char : :char)
                       (start #f))
  (let* ((len (string-length str))
         (start (:- (if (fixnum? start) start (fx- len 1)) :fixnum)))
    (let lp ((k start))
      (with-type ((k :fixnum))
        (and (fx>= k 0)
             (if (eq? char (##string-ref str k))
               k
               (lp (fx- k 1))))))))

(defapi (string-split (str : :string) (char : :char))
  :- :list
  (let ((len (string-length str)))
    (let lp ((start 0) (r '()))
      (with-type ((start :fixnum))
        (cond
         ((string-index str char start)
          => (lambda (end)
               (let (end (:- end :fixnum))
                 (lp (fx+ end 1) (cons (##substring str start end) r)))))
         ((fx< start len)
          (foldl cons (list (##substring str start len)) r))
         (else
          (reverse! r)))))))

(defapi (string-join strs join)
  :- :string
  (def (join-length strs jlen)
    (let lp ((rest strs) (len 0))
      (with-type ((len :fixnum))
        (match rest
          ([hd . rest]
           (if (string? hd)
             (let (hd (:- hd :string))
               (if (pair? rest)
                 (lp rest
                     (fx+ (string-length hd)
                          jlen len))
                 (fx+ (string-length hd)
                      len)))
             (error "expected string" hd)))
          (else 0)))))

  (let* ((join
          (:- (cond
               ((char? join)
                (string join))
               ((string? join)
                join)
               (else
                (error "expected string or char" join)))
              :string))
          (jlen (string-length join))
          (olen (:- (join-length strs jlen) :fixnum))
          (ostr (make-string olen)))
    (let lp ((rest strs) (k 0))
      (with-type ((k :fixnum))
        (match rest
          ([hd . rest]
           (with-type ((hd :string))
             (let ((hdlen (string-length hd)))
               (if (pair? rest)
                 (begin
                   (##substring-move! hd 0 hdlen ostr k)
                   (##substring-move! join 0 jlen ostr (##fx+ k hdlen))
                   (lp rest (fx+ k hdlen jlen)))
                 (begin
                   (##substring-move! hd 0 hdlen ostr k)
                   ostr)))))
          (else "")))))) ; empty

(defapi (read-u8vector (bytes : :u8vector)
                       (port :~ input-port? :- :port))
  :- :fixnum
  (##read-subu8vector bytes 0 (u8vector-length bytes) port))

(defapi (write-u8vector (bytes : :u8vector)
                        (port  :~ output-port? :- :port))
  :- :void
  (##write-subu8vector bytes 0 (u8vector-length bytes) port))

(defapi (read-string (str  : :string)
                     (port :~ input-port? :- :port))
  :- :fixnum
  (##read-substring str 0 (string-length str) port))
(defapi (write-string (str  : :string)
                      (port :~ output-port? :- :port))
  :- :void
  (##write-substring str 0 (string-length str) port))

(defrules DBG ()
  ((_ . a) (DBG/1 1 . a)))

(defrules DBG/1 (quote)
  ;; Each expr can be optionally prefixed by a quoted name, which defaults to the quoted expr
  ;; 1. Specially recognize the last expression and its name (if any)
  ((d 1 tag exprs ... 'name expr)
   (d 2 () (exprs ...) tag name expr))
  ((d 1 tag exprs ... expr)
   (d 2 () (exprs ...) tag expr expr))
  ((_ 1 tag)
   (DBG-helper tag '() '() #f #f))
  ;; 2. Process each intermediate expr and its name, accumulating (name expr) in reverse
  ((d 2 l ('name expr . r) . a)
   (d 2 ((name expr) . l) r . a))
  ((d 2 l (expr . r) . a)
   (d 2 ((expr expr) . l) r . a))
  ((d 2 l () . a)
   (d 3 () l . a))
  ;; 3. reverse intermediate exprs back in order, then expand to DBG-helper
  ((d 3 l (h . r) . a)
   (d 3 (h . l) r . a))
  ((d 3 ((names exprs) ...) () tag name expr)
   (let ((tagval tag)
         (thunk (lambda () expr)))
     (if tagval
       (DBG-helper tagval '(names ...) (list (lambda () exprs) ...) 'name thunk)
       (thunk)))))

(def DBG-printer (make-parameter write))

(def (DBG-helper tag dbg-exprs dbg-thunks expr thunk)
  (letrec
      ((o (current-output-port))
       (e (current-error-port))
       (p (DBG-printer))
       (f (lambda () (force-output o) (force-output e)))
       (d (lambda (x) (display x e)))
       (w (lambda (x) (p x e)))
       (n (lambda () (newline e)))
       (v (lambda (l) (for-each (lambda (x) (d " ") (w x)) l) (n)))
       (x (lambda (expr thunk)
            (f) (d "  ") (w expr) (d " =>")
            (call-with-values thunk (lambda x (v x) (f) (apply values x))))))
    (if tag
      (begin
        (unless (void? tag) (f) (d tag) (n))
        (for-each x dbg-exprs dbg-thunks)
        (if thunk (x expr thunk) (void)))
      (if thunk (thunk) (void)))))
