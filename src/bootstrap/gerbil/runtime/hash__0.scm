(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1709111635)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp72436 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp72436
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args72419_
        (apply make-instance UnboundKeyError::t _$args72419_)))
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
      (lambda (_where72293_ _message72294_ . _irritants72295_)
        (raise (let ((__obj72433
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj72433
                  _message72294_
                  'where:
                  _where72293_
                  'irritants:
                  _irritants72295_)
                 __obj72433))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp72441 (list interface-instance::t))
            (__tmp72437
             (let ((__tmp72440
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72438
                    (let ((__tmp72439
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72439 '()))))
               (declare (not safe))
               (cons __tmp72440 __tmp72438))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp72441
         '(ref set! update! delete! for-each length copy clear)
         __tmp72437
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
      (let ((__tmp72446 (list interface-instance::t))
            (__tmp72442
             (let ((__tmp72445
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72443
                    (let ((__tmp72444
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72444 '()))))
               (declare (not safe))
               (cons __tmp72445 __tmp72443))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp72446
         '(begin-read! end-read! begin-write! end-write!)
         __tmp72442
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
      (lambda (_table72286_ _key72287_ _update72288_ _default72289_)
        (let ((_result72291_
               (table-ref _table72286_ _key72287_ _default72289_)))
          (table-set!
           _table72286_
           _key72287_
           (_update72288_ _default72289_)))))
    (define gambit-table-for-each
      (lambda (_table72283_ _proc72284_)
        (table-for-each _proc72284_ _table72283_)))
    (define gambit-table-clear!
      (lambda (_table72281_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table72281_ '0 '5 '#f '#f))))
    (let ((__tmp72447 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72447 'ref table-ref))
    (let ((__tmp72448 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72448 'set! table-set!))
    (let ((__tmp72449 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72449 'update! gambit-table-update!))
    (let ((__tmp72450 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72450 'delete! table-set!))
    (let ((__tmp72451 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72451 'for-each gambit-table-for-each))
    (let ((__tmp72452 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72452 'length table-length))
    (let ((__tmp72453 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72453 'copy table-copy))
    (let ((__tmp72454 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72454 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots72263_ '(table count free hash test seed))
             (_slot-vector72265_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots72263_))))
             (_slot-table72272_
              (let ((_slot-table72267_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot72269_ _field72270_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72267_
                      _slot72269_
                      _field72270_))
                   (let ((__tmp72455 (symbol->keyword _slot72269_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72267_
                      __tmp72455
                      _field72270_)))
                 _slots72263_
                 (let ((__tmp72456 (length _slots72263_)))
                   (declare (not safe))
                   (iota__1 __tmp72456 '1)))
                _slot-table72267_))
             (_flags72274_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields72276_ '#())
             (_properties72278_
              (let ((__tmp72459
                     (let ((__tmp72460
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots72263_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp72460)))
                    (__tmp72457
                     (let ((__tmp72458
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp72458 '()))))
                (declare (not safe))
                (cons __tmp72459 __tmp72457))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags72274_
           __table::t
           _fields72276_
           '()
           _slot-vector72265_
           _slot-table72272_
           _properties72278_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp72465 (list))
            (__tmp72461
             (let ((__tmp72464
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72462
                    (let ((__tmp72463
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72463 '()))))
               (declare (not safe))
               (cons __tmp72464 __tmp72462))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp72465
         '(table lock)
         __tmp72461
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args72260_
        (apply make-instance locked-hash-table::t _$args72260_)))
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
      (let ((__tmp72470 (list))
            (__tmp72466
             (let ((__tmp72469
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72467
                    (let ((__tmp72468
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72468 '()))))
               (declare (not safe))
               (cons __tmp72469 __tmp72467))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp72470
         '(table key-check)
         __tmp72466
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args72257_
        (apply make-instance checked-hash-table::t _$args72257_)))
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
      (let ((__tmp72473 (list hash-table::t))
            (__tmp72471
             (let ((__tmp72472
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72472 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp72473
         '()
         __tmp72471
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args72254_
        (apply make-instance eq-hash-table::t _$args72254_)))
    (define eqv-hash-table::t
      (let ((__tmp72476 (list hash-table::t))
            (__tmp72474
             (let ((__tmp72475
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72475 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp72476
         '()
         __tmp72474
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args72251_
        (apply make-instance eqv-hash-table::t _$args72251_)))
    (define symbol-hash-table::t
      (let ((__tmp72479 (list hash-table::t))
            (__tmp72477
             (let ((__tmp72478
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72478 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp72479
         '()
         __tmp72477
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args72248_
        (apply make-instance symbol-hash-table::t _$args72248_)))
    (define string-hash-table::t
      (let ((__tmp72482 (list hash-table::t))
            (__tmp72480
             (let ((__tmp72481
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72481 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp72482
         '()
         __tmp72480
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args72245_
        (apply make-instance string-hash-table::t _$args72245_)))
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
      (lambda (_obj72243_)
        (if (let () (declare (not safe)) (##structure? _obj72243_))
            (let ((__tmp72483
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj72243_))))
              (declare (not safe))
              (eq? __tmp72483 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj72238_)
        (let ((_$e72240_
               (if (let () (declare (not safe)) (##structure? _obj72238_))
                   (let ((__tmp72484
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj72238_))))
                     (declare (not safe))
                     (eq? __tmp72484 HashTable::t))
                   '#f)))
          (if _$e72240_
              _$e72240_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj72238_))))))
    (define HashTable-ref
      (lambda (_h72232_ _key72233_ _default72234_)
        (let ((_h72236_
               (if (and (let () (declare (not safe)) (##structure? _h72232_))
                        (let ((__tmp72485
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72232_))))
                          (declare (not safe))
                          (eq? __tmp72485 HashTable::t)))
                   _h72232_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72232_)))))
          (declare (not safe))
          (&HashTable-ref _h72236_ _key72233_ _default72234_))))
    (define &HashTable-ref
      (lambda (_h72227_ _key72228_ _default72229_)
        (declare (not safe))
        ((##unchecked-structure-ref _h72227_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h72227_ '1 interface-instance::t '#f)
         _key72228_
         _default72229_)))
    (define HashTable-set!
      (lambda (_h72221_ _key72222_ _value72223_)
        (let ((_h72225_
               (if (and (let () (declare (not safe)) (##structure? _h72221_))
                        (let ((__tmp72486
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72221_))))
                          (declare (not safe))
                          (eq? __tmp72486 HashTable::t)))
                   _h72221_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72221_)))))
          (declare (not safe))
          (&HashTable-set! _h72225_ _key72222_ _value72223_))))
    (define &HashTable-set!
      (lambda (_h72216_ _key72217_ _value72218_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72216_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h72216_ '1 interface-instance::t '#f)
           _key72217_
           _value72218_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h72209_ _key72210_ _update72211_ _default72212_)
        (let ((_h72214_
               (if (and (let () (declare (not safe)) (##structure? _h72209_))
                        (let ((__tmp72487
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72209_))))
                          (declare (not safe))
                          (eq? __tmp72487 HashTable::t)))
                   _h72209_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72209_)))))
          (declare (not safe))
          (&HashTable-update!
           _h72214_
           _key72210_
           _update72211_
           _default72212_))))
    (define &HashTable-update!
      (lambda (_h72203_ _key72204_ _update72205_ _default72206_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72203_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h72203_ '1 interface-instance::t '#f)
           _key72204_
           _update72205_
           _default72206_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h72198_ _key72199_)
        (let ((_h72201_
               (if (and (let () (declare (not safe)) (##structure? _h72198_))
                        (let ((__tmp72488
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72198_))))
                          (declare (not safe))
                          (eq? __tmp72488 HashTable::t)))
                   _h72198_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72198_)))))
          (declare (not safe))
          (&HashTable-delete! _h72201_ _key72199_))))
    (define &HashTable-delete!
      (lambda (_h72194_ _key72195_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72194_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h72194_ '1 interface-instance::t '#f)
           _key72195_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h72189_ _proc72190_)
        (let ((_h72192_
               (if (and (let () (declare (not safe)) (##structure? _h72189_))
                        (let ((__tmp72489
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72189_))))
                          (declare (not safe))
                          (eq? __tmp72489 HashTable::t)))
                   _h72189_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72189_)))))
          (declare (not safe))
          (&HashTable-for-each _h72192_ _proc72190_))))
    (define &HashTable-for-each
      (lambda (_h72185_ _proc72186_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72185_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h72185_ '1 interface-instance::t '#f)
           _proc72186_)
          '#!void)))
    (define HashTable-length
      (lambda (_h72181_)
        (let ((_h72183_
               (if (and (let () (declare (not safe)) (##structure? _h72181_))
                        (let ((__tmp72490
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72181_))))
                          (declare (not safe))
                          (eq? __tmp72490 HashTable::t)))
                   _h72181_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72181_)))))
          (declare (not safe))
          (&HashTable-length _h72183_))))
    (define &HashTable-length
      (lambda (_h72178_)
        (declare (not safe))
        ((##unchecked-structure-ref _h72178_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h72178_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h72174_)
        (let ((_h72176_
               (if (and (let () (declare (not safe)) (##structure? _h72174_))
                        (let ((__tmp72491
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72174_))))
                          (declare (not safe))
                          (eq? __tmp72491 HashTable::t)))
                   _h72174_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72174_)))))
          (declare (not safe))
          (&HashTable-copy _h72176_))))
    (define &HashTable-copy
      (lambda (_h72171_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h72171_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h72171_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h72167_)
        (let ((_h72169_
               (if (and (let () (declare (not safe)) (##structure? _h72167_))
                        (let ((__tmp72492
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72167_))))
                          (declare (not safe))
                          (eq? __tmp72492 HashTable::t)))
                   _h72167_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72167_)))))
          (declare (not safe))
          (&HashTable-clear! _h72169_))))
    (define &HashTable-clear!
      (lambda (_h72164_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72164_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h72164_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl72161_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72161_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72161_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl72158_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72158_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72158_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl72155_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72155_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72155_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl72152_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72152_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72152_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref69191_
      (lambda (_self72139_ _key72141_ _default72142_)
        (let ((_h72144_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72139_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72146_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72139_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l72146_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h72144_ _key72141_ _default72142_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l72146_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref69191_
       '#f))
    (define _locked-hash-table::set!69193_
      (lambda (_self72003_ _key72005_ _value72006_)
        (let ((_h72008_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72003_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72010_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72003_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l72010_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h72008_ _key72005_ _value72006_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l72010_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!69193_
       '#f))
    (define _locked-hash-table::update!69195_
      (lambda (_self71866_ _key71868_ _update71869_ _default71870_)
        (let ((_h71872_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71866_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71874_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71866_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71874_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h71872_
                _key71868_
                _update71869_
                _default71870_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71874_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!69195_
       '#f))
    (define _locked-hash-table::delete!69197_
      (lambda (_self71731_ _key71733_)
        (let ((_h71735_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71731_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71737_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71731_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71737_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h71735_ _key71733_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71737_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!69197_
       '#f))
    (define _locked-hash-table::for-each69199_
      (lambda (_self71596_ _proc71598_)
        (let ((_h71600_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71596_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71602_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71596_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71602_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h71600_ _proc71598_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71602_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each69199_
       '#f))
    (define _locked-hash-table::length69201_
      (lambda (_self71462_)
        (let ((_h71465_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71462_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71467_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71462_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71467_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h71465_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71467_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length69201_
       '#f))
    (define _locked-hash-table::copy69203_
      (lambda (_self71328_)
        (let ((_h71331_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71328_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71333_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71328_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71333_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h71331_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71333_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy69203_
       '#f))
    (define _locked-hash-table::clear!69205_
      (lambda (_self71194_)
        (let ((_h71197_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71194_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71199_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71194_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71199_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h71197_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71199_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!69205_
       '#f))
    (let ((__tmp72493 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72493 'begin-read! mutex-lock!))
    (let ((__tmp72494 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72494 'end-read! mutex-unlock!))
    (let ((__tmp72495 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72495 'begin-write! mutex-lock!))
    (let ((__tmp72496 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72496 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref69483_
      (lambda (_self71058_ _key71059_ _default71060_)
        (let ((_h71062_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71058_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71064_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71058_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7106671068_)
             (if (_g7106671068_ _key71059_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71059_))))
           _key?71064_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h71062_ _key71059_ _default71060_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref69483_
       '#f))
    (define _checked-hash-table::set!69485_
      (lambda (_self70922_ _key70923_ _value70924_)
        (let ((_h70926_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70922_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70928_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70922_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7093070932_)
             (if (_g7093070932_ _key70923_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key70923_))))
           _key?70928_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h70926_ _key70923_ _value70924_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!69485_
       '#f))
    (define _checked-hash-table::update!69487_
      (lambda (_self70787_ _key70788_ _update70789_ _default70790_)
        (let ((_h70792_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70787_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70794_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70787_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?70797_)
             (if (_key?70797_ _key70788_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key70788_)))
             (if (let () (declare (not safe)) (procedure? _update70789_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update70789_))))
           _key?70794_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h70792_
             _key70788_
             _update70789_
             _default70790_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!69487_
       '#f))
    (define _checked-hash-table::delete!69489_
      (lambda (_self70652_ _key70653_)
        (let ((_h70655_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70652_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70657_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70652_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7065970661_)
             (if (_g7065970661_ _key70653_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key70653_))))
           _key?70657_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h70655_ _key70653_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!69489_
       '#f))
    (define _checked-hash-table::for-each69491_
      (lambda (_self70520_ _proc70521_)
        (let ((_h70523_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70520_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70525_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70520_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g72497_)
             (if (let () (declare (not safe)) (procedure? _proc70521_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc70521_))))
           _key?70525_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h70523_ _proc70521_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each69491_
       '#f))
    (define _checked-hash-table::length69493_
      (lambda (_self70390_)
        (let ((_h70392_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70390_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70394_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70390_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h70392_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length69493_
       '#f))
    (define _checked-hash-table::copy69495_
      (lambda (_self70260_)
        (let ((_h70262_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70260_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70264_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70260_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h70262_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy69495_
       '#f))
    (define _checked-hash-table::clear!69497_
      (lambda (_self70130_)
        (let ((_h70132_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70130_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70134_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70130_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h70132_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!69497_
       '#f))
    (define make-generic-hash-table
      (lambda (_table70000_
               _count70001_
               _free70002_
               _hash70003_
               _test70004_
               _seed70005_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table70000_
           _count70001_
           _free70002_
           _hash70003_
           _test70004_
           _seed70005_))))
    (define make-hash-table__%
      (lambda (_g72498_
               _size-hint6986369873_
               _seed6986469875_
               _test6986569877_
               _hash6986669879_
               _lock6986769881_
               _check6986869883_
               _weak-keys6986969885_
               _weak-values6987069887_)
        (let* ((_size-hint69890_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint6986369873_ absent-value))
                    '#f
                    _size-hint6986369873_))
               (_seed69892_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed6986469875_ absent-value))
                    (random-integer (macro-max-fixnum32))
                    _seed6986469875_))
               (_test69894_
                (if (let ()
                      (declare (not safe))
                      (eq? _test6986569877_ absent-value))
                    equal?
                    _test6986569877_))
               (_hash69896_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash6986669879_ absent-value))
                    '#f
                    _hash6986669879_))
               (_lock69898_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock6986769881_ absent-value))
                    '#f
                    _lock6986769881_))
               (_check69900_
                (if (let ()
                      (declare (not safe))
                      (eq? _check6986869883_ absent-value))
                    '#f
                    _check6986869883_))
               (_weak-keys69902_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys6986969885_ absent-value))
                    '#f
                    _weak-keys6986969885_))
               (_weak-values69904_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values6987069887_ absent-value))
                    '#f
                    _weak-values6987069887_)))
          (letrec ((_wrap-lock69906_
                    (lambda (_ht69984_)
                      (if _lock69898_
                          (let ((__tmp72499
                                 (let ((__tmp72500
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock69898_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht69984_
                                    __tmp72500))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp72499))
                          _ht69984_)))
                   (_wrap-checked69907_
                    (lambda (_ht69981_ _implicit69982_)
                      (if _check69900_
                          (let ((__tmp72501
                                 (let ((__tmp72502
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check69900_))
                                            _check69900_
                                            _implicit69982_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht69981_
                                    __tmp72502))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp72501))
                          _ht69981_)))
                   (_make69908_
                    (lambda (_kons69969_ _key?69970_ _hash69971_ _test69972_)
                      (let* ((_size69974_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint69890_)))
                             (_table69976_
                              (make-vector _size69974_ (macro-unused-obj)))
                             (_ht69978_
                              (let ((__tmp72503
                                     (_kons69969_
                                      _table69976_
                                      '0
                                      (fxquotient _size69974_ '2)
                                      _hash69971_
                                      _test69972_
                                      _seed69892_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72503))))
                        (let ((__tmp72504
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock69906_ _ht69978_))))
                          (declare (not safe))
                          (_wrap-checked69907_ __tmp72504 _key?69970_)))))
                   (_make-gambit-table69909_
                    (lambda ()
                      (let* ((_size69954_
                              (let ((_$e69951_ _size-hint69890_))
                                (if _$e69951_ _$e69951_ (macro-absent-obj))))
                             (_test69959_
                              (let ((_$e69956_ _test69894_))
                                (if _$e69956_ _$e69956_ equal?)))
                             (_hash69964_
                              (let ((_$e69961_ _hash69896_))
                                (if _$e69961_
                                    _$e69961_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test69959_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test69959_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht69966_
                              (let ((__tmp72505
                                     (make-table
                                      'size:
                                      _size69954_
                                      'test:
                                      _test69959_
                                      'hash:
                                      _hash69964_
                                      'weak-keys:
                                      _weak-keys69902_
                                      'weak-values:
                                      _weak-values69904_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72505))))
                        (let ((__tmp72506
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock69906_ _ht69966_))))
                          (declare (not safe))
                          (_wrap-checked69907_ __tmp72506 true))))))
            (if (or _weak-keys69902_ _weak-values69904_)
                (let () (declare (not safe)) (_make-gambit-table69909_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test69894_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test69894_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash69896_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash69896_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash69896_ eq-hash))))
                    (let ()
                      (declare (not safe))
                      (_make69908_ make-eq-hash-table true eq-hash eq?))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test69894_ eqv?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test69894_ ##eqv?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash69896_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash69896_ eqv?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash69896_ eqv-hash))))
                        (let ()
                          (declare (not safe))
                          (_make69908_ make-eqv-hash-table true eqv-hash eqv?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test69894_ eq?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test69894_ ##eq?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (eq? _hash69896_ symbolic-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash69896_ ##symbol-hash))))
                            (let ()
                              (declare (not safe))
                              (_make69908_
                               make-symbol-hash-table
                               symbolic?
                               symbolic-hash
                               eq?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test69894_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test69894_ ##equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test69894_ string=?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test69894_ ##string=?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash69896_ string-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash69896_ ##string=?-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make69908_
                                   make-string-hash-table
                                   string?
                                   string-hash
                                   ##string=?))
                                (if (and (let ()
                                           (declare (not safe))
                                           (eq? _test69894_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (not _hash69896_)))
                                    (let ()
                                      (declare (not safe))
                                      (_make69908_
                                       make-generic-hash-table
                                       true
                                       equal?-hash
                                       equal?))
                                    (if (let ((__tmp72508
                                               (let ()
                                                 (declare (not safe))
                                                 (procedure? _test69894_))))
                                          (declare (not safe))
                                          (not __tmp72508))
                                        (let ()
                                          (declare (not safe))
                                          (error '"bad hash table test function; expected procedure"
                                                 _test69894_))
                                        (if (let ((__tmp72507
                                                   (let ()
                                                     (declare (not safe))
                                                     (procedure?
                                                      _hash69896_))))
                                              (declare (not safe))
                                              (not __tmp72507))
                                            (let ()
                                              (declare (not safe))
                                              (error '"bad hash table hash function; expected procedure"
                                                     _hash69896_))
                                            (let ()
                                              (declare (not safe))
                                              (_make69908_
                                               make-generic-hash-table
                                               true
                                               _hash69896_
                                               _test69894_))))))))))))))
    (define make-hash-table__@
      (lambda (_keys6986269989_ . _args69991_)
        (apply make-hash-table__%
               _keys6986269989_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6986269989_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6986269989_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6986269989_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6986269989_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6986269989_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6986269989_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6986269989_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6986269989_
                  'weak-values:
                  absent-value))
               _args69991_)))
    (define make-hash-table
      (lambda _args6987169997_
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
               _args6987169997_)))
    (define make-hash-table-eq
      (lambda _args69859_ (apply make-hash-table 'test: eq? _args69859_)))
    (define make-hash-table-eqv
      (lambda _args69857_ (apply make-hash-table 'test: eqv? _args69857_)))
    (define make-hash-table-symbolic
      (lambda _args69855_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args69855_)))
    (define make-hash-table-string
      (lambda _args69853_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args69853_)))
    (define list->hash-table
      (lambda (_lst69850_ . _args69851_)
        (let ((__tmp72509
               (apply make-hash-table 'size: (length _lst69850_) _args69851_)))
          (declare (not safe))
          (list->hash-table! _lst69850_ __tmp72509))))
    (define list->hash-table-eq
      (lambda (_lst69847_ . _args69848_)
        (let ((__tmp72510
               (apply make-hash-table-eq
                      'size:
                      (length _lst69847_)
                      _args69848_)))
          (declare (not safe))
          (list->hash-table! _lst69847_ __tmp72510))))
    (define list->hash-table-eqv
      (lambda (_lst69844_ . _args69845_)
        (let ((__tmp72511
               (apply make-hash-table-eqv
                      'size:
                      (length _lst69844_)
                      _args69845_)))
          (declare (not safe))
          (list->hash-table! _lst69844_ __tmp72511))))
    (define list->hash-table-symbolic
      (lambda (_lst69841_ . _args69842_)
        (let ((__tmp72512
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst69841_)
                      _args69842_)))
          (declare (not safe))
          (list->hash-table! _lst69841_ __tmp72512))))
    (define list->hash-table-string
      (lambda (_lst69838_ . _args69839_)
        (let ((__tmp72513
               (apply make-hash-table-string
                      'size:
                      (length _lst69838_)
                      _args69839_)))
          (declare (not safe))
          (list->hash-table! _lst69838_ __tmp72513))))
    (define list->hash-table!
      (lambda (_lst69805_ _h69806_)
        (for-each
         (lambda (_el69808_)
           (let* ((_el6980969816_ _el69808_)
                  (_E6981169820_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el6980969816_))))
                  (_K6981269826_
                   (lambda (_v69823_ _k69824_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h69806_ _k69824_ _v69823_)))))
             (if (let () (declare (not safe)) (##pair? _el6980969816_))
                 (let ((_hd6981369829_
                        (let () (declare (not safe)) (##car _el6980969816_)))
                       (_tl6981469831_
                        (let () (declare (not safe)) (##cdr _el6980969816_))))
                   (let* ((_k69834_ _hd6981369829_) (_v69836_ _tl6981469831_))
                     (declare (not safe))
                     (_K6981269826_ _v69836_ _k69834_)))
                 (let () (declare (not safe)) (_E6981169820_)))))
         _lst69805_)
        _h69806_))
    (define plist->hash-table
      (lambda (_lst69802_ . _args69803_)
        (let ((__tmp72514
               (apply make-hash-table 'size: (length _lst69802_) _args69803_)))
          (declare (not safe))
          (plist->hash-table! _lst69802_ __tmp72514))))
    (define plist->hash-table-eq
      (lambda (_lst69799_ . _args69800_)
        (let ((__tmp72515
               (apply make-hash-table-eq
                      'size:
                      (length _lst69799_)
                      _args69800_)))
          (declare (not safe))
          (plist->hash-table! _lst69799_ __tmp72515))))
    (define plist->hash-table-eqv
      (lambda (_lst69796_ . _args69797_)
        (let ((__tmp72516
               (apply make-hash-table-eqv
                      'size:
                      (length _lst69796_)
                      _args69797_)))
          (declare (not safe))
          (plist->hash-table! _lst69796_ __tmp72516))))
    (define plist->hash-table-symbolic
      (lambda (_lst69793_ . _args69794_)
        (let ((__tmp72517
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst69793_)
                      _args69794_)))
          (declare (not safe))
          (plist->hash-table! _lst69793_ __tmp72517))))
    (define plist->hash-table-string
      (lambda (_lst69790_ . _args69791_)
        (let ((__tmp72518
               (apply make-hash-table-string
                      'size:
                      (length _lst69790_)
                      _args69791_)))
          (declare (not safe))
          (plist->hash-table! _lst69790_ __tmp72518))))
    (define plist->hash-table!
      (lambda (_lst69730_ _h69731_)
        (let _loop69733_ ((_rest69735_ _lst69730_))
          (let* ((_rest6973669748_ _rest69735_)
                 (_else6973969756_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst69730_)))))
            (let ((_K6974269771_
                   (lambda (_rest69767_ _val69768_ _key69769_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h69731_ _key69769_ _val69768_))
                     (let () (declare (not safe)) (_loop69733_ _rest69767_))))
                  (_K6974169761_ (lambda () _h69731_)))
              (let ((_try-match6973869764_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest6973669748_))
                           (let () (declare (not safe)) (_K6974169761_))
                           (let () (declare (not safe)) (_else6973969756_))))))
                (if (let () (declare (not safe)) (##pair? _rest6973669748_))
                    (let ((_tl6974469776_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest6973669748_)))
                          (_hd6974369774_
                           (let ()
                             (declare (not safe))
                             (##car _rest6973669748_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl6974469776_))
                          (let ((_tl6974669783_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl6974469776_)))
                                (_hd6974569781_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl6974469776_))))
                            (let ((_key69779_ _hd6974369774_)
                                  (_val69786_ _hd6974569781_)
                                  (_rest69788_ _tl6974669783_))
                              (let ()
                                (declare (not safe))
                                (_K6974269771_
                                 _rest69788_
                                 _val69786_
                                 _key69779_))))
                          (let () (declare (not safe)) (_else6973969756_))))
                    (let ()
                      (declare (not safe))
                      (_try-match6973869764_)))))))))
    (define hash-length
      (lambda (_h69726_)
        (let ((_h69728_
               (if (and (let () (declare (not safe)) (##structure? _h69726_))
                        (let ((__tmp72519
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69726_))))
                          (declare (not safe))
                          (eq? __tmp72519 HashTable::t)))
                   _h69726_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69726_)))))
          (declare (not safe))
          (&HashTable-length _h69728_))))
    (define &hash-length
      (lambda (_h69724_)
        (let () (declare (not safe)) (&HashTable-length _h69724_))))
    (define hash-ref__%
      (lambda (_h69706_ _key69707_ _default69708_)
        (let ((_h69710_
               (if (and (let () (declare (not safe)) (##structure? _h69706_))
                        (let ((__tmp72520
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69706_))))
                          (declare (not safe))
                          (eq? __tmp72520 HashTable::t)))
                   _h69706_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69706_)))))
          (declare (not safe))
          (&hash-ref__% _h69710_ _key69707_ _default69708_))))
    (define hash-ref__0
      (lambda (_h69715_ _key69716_)
        (let ((_default69718_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h69715_ _key69716_ _default69718_))))
    (define hash-ref
      (lambda _g72522_
        (let ((_g72521_ (let () (declare (not safe)) (##length _g72522_))))
          (cond ((let () (declare (not safe)) (##fx= _g72521_ 2))
                 (apply (lambda (_h69715_ _key69716_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h69715_ _key69716_)))
                        _g72522_))
                ((let () (declare (not safe)) (##fx= _g72521_ 3))
                 (apply (lambda (_h69720_ _key69721_ _default69722_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h69720_ _key69721_ _default69722_)))
                        _g72522_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g72522_))))))
    (define &hash-ref__%
      (lambda (_h69687_ _key69688_ _default69689_)
        (let ((_result69691_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h69687_ _key69688_ _default69689_))))
          (if (let ((__tmp72523 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result69691_ __tmp72523))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h69687_
                 'key:
                 _key69688_))
              _result69691_))))
    (define &hash-ref__0
      (lambda (_h69696_ _key69697_)
        (let ((_default69699_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h69696_ _key69697_ _default69699_))))
    (define &hash-ref
      (lambda _g72525_
        (let ((_g72524_ (let () (declare (not safe)) (##length _g72525_))))
          (cond ((let () (declare (not safe)) (##fx= _g72524_ 2))
                 (apply (lambda (_h69696_ _key69697_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h69696_ _key69697_)))
                        _g72525_))
                ((let () (declare (not safe)) (##fx= _g72524_ 3))
                 (apply (lambda (_h69701_ _key69702_ _default69703_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h69701_ _key69702_ _default69703_)))
                        _g72525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g72525_))))))
    (define hash-get
      (lambda (_h69681_ _key69682_)
        (let ((_h69684_
               (if (and (let () (declare (not safe)) (##structure? _h69681_))
                        (let ((__tmp72526
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69681_))))
                          (declare (not safe))
                          (eq? __tmp72526 HashTable::t)))
                   _h69681_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69681_)))))
          (declare (not safe))
          (&hash-get _h69684_ _key69682_))))
    (define &hash-get
      (lambda (_h69678_ _key69679_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h69678_ _key69679_ '#f))))
    (define hash-put!
      (lambda (_h69672_ _key69673_ _value69674_)
        (let ((_h69676_
               (if (and (let () (declare (not safe)) (##structure? _h69672_))
                        (let ((__tmp72527
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69672_))))
                          (declare (not safe))
                          (eq? __tmp72527 HashTable::t)))
                   _h69672_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69672_)))))
          (declare (not safe))
          (&HashTable-set! _h69676_ _key69673_ _value69674_))))
    (define &hash-put!
      (lambda (_h69668_ _key69669_ _value69670_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h69668_ _key69669_ _value69670_))))
    (define hash-update!__%
      (lambda (_h69647_ _key69648_ _update69649_ _default69650_)
        (let ((_h69652_
               (if (and (let () (declare (not safe)) (##structure? _h69647_))
                        (let ((__tmp72528
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69647_))))
                          (declare (not safe))
                          (eq? __tmp72528 HashTable::t)))
                   _h69647_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69647_)))))
          (declare (not safe))
          (&HashTable-update!
           _h69652_
           _key69648_
           _update69649_
           _default69650_))))
    (define hash-update!__0
      (lambda (_h69657_ _key69658_ _update69659_)
        (let ((_default69661_ '#!void))
          (declare (not safe))
          (hash-update!__% _h69657_ _key69658_ _update69659_ _default69661_))))
    (define hash-update!
      (lambda _g72530_
        (let ((_g72529_ (let () (declare (not safe)) (##length _g72530_))))
          (cond ((let () (declare (not safe)) (##fx= _g72529_ 3))
                 (apply (lambda (_h69657_ _key69658_ _update69659_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h69657_
                             _key69658_
                             _update69659_)))
                        _g72530_))
                ((let () (declare (not safe)) (##fx= _g72529_ 4))
                 (apply (lambda (_h69663_
                                 _key69664_
                                 _update69665_
                                 _default69666_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h69663_
                             _key69664_
                             _update69665_
                             _default69666_)))
                        _g72530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g72530_))))))
    (define &hash-update!__%
      (lambda (_h69627_ _key69628_ _update69629_ _default69630_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h69627_
           _key69628_
           _update69629_
           _default69630_))))
    (define &hash-update!__0
      (lambda (_h69635_ _key69636_ _update69637_)
        (let ((_default69639_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h69635_
           _key69636_
           _update69637_
           _default69639_))))
    (define &hash-update!
      (lambda _g72532_
        (let ((_g72531_ (let () (declare (not safe)) (##length _g72532_))))
          (cond ((let () (declare (not safe)) (##fx= _g72531_ 3))
                 (apply (lambda (_h69635_ _key69636_ _update69637_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h69635_
                             _key69636_
                             _update69637_)))
                        _g72532_))
                ((let () (declare (not safe)) (##fx= _g72531_ 4))
                 (apply (lambda (_h69641_
                                 _key69642_
                                 _update69643_
                                 _default69644_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h69641_
                             _key69642_
                             _update69643_
                             _default69644_)))
                        _g72532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g72532_))))))
    (define hash-remove!
      (lambda (_h69621_ _key69622_)
        (let ((_h69624_
               (if (and (let () (declare (not safe)) (##structure? _h69621_))
                        (let ((__tmp72533
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69621_))))
                          (declare (not safe))
                          (eq? __tmp72533 HashTable::t)))
                   _h69621_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69621_)))))
          (declare (not safe))
          (&HashTable-delete! _h69624_ _key69622_))))
    (define &hash-remove!
      (lambda (_h69618_ _key69619_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h69618_ _key69619_))))
    (define hash-key?
      (lambda (_h69613_ _k69614_)
        (let ((_h69616_
               (if (and (let () (declare (not safe)) (##structure? _h69613_))
                        (let ((__tmp72534
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69613_))))
                          (declare (not safe))
                          (eq? __tmp72534 HashTable::t)))
                   _h69613_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69613_)))))
          (declare (not safe))
          (&hash-key? _h69616_ _k69614_))))
    (define &hash-key?
      (lambda (_h69610_ _k69611_)
        (let ((__tmp72535
               (let ((__tmp72536
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h69610_ _k69611_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp72536 absent-value))))
          (declare (not safe))
          (not __tmp72535))))
    (define hash->list
      (lambda (_h69606_)
        (let ((_h69608_
               (if (and (let () (declare (not safe)) (##structure? _h69606_))
                        (let ((__tmp72537
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69606_))))
                          (declare (not safe))
                          (eq? __tmp72537 HashTable::t)))
                   _h69606_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69606_)))))
          (declare (not safe))
          (&hash->list _h69608_))))
    (define &hash->list
      (lambda (_h69599_)
        (let ((_lst69601_ '()))
          (let ((__tmp72538
                 (lambda (_k69603_ _v69604_)
                   (set! _lst69601_
                         (let ((__tmp72539
                                (let ()
                                  (declare (not safe))
                                  (cons _k69603_ _v69604_))))
                           (declare (not safe))
                           (cons __tmp72539 _lst69601_))))))
            (declare (not safe))
            (&HashTable-for-each _h69599_ __tmp72538))
          _lst69601_)))
    (define hash->plist
      (lambda (_h69595_)
        (let ((_h69597_
               (if (and (let () (declare (not safe)) (##structure? _h69595_))
                        (let ((__tmp72540
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69595_))))
                          (declare (not safe))
                          (eq? __tmp72540 HashTable::t)))
                   _h69595_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69595_)))))
          (declare (not safe))
          (&hash->plist _h69597_))))
    (define &hash->plist
      (lambda (_h69588_)
        (let ((_lst69590_ '()))
          (let ((__tmp72541
                 (lambda (_k69592_ _v69593_)
                   (set! _lst69590_
                         (let ((__tmp72542
                                (let ()
                                  (declare (not safe))
                                  (cons _v69593_ _lst69590_))))
                           (declare (not safe))
                           (cons _k69592_ __tmp72542))))))
            (declare (not safe))
            (&HashTable-for-each _h69588_ __tmp72541))
          _lst69590_)))
    (define hash-for-each
      (lambda (_proc69585_ _h69586_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h69586_ _proc69585_))))
    (define hash-map
      (lambda (_proc69577_ _h69578_)
        (let ((_result69580_ '()))
          (let ((__tmp72543
                 (lambda (_k69582_ _v69583_)
                   (set! _result69580_
                         (let ((__tmp72544 (_proc69577_ _k69582_ _v69583_)))
                           (declare (not safe))
                           (cons __tmp72544 _result69580_))))))
            (declare (not safe))
            (HashTable-for-each _h69578_ __tmp72543))
          _result69580_)))
    (define hash-fold
      (lambda (_proc69568_ _iv69569_ _h69570_)
        (let ((_result69572_ _iv69569_))
          (let ((__tmp72545
                 (lambda (_k69574_ _v69575_)
                   (set! _result69572_
                         (_proc69568_ _k69574_ _v69575_ _result69572_)))))
            (declare (not safe))
            (HashTable-for-each _h69570_ __tmp72545))
          _result69572_)))
    (define hash-find__%
      (lambda (_proc69544_ _h69545_ _default-value69546_)
        (call-with-current-continuation
         (lambda (_return69548_)
           (let ((__tmp72546
                  (lambda (_k69550_ _v69551_)
                    (let ((_$e69553_ (_proc69544_ _k69550_ _v69551_)))
                      (if _$e69553_ (_return69548_ _$e69553_) '#!void)))))
             (declare (not safe))
             (HashTable-for-each _h69545_ __tmp72546))
           _default-value69546_))))
    (define hash-find__0
      (lambda (_proc69559_ _h69560_)
        (let ((_default-value69562_ '#f))
          (declare (not safe))
          (hash-find__% _proc69559_ _h69560_ _default-value69562_))))
    (define hash-find
      (lambda _g72548_
        (let ((_g72547_ (let () (declare (not safe)) (##length _g72548_))))
          (cond ((let () (declare (not safe)) (##fx= _g72547_ 2))
                 (apply (lambda (_proc69559_ _h69560_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc69559_ _h69560_)))
                        _g72548_))
                ((let () (declare (not safe)) (##fx= _g72547_ 3))
                 (apply (lambda (_proc69564_ _h69565_ _default-value69566_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc69564_
                             _h69565_
                             _default-value69566_)))
                        _g72548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g72548_))))))
    (define hash-keys
      (lambda (_h69539_)
        (let ((_h69541_
               (if (and (let () (declare (not safe)) (##structure? _h69539_))
                        (let ((__tmp72549
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69539_))))
                          (declare (not safe))
                          (eq? __tmp72549 HashTable::t)))
                   _h69539_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69539_)))))
          (declare (not safe))
          (&hash-keys _h69541_))))
    (define &hash-keys
      (lambda (_h69532_)
        (let ((_result69534_ '()))
          (let ((__tmp72550
                 (lambda (_k69536_ _v69537_)
                   (set! _result69534_
                         (let ()
                           (declare (not safe))
                           (cons _k69536_ _result69534_))))))
            (declare (not safe))
            (&HashTable-for-each _h69532_ __tmp72550))
          _result69534_)))
    (define hash-values
      (lambda (_h69528_)
        (let ((_h69530_
               (if (and (let () (declare (not safe)) (##structure? _h69528_))
                        (let ((__tmp72551
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69528_))))
                          (declare (not safe))
                          (eq? __tmp72551 HashTable::t)))
                   _h69528_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69528_)))))
          (declare (not safe))
          (&hash-values _h69530_))))
    (define &hash-values
      (lambda (_h69521_)
        (let ((_result69523_ '()))
          (let ((__tmp72552
                 (lambda (_k69525_ _v69526_)
                   (set! _result69523_
                         (let ()
                           (declare (not safe))
                           (cons _v69526_ _result69523_))))))
            (declare (not safe))
            (&HashTable-for-each _h69521_ __tmp72552))
          _result69523_)))
    (define hash-copy
      (lambda (_h69517_)
        (let ((_h69519_
               (if (and (let () (declare (not safe)) (##structure? _h69517_))
                        (let ((__tmp72553
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69517_))))
                          (declare (not safe))
                          (eq? __tmp72553 HashTable::t)))
                   _h69517_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69517_)))))
          (declare (not safe))
          (&HashTable-copy _h69519_))))
    (define &hash-copy
      (lambda (_h69515_)
        (let () (declare (not safe)) (&HashTable-copy _h69515_))))
    (define hash-merge
      (lambda (_h69510_ . _rest69511_)
        (let ((_copy69513_ (let () (declare (not safe)) (hash-copy _h69510_))))
          (apply hash-merge! _copy69513_ _rest69511_)
          _copy69513_)))
    (define hash-merge!
      (lambda (_h69500_ . _rest69501_)
        (let ((_h69503_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h69500_))))
          (for-each
           (lambda (_hr69505_)
             (let ((__tmp72554
                    (lambda (_k69507_ _v69508_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h69503_ _k69507_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h69503_ _k69507_ _v69508_))))))
               (declare (not safe))
               (hash-for-each __tmp72554 _hr69505_)))
           _rest69501_)
          _h69503_)))))
