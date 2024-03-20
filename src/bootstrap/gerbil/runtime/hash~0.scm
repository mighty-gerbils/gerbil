(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1710943497)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp74305 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp74305
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args74288_
        (apply make-instance UnboundKeyError::t _$args74288_)))
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
      (lambda (_where74162_ _message74163_ . _irritants74164_)
        (raise (let ((__obj74302
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj74302
                  _message74163_
                  'where:
                  _where74162_
                  'irritants:
                  _irritants74164_)
                 __obj74302))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp74310 (list interface-instance::t))
            (__tmp74306
             (let ((__tmp74309
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp74307
                    (let ((__tmp74308
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp74308 '()))))
               (declare (not safe))
               (cons __tmp74309 __tmp74307))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp74310
         '(ref set! update! delete! for-each length copy clear!)
         __tmp74306
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
      (let ((__tmp74315 (list interface-instance::t))
            (__tmp74311
             (let ((__tmp74314
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp74312
                    (let ((__tmp74313
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp74313 '()))))
               (declare (not safe))
               (cons __tmp74314 __tmp74312))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp74315
         '(begin-read! end-read! begin-write! end-write!)
         __tmp74311
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
      (lambda (_table74155_ _key74156_ _update74157_ _default74158_)
        (let ((_result74160_
               (table-ref _table74155_ _key74156_ _default74158_)))
          (table-set!
           _table74155_
           _key74156_
           (_update74157_ _default74158_)))))
    (define gambit-table-for-each
      (lambda (_table74152_ _proc74153_)
        (table-for-each _proc74153_ _table74152_)))
    (define gambit-table-clear!
      (lambda (_table74150_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table74150_ '0 '5 '#f '#f))))
    (let ((__tmp74316 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74316 'ref table-ref))
    (let ((__tmp74317 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74317 'set! table-set!))
    (let ((__tmp74318 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74318 'update! gambit-table-update!))
    (let ((__tmp74319 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74319 'delete! table-set!))
    (let ((__tmp74320 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74320 'for-each gambit-table-for-each))
    (let ((__tmp74321 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74321 'length table-length))
    (let ((__tmp74322 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74322 'copy table-copy))
    (let ((__tmp74323 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74323 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots74132_ '(table count free hash test seed))
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
                   (let ((__tmp74324 (symbol->keyword _slot74138_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table74136_
                      __tmp74324
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
              (let ((__tmp74327
                     (let ((__tmp74328
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots74132_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp74328)))
                    (__tmp74325
                     (let ((__tmp74326
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp74326 '()))))
                (declare (not safe))
                (cons __tmp74327 __tmp74325))))
        (let ((__tmp74329
               (let ((__tmp74330
                      (let () (declare (not safe)) (cons t::t '()))))
                 (declare (not safe))
                 (cons object::t __tmp74330))))
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags74143_
           __table::t
           _fields74145_
           __tmp74329
           _slot-vector74134_
           _slot-table74141_
           _properties74147_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_slots74114_ '(gcht immediate))
             (_slot-vector74116_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots74114_))))
             (_slot-table74123_
              (let ((_slot-table74118_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot74120_ _field74121_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table74118_
                      _slot74120_
                      _field74121_))
                   (let ((__tmp74331 (symbol->keyword _slot74120_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table74118_
                      __tmp74331
                      _field74121_)))
                 _slots74114_
                 (iota (length _slots74114_) '1))
                _slot-table74118_))
             (_flags74125_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields74127_ '#())
             (_properties74129_
              (let ((__tmp74334
                     (let ((__tmp74335
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots74114_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp74335)))
                    (__tmp74332
                     (let ((__tmp74333
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp74333 '()))))
                (declare (not safe))
                (cons __tmp74334 __tmp74332))))
        (let ((__tmp74336
               (let ((__tmp74337
                      (let () (declare (not safe)) (cons t::t '()))))
                 (declare (not safe))
                 (cons object::t __tmp74337))))
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'hash-table
           _flags74125_
           __gc-table::t
           _fields74127_
           __tmp74336
           _slot-vector74116_
           _slot-table74123_
           _properties74129_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp74342 (list))
            (__tmp74338
             (let ((__tmp74341
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp74339
                    (let ((__tmp74340
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp74340 '()))))
               (declare (not safe))
               (cons __tmp74341 __tmp74339))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp74342
         '(table lock)
         __tmp74338
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args74111_
        (apply make-instance locked-hash-table::t _$args74111_)))
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
      (let ((__tmp74347 (list))
            (__tmp74343
             (let ((__tmp74346
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp74344
                    (let ((__tmp74345
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp74345 '()))))
               (declare (not safe))
               (cons __tmp74346 __tmp74344))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp74347
         '(table key-check)
         __tmp74343
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args74108_
        (apply make-instance checked-hash-table::t _$args74108_)))
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
      (let ((__tmp74350 (list hash-table::t))
            (__tmp74348
             (let ((__tmp74349
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74349 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp74350
         '()
         __tmp74348
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args74105_
        (apply make-instance eq-hash-table::t _$args74105_)))
    (define eqv-hash-table::t
      (let ((__tmp74353 (list hash-table::t))
            (__tmp74351
             (let ((__tmp74352
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74352 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp74353
         '()
         __tmp74351
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args74102_
        (apply make-instance eqv-hash-table::t _$args74102_)))
    (define symbol-hash-table::t
      (let ((__tmp74356 (list hash-table::t))
            (__tmp74354
             (let ((__tmp74355
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74355 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp74356
         '()
         __tmp74354
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args74099_
        (apply make-instance symbol-hash-table::t _$args74099_)))
    (define string-hash-table::t
      (let ((__tmp74359 (list hash-table::t))
            (__tmp74357
             (let ((__tmp74358
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74358 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp74359
         '()
         __tmp74357
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args74096_
        (apply make-instance string-hash-table::t _$args74096_)))
    (define immediate-hash-table::t
      (let ((__tmp74362 (list hash-table::t))
            (__tmp74360
             (let ((__tmp74361
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74361 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp74362
         '()
         __tmp74360
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _$args74093_
        (apply make-instance immediate-hash-table::t _$args74093_)))
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
      (lambda (_obj74091_)
        (if (let () (declare (not safe)) (##structure? _obj74091_))
            (let ((__tmp74363
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj74091_))))
              (declare (not safe))
              (eq? __tmp74363 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj74086_)
        (let ((_$e74088_
               (if (let () (declare (not safe)) (##structure? _obj74086_))
                   (let ((__tmp74364
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj74086_))))
                     (declare (not safe))
                     (eq? __tmp74364 HashTable::t))
                   '#f)))
          (if _$e74088_
              _$e74088_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj74086_))))))
    (define HashTable-ref
      (lambda (_h74080_ _key74081_ _default74082_)
        (let ((_h74084_
               (if (and (let () (declare (not safe)) (##structure? _h74080_))
                        (let ((__tmp74365
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74080_))))
                          (declare (not safe))
                          (eq? __tmp74365 HashTable::t)))
                   _h74080_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74080_)))))
          (declare (not safe))
          (&HashTable-ref _h74084_ _key74081_ _default74082_))))
    (define &HashTable-ref
      (lambda (_h74075_ _key74076_ _default74077_)
        (declare (not safe))
        ((##unchecked-structure-ref _h74075_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h74075_ '1 interface-instance::t '#f)
         _key74076_
         _default74077_)))
    (define HashTable-set!
      (lambda (_h74069_ _key74070_ _value74071_)
        (let ((_h74073_
               (if (and (let () (declare (not safe)) (##structure? _h74069_))
                        (let ((__tmp74366
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74069_))))
                          (declare (not safe))
                          (eq? __tmp74366 HashTable::t)))
                   _h74069_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74069_)))))
          (declare (not safe))
          (&HashTable-set! _h74073_ _key74070_ _value74071_))))
    (define &HashTable-set!
      (lambda (_h74064_ _key74065_ _value74066_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74064_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h74064_ '1 interface-instance::t '#f)
           _key74065_
           _value74066_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h74057_ _key74058_ _update74059_ _default74060_)
        (let ((_h74062_
               (if (and (let () (declare (not safe)) (##structure? _h74057_))
                        (let ((__tmp74367
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74057_))))
                          (declare (not safe))
                          (eq? __tmp74367 HashTable::t)))
                   _h74057_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74057_)))))
          (declare (not safe))
          (&HashTable-update!
           _h74062_
           _key74058_
           _update74059_
           _default74060_))))
    (define &HashTable-update!
      (lambda (_h74051_ _key74052_ _update74053_ _default74054_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74051_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h74051_ '1 interface-instance::t '#f)
           _key74052_
           _update74053_
           _default74054_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h74046_ _key74047_)
        (let ((_h74049_
               (if (and (let () (declare (not safe)) (##structure? _h74046_))
                        (let ((__tmp74368
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74046_))))
                          (declare (not safe))
                          (eq? __tmp74368 HashTable::t)))
                   _h74046_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74046_)))))
          (declare (not safe))
          (&HashTable-delete! _h74049_ _key74047_))))
    (define &HashTable-delete!
      (lambda (_h74042_ _key74043_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74042_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h74042_ '1 interface-instance::t '#f)
           _key74043_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h74037_ _proc74038_)
        (let ((_h74040_
               (if (and (let () (declare (not safe)) (##structure? _h74037_))
                        (let ((__tmp74369
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74037_))))
                          (declare (not safe))
                          (eq? __tmp74369 HashTable::t)))
                   _h74037_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74037_)))))
          (declare (not safe))
          (&HashTable-for-each _h74040_ _proc74038_))))
    (define &HashTable-for-each
      (lambda (_h74033_ _proc74034_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74033_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h74033_ '1 interface-instance::t '#f)
           _proc74034_)
          '#!void)))
    (define HashTable-length
      (lambda (_h74029_)
        (let ((_h74031_
               (if (and (let () (declare (not safe)) (##structure? _h74029_))
                        (let ((__tmp74370
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74029_))))
                          (declare (not safe))
                          (eq? __tmp74370 HashTable::t)))
                   _h74029_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74029_)))))
          (declare (not safe))
          (&HashTable-length _h74031_))))
    (define &HashTable-length
      (lambda (_h74026_)
        (declare (not safe))
        ((##unchecked-structure-ref _h74026_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h74026_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h74022_)
        (let ((_h74024_
               (if (and (let () (declare (not safe)) (##structure? _h74022_))
                        (let ((__tmp74371
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74022_))))
                          (declare (not safe))
                          (eq? __tmp74371 HashTable::t)))
                   _h74022_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74022_)))))
          (declare (not safe))
          (&HashTable-copy _h74024_))))
    (define &HashTable-copy
      (lambda (_h74019_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h74019_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h74019_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h74015_)
        (let ((_h74017_
               (if (and (let () (declare (not safe)) (##structure? _h74015_))
                        (let ((__tmp74372
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74015_))))
                          (declare (not safe))
                          (eq? __tmp74372 HashTable::t)))
                   _h74015_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74015_)))))
          (declare (not safe))
          (&HashTable-clear! _h74017_))))
    (define &HashTable-clear!
      (lambda (_h74012_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74012_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h74012_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl74009_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl74009_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl74009_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl74006_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl74006_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl74006_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl74003_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl74003_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl74003_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl74000_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl74000_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl74000_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref71013_
      (lambda (_self73987_ _key73989_ _default73990_)
        (let ((_h73992_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73987_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73994_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73987_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l73994_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h73992_ _key73989_ _default73990_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l73994_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref71013_
       '#f))
    (define _locked-hash-table::set!71015_
      (lambda (_self73851_ _key73853_ _value73854_)
        (let ((_h73856_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73851_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73858_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73851_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73858_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h73856_ _key73853_ _value73854_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73858_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!71015_
       '#f))
    (define _locked-hash-table::update!71017_
      (lambda (_self73714_ _key73716_ _update73717_ _default73718_)
        (let ((_h73720_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73714_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73722_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73714_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73722_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h73720_
                _key73716_
                _update73717_
                _default73718_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73722_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!71017_
       '#f))
    (define _locked-hash-table::delete!71019_
      (lambda (_self73579_ _key73581_)
        (let ((_h73583_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73579_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73585_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73579_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73585_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h73583_ _key73581_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73585_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!71019_
       '#f))
    (define _locked-hash-table::for-each71021_
      (lambda (_self73444_ _proc73446_)
        (let ((_h73448_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73444_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73450_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73444_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l73450_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h73448_ _proc73446_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l73450_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each71021_
       '#f))
    (define _locked-hash-table::length71023_
      (lambda (_self73310_)
        (let ((_h73313_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73310_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73315_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73310_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l73315_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h73313_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l73315_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length71023_
       '#f))
    (define _locked-hash-table::copy71025_
      (lambda (_self73176_)
        (let ((_h73179_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73176_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73181_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73176_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l73181_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h73179_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l73181_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy71025_
       '#f))
    (define _locked-hash-table::clear!71027_
      (lambda (_self73042_)
        (let ((_h73045_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73042_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73047_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73042_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73047_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h73045_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73047_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!71027_
       '#f))
    (let ((__tmp74373 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74373 'begin-read! mutex-lock!))
    (let ((__tmp74374 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74374 'end-read! mutex-unlock!))
    (let ((__tmp74375 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74375 'begin-write! mutex-lock!))
    (let ((__tmp74376 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74376 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref71305_
      (lambda (_self72906_ _key72907_ _default72908_)
        (let ((_h72910_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72906_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72912_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72906_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7291472916_)
             (if (_g7291472916_ _key72907_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72907_))))
           _key?72912_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h72910_ _key72907_ _default72908_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref71305_
       '#f))
    (define _checked-hash-table::set!71307_
      (lambda (_self72770_ _key72771_ _value72772_)
        (let ((_h72774_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72770_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72776_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72770_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7277872780_)
             (if (_g7277872780_ _key72771_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72771_))))
           _key?72776_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h72774_ _key72771_ _value72772_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!71307_
       '#f))
    (define _checked-hash-table::update!71309_
      (lambda (_self72635_ _key72636_ _update72637_ _default72638_)
        (let ((_h72640_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72635_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72642_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72635_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?72645_)
             (if (_key?72645_ _key72636_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72636_)))
             (if (let () (declare (not safe)) (procedure? _update72637_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update72637_))))
           _key?72642_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h72640_
             _key72636_
             _update72637_
             _default72638_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!71309_
       '#f))
    (define _checked-hash-table::delete!71311_
      (lambda (_self72500_ _key72501_)
        (let ((_h72503_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72500_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72505_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72500_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7250772509_)
             (if (_g7250772509_ _key72501_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72501_))))
           _key?72505_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h72503_ _key72501_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!71311_
       '#f))
    (define _checked-hash-table::for-each71313_
      (lambda (_self72368_ _proc72369_)
        (let ((_h72371_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72368_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72373_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72368_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g74377_)
             (if (let () (declare (not safe)) (procedure? _proc72369_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc72369_))))
           _key?72373_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h72371_ _proc72369_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each71313_
       '#f))
    (define _checked-hash-table::length71315_
      (lambda (_self72238_)
        (let ((_h72240_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72238_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72242_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72238_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h72240_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length71315_
       '#f))
    (define _checked-hash-table::copy71317_
      (lambda (_self72108_)
        (let ((_h72110_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72108_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72112_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72108_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h72110_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy71317_
       '#f))
    (define _checked-hash-table::clear!71319_
      (lambda (_self71978_)
        (let ((_h71980_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71978_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71982_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71978_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h71980_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!71319_
       '#f))
    (define make-generic-hash-table
      (lambda (_table71848_
               _count71849_
               _free71850_
               _hash71851_
               _test71852_
               _seed71853_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table71848_
           _count71849_
           _free71850_
           _hash71851_
           _test71852_
           _seed71853_))))
    (define make-hash-table__%
      (lambda (_g74378_
               _size-hint7169371703_
               _seed7169471705_
               _test7169571707_
               _hash7169671709_
               _lock7169771711_
               _check7169871713_
               _weak-keys7169971715_
               _weak-values7170071717_)
        (let* ((_size-hint71720_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint7169371703_ absent-value))
                    '#f
                    _size-hint7169371703_))
               (_seed71722_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed7169471705_ absent-value))
                    '#f
                    _seed7169471705_))
               (_test71724_
                (if (let ()
                      (declare (not safe))
                      (eq? _test7169571707_ absent-value))
                    equal?
                    _test7169571707_))
               (_hash71726_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash7169671709_ absent-value))
                    '#f
                    _hash7169671709_))
               (_lock71728_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock7169771711_ absent-value))
                    '#f
                    _lock7169771711_))
               (_check71730_
                (if (let ()
                      (declare (not safe))
                      (eq? _check7169871713_ absent-value))
                    '#f
                    _check7169871713_))
               (_weak-keys71732_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys7169971715_ absent-value))
                    '#f
                    _weak-keys7169971715_))
               (_weak-values71734_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values7170071717_ absent-value))
                    '#f
                    _weak-values7170071717_)))
          (letrec ((_table-seed71736_
                    (lambda ()
                      (if (let () (declare (not safe)) (fixnum? _seed71722_))
                          _seed71722_
                          (random-integer (macro-max-fixnum32)))))
                   (_wrap-lock71737_
                    (lambda (_ht71831_)
                      (if _lock71728_
                          (let ((__tmp74379
                                 (let ((__tmp74380
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock71728_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht71831_
                                    __tmp74380))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp74379))
                          _ht71831_)))
                   (_wrap-checked71738_
                    (lambda (_ht71828_ _implicit71829_)
                      (if _check71730_
                          (let ((__tmp74381
                                 (let ((__tmp74382
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check71730_))
                                            _check71730_
                                            _implicit71829_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht71828_
                                    __tmp74382))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp74381))
                          _ht71828_)))
                   (_make71739_
                    (lambda (_kons71816_ _key?71817_ _hash71818_ _test71819_)
                      (let* ((_size71821_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint71720_)))
                             (_table71823_
                              (make-vector _size71821_ (macro-unused-obj)))
                             (_ht71825_
                              (let ((__tmp74383
                                     (_kons71816_
                                      _table71823_
                                      '0
                                      (fxquotient _size71821_ '2)
                                      _hash71818_
                                      _test71819_
                                      (let ()
                                        (declare (not safe))
                                        (_table-seed71736_)))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp74383))))
                        (let ((__tmp74384
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock71737_ _ht71825_))))
                          (declare (not safe))
                          (_wrap-checked71738_ __tmp74384 _key?71817_)))))
                   (_make-gc-hash-table71740_
                    (lambda ()
                      (let* ((_ht71814_
                              (let ((__tmp74385
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _size-hint71720_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp74385)))
                             (__tmp74386
                              (let ()
                                (declare (not safe))
                                (_wrap-lock71737_ _ht71814_))))
                        (declare (not safe))
                        (_wrap-checked71738_ __tmp74386 true))))
                   (_make-gambit-table71741_
                    (lambda ()
                      (let* ((_size71798_
                              (let ((_$e71795_ _size-hint71720_))
                                (if _$e71795_ _$e71795_ (macro-absent-obj))))
                             (_test71803_
                              (let ((_$e71800_ _test71724_))
                                (if _$e71800_ _$e71800_ equal?)))
                             (_hash71808_
                              (let ((_$e71805_ _hash71726_))
                                (if _$e71805_
                                    _$e71805_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test71803_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test71803_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht71810_
                              (let ((__tmp74387
                                     (make-table
                                      'size:
                                      _size71798_
                                      'test:
                                      _test71803_
                                      'hash:
                                      _hash71808_
                                      'weak-keys:
                                      _weak-keys71732_
                                      'weak-values:
                                      _weak-values71734_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp74387))))
                        (let ((__tmp74388
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock71737_ _ht71810_))))
                          (declare (not safe))
                          (_wrap-checked71738_ __tmp74388 true))))))
            (if (or _weak-keys71732_ _weak-values71734_)
                (let () (declare (not safe)) (_make-gambit-table71741_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test71724_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test71724_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash71726_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash71726_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash71726_ eq-hash)))
                         (let () (declare (not safe)) (not _seed71722_)))
                    (let () (declare (not safe)) (_make-gc-hash-table71740_))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test71724_ eq?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test71724_ ##eq?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash71726_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash71726_ eq?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash71726_ eq-hash))))
                        (let ()
                          (declare (not safe))
                          (_make71739_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test71724_ eqv?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test71724_ ##eqv?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _hash71726_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash71726_ eqv?-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash71726_ eqv-hash))))
                            (let ()
                              (declare (not safe))
                              (_make71739_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test71724_ eq?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test71724_ ##eq?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash71726_ symbolic-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash71726_ ##symbol-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make71739_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (let ()
                                               (declare (not safe))
                                               (eq? _test71724_ eq?))
                                             (let ()
                                               (declare (not safe))
                                               (eq? _test71724_ ##eq?)))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash71726_ immediate-hash)))
                                    (let ()
                                      (declare (not safe))
                                      (_make71739_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (let ()
                                                   (declare (not safe))
                                                   (eq? _test71724_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test71724_ ##equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test71724_ string=?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test71724_
                                                        ##string=?)))
                                             (or (let ()
                                                   (declare (not safe))
                                                   (eq? _hash71726_
                                                        string-hash))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _hash71726_
                                                        ##string=?-hash))))
                                        (let ()
                                          (declare (not safe))
                                          (_make71739_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (let ()
                                                   (declare (not safe))
                                                   (eq? _test71724_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _hash71726_)))
                                            (let ()
                                              (declare (not safe))
                                              (_make71739_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp74390
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _test71724_))))
                                                  (declare (not safe))
                                                  (not __tmp74390))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _test71724_))
                                                (if (let ((__tmp74389
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _hash71726_))))
                                                      (declare (not safe))
                                                      (not __tmp74389))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _hash71726_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make71739_
                                                       make-generic-hash-table
                                                       true
                                                       _hash71726_
                                                       _test71724_))))))))))))))))
    (define make-hash-table__@
      (lambda (_keys7169271837_ . _args71839_)
        (apply make-hash-table__%
               _keys7169271837_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7169271837_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7169271837_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7169271837_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7169271837_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7169271837_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7169271837_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7169271837_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7169271837_
                  'weak-values:
                  absent-value))
               _args71839_)))
    (define make-hash-table
      (lambda _args7170171845_
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
               _args7170171845_)))
    (define make-hash-table-eq
      (lambda _args71689_ (apply make-hash-table 'test: eq? _args71689_)))
    (define make-hash-table-eqv
      (lambda _args71687_ (apply make-hash-table 'test: eqv? _args71687_)))
    (define make-hash-table-symbolic
      (lambda _args71685_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args71685_)))
    (define make-hash-table-string
      (lambda _args71683_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args71683_)))
    (define make-hash-table-immediate
      (lambda _args71681_
        (apply make-hash-table 'test: eq? 'hash: immediate-hash _args71681_)))
    (define list->hash-table
      (lambda (_lst71678_ . _args71679_)
        (let ((__tmp74391
               (apply make-hash-table 'size: (length _lst71678_) _args71679_)))
          (declare (not safe))
          (list->hash-table! _lst71678_ __tmp74391))))
    (define list->hash-table-eq
      (lambda (_lst71675_ . _args71676_)
        (let ((__tmp74392
               (apply make-hash-table-eq
                      'size:
                      (length _lst71675_)
                      _args71676_)))
          (declare (not safe))
          (list->hash-table! _lst71675_ __tmp74392))))
    (define list->hash-table-eqv
      (lambda (_lst71672_ . _args71673_)
        (let ((__tmp74393
               (apply make-hash-table-eqv
                      'size:
                      (length _lst71672_)
                      _args71673_)))
          (declare (not safe))
          (list->hash-table! _lst71672_ __tmp74393))))
    (define list->hash-table-symbolic
      (lambda (_lst71669_ . _args71670_)
        (let ((__tmp74394
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst71669_)
                      _args71670_)))
          (declare (not safe))
          (list->hash-table! _lst71669_ __tmp74394))))
    (define list->hash-table-string
      (lambda (_lst71666_ . _args71667_)
        (let ((__tmp74395
               (apply make-hash-table-string
                      'size:
                      (length _lst71666_)
                      _args71667_)))
          (declare (not safe))
          (list->hash-table! _lst71666_ __tmp74395))))
    (define list->hash-table-immediate
      (lambda (_lst71663_ . _args71664_)
        (let ((__tmp74396
               (apply make-hash-table-immediate
                      'size:
                      (length _lst71663_)
                      _args71664_)))
          (declare (not safe))
          (list->hash-table! _lst71663_ __tmp74396))))
    (define list->hash-table!
      (lambda (_lst71630_ _h71631_)
        (for-each
         (lambda (_el71633_)
           (let* ((_el7163471641_ _el71633_)
                  (_E7163671645_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el7163471641_))))
                  (_K7163771651_
                   (lambda (_v71648_ _k71649_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h71631_ _k71649_ _v71648_)))))
             (if (let () (declare (not safe)) (##pair? _el7163471641_))
                 (let ((_hd7163871654_
                        (let () (declare (not safe)) (##car _el7163471641_)))
                       (_tl7163971656_
                        (let () (declare (not safe)) (##cdr _el7163471641_))))
                   (let* ((_k71659_ _hd7163871654_) (_v71661_ _tl7163971656_))
                     (declare (not safe))
                     (_K7163771651_ _v71661_ _k71659_)))
                 (let () (declare (not safe)) (_E7163671645_)))))
         _lst71630_)
        _h71631_))
    (define plist->hash-table
      (lambda (_lst71627_ . _args71628_)
        (let ((__tmp74397
               (apply make-hash-table 'size: (length _lst71627_) _args71628_)))
          (declare (not safe))
          (plist->hash-table! _lst71627_ __tmp74397))))
    (define plist->hash-table-eq
      (lambda (_lst71624_ . _args71625_)
        (let ((__tmp74398
               (apply make-hash-table-eq
                      'size:
                      (length _lst71624_)
                      _args71625_)))
          (declare (not safe))
          (plist->hash-table! _lst71624_ __tmp74398))))
    (define plist->hash-table-eqv
      (lambda (_lst71621_ . _args71622_)
        (let ((__tmp74399
               (apply make-hash-table-eqv
                      'size:
                      (length _lst71621_)
                      _args71622_)))
          (declare (not safe))
          (plist->hash-table! _lst71621_ __tmp74399))))
    (define plist->hash-table-symbolic
      (lambda (_lst71618_ . _args71619_)
        (let ((__tmp74400
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst71618_)
                      _args71619_)))
          (declare (not safe))
          (plist->hash-table! _lst71618_ __tmp74400))))
    (define plist->hash-table-string
      (lambda (_lst71615_ . _args71616_)
        (let ((__tmp74401
               (apply make-hash-table-string
                      'size:
                      (length _lst71615_)
                      _args71616_)))
          (declare (not safe))
          (plist->hash-table! _lst71615_ __tmp74401))))
    (define plist->hash-table-immediate
      (lambda (_lst71612_ . _args71613_)
        (let ((__tmp74402
               (apply make-hash-table-immediate
                      'size:
                      (length _lst71612_)
                      _args71613_)))
          (declare (not safe))
          (plist->hash-table! _lst71612_ __tmp74402))))
    (define plist->hash-table!
      (lambda (_lst71552_ _h71553_)
        (let _loop71555_ ((_rest71557_ _lst71552_))
          (let* ((_rest7155871570_ _rest71557_)
                 (_else7156171578_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst71552_)))))
            (let ((_K7156471593_
                   (lambda (_rest71589_ _val71590_ _key71591_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h71553_ _key71591_ _val71590_))
                     (let () (declare (not safe)) (_loop71555_ _rest71589_))))
                  (_K7156371583_ (lambda () _h71553_)))
              (let ((_try-match7156071586_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest7155871570_))
                           (let () (declare (not safe)) (_K7156371583_))
                           (let () (declare (not safe)) (_else7156171578_))))))
                (if (let () (declare (not safe)) (##pair? _rest7155871570_))
                    (let ((_tl7156671598_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest7155871570_)))
                          (_hd7156571596_
                           (let ()
                             (declare (not safe))
                             (##car _rest7155871570_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl7156671598_))
                          (let ((_tl7156871605_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl7156671598_)))
                                (_hd7156771603_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl7156671598_))))
                            (let ((_key71601_ _hd7156571596_)
                                  (_val71608_ _hd7156771603_)
                                  (_rest71610_ _tl7156871605_))
                              (let ()
                                (declare (not safe))
                                (_K7156471593_
                                 _rest71610_
                                 _val71608_
                                 _key71601_))))
                          (let () (declare (not safe)) (_else7156171578_))))
                    (let ()
                      (declare (not safe))
                      (_try-match7156071586_)))))))))
    (define hash-length
      (lambda (_h71548_)
        (let ((_h71550_
               (if (and (let () (declare (not safe)) (##structure? _h71548_))
                        (let ((__tmp74403
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71548_))))
                          (declare (not safe))
                          (eq? __tmp74403 HashTable::t)))
                   _h71548_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71548_)))))
          (declare (not safe))
          (&HashTable-length _h71550_))))
    (define &hash-length
      (lambda (_h71546_)
        (let () (declare (not safe)) (&HashTable-length _h71546_))))
    (define hash-ref__%
      (lambda (_h71528_ _key71529_ _default71530_)
        (let ((_h71532_
               (if (and (let () (declare (not safe)) (##structure? _h71528_))
                        (let ((__tmp74404
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71528_))))
                          (declare (not safe))
                          (eq? __tmp74404 HashTable::t)))
                   _h71528_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71528_)))))
          (declare (not safe))
          (&hash-ref__% _h71532_ _key71529_ _default71530_))))
    (define hash-ref__0
      (lambda (_h71537_ _key71538_)
        (let ((_default71540_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h71537_ _key71538_ _default71540_))))
    (define hash-ref
      (lambda _g74406_
        (let ((_g74405_ (let () (declare (not safe)) (##length _g74406_))))
          (cond ((let () (declare (not safe)) (##fx= _g74405_ 2))
                 (apply (lambda (_h71537_ _key71538_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h71537_ _key71538_)))
                        _g74406_))
                ((let () (declare (not safe)) (##fx= _g74405_ 3))
                 (apply (lambda (_h71542_ _key71543_ _default71544_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h71542_ _key71543_ _default71544_)))
                        _g74406_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g74406_))))))
    (define &hash-ref__%
      (lambda (_h71509_ _key71510_ _default71511_)
        (let ((_result71513_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h71509_ _key71510_ _default71511_))))
          (if (let ((__tmp74407 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result71513_ __tmp74407))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h71509_
                 'key:
                 _key71510_))
              _result71513_))))
    (define &hash-ref__0
      (lambda (_h71518_ _key71519_)
        (let ((_default71521_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h71518_ _key71519_ _default71521_))))
    (define &hash-ref
      (lambda _g74409_
        (let ((_g74408_ (let () (declare (not safe)) (##length _g74409_))))
          (cond ((let () (declare (not safe)) (##fx= _g74408_ 2))
                 (apply (lambda (_h71518_ _key71519_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h71518_ _key71519_)))
                        _g74409_))
                ((let () (declare (not safe)) (##fx= _g74408_ 3))
                 (apply (lambda (_h71523_ _key71524_ _default71525_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h71523_ _key71524_ _default71525_)))
                        _g74409_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g74409_))))))
    (define hash-get
      (lambda (_h71503_ _key71504_)
        (let ((_h71506_
               (if (and (let () (declare (not safe)) (##structure? _h71503_))
                        (let ((__tmp74410
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71503_))))
                          (declare (not safe))
                          (eq? __tmp74410 HashTable::t)))
                   _h71503_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71503_)))))
          (declare (not safe))
          (&hash-get _h71506_ _key71504_))))
    (define &hash-get
      (lambda (_h71500_ _key71501_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h71500_ _key71501_ '#f))))
    (define hash-put!
      (lambda (_h71494_ _key71495_ _value71496_)
        (let ((_h71498_
               (if (and (let () (declare (not safe)) (##structure? _h71494_))
                        (let ((__tmp74411
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71494_))))
                          (declare (not safe))
                          (eq? __tmp74411 HashTable::t)))
                   _h71494_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71494_)))))
          (declare (not safe))
          (&HashTable-set! _h71498_ _key71495_ _value71496_))))
    (define &hash-put!
      (lambda (_h71490_ _key71491_ _value71492_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h71490_ _key71491_ _value71492_))))
    (define hash-update!__%
      (lambda (_h71469_ _key71470_ _update71471_ _default71472_)
        (let ((_h71474_
               (if (and (let () (declare (not safe)) (##structure? _h71469_))
                        (let ((__tmp74412
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71469_))))
                          (declare (not safe))
                          (eq? __tmp74412 HashTable::t)))
                   _h71469_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71469_)))))
          (declare (not safe))
          (&HashTable-update!
           _h71474_
           _key71470_
           _update71471_
           _default71472_))))
    (define hash-update!__0
      (lambda (_h71479_ _key71480_ _update71481_)
        (let ((_default71483_ '#!void))
          (declare (not safe))
          (hash-update!__% _h71479_ _key71480_ _update71481_ _default71483_))))
    (define hash-update!
      (lambda _g74414_
        (let ((_g74413_ (let () (declare (not safe)) (##length _g74414_))))
          (cond ((let () (declare (not safe)) (##fx= _g74413_ 3))
                 (apply (lambda (_h71479_ _key71480_ _update71481_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h71479_
                             _key71480_
                             _update71481_)))
                        _g74414_))
                ((let () (declare (not safe)) (##fx= _g74413_ 4))
                 (apply (lambda (_h71485_
                                 _key71486_
                                 _update71487_
                                 _default71488_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h71485_
                             _key71486_
                             _update71487_
                             _default71488_)))
                        _g74414_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g74414_))))))
    (define &hash-update!__%
      (lambda (_h71449_ _key71450_ _update71451_ _default71452_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h71449_
           _key71450_
           _update71451_
           _default71452_))))
    (define &hash-update!__0
      (lambda (_h71457_ _key71458_ _update71459_)
        (let ((_default71461_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h71457_
           _key71458_
           _update71459_
           _default71461_))))
    (define &hash-update!
      (lambda _g74416_
        (let ((_g74415_ (let () (declare (not safe)) (##length _g74416_))))
          (cond ((let () (declare (not safe)) (##fx= _g74415_ 3))
                 (apply (lambda (_h71457_ _key71458_ _update71459_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h71457_
                             _key71458_
                             _update71459_)))
                        _g74416_))
                ((let () (declare (not safe)) (##fx= _g74415_ 4))
                 (apply (lambda (_h71463_
                                 _key71464_
                                 _update71465_
                                 _default71466_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h71463_
                             _key71464_
                             _update71465_
                             _default71466_)))
                        _g74416_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g74416_))))))
    (define hash-remove!
      (lambda (_h71443_ _key71444_)
        (let ((_h71446_
               (if (and (let () (declare (not safe)) (##structure? _h71443_))
                        (let ((__tmp74417
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71443_))))
                          (declare (not safe))
                          (eq? __tmp74417 HashTable::t)))
                   _h71443_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71443_)))))
          (declare (not safe))
          (&HashTable-delete! _h71446_ _key71444_))))
    (define &hash-remove!
      (lambda (_h71440_ _key71441_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h71440_ _key71441_))))
    (define hash-key?
      (lambda (_h71435_ _k71436_)
        (let ((_h71438_
               (if (and (let () (declare (not safe)) (##structure? _h71435_))
                        (let ((__tmp74418
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71435_))))
                          (declare (not safe))
                          (eq? __tmp74418 HashTable::t)))
                   _h71435_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71435_)))))
          (declare (not safe))
          (&hash-key? _h71438_ _k71436_))))
    (define &hash-key?
      (lambda (_h71432_ _k71433_)
        (let ((__tmp74419
               (let ((__tmp74420
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h71432_ _k71433_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp74420 absent-value))))
          (declare (not safe))
          (not __tmp74419))))
    (define hash->list
      (lambda (_h71428_)
        (let ((_h71430_
               (if (and (let () (declare (not safe)) (##structure? _h71428_))
                        (let ((__tmp74421
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71428_))))
                          (declare (not safe))
                          (eq? __tmp74421 HashTable::t)))
                   _h71428_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71428_)))))
          (declare (not safe))
          (&hash->list _h71430_))))
    (define &hash->list
      (lambda (_h71421_)
        (let ((_lst71423_ '()))
          (let ((__tmp74422
                 (lambda (_k71425_ _v71426_)
                   (set! _lst71423_
                         (let ((__tmp74423
                                (let ()
                                  (declare (not safe))
                                  (cons _k71425_ _v71426_))))
                           (declare (not safe))
                           (cons __tmp74423 _lst71423_))))))
            (declare (not safe))
            (&HashTable-for-each _h71421_ __tmp74422))
          _lst71423_)))
    (define hash->plist
      (lambda (_h71417_)
        (let ((_h71419_
               (if (and (let () (declare (not safe)) (##structure? _h71417_))
                        (let ((__tmp74424
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71417_))))
                          (declare (not safe))
                          (eq? __tmp74424 HashTable::t)))
                   _h71417_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71417_)))))
          (declare (not safe))
          (&hash->plist _h71419_))))
    (define &hash->plist
      (lambda (_h71410_)
        (let ((_lst71412_ '()))
          (let ((__tmp74425
                 (lambda (_k71414_ _v71415_)
                   (set! _lst71412_
                         (let ((__tmp74426
                                (let ()
                                  (declare (not safe))
                                  (cons _v71415_ _lst71412_))))
                           (declare (not safe))
                           (cons _k71414_ __tmp74426))))))
            (declare (not safe))
            (&HashTable-for-each _h71410_ __tmp74425))
          _lst71412_)))
    (define hash-for-each
      (lambda (_proc71407_ _h71408_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h71408_ _proc71407_))))
    (define hash-map
      (lambda (_proc71399_ _h71400_)
        (let ((_result71402_ '()))
          (let ((__tmp74427
                 (lambda (_k71404_ _v71405_)
                   (set! _result71402_
                         (let ((__tmp74428 (_proc71399_ _k71404_ _v71405_)))
                           (declare (not safe))
                           (cons __tmp74428 _result71402_))))))
            (declare (not safe))
            (HashTable-for-each _h71400_ __tmp74427))
          _result71402_)))
    (define hash-fold
      (lambda (_proc71390_ _iv71391_ _h71392_)
        (let ((_result71394_ _iv71391_))
          (let ((__tmp74429
                 (lambda (_k71396_ _v71397_)
                   (set! _result71394_
                         (_proc71390_ _k71396_ _v71397_ _result71394_)))))
            (declare (not safe))
            (HashTable-for-each _h71392_ __tmp74429))
          _result71394_)))
    (define hash-find__%
      (lambda (_proc71366_ _h71367_ _default-value71368_)
        (call/cc (lambda (_return71370_)
                   (let ((__tmp74430
                          (lambda (_k71372_ _v71373_)
                            (let ((_$e71375_ (_proc71366_ _k71372_ _v71373_)))
                              (if _$e71375_
                                  (_return71370_ _$e71375_)
                                  '#!void)))))
                     (declare (not safe))
                     (HashTable-for-each _h71367_ __tmp74430))
                   _default-value71368_))))
    (define hash-find__0
      (lambda (_proc71381_ _h71382_)
        (let ((_default-value71384_ '#f))
          (declare (not safe))
          (hash-find__% _proc71381_ _h71382_ _default-value71384_))))
    (define hash-find
      (lambda _g74432_
        (let ((_g74431_ (let () (declare (not safe)) (##length _g74432_))))
          (cond ((let () (declare (not safe)) (##fx= _g74431_ 2))
                 (apply (lambda (_proc71381_ _h71382_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc71381_ _h71382_)))
                        _g74432_))
                ((let () (declare (not safe)) (##fx= _g74431_ 3))
                 (apply (lambda (_proc71386_ _h71387_ _default-value71388_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc71386_
                             _h71387_
                             _default-value71388_)))
                        _g74432_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g74432_))))))
    (define hash-keys
      (lambda (_h71361_)
        (let ((_h71363_
               (if (and (let () (declare (not safe)) (##structure? _h71361_))
                        (let ((__tmp74433
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71361_))))
                          (declare (not safe))
                          (eq? __tmp74433 HashTable::t)))
                   _h71361_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71361_)))))
          (declare (not safe))
          (&hash-keys _h71363_))))
    (define &hash-keys
      (lambda (_h71354_)
        (let ((_result71356_ '()))
          (let ((__tmp74434
                 (lambda (_k71358_ _v71359_)
                   (set! _result71356_
                         (let ()
                           (declare (not safe))
                           (cons _k71358_ _result71356_))))))
            (declare (not safe))
            (&HashTable-for-each _h71354_ __tmp74434))
          _result71356_)))
    (define hash-values
      (lambda (_h71350_)
        (let ((_h71352_
               (if (and (let () (declare (not safe)) (##structure? _h71350_))
                        (let ((__tmp74435
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71350_))))
                          (declare (not safe))
                          (eq? __tmp74435 HashTable::t)))
                   _h71350_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71350_)))))
          (declare (not safe))
          (&hash-values _h71352_))))
    (define &hash-values
      (lambda (_h71343_)
        (let ((_result71345_ '()))
          (let ((__tmp74436
                 (lambda (_k71347_ _v71348_)
                   (set! _result71345_
                         (let ()
                           (declare (not safe))
                           (cons _v71348_ _result71345_))))))
            (declare (not safe))
            (&HashTable-for-each _h71343_ __tmp74436))
          _result71345_)))
    (define hash-copy
      (lambda (_h71339_)
        (let ((_h71341_
               (if (and (let () (declare (not safe)) (##structure? _h71339_))
                        (let ((__tmp74437
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71339_))))
                          (declare (not safe))
                          (eq? __tmp74437 HashTable::t)))
                   _h71339_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71339_)))))
          (declare (not safe))
          (&HashTable-copy _h71341_))))
    (define &hash-copy
      (lambda (_h71337_)
        (let () (declare (not safe)) (&HashTable-copy _h71337_))))
    (define hash-merge
      (lambda (_h71332_ . _rest71333_)
        (let ((_copy71335_ (let () (declare (not safe)) (hash-copy _h71332_))))
          (apply hash-merge! _copy71335_ _rest71333_)
          _copy71335_)))
    (define hash-merge!
      (lambda (_h71322_ . _rest71323_)
        (let ((_h71325_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h71322_))))
          (for-each
           (lambda (_hr71327_)
             (let ((__tmp74438
                    (lambda (_k71329_ _v71330_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h71325_ _k71329_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h71325_ _k71329_ _v71330_))))))
               (declare (not safe))
               (hash-for-each __tmp74438 _hr71327_)))
           _rest71323_)
          _h71325_)))))
