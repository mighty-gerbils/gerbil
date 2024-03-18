prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type
   UnboundKeyError::t
   (@class gerbil/runtime/hash#UnboundKeyError::t
           (Error::t object::t)
           (Error::t StackTrace::t Exception::t object::t t::t)
           ()
           (continuation message irritants where)
           :init!
           #f
           #f
           #f
           #f
           ((:init! . UnboundKeyError:::init!))))
  (declare-type UnboundKeyError? (@predicate UnboundKeyError::t))
  (declare-type make-UnboundKeyError (@constructor UnboundKeyError::t))
  (declare-type
   UnboundKeyError-message
   (@accessor UnboundKeyError::t message #t))
  (declare-type
   UnboundKeyError-irritants
   (@accessor UnboundKeyError::t irritants #t))
  (declare-type UnboundKeyError-where (@accessor UnboundKeyError::t where #t))
  (declare-type
   UnboundKeyError-continuation
   (@accessor UnboundKeyError::t continuation #t))
  (declare-type
   UnboundKeyError-message-set!
   (@mutator UnboundKeyError::t message #t))
  (declare-type
   UnboundKeyError-irritants-set!
   (@mutator UnboundKeyError::t irritants #t))
  (declare-type
   UnboundKeyError-where-set!
   (@mutator UnboundKeyError::t where #t))
  (declare-type
   UnboundKeyError-continuation-set!
   (@mutator UnboundKeyError::t continuation #t))
  (declare-type
   &UnboundKeyError-message
   (@accessor UnboundKeyError::t message #f))
  (declare-type
   &UnboundKeyError-irritants
   (@accessor UnboundKeyError::t irritants #f))
  (declare-type &UnboundKeyError-where (@accessor UnboundKeyError::t where #f))
  (declare-type
   &UnboundKeyError-continuation
   (@accessor UnboundKeyError::t continuation #f))
  (declare-type
   &UnboundKeyError-message-set!
   (@mutator UnboundKeyError::t message #f))
  (declare-type
   &UnboundKeyError-irritants-set!
   (@mutator UnboundKeyError::t irritants #f))
  (declare-type
   &UnboundKeyError-where-set!
   (@mutator UnboundKeyError::t where #f))
  (declare-type
   &UnboundKeyError-continuation-set!
   (@mutator UnboundKeyError::t continuation #f))
  (declare-type UnboundKeyError:::init! (@lambda (2) #f))
  (declare-type raise-unbound-key-error (@lambda (2) #f))
  (declare-type unbound-key-error? (@predicate UnboundKeyError::t))
  (declare-type
   HashTable::t
   (@class gerbil#HashTable::t
           (interface-instance::t object::t)
           (interface-instance::t object::t t::t)
           (ref set! update! delete! for-each length copy clear!)
           (__object ref set! update! delete! for-each length copy clear!)
           #f
           #t
           #t
           #f
           #f
           #f))
  (declare-type HashTable? (@predicate HashTable::t))
  (declare-type HashTable-ref@ (@accessor HashTable::t ref #t))
  (declare-type HashTable-set@ (@accessor HashTable::t set! #t))
  (declare-type HashTable-update@ (@accessor HashTable::t update! #t))
  (declare-type HashTable-del@ (@accessor HashTable::t delete! #t))
  (declare-type HashTable-each@ (@accessor HashTable::t for-each #t))
  (declare-type HashTable-length@ (@accessor HashTable::t length #t))
  (declare-type HashTable-copy@ (@accessor HashTable::t copy #t))
  (declare-type HashTable-clear@ (@accessor HashTable::t clear! #t))
  (declare-type HashTable-ref@-set! (@mutator HashTable::t ref #t))
  (declare-type HashTable-set@-set! (@mutator HashTable::t set! #t))
  (declare-type HashTable-update@-set! (@mutator HashTable::t update! #t))
  (declare-type HashTable-del@-set! (@mutator HashTable::t delete! #t))
  (declare-type HashTable-each@-set! (@mutator HashTable::t for-each #t))
  (declare-type HashTable-length@-set! (@mutator HashTable::t length #t))
  (declare-type HashTable-copy@-set! (@mutator HashTable::t copy #t))
  (declare-type HashTable-clear@-set! (@mutator HashTable::t clear! #t))
  (declare-type &HashTable-ref@ (@accessor HashTable::t ref #f))
  (declare-type &HashTable-set@ (@accessor HashTable::t set! #f))
  (declare-type &HashTable-update@ (@accessor HashTable::t update! #f))
  (declare-type &HashTable-del@ (@accessor HashTable::t delete! #f))
  (declare-type &HashTable-each@ (@accessor HashTable::t for-each #f))
  (declare-type &HashTable-length@ (@accessor HashTable::t length #f))
  (declare-type &HashTable-copy@ (@accessor HashTable::t copy #f))
  (declare-type &HashTable-clear@ (@accessor HashTable::t clear! #f))
  (declare-type &HashTable-ref@-set! (@mutator HashTable::t ref #f))
  (declare-type &HashTable-set@-set! (@mutator HashTable::t set! #f))
  (declare-type &HashTable-update@-set! (@mutator HashTable::t update! #f))
  (declare-type &HashTable-del@-set! (@mutator HashTable::t delete! #f))
  (declare-type &HashTable-each@-set! (@mutator HashTable::t for-each #f))
  (declare-type &HashTable-length@-set! (@mutator HashTable::t length #f))
  (declare-type &HashTable-copy@-set! (@mutator HashTable::t copy #f))
  (declare-type &HashTable-clear@-set! (@mutator HashTable::t clear! #f))
  (declare-type
   HashTableLock::t
   (@class gerbil#HashTableLock::t
           (interface-instance::t object::t)
           (interface-instance::t object::t t::t)
           (begin-read! end-read! begin-write! end-write!)
           (__object begin-read! end-read! begin-write! end-write!)
           #f
           #t
           #t
           #f
           #f
           #f))
  (declare-type HashTableLock? (@predicate HashTableLock::t))
  (declare-type
   HashTableLock-begin-read@
   (@accessor HashTableLock::t begin-read! #t))
  (declare-type
   HashTableLock-end-read@
   (@accessor HashTableLock::t end-read! #t))
  (declare-type
   HashTableLock-begin-write@
   (@accessor HashTableLock::t begin-write! #t))
  (declare-type
   HashTableLock-end-write@
   (@accessor HashTableLock::t end-write! #t))
  (declare-type
   HashTableLock-begin-read@-set!
   (@mutator HashTableLock::t begin-read! #t))
  (declare-type
   HashTableLock-end-read@-set!
   (@mutator HashTableLock::t end-read! #t))
  (declare-type
   HashTableLock-begin-write@-set!
   (@mutator HashTableLock::t begin-write! #t))
  (declare-type
   HashTableLock-end-write@-set!
   (@mutator HashTableLock::t end-write! #t))
  (declare-type
   &HashTableLock-begin-read@
   (@accessor HashTableLock::t begin-read! #f))
  (declare-type
   &HashTableLock-end-read@
   (@accessor HashTableLock::t end-read! #f))
  (declare-type
   &HashTableLock-begin-write@
   (@accessor HashTableLock::t begin-write! #f))
  (declare-type
   &HashTableLock-end-write@
   (@accessor HashTableLock::t end-write! #f))
  (declare-type
   &HashTableLock-begin-read@-set!
   (@mutator HashTableLock::t begin-read! #f))
  (declare-type
   &HashTableLock-end-read@-set!
   (@mutator HashTableLock::t end-read! #f))
  (declare-type
   &HashTableLock-begin-write@-set!
   (@mutator HashTableLock::t begin-write! #f))
  (declare-type
   &HashTableLock-end-write@-set!
   (@mutator HashTableLock::t end-write! #f))
  (declare-type gambit-table-update! (@lambda 4 #f))
  (declare-type gambit-table-for-each (@lambda 2 #f))
  (declare-type gambit-table-clear! (@lambda 1 #f))
  (declare-type
   hash-table::t
   (@class gerbil#hash-table::t
           (object::t)
           (object::t t::t)
           (table count free hash test seed)
           (table count free hash test seed)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gc-hash-table::t
   (@class gerbil#gc-hash-table::t
           (object::t)
           (object::t t::t)
           (gcht immediate)
           (gcht immediate)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   locked-hash-table::t
   (@class gerbil/runtime/hash#locked-hash-table::t
           (object::t)
           (object::t t::t)
           (table lock)
           (table lock)
           #f
           #t
           #t
           #f
           #f
           ((for-each . _locked-hash-table::for-each71039_)
            (copy . _locked-hash-table::copy71043_)
            (clear! . _locked-hash-table::clear!71045_)
            (set! . _locked-hash-table::set!71033_)
            (update! . _locked-hash-table::update!71035_)
            (delete! . _locked-hash-table::delete!71037_)
            (length . _locked-hash-table::length71041_)
            (ref . _locked-hash-table::ref71031_))))
  (declare-type locked-hash-table? (@predicate locked-hash-table::t))
  (declare-type make-locked-hash-table (@constructor locked-hash-table::t))
  (declare-type
   locked-hash-table-table
   (@accessor locked-hash-table::t table #t))
  (declare-type
   locked-hash-table-lock
   (@accessor locked-hash-table::t lock #t))
  (declare-type
   locked-hash-table-table-set!
   (@mutator locked-hash-table::t table #t))
  (declare-type
   locked-hash-table-lock-set!
   (@mutator locked-hash-table::t lock #t))
  (declare-type
   &locked-hash-table-table
   (@accessor locked-hash-table::t table #f))
  (declare-type
   &locked-hash-table-lock
   (@accessor locked-hash-table::t lock #f))
  (declare-type
   &locked-hash-table-table-set!
   (@mutator locked-hash-table::t table #f))
  (declare-type
   &locked-hash-table-lock-set!
   (@mutator locked-hash-table::t lock #f))
  (declare-type
   checked-hash-table::t
   (@class gerbil/runtime/hash#checked-hash-table::t
           (object::t)
           (object::t t::t)
           (table key-check)
           (table key-check)
           #f
           #t
           #t
           #f
           #f
           ((for-each . _checked-hash-table::for-each71331_)
            (copy . _checked-hash-table::copy71335_)
            (clear! . _checked-hash-table::clear!71337_)
            (set! . _checked-hash-table::set!71325_)
            (update! . _checked-hash-table::update!71327_)
            (delete! . _checked-hash-table::delete!71329_)
            (length . _checked-hash-table::length71333_)
            (ref . _checked-hash-table::ref71323_))))
  (declare-type checked-hash-table? (@predicate checked-hash-table::t))
  (declare-type make-checked-hash-table (@constructor checked-hash-table::t))
  (declare-type
   checked-hash-table-table
   (@accessor checked-hash-table::t table #t))
  (declare-type
   checked-hash-table-key-check
   (@accessor checked-hash-table::t key-check #t))
  (declare-type
   checked-hash-table-table-set!
   (@mutator checked-hash-table::t table #t))
  (declare-type
   checked-hash-table-key-check-set!
   (@mutator checked-hash-table::t key-check #t))
  (declare-type
   &checked-hash-table-table
   (@accessor checked-hash-table::t table #f))
  (declare-type
   &checked-hash-table-key-check
   (@accessor checked-hash-table::t key-check #f))
  (declare-type
   &checked-hash-table-table-set!
   (@mutator checked-hash-table::t table #f))
  (declare-type
   &checked-hash-table-key-check-set!
   (@mutator checked-hash-table::t key-check #f))
  (declare-type
   eq-hash-table::t
   (@class gerbil#eq-hash-table
           (hash-table::t object::t)
           (hash-table::t object::t t::t)
           ()
           (table count free hash test seed)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type eq-hash-table? (@predicate eq-hash-table::t))
  (declare-type make-eq-hash-table (@constructor eq-hash-table::t))
  (declare-type
   eqv-hash-table::t
   (@class gerbil#eqv-hash-table
           (hash-table::t object::t)
           (hash-table::t object::t t::t)
           ()
           (table count free hash test seed)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type eqv-hash-table? (@predicate eqv-hash-table::t))
  (declare-type make-eqv-hash-table (@constructor eqv-hash-table::t))
  (declare-type
   symbol-hash-table::t
   (@class gerbil#symbol-hash-table
           (hash-table::t object::t)
           (hash-table::t object::t t::t)
           ()
           (table count free hash test seed)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type symbol-hash-table? (@predicate symbol-hash-table::t))
  (declare-type make-symbol-hash-table (@constructor symbol-hash-table::t))
  (declare-type
   string-hash-table::t
   (@class gerbil#string-hash-table
           (hash-table::t object::t)
           (hash-table::t object::t t::t)
           ()
           (table count free hash test seed)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type string-hash-table? (@predicate string-hash-table::t))
  (declare-type make-string-hash-table (@constructor string-hash-table::t))
  (declare-type
   immediate-hash-table::t
   (@class gerbil#immediate-hash-table::t
           (hash-table::t object::t)
           (hash-table::t object::t t::t)
           ()
           (table count free hash test seed)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type immediate-hash-table? (@predicate immediate-hash-table::t))
  (declare-type
   make-immediate-hash-table
   (@constructor immediate-hash-table::t))
  (declare-type hash-table? (@lambda 1 #f))
  (declare-type is-hash-table? (@lambda 1 #f))
  (declare-type HashTable-ref (@lambda 3 #f))
  (declare-type &HashTable-ref (@lambda 3 #f))
  (declare-type HashTable-set! (@lambda 3 #f))
  (declare-type &HashTable-set! (@lambda 3 #f))
  (declare-type HashTable-update! (@lambda 4 #f))
  (declare-type &HashTable-update! (@lambda 4 #f))
  (declare-type HashTable-delete! (@lambda 2 #f))
  (declare-type &HashTable-delete! (@lambda 2 #f))
  (declare-type HashTable-for-each (@lambda 2 #f))
  (declare-type &HashTable-for-each (@lambda 2 #f))
  (declare-type HashTable-length (@lambda 1 #f))
  (declare-type &HashTable-length (@lambda 1 #f))
  (declare-type HashTable-copy (@lambda 1 #f))
  (declare-type &HashTable-copy (@lambda 1 #f))
  (declare-type HashTable-clear! (@lambda 1 #f))
  (declare-type &HashTable-clear! (@lambda 1 #f))
  (declare-type &HashTableLock-begin-read! (@lambda 1 #f))
  (declare-type &HashTableLock-end-read! (@lambda 1 #f))
  (declare-type &HashTableLock-begin-write! (@lambda 1 #f))
  (declare-type &HashTableLock-end-write! (@lambda 1 #f))
  (declare-type _locked-hash-table::ref71031_ (@lambda 3 #f))
  (declare-type _locked-hash-table::set!71033_ (@lambda 3 #f))
  (declare-type _locked-hash-table::update!71035_ (@lambda 4 #f))
  (declare-type _locked-hash-table::delete!71037_ (@lambda 2 #f))
  (declare-type _locked-hash-table::for-each71039_ (@lambda 2 #f))
  (declare-type _locked-hash-table::length71041_ (@lambda 1 #f))
  (declare-type _locked-hash-table::copy71043_ (@lambda 1 #f))
  (declare-type _locked-hash-table::clear!71045_ (@lambda 1 #f))
  (declare-type _checked-hash-table::ref71323_ (@lambda 3 #f))
  (declare-type _checked-hash-table::set!71325_ (@lambda 3 #f))
  (declare-type _checked-hash-table::update!71327_ (@lambda 4 #f))
  (declare-type _checked-hash-table::delete!71329_ (@lambda 2 #f))
  (declare-type _checked-hash-table::for-each71331_ (@lambda 2 #f))
  (declare-type _checked-hash-table::length71333_ (@lambda 1 #f))
  (declare-type _checked-hash-table::copy71335_ (@lambda 1 #f))
  (declare-type _checked-hash-table::clear!71337_ (@lambda 1 #f))
  (declare-type make-generic-hash-table (@lambda 6 #f))
  (declare-type make-hash-table__% (@lambda 9 #f))
  (declare-type make-hash-table__@ (@lambda (1) #f))
  (declare-type
   make-hash-table
   (@kw-lambda
    (weak-values: test: hash: size: seed: weak-keys: check: lock:)
    make-hash-table__@))
  (declare-type make-hash-table-eq (@lambda (0) #f))
  (declare-type make-hash-table-eqv (@lambda (0) #f))
  (declare-type make-hash-table-symbolic (@lambda (0) #f))
  (declare-type make-hash-table-string (@lambda (0) #f))
  (declare-type make-hash-table-immediate (@lambda (0) #f))
  (declare-type list->hash-table (@lambda (1) #f))
  (declare-type list->hash-table-eq (@lambda (1) #f))
  (declare-type list->hash-table-eqv (@lambda (1) #f))
  (declare-type list->hash-table-symbolic (@lambda (1) #f))
  (declare-type list->hash-table-string (@lambda (1) #f))
  (declare-type list->hash-table-immediate (@lambda (1) #f))
  (declare-type list->hash-table! (@lambda 2 #f))
  (declare-type plist->hash-table (@lambda (1) #f))
  (declare-type plist->hash-table-eq (@lambda (1) #f))
  (declare-type plist->hash-table-eqv (@lambda (1) #f))
  (declare-type plist->hash-table-symbolic (@lambda (1) #f))
  (declare-type plist->hash-table-string (@lambda (1) #f))
  (declare-type plist->hash-table-immediate (@lambda (1) #f))
  (declare-type plist->hash-table! (@lambda 2 #f))
  (declare-type hash-length (@lambda 1 #f))
  (declare-type &hash-length (@lambda 1 &HashTable-length))
  (declare-type hash-ref__% (@lambda 3 #f))
  (declare-type hash-ref__0 (@lambda 2 #f))
  (declare-type hash-ref (@case-lambda (2 hash-ref__0) (3 hash-ref__%)))
  (declare-type &hash-ref__% (@lambda 3 #f))
  (declare-type &hash-ref__0 (@lambda 2 #f))
  (declare-type &hash-ref (@case-lambda (2 &hash-ref__0) (3 &hash-ref__%)))
  (declare-type hash-get (@lambda 2 #f))
  (declare-type &hash-get (@lambda 2 #f))
  (declare-type hash-put! (@lambda 3 #f))
  (declare-type &hash-put! (@lambda 3 &HashTable-set!))
  (declare-type hash-update!__% (@lambda 4 #f))
  (declare-type hash-update!__0 (@lambda 3 #f))
  (declare-type
   hash-update!
   (@case-lambda (3 hash-update!__0) (4 hash-update!__%)))
  (declare-type &hash-update!__% (@lambda 4 &HashTable-update!))
  (declare-type &hash-update!__0 (@lambda 3 #f))
  (declare-type
   &hash-update!
   (@case-lambda (3 &hash-update!__0) (4 &hash-update!__%)))
  (declare-type hash-remove! (@lambda 2 #f))
  (declare-type &hash-remove! (@lambda 2 &HashTable-delete!))
  (declare-type hash-key? (@lambda 2 #f))
  (declare-type &hash-key? (@lambda 2 #f))
  (declare-type hash->list (@lambda 1 #f))
  (declare-type &hash->list (@lambda 1 #f))
  (declare-type hash->plist (@lambda 1 #f))
  (declare-type &hash->plist (@lambda 1 #f))
  (declare-type hash-for-each (@lambda 2 #f))
  (declare-type hash-map (@lambda 2 #f))
  (declare-type hash-fold (@lambda 3 #f))
  (declare-type hash-find__% (@lambda 3 #f))
  (declare-type hash-find__0 (@lambda 2 #f))
  (declare-type hash-find (@case-lambda (2 hash-find__0) (3 hash-find__%)))
  (declare-type hash-keys (@lambda 1 #f))
  (declare-type &hash-keys (@lambda 1 #f))
  (declare-type hash-values (@lambda 1 #f))
  (declare-type &hash-values (@lambda 1 #f))
  (declare-type hash-copy (@lambda 1 #f))
  (declare-type &hash-copy (@lambda 1 &HashTable-copy))
  (declare-type hash-merge (@lambda (1) #f))
  (declare-type hash-merge! (@lambda (1) #f)))
