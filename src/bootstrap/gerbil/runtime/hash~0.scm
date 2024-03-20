(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1710943025)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp74324 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp74324
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args74307_
        (apply make-instance UnboundKeyError::t _$args74307_)))
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
      (lambda (_where74181_ _message74182_ . _irritants74183_)
        (raise (let ((__obj74321
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj74321
                  _message74182_
                  'where:
                  _where74181_
                  'irritants:
                  _irritants74183_)
                 __obj74321))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp74329 (list interface-instance::t))
            (__tmp74325
             (let ((__tmp74328
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp74326
                    (let ((__tmp74327
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp74327 '()))))
               (declare (not safe))
               (cons __tmp74328 __tmp74326))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp74329
         '(ref set! update! delete! for-each length copy clear!)
         __tmp74325
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
      (let ((__tmp74334 (list interface-instance::t))
            (__tmp74330
             (let ((__tmp74333
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp74331
                    (let ((__tmp74332
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp74332 '()))))
               (declare (not safe))
               (cons __tmp74333 __tmp74331))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp74334
         '(begin-read! end-read! begin-write! end-write!)
         __tmp74330
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
      (lambda (_table74174_ _key74175_ _update74176_ _default74177_)
        (let ((_result74179_
               (table-ref _table74174_ _key74175_ _default74177_)))
          (table-set!
           _table74174_
           _key74175_
           (_update74176_ _default74177_)))))
    (define gambit-table-for-each
      (lambda (_table74171_ _proc74172_)
        (table-for-each _proc74172_ _table74171_)))
    (define gambit-table-clear!
      (lambda (_table74169_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table74169_ '0 '5 '#f '#f))))
    (let ((__tmp74335 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74335 'ref table-ref))
    (let ((__tmp74336 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74336 'set! table-set!))
    (let ((__tmp74337 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74337 'update! gambit-table-update!))
    (let ((__tmp74338 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74338 'delete! table-set!))
    (let ((__tmp74339 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74339 'for-each gambit-table-for-each))
    (let ((__tmp74340 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74340 'length table-length))
    (let ((__tmp74341 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74341 'copy table-copy))
    (let ((__tmp74342 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74342 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots74151_ '(table count free hash test seed))
             (_slot-vector74153_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots74151_))))
             (_slot-table74160_
              (let ((_slot-table74155_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot74157_ _field74158_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table74155_
                      _slot74157_
                      _field74158_))
                   (let ((__tmp74343 (symbol->keyword _slot74157_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table74155_
                      __tmp74343
                      _field74158_)))
                 _slots74151_
                 (iota (length _slots74151_) '1))
                _slot-table74155_))
             (_flags74162_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields74164_ '#())
             (_properties74166_
              (let ((__tmp74346
                     (let ((__tmp74347
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots74151_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp74347)))
                    (__tmp74344
                     (let ((__tmp74345
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp74345 '()))))
                (declare (not safe))
                (cons __tmp74346 __tmp74344))))
        (let ((__tmp74348
               (let ((__tmp74349
                      (let () (declare (not safe)) (cons t::t '()))))
                 (declare (not safe))
                 (cons object::t __tmp74349))))
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags74162_
           __table::t
           _fields74164_
           __tmp74348
           _slot-vector74153_
           _slot-table74160_
           _properties74166_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_slots74133_ '(gcht immediate))
             (_slot-vector74135_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots74133_))))
             (_slot-table74142_
              (let ((_slot-table74137_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot74139_ _field74140_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table74137_
                      _slot74139_
                      _field74140_))
                   (let ((__tmp74350 (symbol->keyword _slot74139_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table74137_
                      __tmp74350
                      _field74140_)))
                 _slots74133_
                 (iota (length _slots74133_) '1))
                _slot-table74137_))
             (_flags74144_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields74146_ '#())
             (_properties74148_
              (let ((__tmp74353
                     (let ((__tmp74354
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots74133_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp74354)))
                    (__tmp74351
                     (let ((__tmp74352
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp74352 '()))))
                (declare (not safe))
                (cons __tmp74353 __tmp74351))))
        (let ((__tmp74355
               (let ((__tmp74356
                      (let () (declare (not safe)) (cons t::t '()))))
                 (declare (not safe))
                 (cons object::t __tmp74356))))
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'hash-table
           _flags74144_
           __gc-table::t
           _fields74146_
           __tmp74355
           _slot-vector74135_
           _slot-table74142_
           _properties74148_
           '#f
           '#f))))
    (define locked-hash-table::t
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
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp74361
         '(table lock)
         __tmp74357
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args74130_
        (apply make-instance locked-hash-table::t _$args74130_)))
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
      (let ((__tmp74366 (list))
            (__tmp74362
             (let ((__tmp74365
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp74363
                    (let ((__tmp74364
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp74364 '()))))
               (declare (not safe))
               (cons __tmp74365 __tmp74363))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp74366
         '(table key-check)
         __tmp74362
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args74127_
        (apply make-instance checked-hash-table::t _$args74127_)))
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
      (let ((__tmp74369 (list hash-table::t))
            (__tmp74367
             (let ((__tmp74368
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74368 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp74369
         '()
         __tmp74367
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args74124_
        (apply make-instance eq-hash-table::t _$args74124_)))
    (define eqv-hash-table::t
      (let ((__tmp74372 (list hash-table::t))
            (__tmp74370
             (let ((__tmp74371
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74371 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp74372
         '()
         __tmp74370
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args74121_
        (apply make-instance eqv-hash-table::t _$args74121_)))
    (define symbol-hash-table::t
      (let ((__tmp74375 (list hash-table::t))
            (__tmp74373
             (let ((__tmp74374
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74374 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp74375
         '()
         __tmp74373
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args74118_
        (apply make-instance symbol-hash-table::t _$args74118_)))
    (define string-hash-table::t
      (let ((__tmp74378 (list hash-table::t))
            (__tmp74376
             (let ((__tmp74377
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74377 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp74378
         '()
         __tmp74376
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args74115_
        (apply make-instance string-hash-table::t _$args74115_)))
    (define immediate-hash-table::t
      (let ((__tmp74381 (list hash-table::t))
            (__tmp74379
             (let ((__tmp74380
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74380 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp74381
         '()
         __tmp74379
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _$args74112_
        (apply make-instance immediate-hash-table::t _$args74112_)))
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
      (lambda (_obj74110_)
        (if (let () (declare (not safe)) (##structure? _obj74110_))
            (let ((__tmp74382
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj74110_))))
              (declare (not safe))
              (eq? __tmp74382 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj74105_)
        (let ((_$e74107_
               (if (let () (declare (not safe)) (##structure? _obj74105_))
                   (let ((__tmp74383
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj74105_))))
                     (declare (not safe))
                     (eq? __tmp74383 HashTable::t))
                   '#f)))
          (if _$e74107_
              _$e74107_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj74105_))))))
    (define HashTable-ref
      (lambda (_h74099_ _key74100_ _default74101_)
        (let ((_h74103_
               (if (and (let () (declare (not safe)) (##structure? _h74099_))
                        (let ((__tmp74384
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74099_))))
                          (declare (not safe))
                          (eq? __tmp74384 HashTable::t)))
                   _h74099_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74099_)))))
          (declare (not safe))
          (&HashTable-ref _h74103_ _key74100_ _default74101_))))
    (define &HashTable-ref
      (lambda (_h74094_ _key74095_ _default74096_)
        (declare (not safe))
        ((##unchecked-structure-ref _h74094_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h74094_ '1 interface-instance::t '#f)
         _key74095_
         _default74096_)))
    (define HashTable-set!
      (lambda (_h74088_ _key74089_ _value74090_)
        (let ((_h74092_
               (if (and (let () (declare (not safe)) (##structure? _h74088_))
                        (let ((__tmp74385
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74088_))))
                          (declare (not safe))
                          (eq? __tmp74385 HashTable::t)))
                   _h74088_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74088_)))))
          (declare (not safe))
          (&HashTable-set! _h74092_ _key74089_ _value74090_))))
    (define &HashTable-set!
      (lambda (_h74083_ _key74084_ _value74085_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74083_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h74083_ '1 interface-instance::t '#f)
           _key74084_
           _value74085_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h74076_ _key74077_ _update74078_ _default74079_)
        (let ((_h74081_
               (if (and (let () (declare (not safe)) (##structure? _h74076_))
                        (let ((__tmp74386
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74076_))))
                          (declare (not safe))
                          (eq? __tmp74386 HashTable::t)))
                   _h74076_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74076_)))))
          (declare (not safe))
          (&HashTable-update!
           _h74081_
           _key74077_
           _update74078_
           _default74079_))))
    (define &HashTable-update!
      (lambda (_h74070_ _key74071_ _update74072_ _default74073_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74070_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h74070_ '1 interface-instance::t '#f)
           _key74071_
           _update74072_
           _default74073_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h74065_ _key74066_)
        (let ((_h74068_
               (if (and (let () (declare (not safe)) (##structure? _h74065_))
                        (let ((__tmp74387
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74065_))))
                          (declare (not safe))
                          (eq? __tmp74387 HashTable::t)))
                   _h74065_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74065_)))))
          (declare (not safe))
          (&HashTable-delete! _h74068_ _key74066_))))
    (define &HashTable-delete!
      (lambda (_h74061_ _key74062_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74061_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h74061_ '1 interface-instance::t '#f)
           _key74062_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h74056_ _proc74057_)
        (let ((_h74059_
               (if (and (let () (declare (not safe)) (##structure? _h74056_))
                        (let ((__tmp74388
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74056_))))
                          (declare (not safe))
                          (eq? __tmp74388 HashTable::t)))
                   _h74056_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74056_)))))
          (declare (not safe))
          (&HashTable-for-each _h74059_ _proc74057_))))
    (define &HashTable-for-each
      (lambda (_h74052_ _proc74053_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74052_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h74052_ '1 interface-instance::t '#f)
           _proc74053_)
          '#!void)))
    (define HashTable-length
      (lambda (_h74048_)
        (let ((_h74050_
               (if (and (let () (declare (not safe)) (##structure? _h74048_))
                        (let ((__tmp74389
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74048_))))
                          (declare (not safe))
                          (eq? __tmp74389 HashTable::t)))
                   _h74048_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74048_)))))
          (declare (not safe))
          (&HashTable-length _h74050_))))
    (define &HashTable-length
      (lambda (_h74045_)
        (declare (not safe))
        ((##unchecked-structure-ref _h74045_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h74045_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h74041_)
        (let ((_h74043_
               (if (and (let () (declare (not safe)) (##structure? _h74041_))
                        (let ((__tmp74390
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74041_))))
                          (declare (not safe))
                          (eq? __tmp74390 HashTable::t)))
                   _h74041_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74041_)))))
          (declare (not safe))
          (&HashTable-copy _h74043_))))
    (define &HashTable-copy
      (lambda (_h74038_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h74038_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h74038_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h74034_)
        (let ((_h74036_
               (if (and (let () (declare (not safe)) (##structure? _h74034_))
                        (let ((__tmp74391
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74034_))))
                          (declare (not safe))
                          (eq? __tmp74391 HashTable::t)))
                   _h74034_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74034_)))))
          (declare (not safe))
          (&HashTable-clear! _h74036_))))
    (define &HashTable-clear!
      (lambda (_h74031_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74031_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h74031_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl74028_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl74028_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl74028_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl74025_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl74025_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl74025_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl74022_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl74022_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl74022_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl74019_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl74019_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl74019_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref71032_
      (lambda (_self74006_ _key74008_ _default74009_)
        (let ((_h74011_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self74006_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l74013_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self74006_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l74013_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h74011_ _key74008_ _default74009_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l74013_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref71032_
       '#f))
    (define _locked-hash-table::set!71034_
      (lambda (_self73870_ _key73872_ _value73873_)
        (let ((_h73875_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73870_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73877_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73870_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73877_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h73875_ _key73872_ _value73873_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73877_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!71034_
       '#f))
    (define _locked-hash-table::update!71036_
      (lambda (_self73733_ _key73735_ _update73736_ _default73737_)
        (let ((_h73739_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73733_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73741_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73733_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73741_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h73739_
                _key73735_
                _update73736_
                _default73737_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73741_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!71036_
       '#f))
    (define _locked-hash-table::delete!71038_
      (lambda (_self73598_ _key73600_)
        (let ((_h73602_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73598_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73604_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73598_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73604_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h73602_ _key73600_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73604_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!71038_
       '#f))
    (define _locked-hash-table::for-each71040_
      (lambda (_self73463_ _proc73465_)
        (let ((_h73467_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73463_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73469_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73463_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l73469_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h73467_ _proc73465_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l73469_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each71040_
       '#f))
    (define _locked-hash-table::length71042_
      (lambda (_self73329_)
        (let ((_h73332_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73329_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73334_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73329_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l73334_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h73332_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l73334_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length71042_
       '#f))
    (define _locked-hash-table::copy71044_
      (lambda (_self73195_)
        (let ((_h73198_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73195_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73200_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73195_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l73200_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h73198_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l73200_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy71044_
       '#f))
    (define _locked-hash-table::clear!71046_
      (lambda (_self73061_)
        (let ((_h73064_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73061_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73066_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73061_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73066_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h73064_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73066_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!71046_
       '#f))
    (let ((__tmp74392 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74392 'begin-read! mutex-lock!))
    (let ((__tmp74393 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74393 'end-read! mutex-unlock!))
    (let ((__tmp74394 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74394 'begin-write! mutex-lock!))
    (let ((__tmp74395 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74395 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref71324_
      (lambda (_self72925_ _key72926_ _default72927_)
        (let ((_h72929_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72925_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72931_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72925_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7293372935_)
             (if (_g7293372935_ _key72926_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72926_))))
           _key?72931_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h72929_ _key72926_ _default72927_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref71324_
       '#f))
    (define _checked-hash-table::set!71326_
      (lambda (_self72789_ _key72790_ _value72791_)
        (let ((_h72793_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72789_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72795_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72789_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7279772799_)
             (if (_g7279772799_ _key72790_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72790_))))
           _key?72795_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h72793_ _key72790_ _value72791_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!71326_
       '#f))
    (define _checked-hash-table::update!71328_
      (lambda (_self72654_ _key72655_ _update72656_ _default72657_)
        (let ((_h72659_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72654_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72661_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72654_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?72664_)
             (if (_key?72664_ _key72655_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72655_)))
             (if (let () (declare (not safe)) (procedure? _update72656_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update72656_))))
           _key?72661_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h72659_
             _key72655_
             _update72656_
             _default72657_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!71328_
       '#f))
    (define _checked-hash-table::delete!71330_
      (lambda (_self72519_ _key72520_)
        (let ((_h72522_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72519_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72524_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72519_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7252672528_)
             (if (_g7252672528_ _key72520_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72520_))))
           _key?72524_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h72522_ _key72520_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!71330_
       '#f))
    (define _checked-hash-table::for-each71332_
      (lambda (_self72387_ _proc72388_)
        (let ((_h72390_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72387_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72392_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72387_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g74396_)
             (if (let () (declare (not safe)) (procedure? _proc72388_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc72388_))))
           _key?72392_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h72390_ _proc72388_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each71332_
       '#f))
    (define _checked-hash-table::length71334_
      (lambda (_self72257_)
        (let ((_h72259_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72257_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72261_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72257_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h72259_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length71334_
       '#f))
    (define _checked-hash-table::copy71336_
      (lambda (_self72127_)
        (let ((_h72129_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72127_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72131_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72127_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h72129_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy71336_
       '#f))
    (define _checked-hash-table::clear!71338_
      (lambda (_self71997_)
        (let ((_h71999_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71997_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72001_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71997_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h71999_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!71338_
       '#f))
    (define make-generic-hash-table
      (lambda (_table71867_
               _count71868_
               _free71869_
               _hash71870_
               _test71871_
               _seed71872_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table71867_
           _count71868_
           _free71869_
           _hash71870_
           _test71871_
           _seed71872_))))
    (define make-hash-table__%
      (lambda (_g74397_
               _size-hint7171271722_
               _seed7171371724_
               _test7171471726_
               _hash7171571728_
               _lock7171671730_
               _check7171771732_
               _weak-keys7171871734_
               _weak-values7171971736_)
        (let* ((_size-hint71739_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint7171271722_ absent-value))
                    '#f
                    _size-hint7171271722_))
               (_seed71741_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed7171371724_ absent-value))
                    '#f
                    _seed7171371724_))
               (_test71743_
                (if (let ()
                      (declare (not safe))
                      (eq? _test7171471726_ absent-value))
                    equal?
                    _test7171471726_))
               (_hash71745_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash7171571728_ absent-value))
                    '#f
                    _hash7171571728_))
               (_lock71747_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock7171671730_ absent-value))
                    '#f
                    _lock7171671730_))
               (_check71749_
                (if (let ()
                      (declare (not safe))
                      (eq? _check7171771732_ absent-value))
                    '#f
                    _check7171771732_))
               (_weak-keys71751_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys7171871734_ absent-value))
                    '#f
                    _weak-keys7171871734_))
               (_weak-values71753_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values7171971736_ absent-value))
                    '#f
                    _weak-values7171971736_)))
          (letrec ((_table-seed71755_
                    (lambda ()
                      (if (let () (declare (not safe)) (fixnum? _seed71741_))
                          _seed71741_
                          (random-integer (macro-max-fixnum32)))))
                   (_wrap-lock71756_
                    (lambda (_ht71850_)
                      (if _lock71747_
                          (let ((__tmp74398
                                 (let ((__tmp74399
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock71747_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht71850_
                                    __tmp74399))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp74398))
                          _ht71850_)))
                   (_wrap-checked71757_
                    (lambda (_ht71847_ _implicit71848_)
                      (if _check71749_
                          (let ((__tmp74400
                                 (let ((__tmp74401
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check71749_))
                                            _check71749_
                                            _implicit71848_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht71847_
                                    __tmp74401))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp74400))
                          _ht71847_)))
                   (_make71758_
                    (lambda (_kons71835_ _key?71836_ _hash71837_ _test71838_)
                      (let* ((_size71840_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint71739_)))
                             (_table71842_
                              (make-vector _size71840_ (macro-unused-obj)))
                             (_ht71844_
                              (let ((__tmp74402
                                     (_kons71835_
                                      _table71842_
                                      '0
                                      (fxquotient _size71840_ '2)
                                      _hash71837_
                                      _test71838_
                                      (let ()
                                        (declare (not safe))
                                        (_table-seed71755_)))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp74402))))
                        (let ((__tmp74403
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock71756_ _ht71844_))))
                          (declare (not safe))
                          (_wrap-checked71757_ __tmp74403 _key?71836_)))))
                   (_make-gc-hash-table71759_
                    (lambda ()
                      (let* ((_ht71833_
                              (let ((__tmp74404
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _size-hint71739_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp74404)))
                             (__tmp74405
                              (let ()
                                (declare (not safe))
                                (_wrap-lock71756_ _ht71833_))))
                        (declare (not safe))
                        (_wrap-checked71757_ __tmp74405 true))))
                   (_make-gambit-table71760_
                    (lambda ()
                      (let* ((_size71817_
                              (let ((_$e71814_ _size-hint71739_))
                                (if _$e71814_ _$e71814_ (macro-absent-obj))))
                             (_test71822_
                              (let ((_$e71819_ _test71743_))
                                (if _$e71819_ _$e71819_ equal?)))
                             (_hash71827_
                              (let ((_$e71824_ _hash71745_))
                                (if _$e71824_
                                    _$e71824_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test71822_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test71822_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht71829_
                              (let ((__tmp74406
                                     (make-table
                                      'size:
                                      _size71817_
                                      'test:
                                      _test71822_
                                      'hash:
                                      _hash71827_
                                      'weak-keys:
                                      _weak-keys71751_
                                      'weak-values:
                                      _weak-values71753_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp74406))))
                        (let ((__tmp74407
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock71756_ _ht71829_))))
                          (declare (not safe))
                          (_wrap-checked71757_ __tmp74407 true))))))
            (if (or _weak-keys71751_ _weak-values71753_)
                (let () (declare (not safe)) (_make-gambit-table71760_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test71743_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test71743_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash71745_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash71745_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash71745_ eq-hash)))
                         (let () (declare (not safe)) (not _seed71741_)))
                    (let () (declare (not safe)) (_make-gc-hash-table71759_))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test71743_ eq?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test71743_ ##eq?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash71745_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash71745_ eq?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash71745_ eq-hash))))
                        (let ()
                          (declare (not safe))
                          (_make71758_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test71743_ eqv?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test71743_ ##eqv?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _hash71745_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash71745_ eqv?-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash71745_ eqv-hash))))
                            (let ()
                              (declare (not safe))
                              (_make71758_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test71743_ eq?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test71743_ ##eq?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash71745_ symbolic-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash71745_ ##symbol-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make71758_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (let ()
                                               (declare (not safe))
                                               (eq? _test71743_ eq?))
                                             (let ()
                                               (declare (not safe))
                                               (eq? _test71743_ ##eq?)))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash71745_ immediate-hash)))
                                    (let ()
                                      (declare (not safe))
                                      (_make71758_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (let ()
                                                   (declare (not safe))
                                                   (eq? _test71743_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test71743_ ##equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test71743_ string=?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test71743_
                                                        ##string=?)))
                                             (or (let ()
                                                   (declare (not safe))
                                                   (eq? _hash71745_
                                                        string-hash))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _hash71745_
                                                        ##string=?-hash))))
                                        (let ()
                                          (declare (not safe))
                                          (_make71758_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (let ()
                                                   (declare (not safe))
                                                   (eq? _test71743_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _hash71745_)))
                                            (let ()
                                              (declare (not safe))
                                              (_make71758_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp74409
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _test71743_))))
                                                  (declare (not safe))
                                                  (not __tmp74409))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _test71743_))
                                                (if (let ((__tmp74408
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _hash71745_))))
                                                      (declare (not safe))
                                                      (not __tmp74408))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _hash71745_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make71758_
                                                       make-generic-hash-table
                                                       true
                                                       _hash71745_
                                                       _test71743_))))))))))))))))
    (define make-hash-table__@
      (lambda (_keys7171171856_ . _args71858_)
        (apply make-hash-table__%
               _keys7171171856_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7171171856_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7171171856_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7171171856_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7171171856_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7171171856_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7171171856_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7171171856_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7171171856_
                  'weak-values:
                  absent-value))
               _args71858_)))
    (define make-hash-table
      (lambda _args7172071864_
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
               _args7172071864_)))
    (define make-hash-table-eq
      (lambda _args71708_ (apply make-hash-table 'test: eq? _args71708_)))
    (define make-hash-table-eqv
      (lambda _args71706_ (apply make-hash-table 'test: eqv? _args71706_)))
    (define make-hash-table-symbolic
      (lambda _args71704_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args71704_)))
    (define make-hash-table-string
      (lambda _args71702_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args71702_)))
    (define make-hash-table-immediate
      (lambda _args71700_
        (apply make-hash-table 'test: eq? 'hash: immediate-hash _args71700_)))
    (define list->hash-table
      (lambda (_lst71697_ . _args71698_)
        (let ((__tmp74410
               (apply make-hash-table 'size: (length _lst71697_) _args71698_)))
          (declare (not safe))
          (list->hash-table! _lst71697_ __tmp74410))))
    (define list->hash-table-eq
      (lambda (_lst71694_ . _args71695_)
        (let ((__tmp74411
               (apply make-hash-table-eq
                      'size:
                      (length _lst71694_)
                      _args71695_)))
          (declare (not safe))
          (list->hash-table! _lst71694_ __tmp74411))))
    (define list->hash-table-eqv
      (lambda (_lst71691_ . _args71692_)
        (let ((__tmp74412
               (apply make-hash-table-eqv
                      'size:
                      (length _lst71691_)
                      _args71692_)))
          (declare (not safe))
          (list->hash-table! _lst71691_ __tmp74412))))
    (define list->hash-table-symbolic
      (lambda (_lst71688_ . _args71689_)
        (let ((__tmp74413
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst71688_)
                      _args71689_)))
          (declare (not safe))
          (list->hash-table! _lst71688_ __tmp74413))))
    (define list->hash-table-string
      (lambda (_lst71685_ . _args71686_)
        (let ((__tmp74414
               (apply make-hash-table-string
                      'size:
                      (length _lst71685_)
                      _args71686_)))
          (declare (not safe))
          (list->hash-table! _lst71685_ __tmp74414))))
    (define list->hash-table-immediate
      (lambda (_lst71682_ . _args71683_)
        (let ((__tmp74415
               (apply make-hash-table-immediate
                      'size:
                      (length _lst71682_)
                      _args71683_)))
          (declare (not safe))
          (list->hash-table! _lst71682_ __tmp74415))))
    (define list->hash-table!
      (lambda (_lst71649_ _h71650_)
        (for-each
         (lambda (_el71652_)
           (let* ((_el7165371660_ _el71652_)
                  (_E7165571664_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el7165371660_))))
                  (_K7165671670_
                   (lambda (_v71667_ _k71668_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h71650_ _k71668_ _v71667_)))))
             (if (let () (declare (not safe)) (##pair? _el7165371660_))
                 (let ((_hd7165771673_
                        (let () (declare (not safe)) (##car _el7165371660_)))
                       (_tl7165871675_
                        (let () (declare (not safe)) (##cdr _el7165371660_))))
                   (let* ((_k71678_ _hd7165771673_) (_v71680_ _tl7165871675_))
                     (declare (not safe))
                     (_K7165671670_ _v71680_ _k71678_)))
                 (let () (declare (not safe)) (_E7165571664_)))))
         _lst71649_)
        _h71650_))
    (define plist->hash-table
      (lambda (_lst71646_ . _args71647_)
        (let ((__tmp74416
               (apply make-hash-table 'size: (length _lst71646_) _args71647_)))
          (declare (not safe))
          (plist->hash-table! _lst71646_ __tmp74416))))
    (define plist->hash-table-eq
      (lambda (_lst71643_ . _args71644_)
        (let ((__tmp74417
               (apply make-hash-table-eq
                      'size:
                      (length _lst71643_)
                      _args71644_)))
          (declare (not safe))
          (plist->hash-table! _lst71643_ __tmp74417))))
    (define plist->hash-table-eqv
      (lambda (_lst71640_ . _args71641_)
        (let ((__tmp74418
               (apply make-hash-table-eqv
                      'size:
                      (length _lst71640_)
                      _args71641_)))
          (declare (not safe))
          (plist->hash-table! _lst71640_ __tmp74418))))
    (define plist->hash-table-symbolic
      (lambda (_lst71637_ . _args71638_)
        (let ((__tmp74419
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst71637_)
                      _args71638_)))
          (declare (not safe))
          (plist->hash-table! _lst71637_ __tmp74419))))
    (define plist->hash-table-string
      (lambda (_lst71634_ . _args71635_)
        (let ((__tmp74420
               (apply make-hash-table-string
                      'size:
                      (length _lst71634_)
                      _args71635_)))
          (declare (not safe))
          (plist->hash-table! _lst71634_ __tmp74420))))
    (define plist->hash-table-immediate
      (lambda (_lst71631_ . _args71632_)
        (let ((__tmp74421
               (apply make-hash-table-immediate
                      'size:
                      (length _lst71631_)
                      _args71632_)))
          (declare (not safe))
          (plist->hash-table! _lst71631_ __tmp74421))))
    (define plist->hash-table!
      (lambda (_lst71571_ _h71572_)
        (let _loop71574_ ((_rest71576_ _lst71571_))
          (let* ((_rest7157771589_ _rest71576_)
                 (_else7158071597_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst71571_)))))
            (let ((_K7158371612_
                   (lambda (_rest71608_ _val71609_ _key71610_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h71572_ _key71610_ _val71609_))
                     (let () (declare (not safe)) (_loop71574_ _rest71608_))))
                  (_K7158271602_ (lambda () _h71572_)))
              (let ((_try-match7157971605_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest7157771589_))
                           (let () (declare (not safe)) (_K7158271602_))
                           (let () (declare (not safe)) (_else7158071597_))))))
                (if (let () (declare (not safe)) (##pair? _rest7157771589_))
                    (let ((_tl7158571617_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest7157771589_)))
                          (_hd7158471615_
                           (let ()
                             (declare (not safe))
                             (##car _rest7157771589_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl7158571617_))
                          (let ((_tl7158771624_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl7158571617_)))
                                (_hd7158671622_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl7158571617_))))
                            (let ((_key71620_ _hd7158471615_)
                                  (_val71627_ _hd7158671622_)
                                  (_rest71629_ _tl7158771624_))
                              (let ()
                                (declare (not safe))
                                (_K7158371612_
                                 _rest71629_
                                 _val71627_
                                 _key71620_))))
                          (let () (declare (not safe)) (_else7158071597_))))
                    (let ()
                      (declare (not safe))
                      (_try-match7157971605_)))))))))
    (define hash-length
      (lambda (_h71567_)
        (let ((_h71569_
               (if (and (let () (declare (not safe)) (##structure? _h71567_))
                        (let ((__tmp74422
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71567_))))
                          (declare (not safe))
                          (eq? __tmp74422 HashTable::t)))
                   _h71567_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71567_)))))
          (declare (not safe))
          (&HashTable-length _h71569_))))
    (define &hash-length
      (lambda (_h71565_)
        (let () (declare (not safe)) (&HashTable-length _h71565_))))
    (define hash-ref__%
      (lambda (_h71547_ _key71548_ _default71549_)
        (let ((_h71551_
               (if (and (let () (declare (not safe)) (##structure? _h71547_))
                        (let ((__tmp74423
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71547_))))
                          (declare (not safe))
                          (eq? __tmp74423 HashTable::t)))
                   _h71547_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71547_)))))
          (declare (not safe))
          (&hash-ref__% _h71551_ _key71548_ _default71549_))))
    (define hash-ref__0
      (lambda (_h71556_ _key71557_)
        (let ((_default71559_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h71556_ _key71557_ _default71559_))))
    (define hash-ref
      (lambda _g74425_
        (let ((_g74424_ (let () (declare (not safe)) (##length _g74425_))))
          (cond ((let () (declare (not safe)) (##fx= _g74424_ 2))
                 (apply (lambda (_h71556_ _key71557_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h71556_ _key71557_)))
                        _g74425_))
                ((let () (declare (not safe)) (##fx= _g74424_ 3))
                 (apply (lambda (_h71561_ _key71562_ _default71563_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h71561_ _key71562_ _default71563_)))
                        _g74425_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g74425_))))))
    (define &hash-ref__%
      (lambda (_h71528_ _key71529_ _default71530_)
        (let ((_result71532_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h71528_ _key71529_ _default71530_))))
          (if (let ((__tmp74426 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result71532_ __tmp74426))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h71528_
                 'key:
                 _key71529_))
              _result71532_))))
    (define &hash-ref__0
      (lambda (_h71537_ _key71538_)
        (let ((_default71540_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h71537_ _key71538_ _default71540_))))
    (define &hash-ref
      (lambda _g74428_
        (let ((_g74427_ (let () (declare (not safe)) (##length _g74428_))))
          (cond ((let () (declare (not safe)) (##fx= _g74427_ 2))
                 (apply (lambda (_h71537_ _key71538_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h71537_ _key71538_)))
                        _g74428_))
                ((let () (declare (not safe)) (##fx= _g74427_ 3))
                 (apply (lambda (_h71542_ _key71543_ _default71544_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h71542_ _key71543_ _default71544_)))
                        _g74428_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g74428_))))))
    (define hash-get
      (lambda (_h71522_ _key71523_)
        (let ((_h71525_
               (if (and (let () (declare (not safe)) (##structure? _h71522_))
                        (let ((__tmp74429
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71522_))))
                          (declare (not safe))
                          (eq? __tmp74429 HashTable::t)))
                   _h71522_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71522_)))))
          (declare (not safe))
          (&hash-get _h71525_ _key71523_))))
    (define &hash-get
      (lambda (_h71519_ _key71520_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h71519_ _key71520_ '#f))))
    (define hash-put!
      (lambda (_h71513_ _key71514_ _value71515_)
        (let ((_h71517_
               (if (and (let () (declare (not safe)) (##structure? _h71513_))
                        (let ((__tmp74430
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71513_))))
                          (declare (not safe))
                          (eq? __tmp74430 HashTable::t)))
                   _h71513_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71513_)))))
          (declare (not safe))
          (&HashTable-set! _h71517_ _key71514_ _value71515_))))
    (define &hash-put!
      (lambda (_h71509_ _key71510_ _value71511_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h71509_ _key71510_ _value71511_))))
    (define hash-update!__%
      (lambda (_h71488_ _key71489_ _update71490_ _default71491_)
        (let ((_h71493_
               (if (and (let () (declare (not safe)) (##structure? _h71488_))
                        (let ((__tmp74431
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71488_))))
                          (declare (not safe))
                          (eq? __tmp74431 HashTable::t)))
                   _h71488_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71488_)))))
          (declare (not safe))
          (&HashTable-update!
           _h71493_
           _key71489_
           _update71490_
           _default71491_))))
    (define hash-update!__0
      (lambda (_h71498_ _key71499_ _update71500_)
        (let ((_default71502_ '#!void))
          (declare (not safe))
          (hash-update!__% _h71498_ _key71499_ _update71500_ _default71502_))))
    (define hash-update!
      (lambda _g74433_
        (let ((_g74432_ (let () (declare (not safe)) (##length _g74433_))))
          (cond ((let () (declare (not safe)) (##fx= _g74432_ 3))
                 (apply (lambda (_h71498_ _key71499_ _update71500_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h71498_
                             _key71499_
                             _update71500_)))
                        _g74433_))
                ((let () (declare (not safe)) (##fx= _g74432_ 4))
                 (apply (lambda (_h71504_
                                 _key71505_
                                 _update71506_
                                 _default71507_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h71504_
                             _key71505_
                             _update71506_
                             _default71507_)))
                        _g74433_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g74433_))))))
    (define &hash-update!__%
      (lambda (_h71468_ _key71469_ _update71470_ _default71471_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h71468_
           _key71469_
           _update71470_
           _default71471_))))
    (define &hash-update!__0
      (lambda (_h71476_ _key71477_ _update71478_)
        (let ((_default71480_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h71476_
           _key71477_
           _update71478_
           _default71480_))))
    (define &hash-update!
      (lambda _g74435_
        (let ((_g74434_ (let () (declare (not safe)) (##length _g74435_))))
          (cond ((let () (declare (not safe)) (##fx= _g74434_ 3))
                 (apply (lambda (_h71476_ _key71477_ _update71478_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h71476_
                             _key71477_
                             _update71478_)))
                        _g74435_))
                ((let () (declare (not safe)) (##fx= _g74434_ 4))
                 (apply (lambda (_h71482_
                                 _key71483_
                                 _update71484_
                                 _default71485_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h71482_
                             _key71483_
                             _update71484_
                             _default71485_)))
                        _g74435_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g74435_))))))
    (define hash-remove!
      (lambda (_h71462_ _key71463_)
        (let ((_h71465_
               (if (and (let () (declare (not safe)) (##structure? _h71462_))
                        (let ((__tmp74436
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71462_))))
                          (declare (not safe))
                          (eq? __tmp74436 HashTable::t)))
                   _h71462_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71462_)))))
          (declare (not safe))
          (&HashTable-delete! _h71465_ _key71463_))))
    (define &hash-remove!
      (lambda (_h71459_ _key71460_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h71459_ _key71460_))))
    (define hash-key?
      (lambda (_h71454_ _k71455_)
        (let ((_h71457_
               (if (and (let () (declare (not safe)) (##structure? _h71454_))
                        (let ((__tmp74437
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71454_))))
                          (declare (not safe))
                          (eq? __tmp74437 HashTable::t)))
                   _h71454_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71454_)))))
          (declare (not safe))
          (&hash-key? _h71457_ _k71455_))))
    (define &hash-key?
      (lambda (_h71451_ _k71452_)
        (let ((__tmp74438
               (let ((__tmp74439
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h71451_ _k71452_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp74439 absent-value))))
          (declare (not safe))
          (not __tmp74438))))
    (define hash->list
      (lambda (_h71447_)
        (let ((_h71449_
               (if (and (let () (declare (not safe)) (##structure? _h71447_))
                        (let ((__tmp74440
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71447_))))
                          (declare (not safe))
                          (eq? __tmp74440 HashTable::t)))
                   _h71447_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71447_)))))
          (declare (not safe))
          (&hash->list _h71449_))))
    (define &hash->list
      (lambda (_h71440_)
        (let ((_lst71442_ '()))
          (let ((__tmp74441
                 (lambda (_k71444_ _v71445_)
                   (set! _lst71442_
                         (let ((__tmp74442
                                (let ()
                                  (declare (not safe))
                                  (cons _k71444_ _v71445_))))
                           (declare (not safe))
                           (cons __tmp74442 _lst71442_))))))
            (declare (not safe))
            (&HashTable-for-each _h71440_ __tmp74441))
          _lst71442_)))
    (define hash->plist
      (lambda (_h71436_)
        (let ((_h71438_
               (if (and (let () (declare (not safe)) (##structure? _h71436_))
                        (let ((__tmp74443
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71436_))))
                          (declare (not safe))
                          (eq? __tmp74443 HashTable::t)))
                   _h71436_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71436_)))))
          (declare (not safe))
          (&hash->plist _h71438_))))
    (define &hash->plist
      (lambda (_h71429_)
        (let ((_lst71431_ '()))
          (let ((__tmp74444
                 (lambda (_k71433_ _v71434_)
                   (set! _lst71431_
                         (let ((__tmp74445
                                (let ()
                                  (declare (not safe))
                                  (cons _v71434_ _lst71431_))))
                           (declare (not safe))
                           (cons _k71433_ __tmp74445))))))
            (declare (not safe))
            (&HashTable-for-each _h71429_ __tmp74444))
          _lst71431_)))
    (define hash-for-each
      (lambda (_proc71426_ _h71427_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h71427_ _proc71426_))))
    (define hash-map
      (lambda (_proc71418_ _h71419_)
        (let ((_result71421_ '()))
          (let ((__tmp74446
                 (lambda (_k71423_ _v71424_)
                   (set! _result71421_
                         (let ((__tmp74447 (_proc71418_ _k71423_ _v71424_)))
                           (declare (not safe))
                           (cons __tmp74447 _result71421_))))))
            (declare (not safe))
            (HashTable-for-each _h71419_ __tmp74446))
          _result71421_)))
    (define hash-fold
      (lambda (_proc71409_ _iv71410_ _h71411_)
        (let ((_result71413_ _iv71410_))
          (let ((__tmp74448
                 (lambda (_k71415_ _v71416_)
                   (set! _result71413_
                         (_proc71409_ _k71415_ _v71416_ _result71413_)))))
            (declare (not safe))
            (HashTable-for-each _h71411_ __tmp74448))
          _result71413_)))
    (define hash-find__%
      (lambda (_proc71385_ _h71386_ _default-value71387_)
        (call/cc (lambda (_return71389_)
                   (let ((__tmp74449
                          (lambda (_k71391_ _v71392_)
                            (let ((_$e71394_ (_proc71385_ _k71391_ _v71392_)))
                              (if _$e71394_
                                  (_return71389_ _$e71394_)
                                  '#!void)))))
                     (declare (not safe))
                     (HashTable-for-each _h71386_ __tmp74449))
                   _default-value71387_))))
    (define hash-find__0
      (lambda (_proc71400_ _h71401_)
        (let ((_default-value71403_ '#f))
          (declare (not safe))
          (hash-find__% _proc71400_ _h71401_ _default-value71403_))))
    (define hash-find
      (lambda _g74451_
        (let ((_g74450_ (let () (declare (not safe)) (##length _g74451_))))
          (cond ((let () (declare (not safe)) (##fx= _g74450_ 2))
                 (apply (lambda (_proc71400_ _h71401_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc71400_ _h71401_)))
                        _g74451_))
                ((let () (declare (not safe)) (##fx= _g74450_ 3))
                 (apply (lambda (_proc71405_ _h71406_ _default-value71407_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc71405_
                             _h71406_
                             _default-value71407_)))
                        _g74451_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g74451_))))))
    (define hash-keys
      (lambda (_h71380_)
        (let ((_h71382_
               (if (and (let () (declare (not safe)) (##structure? _h71380_))
                        (let ((__tmp74452
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71380_))))
                          (declare (not safe))
                          (eq? __tmp74452 HashTable::t)))
                   _h71380_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71380_)))))
          (declare (not safe))
          (&hash-keys _h71382_))))
    (define &hash-keys
      (lambda (_h71373_)
        (let ((_result71375_ '()))
          (let ((__tmp74453
                 (lambda (_k71377_ _v71378_)
                   (set! _result71375_
                         (let ()
                           (declare (not safe))
                           (cons _k71377_ _result71375_))))))
            (declare (not safe))
            (&HashTable-for-each _h71373_ __tmp74453))
          _result71375_)))
    (define hash-values
      (lambda (_h71369_)
        (let ((_h71371_
               (if (and (let () (declare (not safe)) (##structure? _h71369_))
                        (let ((__tmp74454
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71369_))))
                          (declare (not safe))
                          (eq? __tmp74454 HashTable::t)))
                   _h71369_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71369_)))))
          (declare (not safe))
          (&hash-values _h71371_))))
    (define &hash-values
      (lambda (_h71362_)
        (let ((_result71364_ '()))
          (let ((__tmp74455
                 (lambda (_k71366_ _v71367_)
                   (set! _result71364_
                         (let ()
                           (declare (not safe))
                           (cons _v71367_ _result71364_))))))
            (declare (not safe))
            (&HashTable-for-each _h71362_ __tmp74455))
          _result71364_)))
    (define hash-copy
      (lambda (_h71358_)
        (let ((_h71360_
               (if (and (let () (declare (not safe)) (##structure? _h71358_))
                        (let ((__tmp74456
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71358_))))
                          (declare (not safe))
                          (eq? __tmp74456 HashTable::t)))
                   _h71358_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71358_)))))
          (declare (not safe))
          (&HashTable-copy _h71360_))))
    (define &hash-copy
      (lambda (_h71356_)
        (let () (declare (not safe)) (&HashTable-copy _h71356_))))
    (define hash-merge
      (lambda (_h71351_ . _rest71352_)
        (let ((_copy71354_ (let () (declare (not safe)) (hash-copy _h71351_))))
          (apply hash-merge! _copy71354_ _rest71352_)
          _copy71354_)))
    (define hash-merge!
      (lambda (_h71341_ . _rest71342_)
        (let ((_h71344_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h71341_))))
          (for-each
           (lambda (_hr71346_)
             (let ((__tmp74457
                    (lambda (_k71348_ _v71349_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h71344_ _k71348_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h71344_ _k71348_ _v71349_))))))
               (declare (not safe))
               (hash-for-each __tmp74457 _hr71346_)))
           _rest71342_)
          _h71344_)))))
