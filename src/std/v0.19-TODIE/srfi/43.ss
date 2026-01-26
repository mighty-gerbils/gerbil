;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-43: vector library

(import :std/error
        :std/srfi/8)
(export
  ;; * Constructors
  make-vector vector
  vector-unfold                   vector-unfold-right
  vector-copy                     vector-reverse-copy
  vector-append                   vector-concatenate

  ;; * Predicates
  vector?
  vector-empty?
  vector=

  ;; * Selectors
  vector-ref
  vector-length

  ;; * Iteration
  vector-fold                     vector-fold-right
  vector-map                      vector-map!
  vector-for-each
  vector-count

  ;; * Searching
  vector-index                    vector-skip
  vector-index-right              vector-skip-right
  vector-binary-search
  vector-any                      vector-every

  ;; * Mutators
  vector-set!
  vector-swap!
  vector-fill!
  vector-reverse!
  vector-copy!                    vector-reverse-copy!
  vector-reverse!

  ;; * Conversion
  vector->list reverse-vector->list
  list->vector reverse-list->vector
  )

(include "srfi-43.scm")
