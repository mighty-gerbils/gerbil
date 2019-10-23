;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-146: A. Gleckler's HAMT

(import (only-in :std/srfi/125 make-hash-table string-hash)
	    (only-in :std/srfi/128 make-comparator))
(export assert do-list
	    make-string-hash-table
	    with-output-to-string)
(include "hamt-misc.scm")
