;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-146: Hash Mappings

(import :std/error
        :std/srfi/1
	    :std/srfi/8
        :std/srfi/9
	    :std/srfi/121
	    :std/srfi/128
	    :std/srfi/145
        ./hamt-map)

(export hashmap hashmap-unfold
	  hashmap? hashmap-contains? hashmap-empty? hashmap-disjoint?
	  hashmap-ref hashmap-ref/default hashmap-key-comparator
	  hashmap-adjoin hashmap-adjoin!
	  hashmap-set hashmap-set!
	  hashmap-replace hashmap-replace!
	  hashmap-delete hashmap-delete! hashmap-delete-all hashmap-delete-all!
	  hashmap-intern hashmap-intern!
	  hashmap-update hashmap-update! hashmap-update/default hashmap-update!/default
	  hashmap-pop hashmap-pop!
	  hashmap-search hashmap-search!
	  hashmap-size hashmap-find hashmap-count hashmap-any? hashmap-every?
	  hashmap-keys hashmap-values hashmap-entries
	  hashmap-map hashmap-map->list hashmap-for-each hashmap-fold
	  hashmap-filter hashmap-filter!
	  hashmap-remove hashmap-remove!
	  hashmap-partition hashmap-partition!
	  hashmap-copy hashmap->alist alist->hashmap alist->hashmap!
	  hashmap=? hashmap<? hashmap>? hashmap<=? hashmap>=?
	  hashmap-union hashmap-intersection hashmap-difference hashmap-xor
	  hashmap-union! hashmap-intersection! hashmap-difference! hashmap-xor!
	  make-hashmap-comparator
	  hashmap-comparator
	  comparator?)

(include "hash.scm")
