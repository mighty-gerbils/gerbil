;;; -*- Gerbil -*-
;;; © vyzo
;;; hash-table interface type meta
(import :gerbil/runtime/hash
        ./interface)
(export HashTable make-HashTable try-HashTable)

(defsyntax HashTable
  (make-interface-info
   name: 'hash-table
   interface-methods:
   '((ref key default)
     (set! key value)
     (update! key update default)
     (delete! key)
     (for-each proc)
     (length)
     (copy)
     (clear!))
   instance-type: (quote-syntax HashTable::t)
   interface-descriptor: (quote-syntax HashTable::interface)
   instance-constructor: (quote-syntax make-HashTable)
   instance-try-constructor: (quote-syntax try-HashTable)
   instance-predicate: (quote-syntax hash-table?)
   instance-satisfies-predicate: (quote-syntax is-hash-table?)
   implementation-methods:
   [(quote-syntax HashTable-ref)
    (quote-syntax HashTable-set!)
    (quote-syntax HashTable-update!)
    (quote-syntax HashTable-delete!)
    (quote-syntax HashTable-for-each)
    (quote-syntax HashTable-length)
    (quote-syntax HashTable-copy)
    (quote-syntax HashTable-clear!)]
   unchecked-implementation-methods:
   [(quote-syntax &HashTable-ref)
    (quote-syntax &HashTable-set!)
    (quote-syntax &HashTable-update!)
    (quote-syntax &HashTable-delete!)
    (quote-syntax &HashTable-for-each)
    (quote-syntax &HashTable-length)
    (quote-syntax &HashTable-copy)
    (quote-syntax &HashTable-clear!)]))

(def (make-HashTable obj)
  (cast HashTable::interface obj))

(def (try-HashTable obj)
  (try-cast HashTable::interface obj))
