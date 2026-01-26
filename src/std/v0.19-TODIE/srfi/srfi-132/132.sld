;;; If the (rnrs sorting) library is available, its sorting procedures
;;; are likely to be faster than the procedures defined by the SRFI 132
;;; reference implementation.  To use the (rnrs sorting) library if it
;;; is available, uncomment the following library definition.

#;
(define-library (srfi 132 use-r6rs-sorting))

(define-library (srfi 132 sorting)

  (export list-sorted?               vector-sorted?
          list-sort                  vector-sort
          list-stable-sort           vector-stable-sort
          list-sort!                 vector-sort!
          list-stable-sort!          vector-stable-sort!
          list-merge                 vector-merge
          list-merge!                vector-merge!
          list-delete-neighbor-dups  vector-delete-neighbor-dups
          list-delete-neighbor-dups! vector-delete-neighbor-dups!
          vector-find-median         vector-find-median!
          vector-select!             vector-separate!
          )

  (import (except (scheme base) vector-copy vector-copy!)
          (rename (only (scheme base) vector-copy vector-copy! vector-fill!)
                  (vector-copy  r7rs-vector-copy)
                  (vector-copy! r7rs-vector-copy!)
                  (vector-fill! r7rs-vector-fill!))
          (scheme cxr)
          (only (srfi 27) random-integer))

  (cond-expand

   ((and (library (srfi 132 use-r6rs-sorting))
         (library (rnrs sorting)))
    (import (rename (rnrs sorting)
                    (list-sort    r6rs-list-sort)
                    (vector-sort  r6rs-vector-sort)
                    (vector-sort! r6rs-vector-sort!))))
   (else))

  (cond-expand
   ((library (rnrs base))
    (import (only (rnrs base) assert)))
   (else
    (begin
     (define (assert x)
       (if (not x)
           (error "assertion failure"))))))

  ;; If the (srfi 132 use-r6rs-sorting) library is defined above,
  ;; we'll use the (rnrs sorting) library for all sorting and trim
  ;; Olin's reference implementation to remove unnecessary code.
  ;; The merge.scm file, for example, extracts the list-merge,
  ;; list-merge!, vector-merge, and vector-merge! procedures from
  ;; Olin's lmsort.scm and vmsort.scm files.

  (cond-expand

   ((and (library (srfi 132 use-r6rs-sorting))
         (library (rnrs sorting)))
    (include "merge.scm")
    (include "delndups.scm")     ; list-delete-neighbor-dups etc
    (include "sortp.scm")        ; list-sorted?, vector-sorted?
    (include "vector-util.scm")
    (include "sortfaster.scm"))

   (else
    (include "delndups.scm")     ; list-delete-neighbor-dups etc
    (include "lmsort.scm")       ; list-merge, list-merge!
    (include "sortp.scm")        ; list-sorted?, vector-sorted?
    (include "vector-util.scm")
    (include "vhsort.scm")
    (include "visort.scm")
    (include "vmsort.scm")       ; vector-merge, vector-merge!
    (include "vqsort2.scm")
    (include "vqsort3.scm")
    (include "sort.scm")))

  (include "select.scm")

  )

(define-library (srfi 132)

  (export list-sorted?               vector-sorted?
          list-sort                  vector-sort
          list-stable-sort           vector-stable-sort
          list-sort!                 vector-sort!
          list-stable-sort!          vector-stable-sort!
          list-merge                 vector-merge
          list-merge!                vector-merge!
          list-delete-neighbor-dups  vector-delete-neighbor-dups
          list-delete-neighbor-dups! vector-delete-neighbor-dups!
          vector-find-median         vector-find-median!
          vector-select!             vector-separate!
          )

  (import (srfi 132 sorting)))
