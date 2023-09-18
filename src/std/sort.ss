;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Sorting -- using Olin Shivers' withdrawn srfi-32 impl

(import :std/error)
(export sort sort! stable-sort stable-sort!)

(declare
  (not safe)
  (fixnum))

;; front-end procs
(defrules defproc ()
  ((_ proc lsort vsort)
   (def (proc seq elt<)
     (unless (procedure? elt<)
       (error "Expected procedure" elt<))
     (cond
      ((null? seq)   seq)
      ((pair? seq)   (lsort seq elt<))
      ((vector? seq) (vsort seq elt<))
      (else
       (error "Expected list or vector" seq))))))

(defproc sort list-merge-sort heap-sort)
(defproc sort! list-merge-sort! vector-heap-sort!)
(defproc stable-sort list-merge-sort vector-merge-sort)
(defproc stable-sort! list-merge-sort! vector-merge-sort!)

;;; Implementation
;; frobbing for sort-support
(extern (real-vector-copy vector-copy))
(defrules vector-copy ()
  ((_ v) (real-vector-copy v))
  ((_ v start end) (subvector v start end)))

(def (vector-copy! target src start end)
  (subvector-move! src start end target 0))

;; frobbing for vector-merge-sort
(def (vector-merge-sort! v elt<)
  (%vector-merge-sort! v elt< 0 (vector-length v) (vector-copy v))
  v)

(def (vector-merge-sort v elt<)
  (vector-merge-sort! (vector-copy v) elt<))

;; frobbing for heap sort
(def (vector-heap-sort! v elt<)
  (heap-sort! v elt<)
  v)

;; Olin's implementation
(include "sort/sort-support.scm")
(include "sort/lmsort.scm")
(include "sort/vhsort.scm")
(include "sort/vmsort.scm")
(include "sort/sortp.scm")
