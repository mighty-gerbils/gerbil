;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-117: List Queues

(import :std/error
        :std/srfi/9)
(export
  make-list-queue list-queue list-queue-copy list-queue-unfold list-queue-unfold-right
  list-queue? list-queue-empty?
  list-queue-front list-queue-back list-queue-list list-queue-first-last
  list-queue-add-front! list-queue-add-back! list-queue-remove-front! list-queue-remove-back!
  list-queue-remove-all! list-queue-set-list!
  list-queue-append list-queue-append! list-queue-concatenate
  list-queue-map list-queue-map! list-queue-for-each)

(include "srfi-117.scm")
