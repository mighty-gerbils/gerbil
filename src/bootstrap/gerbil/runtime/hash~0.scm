(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1710781148)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp74323 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp74323
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args74306_
        (apply make-instance UnboundKeyError::t _$args74306_)))
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
      (lambda (_where74180_ _message74181_ . _irritants74182_)
        (raise (let ((__obj74320
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj74320
                  _message74181_
                  'where:
                  _where74180_
                  'irritants:
                  _irritants74182_)
                 __obj74320))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp74328 (list interface-instance::t))
            (__tmp74324
             (let ((__tmp74327
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp74325
                    (let ((__tmp74326
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp74326 '()))))
               (declare (not safe))
               (cons __tmp74327 __tmp74325))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp74328
         '(ref set! update! delete! for-each length copy clear!)
         __tmp74324
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
      (let ((__tmp74333 (list interface-instance::t))
            (__tmp74329
             (let ((__tmp74332
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp74330
                    (let ((__tmp74331
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp74331 '()))))
               (declare (not safe))
               (cons __tmp74332 __tmp74330))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp74333
         '(begin-read! end-read! begin-write! end-write!)
         __tmp74329
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
      (lambda (_table74173_ _key74174_ _update74175_ _default74176_)
        (let ((_result74178_
               (table-ref _table74173_ _key74174_ _default74176_)))
          (table-set!
           _table74173_
           _key74174_
           (_update74175_ _default74176_)))))
    (define gambit-table-for-each
      (lambda (_table74170_ _proc74171_)
        (table-for-each _proc74171_ _table74170_)))
    (define gambit-table-clear!
      (lambda (_table74168_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table74168_ '0 '5 '#f '#f))))
    (let ((__tmp74334 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74334 'ref table-ref))
    (let ((__tmp74335 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74335 'set! table-set!))
    (let ((__tmp74336 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74336 'update! gambit-table-update!))
    (let ((__tmp74337 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74337 'delete! table-set!))
    (let ((__tmp74338 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74338 'for-each gambit-table-for-each))
    (let ((__tmp74339 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74339 'length table-length))
    (let ((__tmp74340 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74340 'copy table-copy))
    (let ((__tmp74341 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74341 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots74150_ '(table count free hash test seed))
             (_slot-vector74152_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots74150_))))
             (_slot-table74159_
              (let ((_slot-table74154_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot74156_ _field74157_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table74154_
                      _slot74156_
                      _field74157_))
                   (let ((__tmp74342 (symbol->keyword _slot74156_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table74154_
                      __tmp74342
                      _field74157_)))
                 _slots74150_
                 (iota (length _slots74150_) '1))
                _slot-table74154_))
             (_flags74161_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields74163_ '#())
             (_properties74165_
              (let ((__tmp74345
                     (let ((__tmp74346
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots74150_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp74346)))
                    (__tmp74343
                     (let ((__tmp74344
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp74344 '()))))
                (declare (not safe))
                (cons __tmp74345 __tmp74343))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags74161_
           __table::t
           _fields74163_
           '()
           _slot-vector74152_
           _slot-table74159_
           _properties74165_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_slots74132_ '(gcht immediate))
             (_slot-vector74134_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots74132_))))
             (_slot-table74141_
              (let ((_slot-table74136_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot74138_ _field74139_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table74136_
                      _slot74138_
                      _field74139_))
                   (let ((__tmp74347 (symbol->keyword _slot74138_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table74136_
                      __tmp74347
                      _field74139_)))
                 _slots74132_
                 (iota (length _slots74132_) '1))
                _slot-table74136_))
             (_flags74143_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields74145_ '#())
             (_properties74147_
              (let ((__tmp74350
                     (let ((__tmp74351
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots74132_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp74351)))
                    (__tmp74348
                     (let ((__tmp74349
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp74349 '()))))
                (declare (not safe))
                (cons __tmp74350 __tmp74348))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'hash-table
           _flags74143_
           __gc-table::t
           _fields74145_
           '()
           _slot-vector74134_
           _slot-table74141_
           _properties74147_
           '#f
           '#f))))
    (define locked-hash-table::t
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
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp74356
         '(table lock)
         __tmp74352
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args74129_
        (apply make-instance locked-hash-table::t _$args74129_)))
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
      (let ((__tmp74361 (list))
            (__tmp74357
             (let ((__tmp74360
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp74358
                    (let ((__tmp74359
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp74359 '()))))
               (declare (not safe))
               (cons __tmp74360 __tmp74358))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp74361
         '(table key-check)
         __tmp74357
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args74126_
        (apply make-instance checked-hash-table::t _$args74126_)))
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
      (let ((__tmp74364 (list hash-table::t))
            (__tmp74362
             (let ((__tmp74363
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74363 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp74364
         '()
         __tmp74362
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args74123_
        (apply make-instance eq-hash-table::t _$args74123_)))
    (define eqv-hash-table::t
      (let ((__tmp74367 (list hash-table::t))
            (__tmp74365
             (let ((__tmp74366
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74366 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp74367
         '()
         __tmp74365
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args74120_
        (apply make-instance eqv-hash-table::t _$args74120_)))
    (define symbol-hash-table::t
      (let ((__tmp74370 (list hash-table::t))
            (__tmp74368
             (let ((__tmp74369
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74369 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp74370
         '()
         __tmp74368
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args74117_
        (apply make-instance symbol-hash-table::t _$args74117_)))
    (define string-hash-table::t
      (let ((__tmp74373 (list hash-table::t))
            (__tmp74371
             (let ((__tmp74372
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74372 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp74373
         '()
         __tmp74371
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args74114_
        (apply make-instance string-hash-table::t _$args74114_)))
    (define immediate-hash-table::t
      (let ((__tmp74376 (list hash-table::t))
            (__tmp74374
             (let ((__tmp74375
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74375 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp74376
         '()
         __tmp74374
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _$args74111_
        (apply make-instance immediate-hash-table::t _$args74111_)))
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
      (lambda (_obj74109_)
        (if (let () (declare (not safe)) (##structure? _obj74109_))
            (let ((__tmp74377
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj74109_))))
              (declare (not safe))
              (eq? __tmp74377 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj74104_)
        (let ((_$e74106_
               (if (let () (declare (not safe)) (##structure? _obj74104_))
                   (let ((__tmp74378
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj74104_))))
                     (declare (not safe))
                     (eq? __tmp74378 HashTable::t))
                   '#f)))
          (if _$e74106_
              _$e74106_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj74104_))))))
    (define HashTable-ref
      (lambda (_h74098_ _key74099_ _default74100_)
        (let ((_h74102_
               (if (and (let () (declare (not safe)) (##structure? _h74098_))
                        (let ((__tmp74379
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74098_))))
                          (declare (not safe))
                          (eq? __tmp74379 HashTable::t)))
                   _h74098_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74098_)))))
          (declare (not safe))
          (&HashTable-ref _h74102_ _key74099_ _default74100_))))
    (define &HashTable-ref
      (lambda (_h74093_ _key74094_ _default74095_)
        (declare (not safe))
        ((##unchecked-structure-ref _h74093_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h74093_ '1 interface-instance::t '#f)
         _key74094_
         _default74095_)))
    (define HashTable-set!
      (lambda (_h74087_ _key74088_ _value74089_)
        (let ((_h74091_
               (if (and (let () (declare (not safe)) (##structure? _h74087_))
                        (let ((__tmp74380
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74087_))))
                          (declare (not safe))
                          (eq? __tmp74380 HashTable::t)))
                   _h74087_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74087_)))))
          (declare (not safe))
          (&HashTable-set! _h74091_ _key74088_ _value74089_))))
    (define &HashTable-set!
      (lambda (_h74082_ _key74083_ _value74084_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74082_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h74082_ '1 interface-instance::t '#f)
           _key74083_
           _value74084_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h74075_ _key74076_ _update74077_ _default74078_)
        (let ((_h74080_
               (if (and (let () (declare (not safe)) (##structure? _h74075_))
                        (let ((__tmp74381
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74075_))))
                          (declare (not safe))
                          (eq? __tmp74381 HashTable::t)))
                   _h74075_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74075_)))))
          (declare (not safe))
          (&HashTable-update!
           _h74080_
           _key74076_
           _update74077_
           _default74078_))))
    (define &HashTable-update!
      (lambda (_h74069_ _key74070_ _update74071_ _default74072_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74069_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h74069_ '1 interface-instance::t '#f)
           _key74070_
           _update74071_
           _default74072_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h74064_ _key74065_)
        (let ((_h74067_
               (if (and (let () (declare (not safe)) (##structure? _h74064_))
                        (let ((__tmp74382
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74064_))))
                          (declare (not safe))
                          (eq? __tmp74382 HashTable::t)))
                   _h74064_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74064_)))))
          (declare (not safe))
          (&HashTable-delete! _h74067_ _key74065_))))
    (define &HashTable-delete!
      (lambda (_h74060_ _key74061_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74060_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h74060_ '1 interface-instance::t '#f)
           _key74061_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h74055_ _proc74056_)
        (let ((_h74058_
               (if (and (let () (declare (not safe)) (##structure? _h74055_))
                        (let ((__tmp74383
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74055_))))
                          (declare (not safe))
                          (eq? __tmp74383 HashTable::t)))
                   _h74055_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74055_)))))
          (declare (not safe))
          (&HashTable-for-each _h74058_ _proc74056_))))
    (define &HashTable-for-each
      (lambda (_h74051_ _proc74052_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74051_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h74051_ '1 interface-instance::t '#f)
           _proc74052_)
          '#!void)))
    (define HashTable-length
      (lambda (_h74047_)
        (let ((_h74049_
               (if (and (let () (declare (not safe)) (##structure? _h74047_))
                        (let ((__tmp74384
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74047_))))
                          (declare (not safe))
                          (eq? __tmp74384 HashTable::t)))
                   _h74047_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74047_)))))
          (declare (not safe))
          (&HashTable-length _h74049_))))
    (define &HashTable-length
      (lambda (_h74044_)
        (declare (not safe))
        ((##unchecked-structure-ref _h74044_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h74044_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h74040_)
        (let ((_h74042_
               (if (and (let () (declare (not safe)) (##structure? _h74040_))
                        (let ((__tmp74385
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74040_))))
                          (declare (not safe))
                          (eq? __tmp74385 HashTable::t)))
                   _h74040_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74040_)))))
          (declare (not safe))
          (&HashTable-copy _h74042_))))
    (define &HashTable-copy
      (lambda (_h74037_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h74037_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h74037_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h74033_)
        (let ((_h74035_
               (if (and (let () (declare (not safe)) (##structure? _h74033_))
                        (let ((__tmp74386
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74033_))))
                          (declare (not safe))
                          (eq? __tmp74386 HashTable::t)))
                   _h74033_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74033_)))))
          (declare (not safe))
          (&HashTable-clear! _h74035_))))
    (define &HashTable-clear!
      (lambda (_h74030_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74030_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h74030_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl74027_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl74027_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl74027_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl74024_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl74024_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl74024_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl74021_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl74021_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl74021_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl74018_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl74018_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl74018_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref71031_
      (lambda (_self74005_ _key74007_ _default74008_)
        (let ((_h74010_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self74005_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l74012_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self74005_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l74012_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h74010_ _key74007_ _default74008_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l74012_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref71031_
       '#f))
    (define _locked-hash-table::set!71033_
      (lambda (_self73869_ _key73871_ _value73872_)
        (let ((_h73874_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73869_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73876_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73869_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73876_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h73874_ _key73871_ _value73872_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73876_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!71033_
       '#f))
    (define _locked-hash-table::update!71035_
      (lambda (_self73732_ _key73734_ _update73735_ _default73736_)
        (let ((_h73738_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73732_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73740_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73732_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73740_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h73738_
                _key73734_
                _update73735_
                _default73736_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73740_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!71035_
       '#f))
    (define _locked-hash-table::delete!71037_
      (lambda (_self73597_ _key73599_)
        (let ((_h73601_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73597_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73603_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73597_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73603_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h73601_ _key73599_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73603_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!71037_
       '#f))
    (define _locked-hash-table::for-each71039_
      (lambda (_self73462_ _proc73464_)
        (let ((_h73466_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73462_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73468_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73462_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l73468_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h73466_ _proc73464_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l73468_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each71039_
       '#f))
    (define _locked-hash-table::length71041_
      (lambda (_self73328_)
        (let ((_h73331_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73328_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73333_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73328_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l73333_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h73331_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l73333_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length71041_
       '#f))
    (define _locked-hash-table::copy71043_
      (lambda (_self73194_)
        (let ((_h73197_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73194_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73199_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73194_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l73199_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h73197_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l73199_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy71043_
       '#f))
    (define _locked-hash-table::clear!71045_
      (lambda (_self73060_)
        (let ((_h73063_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73060_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73065_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73060_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73065_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h73063_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73065_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!71045_
       '#f))
    (let ((__tmp74387 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74387 'begin-read! mutex-lock!))
    (let ((__tmp74388 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74388 'end-read! mutex-unlock!))
    (let ((__tmp74389 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74389 'begin-write! mutex-lock!))
    (let ((__tmp74390 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74390 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref71323_
      (lambda (_self72924_ _key72925_ _default72926_)
        (let ((_h72928_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72924_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72930_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72924_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7293272934_)
             (if (_g7293272934_ _key72925_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72925_))))
           _key?72930_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h72928_ _key72925_ _default72926_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref71323_
       '#f))
    (define _checked-hash-table::set!71325_
      (lambda (_self72788_ _key72789_ _value72790_)
        (let ((_h72792_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72788_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72794_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72788_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7279672798_)
             (if (_g7279672798_ _key72789_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72789_))))
           _key?72794_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h72792_ _key72789_ _value72790_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!71325_
       '#f))
    (define _checked-hash-table::update!71327_
      (lambda (_self72653_ _key72654_ _update72655_ _default72656_)
        (let ((_h72658_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72653_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72660_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72653_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?72663_)
             (if (_key?72663_ _key72654_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72654_)))
             (if (let () (declare (not safe)) (procedure? _update72655_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update72655_))))
           _key?72660_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h72658_
             _key72654_
             _update72655_
             _default72656_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!71327_
       '#f))
    (define _checked-hash-table::delete!71329_
      (lambda (_self72518_ _key72519_)
        (let ((_h72521_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72518_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72523_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72518_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7252572527_)
             (if (_g7252572527_ _key72519_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72519_))))
           _key?72523_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h72521_ _key72519_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!71329_
       '#f))
    (define _checked-hash-table::for-each71331_
      (lambda (_self72386_ _proc72387_)
        (let ((_h72389_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72386_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72391_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72386_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g74391_)
             (if (let () (declare (not safe)) (procedure? _proc72387_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc72387_))))
           _key?72391_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h72389_ _proc72387_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each71331_
       '#f))
    (define _checked-hash-table::length71333_
      (lambda (_self72256_)
        (let ((_h72258_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72256_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72260_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72256_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h72258_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length71333_
       '#f))
    (define _checked-hash-table::copy71335_
      (lambda (_self72126_)
        (let ((_h72128_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72126_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72130_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72126_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h72128_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy71335_
       '#f))
    (define _checked-hash-table::clear!71337_
      (lambda (_self71996_)
        (let ((_h71998_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71996_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72000_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71996_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h71998_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!71337_
       '#f))
    (define make-generic-hash-table
      (lambda (_table71866_
               _count71867_
               _free71868_
               _hash71869_
               _test71870_
               _seed71871_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table71866_
           _count71867_
           _free71868_
           _hash71869_
           _test71870_
           _seed71871_))))
    (define make-hash-table__%
      (lambda (_g74392_
               _size-hint7171171721_
               _seed7171271723_
               _test7171371725_
               _hash7171471727_
               _lock7171571729_
               _check7171671731_
               _weak-keys7171771733_
               _weak-values7171871735_)
        (let* ((_size-hint71738_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint7171171721_ absent-value))
                    '#f
                    _size-hint7171171721_))
               (_seed71740_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed7171271723_ absent-value))
                    '#f
                    _seed7171271723_))
               (_test71742_
                (if (let ()
                      (declare (not safe))
                      (eq? _test7171371725_ absent-value))
                    equal?
                    _test7171371725_))
               (_hash71744_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash7171471727_ absent-value))
                    '#f
                    _hash7171471727_))
               (_lock71746_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock7171571729_ absent-value))
                    '#f
                    _lock7171571729_))
               (_check71748_
                (if (let ()
                      (declare (not safe))
                      (eq? _check7171671731_ absent-value))
                    '#f
                    _check7171671731_))
               (_weak-keys71750_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys7171771733_ absent-value))
                    '#f
                    _weak-keys7171771733_))
               (_weak-values71752_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values7171871735_ absent-value))
                    '#f
                    _weak-values7171871735_)))
          (letrec ((_table-seed71754_
                    (lambda ()
                      (if (let () (declare (not safe)) (fixnum? _seed71740_))
                          _seed71740_
                          (random-integer (macro-max-fixnum32)))))
                   (_wrap-lock71755_
                    (lambda (_ht71849_)
                      (if _lock71746_
                          (let ((__tmp74393
                                 (let ((__tmp74394
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock71746_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht71849_
                                    __tmp74394))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp74393))
                          _ht71849_)))
                   (_wrap-checked71756_
                    (lambda (_ht71846_ _implicit71847_)
                      (if _check71748_
                          (let ((__tmp74395
                                 (let ((__tmp74396
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check71748_))
                                            _check71748_
                                            _implicit71847_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht71846_
                                    __tmp74396))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp74395))
                          _ht71846_)))
                   (_make71757_
                    (lambda (_kons71834_ _key?71835_ _hash71836_ _test71837_)
                      (let* ((_size71839_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint71738_)))
                             (_table71841_
                              (make-vector _size71839_ (macro-unused-obj)))
                             (_ht71843_
                              (let ((__tmp74397
                                     (_kons71834_
                                      _table71841_
                                      '0
                                      (fxquotient _size71839_ '2)
                                      _hash71836_
                                      _test71837_
                                      (let ()
                                        (declare (not safe))
                                        (_table-seed71754_)))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp74397))))
                        (let ((__tmp74398
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock71755_ _ht71843_))))
                          (declare (not safe))
                          (_wrap-checked71756_ __tmp74398 _key?71835_)))))
                   (_make-gc-hash-table71758_
                    (lambda ()
                      (let* ((_ht71832_
                              (let ((__tmp74399
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _size-hint71738_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp74399)))
                             (__tmp74400
                              (let ()
                                (declare (not safe))
                                (_wrap-lock71755_ _ht71832_))))
                        (declare (not safe))
                        (_wrap-checked71756_ __tmp74400 true))))
                   (_make-gambit-table71759_
                    (lambda ()
                      (let* ((_size71816_
                              (let ((_$e71813_ _size-hint71738_))
                                (if _$e71813_ _$e71813_ (macro-absent-obj))))
                             (_test71821_
                              (let ((_$e71818_ _test71742_))
                                (if _$e71818_ _$e71818_ equal?)))
                             (_hash71826_
                              (let ((_$e71823_ _hash71744_))
                                (if _$e71823_
                                    _$e71823_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test71821_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test71821_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht71828_
                              (let ((__tmp74401
                                     (make-table
                                      'size:
                                      _size71816_
                                      'test:
                                      _test71821_
                                      'hash:
                                      _hash71826_
                                      'weak-keys:
                                      _weak-keys71750_
                                      'weak-values:
                                      _weak-values71752_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp74401))))
                        (let ((__tmp74402
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock71755_ _ht71828_))))
                          (declare (not safe))
                          (_wrap-checked71756_ __tmp74402 true))))))
            (if (or _weak-keys71750_ _weak-values71752_)
                (let () (declare (not safe)) (_make-gambit-table71759_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test71742_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test71742_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash71744_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash71744_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash71744_ eq-hash)))
                         (let () (declare (not safe)) (not _seed71740_)))
                    (let () (declare (not safe)) (_make-gc-hash-table71758_))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test71742_ eq?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test71742_ ##eq?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash71744_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash71744_ eq?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash71744_ eq-hash))))
                        (let ()
                          (declare (not safe))
                          (_make71757_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test71742_ eqv?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test71742_ ##eqv?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _hash71744_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash71744_ eqv?-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash71744_ eqv-hash))))
                            (let ()
                              (declare (not safe))
                              (_make71757_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test71742_ eq?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test71742_ ##eq?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash71744_ symbolic-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash71744_ ##symbol-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make71757_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (let ()
                                               (declare (not safe))
                                               (eq? _test71742_ eq?))
                                             (let ()
                                               (declare (not safe))
                                               (eq? _test71742_ ##eq?)))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash71744_ immediate-hash)))
                                    (let ()
                                      (declare (not safe))
                                      (_make71757_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (let ()
                                                   (declare (not safe))
                                                   (eq? _test71742_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test71742_ ##equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test71742_ string=?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test71742_
                                                        ##string=?)))
                                             (or (let ()
                                                   (declare (not safe))
                                                   (eq? _hash71744_
                                                        string-hash))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _hash71744_
                                                        ##string=?-hash))))
                                        (let ()
                                          (declare (not safe))
                                          (_make71757_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (let ()
                                                   (declare (not safe))
                                                   (eq? _test71742_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _hash71744_)))
                                            (let ()
                                              (declare (not safe))
                                              (_make71757_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp74404
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _test71742_))))
                                                  (declare (not safe))
                                                  (not __tmp74404))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _test71742_))
                                                (if (let ((__tmp74403
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _hash71744_))))
                                                      (declare (not safe))
                                                      (not __tmp74403))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _hash71744_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make71757_
                                                       make-generic-hash-table
                                                       true
                                                       _hash71744_
                                                       _test71742_))))))))))))))))
    (define make-hash-table__@
      (lambda (_keys7171071855_ . _args71857_)
        (apply make-hash-table__%
               _keys7171071855_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7171071855_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7171071855_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7171071855_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7171071855_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7171071855_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7171071855_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7171071855_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7171071855_
                  'weak-values:
                  absent-value))
               _args71857_)))
    (define make-hash-table
      (lambda _args7171971863_
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
               _args7171971863_)))
    (define make-hash-table-eq
      (lambda _args71707_ (apply make-hash-table 'test: eq? _args71707_)))
    (define make-hash-table-eqv
      (lambda _args71705_ (apply make-hash-table 'test: eqv? _args71705_)))
    (define make-hash-table-symbolic
      (lambda _args71703_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args71703_)))
    (define make-hash-table-string
      (lambda _args71701_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args71701_)))
    (define make-hash-table-immediate
      (lambda _args71699_
        (apply make-hash-table 'test: eq? 'hash: immediate-hash _args71699_)))
    (define list->hash-table
      (lambda (_lst71696_ . _args71697_)
        (let ((__tmp74405
               (apply make-hash-table 'size: (length _lst71696_) _args71697_)))
          (declare (not safe))
          (list->hash-table! _lst71696_ __tmp74405))))
    (define list->hash-table-eq
      (lambda (_lst71693_ . _args71694_)
        (let ((__tmp74406
               (apply make-hash-table-eq
                      'size:
                      (length _lst71693_)
                      _args71694_)))
          (declare (not safe))
          (list->hash-table! _lst71693_ __tmp74406))))
    (define list->hash-table-eqv
      (lambda (_lst71690_ . _args71691_)
        (let ((__tmp74407
               (apply make-hash-table-eqv
                      'size:
                      (length _lst71690_)
                      _args71691_)))
          (declare (not safe))
          (list->hash-table! _lst71690_ __tmp74407))))
    (define list->hash-table-symbolic
      (lambda (_lst71687_ . _args71688_)
        (let ((__tmp74408
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst71687_)
                      _args71688_)))
          (declare (not safe))
          (list->hash-table! _lst71687_ __tmp74408))))
    (define list->hash-table-string
      (lambda (_lst71684_ . _args71685_)
        (let ((__tmp74409
               (apply make-hash-table-string
                      'size:
                      (length _lst71684_)
                      _args71685_)))
          (declare (not safe))
          (list->hash-table! _lst71684_ __tmp74409))))
    (define list->hash-table-immediate
      (lambda (_lst71681_ . _args71682_)
        (let ((__tmp74410
               (apply make-hash-table-immediate
                      'size:
                      (length _lst71681_)
                      _args71682_)))
          (declare (not safe))
          (list->hash-table! _lst71681_ __tmp74410))))
    (define list->hash-table!
      (lambda (_lst71648_ _h71649_)
        (for-each
         (lambda (_el71651_)
           (let* ((_el7165271659_ _el71651_)
                  (_E7165471663_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el7165271659_))))
                  (_K7165571669_
                   (lambda (_v71666_ _k71667_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h71649_ _k71667_ _v71666_)))))
             (if (let () (declare (not safe)) (##pair? _el7165271659_))
                 (let ((_hd7165671672_
                        (let () (declare (not safe)) (##car _el7165271659_)))
                       (_tl7165771674_
                        (let () (declare (not safe)) (##cdr _el7165271659_))))
                   (let* ((_k71677_ _hd7165671672_) (_v71679_ _tl7165771674_))
                     (declare (not safe))
                     (_K7165571669_ _v71679_ _k71677_)))
                 (let () (declare (not safe)) (_E7165471663_)))))
         _lst71648_)
        _h71649_))
    (define plist->hash-table
      (lambda (_lst71645_ . _args71646_)
        (let ((__tmp74411
               (apply make-hash-table 'size: (length _lst71645_) _args71646_)))
          (declare (not safe))
          (plist->hash-table! _lst71645_ __tmp74411))))
    (define plist->hash-table-eq
      (lambda (_lst71642_ . _args71643_)
        (let ((__tmp74412
               (apply make-hash-table-eq
                      'size:
                      (length _lst71642_)
                      _args71643_)))
          (declare (not safe))
          (plist->hash-table! _lst71642_ __tmp74412))))
    (define plist->hash-table-eqv
      (lambda (_lst71639_ . _args71640_)
        (let ((__tmp74413
               (apply make-hash-table-eqv
                      'size:
                      (length _lst71639_)
                      _args71640_)))
          (declare (not safe))
          (plist->hash-table! _lst71639_ __tmp74413))))
    (define plist->hash-table-symbolic
      (lambda (_lst71636_ . _args71637_)
        (let ((__tmp74414
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst71636_)
                      _args71637_)))
          (declare (not safe))
          (plist->hash-table! _lst71636_ __tmp74414))))
    (define plist->hash-table-string
      (lambda (_lst71633_ . _args71634_)
        (let ((__tmp74415
               (apply make-hash-table-string
                      'size:
                      (length _lst71633_)
                      _args71634_)))
          (declare (not safe))
          (plist->hash-table! _lst71633_ __tmp74415))))
    (define plist->hash-table-immediate
      (lambda (_lst71630_ . _args71631_)
        (let ((__tmp74416
               (apply make-hash-table-immediate
                      'size:
                      (length _lst71630_)
                      _args71631_)))
          (declare (not safe))
          (plist->hash-table! _lst71630_ __tmp74416))))
    (define plist->hash-table!
      (lambda (_lst71570_ _h71571_)
        (let _loop71573_ ((_rest71575_ _lst71570_))
          (let* ((_rest7157671588_ _rest71575_)
                 (_else7157971596_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst71570_)))))
            (let ((_K7158271611_
                   (lambda (_rest71607_ _val71608_ _key71609_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h71571_ _key71609_ _val71608_))
                     (let () (declare (not safe)) (_loop71573_ _rest71607_))))
                  (_K7158171601_ (lambda () _h71571_)))
              (let ((_try-match7157871604_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest7157671588_))
                           (let () (declare (not safe)) (_K7158171601_))
                           (let () (declare (not safe)) (_else7157971596_))))))
                (if (let () (declare (not safe)) (##pair? _rest7157671588_))
                    (let ((_tl7158471616_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest7157671588_)))
                          (_hd7158371614_
                           (let ()
                             (declare (not safe))
                             (##car _rest7157671588_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl7158471616_))
                          (let ((_tl7158671623_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl7158471616_)))
                                (_hd7158571621_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl7158471616_))))
                            (let ((_key71619_ _hd7158371614_)
                                  (_val71626_ _hd7158571621_)
                                  (_rest71628_ _tl7158671623_))
                              (let ()
                                (declare (not safe))
                                (_K7158271611_
                                 _rest71628_
                                 _val71626_
                                 _key71619_))))
                          (let () (declare (not safe)) (_else7157971596_))))
                    (let ()
                      (declare (not safe))
                      (_try-match7157871604_)))))))))
    (define hash-length
      (lambda (_h71566_)
        (let ((_h71568_
               (if (and (let () (declare (not safe)) (##structure? _h71566_))
                        (let ((__tmp74417
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71566_))))
                          (declare (not safe))
                          (eq? __tmp74417 HashTable::t)))
                   _h71566_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71566_)))))
          (declare (not safe))
          (&HashTable-length _h71568_))))
    (define &hash-length
      (lambda (_h71564_)
        (let () (declare (not safe)) (&HashTable-length _h71564_))))
    (define hash-ref__%
      (lambda (_h71546_ _key71547_ _default71548_)
        (let ((_h71550_
               (if (and (let () (declare (not safe)) (##structure? _h71546_))
                        (let ((__tmp74418
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71546_))))
                          (declare (not safe))
                          (eq? __tmp74418 HashTable::t)))
                   _h71546_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71546_)))))
          (declare (not safe))
          (&hash-ref__% _h71550_ _key71547_ _default71548_))))
    (define hash-ref__0
      (lambda (_h71555_ _key71556_)
        (let ((_default71558_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h71555_ _key71556_ _default71558_))))
    (define hash-ref
      (lambda _g74420_
        (let ((_g74419_ (let () (declare (not safe)) (##length _g74420_))))
          (cond ((let () (declare (not safe)) (##fx= _g74419_ 2))
                 (apply (lambda (_h71555_ _key71556_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h71555_ _key71556_)))
                        _g74420_))
                ((let () (declare (not safe)) (##fx= _g74419_ 3))
                 (apply (lambda (_h71560_ _key71561_ _default71562_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h71560_ _key71561_ _default71562_)))
                        _g74420_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g74420_))))))
    (define &hash-ref__%
      (lambda (_h71527_ _key71528_ _default71529_)
        (let ((_result71531_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h71527_ _key71528_ _default71529_))))
          (if (let ((__tmp74421 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result71531_ __tmp74421))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h71527_
                 'key:
                 _key71528_))
              _result71531_))))
    (define &hash-ref__0
      (lambda (_h71536_ _key71537_)
        (let ((_default71539_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h71536_ _key71537_ _default71539_))))
    (define &hash-ref
      (lambda _g74423_
        (let ((_g74422_ (let () (declare (not safe)) (##length _g74423_))))
          (cond ((let () (declare (not safe)) (##fx= _g74422_ 2))
                 (apply (lambda (_h71536_ _key71537_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h71536_ _key71537_)))
                        _g74423_))
                ((let () (declare (not safe)) (##fx= _g74422_ 3))
                 (apply (lambda (_h71541_ _key71542_ _default71543_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h71541_ _key71542_ _default71543_)))
                        _g74423_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g74423_))))))
    (define hash-get
      (lambda (_h71521_ _key71522_)
        (let ((_h71524_
               (if (and (let () (declare (not safe)) (##structure? _h71521_))
                        (let ((__tmp74424
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71521_))))
                          (declare (not safe))
                          (eq? __tmp74424 HashTable::t)))
                   _h71521_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71521_)))))
          (declare (not safe))
          (&hash-get _h71524_ _key71522_))))
    (define &hash-get
      (lambda (_h71518_ _key71519_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h71518_ _key71519_ '#f))))
    (define hash-put!
      (lambda (_h71512_ _key71513_ _value71514_)
        (let ((_h71516_
               (if (and (let () (declare (not safe)) (##structure? _h71512_))
                        (let ((__tmp74425
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71512_))))
                          (declare (not safe))
                          (eq? __tmp74425 HashTable::t)))
                   _h71512_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71512_)))))
          (declare (not safe))
          (&HashTable-set! _h71516_ _key71513_ _value71514_))))
    (define &hash-put!
      (lambda (_h71508_ _key71509_ _value71510_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h71508_ _key71509_ _value71510_))))
    (define hash-update!__%
      (lambda (_h71487_ _key71488_ _update71489_ _default71490_)
        (let ((_h71492_
               (if (and (let () (declare (not safe)) (##structure? _h71487_))
                        (let ((__tmp74426
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71487_))))
                          (declare (not safe))
                          (eq? __tmp74426 HashTable::t)))
                   _h71487_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71487_)))))
          (declare (not safe))
          (&HashTable-update!
           _h71492_
           _key71488_
           _update71489_
           _default71490_))))
    (define hash-update!__0
      (lambda (_h71497_ _key71498_ _update71499_)
        (let ((_default71501_ '#!void))
          (declare (not safe))
          (hash-update!__% _h71497_ _key71498_ _update71499_ _default71501_))))
    (define hash-update!
      (lambda _g74428_
        (let ((_g74427_ (let () (declare (not safe)) (##length _g74428_))))
          (cond ((let () (declare (not safe)) (##fx= _g74427_ 3))
                 (apply (lambda (_h71497_ _key71498_ _update71499_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h71497_
                             _key71498_
                             _update71499_)))
                        _g74428_))
                ((let () (declare (not safe)) (##fx= _g74427_ 4))
                 (apply (lambda (_h71503_
                                 _key71504_
                                 _update71505_
                                 _default71506_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h71503_
                             _key71504_
                             _update71505_
                             _default71506_)))
                        _g74428_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g74428_))))))
    (define &hash-update!__%
      (lambda (_h71467_ _key71468_ _update71469_ _default71470_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h71467_
           _key71468_
           _update71469_
           _default71470_))))
    (define &hash-update!__0
      (lambda (_h71475_ _key71476_ _update71477_)
        (let ((_default71479_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h71475_
           _key71476_
           _update71477_
           _default71479_))))
    (define &hash-update!
      (lambda _g74430_
        (let ((_g74429_ (let () (declare (not safe)) (##length _g74430_))))
          (cond ((let () (declare (not safe)) (##fx= _g74429_ 3))
                 (apply (lambda (_h71475_ _key71476_ _update71477_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h71475_
                             _key71476_
                             _update71477_)))
                        _g74430_))
                ((let () (declare (not safe)) (##fx= _g74429_ 4))
                 (apply (lambda (_h71481_
                                 _key71482_
                                 _update71483_
                                 _default71484_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h71481_
                             _key71482_
                             _update71483_
                             _default71484_)))
                        _g74430_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g74430_))))))
    (define hash-remove!
      (lambda (_h71461_ _key71462_)
        (let ((_h71464_
               (if (and (let () (declare (not safe)) (##structure? _h71461_))
                        (let ((__tmp74431
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71461_))))
                          (declare (not safe))
                          (eq? __tmp74431 HashTable::t)))
                   _h71461_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71461_)))))
          (declare (not safe))
          (&HashTable-delete! _h71464_ _key71462_))))
    (define &hash-remove!
      (lambda (_h71458_ _key71459_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h71458_ _key71459_))))
    (define hash-key?
      (lambda (_h71453_ _k71454_)
        (let ((_h71456_
               (if (and (let () (declare (not safe)) (##structure? _h71453_))
                        (let ((__tmp74432
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71453_))))
                          (declare (not safe))
                          (eq? __tmp74432 HashTable::t)))
                   _h71453_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71453_)))))
          (declare (not safe))
          (&hash-key? _h71456_ _k71454_))))
    (define &hash-key?
      (lambda (_h71450_ _k71451_)
        (let ((__tmp74433
               (let ((__tmp74434
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h71450_ _k71451_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp74434 absent-value))))
          (declare (not safe))
          (not __tmp74433))))
    (define hash->list
      (lambda (_h71446_)
        (let ((_h71448_
               (if (and (let () (declare (not safe)) (##structure? _h71446_))
                        (let ((__tmp74435
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71446_))))
                          (declare (not safe))
                          (eq? __tmp74435 HashTable::t)))
                   _h71446_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71446_)))))
          (declare (not safe))
          (&hash->list _h71448_))))
    (define &hash->list
      (lambda (_h71439_)
        (let ((_lst71441_ '()))
          (let ((__tmp74436
                 (lambda (_k71443_ _v71444_)
                   (set! _lst71441_
                         (let ((__tmp74437
                                (let ()
                                  (declare (not safe))
                                  (cons _k71443_ _v71444_))))
                           (declare (not safe))
                           (cons __tmp74437 _lst71441_))))))
            (declare (not safe))
            (&HashTable-for-each _h71439_ __tmp74436))
          _lst71441_)))
    (define hash->plist
      (lambda (_h71435_)
        (let ((_h71437_
               (if (and (let () (declare (not safe)) (##structure? _h71435_))
                        (let ((__tmp74438
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71435_))))
                          (declare (not safe))
                          (eq? __tmp74438 HashTable::t)))
                   _h71435_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71435_)))))
          (declare (not safe))
          (&hash->plist _h71437_))))
    (define &hash->plist
      (lambda (_h71428_)
        (let ((_lst71430_ '()))
          (let ((__tmp74439
                 (lambda (_k71432_ _v71433_)
                   (set! _lst71430_
                         (let ((__tmp74440
                                (let ()
                                  (declare (not safe))
                                  (cons _v71433_ _lst71430_))))
                           (declare (not safe))
                           (cons _k71432_ __tmp74440))))))
            (declare (not safe))
            (&HashTable-for-each _h71428_ __tmp74439))
          _lst71430_)))
    (define hash-for-each
      (lambda (_proc71425_ _h71426_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h71426_ _proc71425_))))
    (define hash-map
      (lambda (_proc71417_ _h71418_)
        (let ((_result71420_ '()))
          (let ((__tmp74441
                 (lambda (_k71422_ _v71423_)
                   (set! _result71420_
                         (let ((__tmp74442 (_proc71417_ _k71422_ _v71423_)))
                           (declare (not safe))
                           (cons __tmp74442 _result71420_))))))
            (declare (not safe))
            (HashTable-for-each _h71418_ __tmp74441))
          _result71420_)))
    (define hash-fold
      (lambda (_proc71408_ _iv71409_ _h71410_)
        (let ((_result71412_ _iv71409_))
          (let ((__tmp74443
                 (lambda (_k71414_ _v71415_)
                   (set! _result71412_
                         (_proc71408_ _k71414_ _v71415_ _result71412_)))))
            (declare (not safe))
            (HashTable-for-each _h71410_ __tmp74443))
          _result71412_)))
    (define hash-find__%
      (lambda (_proc71384_ _h71385_ _default-value71386_)
        (call/cc (lambda (_return71388_)
                   (let ((__tmp74444
                          (lambda (_k71390_ _v71391_)
                            (let ((_$e71393_ (_proc71384_ _k71390_ _v71391_)))
                              (if _$e71393_
                                  (_return71388_ _$e71393_)
                                  '#!void)))))
                     (declare (not safe))
                     (HashTable-for-each _h71385_ __tmp74444))
                   _default-value71386_))))
    (define hash-find__0
      (lambda (_proc71399_ _h71400_)
        (let ((_default-value71402_ '#f))
          (declare (not safe))
          (hash-find__% _proc71399_ _h71400_ _default-value71402_))))
    (define hash-find
      (lambda _g74446_
        (let ((_g74445_ (let () (declare (not safe)) (##length _g74446_))))
          (cond ((let () (declare (not safe)) (##fx= _g74445_ 2))
                 (apply (lambda (_proc71399_ _h71400_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc71399_ _h71400_)))
                        _g74446_))
                ((let () (declare (not safe)) (##fx= _g74445_ 3))
                 (apply (lambda (_proc71404_ _h71405_ _default-value71406_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc71404_
                             _h71405_
                             _default-value71406_)))
                        _g74446_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g74446_))))))
    (define hash-keys
      (lambda (_h71379_)
        (let ((_h71381_
               (if (and (let () (declare (not safe)) (##structure? _h71379_))
                        (let ((__tmp74447
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71379_))))
                          (declare (not safe))
                          (eq? __tmp74447 HashTable::t)))
                   _h71379_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71379_)))))
          (declare (not safe))
          (&hash-keys _h71381_))))
    (define &hash-keys
      (lambda (_h71372_)
        (let ((_result71374_ '()))
          (let ((__tmp74448
                 (lambda (_k71376_ _v71377_)
                   (set! _result71374_
                         (let ()
                           (declare (not safe))
                           (cons _k71376_ _result71374_))))))
            (declare (not safe))
            (&HashTable-for-each _h71372_ __tmp74448))
          _result71374_)))
    (define hash-values
      (lambda (_h71368_)
        (let ((_h71370_
               (if (and (let () (declare (not safe)) (##structure? _h71368_))
                        (let ((__tmp74449
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71368_))))
                          (declare (not safe))
                          (eq? __tmp74449 HashTable::t)))
                   _h71368_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71368_)))))
          (declare (not safe))
          (&hash-values _h71370_))))
    (define &hash-values
      (lambda (_h71361_)
        (let ((_result71363_ '()))
          (let ((__tmp74450
                 (lambda (_k71365_ _v71366_)
                   (set! _result71363_
                         (let ()
                           (declare (not safe))
                           (cons _v71366_ _result71363_))))))
            (declare (not safe))
            (&HashTable-for-each _h71361_ __tmp74450))
          _result71363_)))
    (define hash-copy
      (lambda (_h71357_)
        (let ((_h71359_
               (if (and (let () (declare (not safe)) (##structure? _h71357_))
                        (let ((__tmp74451
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71357_))))
                          (declare (not safe))
                          (eq? __tmp74451 HashTable::t)))
                   _h71357_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71357_)))))
          (declare (not safe))
          (&HashTable-copy _h71359_))))
    (define &hash-copy
      (lambda (_h71355_)
        (let () (declare (not safe)) (&HashTable-copy _h71355_))))
    (define hash-merge
      (lambda (_h71350_ . _rest71351_)
        (let ((_copy71353_ (let () (declare (not safe)) (hash-copy _h71350_))))
          (apply hash-merge! _copy71353_ _rest71351_)
          _copy71353_)))
    (define hash-merge!
      (lambda (_h71340_ . _rest71341_)
        (let ((_h71343_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h71340_))))
          (for-each
           (lambda (_hr71345_)
             (let ((__tmp74452
                    (lambda (_k71347_ _v71348_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h71343_ _k71347_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h71343_ _k71347_ _v71348_))))))
               (declare (not safe))
               (hash-for-each __tmp74452 _hr71345_)))
           _rest71341_)
          _h71343_)))))
