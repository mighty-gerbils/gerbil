;;; -*- Gerbil -*-
;;; © fare, vyzo
;;; hash table utilities
;;; TODO port the rest of misc/hash
(export #t)

;; the hash deconstructor macro
;; usage: (let-hash a-hash body ...)
;; rebinds %%ref so that identifiers starting with a dot are looked up in the hash:
;;  .x  -> (hash-ref a-hash 'x)  ; strong accessor
;;  .?x -> (hash-get a-hash 'x)  ; weak accessor
;;  .$x -> (hash-get a-hash "x") ; string weak accessor
;;  ..x -> (%%ref .x)            ; escape
(defsyntax-case let-hash ()
  ((macro expr body ...)
   (with-syntax ((@ref (stx-identifier #'macro '%%ref)))
     #'(let (ht (: expr HashTable))
         (let-syntax
             ((var-ref
               (syntax-rules ()
                 ((_ id) (@ref id)))))
           (let-syntax
               ((@ref
                 (lambda (stx)
                   (syntax-case stx ()
                     ((_ id)
                      (let (str (symbol->string (stx-e #'id)))
                        (def (str->symbol start)
                          (string->symbol (substring str start (string-length str))))
                        (def (substr start)
                          (substring str start (string-length str)))
                        (if (eq? (string-ref str 0) #\.) ; hash accessor?
                          (cond
                           ((eq? (string-ref str 1) #\.) ; escape
                            (with-syntax ((sym (str->symbol 1)))
                              #'(var-ref sym)))
                           ((eq? (string-ref str 1) #\?) ; weak
                            (with-syntax ((sym (str->symbol 2)))
                              #'(hash-get ht 'sym)))
                           ((eq? (string-ref str 1) #\$) ; string weak
                            (with-syntax ((sub (substr 2)))
                              #'(hash-get ht 'sub)))
                           (else
                            (with-syntax ((sym (str->symbol 1)))
                              #'(hash-ref ht 'sym))))
                          #'(var-ref id))))))))
             body ...))))))

(def (equal-hash? a b) => :boolean
  (and (hash-table? a)
       (hash-table? b)
       (hash=? a b)))

(def (hash=? (a : HashTable) (b : HashTable)) => :boolean
  (if (fx= (a.length) (b.length))
    (let/cc return
      (a.for-each
       (lambda (k v)
         (let (bv (b.ref k absent-value))
           (if (eq? bv absent-value)
             (return #f)
             (if (hash-table? v)
               (unless (and (hash-table? bv)
                            (hash=? v bv))
                 (return #f))
               (unless (equal? bv v)
                 (return #f)))))))
      #t)
    #f))

(def (hash-empty? (h : HashTable)) => :boolean
  (fxzero? (h.length)))

(def (hash-ref/default (h : HashTable) key (default : :procedure))
  (let (val (h.ref key absent-value))
    (if (eq? val absent-value)
      (default)
      val)))

(def (hash-ensure-ref (h : HashTable) key (default : :procedure))
  (let (val (h.ref key absent-value))
    (if (eq? val absent-value)
      (let (val (default))
        (h.set! key val)
        val)
      val)))

(def (invert-hash-into! (from : HashTable) (to (make-hash-table) : HashTable))
  => HashTable
  (from.for-each (lambda (k v) (to.set! v k)))
  to)

(def (hash->list/sort (h : HashTable) (pred : :procedure))
  => :list
  (list-sort (lambda (x y) (pred (car x) (car y)))
             (hash->list h)))
