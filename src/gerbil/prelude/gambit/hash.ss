;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gambit specific runtime symbols: hashing
package: gerbil/gambit

(export #t)
(extern namespace: #f
  object->serial-number
  serial-number->object
  string=?-hash
  string-ci=?-hash
  eq?-hash
  eqv?-hash
  equal?-hash
  make-table
  table?
  table-length
  table-ref
  table-set!
  table-search
  table-for-each
  table->list
  list->table
  table-copy
  table-merge!
  table-merge
  )