;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-133: R7RS-compatible vector library

(import :std/srfi/8)
;; Constructors
(export vector-unfold vector-unfold-right vector-copy vector-reverse-copy
        vector-append vector-concatenate vector-append-subvectors)
;; Predicates
(export vector-empty? vector=)
;; Iteration
(export vector-fold vector-fold-right vector-map vector-map!
        vector-for-each vector-count vector-cumulate)
;; Searching
(export vector-index vector-index-right vector-skip vector-skip-right
        vector-binary-search vector-any vector-every vector-partition)
;; Mutators
(export vector-swap! vector-fill! vector-reverse! vector-copy!
        vector-reverse-copy! vector-unfold! vector-unfold-right!)
;; Conversion
(export vector->list reverse-vector->list list->vector reverse-list->vector
        vector->string string->vector)

(include "srfi-133.scm")
