(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1708271948)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp108316 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp108316
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args104193_
        (apply make-instance UnboundKeyError::t _$args104193_)))
    (define UnboundKeyError-message
      (let ()
        (declare (not safe))
        (make-class-slot-accessor UnboundKeyError::t 'message)))
    (define UnboundKeyError-irritants
      (let ()
        (declare (not safe))
        (make-class-slot-accessor UnboundKeyError::t 'irritants)))
    (define UnboundKeyError-where
      (let ()
        (declare (not safe))
        (make-class-slot-accessor UnboundKeyError::t 'where)))
    (define UnboundKeyError-continuation
      (let ()
        (declare (not safe))
        (make-class-slot-accessor UnboundKeyError::t 'continuation)))
    (define UnboundKeyError-message-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator UnboundKeyError::t 'message)))
    (define UnboundKeyError-irritants-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator UnboundKeyError::t 'irritants)))
    (define UnboundKeyError-where-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator UnboundKeyError::t 'where)))
    (define UnboundKeyError-continuation-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator UnboundKeyError::t 'continuation)))
    (define &UnboundKeyError-message
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor UnboundKeyError::t 'message)))
    (define &UnboundKeyError-irritants
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor UnboundKeyError::t 'irritants)))
    (define &UnboundKeyError-where
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor UnboundKeyError::t 'where)))
    (define &UnboundKeyError-continuation
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor UnboundKeyError::t 'continuation)))
    (define &UnboundKeyError-message-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator UnboundKeyError::t 'message)))
    (define &UnboundKeyError-irritants-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator UnboundKeyError::t 'irritants)))
    (define &UnboundKeyError-where-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator UnboundKeyError::t 'where)))
    (define &UnboundKeyError-continuation-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator UnboundKeyError::t 'continuation)))
    (define UnboundKeyError:::init! Error:::init!)
    (let ()
      (declare (not safe))
      (bind-method! UnboundKeyError::t ':init! UnboundKeyError:::init! '#f))
    (define raise-unbound-key-error
      (lambda (_where104067_ _message104068_ . _irritants104069_)
        (raise (let ((__obj108314
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj108314
                  _message104068_
                  'where:
                  _where104067_
                  'irritants:
                  _irritants104069_)
                 __obj108314))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp108319 (list interface-instance::t))
            (__tmp108317
             (let ((__tmp108318
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp108318 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp108319
         '(ref set update del each length copy clear)
         __tmp108317
         '#f)))
    (define HashTable?
      (let () (declare (not safe)) (make-class-predicate HashTable::t)))
    (define HashTable-ref@
      (let ()
        (declare (not safe))
        (make-class-slot-accessor HashTable::t 'ref)))
    (define HashTable-set@
      (let ()
        (declare (not safe))
        (make-class-slot-accessor HashTable::t 'set)))
    (define HashTable-update@
      (let ()
        (declare (not safe))
        (make-class-slot-accessor HashTable::t 'update)))
    (define HashTable-del@
      (let ()
        (declare (not safe))
        (make-class-slot-accessor HashTable::t 'del)))
    (define HashTable-each@
      (let ()
        (declare (not safe))
        (make-class-slot-accessor HashTable::t 'each)))
    (define HashTable-length@
      (let ()
        (declare (not safe))
        (make-class-slot-accessor HashTable::t 'length)))
    (define HashTable-copy@
      (let ()
        (declare (not safe))
        (make-class-slot-accessor HashTable::t 'copy)))
    (define HashTable-clear@
      (let ()
        (declare (not safe))
        (make-class-slot-accessor HashTable::t 'clear)))
    (define HashTable-ref@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator HashTable::t 'ref)))
    (define HashTable-set@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator HashTable::t 'set)))
    (define HashTable-update@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator HashTable::t 'update)))
    (define HashTable-del@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator HashTable::t 'del)))
    (define HashTable-each@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator HashTable::t 'each)))
    (define HashTable-length@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator HashTable::t 'length)))
    (define HashTable-copy@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator HashTable::t 'copy)))
    (define HashTable-clear@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator HashTable::t 'clear)))
    (define &HashTable-ref@
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor HashTable::t 'ref)))
    (define &HashTable-set@
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor HashTable::t 'set)))
    (define &HashTable-update@
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor HashTable::t 'update)))
    (define &HashTable-del@
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor HashTable::t 'del)))
    (define &HashTable-each@
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor HashTable::t 'each)))
    (define &HashTable-length@
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor HashTable::t 'length)))
    (define &HashTable-copy@
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor HashTable::t 'copy)))
    (define &HashTable-clear@
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor HashTable::t 'clear)))
    (define &HashTable-ref@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator HashTable::t 'ref)))
    (define &HashTable-set@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator HashTable::t 'set)))
    (define &HashTable-update@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator HashTable::t 'update)))
    (define &HashTable-del@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator HashTable::t 'del)))
    (define &HashTable-each@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator HashTable::t 'each)))
    (define &HashTable-length@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator HashTable::t 'length)))
    (define &HashTable-copy@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator HashTable::t 'copy)))
    (define &HashTable-clear@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator HashTable::t 'clear)))
    (define HashTable::interface
      (let ()
        (declare (not safe))
        (##structure
         interface-descriptor::t
         HashTable::t
         '(ref set! update! delete! for-each length copy clear!))))
    (define HashTableLock::t
      (let ((__tmp108322 (list interface-instance::t))
            (__tmp108320
             (let ((__tmp108321
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp108321 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp108322
         '(begin-read end-read begin-write end-write)
         __tmp108320
         '#f)))
    (define HashTableLock?
      (let () (declare (not safe)) (make-class-predicate HashTableLock::t)))
    (define HashTableLock-begin-read@
      (let ()
        (declare (not safe))
        (make-class-slot-accessor HashTableLock::t 'begin-read)))
    (define HashTableLock-end-read@
      (let ()
        (declare (not safe))
        (make-class-slot-accessor HashTableLock::t 'end-read)))
    (define HashTableLock-begin-write@
      (let ()
        (declare (not safe))
        (make-class-slot-accessor HashTableLock::t 'begin-write)))
    (define HashTableLock-end-write@
      (let ()
        (declare (not safe))
        (make-class-slot-accessor HashTableLock::t 'end-write)))
    (define HashTableLock-begin-read@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator HashTableLock::t 'begin-read)))
    (define HashTableLock-end-read@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator HashTableLock::t 'end-read)))
    (define HashTableLock-begin-write@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator HashTableLock::t 'begin-write)))
    (define HashTableLock-end-write@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator HashTableLock::t 'end-write)))
    (define &HashTableLock-begin-read@
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor HashTableLock::t 'begin-read)))
    (define &HashTableLock-end-read@
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor HashTableLock::t 'end-read)))
    (define &HashTableLock-begin-write@
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor HashTableLock::t 'begin-write)))
    (define &HashTableLock-end-write@
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor HashTableLock::t 'end-write)))
    (define &HashTableLock-begin-read@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator HashTableLock::t 'begin-read)))
    (define &HashTableLock-end-read@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator HashTableLock::t 'end-read)))
    (define &HashTableLock-begin-write@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator HashTableLock::t 'begin-write)))
    (define &HashTableLock-end-write@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator HashTableLock::t 'end-write)))
    (define HashTableLock::interface
      (let ()
        (declare (not safe))
        (##structure
         interface-descriptor::t
         HashTableLock::t
         '(begin-read! end-read! begin-write! end-write!))))
    (let () (declare (not safe)) (bind-method! __table::t 'ref raw-table-ref))
    (let ()
      (declare (not safe))
      (bind-method! __table::t 'set! raw-table-set!))
    (let ()
      (declare (not safe))
      (bind-method! __table::t 'update! raw-table-update!))
    (let ()
      (declare (not safe))
      (bind-method! __table::t 'delete! raw-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method! __table::t 'for-each raw-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method! __table::t 'length &raw-table-count))
    (let ()
      (declare (not safe))
      (bind-method! __table::t 'copy raw-table-copy))
    (let ()
      (declare (not safe))
      (bind-method! __table::t 'clear! raw-table-clear!))
    (define gambit-table-update!
      (lambda (_table104060_ _key104061_ _update104062_ _default104063_)
        (let ((_result104065_
               (table-ref _table104060_ _key104061_ _default104063_)))
          (table-set!
           _table104060_
           _key104061_
           (_update104062_ _default104063_)))))
    (define gambit-table-for-each
      (lambda (_table104057_ _proc104058_)
        (table-for-each _proc104058_ _table104057_)))
    (define gambit-table-clear!
      (lambda (_table104055_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table104055_ '0 '5 '#f '#f))))
    (let ((__tmp108323 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp108323 'ref table-ref))
    (let ((__tmp108324 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp108324 'set! table-set!))
    (let ((__tmp108325 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp108325 'update! gambit-table-update!))
    (let ((__tmp108326 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp108326 'delete! table-set!))
    (let ((__tmp108327 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp108327 'for-each gambit-table-for-each))
    (let ((__tmp108328 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp108328 'length table-length))
    (let ((__tmp108329 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp108329 'copy table-copy))
    (let ((__tmp108330 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp108330 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots104037_ '(table count free hash test seed))
             (_slot-vector104039_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots104037_))))
             (_slot-table104046_
              (let ((_slot-table104041_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table '#f '0))))
                (for-each
                 (lambda (_slot104043_ _field104044_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table104041_
                      _slot104043_
                      _field104044_))
                   (let ((__tmp108331 (symbol->keyword _slot104043_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table104041_
                      __tmp108331
                      _field104044_)))
                 _slots104037_
                 (let ((__tmp108332 (length _slots104037_)))
                   (declare (not safe))
                   (iota __tmp108332 '1)))
                _slot-table104041_))
             (_flags104048_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields104050_ '#())
             (_properties104052_
              (let ((__tmp108335
                     (let ((__tmp108336
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots104037_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp108336)))
                    (__tmp108333
                     (let ((__tmp108334
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp108334 '()))))
                (declare (not safe))
                (cons __tmp108335 __tmp108333))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags104048_
           __table::t
           _fields104050_
           '()
           _slot-vector104039_
           _slot-table104046_
           _properties104052_
           '#f
           '#f))))
    (define hash-table?
      (lambda (_obj104035_)
        (let ((__tmp108337
               (let () (declare (not safe)) (##type-id hash-table::t))))
          (declare (not safe))
          (##structure-instance-of? _obj104035_ __tmp108337))))
    (define locked-hash-table::t
      (let ((__tmp108342 (list))
            (__tmp108338
             (let ((__tmp108341
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp108339
                    (let ((__tmp108340
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp108340 '()))))
               (declare (not safe))
               (cons __tmp108341 __tmp108339))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp108342
         '(table lock)
         __tmp108338
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args104032_
        (apply make-instance locked-hash-table::t _$args104032_)))
    (define locked-hash-table-table
      (let ()
        (declare (not safe))
        (make-class-slot-accessor locked-hash-table::t 'table)))
    (define locked-hash-table-lock
      (let ()
        (declare (not safe))
        (make-class-slot-accessor locked-hash-table::t 'lock)))
    (define locked-hash-table-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator locked-hash-table::t 'table)))
    (define locked-hash-table-lock-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator locked-hash-table::t 'lock)))
    (define &locked-hash-table-table
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor locked-hash-table::t 'table)))
    (define &locked-hash-table-lock
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor locked-hash-table::t 'lock)))
    (define &locked-hash-table-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator locked-hash-table::t 'table)))
    (define &locked-hash-table-lock-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator locked-hash-table::t 'lock)))
    (define eq-hash-table::t
      (let ((__tmp108345 (list hash-table::t))
            (__tmp108343
             (let ((__tmp108344
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp108344 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp108345
         '()
         __tmp108343
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args104029_
        (apply make-instance eq-hash-table::t _$args104029_)))
    (define eqv-hash-table::t
      (let ((__tmp108348 (list hash-table::t))
            (__tmp108346
             (let ((__tmp108347
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp108347 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp108348
         '()
         __tmp108346
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args104026_
        (apply make-instance eqv-hash-table::t _$args104026_)))
    (define symbol-hash-table::t
      (let ((__tmp108351 (list hash-table::t))
            (__tmp108349
             (let ((__tmp108350
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp108350 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp108351
         '()
         __tmp108349
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args104023_
        (apply make-instance symbol-hash-table::t _$args104023_)))
    (define string-hash-table::t
      (let ((__tmp108354 (list hash-table::t))
            (__tmp108352
             (let ((__tmp108353
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp108353 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp108354
         '()
         __tmp108352
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args104020_
        (apply make-instance string-hash-table::t _$args104020_)))
    (let ()
      (declare (not safe))
      (bind-method! hash-table::t 'ref raw-table-ref))
    (let ()
      (declare (not safe))
      (bind-method! hash-table::t 'set! raw-table-set!))
    (let ()
      (declare (not safe))
      (bind-method! hash-table::t 'update! raw-table-update!))
    (let ()
      (declare (not safe))
      (bind-method! hash-table::t 'delete! raw-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method! hash-table::t 'for-each raw-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method! hash-table::t 'length &raw-table-count))
    (let ()
      (declare (not safe))
      (bind-method! hash-table::t 'copy raw-table-copy))
    (let ()
      (declare (not safe))
      (bind-method! hash-table::t 'clear! raw-table-clear!))
    (let ()
      (declare (not safe))
      (bind-method! eq-hash-table::t 'ref eq-table-ref))
    (let ()
      (declare (not safe))
      (bind-method! eq-hash-table::t 'set! eq-table-set!))
    (let ()
      (declare (not safe))
      (bind-method! eq-hash-table::t 'update! eq-table-update!))
    (let ()
      (declare (not safe))
      (bind-method! eq-hash-table::t 'delete! eq-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method! eqv-hash-table::t 'ref eqv-table-ref))
    (let ()
      (declare (not safe))
      (bind-method! eqv-hash-table::t 'set! eqv-table-set!))
    (let ()
      (declare (not safe))
      (bind-method! eqv-hash-table::t 'update! eqv-table-update!))
    (let ()
      (declare (not safe))
      (bind-method! eqv-hash-table::t 'delete! eqv-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method! symbol-hash-table::t 'ref symbolic-table-ref))
    (let ()
      (declare (not safe))
      (bind-method! symbol-hash-table::t 'set! symbolic-table-set!))
    (let ()
      (declare (not safe))
      (bind-method! symbol-hash-table::t 'update! symbolic-table-update!))
    (let ()
      (declare (not safe))
      (bind-method! symbol-hash-table::t 'delete! symbolic-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method! string-hash-table::t 'ref string-table-ref))
    (let ()
      (declare (not safe))
      (bind-method! string-hash-table::t 'set! string-table-set!))
    (let ()
      (declare (not safe))
      (bind-method! string-hash-table::t 'update! string-table-update!))
    (let ()
      (declare (not safe))
      (bind-method! string-hash-table::t 'delete! string-table-delete!))
    (define HashTable-ref
      (lambda (_h104016_ _key104017_ _default104018_)
        (let ((__tmp108355
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h104016_))))
          (declare (not safe))
          (&HashTable-ref __tmp108355 _key104017_ _default104018_))))
    (define &HashTable-ref
      (lambda (_h104011_ _key104012_ _default104013_)
        (declare (not safe))
        ((##unchecked-structure-ref _h104011_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h104011_ '1 interface-instance::t '#f)
         _key104012_
         _default104013_)))
    (define HashTable-set!
      (lambda (_h104007_ _key104008_ _value104009_)
        (let ((__tmp108356
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h104007_))))
          (declare (not safe))
          (&HashTable-set! __tmp108356 _key104008_ _value104009_))))
    (define &HashTable-set!
      (lambda (_h104002_ _key104003_ _value104004_)
        (declare (not safe))
        ((##unchecked-structure-ref _h104002_ '3 HashTable::t '#f)
         (##unchecked-structure-ref _h104002_ '1 interface-instance::t '#f)
         _key104003_
         _value104004_)))
    (define HashTable-update!
      (lambda (_h103997_ _key103998_ _update103999_ _default104000_)
        (let ((__tmp108357
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h103997_))))
          (declare (not safe))
          (&HashTable-update!
           __tmp108357
           _key103998_
           _update103999_
           _default104000_))))
    (define &HashTable-update!
      (lambda (_h103991_ _key103992_ _update103993_ _default103994_)
        (declare (not safe))
        ((##unchecked-structure-ref _h103991_ '4 HashTable::t '#f)
         (##unchecked-structure-ref _h103991_ '1 interface-instance::t '#f)
         _key103992_
         _update103993_
         _default103994_)))
    (define HashTable-delete!
      (lambda (_h103988_ _key103989_)
        (let ((__tmp108358
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h103988_))))
          (declare (not safe))
          (&HashTable-delete! __tmp108358 _key103989_))))
    (define &HashTable-delete!
      (lambda (_h103984_ _key103985_)
        (declare (not safe))
        ((##unchecked-structure-ref _h103984_ '5 HashTable::t '#f)
         (##unchecked-structure-ref _h103984_ '1 interface-instance::t '#f)
         _key103985_)))
    (define HashTable-for-each
      (lambda (_h103981_ _proc103982_)
        (let ((__tmp108359
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h103981_))))
          (declare (not safe))
          (&HashTable-for-each __tmp108359 _proc103982_))))
    (define &HashTable-for-each
      (lambda (_h103977_ _proc103978_)
        (declare (not safe))
        ((##unchecked-structure-ref _h103977_ '6 HashTable::t '#f)
         (##unchecked-structure-ref _h103977_ '1 interface-instance::t '#f)
         _proc103978_)))
    (define HashTable-length
      (lambda (_h103975_)
        (let ((__tmp108360
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h103975_))))
          (declare (not safe))
          (&HashTable-length __tmp108360))))
    (define &HashTable-length
      (lambda (_h103972_)
        (declare (not safe))
        ((##unchecked-structure-ref _h103972_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h103972_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h103970_)
        (let ((__tmp108361
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h103970_))))
          (declare (not safe))
          (&HashTable-copy __tmp108361))))
    (define &HashTable-copy
      (lambda (_h103967_)
        (declare (not safe))
        ((##unchecked-structure-ref _h103967_ '8 HashTable::t '#f)
         (##unchecked-structure-ref _h103967_ '1 interface-instance::t '#f))))
    (define HashTable-clear!
      (lambda (_h103965_)
        (let ((__tmp108362
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h103965_))))
          (declare (not safe))
          (&HashTable-clear! __tmp108362))))
    (define &HashTable-clear!
      (lambda (_h103962_)
        (declare (not safe))
        ((##unchecked-structure-ref _h103962_ '9 HashTable::t '#f)
         (##unchecked-structure-ref _h103962_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-read!
      (lambda (_hl103959_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl103959_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl103959_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl103956_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl103956_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl103956_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl103953_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl103953_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl103953_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl103950_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl103950_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl103950_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref102410_
      (lambda (_self103937_ _key103939_ _default103940_)
        (let ((_h103942_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103937_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l103944_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103937_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l103944_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h103942_ _key103939_ _default103940_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l103944_)))))))
    (define locked-hash-table::ref::specialize
      (lambda (__t108262)
        (let ((__table108263
               (let ((__tmp108265
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108262 'table))))
                 (if __tmp108265 __tmp108265 (error '"Unknown slot" 'table))))
              (__lock108264
               (let ((__tmp108266
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108262 'lock))))
                 (if __tmp108266 __tmp108266 (error '"Unknown slot" 'lock)))))
          (lambda (_self103937_ _key103939_ _default103940_)
            (let ((_h103942_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103937_
                      __table108263
                      __t108262
                      '#f)))
                  (_l103944_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103937_
                      __lock108264
                      __t108262
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l103944_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-ref _h103942_ _key103939_ _default103940_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l103944_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::ref102410_
       locked-hash-table::ref::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'ref
       _locked-hash-table::ref102410_
       '#f))
    (define _locked-hash-table::set!102412_
      (lambda (_self103801_ _key103803_ _value103804_)
        (let ((_h103806_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103801_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l103808_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103801_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l103808_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h103806_ _key103803_ _value103804_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l103808_)))))))
    (define locked-hash-table::set!::specialize
      (lambda (__t108267)
        (let ((__table108268
               (let ((__tmp108270
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108267 'table))))
                 (if __tmp108270 __tmp108270 (error '"Unknown slot" 'table))))
              (__lock108269
               (let ((__tmp108271
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108267 'lock))))
                 (if __tmp108271 __tmp108271 (error '"Unknown slot" 'lock)))))
          (lambda (_self103801_ _key103803_ _value103804_)
            (let ((_h103806_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103801_
                      __table108268
                      __t108267
                      '#f)))
                  (_l103808_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103801_
                      __lock108269
                      __t108267
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l103808_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-set! _h103806_ _key103803_ _value103804_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l103808_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::set!102412_
       locked-hash-table::set!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'set!
       _locked-hash-table::set!102412_
       '#f))
    (define _locked-hash-table::update!102414_
      (lambda (_self103664_ _key103666_ _update103667_ _default103668_)
        (let ((_h103670_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103664_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l103672_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103664_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l103672_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h103670_
                _key103666_
                _update103667_
                _default103668_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l103672_)))))))
    (define locked-hash-table::update!::specialize
      (lambda (__t108272)
        (let ((__lock108273
               (let ((__tmp108275
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108272 'lock))))
                 (if __tmp108275 __tmp108275 (error '"Unknown slot" 'lock))))
              (__table108274
               (let ((__tmp108276
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108272 'table))))
                 (if __tmp108276 __tmp108276 (error '"Unknown slot" 'table)))))
          (lambda (_self103664_ _key103666_ _update103667_ _default103668_)
            (let ((_h103670_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103664_
                      __table108274
                      __t108272
                      '#f)))
                  (_l103672_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103664_
                      __lock108273
                      __t108272
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l103672_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-update!
                    _h103670_
                    _key103666_
                    _update103667_
                    _default103668_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l103672_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::update!102414_
       locked-hash-table::update!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'update!
       _locked-hash-table::update!102414_
       '#f))
    (define _locked-hash-table::delete!102416_
      (lambda (_self103529_ _key103531_)
        (let ((_h103533_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103529_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l103535_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103529_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l103535_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h103533_ _key103531_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l103535_)))))))
    (define locked-hash-table::delete!::specialize
      (lambda (__t108277)
        (let ((__table108278
               (let ((__tmp108280
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108277 'table))))
                 (if __tmp108280 __tmp108280 (error '"Unknown slot" 'table))))
              (__lock108279
               (let ((__tmp108281
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108277 'lock))))
                 (if __tmp108281 __tmp108281 (error '"Unknown slot" 'lock)))))
          (lambda (_self103529_ _key103531_)
            (let ((_h103533_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103529_
                      __table108278
                      __t108277
                      '#f)))
                  (_l103535_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103529_
                      __lock108279
                      __t108277
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l103535_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-delete! _h103533_ _key103531_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l103535_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::delete!102416_
       locked-hash-table::delete!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!102416_
       '#f))
    (define _locked-hash-table::for-each102418_
      (lambda (_self103394_ _proc103396_)
        (let ((_h103398_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103394_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l103400_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103394_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l103400_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h103398_ _proc103396_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l103400_)))))))
    (define locked-hash-table::for-each::specialize
      (lambda (__t108282)
        (let ((__table108283
               (let ((__tmp108285
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108282 'table))))
                 (if __tmp108285 __tmp108285 (error '"Unknown slot" 'table))))
              (__lock108284
               (let ((__tmp108286
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108282 'lock))))
                 (if __tmp108286 __tmp108286 (error '"Unknown slot" 'lock)))))
          (lambda (_self103394_ _proc103396_)
            (let ((_h103398_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103394_
                      __table108283
                      __t108282
                      '#f)))
                  (_l103400_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103394_
                      __lock108284
                      __t108282
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l103400_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-for-each _h103398_ _proc103396_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l103400_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::for-each102418_
       locked-hash-table::for-each::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each102418_
       '#f))
    (define _locked-hash-table::length102420_
      (lambda (_self103260_)
        (let ((_h103263_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103260_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l103265_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103260_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l103265_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h103263_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l103265_)))))))
    (define locked-hash-table::length::specialize
      (lambda (__t108287)
        (let ((__lock108288
               (let ((__tmp108290
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108287 'lock))))
                 (if __tmp108290 __tmp108290 (error '"Unknown slot" 'lock))))
              (__table108289
               (let ((__tmp108291
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108287 'table))))
                 (if __tmp108291 __tmp108291 (error '"Unknown slot" 'table)))))
          (lambda (_self103260_)
            (let ((_h103263_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103260_
                      __table108289
                      __t108287
                      '#f)))
                  (_l103265_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103260_
                      __lock108288
                      __t108287
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l103265_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-length _h103263_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l103265_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::length102420_
       locked-hash-table::length::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'length
       _locked-hash-table::length102420_
       '#f))
    (define _locked-hash-table::copy102422_
      (lambda (_self103126_)
        (let ((_h103129_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103126_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l103131_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103126_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l103131_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-copy _h103129_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l103131_)))))))
    (define locked-hash-table::copy::specialize
      (lambda (__t108292)
        (let ((__lock108293
               (let ((__tmp108295
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108292 'lock))))
                 (if __tmp108295 __tmp108295 (error '"Unknown slot" 'lock))))
              (__table108294
               (let ((__tmp108296
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108292 'table))))
                 (if __tmp108296 __tmp108296 (error '"Unknown slot" 'table)))))
          (lambda (_self103126_)
            (let ((_h103129_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103126_
                      __table108294
                      __t108292
                      '#f)))
                  (_l103131_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103126_
                      __lock108293
                      __t108292
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l103131_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-copy _h103129_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l103131_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::copy102422_
       locked-hash-table::copy::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'copy
       _locked-hash-table::copy102422_
       '#f))
    (define _locked-hash-table::clear!102424_
      (lambda (_self102992_)
        (let ((_h102995_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self102992_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l102997_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self102992_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l102997_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h102995_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l102997_)))))))
    (define locked-hash-table::clear!::specialize
      (lambda (__t108297)
        (let ((__table108298
               (let ((__tmp108300
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108297 'table))))
                 (if __tmp108300 __tmp108300 (error '"Unknown slot" 'table))))
              (__lock108299
               (let ((__tmp108301
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108297 'lock))))
                 (if __tmp108301 __tmp108301 (error '"Unknown slot" 'lock)))))
          (lambda (_self102992_)
            (let ((_h102995_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self102992_
                      __table108298
                      __t108297
                      '#f)))
                  (_l102997_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self102992_
                      __lock108299
                      __t108297
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l102997_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-clear! _h102995_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l102997_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::clear!102424_
       locked-hash-table::clear!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!102424_
       '#f))
    (let ((__tmp108363 (macro-type-mutex)))
      (declare (not safe))
      (bind-method! __tmp108363 'begin-read! mutex-lock!))
    (let ((__tmp108364 (macro-type-mutex)))
      (declare (not safe))
      (bind-method! __tmp108364 'end-read! mutex-unlock!))
    (let ((__tmp108365 (macro-type-mutex)))
      (declare (not safe))
      (bind-method! __tmp108365 'begin-write! mutex-lock!))
    (let ((__tmp108366 (macro-type-mutex)))
      (declare (not safe))
      (bind-method! __tmp108366 'end-write! mutex-unlock!))
    (define make-generic-hash-table
      (lambda (_table102862_
               _count102863_
               _free102864_
               _hash102865_
               _test102866_
               _seed102867_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table102862_
           _count102863_
           _free102864_
           _hash102865_
           _test102866_
           _seed102867_))))
    (define make-hash-table__%
      (lambda (_g108367_
               _size-hint102738102747_
               _seed102739102749_
               _test102740102751_
               _hash102741102753_
               _lock102742102755_
               _weak-keys102743102757_
               _weak-values102744102759_)
        (let* ((_size-hint102762_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint102738102747_ absent-value))
                    '#f
                    _size-hint102738102747_))
               (_seed102764_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed102739102749_ absent-value))
                    (random-integer (macro-max-fixnum32))
                    _seed102739102749_))
               (_test102766_
                (if (let ()
                      (declare (not safe))
                      (eq? _test102740102751_ absent-value))
                    equal?
                    _test102740102751_))
               (_hash102768_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash102741102753_ absent-value))
                    '#f
                    _hash102741102753_))
               (_lock102770_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock102742102755_ absent-value))
                    '#f
                    _lock102742102755_))
               (_weak-keys102772_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys102743102757_ absent-value))
                    '#f
                    _weak-keys102743102757_))
               (_weak-values102774_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values102744102759_ absent-value))
                    '#f
                    _weak-values102744102759_)))
          (letrec ((_make102776_
                    (lambda (_kons102837_ _hash102838_ _test102839_)
                      (let* ((_size102841_
                              (if (and (fixnum? _size-hint102762_)
                                       (fx> _size-hint102762_ '0))
                                  (fx* (max _size-hint102762_ '2) '4)
                                  '16))
                             (_table102843_
                              (make-vector _size102841_ (macro-unused-obj)))
                             (_ht102845_
                              (let ((__tmp108368
                                     (_kons102837_
                                      _table102843_
                                      '0
                                      (fxquotient _size102841_ '2)
                                      _hash102838_
                                      _test102839_
                                      _seed102764_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp108368))))
                        (if _lock102770_
                            (let ((__tmp108369
                                   (let ((__tmp108370
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTableLock::interface
                                                  _lock102770_))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _ht102845_
                                      __tmp108370))))
                              (declare (not safe))
                              (cast HashTable::interface __tmp108369))
                            _ht102845_))))
                   (_make-gambit-table102777_
                    (lambda ()
                      (let* ((_size102822_
                              (let ((_$e102819_ _size-hint102762_))
                                (if _$e102819_ _$e102819_ (macro-absent-obj))))
                             (_test102827_
                              (let ((_$e102824_ _test102766_))
                                (if _$e102824_ _$e102824_ equal?)))
                             (_hash102832_
                              (let ((_$e102829_ _hash102768_))
                                (if _$e102829_
                                    _$e102829_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test102827_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test102827_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht102834_
                              (let ((__tmp108371
                                     (make-table
                                      'size:
                                      _size102822_
                                      'test:
                                      _test102827_
                                      'hash:
                                      _hash102832_
                                      'weak-keys:
                                      _weak-keys102772_
                                      'weak-values:
                                      _weak-values102774_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp108371))))
                        (if _lock102770_
                            (let ((__tmp108372
                                   (let ((__tmp108373
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTableLock::interface
                                                  _lock102770_))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _ht102834_
                                      __tmp108373))))
                              (declare (not safe))
                              (cast HashTable::interface __tmp108372))
                            _ht102834_)))))
            (if (or _weak-keys102772_ _weak-values102774_)
                (let () (declare (not safe)) (_make-gambit-table102777_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test102766_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test102766_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash102768_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash102768_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash102768_ eq-hash))))
                    (let ()
                      (declare (not safe))
                      (_make102776_ make-eq-hash-table eq-hash eq?))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test102766_ eqv?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test102766_ ##eqv?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash102768_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash102768_ eqv?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash102768_ eqv-hash))))
                        (let ()
                          (declare (not safe))
                          (_make102776_ make-eqv-hash-table eqv-hash eqv?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test102766_ eq?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test102766_ ##eq?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (eq? _hash102768_ symbolic-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash102768_ ##symbol-hash))))
                            (let ()
                              (declare (not safe))
                              (_make102776_
                               make-symbol-hash-table
                               symbolic-hash
                               eq?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test102766_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test102766_ ##equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test102766_ string=?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test102766_ ##string=?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash102768_ string-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash102768_
                                                ##string=?-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make102776_
                                   make-string-hash-table
                                   string-hash
                                   ##string=?))
                                (if (and (let ()
                                           (declare (not safe))
                                           (eq? _test102766_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (not _hash102768_)))
                                    (let ()
                                      (declare (not safe))
                                      (_make102776_
                                       make-generic-hash-table
                                       equal?-hash
                                       equal?))
                                    (if (let ((__tmp108375
                                               (let ()
                                                 (declare (not safe))
                                                 (procedure? _test102766_))))
                                          (declare (not safe))
                                          (not __tmp108375))
                                        (error '"bad hash table test function; expected procedure"
                                               _test102766_)
                                        (if (let ((__tmp108374
                                                   (let ()
                                                     (declare (not safe))
                                                     (procedure?
                                                      _hash102768_))))
                                              (declare (not safe))
                                              (not __tmp108374))
                                            (error '"bad hash table hash function; expected procedure"
                                                   _hash102768_)
                                            (let ()
                                              (declare (not safe))
                                              (_make102776_
                                               make-generic-hash-table
                                               _hash102768_
                                               _test102766_))))))))))))))
    (define make-hash-table__@
      (lambda (_keys102737102851_ . _args102853_)
        (apply make-hash-table__%
               _keys102737102851_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys102737102851_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys102737102851_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys102737102851_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys102737102851_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys102737102851_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys102737102851_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys102737102851_
                  'weak-values:
                  absent-value))
               _args102853_)))
    (define make-hash-table
      (lambda _args102745102859_
        (apply keyword-dispatch
               '#(weak-values:
                  #f
                  lock:
                  #f
                  #f
                  #f
                  #f
                  test:
                  weak-keys:
                  #f
                  #f
                  hash:
                  #f
                  #f
                  #f
                  #f
                  #f
                  #f
                  seed:
                  #f
                  size:
                  #f)
               make-hash-table__@
               _args102745102859_)))
    (define make-hash-table-eq
      (lambda _args102734_
        (apply make-hash-table 'test: eq? 'hash: eq-hash _args102734_)))
    (define make-hash-table-eqv
      (lambda _args102732_
        (apply make-hash-table 'test: eqv? 'hash: eqv-hash _args102732_)))
    (define make-hash-table-symbolic
      (lambda _args102730_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args102730_)))
    (define make-hash-table-string
      (lambda _args102728_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args102728_)))
    (define list->hash-table
      (lambda (_lst102725_ . _args102726_)
        (let ((__tmp108376
               (apply make-hash-table
                      'size:
                      (length _lst102725_)
                      _args102726_)))
          (declare (not safe))
          (list->hash-table! _lst102725_ __tmp108376))))
    (define list->hash-table-eq
      (lambda (_lst102722_ . _args102723_)
        (let ((__tmp108377
               (apply make-hash-table-eq
                      'size:
                      (length _lst102722_)
                      _args102723_)))
          (declare (not safe))
          (list->hash-table! _lst102722_ __tmp108377))))
    (define list->hash-table-eqv
      (lambda (_lst102719_ . _args102720_)
        (let ((__tmp108378
               (apply make-hash-table-eqv
                      'size:
                      (length _lst102719_)
                      _args102720_)))
          (declare (not safe))
          (list->hash-table! _lst102719_ __tmp108378))))
    (define list->hash-table-symbolic
      (lambda (_lst102716_ . _args102717_)
        (let ((__tmp108379
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst102716_)
                      _args102717_)))
          (declare (not safe))
          (list->hash-table! _lst102716_ __tmp108379))))
    (define list->hash-table-string
      (lambda (_lst102713_ . _args102714_)
        (let ((__tmp108380
               (apply make-hash-table-string
                      'size:
                      (length _lst102713_)
                      _args102714_)))
          (declare (not safe))
          (list->hash-table! _lst102713_ __tmp108380))))
    (define list->hash-table!
      (lambda (_lst102708_ _h102709_)
        (for-each
         (lambda (_el102711_)
           (let ((__tmp108382 (car _el102711_)) (__tmp108381 (cdr _el102711_)))
             (declare (not safe))
             (&HashTable-set! _h102709_ __tmp108382 __tmp108381)))
         _lst102708_)
        _h102709_))
    (define plist->hash-table
      (lambda (_lst102705_ . _args102706_)
        (let ((__tmp108383
               (apply make-hash-table
                      'size:
                      (length _lst102705_)
                      _args102706_)))
          (declare (not safe))
          (plist->hash-table! _lst102705_ __tmp108383))))
    (define plist->hash-table-eq
      (lambda (_lst102702_ . _args102703_)
        (let ((__tmp108384
               (apply make-hash-table-eq
                      'size:
                      (length _lst102702_)
                      _args102703_)))
          (declare (not safe))
          (plist->hash-table! _lst102702_ __tmp108384))))
    (define plist->hash-table-eqv
      (lambda (_lst102699_ . _args102700_)
        (let ((__tmp108385
               (apply make-hash-table-eqv
                      'size:
                      (length _lst102699_)
                      _args102700_)))
          (declare (not safe))
          (plist->hash-table! _lst102699_ __tmp108385))))
    (define plist->hash-table-symbolic
      (lambda (_lst102696_ . _args102697_)
        (let ((__tmp108386
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst102696_)
                      _args102697_)))
          (declare (not safe))
          (plist->hash-table! _lst102696_ __tmp108386))))
    (define plist->hash-table-string
      (lambda (_lst102693_ . _args102694_)
        (let ((__tmp108387
               (apply make-hash-table-string
                      'size:
                      (length _lst102693_)
                      _args102694_)))
          (declare (not safe))
          (plist->hash-table! _lst102693_ __tmp108387))))
    (define plist->hash-table!
      (lambda (_lst102633_ _h102634_)
        (let _loop102636_ ((_rest102638_ _lst102633_))
          (let* ((_rest102639102651_ _rest102638_)
                 (_else102642102659_
                  (lambda ()
                    (error '"bad property list -- uneven list" _lst102633_))))
            (let ((_K102645102674_
                   (lambda (_rest102670_ _val102671_ _key102672_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h102634_ _key102672_ _val102671_))
                     (let ()
                       (declare (not safe))
                       (_loop102636_ _rest102670_))))
                  (_K102644102664_ (lambda () _h102634_)))
              (let ((_try-match102641102667_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest102639102651_))
                           (let () (declare (not safe)) (_K102644102664_))
                           (let ()
                             (declare (not safe))
                             (_else102642102659_))))))
                (if (let () (declare (not safe)) (##pair? _rest102639102651_))
                    (let ((_tl102647102679_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest102639102651_)))
                          (_hd102646102677_
                           (let ()
                             (declare (not safe))
                             (##car _rest102639102651_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl102647102679_))
                          (let ((_tl102649102686_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl102647102679_)))
                                (_hd102648102684_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl102647102679_))))
                            (let ((_key102682_ _hd102646102677_)
                                  (_val102689_ _hd102648102684_)
                                  (_rest102691_ _tl102649102686_))
                              (let ()
                                (declare (not safe))
                                (_K102645102674_
                                 _rest102691_
                                 _val102689_
                                 _key102682_))))
                          (let () (declare (not safe)) (_else102642102659_))))
                    (let ()
                      (declare (not safe))
                      (_try-match102641102667_)))))))))
    (define hash-length
      (lambda (_h102631_)
        (let ((__tmp108388
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102631_))))
          (declare (not safe))
          (&HashTable-length __tmp108388))))
    (define &hash-length
      (lambda (_h102629_)
        (let () (declare (not safe)) (&HashTable-length _h102629_))))
    (define hash-ref__%
      (lambda (_h102613_ _key102614_ _default102615_)
        (let ((__tmp108389
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102613_))))
          (declare (not safe))
          (&hash-ref__% __tmp108389 _key102614_ _default102615_))))
    (define hash-ref__0
      (lambda (_h102620_ _key102621_)
        (let ((_default102623_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h102620_ _key102621_ _default102623_))))
    (define hash-ref
      (lambda _g108391_
        (let ((_g108390_ (let () (declare (not safe)) (##length _g108391_))))
          (cond ((let () (declare (not safe)) (##fx= _g108390_ 2))
                 (apply (lambda (_h102620_ _key102621_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h102620_ _key102621_)))
                        _g108391_))
                ((let () (declare (not safe)) (##fx= _g108390_ 3))
                 (apply (lambda (_h102625_ _key102626_ _default102627_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__%
                             _h102625_
                             _key102626_
                             _default102627_)))
                        _g108391_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g108391_))))))
    (define &hash-ref__%
      (lambda (_h102594_ _key102595_ _default102596_)
        (let ((_result102598_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h102594_ _key102595_ _default102596_))))
          (if (let ((__tmp108392 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result102598_ __tmp108392))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"uknown hash key"
                 'hash:
                 _h102594_
                 'key:
                 _key102595_))
              _result102598_))))
    (define &hash-ref__0
      (lambda (_h102603_ _key102604_)
        (let ((_default102606_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h102603_ _key102604_ _default102606_))))
    (define &hash-ref
      (lambda _g108394_
        (let ((_g108393_ (let () (declare (not safe)) (##length _g108394_))))
          (cond ((let () (declare (not safe)) (##fx= _g108393_ 2))
                 (apply (lambda (_h102603_ _key102604_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h102603_ _key102604_)))
                        _g108394_))
                ((let () (declare (not safe)) (##fx= _g108393_ 3))
                 (apply (lambda (_h102608_ _key102609_ _default102610_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__%
                             _h102608_
                             _key102609_
                             _default102610_)))
                        _g108394_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g108394_))))))
    (define hash-get
      (lambda (_h102590_ _key102591_)
        (let ((__tmp108395
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102590_))))
          (declare (not safe))
          (&hash-get __tmp108395 _key102591_))))
    (define &hash-get
      (lambda (_h102587_ _key102588_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h102587_ _key102588_ '#f))))
    (define hash-put!
      (lambda (_h102583_ _key102584_ _value102585_)
        (let ((__tmp108396
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102583_))))
          (declare (not safe))
          (&HashTable-set! __tmp108396 _key102584_ _value102585_))))
    (define &hash-put!
      (lambda (_h102579_ _key102580_ _value102581_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h102579_ _key102580_ _value102581_))))
    (define hash-update!__%
      (lambda (_h102560_ _key102561_ _update102562_ _default102563_)
        (let ((__tmp108397
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102560_))))
          (declare (not safe))
          (&HashTable-update!
           __tmp108397
           _key102561_
           _update102562_
           _default102563_))))
    (define hash-update!__0
      (lambda (_h102568_ _key102569_ _update102570_)
        (let ((_default102572_ '#!void))
          (declare (not safe))
          (hash-update!__%
           _h102568_
           _key102569_
           _update102570_
           _default102572_))))
    (define hash-update!
      (lambda _g108399_
        (let ((_g108398_ (let () (declare (not safe)) (##length _g108399_))))
          (cond ((let () (declare (not safe)) (##fx= _g108398_ 3))
                 (apply (lambda (_h102568_ _key102569_ _update102570_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h102568_
                             _key102569_
                             _update102570_)))
                        _g108399_))
                ((let () (declare (not safe)) (##fx= _g108398_ 4))
                 (apply (lambda (_h102574_
                                 _key102575_
                                 _update102576_
                                 _default102577_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h102574_
                             _key102575_
                             _update102576_
                             _default102577_)))
                        _g108399_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g108399_))))))
    (define &hash-update!__%
      (lambda (_h102540_ _key102541_ _update102542_ _default102543_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h102540_
           _key102541_
           _update102542_
           _default102543_))))
    (define &hash-update!__0
      (lambda (_h102548_ _key102549_ _update102550_)
        (let ((_default102552_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h102548_
           _key102549_
           _update102550_
           _default102552_))))
    (define &hash-update!
      (lambda _g108401_
        (let ((_g108400_ (let () (declare (not safe)) (##length _g108401_))))
          (cond ((let () (declare (not safe)) (##fx= _g108400_ 3))
                 (apply (lambda (_h102548_ _key102549_ _update102550_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h102548_
                             _key102549_
                             _update102550_)))
                        _g108401_))
                ((let () (declare (not safe)) (##fx= _g108400_ 4))
                 (apply (lambda (_h102554_
                                 _key102555_
                                 _update102556_
                                 _default102557_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h102554_
                             _key102555_
                             _update102556_
                             _default102557_)))
                        _g108401_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g108401_))))))
    (define hash-remove!
      (lambda (_h102536_ _key102537_)
        (let ((__tmp108402
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102536_))))
          (declare (not safe))
          (&HashTable-delete! __tmp108402 _key102537_))))
    (define &hash-remove!
      (lambda (_h102533_ _key102534_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h102533_ _key102534_))))
    (define hash-key?
      (lambda (_h102530_ _k102531_)
        (let ((__tmp108403
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102530_))))
          (declare (not safe))
          (&hash-key? __tmp108403 _k102531_))))
    (define &hash-key?
      (lambda (_h102527_ _k102528_)
        (let ((__tmp108404
               (let ((__tmp108405
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h102527_ _k102528_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp108405 absent-value))))
          (declare (not safe))
          (not __tmp108404))))
    (define hash->list
      (lambda (_h102525_)
        (let ((__tmp108406
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102525_))))
          (declare (not safe))
          (&hash->list __tmp108406))))
    (define &hash->list
      (lambda (_h102518_)
        (let ((_lst102520_ '()))
          (let ((__tmp108407
                 (lambda (_k102522_ _v102523_)
                   (set! _lst102520_
                         (let ((__tmp108408
                                (let ()
                                  (declare (not safe))
                                  (cons _k102522_ _v102523_))))
                           (declare (not safe))
                           (cons __tmp108408 _lst102520_))))))
            (declare (not safe))
            (&HashTable-for-each _h102518_ __tmp108407))
          _lst102520_)))
    (define hash->plist
      (lambda (_h102516_)
        (let ((__tmp108409
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102516_))))
          (declare (not safe))
          (&hash->plist __tmp108409))))
    (define &hash->plist
      (lambda (_h102509_)
        (let ((_lst102511_ '()))
          (let ((__tmp108410
                 (lambda (_k102513_ _v102514_)
                   (set! _lst102511_
                         (let ((__tmp108411
                                (let ()
                                  (declare (not safe))
                                  (cons _v102514_ _lst102511_))))
                           (declare (not safe))
                           (cons _k102513_ __tmp108411))))))
            (declare (not safe))
            (&HashTable-for-each _h102509_ __tmp108410))
          _lst102511_)))
    (define hash-for-each
      (lambda (_proc102506_ _h102507_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h102507_ _proc102506_))))
    (define hash-map
      (lambda (_proc102498_ _h102499_)
        (let ((_result102501_ '()))
          (let ((__tmp108412
                 (lambda (_k102503_ _v102504_)
                   (set! _result102501_
                         (let ((__tmp108413
                                (_proc102498_ _k102503_ _v102504_)))
                           (declare (not safe))
                           (cons __tmp108413 _result102501_))))))
            (declare (not safe))
            (HashTable-for-each _h102499_ __tmp108412))
          _result102501_)))
    (define hash-fold
      (lambda (_proc102489_ _iv102490_ _h102491_)
        (let ((_result102493_ _iv102490_))
          (let ((__tmp108414
                 (lambda (_k102495_ _v102496_)
                   (set! _result102493_
                         (_proc102489_ _k102495_ _v102496_ _result102493_)))))
            (declare (not safe))
            (HashTable-for-each _h102491_ __tmp108414))
          _result102493_)))
    (define hash-find__%
      (lambda (_proc102465_ _h102466_ _default-value102467_)
        (call-with-current-continuation
         (lambda (_return102469_)
           (let ((__tmp108415
                  (lambda (_k102471_ _v102472_)
                    (let ((_$e102474_ (_proc102465_ _k102471_ _v102472_)))
                      (if _$e102474_ (_return102469_ _$e102474_) '#!void)))))
             (declare (not safe))
             (HashTable-for-each _h102466_ __tmp108415))
           _default-value102467_))))
    (define hash-find__0
      (lambda (_proc102480_ _h102481_)
        (let ((_default-value102483_ '#f))
          (declare (not safe))
          (hash-find__% _proc102480_ _h102481_ _default-value102483_))))
    (define hash-find
      (lambda _g108417_
        (let ((_g108416_ (let () (declare (not safe)) (##length _g108417_))))
          (cond ((let () (declare (not safe)) (##fx= _g108416_ 2))
                 (apply (lambda (_proc102480_ _h102481_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc102480_ _h102481_)))
                        _g108417_))
                ((let () (declare (not safe)) (##fx= _g108416_ 3))
                 (apply (lambda (_proc102485_ _h102486_ _default-value102487_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc102485_
                             _h102486_
                             _default-value102487_)))
                        _g108417_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g108417_))))))
    (define hash-keys
      (lambda (_h102462_)
        (let ((__tmp108418
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102462_))))
          (declare (not safe))
          (&hash-keys __tmp108418))))
    (define &hash-keys
      (lambda (_h102455_)
        (let ((_result102457_ '()))
          (let ((__tmp108419
                 (lambda (_k102459_ _v102460_)
                   (set! _result102457_
                         (let ()
                           (declare (not safe))
                           (cons _k102459_ _result102457_))))))
            (declare (not safe))
            (&HashTable-for-each _h102455_ __tmp108419))
          _result102457_)))
    (define hash-values
      (lambda (_h102453_)
        (let ((__tmp108420
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102453_))))
          (declare (not safe))
          (&hash-values __tmp108420))))
    (define &hash-values
      (lambda (_h102446_)
        (let ((_result102448_ '()))
          (let ((__tmp108421
                 (lambda (_k102450_ _v102451_)
                   (set! _result102448_
                         (let ()
                           (declare (not safe))
                           (cons _v102451_ _result102448_))))))
            (declare (not safe))
            (&HashTable-for-each _h102446_ __tmp108421))
          _result102448_)))
    (define hash-copy
      (lambda (_h102444_)
        (let ((__tmp108422
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102444_))))
          (declare (not safe))
          (&HashTable-copy __tmp108422))))
    (define &hash-copy
      (lambda (_h102442_)
        (let () (declare (not safe)) (&HashTable-copy _h102442_))))
    (define hash-merge
      (lambda (_h102437_ . _rest102438_)
        (let ((_copy102440_
               (let () (declare (not safe)) (hash-copy _h102437_))))
          (apply hash-merge! _copy102440_ _rest102438_)
          _copy102440_)))
    (define hash-merge!
      (lambda (_h102427_ . _rest102428_)
        (let ((_h102430_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102427_))))
          (for-each
           (lambda (_hr102432_)
             (let ((__tmp108423
                    (lambda (_k102434_ _v102435_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h102430_ _k102434_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set!
                             _h102430_
                             _k102434_
                             _v102435_))))))
               (declare (not safe))
               (hash-for-each __tmp108423 _hr102432_)))
           _rest102428_)
          _h102430_)))))
