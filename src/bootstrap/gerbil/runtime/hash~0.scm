(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1711108654)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp74314 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp74314
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args74297_
        (apply make-instance UnboundKeyError::t _$args74297_)))
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
      (lambda (_where74171_ _message74172_ . _irritants74173_)
        (raise (let ((__obj74311
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj74311
                  _message74172_
                  'where:
                  _where74171_
                  'irritants:
                  _irritants74173_)
                 __obj74311))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp74319 (list interface-instance::t))
            (__tmp74315
             (let ((__tmp74318
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp74316
                    (let ((__tmp74317
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp74317 '()))))
               (declare (not safe))
               (cons __tmp74318 __tmp74316))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp74319
         '(ref set! update! delete! for-each length copy clear!)
         __tmp74315
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
        (make-class-slot-accessor HashTable::t 'clear!)))
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
        (make-class-slot-mutator HashTable::t 'clear!)))
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
        (make-class-slot-unchecked-accessor HashTable::t 'clear!)))
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
        (make-class-slot-unchecked-mutator HashTable::t 'clear!)))
    (define HashTable::interface
      (let ()
        (declare (not safe))
        (##structure
         interface-descriptor::t
         HashTable::t
         '(ref set! update! delete! for-each length copy clear!))))
    (define HashTableLock::t
      (let ((__tmp74324 (list interface-instance::t))
            (__tmp74320
             (let ((__tmp74323
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp74321
                    (let ((__tmp74322
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp74322 '()))))
               (declare (not safe))
               (cons __tmp74323 __tmp74321))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp74324
         '(begin-read! end-read! begin-write! end-write!)
         __tmp74320
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
      (lambda (_table74164_ _key74165_ _update74166_ _default74167_)
        (let ((_result74169_
               (table-ref _table74164_ _key74165_ _default74167_)))
          (table-set!
           _table74164_
           _key74165_
           (_update74166_ _default74167_)))))
    (define gambit-table-for-each
      (lambda (_table74161_ _proc74162_)
        (table-for-each _proc74162_ _table74161_)))
    (define gambit-table-clear!
      (lambda (_table74159_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table74159_ '0 '5 '#f '#f))))
    (let ((__tmp74325 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74325 'ref table-ref))
    (let ((__tmp74326 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74326 'set! table-set!))
    (let ((__tmp74327 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74327 'update! gambit-table-update!))
    (let ((__tmp74328 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74328 'delete! table-set!))
    (let ((__tmp74329 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74329 'for-each gambit-table-for-each))
    (let ((__tmp74330 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74330 'length table-length))
    (let ((__tmp74331 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74331 'copy table-copy))
    (let ((__tmp74332 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74332 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots74141_ '(table count free hash test seed))
             (_slot-vector74143_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots74141_))))
             (_slot-table74150_
              (let ((_slot-table74145_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot74147_ _field74148_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table74145_
                      _slot74147_
                      _field74148_))
                   (let ((__tmp74333 (symbol->keyword _slot74147_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table74145_
                      __tmp74333
                      _field74148_)))
                 _slots74141_
                 (iota (length _slots74141_) '1))
                _slot-table74145_))
             (_flags74152_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields74154_ '#())
             (_properties74156_
              (let ((__tmp74336
                     (let ((__tmp74337
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots74141_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp74337)))
                    (__tmp74334
                     (let ((__tmp74335
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp74335 '()))))
                (declare (not safe))
                (cons __tmp74336 __tmp74334))))
        (let ((__tmp74338
               (let ((__tmp74339
                      (let () (declare (not safe)) (cons t::t '()))))
                 (declare (not safe))
                 (cons object::t __tmp74339))))
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags74152_
           __table::t
           _fields74154_
           __tmp74338
           _slot-vector74143_
           _slot-table74150_
           _properties74156_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_slots74123_ '(gcht immediate))
             (_slot-vector74125_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots74123_))))
             (_slot-table74132_
              (let ((_slot-table74127_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot74129_ _field74130_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table74127_
                      _slot74129_
                      _field74130_))
                   (let ((__tmp74340 (symbol->keyword _slot74129_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table74127_
                      __tmp74340
                      _field74130_)))
                 _slots74123_
                 (iota (length _slots74123_) '1))
                _slot-table74127_))
             (_flags74134_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields74136_ '#())
             (_properties74138_
              (let ((__tmp74343
                     (let ((__tmp74344
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots74123_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp74344)))
                    (__tmp74341
                     (let ((__tmp74342
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp74342 '()))))
                (declare (not safe))
                (cons __tmp74343 __tmp74341))))
        (let ((__tmp74345
               (let ((__tmp74346
                      (let () (declare (not safe)) (cons t::t '()))))
                 (declare (not safe))
                 (cons object::t __tmp74346))))
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'hash-table
           _flags74134_
           __gc-table::t
           _fields74136_
           __tmp74345
           _slot-vector74125_
           _slot-table74132_
           _properties74138_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp74351 (list))
            (__tmp74347
             (let ((__tmp74350
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp74348
                    (let ((__tmp74349
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp74349 '()))))
               (declare (not safe))
               (cons __tmp74350 __tmp74348))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp74351
         '(table lock)
         __tmp74347
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args74120_
        (apply make-instance locked-hash-table::t _$args74120_)))
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
      (let ((__tmp74356 (list))
            (__tmp74352
             (let ((__tmp74355
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp74353
                    (let ((__tmp74354
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp74354 '()))))
               (declare (not safe))
               (cons __tmp74355 __tmp74353))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp74356
         '(table key-check)
         __tmp74352
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args74117_
        (apply make-instance checked-hash-table::t _$args74117_)))
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
      (let ((__tmp74359 (list hash-table::t))
            (__tmp74357
             (let ((__tmp74358
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74358 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp74359
         '()
         __tmp74357
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args74114_
        (apply make-instance eq-hash-table::t _$args74114_)))
    (define eqv-hash-table::t
      (let ((__tmp74362 (list hash-table::t))
            (__tmp74360
             (let ((__tmp74361
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74361 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp74362
         '()
         __tmp74360
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args74111_
        (apply make-instance eqv-hash-table::t _$args74111_)))
    (define symbol-hash-table::t
      (let ((__tmp74365 (list hash-table::t))
            (__tmp74363
             (let ((__tmp74364
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74364 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp74365
         '()
         __tmp74363
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args74108_
        (apply make-instance symbol-hash-table::t _$args74108_)))
    (define string-hash-table::t
      (let ((__tmp74368 (list hash-table::t))
            (__tmp74366
             (let ((__tmp74367
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74367 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp74368
         '()
         __tmp74366
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args74105_
        (apply make-instance string-hash-table::t _$args74105_)))
    (define immediate-hash-table::t
      (let ((__tmp74371 (list hash-table::t))
            (__tmp74369
             (let ((__tmp74370
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74370 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp74371
         '()
         __tmp74369
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _$args74102_
        (apply make-instance immediate-hash-table::t _$args74102_)))
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
      (lambda (_obj74100_)
        (if (let () (declare (not safe)) (##structure? _obj74100_))
            (let ((__tmp74372
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj74100_))))
              (declare (not safe))
              (eq? __tmp74372 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj74095_)
        (let ((_$e74097_
               (if (let () (declare (not safe)) (##structure? _obj74095_))
                   (let ((__tmp74373
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj74095_))))
                     (declare (not safe))
                     (eq? __tmp74373 HashTable::t))
                   '#f)))
          (if _$e74097_
              _$e74097_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj74095_))))))
    (define HashTable-ref
      (lambda (_h74089_ _key74090_ _default74091_)
        (let ((_h74093_
               (if (and (let () (declare (not safe)) (##structure? _h74089_))
                        (let ((__tmp74374
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74089_))))
                          (declare (not safe))
                          (eq? __tmp74374 HashTable::t)))
                   _h74089_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74089_)))))
          (declare (not safe))
          (&HashTable-ref _h74093_ _key74090_ _default74091_))))
    (define &HashTable-ref
      (lambda (_h74084_ _key74085_ _default74086_)
        (declare (not safe))
        ((##unchecked-structure-ref _h74084_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h74084_ '1 interface-instance::t '#f)
         _key74085_
         _default74086_)))
    (define HashTable-set!
      (lambda (_h74078_ _key74079_ _value74080_)
        (let ((_h74082_
               (if (and (let () (declare (not safe)) (##structure? _h74078_))
                        (let ((__tmp74375
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74078_))))
                          (declare (not safe))
                          (eq? __tmp74375 HashTable::t)))
                   _h74078_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74078_)))))
          (declare (not safe))
          (&HashTable-set! _h74082_ _key74079_ _value74080_))))
    (define &HashTable-set!
      (lambda (_h74073_ _key74074_ _value74075_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74073_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h74073_ '1 interface-instance::t '#f)
           _key74074_
           _value74075_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h74066_ _key74067_ _update74068_ _default74069_)
        (let ((_h74071_
               (if (and (let () (declare (not safe)) (##structure? _h74066_))
                        (let ((__tmp74376
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74066_))))
                          (declare (not safe))
                          (eq? __tmp74376 HashTable::t)))
                   _h74066_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74066_)))))
          (declare (not safe))
          (&HashTable-update!
           _h74071_
           _key74067_
           _update74068_
           _default74069_))))
    (define &HashTable-update!
      (lambda (_h74060_ _key74061_ _update74062_ _default74063_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74060_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h74060_ '1 interface-instance::t '#f)
           _key74061_
           _update74062_
           _default74063_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h74055_ _key74056_)
        (let ((_h74058_
               (if (and (let () (declare (not safe)) (##structure? _h74055_))
                        (let ((__tmp74377
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74055_))))
                          (declare (not safe))
                          (eq? __tmp74377 HashTable::t)))
                   _h74055_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74055_)))))
          (declare (not safe))
          (&HashTable-delete! _h74058_ _key74056_))))
    (define &HashTable-delete!
      (lambda (_h74051_ _key74052_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74051_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h74051_ '1 interface-instance::t '#f)
           _key74052_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h74046_ _proc74047_)
        (let ((_h74049_
               (if (and (let () (declare (not safe)) (##structure? _h74046_))
                        (let ((__tmp74378
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74046_))))
                          (declare (not safe))
                          (eq? __tmp74378 HashTable::t)))
                   _h74046_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74046_)))))
          (declare (not safe))
          (&HashTable-for-each _h74049_ _proc74047_))))
    (define &HashTable-for-each
      (lambda (_h74042_ _proc74043_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74042_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h74042_ '1 interface-instance::t '#f)
           _proc74043_)
          '#!void)))
    (define HashTable-length
      (lambda (_h74038_)
        (let ((_h74040_
               (if (and (let () (declare (not safe)) (##structure? _h74038_))
                        (let ((__tmp74379
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74038_))))
                          (declare (not safe))
                          (eq? __tmp74379 HashTable::t)))
                   _h74038_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74038_)))))
          (declare (not safe))
          (&HashTable-length _h74040_))))
    (define &HashTable-length
      (lambda (_h74035_)
        (declare (not safe))
        ((##unchecked-structure-ref _h74035_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h74035_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h74031_)
        (let ((_h74033_
               (if (and (let () (declare (not safe)) (##structure? _h74031_))
                        (let ((__tmp74380
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74031_))))
                          (declare (not safe))
                          (eq? __tmp74380 HashTable::t)))
                   _h74031_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74031_)))))
          (declare (not safe))
          (&HashTable-copy _h74033_))))
    (define &HashTable-copy
      (lambda (_h74028_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h74028_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h74028_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h74024_)
        (let ((_h74026_
               (if (and (let () (declare (not safe)) (##structure? _h74024_))
                        (let ((__tmp74381
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74024_))))
                          (declare (not safe))
                          (eq? __tmp74381 HashTable::t)))
                   _h74024_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74024_)))))
          (declare (not safe))
          (&HashTable-clear! _h74026_))))
    (define &HashTable-clear!
      (lambda (_h74021_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74021_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h74021_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl74018_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl74018_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl74018_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl74015_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl74015_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl74015_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl74012_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl74012_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl74012_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl74009_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl74009_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl74009_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref71022_
      (lambda (_self73996_ _key73998_ _default73999_)
        (let ((_h74001_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73996_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l74003_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73996_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l74003_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h74001_ _key73998_ _default73999_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l74003_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref71022_
       '#f))
    (define _locked-hash-table::set!71024_
      (lambda (_self73860_ _key73862_ _value73863_)
        (let ((_h73865_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73860_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73867_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73860_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73867_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h73865_ _key73862_ _value73863_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73867_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!71024_
       '#f))
    (define _locked-hash-table::update!71026_
      (lambda (_self73723_ _key73725_ _update73726_ _default73727_)
        (let ((_h73729_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73723_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73731_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73723_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73731_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h73729_
                _key73725_
                _update73726_
                _default73727_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73731_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!71026_
       '#f))
    (define _locked-hash-table::delete!71028_
      (lambda (_self73588_ _key73590_)
        (let ((_h73592_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73588_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73594_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73588_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73594_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h73592_ _key73590_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73594_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!71028_
       '#f))
    (define _locked-hash-table::for-each71030_
      (lambda (_self73453_ _proc73455_)
        (let ((_h73457_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73453_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73459_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73453_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l73459_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h73457_ _proc73455_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l73459_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each71030_
       '#f))
    (define _locked-hash-table::length71032_
      (lambda (_self73319_)
        (let ((_h73322_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73319_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73324_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73319_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l73324_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h73322_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l73324_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length71032_
       '#f))
    (define _locked-hash-table::copy71034_
      (lambda (_self73185_)
        (let ((_h73188_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73185_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73190_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73185_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l73190_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h73188_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l73190_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy71034_
       '#f))
    (define _locked-hash-table::clear!71036_
      (lambda (_self73051_)
        (let ((_h73054_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73051_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73056_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73051_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73056_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h73054_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73056_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!71036_
       '#f))
    (let ((__tmp74382 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74382 'begin-read! mutex-lock!))
    (let ((__tmp74383 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74383 'end-read! mutex-unlock!))
    (let ((__tmp74384 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74384 'begin-write! mutex-lock!))
    (let ((__tmp74385 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74385 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref71314_
      (lambda (_self72915_ _key72916_ _default72917_)
        (let ((_h72919_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72915_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72921_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72915_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7292372925_)
             (if (_g7292372925_ _key72916_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72916_))))
           _key?72921_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h72919_ _key72916_ _default72917_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref71314_
       '#f))
    (define _checked-hash-table::set!71316_
      (lambda (_self72779_ _key72780_ _value72781_)
        (let ((_h72783_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72779_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72785_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72779_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7278772789_)
             (if (_g7278772789_ _key72780_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72780_))))
           _key?72785_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h72783_ _key72780_ _value72781_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!71316_
       '#f))
    (define _checked-hash-table::update!71318_
      (lambda (_self72644_ _key72645_ _update72646_ _default72647_)
        (let ((_h72649_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72644_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72651_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72644_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?72654_)
             (if (_key?72654_ _key72645_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72645_)))
             (if (let () (declare (not safe)) (procedure? _update72646_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update72646_))))
           _key?72651_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h72649_
             _key72645_
             _update72646_
             _default72647_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!71318_
       '#f))
    (define _checked-hash-table::delete!71320_
      (lambda (_self72509_ _key72510_)
        (let ((_h72512_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72509_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72514_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72509_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7251672518_)
             (if (_g7251672518_ _key72510_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72510_))))
           _key?72514_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h72512_ _key72510_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!71320_
       '#f))
    (define _checked-hash-table::for-each71322_
      (lambda (_self72377_ _proc72378_)
        (let ((_h72380_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72377_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72382_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72377_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g74386_)
             (if (let () (declare (not safe)) (procedure? _proc72378_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc72378_))))
           _key?72382_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h72380_ _proc72378_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each71322_
       '#f))
    (define _checked-hash-table::length71324_
      (lambda (_self72247_)
        (let ((_h72249_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72247_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72251_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72247_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h72249_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length71324_
       '#f))
    (define _checked-hash-table::copy71326_
      (lambda (_self72117_)
        (let ((_h72119_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72117_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72121_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72117_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h72119_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy71326_
       '#f))
    (define _checked-hash-table::clear!71328_
      (lambda (_self71987_)
        (let ((_h71989_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71987_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71991_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71987_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h71989_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!71328_
       '#f))
    (define make-generic-hash-table
      (lambda (_table71857_
               _count71858_
               _free71859_
               _hash71860_
               _test71861_
               _seed71862_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table71857_
           _count71858_
           _free71859_
           _hash71860_
           _test71861_
           _seed71862_))))
    (define make-hash-table__%
      (lambda (_g74387_
               _size-hint7170271712_
               _seed7170371714_
               _test7170471716_
               _hash7170571718_
               _lock7170671720_
               _check7170771722_
               _weak-keys7170871724_
               _weak-values7170971726_)
        (let* ((_size-hint71729_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint7170271712_ absent-value))
                    '#f
                    _size-hint7170271712_))
               (_seed71731_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed7170371714_ absent-value))
                    '#f
                    _seed7170371714_))
               (_test71733_
                (if (let ()
                      (declare (not safe))
                      (eq? _test7170471716_ absent-value))
                    equal?
                    _test7170471716_))
               (_hash71735_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash7170571718_ absent-value))
                    '#f
                    _hash7170571718_))
               (_lock71737_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock7170671720_ absent-value))
                    '#f
                    _lock7170671720_))
               (_check71739_
                (if (let ()
                      (declare (not safe))
                      (eq? _check7170771722_ absent-value))
                    '#f
                    _check7170771722_))
               (_weak-keys71741_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys7170871724_ absent-value))
                    '#f
                    _weak-keys7170871724_))
               (_weak-values71743_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values7170971726_ absent-value))
                    '#f
                    _weak-values7170971726_)))
          (letrec ((_table-seed71745_
                    (lambda ()
                      (if (let () (declare (not safe)) (fixnum? _seed71731_))
                          _seed71731_
                          (random-integer (macro-max-fixnum32)))))
                   (_wrap-lock71746_
                    (lambda (_ht71840_)
                      (if _lock71737_
                          (let ((__tmp74388
                                 (let ((__tmp74389
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock71737_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht71840_
                                    __tmp74389))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp74388))
                          _ht71840_)))
                   (_wrap-checked71747_
                    (lambda (_ht71837_ _implicit71838_)
                      (if _check71739_
                          (let ((__tmp74390
                                 (let ((__tmp74391
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check71739_))
                                            _check71739_
                                            _implicit71838_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht71837_
                                    __tmp74391))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp74390))
                          _ht71837_)))
                   (_make71748_
                    (lambda (_kons71825_ _key?71826_ _hash71827_ _test71828_)
                      (let* ((_size71830_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint71729_)))
                             (_table71832_
                              (make-vector _size71830_ (macro-unused-obj)))
                             (_ht71834_
                              (let ((__tmp74392
                                     (_kons71825_
                                      _table71832_
                                      '0
                                      (fxquotient _size71830_ '2)
                                      _hash71827_
                                      _test71828_
                                      (let ()
                                        (declare (not safe))
                                        (_table-seed71745_)))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp74392))))
                        (let ((__tmp74393
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock71746_ _ht71834_))))
                          (declare (not safe))
                          (_wrap-checked71747_ __tmp74393 _key?71826_)))))
                   (_make-gc-hash-table71749_
                    (lambda ()
                      (let* ((_ht71823_
                              (let ((__tmp74394
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _size-hint71729_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp74394)))
                             (__tmp74395
                              (let ()
                                (declare (not safe))
                                (_wrap-lock71746_ _ht71823_))))
                        (declare (not safe))
                        (_wrap-checked71747_ __tmp74395 true))))
                   (_make-gambit-table71750_
                    (lambda ()
                      (let* ((_size71807_
                              (let ((_$e71804_ _size-hint71729_))
                                (if _$e71804_ _$e71804_ (macro-absent-obj))))
                             (_test71812_
                              (let ((_$e71809_ _test71733_))
                                (if _$e71809_ _$e71809_ equal?)))
                             (_hash71817_
                              (let ((_$e71814_ _hash71735_))
                                (if _$e71814_
                                    _$e71814_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test71812_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test71812_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht71819_
                              (let ((__tmp74396
                                     (make-table
                                      'size:
                                      _size71807_
                                      'test:
                                      _test71812_
                                      'hash:
                                      _hash71817_
                                      'weak-keys:
                                      _weak-keys71741_
                                      'weak-values:
                                      _weak-values71743_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp74396))))
                        (let ((__tmp74397
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock71746_ _ht71819_))))
                          (declare (not safe))
                          (_wrap-checked71747_ __tmp74397 true))))))
            (if (or _weak-keys71741_ _weak-values71743_)
                (let () (declare (not safe)) (_make-gambit-table71750_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test71733_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test71733_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash71735_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash71735_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash71735_ eq-hash)))
                         (let () (declare (not safe)) (not _seed71731_)))
                    (let () (declare (not safe)) (_make-gc-hash-table71749_))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test71733_ eq?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test71733_ ##eq?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash71735_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash71735_ eq?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash71735_ eq-hash))))
                        (let ()
                          (declare (not safe))
                          (_make71748_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test71733_ eqv?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test71733_ ##eqv?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _hash71735_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash71735_ eqv?-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash71735_ eqv-hash))))
                            (let ()
                              (declare (not safe))
                              (_make71748_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test71733_ eq?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test71733_ ##eq?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash71735_ symbolic-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash71735_ ##symbol-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make71748_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (let ()
                                               (declare (not safe))
                                               (eq? _test71733_ eq?))
                                             (let ()
                                               (declare (not safe))
                                               (eq? _test71733_ ##eq?)))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash71735_ immediate-hash)))
                                    (let ()
                                      (declare (not safe))
                                      (_make71748_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (let ()
                                                   (declare (not safe))
                                                   (eq? _test71733_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test71733_ ##equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test71733_ string=?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test71733_
                                                        ##string=?)))
                                             (or (let ()
                                                   (declare (not safe))
                                                   (eq? _hash71735_
                                                        string-hash))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _hash71735_
                                                        ##string=?-hash))))
                                        (let ()
                                          (declare (not safe))
                                          (_make71748_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (let ()
                                                   (declare (not safe))
                                                   (eq? _test71733_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _hash71735_)))
                                            (let ()
                                              (declare (not safe))
                                              (_make71748_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp74399
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _test71733_))))
                                                  (declare (not safe))
                                                  (not __tmp74399))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _test71733_))
                                                (if (let ((__tmp74398
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _hash71735_))))
                                                      (declare (not safe))
                                                      (not __tmp74398))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _hash71735_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make71748_
                                                       make-generic-hash-table
                                                       true
                                                       _hash71735_
                                                       _test71733_))))))))))))))))
    (define make-hash-table__@
      (lambda (_keys7170171846_ . _args71848_)
        (apply make-hash-table__%
               _keys7170171846_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7170171846_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7170171846_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7170171846_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7170171846_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7170171846_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7170171846_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7170171846_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7170171846_
                  'weak-values:
                  absent-value))
               _args71848_)))
    (define make-hash-table
      (lambda _args7171071854_
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
               _args7171071854_)))
    (define make-hash-table-eq
      (lambda _args71698_ (apply make-hash-table 'test: eq? _args71698_)))
    (define make-hash-table-eqv
      (lambda _args71696_ (apply make-hash-table 'test: eqv? _args71696_)))
    (define make-hash-table-symbolic
      (lambda _args71694_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args71694_)))
    (define make-hash-table-string
      (lambda _args71692_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args71692_)))
    (define make-hash-table-immediate
      (lambda _args71690_
        (apply make-hash-table 'test: eq? 'hash: immediate-hash _args71690_)))
    (define list->hash-table
      (lambda (_lst71687_ . _args71688_)
        (let ((__tmp74400
               (apply make-hash-table 'size: (length _lst71687_) _args71688_)))
          (declare (not safe))
          (list->hash-table! _lst71687_ __tmp74400))))
    (define list->hash-table-eq
      (lambda (_lst71684_ . _args71685_)
        (let ((__tmp74401
               (apply make-hash-table-eq
                      'size:
                      (length _lst71684_)
                      _args71685_)))
          (declare (not safe))
          (list->hash-table! _lst71684_ __tmp74401))))
    (define list->hash-table-eqv
      (lambda (_lst71681_ . _args71682_)
        (let ((__tmp74402
               (apply make-hash-table-eqv
                      'size:
                      (length _lst71681_)
                      _args71682_)))
          (declare (not safe))
          (list->hash-table! _lst71681_ __tmp74402))))
    (define list->hash-table-symbolic
      (lambda (_lst71678_ . _args71679_)
        (let ((__tmp74403
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst71678_)
                      _args71679_)))
          (declare (not safe))
          (list->hash-table! _lst71678_ __tmp74403))))
    (define list->hash-table-string
      (lambda (_lst71675_ . _args71676_)
        (let ((__tmp74404
               (apply make-hash-table-string
                      'size:
                      (length _lst71675_)
                      _args71676_)))
          (declare (not safe))
          (list->hash-table! _lst71675_ __tmp74404))))
    (define list->hash-table-immediate
      (lambda (_lst71672_ . _args71673_)
        (let ((__tmp74405
               (apply make-hash-table-immediate
                      'size:
                      (length _lst71672_)
                      _args71673_)))
          (declare (not safe))
          (list->hash-table! _lst71672_ __tmp74405))))
    (define list->hash-table!
      (lambda (_lst71639_ _h71640_)
        (for-each
         (lambda (_el71642_)
           (let* ((_el7164371650_ _el71642_)
                  (_E7164571654_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el7164371650_))))
                  (_K7164671660_
                   (lambda (_v71657_ _k71658_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h71640_ _k71658_ _v71657_)))))
             (if (let () (declare (not safe)) (##pair? _el7164371650_))
                 (let ((_hd7164771663_
                        (let () (declare (not safe)) (##car _el7164371650_)))
                       (_tl7164871665_
                        (let () (declare (not safe)) (##cdr _el7164371650_))))
                   (let* ((_k71668_ _hd7164771663_) (_v71670_ _tl7164871665_))
                     (declare (not safe))
                     (_K7164671660_ _v71670_ _k71668_)))
                 (let () (declare (not safe)) (_E7164571654_)))))
         _lst71639_)
        _h71640_))
    (define plist->hash-table
      (lambda (_lst71636_ . _args71637_)
        (let ((__tmp74406
               (apply make-hash-table 'size: (length _lst71636_) _args71637_)))
          (declare (not safe))
          (plist->hash-table! _lst71636_ __tmp74406))))
    (define plist->hash-table-eq
      (lambda (_lst71633_ . _args71634_)
        (let ((__tmp74407
               (apply make-hash-table-eq
                      'size:
                      (length _lst71633_)
                      _args71634_)))
          (declare (not safe))
          (plist->hash-table! _lst71633_ __tmp74407))))
    (define plist->hash-table-eqv
      (lambda (_lst71630_ . _args71631_)
        (let ((__tmp74408
               (apply make-hash-table-eqv
                      'size:
                      (length _lst71630_)
                      _args71631_)))
          (declare (not safe))
          (plist->hash-table! _lst71630_ __tmp74408))))
    (define plist->hash-table-symbolic
      (lambda (_lst71627_ . _args71628_)
        (let ((__tmp74409
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst71627_)
                      _args71628_)))
          (declare (not safe))
          (plist->hash-table! _lst71627_ __tmp74409))))
    (define plist->hash-table-string
      (lambda (_lst71624_ . _args71625_)
        (let ((__tmp74410
               (apply make-hash-table-string
                      'size:
                      (length _lst71624_)
                      _args71625_)))
          (declare (not safe))
          (plist->hash-table! _lst71624_ __tmp74410))))
    (define plist->hash-table-immediate
      (lambda (_lst71621_ . _args71622_)
        (let ((__tmp74411
               (apply make-hash-table-immediate
                      'size:
                      (length _lst71621_)
                      _args71622_)))
          (declare (not safe))
          (plist->hash-table! _lst71621_ __tmp74411))))
    (define plist->hash-table!
      (lambda (_lst71561_ _h71562_)
        (let _loop71564_ ((_rest71566_ _lst71561_))
          (let* ((_rest7156771579_ _rest71566_)
                 (_else7157071587_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst71561_)))))
            (let ((_K7157371602_
                   (lambda (_rest71598_ _val71599_ _key71600_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h71562_ _key71600_ _val71599_))
                     (let () (declare (not safe)) (_loop71564_ _rest71598_))))
                  (_K7157271592_ (lambda () _h71562_)))
              (let ((_try-match7156971595_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest7156771579_))
                           (let () (declare (not safe)) (_K7157271592_))
                           (let () (declare (not safe)) (_else7157071587_))))))
                (if (let () (declare (not safe)) (##pair? _rest7156771579_))
                    (let ((_tl7157571607_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest7156771579_)))
                          (_hd7157471605_
                           (let ()
                             (declare (not safe))
                             (##car _rest7156771579_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl7157571607_))
                          (let ((_tl7157771614_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl7157571607_)))
                                (_hd7157671612_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl7157571607_))))
                            (let ((_key71610_ _hd7157471605_)
                                  (_val71617_ _hd7157671612_)
                                  (_rest71619_ _tl7157771614_))
                              (let ()
                                (declare (not safe))
                                (_K7157371602_
                                 _rest71619_
                                 _val71617_
                                 _key71610_))))
                          (let () (declare (not safe)) (_else7157071587_))))
                    (let ()
                      (declare (not safe))
                      (_try-match7156971595_)))))))))
    (define hash-length
      (lambda (_h71557_)
        (let ((_h71559_
               (if (and (let () (declare (not safe)) (##structure? _h71557_))
                        (let ((__tmp74412
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71557_))))
                          (declare (not safe))
                          (eq? __tmp74412 HashTable::t)))
                   _h71557_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71557_)))))
          (declare (not safe))
          (&HashTable-length _h71559_))))
    (define &hash-length
      (lambda (_h71555_)
        (let () (declare (not safe)) (&HashTable-length _h71555_))))
    (define hash-ref__%
      (lambda (_h71537_ _key71538_ _default71539_)
        (let ((_h71541_
               (if (and (let () (declare (not safe)) (##structure? _h71537_))
                        (let ((__tmp74413
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71537_))))
                          (declare (not safe))
                          (eq? __tmp74413 HashTable::t)))
                   _h71537_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71537_)))))
          (declare (not safe))
          (&hash-ref__% _h71541_ _key71538_ _default71539_))))
    (define hash-ref__0
      (lambda (_h71546_ _key71547_)
        (let ((_default71549_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h71546_ _key71547_ _default71549_))))
    (define hash-ref
      (lambda _g74415_
        (let ((_g74414_ (let () (declare (not safe)) (##length _g74415_))))
          (cond ((let () (declare (not safe)) (##fx= _g74414_ 2))
                 (apply (lambda (_h71546_ _key71547_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h71546_ _key71547_)))
                        _g74415_))
                ((let () (declare (not safe)) (##fx= _g74414_ 3))
                 (apply (lambda (_h71551_ _key71552_ _default71553_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h71551_ _key71552_ _default71553_)))
                        _g74415_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g74415_))))))
    (define &hash-ref__%
      (lambda (_h71518_ _key71519_ _default71520_)
        (let ((_result71522_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h71518_ _key71519_ _default71520_))))
          (if (let ((__tmp74416 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result71522_ __tmp74416))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h71518_
                 'key:
                 _key71519_))
              _result71522_))))
    (define &hash-ref__0
      (lambda (_h71527_ _key71528_)
        (let ((_default71530_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h71527_ _key71528_ _default71530_))))
    (define &hash-ref
      (lambda _g74418_
        (let ((_g74417_ (let () (declare (not safe)) (##length _g74418_))))
          (cond ((let () (declare (not safe)) (##fx= _g74417_ 2))
                 (apply (lambda (_h71527_ _key71528_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h71527_ _key71528_)))
                        _g74418_))
                ((let () (declare (not safe)) (##fx= _g74417_ 3))
                 (apply (lambda (_h71532_ _key71533_ _default71534_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h71532_ _key71533_ _default71534_)))
                        _g74418_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g74418_))))))
    (define hash-get
      (lambda (_h71512_ _key71513_)
        (let ((_h71515_
               (if (and (let () (declare (not safe)) (##structure? _h71512_))
                        (let ((__tmp74419
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71512_))))
                          (declare (not safe))
                          (eq? __tmp74419 HashTable::t)))
                   _h71512_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71512_)))))
          (declare (not safe))
          (&hash-get _h71515_ _key71513_))))
    (define &hash-get
      (lambda (_h71509_ _key71510_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h71509_ _key71510_ '#f))))
    (define hash-put!
      (lambda (_h71503_ _key71504_ _value71505_)
        (let ((_h71507_
               (if (and (let () (declare (not safe)) (##structure? _h71503_))
                        (let ((__tmp74420
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71503_))))
                          (declare (not safe))
                          (eq? __tmp74420 HashTable::t)))
                   _h71503_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71503_)))))
          (declare (not safe))
          (&HashTable-set! _h71507_ _key71504_ _value71505_))))
    (define &hash-put!
      (lambda (_h71499_ _key71500_ _value71501_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h71499_ _key71500_ _value71501_))))
    (define hash-update!__%
      (lambda (_h71478_ _key71479_ _update71480_ _default71481_)
        (let ((_h71483_
               (if (and (let () (declare (not safe)) (##structure? _h71478_))
                        (let ((__tmp74421
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71478_))))
                          (declare (not safe))
                          (eq? __tmp74421 HashTable::t)))
                   _h71478_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71478_)))))
          (declare (not safe))
          (&HashTable-update!
           _h71483_
           _key71479_
           _update71480_
           _default71481_))))
    (define hash-update!__0
      (lambda (_h71488_ _key71489_ _update71490_)
        (let ((_default71492_ '#!void))
          (declare (not safe))
          (hash-update!__% _h71488_ _key71489_ _update71490_ _default71492_))))
    (define hash-update!
      (lambda _g74423_
        (let ((_g74422_ (let () (declare (not safe)) (##length _g74423_))))
          (cond ((let () (declare (not safe)) (##fx= _g74422_ 3))
                 (apply (lambda (_h71488_ _key71489_ _update71490_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h71488_
                             _key71489_
                             _update71490_)))
                        _g74423_))
                ((let () (declare (not safe)) (##fx= _g74422_ 4))
                 (apply (lambda (_h71494_
                                 _key71495_
                                 _update71496_
                                 _default71497_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h71494_
                             _key71495_
                             _update71496_
                             _default71497_)))
                        _g74423_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g74423_))))))
    (define &hash-update!__%
      (lambda (_h71458_ _key71459_ _update71460_ _default71461_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h71458_
           _key71459_
           _update71460_
           _default71461_))))
    (define &hash-update!__0
      (lambda (_h71466_ _key71467_ _update71468_)
        (let ((_default71470_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h71466_
           _key71467_
           _update71468_
           _default71470_))))
    (define &hash-update!
      (lambda _g74425_
        (let ((_g74424_ (let () (declare (not safe)) (##length _g74425_))))
          (cond ((let () (declare (not safe)) (##fx= _g74424_ 3))
                 (apply (lambda (_h71466_ _key71467_ _update71468_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h71466_
                             _key71467_
                             _update71468_)))
                        _g74425_))
                ((let () (declare (not safe)) (##fx= _g74424_ 4))
                 (apply (lambda (_h71472_
                                 _key71473_
                                 _update71474_
                                 _default71475_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h71472_
                             _key71473_
                             _update71474_
                             _default71475_)))
                        _g74425_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g74425_))))))
    (define hash-remove!
      (lambda (_h71452_ _key71453_)
        (let ((_h71455_
               (if (and (let () (declare (not safe)) (##structure? _h71452_))
                        (let ((__tmp74426
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71452_))))
                          (declare (not safe))
                          (eq? __tmp74426 HashTable::t)))
                   _h71452_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71452_)))))
          (declare (not safe))
          (&HashTable-delete! _h71455_ _key71453_))))
    (define &hash-remove!
      (lambda (_h71449_ _key71450_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h71449_ _key71450_))))
    (define hash-key?
      (lambda (_h71444_ _k71445_)
        (let ((_h71447_
               (if (and (let () (declare (not safe)) (##structure? _h71444_))
                        (let ((__tmp74427
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71444_))))
                          (declare (not safe))
                          (eq? __tmp74427 HashTable::t)))
                   _h71444_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71444_)))))
          (declare (not safe))
          (&hash-key? _h71447_ _k71445_))))
    (define &hash-key?
      (lambda (_h71441_ _k71442_)
        (let ((__tmp74428
               (let ((__tmp74429
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h71441_ _k71442_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp74429 absent-value))))
          (declare (not safe))
          (not __tmp74428))))
    (define hash->list
      (lambda (_h71437_)
        (let ((_h71439_
               (if (and (let () (declare (not safe)) (##structure? _h71437_))
                        (let ((__tmp74430
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71437_))))
                          (declare (not safe))
                          (eq? __tmp74430 HashTable::t)))
                   _h71437_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71437_)))))
          (declare (not safe))
          (&hash->list _h71439_))))
    (define &hash->list
      (lambda (_h71430_)
        (let ((_lst71432_ '()))
          (let ((__tmp74431
                 (lambda (_k71434_ _v71435_)
                   (set! _lst71432_
                         (let ((__tmp74432
                                (let ()
                                  (declare (not safe))
                                  (cons _k71434_ _v71435_))))
                           (declare (not safe))
                           (cons __tmp74432 _lst71432_))))))
            (declare (not safe))
            (&HashTable-for-each _h71430_ __tmp74431))
          _lst71432_)))
    (define hash->plist
      (lambda (_h71426_)
        (let ((_h71428_
               (if (and (let () (declare (not safe)) (##structure? _h71426_))
                        (let ((__tmp74433
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71426_))))
                          (declare (not safe))
                          (eq? __tmp74433 HashTable::t)))
                   _h71426_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71426_)))))
          (declare (not safe))
          (&hash->plist _h71428_))))
    (define &hash->plist
      (lambda (_h71419_)
        (let ((_lst71421_ '()))
          (let ((__tmp74434
                 (lambda (_k71423_ _v71424_)
                   (set! _lst71421_
                         (let ((__tmp74435
                                (let ()
                                  (declare (not safe))
                                  (cons _v71424_ _lst71421_))))
                           (declare (not safe))
                           (cons _k71423_ __tmp74435))))))
            (declare (not safe))
            (&HashTable-for-each _h71419_ __tmp74434))
          _lst71421_)))
    (define hash-for-each
      (lambda (_proc71416_ _h71417_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h71417_ _proc71416_))))
    (define hash-map
      (lambda (_proc71408_ _h71409_)
        (let ((_result71411_ '()))
          (let ((__tmp74436
                 (lambda (_k71413_ _v71414_)
                   (set! _result71411_
                         (let ((__tmp74437 (_proc71408_ _k71413_ _v71414_)))
                           (declare (not safe))
                           (cons __tmp74437 _result71411_))))))
            (declare (not safe))
            (HashTable-for-each _h71409_ __tmp74436))
          _result71411_)))
    (define hash-fold
      (lambda (_proc71399_ _iv71400_ _h71401_)
        (let ((_result71403_ _iv71400_))
          (let ((__tmp74438
                 (lambda (_k71405_ _v71406_)
                   (set! _result71403_
                         (_proc71399_ _k71405_ _v71406_ _result71403_)))))
            (declare (not safe))
            (HashTable-for-each _h71401_ __tmp74438))
          _result71403_)))
    (define hash-find__%
      (lambda (_proc71375_ _h71376_ _default-value71377_)
        (call/cc (lambda (_return71379_)
                   (let ((__tmp74439
                          (lambda (_k71381_ _v71382_)
                            (let ((_$e71384_ (_proc71375_ _k71381_ _v71382_)))
                              (if _$e71384_
                                  (_return71379_ _$e71384_)
                                  '#!void)))))
                     (declare (not safe))
                     (HashTable-for-each _h71376_ __tmp74439))
                   _default-value71377_))))
    (define hash-find__0
      (lambda (_proc71390_ _h71391_)
        (let ((_default-value71393_ '#f))
          (declare (not safe))
          (hash-find__% _proc71390_ _h71391_ _default-value71393_))))
    (define hash-find
      (lambda _g74441_
        (let ((_g74440_ (let () (declare (not safe)) (##length _g74441_))))
          (cond ((let () (declare (not safe)) (##fx= _g74440_ 2))
                 (apply (lambda (_proc71390_ _h71391_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc71390_ _h71391_)))
                        _g74441_))
                ((let () (declare (not safe)) (##fx= _g74440_ 3))
                 (apply (lambda (_proc71395_ _h71396_ _default-value71397_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc71395_
                             _h71396_
                             _default-value71397_)))
                        _g74441_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g74441_))))))
    (define hash-keys
      (lambda (_h71370_)
        (let ((_h71372_
               (if (and (let () (declare (not safe)) (##structure? _h71370_))
                        (let ((__tmp74442
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71370_))))
                          (declare (not safe))
                          (eq? __tmp74442 HashTable::t)))
                   _h71370_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71370_)))))
          (declare (not safe))
          (&hash-keys _h71372_))))
    (define &hash-keys
      (lambda (_h71363_)
        (let ((_result71365_ '()))
          (let ((__tmp74443
                 (lambda (_k71367_ _v71368_)
                   (set! _result71365_
                         (let ()
                           (declare (not safe))
                           (cons _k71367_ _result71365_))))))
            (declare (not safe))
            (&HashTable-for-each _h71363_ __tmp74443))
          _result71365_)))
    (define hash-values
      (lambda (_h71359_)
        (let ((_h71361_
               (if (and (let () (declare (not safe)) (##structure? _h71359_))
                        (let ((__tmp74444
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71359_))))
                          (declare (not safe))
                          (eq? __tmp74444 HashTable::t)))
                   _h71359_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71359_)))))
          (declare (not safe))
          (&hash-values _h71361_))))
    (define &hash-values
      (lambda (_h71352_)
        (let ((_result71354_ '()))
          (let ((__tmp74445
                 (lambda (_k71356_ _v71357_)
                   (set! _result71354_
                         (let ()
                           (declare (not safe))
                           (cons _v71357_ _result71354_))))))
            (declare (not safe))
            (&HashTable-for-each _h71352_ __tmp74445))
          _result71354_)))
    (define hash-copy
      (lambda (_h71348_)
        (let ((_h71350_
               (if (and (let () (declare (not safe)) (##structure? _h71348_))
                        (let ((__tmp74446
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71348_))))
                          (declare (not safe))
                          (eq? __tmp74446 HashTable::t)))
                   _h71348_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71348_)))))
          (declare (not safe))
          (&HashTable-copy _h71350_))))
    (define &hash-copy
      (lambda (_h71346_)
        (let () (declare (not safe)) (&HashTable-copy _h71346_))))
    (define hash-merge
      (lambda (_h71341_ . _rest71342_)
        (let ((_copy71344_ (let () (declare (not safe)) (hash-copy _h71341_))))
          (apply hash-merge! _copy71344_ _rest71342_)
          _copy71344_)))
    (define hash-merge!
      (lambda (_h71331_ . _rest71332_)
        (let ((_h71334_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h71331_))))
          (for-each
           (lambda (_hr71336_)
             (let ((__tmp74447
                    (lambda (_k71338_ _v71339_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h71334_ _k71338_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h71334_ _k71338_ _v71339_))))))
               (declare (not safe))
               (hash-for-each __tmp74447 _hr71336_)))
           _rest71332_)
          _h71334_)))))
