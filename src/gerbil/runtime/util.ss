;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil runtime assorted utilities
prelude: "../prelude/core"
package: gerbil/runtime
namespace: #f

(import "gambit")
(export #t)

(def (displayln . args)
  (let lp ((rest args))
    (match rest
      ([hd . rest]
       (display hd)
       (lp rest))
      (else
       (newline)))))

(def (display* . args)
  (for-each display args))

(def (file-newer? file1 file2)
  (def (modification-time file)
    (##time->seconds
     (file-info-last-modification-time
      (file-info file #t))))

  (##fl> (modification-time file1)
         (modification-time file2)))

(def (create-directory* dir (perms #o755))
  (def (create1 path)
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
             (when (##fx> x 0)
               (create1 (substring dir 0 x)))
             (lp (##fx+ x 1))))
       (else
        (create1 dir))))))

(def absent-obj
  (##absent-object))

(def absent-value
  '#(#!void))

(def (true . _)
  #t)
(def (true? obj)
  (eq? obj #t))

(def (false . _)
  #f)

(def (void . _)
  #!void)
(def (void? obj)
  (eq? obj #!void))

(def (eof-object . _)
  '#!eof)

(def (identity obj)
  obj)

(def (dssl-object? obj)
  (and (memq obj '(#!key #!rest #!optional)) #t))
(def (dssl-key-object? obj)
  (eq? obj #!key))
(def (dssl-rest-object? obj)
  (eq? obj #!rest))
(def (dssl-optional-object? obj)
  (eq? obj #!optional))

(def (immediate? obj)
  (let ((t (##type obj)))
    (##fxzero? (##fxand t #b1))))

(def (nonnegative-fixnum? obj)
  (and (fixnum? obj)
       (not (fxnegative? obj))))

(def (values-count obj)
  (if (##values? obj)
    (##vector-length obj)
    1))

(def (values-ref obj k)
  (if (##values? obj)
    (##vector-ref obj k)
    obj))

(def (values->list obj)
  (if (##values? obj)
    (##vector->list obj)
    (list obj)))

(def (subvector->list obj (start 0))
  (let ((lst (##vector->list obj)))
    (list-tail lst start)))

(def make-hash-table make-table)
(def (make-hash-table-eq . args)
  (apply make-table test: eq? args))
(def (make-hash-table-eqv . args)
  (apply make-table test: eqv? args))

(def list->hash-table list->table)
(def (list->hash-table-eq lst . args)
  (apply list->table lst test: eq? args))
(def (list->hash-table-eqv lst . args)
  (apply list->table lst test: eqv? args))

(def hash?
  table?)
(def hash-table?
  table?)

(def hash-length
  table-length)
(def hash-ref
  table-ref)
(def (hash-get ht k)
  (table-ref ht k #f))
(def (hash-put! ht k v)
  (table-set! ht k v))
(def (hash-update! ht k update (default #!void))
  (let ((value (hash-ref ht k default)))
    (hash-put! ht k (update value))))

(def (hash-remove! ht k)
  (table-set! ht k))

(def hash->list
  table->list)

(def (hash->plist ht)
  (hash-fold cons* [] ht))

(def (plist->hash-table plst (ht (make-hash-table)))
  (let lp ((rest plst))
    (match rest
      ([k v . rest]
       (hash-put! ht k v)
       (lp rest))
      (() ht))))

(def (plist->hash-table-eq plst)
  (plist->hash-table plst (make-hash-table-eq)))
(def (plist->hash-table-eqv plst)
  (plist->hash-table plst (make-hash-table-eqv)))

(def (hash-key? ht k)
  (not (eq? (hash-ref ht k absent-value) absent-value)))

(def hash-for-each
  table-for-each)

(def (hash-map fun ht)
  (hash-fold
   (lambda (k v r) (cons (fun k v) r))
   [] ht))

(def (hash-fold fun iv ht)
  (let ((ret iv))
    (hash-for-each
     (lambda (k v) (set! ret (fun k v ret)))
     ht)
    ret))

(def hash-find
  table-search)

(def (hash-keys ht)
  (hash-map (lambda (k v) k) ht))

(def (hash-values ht)
  (hash-map (lambda (k v) v) ht))

(def (hash-copy hd . rest)
  (let ((hd (table-copy hd)))
    (if (null? rest) hd
        (apply hash-copy! hd rest))))

(def (hash-copy! hd . rest)
  (for-each (lambda (r) (table-merge! hd r)) rest)
  hd)

(def (hash-merge hd . rest)
  (foldl (lambda (tab r) (table-merge r tab))
         hd rest))

(def (hash-merge! hd . rest)
  (foldl (lambda (tab r) (table-merge! r tab))
         hd rest))

(def (hash-clear! ht (size 0))
  (let ((gcht (##vector-ref ht 5)))
    (if (not (fixnum? gcht))
      (##vector-set! ht 5 size))))

(def (make-list k (val #f))
  (unless (fixnum? k)
    (error "expected argument 1 to be fixnum" k))
  (let lp ((n 0) (r []))
    (if (##fx< n k)
      (lp (##fx+ n 1) (cons val r))
      r)))

(def (cons* x y . rest)
  (def (recur x rest)
    (if (pair? rest)
      (cons x (recur (##car rest) (##cdr rest)))
      x))
  (cons x (recur y rest)))

(def (foldl1 f iv lst)
  (let lp ((rest lst) (r iv))
    (match rest
      ([x . rest]
       (lp rest (f x r)))
      (else r))))

(def (foldl2 f iv lst1 lst2)
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

(def (foldl* f iv . rest)
  (let recur ((iv iv) (rest rest))
    (if (andmap1 pair? rest)
      (recur (apply f (foldr1 (lambda (xs r) (cons (car xs) r))
                              (list iv) rest))
             (map cdr rest))
      iv)))

(def (foldr1 f iv lst)
  (let recur ((rest lst))
    (match rest
      ([x . rest]
       (f x (recur rest)))
      (else iv))))

(def (foldr2 f iv lst1 lst2)
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

(def (foldr* f iv . rest)
  (let recur ((rest rest))
    (if (andmap1 pair? rest)
      (apply f
        (foldr1 (lambda (xs r) (cons (car xs) r))
                (list (recur (map cdr rest)))
                rest))
      iv)))

(def (drop l k) ;; unsafe variant, not exported
  (if (##fxpositive? k) (drop (cdr l) (fx1- k)) l))

;; Destructively remove the empty lists from a list of lists, returns the list.
;; : (List (List X)) -> (List (NonEmptyList X))
(def (remove-nulls! l)
  (match l
    ([[] . r]
     (remove-nulls! r))
    ([_ . r]
     (let loop ((l l) (r r))
       (match r
         ([[] . rr] (set-cdr! l (remove-nulls! rr)))
         ([_ . rr] (loop r rr))
         (_ (void))))
     l)
    (_ l))) ;; []

;; : (List X) X -> (NonEmptyList X)
(def (append1! l x)
  (let (l2 [x])
    (if (pair? l)
      (set-cdr! (##last-pair l) l2)
      l2)))

;; Append the reverse of the list in first argument and the list in second argument
;; = (append (reverse rev-head) tail) ;; same as in SRFI 1.
;; : (List X) (List X) -> (List X)
(def (append-reverse rev-head tail)
  (foldl cons tail rev-head))

;; Append the elements the list in the first argument to the front of the list
;; in second argument until an element satisfies a predicate.
;; Return two values, the rest of the first list including the element
;; satisfying the predicate if any (or the empty list if none exists),
;; and the tail with the reverse of the rhead up till then appended in front.
;; : (X -> Bool) (List X) (List X) -> (List X) (List X)
(def (append-reverse-until pred rhead tail)
  (let loop ((rhead rhead) (tail tail))
    (match rhead
      ([] (values [] tail))
      ([a :: r]
       (if (pred a)
         (values rhead tail)
         (loop r (cons a tail)))))))

(def (andmap1 f lst)
  (let lp ((rest lst))
    (match rest
      ([x . rest]
       (and (f x) (lp rest)))
      (else #t))))

(def (andmap2 f lst1 lst2)
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

(def (andmap* f . rest)
  (let recur ((rest rest))
    (if (andmap1 pair? rest)
      (and (apply f (map car rest))
           (recur (map cdr rest)))
      #t)))

(def (ormap1 f lst)
  (let lp ((rest lst))
    (match rest
      ([x . rest]
       (or (f x) (lp rest)))
      (else #f))))

(def (ormap2 f lst1 lst2)
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

(def (ormap* f . rest)
  (let recur ((rest rest))
    (if (andmap1 pair? rest)
      (or (apply f (map car rest))
          (recur (map cdr rest)))
      #f)))

(def (filter f lst)
  (let recur ((lst lst))
    (match lst
      ([hd . rest]
       (if (f hd)
         (let ((tail (recur rest)))
           (if (eq? tail rest)
             lst
             (cons hd tail)))
         (recur rest)))
      (else []))))

(def (filter-map1 f lst)
  (let recur ((rest lst))
    (match rest
      ([x . rest]
       (cond
        ((f x) => (lambda (r) (cons r (recur rest))))
        (else (recur rest))))
      (else []))))

(def (filter-map2 f lst1 lst2)
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

(def (filter-map* f . rest)
  (let recur ((rest rest))
    (if (andmap1 pair? rest)
      (cond
       ((apply f (map car rest))
        => (lambda (r) (cons r (recur (map cdr rest)))))
       (else
        (recur (map cdr rest))))
      [])))

(def (iota count (start 0) (step 1))
  (unless (fixnum? count)
    (error "expected fixnum" count))
  (unless (number? start)
    (error "expected number" start))
  (unless (number? step)
    (error "expected number" step))
  (let ((root (cons #f [])))
    (let lp ((i 0) (x start) (tl root))
      (if (##fx< i count)
        (let ((tl* (cons x [])))
          (##set-cdr! tl tl*)
          (lp (##fx+ i 1) (+ x step) tl*))
        (##cdr root)))))

(def (last-pair lst)
  (match lst
    ([_ . rest]
     (if (pair? rest)
       (last-pair rest)
       lst))))

(def (last lst)
  (car (last-pair lst)))

(defrules defassget ()
  ((_ assget assf)
   (def (assget key lst (default #f))
     (cond
      ((and (pair? lst) (assf key lst)) => cdr)
      ((procedure? default)
       (default key))
      (else default)))))

(defassget assgetq assq)
(defassget assgetv assv)
(defassget assget assoc)

(defrules defpget ()
  ((_ pget cmp)
   (def (pget key lst (default #f))
     (let lp ((rest lst))
       (match rest
         ([k v . rest]
          (if (cmp k key) v (lp rest)))
         (else
          (if (procedure? default)
            (default key)
            default)))))))

(defpget pgetq eq?)
(defpget pgetv eqv?)
(defpget pget equal?)

(def (find pred lst)
  (cond
   ((memf pred lst) => car)
   (else #f)))

(def (memf proc lst)
  (let lp ((rest lst))
    (match rest
      ([hd . tl]
       (if (proc hd) rest (lp tl)))
      (else #f))))

(defrules defremove1 ()
  ((_ remove cmp)
   (def (remove el lst)
     (let lp ((rest lst) (r []))
       (match rest
         ([hd . rest]
          (if (cmp el hd)
            (foldl1 cons rest r)
            (lp rest (cons hd r))))
         (else lst))))))

(defremove1 remove1 equal?)
(defremove1 remv eqv?)
(defremove1 remq eq?)

(def (remf proc lst)
  (let lp ((rest lst) (r []))
    (match rest
      ([hd . rest]
       (if (proc hd)
         (foldl1 cons rest r)
         (lp rest (cons hd r))))
      (else lst))))

(def (1+ x)
  (+ x 1))
(def (1- x)
  (- x 1))
(def (fx1+ x)
  (fx+ x 1))
(def (fx1- x)
  (fx- x 1))
(def fxshift
  fxarithmetic-shift)
(def fx/
  fxquotient)
(def (fx>=0? x)
  (and (fixnum? x) (##fx>= x 0)))
(def (fx>0? x)
  (and (fixnum? x) (##fx> x 0)))
(def (fx=0? x)
  (eq? x 0))
(def (fx<0? x)
  (and (fixnum? x) (##fx< x 0)))
(def (fx<=0? x)
  (and (fixnum? x) (##fx<= x 0)))


(def (interned-symbol? x)
  (and (symbol? x)
       (not (uninterned-symbol? x))))

(def (display-as-string x port)
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

(def (interned-keyword? x)
  (and (keyword? x)
       (not (uninterned-keyword? x))))

(def (symbol->keyword sym)
  ((if (uninterned-symbol? sym)
     string->uninterned-keyword
     string->keyword)
   (symbol->string sym)))

(def (keyword->symbol kw)
  ((if (uninterned-keyword? kw)
     string->uninterned-symbol
     string->symbol)
   (keyword->string kw)))

(def (bytes->string bstr (enc 'UTF-8))
  (if (eq? enc 'UTF-8)
    (utf8->string bstr)
    (let* ((in (open-input-u8vector `(char-encoding: ,enc init: ,bstr)))
           (len (u8vector-length bstr))
           (out (make-string len))
           (n (read-substring out 0 len in)))
      (string-shrink! out n)
      out)))

(def (string->bytes str (enc 'UTF-8))
  (if (eq? enc 'UTF-8)
    (string->utf8 str)
    (substring->bytes str 0 (string-length str) enc)))

(def (substring->bytes str start end (enc 'UTF-8))
  (if (eq? enc 'UTF-8)
    (string->utf8 str start end)
    (let ((out (open-output-u8vector `(char-encoding: ,enc))))
      (write-substring str start end out)
      (get-output-u8vector out))))

(def (string-empty? str)
  (##fxzero? (string-length str)))

(def (string-prefix? prefix str)
  (let ((str-len (string-length str))
        (prefix-len (string-length prefix)))
    (and (##fx<= prefix-len str-len)
         (let lp ((i 0))
           (if (##fx< i prefix-len)
             (and (eq? (##string-ref str i) (##string-ref prefix i))
                  (lp (##fx+ i 1)))
             #t)))))

(def (string-index str char (start 0))
  (let ((len (string-length str)))
    (let lp ((k start))
      (and (##fx< k len)
           (if (eq? char (##string-ref str k)) k
               (lp (##fx+ k 1)))))))

(def (string-rindex str char (start #f))
  (let* ((len (string-length str))
         (start (or start (##fx- len 1))))
    (let lp ((k start))
      (and (##fx>= k 0)
           (if (eq? char (##string-ref str k)) k
               (lp (##fx- k 1)))))))

(def (string-split str char)
  (let ((len (string-length str)))
    (let lp ((start 0) (r '()))
      (cond
       ((string-index str char start)
        => (lambda (end)
             (lp (##fx+ end 1) (cons (##substring str start end) r))))
       ((##fx< start len)
        (foldl cons (list (##substring str start len)) r))
       (else
        (reverse r))))))

(def (string-join strs join)
  ;; TODO conditionally disable contract checks
  (def (join-length strs jlen)
    (let lp ((rest strs) (len 0))
      (match rest
        ([hd . rest]
         (if (string? hd)
           (if (pair? rest)
             (lp rest
                 (##fx+ (##string-length hd)
                        jlen len))
             (##fx+ (##string-length hd)
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
         (jlen (##string-length join))
         (olen (join-length strs jlen))
         (ostr (make-string olen)))
    (let lp ((rest strs) (k 0))
      (match rest
        ([hd . rest]
         (let ((hdlen (##string-length hd)))
           (if (pair? rest)
             (begin
               (##substring-move! hd 0 hdlen ostr k)
               (##substring-move! join 0 jlen ostr (##fx+ k hdlen))
               (lp rest (##fx+ k hdlen jlen)))
             (begin
               (##substring-move! hd 0 hdlen ostr k)
               ostr))))
        (else "")))))                   ; empty

(def (read-u8vector bytes port)
  (read-subu8vector bytes 0 (u8vector-length bytes) port))
(def (write-u8vector bytes port)
  (write-subu8vector bytes 0 (u8vector-length bytes) port))

(def (read-string str port)
  (read-substring str 0 (string-length str) port))
(def (write-string str port)
  (write-substring str 0 (string-length str) port))

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
