(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1708451992)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp69432 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp69432
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args69415_
        (apply make-instance UnboundKeyError::t _$args69415_)))
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
      (bind-method!__% UnboundKeyError::t ':init! UnboundKeyError:::init! '#f))
    (define raise-unbound-key-error
      (lambda (_where69289_ _message69290_ . _irritants69291_)
        (raise (let ((__obj69429
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj69429
                  _message69290_
                  'where:
                  _where69289_
                  'irritants:
                  _irritants69291_)
                 __obj69429))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp69437 (list interface-instance::t))
            (__tmp69433
             (let ((__tmp69436
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp69434
                    (let ((__tmp69435
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp69435 '()))))
               (declare (not safe))
               (cons __tmp69436 __tmp69434))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp69437
         '(ref set! update! delete! for-each length copy clear)
         __tmp69433
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
        (make-class-slot-accessor HashTable::t 'set!)))
    (define HashTable-update@
      (let ()
        (declare (not safe))
        (make-class-slot-accessor HashTable::t 'update!)))
    (define HashTable-del@
      (let ()
        (declare (not safe))
        (make-class-slot-accessor HashTable::t 'delete!)))
    (define HashTable-each@
      (let ()
        (declare (not safe))
        (make-class-slot-accessor HashTable::t 'for-each)))
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
        (make-class-slot-mutator HashTable::t 'set!)))
    (define HashTable-update@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator HashTable::t 'update!)))
    (define HashTable-del@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator HashTable::t 'delete!)))
    (define HashTable-each@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator HashTable::t 'for-each)))
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
        (make-class-slot-unchecked-accessor HashTable::t 'set!)))
    (define &HashTable-update@
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor HashTable::t 'update!)))
    (define &HashTable-del@
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor HashTable::t 'delete!)))
    (define &HashTable-each@
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor HashTable::t 'for-each)))
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
        (make-class-slot-unchecked-mutator HashTable::t 'set!)))
    (define &HashTable-update@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator HashTable::t 'update!)))
    (define &HashTable-del@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator HashTable::t 'delete!)))
    (define &HashTable-each@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator HashTable::t 'for-each)))
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
      (let ((__tmp69442 (list interface-instance::t))
            (__tmp69438
             (let ((__tmp69441
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp69439
                    (let ((__tmp69440
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp69440 '()))))
               (declare (not safe))
               (cons __tmp69441 __tmp69439))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp69442
         '(begin-read! end-read! begin-write! end-write!)
         __tmp69438
         '#f)))
    (define HashTableLock?
      (let () (declare (not safe)) (make-class-predicate HashTableLock::t)))
    (define HashTableLock-begin-read@
      (let ()
        (declare (not safe))
        (make-class-slot-accessor HashTableLock::t 'begin-read!)))
    (define HashTableLock-end-read@
      (let ()
        (declare (not safe))
        (make-class-slot-accessor HashTableLock::t 'end-read!)))
    (define HashTableLock-begin-write@
      (let ()
        (declare (not safe))
        (make-class-slot-accessor HashTableLock::t 'begin-write!)))
    (define HashTableLock-end-write@
      (let ()
        (declare (not safe))
        (make-class-slot-accessor HashTableLock::t 'end-write!)))
    (define HashTableLock-begin-read@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator HashTableLock::t 'begin-read!)))
    (define HashTableLock-end-read@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator HashTableLock::t 'end-read!)))
    (define HashTableLock-begin-write@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator HashTableLock::t 'begin-write!)))
    (define HashTableLock-end-write@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator HashTableLock::t 'end-write!)))
    (define &HashTableLock-begin-read@
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor HashTableLock::t 'begin-read!)))
    (define &HashTableLock-end-read@
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor HashTableLock::t 'end-read!)))
    (define &HashTableLock-begin-write@
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor HashTableLock::t 'begin-write!)))
    (define &HashTableLock-end-write@
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor HashTableLock::t 'end-write!)))
    (define &HashTableLock-begin-read@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator HashTableLock::t 'begin-read!)))
    (define &HashTableLock-end-read@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator HashTableLock::t 'end-read!)))
    (define &HashTableLock-begin-write@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator HashTableLock::t 'begin-write!)))
    (define &HashTableLock-end-write@-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator HashTableLock::t 'end-write!)))
    (define HashTableLock::interface
      (let ()
        (declare (not safe))
        (##structure
         interface-descriptor::t
         HashTableLock::t
         '(begin-read! end-read! begin-write! end-write!))))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'ref raw-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'set! raw-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'update! raw-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'delete! raw-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'for-each raw-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'length &raw-table-count))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'copy raw-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'clear! raw-table-clear!))
    (define gambit-table-update!
      (lambda (_table69282_ _key69283_ _update69284_ _default69285_)
        (let ((_result69287_
               (table-ref _table69282_ _key69283_ _default69285_)))
          (table-set!
           _table69282_
           _key69283_
           (_update69284_ _default69285_)))))
    (define gambit-table-for-each
      (lambda (_table69279_ _proc69280_)
        (table-for-each _proc69280_ _table69279_)))
    (define gambit-table-clear!
      (lambda (_table69277_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table69277_ '0 '5 '#f '#f))))
    (let ((__tmp69443 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp69443 'ref table-ref))
    (let ((__tmp69444 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp69444 'set! table-set!))
    (let ((__tmp69445 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp69445 'update! gambit-table-update!))
    (let ((__tmp69446 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp69446 'delete! table-set!))
    (let ((__tmp69447 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp69447 'for-each gambit-table-for-each))
    (let ((__tmp69448 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp69448 'length table-length))
    (let ((__tmp69449 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp69449 'copy table-copy))
    (let ((__tmp69450 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp69450 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots69259_ '(table count free hash test seed))
             (_slot-vector69261_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots69259_))))
             (_slot-table69268_
              (let ((_slot-table69263_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot69265_ _field69266_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table69263_
                      _slot69265_
                      _field69266_))
                   (let ((__tmp69451 (symbol->keyword _slot69265_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table69263_
                      __tmp69451
                      _field69266_)))
                 _slots69259_
                 (let ((__tmp69452 (length _slots69259_)))
                   (declare (not safe))
                   (iota__1 __tmp69452 '1)))
                _slot-table69263_))
             (_flags69270_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields69272_ '#())
             (_properties69274_
              (let ((__tmp69455
                     (let ((__tmp69456
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots69259_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp69456)))
                    (__tmp69453
                     (let ((__tmp69454
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp69454 '()))))
                (declare (not safe))
                (cons __tmp69455 __tmp69453))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags69270_
           __table::t
           _fields69272_
           '()
           _slot-vector69261_
           _slot-table69268_
           _properties69274_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp69461 (list))
            (__tmp69457
             (let ((__tmp69460
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp69458
                    (let ((__tmp69459
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp69459 '()))))
               (declare (not safe))
               (cons __tmp69460 __tmp69458))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp69461
         '(table lock)
         __tmp69457
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args69256_
        (apply make-instance locked-hash-table::t _$args69256_)))
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
    (define checked-hash-table::t
      (let ((__tmp69466 (list))
            (__tmp69462
             (let ((__tmp69465
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp69463
                    (let ((__tmp69464
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp69464 '()))))
               (declare (not safe))
               (cons __tmp69465 __tmp69463))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp69466
         '(table key-check)
         __tmp69462
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args69253_
        (apply make-instance checked-hash-table::t _$args69253_)))
    (define checked-hash-table-table
      (let ()
        (declare (not safe))
        (make-class-slot-accessor checked-hash-table::t 'table)))
    (define checked-hash-table-key-check
      (let ()
        (declare (not safe))
        (make-class-slot-accessor checked-hash-table::t 'key-check)))
    (define checked-hash-table-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator checked-hash-table::t 'table)))
    (define checked-hash-table-key-check-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator checked-hash-table::t 'key-check)))
    (define &checked-hash-table-table
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor checked-hash-table::t 'table)))
    (define &checked-hash-table-key-check
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor checked-hash-table::t 'key-check)))
    (define &checked-hash-table-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator checked-hash-table::t 'table)))
    (define &checked-hash-table-key-check-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator checked-hash-table::t 'key-check)))
    (define eq-hash-table::t
      (let ((__tmp69469 (list hash-table::t))
            (__tmp69467
             (let ((__tmp69468
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp69468 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp69469
         '()
         __tmp69467
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args69250_
        (apply make-instance eq-hash-table::t _$args69250_)))
    (define eqv-hash-table::t
      (let ((__tmp69472 (list hash-table::t))
            (__tmp69470
             (let ((__tmp69471
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp69471 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp69472
         '()
         __tmp69470
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args69247_
        (apply make-instance eqv-hash-table::t _$args69247_)))
    (define symbol-hash-table::t
      (let ((__tmp69475 (list hash-table::t))
            (__tmp69473
             (let ((__tmp69474
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp69474 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp69475
         '()
         __tmp69473
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args69244_
        (apply make-instance symbol-hash-table::t _$args69244_)))
    (define string-hash-table::t
      (let ((__tmp69478 (list hash-table::t))
            (__tmp69476
             (let ((__tmp69477
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp69477 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp69478
         '()
         __tmp69476
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args69241_
        (apply make-instance string-hash-table::t _$args69241_)))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'ref raw-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'set! raw-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'update! raw-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'delete! raw-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'for-each raw-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'length &raw-table-count))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'copy raw-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'clear! raw-table-clear!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eq-hash-table::t 'ref eq-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 eq-hash-table::t 'set! eq-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eq-hash-table::t 'update! eq-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eq-hash-table::t 'delete! eq-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eqv-hash-table::t 'ref eqv-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 eqv-hash-table::t 'set! eqv-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eqv-hash-table::t 'update! eqv-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eqv-hash-table::t 'delete! eqv-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 symbol-hash-table::t 'ref symbolic-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 symbol-hash-table::t 'set! symbolic-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 symbol-hash-table::t 'update! symbolic-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 symbol-hash-table::t 'delete! symbolic-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 string-hash-table::t 'ref string-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 string-hash-table::t 'set! string-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 string-hash-table::t 'update! string-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 string-hash-table::t 'delete! string-table-delete!))
    (define hash-table?
      (lambda (_obj69239_)
        (if (let () (declare (not safe)) (##structure? _obj69239_))
            (let ((__tmp69479
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj69239_))))
              (declare (not safe))
              (eq? __tmp69479 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj69234_)
        (let ((_$e69236_
               (if (let () (declare (not safe)) (##structure? _obj69234_))
                   (let ((__tmp69480
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj69234_))))
                     (declare (not safe))
                     (eq? __tmp69480 HashTable::t))
                   '#f)))
          (if _$e69236_
              _$e69236_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj69234_))))))
    (define HashTable-ref
      (lambda (_h69228_ _key69229_ _default69230_)
        (let ((_h69232_
               (if (and (let () (declare (not safe)) (##structure? _h69228_))
                        (let ((__tmp69481
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69228_))))
                          (declare (not safe))
                          (eq? __tmp69481 HashTable::t)))
                   _h69228_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69228_)))))
          (declare (not safe))
          (&HashTable-ref _h69232_ _key69229_ _default69230_))))
    (define &HashTable-ref
      (lambda (_h69223_ _key69224_ _default69225_)
        (declare (not safe))
        ((##unchecked-structure-ref _h69223_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h69223_ '1 interface-instance::t '#f)
         _key69224_
         _default69225_)))
    (define HashTable-set!
      (lambda (_h69217_ _key69218_ _value69219_)
        (let ((_h69221_
               (if (and (let () (declare (not safe)) (##structure? _h69217_))
                        (let ((__tmp69482
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69217_))))
                          (declare (not safe))
                          (eq? __tmp69482 HashTable::t)))
                   _h69217_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69217_)))))
          (declare (not safe))
          (&HashTable-set! _h69221_ _key69218_ _value69219_))))
    (define &HashTable-set!
      (lambda (_h69212_ _key69213_ _value69214_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h69212_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h69212_ '1 interface-instance::t '#f)
           _key69213_
           _value69214_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h69205_ _key69206_ _update69207_ _default69208_)
        (let ((_h69210_
               (if (and (let () (declare (not safe)) (##structure? _h69205_))
                        (let ((__tmp69483
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69205_))))
                          (declare (not safe))
                          (eq? __tmp69483 HashTable::t)))
                   _h69205_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69205_)))))
          (declare (not safe))
          (&HashTable-update!
           _h69210_
           _key69206_
           _update69207_
           _default69208_))))
    (define &HashTable-update!
      (lambda (_h69199_ _key69200_ _update69201_ _default69202_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h69199_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h69199_ '1 interface-instance::t '#f)
           _key69200_
           _update69201_
           _default69202_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h69194_ _key69195_)
        (let ((_h69197_
               (if (and (let () (declare (not safe)) (##structure? _h69194_))
                        (let ((__tmp69484
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69194_))))
                          (declare (not safe))
                          (eq? __tmp69484 HashTable::t)))
                   _h69194_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69194_)))))
          (declare (not safe))
          (&HashTable-delete! _h69197_ _key69195_))))
    (define &HashTable-delete!
      (lambda (_h69190_ _key69191_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h69190_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h69190_ '1 interface-instance::t '#f)
           _key69191_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h69185_ _proc69186_)
        (let ((_h69188_
               (if (and (let () (declare (not safe)) (##structure? _h69185_))
                        (let ((__tmp69485
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69185_))))
                          (declare (not safe))
                          (eq? __tmp69485 HashTable::t)))
                   _h69185_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69185_)))))
          (declare (not safe))
          (&HashTable-for-each _h69188_ _proc69186_))))
    (define &HashTable-for-each
      (lambda (_h69181_ _proc69182_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h69181_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h69181_ '1 interface-instance::t '#f)
           _proc69182_)
          '#!void)))
    (define HashTable-length
      (lambda (_h69177_)
        (let ((_h69179_
               (if (and (let () (declare (not safe)) (##structure? _h69177_))
                        (let ((__tmp69486
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69177_))))
                          (declare (not safe))
                          (eq? __tmp69486 HashTable::t)))
                   _h69177_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69177_)))))
          (declare (not safe))
          (&HashTable-length _h69179_))))
    (define &HashTable-length
      (lambda (_h69174_)
        (declare (not safe))
        ((##unchecked-structure-ref _h69174_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h69174_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h69170_)
        (let ((_h69172_
               (if (and (let () (declare (not safe)) (##structure? _h69170_))
                        (let ((__tmp69487
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69170_))))
                          (declare (not safe))
                          (eq? __tmp69487 HashTable::t)))
                   _h69170_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69170_)))))
          (declare (not safe))
          (&HashTable-copy _h69172_))))
    (define &HashTable-copy
      (lambda (_h69167_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h69167_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h69167_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h69163_)
        (let ((_h69165_
               (if (and (let () (declare (not safe)) (##structure? _h69163_))
                        (let ((__tmp69488
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69163_))))
                          (declare (not safe))
                          (eq? __tmp69488 HashTable::t)))
                   _h69163_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69163_)))))
          (declare (not safe))
          (&HashTable-clear! _h69165_))))
    (define &HashTable-clear!
      (lambda (_h69160_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h69160_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h69160_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl69157_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl69157_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl69157_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl69154_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl69154_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl69154_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl69151_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl69151_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl69151_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl69148_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl69148_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl69148_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref66187_
      (lambda (_self69135_ _key69137_ _default69138_)
        (let ((_h69140_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69135_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l69142_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69135_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l69142_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h69140_ _key69137_ _default69138_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l69142_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref66187_
       '#f))
    (define _locked-hash-table::set!66189_
      (lambda (_self68999_ _key69001_ _value69002_)
        (let ((_h69004_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68999_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l69006_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68999_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l69006_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h69004_ _key69001_ _value69002_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l69006_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!66189_
       '#f))
    (define _locked-hash-table::update!66191_
      (lambda (_self68862_ _key68864_ _update68865_ _default68866_)
        (let ((_h68868_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68862_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l68870_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68862_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l68870_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h68868_
                _key68864_
                _update68865_
                _default68866_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l68870_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!66191_
       '#f))
    (define _locked-hash-table::delete!66193_
      (lambda (_self68727_ _key68729_)
        (let ((_h68731_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68727_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l68733_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68727_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l68733_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h68731_ _key68729_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l68733_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!66193_
       '#f))
    (define _locked-hash-table::for-each66195_
      (lambda (_self68592_ _proc68594_)
        (let ((_h68596_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68592_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l68598_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68592_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l68598_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h68596_ _proc68594_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l68598_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each66195_
       '#f))
    (define _locked-hash-table::length66197_
      (lambda (_self68458_)
        (let ((_h68461_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68458_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l68463_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68458_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l68463_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h68461_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l68463_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length66197_
       '#f))
    (define _locked-hash-table::copy66199_
      (lambda (_self68324_)
        (let ((_h68327_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68324_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l68329_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68324_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l68329_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h68327_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l68329_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy66199_
       '#f))
    (define _locked-hash-table::clear!66201_
      (lambda (_self68190_)
        (let ((_h68193_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68190_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l68195_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68190_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l68195_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h68193_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l68195_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!66201_
       '#f))
    (let ((__tmp69489 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp69489 'begin-read! mutex-lock!))
    (let ((__tmp69490 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp69490 'end-read! mutex-unlock!))
    (let ((__tmp69491 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp69491 'begin-write! mutex-lock!))
    (let ((__tmp69492 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp69492 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref66479_
      (lambda (_self68054_ _key68055_ _default68056_)
        (let ((_h68058_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68054_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?68060_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68054_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g6806268064_)
             (if (_g6806268064_ _key68055_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key68055_))))
           _key?68060_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h68058_ _key68055_ _default68056_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref66479_
       '#f))
    (define _checked-hash-table::set!66481_
      (lambda (_self67918_ _key67919_ _value67920_)
        (let ((_h67922_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67918_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?67924_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67918_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g6792667928_)
             (if (_g6792667928_ _key67919_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key67919_))))
           _key?67924_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h67922_ _key67919_ _value67920_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!66481_
       '#f))
    (define _checked-hash-table::update!66483_
      (lambda (_self67783_ _key67784_ _update67785_ _default67786_)
        (let ((_h67788_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67783_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?67790_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67783_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?67793_)
             (if (_key?67793_ _key67784_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key67784_)))
             (if (let () (declare (not safe)) (procedure? _update67785_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update67785_))))
           _key?67790_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h67788_
             _key67784_
             _update67785_
             _default67786_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!66483_
       '#f))
    (define _checked-hash-table::delete!66485_
      (lambda (_self67648_ _key67649_)
        (let ((_h67651_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67648_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?67653_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67648_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g6765567657_)
             (if (_g6765567657_ _key67649_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key67649_))))
           _key?67653_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h67651_ _key67649_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!66485_
       '#f))
    (define _checked-hash-table::for-each66487_
      (lambda (_self67516_ _proc67517_)
        (let ((_h67519_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67516_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?67521_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67516_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g69493_)
             (if (let () (declare (not safe)) (procedure? _proc67517_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc67517_))))
           _key?67521_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h67519_ _proc67517_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each66487_
       '#f))
    (define _checked-hash-table::length66489_
      (lambda (_self67386_)
        (let ((_h67388_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67386_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?67390_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67386_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h67388_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length66489_
       '#f))
    (define _checked-hash-table::copy66491_
      (lambda (_self67256_)
        (let ((_h67258_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67256_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?67260_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67256_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h67258_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy66491_
       '#f))
    (define _checked-hash-table::clear!66493_
      (lambda (_self67126_)
        (let ((_h67128_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67126_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?67130_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67126_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h67128_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!66493_
       '#f))
    (define make-generic-hash-table
      (lambda (_table66996_
               _count66997_
               _free66998_
               _hash66999_
               _test67000_
               _seed67001_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table66996_
           _count66997_
           _free66998_
           _hash66999_
           _test67000_
           _seed67001_))))
    (define make-hash-table__%
      (lambda (_g69494_
               _size-hint6685966869_
               _seed6686066871_
               _test6686166873_
               _hash6686266875_
               _lock6686366877_
               _check6686466879_
               _weak-keys6686566881_
               _weak-values6686666883_)
        (let* ((_size-hint66886_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint6685966869_ absent-value))
                    '#f
                    _size-hint6685966869_))
               (_seed66888_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed6686066871_ absent-value))
                    (random-integer (macro-max-fixnum32))
                    _seed6686066871_))
               (_test66890_
                (if (let ()
                      (declare (not safe))
                      (eq? _test6686166873_ absent-value))
                    equal?
                    _test6686166873_))
               (_hash66892_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash6686266875_ absent-value))
                    '#f
                    _hash6686266875_))
               (_lock66894_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock6686366877_ absent-value))
                    '#f
                    _lock6686366877_))
               (_check66896_
                (if (let ()
                      (declare (not safe))
                      (eq? _check6686466879_ absent-value))
                    '#f
                    _check6686466879_))
               (_weak-keys66898_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys6686566881_ absent-value))
                    '#f
                    _weak-keys6686566881_))
               (_weak-values66900_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values6686666883_ absent-value))
                    '#f
                    _weak-values6686666883_)))
          (letrec ((_wrap-lock66902_
                    (lambda (_ht66980_)
                      (if _lock66894_
                          (let ((__tmp69495
                                 (let ((__tmp69496
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock66894_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht66980_
                                    __tmp69496))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp69495))
                          _ht66980_)))
                   (_wrap-checked66903_
                    (lambda (_ht66977_ _implicit66978_)
                      (if _check66896_
                          (let ((__tmp69497
                                 (let ((__tmp69498
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check66896_))
                                            _check66896_
                                            _implicit66978_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht66977_
                                    __tmp69498))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp69497))
                          _ht66977_)))
                   (_make66904_
                    (lambda (_kons66965_ _key?66966_ _hash66967_ _test66968_)
                      (let* ((_size66970_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint66886_)))
                             (_table66972_
                              (make-vector _size66970_ (macro-unused-obj)))
                             (_ht66974_
                              (let ((__tmp69499
                                     (_kons66965_
                                      _table66972_
                                      '0
                                      (fxquotient _size66970_ '2)
                                      _hash66967_
                                      _test66968_
                                      _seed66888_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp69499))))
                        (let ((__tmp69500
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock66902_ _ht66974_))))
                          (declare (not safe))
                          (_wrap-checked66903_ __tmp69500 _key?66966_)))))
                   (_make-gambit-table66905_
                    (lambda ()
                      (let* ((_size66950_
                              (let ((_$e66947_ _size-hint66886_))
                                (if _$e66947_ _$e66947_ (macro-absent-obj))))
                             (_test66955_
                              (let ((_$e66952_ _test66890_))
                                (if _$e66952_ _$e66952_ equal?)))
                             (_hash66960_
                              (let ((_$e66957_ _hash66892_))
                                (if _$e66957_
                                    _$e66957_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test66955_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test66955_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht66962_
                              (let ((__tmp69501
                                     (make-table
                                      'size:
                                      _size66950_
                                      'test:
                                      _test66955_
                                      'hash:
                                      _hash66960_
                                      'weak-keys:
                                      _weak-keys66898_
                                      'weak-values:
                                      _weak-values66900_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp69501))))
                        (let ((__tmp69502
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock66902_ _ht66962_))))
                          (declare (not safe))
                          (_wrap-checked66903_ __tmp69502 true))))))
            (if (or _weak-keys66898_ _weak-values66900_)
                (let () (declare (not safe)) (_make-gambit-table66905_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test66890_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test66890_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash66892_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash66892_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash66892_ eq-hash))))
                    (let ()
                      (declare (not safe))
                      (_make66904_ make-eq-hash-table true eq-hash eq?))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test66890_ eqv?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test66890_ ##eqv?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash66892_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash66892_ eqv?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash66892_ eqv-hash))))
                        (let ()
                          (declare (not safe))
                          (_make66904_ make-eqv-hash-table true eqv-hash eqv?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test66890_ eq?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test66890_ ##eq?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (eq? _hash66892_ symbolic-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash66892_ ##symbol-hash))))
                            (let ()
                              (declare (not safe))
                              (_make66904_
                               make-symbol-hash-table
                               symbolic?
                               symbolic-hash
                               eq?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test66890_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test66890_ ##equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test66890_ string=?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test66890_ ##string=?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash66892_ string-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash66892_ ##string=?-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make66904_
                                   make-string-hash-table
                                   string?
                                   string-hash
                                   ##string=?))
                                (if (and (let ()
                                           (declare (not safe))
                                           (eq? _test66890_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (not _hash66892_)))
                                    (let ()
                                      (declare (not safe))
                                      (_make66904_
                                       make-generic-hash-table
                                       true
                                       equal?-hash
                                       equal?))
                                    (if (let ((__tmp69503
                                               (let ()
                                                 (declare (not safe))
                                                 (procedure? _test66890_))))
                                          (declare (not safe))
                                          (not __tmp69503))
                                        (let ()
                                          (declare (not safe))
                                          (error '"bad hash table test function; expected procedure"
                                                 _test66890_))
                                        (if (let ((__tmp69504
                                                   (let ()
                                                     (declare (not safe))
                                                     (procedure?
                                                      _hash66892_))))
                                              (declare (not safe))
                                              (not __tmp69504))
                                            (let ()
                                              (declare (not safe))
                                              (error '"bad hash table hash function; expected procedure"
                                                     _hash66892_))
                                            (let ()
                                              (declare (not safe))
                                              (_make66904_
                                               make-generic-hash-table
                                               true
                                               _hash66892_
                                               _test66890_))))))))))))))
    (define make-hash-table__@
      (lambda (_keys6685866985_ . _args66987_)
        (apply make-hash-table__%
               _keys6685866985_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6685866985_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6685866985_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6685866985_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6685866985_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6685866985_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6685866985_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6685866985_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6685866985_
                  'weak-values:
                  absent-value))
               _args66987_)))
    (define make-hash-table
      (lambda _args6686766993_
        (apply keyword-dispatch
               '#(#f
                  #f
                  weak-values:
                  #f
                  #f
                  test:
                  #f
                  #f
                  #f
                  hash:
                  #f
                  #f
                  size:
                  #f
                  #f
                  #f
                  #f
                  #f
                  #f
                  #f
                  seed:
                  #f
                  #f
                  #f
                  weak-keys:
                  #f
                  #f
                  #f
                  #f
                  #f
                  #f
                  check:
                  #f
                  #f
                  lock:
                  #f
                  #f
                  #f
                  #f
                  #f)
               make-hash-table__@
               _args6686766993_)))
    (define make-hash-table-eq
      (lambda _args66855_ (apply make-hash-table 'test: eq? _args66855_)))
    (define make-hash-table-eqv
      (lambda _args66853_ (apply make-hash-table 'test: eqv? _args66853_)))
    (define make-hash-table-symbolic
      (lambda _args66851_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args66851_)))
    (define make-hash-table-string
      (lambda _args66849_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args66849_)))
    (define list->hash-table
      (lambda (_lst66846_ . _args66847_)
        (let ((__tmp69505
               (apply make-hash-table 'size: (length _lst66846_) _args66847_)))
          (declare (not safe))
          (list->hash-table! _lst66846_ __tmp69505))))
    (define list->hash-table-eq
      (lambda (_lst66843_ . _args66844_)
        (let ((__tmp69506
               (apply make-hash-table-eq
                      'size:
                      (length _lst66843_)
                      _args66844_)))
          (declare (not safe))
          (list->hash-table! _lst66843_ __tmp69506))))
    (define list->hash-table-eqv
      (lambda (_lst66840_ . _args66841_)
        (let ((__tmp69507
               (apply make-hash-table-eqv
                      'size:
                      (length _lst66840_)
                      _args66841_)))
          (declare (not safe))
          (list->hash-table! _lst66840_ __tmp69507))))
    (define list->hash-table-symbolic
      (lambda (_lst66837_ . _args66838_)
        (let ((__tmp69508
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst66837_)
                      _args66838_)))
          (declare (not safe))
          (list->hash-table! _lst66837_ __tmp69508))))
    (define list->hash-table-string
      (lambda (_lst66834_ . _args66835_)
        (let ((__tmp69509
               (apply make-hash-table-string
                      'size:
                      (length _lst66834_)
                      _args66835_)))
          (declare (not safe))
          (list->hash-table! _lst66834_ __tmp69509))))
    (define list->hash-table!
      (lambda (_lst66801_ _h66802_)
        (for-each
         (lambda (_el66804_)
           (let* ((_el6680566812_ _el66804_)
                  (_E6680766816_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el6680566812_))))
                  (_K6680866822_
                   (lambda (_v66819_ _k66820_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h66802_ _k66820_ _v66819_)))))
             (if (let () (declare (not safe)) (##pair? _el6680566812_))
                 (let ((_hd6680966825_
                        (let () (declare (not safe)) (##car _el6680566812_)))
                       (_tl6681066827_
                        (let () (declare (not safe)) (##cdr _el6680566812_))))
                   (let* ((_k66830_ _hd6680966825_) (_v66832_ _tl6681066827_))
                     (declare (not safe))
                     (_K6680866822_ _v66832_ _k66830_)))
                 (let () (declare (not safe)) (_E6680766816_)))))
         _lst66801_)
        _h66802_))
    (define plist->hash-table
      (lambda (_lst66798_ . _args66799_)
        (let ((__tmp69510
               (apply make-hash-table 'size: (length _lst66798_) _args66799_)))
          (declare (not safe))
          (plist->hash-table! _lst66798_ __tmp69510))))
    (define plist->hash-table-eq
      (lambda (_lst66795_ . _args66796_)
        (let ((__tmp69511
               (apply make-hash-table-eq
                      'size:
                      (length _lst66795_)
                      _args66796_)))
          (declare (not safe))
          (plist->hash-table! _lst66795_ __tmp69511))))
    (define plist->hash-table-eqv
      (lambda (_lst66792_ . _args66793_)
        (let ((__tmp69512
               (apply make-hash-table-eqv
                      'size:
                      (length _lst66792_)
                      _args66793_)))
          (declare (not safe))
          (plist->hash-table! _lst66792_ __tmp69512))))
    (define plist->hash-table-symbolic
      (lambda (_lst66789_ . _args66790_)
        (let ((__tmp69513
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst66789_)
                      _args66790_)))
          (declare (not safe))
          (plist->hash-table! _lst66789_ __tmp69513))))
    (define plist->hash-table-string
      (lambda (_lst66786_ . _args66787_)
        (let ((__tmp69514
               (apply make-hash-table-string
                      'size:
                      (length _lst66786_)
                      _args66787_)))
          (declare (not safe))
          (plist->hash-table! _lst66786_ __tmp69514))))
    (define plist->hash-table!
      (lambda (_lst66726_ _h66727_)
        (let _loop66729_ ((_rest66731_ _lst66726_))
          (let* ((_rest6673266744_ _rest66731_)
                 (_else6673566752_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst66726_)))))
            (let ((_K6673866767_
                   (lambda (_rest66763_ _val66764_ _key66765_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h66727_ _key66765_ _val66764_))
                     (let () (declare (not safe)) (_loop66729_ _rest66763_))))
                  (_K6673766757_ (lambda () _h66727_)))
              (let ((_try-match6673466760_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest6673266744_))
                           (let () (declare (not safe)) (_K6673766757_))
                           (let () (declare (not safe)) (_else6673566752_))))))
                (if (let () (declare (not safe)) (##pair? _rest6673266744_))
                    (let ((_tl6674066772_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest6673266744_)))
                          (_hd6673966770_
                           (let ()
                             (declare (not safe))
                             (##car _rest6673266744_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl6674066772_))
                          (let ((_tl6674266779_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl6674066772_)))
                                (_hd6674166777_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl6674066772_))))
                            (let ((_key66775_ _hd6673966770_)
                                  (_val66782_ _hd6674166777_)
                                  (_rest66784_ _tl6674266779_))
                              (let ()
                                (declare (not safe))
                                (_K6673866767_
                                 _rest66784_
                                 _val66782_
                                 _key66775_))))
                          (let () (declare (not safe)) (_else6673566752_))))
                    (let ()
                      (declare (not safe))
                      (_try-match6673466760_)))))))))
    (define hash-length
      (lambda (_h66722_)
        (let ((_h66724_
               (if (and (let () (declare (not safe)) (##structure? _h66722_))
                        (let ((__tmp69515
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h66722_))))
                          (declare (not safe))
                          (eq? __tmp69515 HashTable::t)))
                   _h66722_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h66722_)))))
          (declare (not safe))
          (&HashTable-length _h66724_))))
    (define &hash-length
      (lambda (_h66720_)
        (let () (declare (not safe)) (&HashTable-length _h66720_))))
    (define hash-ref__%
      (lambda (_h66702_ _key66703_ _default66704_)
        (let ((_h66706_
               (if (and (let () (declare (not safe)) (##structure? _h66702_))
                        (let ((__tmp69516
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h66702_))))
                          (declare (not safe))
                          (eq? __tmp69516 HashTable::t)))
                   _h66702_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h66702_)))))
          (declare (not safe))
          (&hash-ref__% _h66706_ _key66703_ _default66704_))))
    (define hash-ref__0
      (lambda (_h66711_ _key66712_)
        (let ((_default66714_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h66711_ _key66712_ _default66714_))))
    (define hash-ref
      (lambda _g69518_
        (let ((_g69517_ (let () (declare (not safe)) (##length _g69518_))))
          (cond ((let () (declare (not safe)) (##fx= _g69517_ 2))
                 (apply (lambda (_h66711_ _key66712_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h66711_ _key66712_)))
                        _g69518_))
                ((let () (declare (not safe)) (##fx= _g69517_ 3))
                 (apply (lambda (_h66716_ _key66717_ _default66718_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h66716_ _key66717_ _default66718_)))
                        _g69518_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g69518_))))))
    (define &hash-ref__%
      (lambda (_h66683_ _key66684_ _default66685_)
        (let ((_result66687_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h66683_ _key66684_ _default66685_))))
          (if (let ((__tmp69519 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result66687_ __tmp69519))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h66683_
                 'key:
                 _key66684_))
              _result66687_))))
    (define &hash-ref__0
      (lambda (_h66692_ _key66693_)
        (let ((_default66695_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h66692_ _key66693_ _default66695_))))
    (define &hash-ref
      (lambda _g69521_
        (let ((_g69520_ (let () (declare (not safe)) (##length _g69521_))))
          (cond ((let () (declare (not safe)) (##fx= _g69520_ 2))
                 (apply (lambda (_h66692_ _key66693_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h66692_ _key66693_)))
                        _g69521_))
                ((let () (declare (not safe)) (##fx= _g69520_ 3))
                 (apply (lambda (_h66697_ _key66698_ _default66699_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h66697_ _key66698_ _default66699_)))
                        _g69521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g69521_))))))
    (define hash-get
      (lambda (_h66677_ _key66678_)
        (let ((_h66680_
               (if (and (let () (declare (not safe)) (##structure? _h66677_))
                        (let ((__tmp69522
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h66677_))))
                          (declare (not safe))
                          (eq? __tmp69522 HashTable::t)))
                   _h66677_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h66677_)))))
          (declare (not safe))
          (&hash-get _h66680_ _key66678_))))
    (define &hash-get
      (lambda (_h66674_ _key66675_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h66674_ _key66675_ '#f))))
    (define hash-put!
      (lambda (_h66668_ _key66669_ _value66670_)
        (let ((_h66672_
               (if (and (let () (declare (not safe)) (##structure? _h66668_))
                        (let ((__tmp69523
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h66668_))))
                          (declare (not safe))
                          (eq? __tmp69523 HashTable::t)))
                   _h66668_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h66668_)))))
          (declare (not safe))
          (&HashTable-set! _h66672_ _key66669_ _value66670_))))
    (define &hash-put!
      (lambda (_h66664_ _key66665_ _value66666_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h66664_ _key66665_ _value66666_))))
    (define hash-update!__%
      (lambda (_h66643_ _key66644_ _update66645_ _default66646_)
        (let ((_h66648_
               (if (and (let () (declare (not safe)) (##structure? _h66643_))
                        (let ((__tmp69524
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h66643_))))
                          (declare (not safe))
                          (eq? __tmp69524 HashTable::t)))
                   _h66643_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h66643_)))))
          (declare (not safe))
          (&HashTable-update!
           _h66648_
           _key66644_
           _update66645_
           _default66646_))))
    (define hash-update!__0
      (lambda (_h66653_ _key66654_ _update66655_)
        (let ((_default66657_ '#!void))
          (declare (not safe))
          (hash-update!__% _h66653_ _key66654_ _update66655_ _default66657_))))
    (define hash-update!
      (lambda _g69526_
        (let ((_g69525_ (let () (declare (not safe)) (##length _g69526_))))
          (cond ((let () (declare (not safe)) (##fx= _g69525_ 3))
                 (apply (lambda (_h66653_ _key66654_ _update66655_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h66653_
                             _key66654_
                             _update66655_)))
                        _g69526_))
                ((let () (declare (not safe)) (##fx= _g69525_ 4))
                 (apply (lambda (_h66659_
                                 _key66660_
                                 _update66661_
                                 _default66662_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h66659_
                             _key66660_
                             _update66661_
                             _default66662_)))
                        _g69526_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g69526_))))))
    (define &hash-update!__%
      (lambda (_h66623_ _key66624_ _update66625_ _default66626_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h66623_
           _key66624_
           _update66625_
           _default66626_))))
    (define &hash-update!__0
      (lambda (_h66631_ _key66632_ _update66633_)
        (let ((_default66635_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h66631_
           _key66632_
           _update66633_
           _default66635_))))
    (define &hash-update!
      (lambda _g69528_
        (let ((_g69527_ (let () (declare (not safe)) (##length _g69528_))))
          (cond ((let () (declare (not safe)) (##fx= _g69527_ 3))
                 (apply (lambda (_h66631_ _key66632_ _update66633_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h66631_
                             _key66632_
                             _update66633_)))
                        _g69528_))
                ((let () (declare (not safe)) (##fx= _g69527_ 4))
                 (apply (lambda (_h66637_
                                 _key66638_
                                 _update66639_
                                 _default66640_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h66637_
                             _key66638_
                             _update66639_
                             _default66640_)))
                        _g69528_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g69528_))))))
    (define hash-remove!
      (lambda (_h66617_ _key66618_)
        (let ((_h66620_
               (if (and (let () (declare (not safe)) (##structure? _h66617_))
                        (let ((__tmp69529
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h66617_))))
                          (declare (not safe))
                          (eq? __tmp69529 HashTable::t)))
                   _h66617_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h66617_)))))
          (declare (not safe))
          (&HashTable-delete! _h66620_ _key66618_))))
    (define &hash-remove!
      (lambda (_h66614_ _key66615_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h66614_ _key66615_))))
    (define hash-key?
      (lambda (_h66609_ _k66610_)
        (let ((_h66612_
               (if (and (let () (declare (not safe)) (##structure? _h66609_))
                        (let ((__tmp69530
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h66609_))))
                          (declare (not safe))
                          (eq? __tmp69530 HashTable::t)))
                   _h66609_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h66609_)))))
          (declare (not safe))
          (&hash-key? _h66612_ _k66610_))))
    (define &hash-key?
      (lambda (_h66606_ _k66607_)
        (let ((__tmp69531
               (let ((__tmp69532
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h66606_ _k66607_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp69532 absent-value))))
          (declare (not safe))
          (not __tmp69531))))
    (define hash->list
      (lambda (_h66602_)
        (let ((_h66604_
               (if (and (let () (declare (not safe)) (##structure? _h66602_))
                        (let ((__tmp69533
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h66602_))))
                          (declare (not safe))
                          (eq? __tmp69533 HashTable::t)))
                   _h66602_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h66602_)))))
          (declare (not safe))
          (&hash->list _h66604_))))
    (define &hash->list
      (lambda (_h66595_)
        (let ((_lst66597_ '()))
          (let ((__tmp69534
                 (lambda (_k66599_ _v66600_)
                   (set! _lst66597_
                         (let ((__tmp69535
                                (let ()
                                  (declare (not safe))
                                  (cons _k66599_ _v66600_))))
                           (declare (not safe))
                           (cons __tmp69535 _lst66597_))))))
            (declare (not safe))
            (&HashTable-for-each _h66595_ __tmp69534))
          _lst66597_)))
    (define hash->plist
      (lambda (_h66591_)
        (let ((_h66593_
               (if (and (let () (declare (not safe)) (##structure? _h66591_))
                        (let ((__tmp69536
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h66591_))))
                          (declare (not safe))
                          (eq? __tmp69536 HashTable::t)))
                   _h66591_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h66591_)))))
          (declare (not safe))
          (&hash->plist _h66593_))))
    (define &hash->plist
      (lambda (_h66584_)
        (let ((_lst66586_ '()))
          (let ((__tmp69537
                 (lambda (_k66588_ _v66589_)
                   (set! _lst66586_
                         (let ((__tmp69538
                                (let ()
                                  (declare (not safe))
                                  (cons _v66589_ _lst66586_))))
                           (declare (not safe))
                           (cons _k66588_ __tmp69538))))))
            (declare (not safe))
            (&HashTable-for-each _h66584_ __tmp69537))
          _lst66586_)))
    (define hash-for-each
      (lambda (_proc66581_ _h66582_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h66582_ _proc66581_))))
    (define hash-map
      (lambda (_proc66573_ _h66574_)
        (let ((_result66576_ '()))
          (let ((__tmp69539
                 (lambda (_k66578_ _v66579_)
                   (set! _result66576_
                         (let ((__tmp69540 (_proc66573_ _k66578_ _v66579_)))
                           (declare (not safe))
                           (cons __tmp69540 _result66576_))))))
            (declare (not safe))
            (HashTable-for-each _h66574_ __tmp69539))
          _result66576_)))
    (define hash-fold
      (lambda (_proc66564_ _iv66565_ _h66566_)
        (let ((_result66568_ _iv66565_))
          (let ((__tmp69541
                 (lambda (_k66570_ _v66571_)
                   (set! _result66568_
                         (_proc66564_ _k66570_ _v66571_ _result66568_)))))
            (declare (not safe))
            (HashTable-for-each _h66566_ __tmp69541))
          _result66568_)))
    (define hash-find__%
      (lambda (_proc66540_ _h66541_ _default-value66542_)
        (call-with-current-continuation
         (lambda (_return66544_)
           (let ((__tmp69542
                  (lambda (_k66546_ _v66547_)
                    (let ((_$e66549_ (_proc66540_ _k66546_ _v66547_)))
                      (if _$e66549_ (_return66544_ _$e66549_) '#!void)))))
             (declare (not safe))
             (HashTable-for-each _h66541_ __tmp69542))
           _default-value66542_))))
    (define hash-find__0
      (lambda (_proc66555_ _h66556_)
        (let ((_default-value66558_ '#f))
          (declare (not safe))
          (hash-find__% _proc66555_ _h66556_ _default-value66558_))))
    (define hash-find
      (lambda _g69544_
        (let ((_g69543_ (let () (declare (not safe)) (##length _g69544_))))
          (cond ((let () (declare (not safe)) (##fx= _g69543_ 2))
                 (apply (lambda (_proc66555_ _h66556_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc66555_ _h66556_)))
                        _g69544_))
                ((let () (declare (not safe)) (##fx= _g69543_ 3))
                 (apply (lambda (_proc66560_ _h66561_ _default-value66562_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc66560_
                             _h66561_
                             _default-value66562_)))
                        _g69544_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g69544_))))))
    (define hash-keys
      (lambda (_h66535_)
        (let ((_h66537_
               (if (and (let () (declare (not safe)) (##structure? _h66535_))
                        (let ((__tmp69545
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h66535_))))
                          (declare (not safe))
                          (eq? __tmp69545 HashTable::t)))
                   _h66535_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h66535_)))))
          (declare (not safe))
          (&hash-keys _h66537_))))
    (define &hash-keys
      (lambda (_h66528_)
        (let ((_result66530_ '()))
          (let ((__tmp69546
                 (lambda (_k66532_ _v66533_)
                   (set! _result66530_
                         (let ()
                           (declare (not safe))
                           (cons _k66532_ _result66530_))))))
            (declare (not safe))
            (&HashTable-for-each _h66528_ __tmp69546))
          _result66530_)))
    (define hash-values
      (lambda (_h66524_)
        (let ((_h66526_
               (if (and (let () (declare (not safe)) (##structure? _h66524_))
                        (let ((__tmp69547
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h66524_))))
                          (declare (not safe))
                          (eq? __tmp69547 HashTable::t)))
                   _h66524_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h66524_)))))
          (declare (not safe))
          (&hash-values _h66526_))))
    (define &hash-values
      (lambda (_h66517_)
        (let ((_result66519_ '()))
          (let ((__tmp69548
                 (lambda (_k66521_ _v66522_)
                   (set! _result66519_
                         (let ()
                           (declare (not safe))
                           (cons _v66522_ _result66519_))))))
            (declare (not safe))
            (&HashTable-for-each _h66517_ __tmp69548))
          _result66519_)))
    (define hash-copy
      (lambda (_h66513_)
        (let ((_h66515_
               (if (and (let () (declare (not safe)) (##structure? _h66513_))
                        (let ((__tmp69549
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h66513_))))
                          (declare (not safe))
                          (eq? __tmp69549 HashTable::t)))
                   _h66513_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h66513_)))))
          (declare (not safe))
          (&HashTable-copy _h66515_))))
    (define &hash-copy
      (lambda (_h66511_)
        (let () (declare (not safe)) (&HashTable-copy _h66511_))))
    (define hash-merge
      (lambda (_h66506_ . _rest66507_)
        (let ((_copy66509_ (let () (declare (not safe)) (hash-copy _h66506_))))
          (apply hash-merge! _copy66509_ _rest66507_)
          _copy66509_)))
    (define hash-merge!
      (lambda (_h66496_ . _rest66497_)
        (let ((_h66499_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h66496_))))
          (for-each
           (lambda (_hr66501_)
             (let ((__tmp69550
                    (lambda (_k66503_ _v66504_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h66499_ _k66503_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h66499_ _k66503_ _v66504_))))))
               (declare (not safe))
               (hash-for-each __tmp69550 _hr66501_)))
           _rest66497_)
          _h66499_)))))
