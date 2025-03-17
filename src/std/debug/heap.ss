;;; -*- Gerbil -*-
;;; © vyzo
;;; heap debugging utilities

(import :gerbil/gambit
        :std/sort)
(export memory-usage heap-type-stats dump-heap-stats! walk-heap!
        count-still still-objects still-objects/refcount)

(cond-expand
  (gerbil-smp
   (import :std/misc/threads)))

(def (memory-usage)
  (let (stats (##process-statistics))
    `((gc-heap-size . ,(inexact->exact (f64vector-ref stats 15)))
      (gc-alloc     . ,(inexact->exact (f64vector-ref stats 16)))
      (gc-live      . ,(inexact->exact (f64vector-ref stats 17)))
      (gc-movable   . ,(inexact->exact (f64vector-ref stats 18)))
      (gc-still     . ,(inexact->exact (f64vector-ref stats 19))))))

(def (heap-type-stats)
  (let* ((live (walk-heap!))
         (types (make-hash-table-eq)))
    (hash-for-each
     (lambda (obj _)
       (let (t (##type-id (class-of obj)))
         (hash-update! types t 1+ 0)))
     live)
    (values (hash-length live) types)))

(def (dump-heap-stats! (port (current-error-port)))
  (##gc)
  (let* ((mem (memory-usage))
         ((values still refcounted)
          (count-still))
         ((values count types)
          (heap-type-stats)))
    (parameterize ((current-output-port port))
      (displayln "=== memory usage ===")
      (for-each (match <> ([key . val] (displayln key ": " val)))
                mem)
      (displayln "=== heap summary ===")
      (displayln "objects: " count)
      (displayln "still: " still)
      (displayln "refcounted: " refcounted)
      (displayln "=== heap type counts ===")
      (for-each (match <> ([key . val] (displayln key " " val)))
                (sort (hash->list types) (lambda (a b) (> (cdr a) (cdr b))))))))

;;; still objects
(def (count-still)
  (cond-expand
    (gerbil-smp
     (let* ((threads (on-all-processors count-still1))
            (vals (map thread-join! threads)))
       (foldl (lambda (v r)
                (with (((values x y) v)
                       ((values rx ry) r))
                  (values (fx+ x rx) (fx+ y ry))))
              (values 0 0)
              vals)))
    (else
     (count-still1))))

(def (count-still1)
  (let ((still (count-still-objects))
        (refcounted (count-still-objects/refcount)))
    (values still refcounted)))

(def (still-objects/refcount)
  (get-still count-still-objects/refcount get-still-objects/refcount))

(def (still-objects)
  (get-still count-still-objects get-still-objects))

(def (get-still countf getf)
  (cond-expand
    (gerbil-smp
     (let* ((threads (on-all-processors (cut get-still1 countf getf)))
            (vectors (map thread-join! threads)))
       (vector-concatenate vectors)))
    (else
     (get-still1 countf getf))))

(def (get-still1 countf getf)
  (let (count (countf))
    (if (fx> count 0)
      (let* ((vec   (make-vector (fx1+ count))) ; + room for the vector itself
             (count (getf vec)))
        (when (fx< count (vector-length vec))
          (vector-shrink! vec count))
        vec)
      '#())))

;;; heap walking
(def (walk-heap! walk: (walk #f) root: (root #f))
  (let (seen (make-hash-table-eq))

    (def (visit container i obj)
      (cond
       ((hash-get seen obj)
        (walk-no-recursive-scan))
       ((eq? seen obj)
        (walk-no-recursive-scan))
       ((##mem-allocated? obj)
        (hash-put! seen obj #t)
        (if walk
          (walk container i obj)
          (walk-continue)))
       (else
        (walk-continue))))

    (if root
      (walk-from-object! root visit)
      (walk-from-roots! visit))

    seen))

(def (walk-from-roots! visit)
  (def (scan-symbol-and-global-var obj)
    (walk-seq
     (walk-from-object! obj visit)
     (if (##global-var? obj)
       (let* ((var (##make-global-var obj))
              (val (##global-var-ref obj)))
         (walk-from-object! val visit))
       (walk-continue))))

  (def (scan-keyword obj)
    (walk-from-object! obj visit))

  (def (scan-still obj)
    (walk-from-object! obj visit))

  (walk-interned-symbols! scan-symbol-and-global-var)
  (walk-interned-keywords! scan-keyword)
  (walk-still-objects! scan-still))

(def (walk-still-objects! scan)
  (let* ((still (still-objects/refcount))
         (count (vector-length still)))
    (let lp ((i 0))
      (when (fx< i count)
        (scan (##vector-ref still i))
        (lp (fx1+ i))))))

(defrules walk-seq ()
  ((_ e1 e2) (or e1 e2)))

(defrules walk-continue ()
  ((_) #f))

(defrules walk-no-recursive-scan ()
  ((_) absent-obj))

(extern walk-interned-symbols! walk-interned-keywords! walk-from-object!)

;; this code was originally written by Marc Feeley for Guillaume Cartier
;; i have slightly modified it to drop the mutations and counter bitrot
(begin-foreign
  (namespace ("std/debug/heap#"
              walk-interned-symbols!
              walk-interned-keywords!
              walk-from-object!))

  ;; lifted from sys.scm
  (define-macro (macro-symbol-next s)
    `(macro-slot 2 ,s))

  (define-macro (macro-keyword-next k)
    `(macro-slot 2 ,k))

  ;; walker macros

  (define-macro (macro-walk-seq expr1 expr2)
    `(or ,expr1 ,expr2))

  (define-macro (macro-walk-continue)
    `#f)

  (define-macro (macro-walk-no-recursive-scan)
    `(macro-absent-obj))

  (define-macro (macro-case-type obj)
    `(let ((obj ,obj))
       (if (##not (##mem-allocated? obj))

         (macro-handle-type-atomic)

         (let ((subtype (##subtype obj)))

           (cond ((##fx= subtype (macro-subtype-pair))
                  ;; This case overlaps with ovector so it must be tested
                  ;; before ovector.
                  (macro-handle-type-simple
                   ##cons
                   (##car ##set-car!)
                   (##cdr ##set-cdr!)))

                 ((macro-subtype-ovector? subtype)
                  (macro-handle-type-object-vector ovector))

                 ((##fx= subtype (macro-subtype-foreign))
                  ;; This case overlaps with bvector so it must be tested
                  ;; before bvector.
                  (macro-handle-type-mixed-vector
                   foreign
                   (##foreign-tags ignore)))

                 ((macro-subtype-bvector? subtype)
                  (macro-handle-type-mixed-vector
                   bvector))

                 ((##fx= subtype (macro-subtype-symbol))
                  (macro-handle-type-mixed-vector
                   symbol
                   (##symbol-name ignore)))

                 ((##fx= subtype (macro-subtype-keyword))
                  (macro-handle-type-mixed-vector
                   keyword
                   (##keyword-name ignore)))

                 ((##fx= subtype (macro-subtype-frame))
                  (macro-handle-type-frame))

                  ((##fx= subtype (macro-subtype-continuation))
                   (##continuation-frame obj) ;; force frame into heap ; ; ;
                   (macro-handle-type-simple
                    macro-make-continuation
                    (macro-continuation-frame ignore)
                    (macro-continuation-denv ignore)))

                   ((##fx= subtype (macro-subtype-weak))
                    (if (##will? obj)

                      (macro-handle-type-simple
                       macro-make-will
                       (macro-will-testator ignore)
                       (macro-will-action ignore))

                      ;;TODO: walking a gc-hash-table may be unreliable
                      (macro-handle-type-object-vector gc-hash-table)))

                   ((##fx= subtype (macro-subtype-procedure))
                    (if (##closure? obj)

                      (macro-handle-type-object-vector closure)

                      (macro-handle-type-atomic)))

                   ((##fx= subtype (macro-subtype-return))
                    (macro-handle-type-atomic))

                   ((##fx= subtype (macro-subtype-promise))
                    (macro-handle-type-object-vector promise))

                   (else
                    ;;TODO: this case is impossible (handle like error?)
                    (macro-handle-type-atomic)))))))

  (define-macro (macro-walk-object obj)
    `(let ()

       (define (walk-object container i obj)

         (define-macro (macro-handle-type-atomic)
           `(handle-type-atomic))

         (define (handle-type-atomic)
           (macro-walk-continue))

         (define-macro (macro-handle-type-object-vector type)
           `(handle-type-object-vector))

         (define (handle-type-object-vector)
           (let ((len (##vector-length obj)))
             (let loop ((i 0))
               (if (##fx< i len)
                 (macro-walk-object-seq
                  obj i
                  (if (##vector? obj)
                    (##vector-ref obj i)
                    (##unchecked-structure-ref obj i #f #f))
                  (loop (##fx+ i 1)))
                 (macro-walk-continue)))))

         (define-macro (macro-handle-type-simple constructor . fields)
           `(macro-handle-fields 0 ,@fields))

         (define-macro (macro-handle-type-mixed-vector type . fields)
           `(macro-handle-fields 0 ,@fields))

         (define-macro (macro-handle-fields i . fields)
           (if (pair? fields)
             (let ((field (car fields)))
               `(macro-walk-object-seq
                 obj ,i (,(car field) obj)
                 (macro-handle-fields ,(+ i 1) ,@(cdr fields))))
             `(macro-walk-continue)))

         (define-macro (macro-handle-type-frame)
           `(handle-type-frame))

         (define (handle-type-frame)
           (macro-walk-object-seq
            obj 0 (##frame-ret obj)
            (let ((fs (##frame-fs obj)))
              (let loop ((i 1))
                (if (##fx< fs i)
                  (macro-walk-continue)
                  (if (##frame-slot-live? obj i)
                    (macro-walk-object-seq
                     obj i (##frame-ref obj i)
                     (loop (##fx+ i 1)))
                    (loop (##fx+ i 1))))))))

         (macro-walk-visit
          (macro-case-type obj)))

       (walk-object #t 0 obj)))

  (define (walk-interned-symbols! proc)
    (let ((tbl (##symbol-table)))
      (let loop1 ((i (##fx- (##vector-length tbl) 1)))
        (if (##fx> i 0)
          (let loop2 ((obj (##vector-ref tbl i)))
            (if (##null? obj)
              (loop1 (##fx- i 1))
              (macro-walk-seq
               (proc obj)
               (loop2 (macro-symbol-next obj)))))
          (macro-walk-continue)))))

  (define (walk-interned-keywords! proc)
    (let ((tbl (##keyword-table)))
      (let loop1 ((i (##fx- (##vector-length tbl) 1)))
        (if (##fx> i 0)
          (let loop2 ((obj (##vector-ref tbl i)))
            (if (##null? obj)
              (loop1 (##fx- i 1))
              (macro-walk-seq
               (proc obj)
               (loop2 (macro-keyword-next obj)))))
          (macro-walk-continue)))))

  (define (walk-from-object! obj visit)
    (define-macro (macro-walk-visit recursive-scan)
      `(let ((result (visit container i obj)))
         (if (##eq? result (macro-walk-no-recursive-scan))
           (macro-walk-continue)
           (macro-walk-seq
            result
            ,recursive-scan))))

    (define-macro (macro-walk-object-seq container i subobject continue)
      `(let* ((container ,container)
              (i ,i)
              (subobject ,subobject))
         (macro-walk-seq
          (walk-object container i subobject)
          ,continue)))

    (macro-walk-object obj)))

;;; still object accounting
(extern
  count-still-objects count-still-objects/refcount
  get-still-objects get-still-objects/refcount)
(begin-foreign
  (namespace ("std/debug/heap#"
              count-still-objects count-still-objects/refcount
              get-still-objects get-still-objects/refcount))

(c-declare #<<END-C
// these are defined in gambit/lib/mem.c
#define ___PSTATE_MEM(var) ___ps->mem.var
#define still_objs ___PSTATE_MEM(still_objs_)
#define ___STILL_LINK_OFS 0
#define ___STILL_REFCOUNT_OFS 1
#define ___STILL_BODY_OFS 6
#define ___STILL_HAND_OFS ___STILL_BODY_OFS
#ifndef ___BODY_OFS
#define ___BODY_OFS 1
#endif
END-C
)

(define count-still-objects
  (c-lambda () int #<<END-C
int count = 0;
___WORD *base = ___CAST(___WORD*,still_objs);
while (base != 0)
{
 count++;
 base = ___CAST(___WORD*,base[___STILL_LINK_OFS]);
}
___return(count);
END-C
))

(define count-still-objects/refcount
  (c-lambda () int #<<END-C
int count = 0;
___WORD *base = ___CAST(___WORD*,still_objs);
while (base != 0)
{
 if (base[___STILL_REFCOUNT_OFS])
  {
   count++;
  }
 base = ___CAST(___WORD*,base[___STILL_LINK_OFS]);
}
___return(count);
END-C
))

(define get-still-objects
  (c-lambda (scheme-object) int #<<END-C
int count = 0;
int max = ___INT(___VECTORLENGTH(___arg1));
___WORD *base = ___CAST(___WORD*,still_objs);
while (base != 0 && count < max)
{
 ___SCMOBJ next = ___TAG((base + ___STILL_HAND_OFS - ___BODY_OFS),
                         (___HD_SUBTYPE(base[___STILL_BODY_OFS-1]) == ___sPAIR?
                          ___tPAIR : ___tSUBTYPED));
 ___VECTORSET(___arg1, ___FIX(count), next);
 count++;
 base = ___CAST(___WORD*,base[___STILL_LINK_OFS]);
}
___return(count);
END-C
))

(define get-still-objects/refcount
  (c-lambda (scheme-object) int #<<END-C
int count = 0;
int max = ___INT(___VECTORLENGTH(___arg1));
___WORD *base = ___CAST(___WORD*,still_objs);
while (base != 0 && count < max)
{
 if (base[___STILL_REFCOUNT_OFS])
  {
   ___SCMOBJ next = ___TAG((base + ___STILL_HAND_OFS - ___BODY_OFS),
                           (___HD_SUBTYPE(base[___STILL_BODY_OFS-1]) == ___sPAIR?
                            ___tPAIR : ___tSUBTYPED));
   ___VECTORSET(___arg1, ___FIX(count), next);
    count++;
  }
 base = ___CAST(___WORD*,base[___STILL_LINK_OFS]);
}
___return(count);
END-C
))

)
