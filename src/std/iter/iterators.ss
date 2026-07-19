;;; -*- Gerbil -*-
;;; © vyzo
;;; common iterators
(import :std/interface
        :std/error
        ./interface)
(export #t)

(def (iter obj) => Iterator
  (cond
   ((Iterator? obj) obj)
   ((try-Iterator obj)
    => (lambda ((iter :- Iterator)) => Iterator iter))
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
   (step   :- :fixnum)
   (cmp    :- :procedure))
  final: #t)

(implement Iterator fixnum-range
  (next!
   (lambda (self)
     (if (self.cmp self.cursor self.end)
       (let (cursor self.cursor)
         (set! self.cursor
           (fx+ cursor self.step))
         cursor)
       #!eof))))

(defstruct number-range
  ((cursor :- :number)
   (end    :- :number)
   (step   :- :number)
   (cmp    :- :procedure))
  final: #t)

(implement Iterator number-range
  (next!
   (lambda (self)
     (if (self.cmp self.cursor self.end)
       (let (cursor self.cursor)
         (set! self.cursor
           (+ cursor self.step))
         cursor)
       #!eof))))

(defsyntax-case __in-number-range ()
  ((_ start end step cmp)
   (with-identifier (fxcmp #'cmp "fx" #'cmp)
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
   (if (< end 0)
     (iter-in-range> 0 end -1)
     (iter-in-range< 0 end 1)))
  (((start : :number) (end : :number))
   => Iterator
   (if (> start end)
     (iter-in-range> start end -1)
     (iter-in-range< start end  1)))
  (((start : :number) (end : :number) (step : :number))
   => Iterator
   (cond
    ((> step 0)
     (iter-in-range< start end step))
    ((< step 0)
     (iter-in-range> start end step))
    (else
     (raise-bad-argument in-range "non zero step" step)))))

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
   (cond
    ((> step 0)
     (iter-in-range<= start end step))
    ((< step 0)
     (iter-in-range>= start end step))
    (else
     (raise-bad-argument in-range-inclusive "non zero step" step)))))

(defstruct number-series
  ((cursor :- :number)
   (succ   :- :procedure)
   (stop?  :- :procedure))
  final: #t)

(implement Iterator number-series
  (next!
   (lambda (self)
     (if (self.stop? self.cursor)
       #!eof
       (let (cursor self.cursor)
         (set! self.cursor (self.succ cursor))
         cursor)))))

(def (in-integers (start : :integer := 0) (step : :integer := 1))
  => Iterator
  (Iterator (make-number-series start (cut + <> step) (lambda (x) #f))))

(def (in-number-series (start : :number) (succ : :procedure) (stop? : :procedure))
  (Iterator (make-number-series start succ stop?)))

(defstruct list-iterator (cursor)
  final: #t)

(implement Iterator list-iterator
  (next!
   (lambda (self)
     (let (cursor self.cursor)
       (cond
        ((pair? cursor)
         (let (next (car cursor))
           (set! self.cursor (cdr cursor))
           next))
        ((null? cursor)
         #!eof)
        (else
         (set! self.cursor '#!eof)
         cursor))))))

(def (in-list (lst : :list))
  => Iterator
  (Iterator (list-iterator lst)))

(implement Iterable :list
  (iter __in-list))

(defstruct vector-iterator
  ((vector :- :vector)
   (cursor :- :fixnum))
  final: #t)

(implement Iterator vector-iterator
  (next!
   (lambda (self)
     (let (cursor self.cursor)
       (if (fx< cursor (vector-length self.vector))
         (let (next (vector-ref self.vector cursor))
           (set! self.cursor (fx+ cursor 1))
           next)
         #!eof)))))

(def (in-vector (vec : :vector))
  => Iterator
  (Iterator (vector-iterator vec 0)))

(implement Iterable :vector
  (iter __in-vector))

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
  (next!
   (lambda (self)
     (let* ((tab self.tab)
            (end (vector-length tab)))
       (let loop ((cursor self.cursor :- :fixnum))
         (if (fx< cursor end)
           (let (k (vector-ref tab cursor))
             (if (eq? k unused-obj)
               (loop (fx+ cursor 2))
               (let (v (vector-ref tab (fx+ cursor 1)))
                 (set! self.cursor (fx+ cursor 2))
                 (self.value k v))))
           #!eof))))))

(def (raw-table-iter tab iter-e)
  => Iterator
  (Iterator (raw-table-iterator tab iter-e)))

(def (hash-iter (ht : HashTable) (iter-e : :procedure))
  => Iterator
  (in-coroutine
   (lambda ((yield :- :procedure))
     (ht.for-each
      (lambda (k v) (yield (iter-e k v)))))))

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
      (raw-table-iter tab hash-iter-key-e)
      (hash-iter ht hash-iter-key-e))))

(def (in-hash-values (ht : HashTable))
  => Iterator
  (let (tab (&interface-instance-object ht))
    (if (raw-table? tab)
      (raw-table-iter tab hash-iter-value-e)
      (hash-iter ht hash-iter-value-e))))

(def (hash-iter-e k v) (cons k v))
(def (hash-iter-key-e k v) k)
(def (hash-iter-value-e k v) v)

(implement Iterable HashTable
  (iter __in-hash))

(defstruct coroutine-iterator
  ((proc     :- :procedure)
   (continue :- :procedure)
   (done?    :- :boolean))
  final: #t)

(implement Iterator coroutine-iterator
  (next!
   (lambda (self)
     (cond
      (self.done? #!eof)
      (self.continue
       => (lambda (continue)
            (let/cc K
              (set! self.continue K)
              (continue))))
      (else
       (let/cc K
         (set! self.continue K)
         (self.proc
          (lambda (value)
            (let/cc K
              (let (continue self.continue)
                (set! self.continue K)
                (continue value)))))
         (set! self.done? #t)
         (let (continue self.continue)
           (set! self.continue #f)
           (continue #!eof))))))))

(def (in-coroutine (proc : :procedure))
  => Iterator
  (Iterator (coroutine-iterator proc #f #f)))

(implement Iterable :procedure
  (iter __in-coroutine))
