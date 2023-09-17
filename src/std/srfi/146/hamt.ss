;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-146: A. Gleckler's HAMT

(import :std/error
        (only-in :std/srfi/1 find-tail)
        :std/srfi/9
	    (only-in :std/srfi/143 fx-width)
	    :std/srfi/151
	    ./hamt-misc
	    ./vector-edit)

(export fragment->mask
	    hamt->list
	    hamt-fetch
	    hamt-null
	    hamt-null?
	    hamt/count
	    hamt/empty?
	    hamt/for-each
	    hamt/immutable
	    hamt/mutable
	    hamt/mutable?
	    hamt/payload?
	    hamt/put
	    hamt/put!
	    hamt/replace
	    hamt/replace!
	    hash-array-mapped-trie?
	    make-hamt

	    ;; These are only needed by tests:
	    ;; collision?
	    ;; hamt-bucket-size
	    ;; hamt-hash-size
	    ;; hamt/root
	    ;; leaf-stride
	    ;; narrow/array
	    ;; narrow/leaves
	    ;; narrow?
	    ;; next-set-bit
	    ;; wide/array
	    ;; wide/children
	    ;; wide?
        )

(include "hamt.scm")
