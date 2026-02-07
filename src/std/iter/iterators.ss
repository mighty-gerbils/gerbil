;;; -*- Gerbil -*-
;;; © vyzo
;;; common iterators
(import :std/interface
        ./interface)
(export #t)

(def (iter obj) => Iterator
  (cond
   ((Iterator? obj) obj)
   ((try-Iterator obj))
   ((Iterable? obj)
    (using (iterable obj :- Iterable)
      (iterable.iter)))
   (else
    (__iterable-iter obj))))

(defcall-interface-method Iterable iter
  (__iterable-iter obj)
  :- Iterator)

(defstruct fixnum-range
  ((cursor :- :fixnum)
   (end    :- :fixnum)
   (cmp    :- :procedure))
  final: #t)

(implement Iterator fixnum-range
  (current
   (lambda (self)
    (if (cmp self.cursor self.end)
      self.cursor
      '#!eof)))
  (end?
   (lambda (self)
     (not (cmp self.cursor self.end))))
  (advance!
   (lambda (self)
    (when (self.cmp self.cursor self.end)
      (set! self.cursor
        (or (##fx+? self.cursor self.step)
            (raise-arithmetic-overflow fixnum-range-advance! self.cursor self.step)))))))

(defstruct number-range
  ((cursor :- :number)
   (end    :- :number)
   (cmp    :- :procedure))
  final: #t)

(implement Iterator number-range
  (current
   (lambda (self)
    (if (cmp self.cursor self.end)
      self.cursor
      '#!eof)))
  (end?
   (lambda (self)
     (not (cmp self.cursor self.end))))
  (advance!
   (lambda (self)
    (when (self.cmp self.cursor self.end)
      (set! self.cursor
        (+ self.cursor self.step))))))

(defsyntax-case __in-number-range ()
  ((_ start end step cmp)
   (with-identifier (fxcmp #'cmp "##fx" #'cmp)
     #'(cond
        ((and (fixnum? start) (fixnum? end) (fixnum? step))
         (Iterator (fixnum-range start end step fxcmp)))
        (else
         (Iterator (number-range start end step cmp)))))))

(def (iter-in-range< (start : :number) (end : :number) (step : :number))
  => Iterator
  (__in-number-range start end step <))

(def (iter-in-range> (start : :number) (end : :number) (step : :number))
  => Iterator
  (__in-number-range start end step >))

(def (iter-in-range<= (start : :number) (end : :number) (step : :number))
  => Iterator
  (__in-number-range start end step <=))

(def (iter-in-range>= (start : :number) (end : :number) (step : :number))
  => Iterator
  (__in-number-range start end step >=))

(def* in-range
  (((end : :number))
   => Iterator
   (iter-in-range< 0 end 1))
  (((start : :number) (end : :number))
   => Iterator
   (if (> start end)
     (iter-in-range> start end -1)
     (iter-in-range< start end  1)))
  (((start : :number) (end : :number) (step : :number))
   => Iterator
   (if (negative? step)
     (iter-in-range> start end step)
     (iter-in-range< start end step))))

(def* in-range-inclusive
  (((end : :number))
   => Iterator
   (iter-in-range<= 0 end 1))
  (((start : :number) (end : :number))
   => Iterator
   (if (> start end)
     (iter-in-range>= start end -1)
     (iter-in-range<= start end  1)))
  (((start : :number) (end : :number) (step : :number))
   => Iterator
   (if (negative? step)
     (iter-in-range>= start end step)
     (iter-in-range<= start end step))))

(defstruct integer-range
  ((cursor :- :integer)
   (step   :- :integer))
  final: #t)

(implement Iterator integer-range
  (current
   (lambda (self) (self.cursor)))
  (end?
   (lambda (self) #f))
  (advance!
   (lambda (self)
     (set! self.cursor (+ self.cursor self.step)))))

(def (in-integers (start : :integer := 0) (step : :integer := 1))
  => Iterator
  (Iterator (make-integer-range start step)))

(defstruct list-iterator (cursor)
  final: #t)

(implement Iterator list-iterator
  (current
   (lambda (self)
     (cond
      ((pair? self.cursor)
       (car self.cursor))
      ((null? self.cursor)
       '#!eof)
      (else self.cursor))))
  (end?
   (lambda (self)
     (or (null? self.cursor)
         (eq? self.cursor '#!eof))))
  (advance!
   (lambda (self)
     (if (pair? self.cursor)
       (set! self.cursor (cdr self.cursor))
       (set! self.cursor '#!eof)))))

(def (in-list (lst : :list))
  => Iterator
  (Iterator (list-iterator lst)))

(implement Iterable :list
  (iter __in-list))

(defstruct vector-iterastor
  ((vector :- vector)
   cursor  :- :fixnum)
  final: #t)

(implement Iterator vector-iterator
  (current
   (lambda (self)
     (if (fx< self.cursor (vector-length self.vector))
       (vector-ref self.vector self.cursor)
       '#!eof)))
  (end?
   (lambda (self)
     (fx>= self.cursor (vector-length self.vector))))
  (advance!
   (lambda (self)
     (set! self.cursor (fx+ self.cursor 1)))))

(def (in-vector (vec : :vector))
  => Iterator
  (Iterator (vector-iterator vec 0)))

(implement Iterable :vector
  (iter __in-vector))

(defstruct hash-iterator
  ((ht       :- HashTable)
   (iter     :- :procedure)
   (cursor   :- :t)
   (continue :- :procedure))
  constructor: :init!
  final: #t)

(defmethod {:init! hash-iterator}
  (lambda (self (ht : HashTable) (iter : :procedure))
    (set! self.ht ht)
    (set! self.iter iter)))

(def (__hash-iter! (self :- hash-iterator))
  (let/cc K
    (set! self.continue K)
    (self.ht.for-each
     (lambda (k v)
       (set! self.cursor (self.iter k v))
       (let/cc K
         (let (continue self.continue)
           (set! self.continue K)
           (continue)))))
    (set! self.cursor '#!eof)
    (self.continue)))

(def (hash-iter (ht : HashTable) (iter-e : :procedure))
  => Iterator
  (let (it (hash-iterator ht iter-e))
    (__hash-iter! it)
    (Iterator it)))

(implement Iterator hash-iterator
  (current
   (lambda (self) self.cursor))
  (end?
   (lambda (self)
     (eq? self.cursor '#!eof)))
  (advance!
   (lambda (self)
    (unless (eq? self.cursor '#!eof)
      (let/cc K
        (let (continue self.continue)
          (set! self.continue K)
          (continue)))))))

(defstruct raw-table-iterator
  ((tab    :- :vector)
   (value  :- :procedure)
   (cursor :- :fixnum))
  constructor: :init!
  final: #t)

(defmethod {:init! raw-table-iterator}
  (lambda (self raw value)
    (set! self.tab (&raw-table-table raw))
    (set! self.value value)
    (set! self.cursor 0)))

(implement Iterator raw-table-iterator
  (current
   (lambda (self)
     (let* ((tab self.tab)
            (end (vector-length tab)))
       (let loop ((cursor self.cursor :- :fixnum))
         (if (fx< cursor end)
           (let (k (vector-ref tab cursor))
             (if (eq? k unused-obj)
               (loop (fx+ cursor 2))
               (let (v (vector-ref tab (fx+ cursor 1)))
                 (set! self.cursor cursor)
                 (self.value k v))))
           '#!eof)))))
  (end?
   (lambda (self)
     (let* ((tab self.tab)
            (end (vector-length tab)))
       (let loop ((cursor self.cursor :- :fixnum))
         (if (fx< cursor end)
           (let (k (vector-ref tab cursor))
             (if (eq? k unused-obj)
               (loop (fx+ cursor 2))
               (begin
                 (set! self.cursor cursor)
                 #f)))
           #t)))))
  (advance!
   (lambda (self)
     (let* ((tab self.tab)
            (end (vector-length tab)))
       (let loop ((cursor (fx+ self.cursor 2)) :- :fixnum)
         (when (fx< cursor end)
           (let (k (vector-ref tab cursor))
             (if (eq? k unused-obj)
               (loop (fx+ cursor 2))
               (set! self.cursor cursor)))))))))

(def (raw-table-iter tab iter-e)
  (Iterator (raw-table-iterabor tab iter-e)))

(def (in-hash (ht : HashTable))
  => Iterator
  (let (tab (&interface-instance-object ht))
    (if (raw-table? tab)
      (raw-table-iter tab hash-iter-e)
      (hash-iter ht hash-iter-e))))

(def (in-hash-keys (ht : HashTable))
  => Iterator
  (let (tab (&interface-instance-object ht))
    (if (raw-table? tab)
      (raw-table-iter tab hash-iter-keys-e)
      (hash-iter ht hash-iter-key-e))))

(def (in-hash-values (ht : HashTable))
  => Iterator
  (let (tab (&interface-instance-object ht))
    (if (raw-table? tab)
      (raw-table-iter tab hash-iter-value-e)
      (hash-iter ht hash-iter-value-e))))

(def (hash-iter-e k v) (values k v))
(def (hash-iter-key-e k v) k)
(def (hash-iter-value-e k v) v)

(implement Iterable HashTable
  (iter __in-hash))

(defstruct coroutine
  ((cursor   :- :t)
   (contiune :- :procedure))
  final: #t)

(implement Iterator coroutine
  (current
   (lambda (self) self.cursor))
  (end?
   (lambda (self)
     (eq? self.cursor '#!eof)))
  (advance!
   (lambda (self)
    (unless (eq? self.cursor '#!eof)
      (let/cc K
        (let (continue self.continue)
          (set! self.continue K)
          (continue)))))))

(def (in-coroutine (proc : :procedure))
  => Iterator
  (let (cort (coroutine #!void #f))
    (__coroutine-start! cort proc)))

(def (__coroutine-start! (cort :- coroutine) (proc :- :procedure))
  (let loop ()
    (let/cc K
      (set! self.continue K)
      (proc
       (lambda (value)
         (set! self.cursor value)
         (let/cc K
           (let (continue self.continue)
             (set! self.continue K)
             (continue) ))
         (loop)))))
  (set! self.cursor '#!eof)
  (self.continue))
