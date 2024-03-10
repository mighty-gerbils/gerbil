(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1710106261)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp72432 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp72432
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args72415_
        (apply make-instance UnboundKeyError::t _$args72415_)))
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
      (lambda (_where72289_ _message72290_ . _irritants72291_)
        (let ((__tmp72433
               (let ((__obj72429
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj72429
                  _message72290_
                  'where:
                  _where72289_
                  'irritants:
                  _irritants72291_)
                 __obj72429)))
          (declare (not safe))
          (raise __tmp72433))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp72438 (list interface-instance::t))
            (__tmp72434
             (let ((__tmp72437
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72435
                    (let ((__tmp72436
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72436 '()))))
               (declare (not safe))
               (cons __tmp72437 __tmp72435))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp72438
         '(ref set! update! delete! for-each length copy clear)
         __tmp72434
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
      (let ((__tmp72443 (list interface-instance::t))
            (__tmp72439
             (let ((__tmp72442
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72440
                    (let ((__tmp72441
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72441 '()))))
               (declare (not safe))
               (cons __tmp72442 __tmp72440))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp72443
         '(begin-read! end-read! begin-write! end-write!)
         __tmp72439
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
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'ref gc-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'set! gc-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'update! gc-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'delete! gc-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'for-each gc-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'length gc-table-length))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'copy gc-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'clear! gc-table-clear!))
    (define gambit-table-update!
      (lambda (_table72282_ _key72283_ _update72284_ _default72285_)
        (let ((_result72287_
               (table-ref _table72282_ _key72283_ _default72285_)))
          (table-set!
           _table72282_
           _key72283_
           (_update72284_ _default72285_)))))
    (define gambit-table-for-each
      (lambda (_table72279_ _proc72280_)
        (table-for-each _proc72280_ _table72279_)))
    (define gambit-table-clear!
      (lambda (_table72277_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table72277_ '0 '5 '#f '#f))))
    (let ((__tmp72444 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72444 'ref table-ref))
    (let ((__tmp72445 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72445 'set! table-set!))
    (let ((__tmp72446 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72446 'update! gambit-table-update!))
    (let ((__tmp72447 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72447 'delete! table-set!))
    (let ((__tmp72448 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72448 'for-each gambit-table-for-each))
    (let ((__tmp72449 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72449 'length table-length))
    (let ((__tmp72450 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72450 'copy table-copy))
    (let ((__tmp72451 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72451 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots72259_ '(table count free hash test seed))
             (_slot-vector72261_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots72259_))))
             (_slot-table72268_
              (let ((_slot-table72263_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot72265_ _field72266_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72263_
                      _slot72265_
                      _field72266_))
                   (let ((__tmp72452
                          (let ()
                            (declare (not safe))
                            (symbol->keyword _slot72265_))))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72263_
                      __tmp72452
                      _field72266_)))
                 _slots72259_
                 (iota (length _slots72259_) '1))
                _slot-table72263_))
             (_flags72270_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields72272_ '#())
             (_properties72274_
              (let ((__tmp72455
                     (let ((__tmp72456
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots72259_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp72456)))
                    (__tmp72453
                     (let ((__tmp72454
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp72454 '()))))
                (declare (not safe))
                (cons __tmp72455 __tmp72453))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags72270_
           __table::t
           _fields72272_
           '()
           _slot-vector72261_
           _slot-table72268_
           _properties72274_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_slots72241_ '(gcht immediate))
             (_slot-vector72243_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots72241_))))
             (_slot-table72250_
              (let ((_slot-table72245_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot72247_ _field72248_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72245_
                      _slot72247_
                      _field72248_))
                   (let ((__tmp72457
                          (let ()
                            (declare (not safe))
                            (symbol->keyword _slot72247_))))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72245_
                      __tmp72457
                      _field72248_)))
                 _slots72241_
                 (iota (length _slots72241_) '1))
                _slot-table72245_))
             (_flags72252_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields72254_ '#())
             (_properties72256_
              (let ((__tmp72460
                     (let ((__tmp72461
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots72241_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp72461)))
                    (__tmp72458
                     (let ((__tmp72459
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp72459 '()))))
                (declare (not safe))
                (cons __tmp72460 __tmp72458))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'gc-hash-table
           _flags72252_
           __gc-table::t
           _fields72254_
           '()
           _slot-vector72243_
           _slot-table72250_
           _properties72256_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp72466 (list))
            (__tmp72462
             (let ((__tmp72465
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72463
                    (let ((__tmp72464
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72464 '()))))
               (declare (not safe))
               (cons __tmp72465 __tmp72463))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp72466
         '(table lock)
         __tmp72462
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args72238_
        (apply make-instance locked-hash-table::t _$args72238_)))
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
      (let ((__tmp72471 (list))
            (__tmp72467
             (let ((__tmp72470
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72468
                    (let ((__tmp72469
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72469 '()))))
               (declare (not safe))
               (cons __tmp72470 __tmp72468))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp72471
         '(table key-check)
         __tmp72467
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args72235_
        (apply make-instance checked-hash-table::t _$args72235_)))
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
      (let ((__tmp72474 (list hash-table::t))
            (__tmp72472
             (let ((__tmp72473
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72473 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp72474
         '()
         __tmp72472
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args72232_
        (apply make-instance eq-hash-table::t _$args72232_)))
    (define eqv-hash-table::t
      (let ((__tmp72477 (list hash-table::t))
            (__tmp72475
             (let ((__tmp72476
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72476 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp72477
         '()
         __tmp72475
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args72229_
        (apply make-instance eqv-hash-table::t _$args72229_)))
    (define symbol-hash-table::t
      (let ((__tmp72480 (list hash-table::t))
            (__tmp72478
             (let ((__tmp72479
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72479 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp72480
         '()
         __tmp72478
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args72226_
        (apply make-instance symbol-hash-table::t _$args72226_)))
    (define string-hash-table::t
      (let ((__tmp72483 (list hash-table::t))
            (__tmp72481
             (let ((__tmp72482
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72482 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp72483
         '()
         __tmp72481
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args72223_
        (apply make-instance string-hash-table::t _$args72223_)))
    (define immediate-hash-table::t
      (let ((__tmp72486 (list hash-table::t))
            (__tmp72484
             (let ((__tmp72485
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72485 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table
         'hash-table
         __tmp72486
         '()
         __tmp72484
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _$args72220_
        (apply make-instance immediate-hash-table::t _$args72220_)))
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
    (let ()
      (declare (not safe))
      (bind-method!__0 immediate-hash-table::t 'ref immediate-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 immediate-hash-table::t 'set! immediate-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       immediate-hash-table::t
       'update!
       immediate-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       immediate-hash-table::t
       'delete!
       immediate-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'ref gc-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'set! gc-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'update! gc-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'delete! gc-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'for-each gc-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'length gc-table-length))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'copy gc-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'clear! gc-table-clear!))
    (define hash-table?
      (lambda (_obj72218_)
        (if (let () (declare (not safe)) (##structure? _obj72218_))
            (let ((__tmp72487
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj72218_))))
              (declare (not safe))
              (eq? __tmp72487 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj72213_)
        (let ((_$e72215_
               (if (let () (declare (not safe)) (##structure? _obj72213_))
                   (let ((__tmp72488
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj72213_))))
                     (declare (not safe))
                     (eq? __tmp72488 HashTable::t))
                   '#f)))
          (if _$e72215_
              _$e72215_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj72213_))))))
    (define HashTable-ref
      (lambda (_h72207_ _key72208_ _default72209_)
        (let ((_h72211_
               (if (and (let () (declare (not safe)) (##structure? _h72207_))
                        (let ((__tmp72489
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72207_))))
                          (declare (not safe))
                          (eq? __tmp72489 HashTable::t)))
                   _h72207_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72207_)))))
          (declare (not safe))
          (&HashTable-ref _h72211_ _key72208_ _default72209_))))
    (define &HashTable-ref
      (lambda (_h72202_ _key72203_ _default72204_)
        (declare (not safe))
        ((##unchecked-structure-ref _h72202_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h72202_ '1 interface-instance::t '#f)
         _key72203_
         _default72204_)))
    (define HashTable-set!
      (lambda (_h72196_ _key72197_ _value72198_)
        (let ((_h72200_
               (if (and (let () (declare (not safe)) (##structure? _h72196_))
                        (let ((__tmp72490
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72196_))))
                          (declare (not safe))
                          (eq? __tmp72490 HashTable::t)))
                   _h72196_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72196_)))))
          (declare (not safe))
          (&HashTable-set! _h72200_ _key72197_ _value72198_))))
    (define &HashTable-set!
      (lambda (_h72191_ _key72192_ _value72193_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72191_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h72191_ '1 interface-instance::t '#f)
           _key72192_
           _value72193_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h72184_ _key72185_ _update72186_ _default72187_)
        (let ((_h72189_
               (if (and (let () (declare (not safe)) (##structure? _h72184_))
                        (let ((__tmp72491
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72184_))))
                          (declare (not safe))
                          (eq? __tmp72491 HashTable::t)))
                   _h72184_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72184_)))))
          (declare (not safe))
          (&HashTable-update!
           _h72189_
           _key72185_
           _update72186_
           _default72187_))))
    (define &HashTable-update!
      (lambda (_h72178_ _key72179_ _update72180_ _default72181_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72178_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h72178_ '1 interface-instance::t '#f)
           _key72179_
           _update72180_
           _default72181_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h72173_ _key72174_)
        (let ((_h72176_
               (if (and (let () (declare (not safe)) (##structure? _h72173_))
                        (let ((__tmp72492
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72173_))))
                          (declare (not safe))
                          (eq? __tmp72492 HashTable::t)))
                   _h72173_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72173_)))))
          (declare (not safe))
          (&HashTable-delete! _h72176_ _key72174_))))
    (define &HashTable-delete!
      (lambda (_h72169_ _key72170_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72169_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h72169_ '1 interface-instance::t '#f)
           _key72170_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h72164_ _proc72165_)
        (let ((_h72167_
               (if (and (let () (declare (not safe)) (##structure? _h72164_))
                        (let ((__tmp72493
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72164_))))
                          (declare (not safe))
                          (eq? __tmp72493 HashTable::t)))
                   _h72164_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72164_)))))
          (declare (not safe))
          (&HashTable-for-each _h72167_ _proc72165_))))
    (define &HashTable-for-each
      (lambda (_h72160_ _proc72161_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72160_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h72160_ '1 interface-instance::t '#f)
           _proc72161_)
          '#!void)))
    (define HashTable-length
      (lambda (_h72156_)
        (let ((_h72158_
               (if (and (let () (declare (not safe)) (##structure? _h72156_))
                        (let ((__tmp72494
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72156_))))
                          (declare (not safe))
                          (eq? __tmp72494 HashTable::t)))
                   _h72156_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72156_)))))
          (declare (not safe))
          (&HashTable-length _h72158_))))
    (define &HashTable-length
      (lambda (_h72153_)
        (declare (not safe))
        ((##unchecked-structure-ref _h72153_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h72153_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h72149_)
        (let ((_h72151_
               (if (and (let () (declare (not safe)) (##structure? _h72149_))
                        (let ((__tmp72495
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72149_))))
                          (declare (not safe))
                          (eq? __tmp72495 HashTable::t)))
                   _h72149_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72149_)))))
          (declare (not safe))
          (&HashTable-copy _h72151_))))
    (define &HashTable-copy
      (lambda (_h72146_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h72146_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h72146_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h72142_)
        (let ((_h72144_
               (if (and (let () (declare (not safe)) (##structure? _h72142_))
                        (let ((__tmp72496
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72142_))))
                          (declare (not safe))
                          (eq? __tmp72496 HashTable::t)))
                   _h72142_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72142_)))))
          (declare (not safe))
          (&HashTable-clear! _h72144_))))
    (define &HashTable-clear!
      (lambda (_h72139_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72139_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h72139_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl72136_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72136_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72136_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl72133_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72133_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72133_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl72130_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72130_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72130_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl72127_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72127_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72127_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref69140_
      (lambda (_self72114_ _key72116_ _default72117_)
        (let ((_h72119_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72114_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72121_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72114_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l72121_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h72119_ _key72116_ _default72117_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l72121_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref69140_
       '#f))
    (define _locked-hash-table::set!69142_
      (lambda (_self71978_ _key71980_ _value71981_)
        (let ((_h71983_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71978_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71985_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71978_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71985_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h71983_ _key71980_ _value71981_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71985_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!69142_
       '#f))
    (define _locked-hash-table::update!69144_
      (lambda (_self71841_ _key71843_ _update71844_ _default71845_)
        (let ((_h71847_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71841_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71849_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71841_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71849_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h71847_
                _key71843_
                _update71844_
                _default71845_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71849_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!69144_
       '#f))
    (define _locked-hash-table::delete!69146_
      (lambda (_self71706_ _key71708_)
        (let ((_h71710_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71706_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71712_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71706_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71712_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h71710_ _key71708_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71712_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!69146_
       '#f))
    (define _locked-hash-table::for-each69148_
      (lambda (_self71571_ _proc71573_)
        (let ((_h71575_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71571_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71577_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71571_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71577_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h71575_ _proc71573_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71577_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each69148_
       '#f))
    (define _locked-hash-table::length69150_
      (lambda (_self71437_)
        (let ((_h71440_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71437_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71442_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71437_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71442_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h71440_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71442_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length69150_
       '#f))
    (define _locked-hash-table::copy69152_
      (lambda (_self71303_)
        (let ((_h71306_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71303_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71308_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71303_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71308_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h71306_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71308_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy69152_
       '#f))
    (define _locked-hash-table::clear!69154_
      (lambda (_self71169_)
        (let ((_h71172_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71169_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71174_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71169_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71174_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h71172_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71174_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!69154_
       '#f))
    (let ((__tmp72497 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72497 'begin-read! mutex-lock!))
    (let ((__tmp72498 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72498 'end-read! mutex-unlock!))
    (let ((__tmp72499 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72499 'begin-write! mutex-lock!))
    (let ((__tmp72500 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72500 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref69432_
      (lambda (_self71033_ _key71034_ _default71035_)
        (let ((_h71037_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71033_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71039_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71033_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7104171043_)
             (if (_g7104171043_ _key71034_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71034_))))
           _key?71039_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h71037_ _key71034_ _default71035_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref69432_
       '#f))
    (define _checked-hash-table::set!69434_
      (lambda (_self70897_ _key70898_ _value70899_)
        (let ((_h70901_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70897_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70903_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70897_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7090570907_)
             (if (_g7090570907_ _key70898_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key70898_))))
           _key?70903_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h70901_ _key70898_ _value70899_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!69434_
       '#f))
    (define _checked-hash-table::update!69436_
      (lambda (_self70762_ _key70763_ _update70764_ _default70765_)
        (let ((_h70767_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70762_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70769_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70762_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?70772_)
             (if (_key?70772_ _key70763_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key70763_)))
             (if (let () (declare (not safe)) (procedure? _update70764_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update70764_))))
           _key?70769_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h70767_
             _key70763_
             _update70764_
             _default70765_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!69436_
       '#f))
    (define _checked-hash-table::delete!69438_
      (lambda (_self70627_ _key70628_)
        (let ((_h70630_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70627_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70632_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70627_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7063470636_)
             (if (_g7063470636_ _key70628_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key70628_))))
           _key?70632_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h70630_ _key70628_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!69438_
       '#f))
    (define _checked-hash-table::for-each69440_
      (lambda (_self70495_ _proc70496_)
        (let ((_h70498_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70495_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70500_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70495_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g72501_)
             (if (let () (declare (not safe)) (procedure? _proc70496_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc70496_))))
           _key?70500_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h70498_ _proc70496_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each69440_
       '#f))
    (define _checked-hash-table::length69442_
      (lambda (_self70365_)
        (let ((_h70367_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70365_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70369_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70365_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h70367_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length69442_
       '#f))
    (define _checked-hash-table::copy69444_
      (lambda (_self70235_)
        (let ((_h70237_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70235_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70239_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70235_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h70237_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy69444_
       '#f))
    (define _checked-hash-table::clear!69446_
      (lambda (_self70105_)
        (let ((_h70107_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70105_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70109_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70105_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h70107_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!69446_
       '#f))
    (define make-generic-hash-table
      (lambda (_table69975_
               _count69976_
               _free69977_
               _hash69978_
               _test69979_
               _seed69980_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table69975_
           _count69976_
           _free69977_
           _hash69978_
           _test69979_
           _seed69980_))))
    (define make-hash-table__%
      (lambda (_g72502_
               _size-hint6982069830_
               _seed6982169832_
               _test6982269834_
               _hash6982369836_
               _lock6982469838_
               _check6982569840_
               _weak-keys6982669842_
               _weak-values6982769844_)
        (let* ((_size-hint69847_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint6982069830_ absent-value))
                    '#f
                    _size-hint6982069830_))
               (_seed69849_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed6982169832_ absent-value))
                    '#f
                    _seed6982169832_))
               (_test69851_
                (if (let ()
                      (declare (not safe))
                      (eq? _test6982269834_ absent-value))
                    equal?
                    _test6982269834_))
               (_hash69853_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash6982369836_ absent-value))
                    '#f
                    _hash6982369836_))
               (_lock69855_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock6982469838_ absent-value))
                    '#f
                    _lock6982469838_))
               (_check69857_
                (if (let ()
                      (declare (not safe))
                      (eq? _check6982569840_ absent-value))
                    '#f
                    _check6982569840_))
               (_weak-keys69859_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys6982669842_ absent-value))
                    '#f
                    _weak-keys6982669842_))
               (_weak-values69861_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values6982769844_ absent-value))
                    '#f
                    _weak-values6982769844_)))
          (letrec ((_table-seed69863_
                    (lambda ()
                      (if (let () (declare (not safe)) (fixnum? _seed69849_))
                          _seed69849_
                          (random-integer (macro-max-fixnum32)))))
                   (_wrap-lock69864_
                    (lambda (_ht69958_)
                      (if _lock69855_
                          (let ((__tmp72503
                                 (let ((__tmp72504
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock69855_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht69958_
                                    __tmp72504))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp72503))
                          _ht69958_)))
                   (_wrap-checked69865_
                    (lambda (_ht69955_ _implicit69956_)
                      (if _check69857_
                          (let ((__tmp72505
                                 (let ((__tmp72506
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check69857_))
                                            _check69857_
                                            _implicit69956_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht69955_
                                    __tmp72506))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp72505))
                          _ht69955_)))
                   (_make69866_
                    (lambda (_kons69943_ _key?69944_ _hash69945_ _test69946_)
                      (let* ((_size69948_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint69847_)))
                             (_table69950_
                              (make-vector _size69948_ (macro-unused-obj)))
                             (_ht69952_
                              (let ((__tmp72507
                                     (_kons69943_
                                      _table69950_
                                      '0
                                      (fxquotient _size69948_ '2)
                                      _hash69945_
                                      _test69946_
                                      (let ()
                                        (declare (not safe))
                                        (_table-seed69863_)))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72507))))
                        (let ((__tmp72508
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock69864_ _ht69952_))))
                          (declare (not safe))
                          (_wrap-checked69865_ __tmp72508 _key?69944_)))))
                   (_make-gc-hash-table69867_
                    (lambda ()
                      (let* ((_ht69941_
                              (let ((__tmp72509
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _size-hint69847_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72509)))
                             (__tmp72510
                              (let ()
                                (declare (not safe))
                                (_wrap-lock69864_ _ht69941_))))
                        (declare (not safe))
                        (_wrap-checked69865_ __tmp72510 true))))
                   (_make-gambit-table69868_
                    (lambda ()
                      (let* ((_size69925_
                              (let ((_$e69922_ _size-hint69847_))
                                (if _$e69922_ _$e69922_ (macro-absent-obj))))
                             (_test69930_
                              (let ((_$e69927_ _test69851_))
                                (if _$e69927_ _$e69927_ equal?)))
                             (_hash69935_
                              (let ((_$e69932_ _hash69853_))
                                (if _$e69932_
                                    _$e69932_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test69930_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test69930_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht69937_
                              (let ((__tmp72511
                                     (make-table
                                      'size:
                                      _size69925_
                                      'test:
                                      _test69930_
                                      'hash:
                                      _hash69935_
                                      'weak-keys:
                                      _weak-keys69859_
                                      'weak-values:
                                      _weak-values69861_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72511))))
                        (let ((__tmp72512
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock69864_ _ht69937_))))
                          (declare (not safe))
                          (_wrap-checked69865_ __tmp72512 true))))))
            (if (or _weak-keys69859_ _weak-values69861_)
                (let () (declare (not safe)) (_make-gambit-table69868_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test69851_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test69851_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash69853_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash69853_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash69853_ eq-hash)))
                         (let () (declare (not safe)) (not _seed69849_)))
                    (let () (declare (not safe)) (_make-gc-hash-table69867_))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test69851_ eq?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test69851_ ##eq?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash69853_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash69853_ eq?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash69853_ eq-hash))))
                        (let ()
                          (declare (not safe))
                          (_make69866_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test69851_ eqv?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test69851_ ##eqv?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _hash69853_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash69853_ eqv?-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash69853_ eqv-hash))))
                            (let ()
                              (declare (not safe))
                              (_make69866_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test69851_ eq?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test69851_ ##eq?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash69853_ symbolic-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash69853_ ##symbol-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make69866_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (let ()
                                               (declare (not safe))
                                               (eq? _test69851_ eq?))
                                             (let ()
                                               (declare (not safe))
                                               (eq? _test69851_ ##eq?)))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash69853_ immediate-hash)))
                                    (let ()
                                      (declare (not safe))
                                      (_make69866_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (let ()
                                                   (declare (not safe))
                                                   (eq? _test69851_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test69851_ ##equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test69851_ string=?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test69851_
                                                        ##string=?)))
                                             (or (let ()
                                                   (declare (not safe))
                                                   (eq? _hash69853_
                                                        string-hash))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _hash69853_
                                                        ##string=?-hash))))
                                        (let ()
                                          (declare (not safe))
                                          (_make69866_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (let ()
                                                   (declare (not safe))
                                                   (eq? _test69851_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _hash69853_)))
                                            (let ()
                                              (declare (not safe))
                                              (_make69866_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp72514
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _test69851_))))
                                                  (declare (not safe))
                                                  (not __tmp72514))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _test69851_))
                                                (if (let ((__tmp72513
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _hash69853_))))
                                                      (declare (not safe))
                                                      (not __tmp72513))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _hash69853_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make69866_
                                                       make-generic-hash-table
                                                       true
                                                       _hash69853_
                                                       _test69851_))))))))))))))))
    (define make-hash-table__@
      (lambda (_keys6981969964_ . _args69966_)
        (apply make-hash-table__%
               _keys6981969964_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6981969964_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6981969964_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6981969964_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6981969964_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6981969964_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6981969964_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6981969964_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6981969964_
                  'weak-values:
                  absent-value))
               _args69966_)))
    (define make-hash-table
      (lambda _args6982869972_
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
               _args6982869972_)))
    (define make-hash-table-eq
      (lambda _args69816_ (apply make-hash-table 'test: eq? _args69816_)))
    (define make-hash-table-eqv
      (lambda _args69814_ (apply make-hash-table 'test: eqv? _args69814_)))
    (define make-hash-table-symbolic
      (lambda _args69812_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args69812_)))
    (define make-hash-table-string
      (lambda _args69810_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args69810_)))
    (define make-hash-table-immediate
      (lambda _args69808_
        (apply make-hash-table 'test: eq? 'hash: immediate-hash _args69808_)))
    (define list->hash-table
      (lambda (_lst69805_ . _args69806_)
        (let ((__tmp72515
               (apply make-hash-table 'size: (length _lst69805_) _args69806_)))
          (declare (not safe))
          (list->hash-table! _lst69805_ __tmp72515))))
    (define list->hash-table-eq
      (lambda (_lst69802_ . _args69803_)
        (let ((__tmp72516
               (apply make-hash-table-eq
                      'size:
                      (length _lst69802_)
                      _args69803_)))
          (declare (not safe))
          (list->hash-table! _lst69802_ __tmp72516))))
    (define list->hash-table-eqv
      (lambda (_lst69799_ . _args69800_)
        (let ((__tmp72517
               (apply make-hash-table-eqv
                      'size:
                      (length _lst69799_)
                      _args69800_)))
          (declare (not safe))
          (list->hash-table! _lst69799_ __tmp72517))))
    (define list->hash-table-symbolic
      (lambda (_lst69796_ . _args69797_)
        (let ((__tmp72518
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst69796_)
                      _args69797_)))
          (declare (not safe))
          (list->hash-table! _lst69796_ __tmp72518))))
    (define list->hash-table-string
      (lambda (_lst69793_ . _args69794_)
        (let ((__tmp72519
               (apply make-hash-table-string
                      'size:
                      (length _lst69793_)
                      _args69794_)))
          (declare (not safe))
          (list->hash-table! _lst69793_ __tmp72519))))
    (define list->hash-table-immediate
      (lambda (_lst69790_ . _args69791_)
        (let ((__tmp72520
               (apply make-hash-table-immediate
                      'size:
                      (length _lst69790_)
                      _args69791_)))
          (declare (not safe))
          (list->hash-table! _lst69790_ __tmp72520))))
    (define list->hash-table!
      (lambda (_lst69757_ _h69758_)
        (for-each
         (lambda (_el69760_)
           (let* ((_el6976169768_ _el69760_)
                  (_E6976369772_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el6976169768_))))
                  (_K6976469778_
                   (lambda (_v69775_ _k69776_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h69758_ _k69776_ _v69775_)))))
             (if (let () (declare (not safe)) (##pair? _el6976169768_))
                 (let ((_hd6976569781_
                        (let () (declare (not safe)) (##car _el6976169768_)))
                       (_tl6976669783_
                        (let () (declare (not safe)) (##cdr _el6976169768_))))
                   (let* ((_k69786_ _hd6976569781_) (_v69788_ _tl6976669783_))
                     (declare (not safe))
                     (_K6976469778_ _v69788_ _k69786_)))
                 (let () (declare (not safe)) (_E6976369772_)))))
         _lst69757_)
        _h69758_))
    (define plist->hash-table
      (lambda (_lst69754_ . _args69755_)
        (let ((__tmp72521
               (apply make-hash-table 'size: (length _lst69754_) _args69755_)))
          (declare (not safe))
          (plist->hash-table! _lst69754_ __tmp72521))))
    (define plist->hash-table-eq
      (lambda (_lst69751_ . _args69752_)
        (let ((__tmp72522
               (apply make-hash-table-eq
                      'size:
                      (length _lst69751_)
                      _args69752_)))
          (declare (not safe))
          (plist->hash-table! _lst69751_ __tmp72522))))
    (define plist->hash-table-eqv
      (lambda (_lst69748_ . _args69749_)
        (let ((__tmp72523
               (apply make-hash-table-eqv
                      'size:
                      (length _lst69748_)
                      _args69749_)))
          (declare (not safe))
          (plist->hash-table! _lst69748_ __tmp72523))))
    (define plist->hash-table-symbolic
      (lambda (_lst69745_ . _args69746_)
        (let ((__tmp72524
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst69745_)
                      _args69746_)))
          (declare (not safe))
          (plist->hash-table! _lst69745_ __tmp72524))))
    (define plist->hash-table-string
      (lambda (_lst69742_ . _args69743_)
        (let ((__tmp72525
               (apply make-hash-table-string
                      'size:
                      (length _lst69742_)
                      _args69743_)))
          (declare (not safe))
          (plist->hash-table! _lst69742_ __tmp72525))))
    (define plist->hash-table-immediate
      (lambda (_lst69739_ . _args69740_)
        (let ((__tmp72526
               (apply make-hash-table-immediate
                      'size:
                      (length _lst69739_)
                      _args69740_)))
          (declare (not safe))
          (plist->hash-table! _lst69739_ __tmp72526))))
    (define plist->hash-table!
      (lambda (_lst69679_ _h69680_)
        (let _loop69682_ ((_rest69684_ _lst69679_))
          (let* ((_rest6968569697_ _rest69684_)
                 (_else6968869705_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst69679_)))))
            (let ((_K6969169720_
                   (lambda (_rest69716_ _val69717_ _key69718_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h69680_ _key69718_ _val69717_))
                     (let () (declare (not safe)) (_loop69682_ _rest69716_))))
                  (_K6969069710_ (lambda () _h69680_)))
              (let ((_try-match6968769713_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest6968569697_))
                           (let () (declare (not safe)) (_K6969069710_))
                           (let () (declare (not safe)) (_else6968869705_))))))
                (if (let () (declare (not safe)) (##pair? _rest6968569697_))
                    (let ((_tl6969369725_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest6968569697_)))
                          (_hd6969269723_
                           (let ()
                             (declare (not safe))
                             (##car _rest6968569697_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl6969369725_))
                          (let ((_tl6969569732_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl6969369725_)))
                                (_hd6969469730_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl6969369725_))))
                            (let ((_key69728_ _hd6969269723_)
                                  (_val69735_ _hd6969469730_)
                                  (_rest69737_ _tl6969569732_))
                              (let ()
                                (declare (not safe))
                                (_K6969169720_
                                 _rest69737_
                                 _val69735_
                                 _key69728_))))
                          (let () (declare (not safe)) (_else6968869705_))))
                    (let ()
                      (declare (not safe))
                      (_try-match6968769713_)))))))))
    (define hash-length
      (lambda (_h69675_)
        (let ((_h69677_
               (if (and (let () (declare (not safe)) (##structure? _h69675_))
                        (let ((__tmp72527
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69675_))))
                          (declare (not safe))
                          (eq? __tmp72527 HashTable::t)))
                   _h69675_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69675_)))))
          (declare (not safe))
          (&HashTable-length _h69677_))))
    (define &hash-length
      (lambda (_h69673_)
        (let () (declare (not safe)) (&HashTable-length _h69673_))))
    (define hash-ref__%
      (lambda (_h69655_ _key69656_ _default69657_)
        (let ((_h69659_
               (if (and (let () (declare (not safe)) (##structure? _h69655_))
                        (let ((__tmp72528
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69655_))))
                          (declare (not safe))
                          (eq? __tmp72528 HashTable::t)))
                   _h69655_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69655_)))))
          (declare (not safe))
          (&hash-ref__% _h69659_ _key69656_ _default69657_))))
    (define hash-ref__0
      (lambda (_h69664_ _key69665_)
        (let ((_default69667_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h69664_ _key69665_ _default69667_))))
    (define hash-ref
      (lambda _g72530_
        (let ((_g72529_ (let () (declare (not safe)) (##length _g72530_))))
          (cond ((let () (declare (not safe)) (##fx= _g72529_ 2))
                 (apply (lambda (_h69664_ _key69665_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h69664_ _key69665_)))
                        _g72530_))
                ((let () (declare (not safe)) (##fx= _g72529_ 3))
                 (apply (lambda (_h69669_ _key69670_ _default69671_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h69669_ _key69670_ _default69671_)))
                        _g72530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g72530_))))))
    (define &hash-ref__%
      (lambda (_h69636_ _key69637_ _default69638_)
        (let ((_result69640_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h69636_ _key69637_ _default69638_))))
          (if (let ((__tmp72531 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result69640_ __tmp72531))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h69636_
                 'key:
                 _key69637_))
              _result69640_))))
    (define &hash-ref__0
      (lambda (_h69645_ _key69646_)
        (let ((_default69648_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h69645_ _key69646_ _default69648_))))
    (define &hash-ref
      (lambda _g72533_
        (let ((_g72532_ (let () (declare (not safe)) (##length _g72533_))))
          (cond ((let () (declare (not safe)) (##fx= _g72532_ 2))
                 (apply (lambda (_h69645_ _key69646_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h69645_ _key69646_)))
                        _g72533_))
                ((let () (declare (not safe)) (##fx= _g72532_ 3))
                 (apply (lambda (_h69650_ _key69651_ _default69652_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h69650_ _key69651_ _default69652_)))
                        _g72533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g72533_))))))
    (define hash-get
      (lambda (_h69630_ _key69631_)
        (let ((_h69633_
               (if (and (let () (declare (not safe)) (##structure? _h69630_))
                        (let ((__tmp72534
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69630_))))
                          (declare (not safe))
                          (eq? __tmp72534 HashTable::t)))
                   _h69630_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69630_)))))
          (declare (not safe))
          (&hash-get _h69633_ _key69631_))))
    (define &hash-get
      (lambda (_h69627_ _key69628_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h69627_ _key69628_ '#f))))
    (define hash-put!
      (lambda (_h69621_ _key69622_ _value69623_)
        (let ((_h69625_
               (if (and (let () (declare (not safe)) (##structure? _h69621_))
                        (let ((__tmp72535
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69621_))))
                          (declare (not safe))
                          (eq? __tmp72535 HashTable::t)))
                   _h69621_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69621_)))))
          (declare (not safe))
          (&HashTable-set! _h69625_ _key69622_ _value69623_))))
    (define &hash-put!
      (lambda (_h69617_ _key69618_ _value69619_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h69617_ _key69618_ _value69619_))))
    (define hash-update!__%
      (lambda (_h69596_ _key69597_ _update69598_ _default69599_)
        (let ((_h69601_
               (if (and (let () (declare (not safe)) (##structure? _h69596_))
                        (let ((__tmp72536
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69596_))))
                          (declare (not safe))
                          (eq? __tmp72536 HashTable::t)))
                   _h69596_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69596_)))))
          (declare (not safe))
          (&HashTable-update!
           _h69601_
           _key69597_
           _update69598_
           _default69599_))))
    (define hash-update!__0
      (lambda (_h69606_ _key69607_ _update69608_)
        (let ((_default69610_ '#!void))
          (declare (not safe))
          (hash-update!__% _h69606_ _key69607_ _update69608_ _default69610_))))
    (define hash-update!
      (lambda _g72538_
        (let ((_g72537_ (let () (declare (not safe)) (##length _g72538_))))
          (cond ((let () (declare (not safe)) (##fx= _g72537_ 3))
                 (apply (lambda (_h69606_ _key69607_ _update69608_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h69606_
                             _key69607_
                             _update69608_)))
                        _g72538_))
                ((let () (declare (not safe)) (##fx= _g72537_ 4))
                 (apply (lambda (_h69612_
                                 _key69613_
                                 _update69614_
                                 _default69615_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h69612_
                             _key69613_
                             _update69614_
                             _default69615_)))
                        _g72538_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g72538_))))))
    (define &hash-update!__%
      (lambda (_h69576_ _key69577_ _update69578_ _default69579_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h69576_
           _key69577_
           _update69578_
           _default69579_))))
    (define &hash-update!__0
      (lambda (_h69584_ _key69585_ _update69586_)
        (let ((_default69588_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h69584_
           _key69585_
           _update69586_
           _default69588_))))
    (define &hash-update!
      (lambda _g72540_
        (let ((_g72539_ (let () (declare (not safe)) (##length _g72540_))))
          (cond ((let () (declare (not safe)) (##fx= _g72539_ 3))
                 (apply (lambda (_h69584_ _key69585_ _update69586_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h69584_
                             _key69585_
                             _update69586_)))
                        _g72540_))
                ((let () (declare (not safe)) (##fx= _g72539_ 4))
                 (apply (lambda (_h69590_
                                 _key69591_
                                 _update69592_
                                 _default69593_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h69590_
                             _key69591_
                             _update69592_
                             _default69593_)))
                        _g72540_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g72540_))))))
    (define hash-remove!
      (lambda (_h69570_ _key69571_)
        (let ((_h69573_
               (if (and (let () (declare (not safe)) (##structure? _h69570_))
                        (let ((__tmp72541
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69570_))))
                          (declare (not safe))
                          (eq? __tmp72541 HashTable::t)))
                   _h69570_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69570_)))))
          (declare (not safe))
          (&HashTable-delete! _h69573_ _key69571_))))
    (define &hash-remove!
      (lambda (_h69567_ _key69568_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h69567_ _key69568_))))
    (define hash-key?
      (lambda (_h69562_ _k69563_)
        (let ((_h69565_
               (if (and (let () (declare (not safe)) (##structure? _h69562_))
                        (let ((__tmp72542
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69562_))))
                          (declare (not safe))
                          (eq? __tmp72542 HashTable::t)))
                   _h69562_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69562_)))))
          (declare (not safe))
          (&hash-key? _h69565_ _k69563_))))
    (define &hash-key?
      (lambda (_h69559_ _k69560_)
        (let ((__tmp72543
               (let ((__tmp72544
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h69559_ _k69560_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp72544 absent-value))))
          (declare (not safe))
          (not __tmp72543))))
    (define hash->list
      (lambda (_h69555_)
        (let ((_h69557_
               (if (and (let () (declare (not safe)) (##structure? _h69555_))
                        (let ((__tmp72545
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69555_))))
                          (declare (not safe))
                          (eq? __tmp72545 HashTable::t)))
                   _h69555_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69555_)))))
          (declare (not safe))
          (&hash->list _h69557_))))
    (define &hash->list
      (lambda (_h69548_)
        (let ((_lst69550_ '()))
          (let ((__tmp72546
                 (lambda (_k69552_ _v69553_)
                   (set! _lst69550_
                         (let ((__tmp72547
                                (let ()
                                  (declare (not safe))
                                  (cons _k69552_ _v69553_))))
                           (declare (not safe))
                           (cons __tmp72547 _lst69550_))))))
            (declare (not safe))
            (&HashTable-for-each _h69548_ __tmp72546))
          _lst69550_)))
    (define hash->plist
      (lambda (_h69544_)
        (let ((_h69546_
               (if (and (let () (declare (not safe)) (##structure? _h69544_))
                        (let ((__tmp72548
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69544_))))
                          (declare (not safe))
                          (eq? __tmp72548 HashTable::t)))
                   _h69544_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69544_)))))
          (declare (not safe))
          (&hash->plist _h69546_))))
    (define &hash->plist
      (lambda (_h69537_)
        (let ((_lst69539_ '()))
          (let ((__tmp72549
                 (lambda (_k69541_ _v69542_)
                   (set! _lst69539_
                         (let ((__tmp72550
                                (let ()
                                  (declare (not safe))
                                  (cons _v69542_ _lst69539_))))
                           (declare (not safe))
                           (cons _k69541_ __tmp72550))))))
            (declare (not safe))
            (&HashTable-for-each _h69537_ __tmp72549))
          _lst69539_)))
    (define hash-for-each
      (lambda (_proc69534_ _h69535_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h69535_ _proc69534_))))
    (define hash-map
      (lambda (_proc69526_ _h69527_)
        (let ((_result69529_ '()))
          (let ((__tmp72551
                 (lambda (_k69531_ _v69532_)
                   (set! _result69529_
                         (let ((__tmp72552 (_proc69526_ _k69531_ _v69532_)))
                           (declare (not safe))
                           (cons __tmp72552 _result69529_))))))
            (declare (not safe))
            (HashTable-for-each _h69527_ __tmp72551))
          _result69529_)))
    (define hash-fold
      (lambda (_proc69517_ _iv69518_ _h69519_)
        (let ((_result69521_ _iv69518_))
          (let ((__tmp72553
                 (lambda (_k69523_ _v69524_)
                   (set! _result69521_
                         (_proc69517_ _k69523_ _v69524_ _result69521_)))))
            (declare (not safe))
            (HashTable-for-each _h69519_ __tmp72553))
          _result69521_)))
    (define hash-find__%
      (lambda (_proc69493_ _h69494_ _default-value69495_)
        (call/cc (lambda (_return69497_)
                   (let ((__tmp72554
                          (lambda (_k69499_ _v69500_)
                            (let ((_$e69502_ (_proc69493_ _k69499_ _v69500_)))
                              (if _$e69502_
                                  (_return69497_ _$e69502_)
                                  '#!void)))))
                     (declare (not safe))
                     (HashTable-for-each _h69494_ __tmp72554))
                   _default-value69495_))))
    (define hash-find__0
      (lambda (_proc69508_ _h69509_)
        (let ((_default-value69511_ '#f))
          (declare (not safe))
          (hash-find__% _proc69508_ _h69509_ _default-value69511_))))
    (define hash-find
      (lambda _g72556_
        (let ((_g72555_ (let () (declare (not safe)) (##length _g72556_))))
          (cond ((let () (declare (not safe)) (##fx= _g72555_ 2))
                 (apply (lambda (_proc69508_ _h69509_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc69508_ _h69509_)))
                        _g72556_))
                ((let () (declare (not safe)) (##fx= _g72555_ 3))
                 (apply (lambda (_proc69513_ _h69514_ _default-value69515_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc69513_
                             _h69514_
                             _default-value69515_)))
                        _g72556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g72556_))))))
    (define hash-keys
      (lambda (_h69488_)
        (let ((_h69490_
               (if (and (let () (declare (not safe)) (##structure? _h69488_))
                        (let ((__tmp72557
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69488_))))
                          (declare (not safe))
                          (eq? __tmp72557 HashTable::t)))
                   _h69488_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69488_)))))
          (declare (not safe))
          (&hash-keys _h69490_))))
    (define &hash-keys
      (lambda (_h69481_)
        (let ((_result69483_ '()))
          (let ((__tmp72558
                 (lambda (_k69485_ _v69486_)
                   (set! _result69483_
                         (let ()
                           (declare (not safe))
                           (cons _k69485_ _result69483_))))))
            (declare (not safe))
            (&HashTable-for-each _h69481_ __tmp72558))
          _result69483_)))
    (define hash-values
      (lambda (_h69477_)
        (let ((_h69479_
               (if (and (let () (declare (not safe)) (##structure? _h69477_))
                        (let ((__tmp72559
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69477_))))
                          (declare (not safe))
                          (eq? __tmp72559 HashTable::t)))
                   _h69477_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69477_)))))
          (declare (not safe))
          (&hash-values _h69479_))))
    (define &hash-values
      (lambda (_h69470_)
        (let ((_result69472_ '()))
          (let ((__tmp72560
                 (lambda (_k69474_ _v69475_)
                   (set! _result69472_
                         (let ()
                           (declare (not safe))
                           (cons _v69475_ _result69472_))))))
            (declare (not safe))
            (&HashTable-for-each _h69470_ __tmp72560))
          _result69472_)))
    (define hash-copy
      (lambda (_h69466_)
        (let ((_h69468_
               (if (and (let () (declare (not safe)) (##structure? _h69466_))
                        (let ((__tmp72561
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69466_))))
                          (declare (not safe))
                          (eq? __tmp72561 HashTable::t)))
                   _h69466_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69466_)))))
          (declare (not safe))
          (&HashTable-copy _h69468_))))
    (define &hash-copy
      (lambda (_h69464_)
        (let () (declare (not safe)) (&HashTable-copy _h69464_))))
    (define hash-merge
      (lambda (_h69459_ . _rest69460_)
        (let ((_copy69462_ (let () (declare (not safe)) (hash-copy _h69459_))))
          (apply hash-merge! _copy69462_ _rest69460_)
          _copy69462_)))
    (define hash-merge!
      (lambda (_h69449_ . _rest69450_)
        (let ((_h69452_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h69449_))))
          (for-each
           (lambda (_hr69454_)
             (let ((__tmp72562
                    (lambda (_k69456_ _v69457_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h69452_ _k69456_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h69452_ _k69456_ _v69457_))))))
               (declare (not safe))
               (hash-for-each __tmp72562 _hr69454_)))
           _rest69450_)
          _h69452_)))))
