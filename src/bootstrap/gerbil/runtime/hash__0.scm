(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1710694202)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp71306 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp71306
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args71289_
        (apply make-instance UnboundKeyError::t _$args71289_)))
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
      (lambda (_where71163_ _message71164_ . _irritants71165_)
        (raise (let ((__obj71303
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj71303
                  _message71164_
                  'where:
                  _where71163_
                  'irritants:
                  _irritants71165_)
                 __obj71303))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp71311 (list interface-instance::t))
            (__tmp71307
             (let ((__tmp71310
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp71308
                    (let ((__tmp71309
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp71309 '()))))
               (declare (not safe))
               (cons __tmp71310 __tmp71308))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp71311
         '(ref set! update! delete! for-each length copy clear!)
         __tmp71307
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
      (let ((__tmp71316 (list interface-instance::t))
            (__tmp71312
             (let ((__tmp71315
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp71313
                    (let ((__tmp71314
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp71314 '()))))
               (declare (not safe))
               (cons __tmp71315 __tmp71313))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp71316
         '(begin-read! end-read! begin-write! end-write!)
         __tmp71312
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
      (lambda (_table71156_ _key71157_ _update71158_ _default71159_)
        (let ((_result71161_
               (table-ref _table71156_ _key71157_ _default71159_)))
          (table-set!
           _table71156_
           _key71157_
           (_update71158_ _default71159_)))))
    (define gambit-table-for-each
      (lambda (_table71153_ _proc71154_)
        (table-for-each _proc71154_ _table71153_)))
    (define gambit-table-clear!
      (lambda (_table71151_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table71151_ '0 '5 '#f '#f))))
    (let ((__tmp71317 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71317 'ref table-ref))
    (let ((__tmp71318 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71318 'set! table-set!))
    (let ((__tmp71319 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71319 'update! gambit-table-update!))
    (let ((__tmp71320 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71320 'delete! table-set!))
    (let ((__tmp71321 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71321 'for-each gambit-table-for-each))
    (let ((__tmp71322 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71322 'length table-length))
    (let ((__tmp71323 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71323 'copy table-copy))
    (let ((__tmp71324 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71324 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots71133_ '(table count free hash test seed))
             (_slot-vector71135_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots71133_))))
             (_slot-table71142_
              (let ((_slot-table71137_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot71139_ _field71140_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table71137_
                      _slot71139_
                      _field71140_))
                   (let ((__tmp71325 (symbol->keyword _slot71139_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table71137_
                      __tmp71325
                      _field71140_)))
                 _slots71133_
                 (iota (length _slots71133_) '1))
                _slot-table71137_))
             (_flags71144_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields71146_ '#())
             (_properties71148_
              (let ((__tmp71328
                     (let ((__tmp71329
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots71133_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp71329)))
                    (__tmp71326
                     (let ((__tmp71327
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp71327 '()))))
                (declare (not safe))
                (cons __tmp71328 __tmp71326))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags71144_
           __table::t
           _fields71146_
           '()
           _slot-vector71135_
           _slot-table71142_
           _properties71148_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_slots71115_ '(gcht immediate))
             (_slot-vector71117_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots71115_))))
             (_slot-table71124_
              (let ((_slot-table71119_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot71121_ _field71122_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table71119_
                      _slot71121_
                      _field71122_))
                   (let ((__tmp71330 (symbol->keyword _slot71121_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table71119_
                      __tmp71330
                      _field71122_)))
                 _slots71115_
                 (iota (length _slots71115_) '1))
                _slot-table71119_))
             (_flags71126_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields71128_ '#())
             (_properties71130_
              (let ((__tmp71333
                     (let ((__tmp71334
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots71115_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp71334)))
                    (__tmp71331
                     (let ((__tmp71332
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp71332 '()))))
                (declare (not safe))
                (cons __tmp71333 __tmp71331))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'gc-hash-table
           _flags71126_
           __gc-table::t
           _fields71128_
           '()
           _slot-vector71117_
           _slot-table71124_
           _properties71130_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp71339 (list))
            (__tmp71335
             (let ((__tmp71338
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp71336
                    (let ((__tmp71337
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp71337 '()))))
               (declare (not safe))
               (cons __tmp71338 __tmp71336))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp71339
         '(table lock)
         __tmp71335
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args71112_
        (apply make-instance locked-hash-table::t _$args71112_)))
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
      (let ((__tmp71344 (list))
            (__tmp71340
             (let ((__tmp71343
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp71341
                    (let ((__tmp71342
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp71342 '()))))
               (declare (not safe))
               (cons __tmp71343 __tmp71341))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp71344
         '(table key-check)
         __tmp71340
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args71109_
        (apply make-instance checked-hash-table::t _$args71109_)))
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
      (let ((__tmp71347 (list hash-table::t))
            (__tmp71345
             (let ((__tmp71346
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71346 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp71347
         '()
         __tmp71345
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args71106_
        (apply make-instance eq-hash-table::t _$args71106_)))
    (define eqv-hash-table::t
      (let ((__tmp71350 (list hash-table::t))
            (__tmp71348
             (let ((__tmp71349
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71349 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp71350
         '()
         __tmp71348
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args71103_
        (apply make-instance eqv-hash-table::t _$args71103_)))
    (define symbol-hash-table::t
      (let ((__tmp71353 (list hash-table::t))
            (__tmp71351
             (let ((__tmp71352
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71352 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp71353
         '()
         __tmp71351
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args71100_
        (apply make-instance symbol-hash-table::t _$args71100_)))
    (define string-hash-table::t
      (let ((__tmp71356 (list hash-table::t))
            (__tmp71354
             (let ((__tmp71355
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71355 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp71356
         '()
         __tmp71354
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args71097_
        (apply make-instance string-hash-table::t _$args71097_)))
    (define immediate-hash-table::t
      (let ((__tmp71359 (list hash-table::t))
            (__tmp71357
             (let ((__tmp71358
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71358 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp71359
         '()
         __tmp71357
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _$args71094_
        (apply make-instance immediate-hash-table::t _$args71094_)))
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
      (lambda (_obj71092_)
        (if (let () (declare (not safe)) (##structure? _obj71092_))
            (let ((__tmp71360
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj71092_))))
              (declare (not safe))
              (eq? __tmp71360 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj71087_)
        (let ((_$e71089_
               (if (let () (declare (not safe)) (##structure? _obj71087_))
                   (let ((__tmp71361
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj71087_))))
                     (declare (not safe))
                     (eq? __tmp71361 HashTable::t))
                   '#f)))
          (if _$e71089_
              _$e71089_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj71087_))))))
    (define HashTable-ref
      (lambda (_h71081_ _key71082_ _default71083_)
        (let ((_h71085_
               (if (and (let () (declare (not safe)) (##structure? _h71081_))
                        (let ((__tmp71362
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71081_))))
                          (declare (not safe))
                          (eq? __tmp71362 HashTable::t)))
                   _h71081_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71081_)))))
          (declare (not safe))
          (&HashTable-ref _h71085_ _key71082_ _default71083_))))
    (define &HashTable-ref
      (lambda (_h71076_ _key71077_ _default71078_)
        (declare (not safe))
        ((##unchecked-structure-ref _h71076_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h71076_ '1 interface-instance::t '#f)
         _key71077_
         _default71078_)))
    (define HashTable-set!
      (lambda (_h71070_ _key71071_ _value71072_)
        (let ((_h71074_
               (if (and (let () (declare (not safe)) (##structure? _h71070_))
                        (let ((__tmp71363
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71070_))))
                          (declare (not safe))
                          (eq? __tmp71363 HashTable::t)))
                   _h71070_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71070_)))))
          (declare (not safe))
          (&HashTable-set! _h71074_ _key71071_ _value71072_))))
    (define &HashTable-set!
      (lambda (_h71065_ _key71066_ _value71067_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71065_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h71065_ '1 interface-instance::t '#f)
           _key71066_
           _value71067_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h71058_ _key71059_ _update71060_ _default71061_)
        (let ((_h71063_
               (if (and (let () (declare (not safe)) (##structure? _h71058_))
                        (let ((__tmp71364
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71058_))))
                          (declare (not safe))
                          (eq? __tmp71364 HashTable::t)))
                   _h71058_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71058_)))))
          (declare (not safe))
          (&HashTable-update!
           _h71063_
           _key71059_
           _update71060_
           _default71061_))))
    (define &HashTable-update!
      (lambda (_h71052_ _key71053_ _update71054_ _default71055_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71052_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h71052_ '1 interface-instance::t '#f)
           _key71053_
           _update71054_
           _default71055_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h71047_ _key71048_)
        (let ((_h71050_
               (if (and (let () (declare (not safe)) (##structure? _h71047_))
                        (let ((__tmp71365
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71047_))))
                          (declare (not safe))
                          (eq? __tmp71365 HashTable::t)))
                   _h71047_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71047_)))))
          (declare (not safe))
          (&HashTable-delete! _h71050_ _key71048_))))
    (define &HashTable-delete!
      (lambda (_h71043_ _key71044_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71043_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h71043_ '1 interface-instance::t '#f)
           _key71044_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h71038_ _proc71039_)
        (let ((_h71041_
               (if (and (let () (declare (not safe)) (##structure? _h71038_))
                        (let ((__tmp71366
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71038_))))
                          (declare (not safe))
                          (eq? __tmp71366 HashTable::t)))
                   _h71038_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71038_)))))
          (declare (not safe))
          (&HashTable-for-each _h71041_ _proc71039_))))
    (define &HashTable-for-each
      (lambda (_h71034_ _proc71035_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71034_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h71034_ '1 interface-instance::t '#f)
           _proc71035_)
          '#!void)))
    (define HashTable-length
      (lambda (_h71030_)
        (let ((_h71032_
               (if (and (let () (declare (not safe)) (##structure? _h71030_))
                        (let ((__tmp71367
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71030_))))
                          (declare (not safe))
                          (eq? __tmp71367 HashTable::t)))
                   _h71030_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71030_)))))
          (declare (not safe))
          (&HashTable-length _h71032_))))
    (define &HashTable-length
      (lambda (_h71027_)
        (declare (not safe))
        ((##unchecked-structure-ref _h71027_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h71027_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h71023_)
        (let ((_h71025_
               (if (and (let () (declare (not safe)) (##structure? _h71023_))
                        (let ((__tmp71368
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71023_))))
                          (declare (not safe))
                          (eq? __tmp71368 HashTable::t)))
                   _h71023_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71023_)))))
          (declare (not safe))
          (&HashTable-copy _h71025_))))
    (define &HashTable-copy
      (lambda (_h71020_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h71020_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h71020_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h71016_)
        (let ((_h71018_
               (if (and (let () (declare (not safe)) (##structure? _h71016_))
                        (let ((__tmp71369
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71016_))))
                          (declare (not safe))
                          (eq? __tmp71369 HashTable::t)))
                   _h71016_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71016_)))))
          (declare (not safe))
          (&HashTable-clear! _h71018_))))
    (define &HashTable-clear!
      (lambda (_h71013_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71013_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h71013_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl71010_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl71010_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl71010_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl71007_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl71007_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl71007_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl71004_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl71004_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl71004_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl71001_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl71001_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl71001_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref68014_
      (lambda (_self70988_ _key70990_ _default70991_)
        (let ((_h70993_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70988_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70995_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70988_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l70995_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h70993_ _key70990_ _default70991_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l70995_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref68014_
       '#f))
    (define _locked-hash-table::set!68016_
      (lambda (_self70852_ _key70854_ _value70855_)
        (let ((_h70857_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70852_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70859_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70852_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l70859_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h70857_ _key70854_ _value70855_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l70859_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!68016_
       '#f))
    (define _locked-hash-table::update!68018_
      (lambda (_self70715_ _key70717_ _update70718_ _default70719_)
        (let ((_h70721_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70715_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70723_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70715_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l70723_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h70721_
                _key70717_
                _update70718_
                _default70719_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l70723_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!68018_
       '#f))
    (define _locked-hash-table::delete!68020_
      (lambda (_self70580_ _key70582_)
        (let ((_h70584_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70580_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70586_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70580_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l70586_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h70584_ _key70582_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l70586_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!68020_
       '#f))
    (define _locked-hash-table::for-each68022_
      (lambda (_self70445_ _proc70447_)
        (let ((_h70449_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70445_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70451_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70445_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l70451_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h70449_ _proc70447_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l70451_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each68022_
       '#f))
    (define _locked-hash-table::length68024_
      (lambda (_self70311_)
        (let ((_h70314_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70311_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70316_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70311_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l70316_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h70314_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l70316_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length68024_
       '#f))
    (define _locked-hash-table::copy68026_
      (lambda (_self70177_)
        (let ((_h70180_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70177_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70182_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70177_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l70182_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h70180_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l70182_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy68026_
       '#f))
    (define _locked-hash-table::clear!68028_
      (lambda (_self70043_)
        (let ((_h70046_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70043_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70048_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70043_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l70048_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h70046_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l70048_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!68028_
       '#f))
    (let ((__tmp71370 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp71370 'begin-read! mutex-lock!))
    (let ((__tmp71371 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp71371 'end-read! mutex-unlock!))
    (let ((__tmp71372 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp71372 'begin-write! mutex-lock!))
    (let ((__tmp71373 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp71373 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref68306_
      (lambda (_self69907_ _key69908_ _default69909_)
        (let ((_h69911_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69907_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69913_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69907_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g6991569917_)
             (if (_g6991569917_ _key69908_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key69908_))))
           _key?69913_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h69911_ _key69908_ _default69909_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref68306_
       '#f))
    (define _checked-hash-table::set!68308_
      (lambda (_self69771_ _key69772_ _value69773_)
        (let ((_h69775_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69771_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69777_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69771_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g6977969781_)
             (if (_g6977969781_ _key69772_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key69772_))))
           _key?69777_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h69775_ _key69772_ _value69773_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!68308_
       '#f))
    (define _checked-hash-table::update!68310_
      (lambda (_self69636_ _key69637_ _update69638_ _default69639_)
        (let ((_h69641_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69636_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69643_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69636_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?69646_)
             (if (_key?69646_ _key69637_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key69637_)))
             (if (let () (declare (not safe)) (procedure? _update69638_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update69638_))))
           _key?69643_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h69641_
             _key69637_
             _update69638_
             _default69639_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!68310_
       '#f))
    (define _checked-hash-table::delete!68312_
      (lambda (_self69501_ _key69502_)
        (let ((_h69504_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69501_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69506_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69501_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g6950869510_)
             (if (_g6950869510_ _key69502_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key69502_))))
           _key?69506_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h69504_ _key69502_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!68312_
       '#f))
    (define _checked-hash-table::for-each68314_
      (lambda (_self69369_ _proc69370_)
        (let ((_h69372_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69369_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69374_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69369_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g71374_)
             (if (let () (declare (not safe)) (procedure? _proc69370_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc69370_))))
           _key?69374_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h69372_ _proc69370_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each68314_
       '#f))
    (define _checked-hash-table::length68316_
      (lambda (_self69239_)
        (let ((_h69241_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69239_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69243_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69239_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h69241_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length68316_
       '#f))
    (define _checked-hash-table::copy68318_
      (lambda (_self69109_)
        (let ((_h69111_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69109_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69113_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69109_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h69111_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy68318_
       '#f))
    (define _checked-hash-table::clear!68320_
      (lambda (_self68979_)
        (let ((_h68981_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68979_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?68983_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68979_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h68981_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!68320_
       '#f))
    (define make-generic-hash-table
      (lambda (_table68849_
               _count68850_
               _free68851_
               _hash68852_
               _test68853_
               _seed68854_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table68849_
           _count68850_
           _free68851_
           _hash68852_
           _test68853_
           _seed68854_))))
    (define make-hash-table__%
      (lambda (_g71375_
               _size-hint6869468704_
               _seed6869568706_
               _test6869668708_
               _hash6869768710_
               _lock6869868712_
               _check6869968714_
               _weak-keys6870068716_
               _weak-values6870168718_)
        (let* ((_size-hint68721_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint6869468704_ absent-value))
                    '#f
                    _size-hint6869468704_))
               (_seed68723_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed6869568706_ absent-value))
                    '#f
                    _seed6869568706_))
               (_test68725_
                (if (let ()
                      (declare (not safe))
                      (eq? _test6869668708_ absent-value))
                    equal?
                    _test6869668708_))
               (_hash68727_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash6869768710_ absent-value))
                    '#f
                    _hash6869768710_))
               (_lock68729_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock6869868712_ absent-value))
                    '#f
                    _lock6869868712_))
               (_check68731_
                (if (let ()
                      (declare (not safe))
                      (eq? _check6869968714_ absent-value))
                    '#f
                    _check6869968714_))
               (_weak-keys68733_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys6870068716_ absent-value))
                    '#f
                    _weak-keys6870068716_))
               (_weak-values68735_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values6870168718_ absent-value))
                    '#f
                    _weak-values6870168718_)))
          (letrec ((_table-seed68737_
                    (lambda ()
                      (if (let () (declare (not safe)) (fixnum? _seed68723_))
                          _seed68723_
                          (random-integer (macro-max-fixnum32)))))
                   (_wrap-lock68738_
                    (lambda (_ht68832_)
                      (if _lock68729_
                          (let ((__tmp71376
                                 (let ((__tmp71377
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock68729_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht68832_
                                    __tmp71377))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp71376))
                          _ht68832_)))
                   (_wrap-checked68739_
                    (lambda (_ht68829_ _implicit68830_)
                      (if _check68731_
                          (let ((__tmp71378
                                 (let ((__tmp71379
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check68731_))
                                            _check68731_
                                            _implicit68830_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht68829_
                                    __tmp71379))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp71378))
                          _ht68829_)))
                   (_make68740_
                    (lambda (_kons68817_ _key?68818_ _hash68819_ _test68820_)
                      (let* ((_size68822_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint68721_)))
                             (_table68824_
                              (make-vector _size68822_ (macro-unused-obj)))
                             (_ht68826_
                              (let ((__tmp71380
                                     (_kons68817_
                                      _table68824_
                                      '0
                                      (fxquotient _size68822_ '2)
                                      _hash68819_
                                      _test68820_
                                      (let ()
                                        (declare (not safe))
                                        (_table-seed68737_)))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp71380))))
                        (let ((__tmp71381
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock68738_ _ht68826_))))
                          (declare (not safe))
                          (_wrap-checked68739_ __tmp71381 _key?68818_)))))
                   (_make-gc-hash-table68741_
                    (lambda ()
                      (let* ((_ht68815_
                              (let ((__tmp71382
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _size-hint68721_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp71382)))
                             (__tmp71383
                              (let ()
                                (declare (not safe))
                                (_wrap-lock68738_ _ht68815_))))
                        (declare (not safe))
                        (_wrap-checked68739_ __tmp71383 true))))
                   (_make-gambit-table68742_
                    (lambda ()
                      (let* ((_size68799_
                              (let ((_$e68796_ _size-hint68721_))
                                (if _$e68796_ _$e68796_ (macro-absent-obj))))
                             (_test68804_
                              (let ((_$e68801_ _test68725_))
                                (if _$e68801_ _$e68801_ equal?)))
                             (_hash68809_
                              (let ((_$e68806_ _hash68727_))
                                (if _$e68806_
                                    _$e68806_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test68804_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test68804_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht68811_
                              (let ((__tmp71384
                                     (make-table
                                      'size:
                                      _size68799_
                                      'test:
                                      _test68804_
                                      'hash:
                                      _hash68809_
                                      'weak-keys:
                                      _weak-keys68733_
                                      'weak-values:
                                      _weak-values68735_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp71384))))
                        (let ((__tmp71385
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock68738_ _ht68811_))))
                          (declare (not safe))
                          (_wrap-checked68739_ __tmp71385 true))))))
            (if (or _weak-keys68733_ _weak-values68735_)
                (let () (declare (not safe)) (_make-gambit-table68742_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test68725_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test68725_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash68727_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash68727_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash68727_ eq-hash)))
                         (let () (declare (not safe)) (not _seed68723_)))
                    (let () (declare (not safe)) (_make-gc-hash-table68741_))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test68725_ eq?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test68725_ ##eq?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash68727_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash68727_ eq?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash68727_ eq-hash))))
                        (let ()
                          (declare (not safe))
                          (_make68740_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test68725_ eqv?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test68725_ ##eqv?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _hash68727_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash68727_ eqv?-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash68727_ eqv-hash))))
                            (let ()
                              (declare (not safe))
                              (_make68740_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test68725_ eq?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test68725_ ##eq?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash68727_ symbolic-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash68727_ ##symbol-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make68740_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (let ()
                                               (declare (not safe))
                                               (eq? _test68725_ eq?))
                                             (let ()
                                               (declare (not safe))
                                               (eq? _test68725_ ##eq?)))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash68727_ immediate-hash)))
                                    (let ()
                                      (declare (not safe))
                                      (_make68740_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (let ()
                                                   (declare (not safe))
                                                   (eq? _test68725_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test68725_ ##equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test68725_ string=?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test68725_
                                                        ##string=?)))
                                             (or (let ()
                                                   (declare (not safe))
                                                   (eq? _hash68727_
                                                        string-hash))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _hash68727_
                                                        ##string=?-hash))))
                                        (let ()
                                          (declare (not safe))
                                          (_make68740_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (let ()
                                                   (declare (not safe))
                                                   (eq? _test68725_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _hash68727_)))
                                            (let ()
                                              (declare (not safe))
                                              (_make68740_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp71386
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _test68725_))))
                                                  (declare (not safe))
                                                  (not __tmp71386))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _test68725_))
                                                (if (let ((__tmp71387
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _hash68727_))))
                                                      (declare (not safe))
                                                      (not __tmp71387))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _hash68727_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make68740_
                                                       make-generic-hash-table
                                                       true
                                                       _hash68727_
                                                       _test68725_))))))))))))))))
    (define make-hash-table__@
      (lambda (_keys6869368838_ . _args68840_)
        (apply make-hash-table__%
               _keys6869368838_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6869368838_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6869368838_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6869368838_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6869368838_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6869368838_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6869368838_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6869368838_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6869368838_
                  'weak-values:
                  absent-value))
               _args68840_)))
    (define make-hash-table
      (lambda _args6870268846_
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
               _args6870268846_)))
    (define make-hash-table-eq
      (lambda _args68690_ (apply make-hash-table 'test: eq? _args68690_)))
    (define make-hash-table-eqv
      (lambda _args68688_ (apply make-hash-table 'test: eqv? _args68688_)))
    (define make-hash-table-symbolic
      (lambda _args68686_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args68686_)))
    (define make-hash-table-string
      (lambda _args68684_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args68684_)))
    (define make-hash-table-immediate
      (lambda _args68682_
        (apply make-hash-table 'test: eq? 'hash: immediate-hash _args68682_)))
    (define list->hash-table
      (lambda (_lst68679_ . _args68680_)
        (let ((__tmp71388
               (apply make-hash-table 'size: (length _lst68679_) _args68680_)))
          (declare (not safe))
          (list->hash-table! _lst68679_ __tmp71388))))
    (define list->hash-table-eq
      (lambda (_lst68676_ . _args68677_)
        (let ((__tmp71389
               (apply make-hash-table-eq
                      'size:
                      (length _lst68676_)
                      _args68677_)))
          (declare (not safe))
          (list->hash-table! _lst68676_ __tmp71389))))
    (define list->hash-table-eqv
      (lambda (_lst68673_ . _args68674_)
        (let ((__tmp71390
               (apply make-hash-table-eqv
                      'size:
                      (length _lst68673_)
                      _args68674_)))
          (declare (not safe))
          (list->hash-table! _lst68673_ __tmp71390))))
    (define list->hash-table-symbolic
      (lambda (_lst68670_ . _args68671_)
        (let ((__tmp71391
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst68670_)
                      _args68671_)))
          (declare (not safe))
          (list->hash-table! _lst68670_ __tmp71391))))
    (define list->hash-table-string
      (lambda (_lst68667_ . _args68668_)
        (let ((__tmp71392
               (apply make-hash-table-string
                      'size:
                      (length _lst68667_)
                      _args68668_)))
          (declare (not safe))
          (list->hash-table! _lst68667_ __tmp71392))))
    (define list->hash-table-immediate
      (lambda (_lst68664_ . _args68665_)
        (let ((__tmp71393
               (apply make-hash-table-immediate
                      'size:
                      (length _lst68664_)
                      _args68665_)))
          (declare (not safe))
          (list->hash-table! _lst68664_ __tmp71393))))
    (define list->hash-table!
      (lambda (_lst68631_ _h68632_)
        (for-each
         (lambda (_el68634_)
           (let* ((_el6863568642_ _el68634_)
                  (_E6863768646_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el6863568642_))))
                  (_K6863868652_
                   (lambda (_v68649_ _k68650_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h68632_ _k68650_ _v68649_)))))
             (if (let () (declare (not safe)) (##pair? _el6863568642_))
                 (let ((_hd6863968655_
                        (let () (declare (not safe)) (##car _el6863568642_)))
                       (_tl6864068657_
                        (let () (declare (not safe)) (##cdr _el6863568642_))))
                   (let* ((_k68660_ _hd6863968655_) (_v68662_ _tl6864068657_))
                     (declare (not safe))
                     (_K6863868652_ _v68662_ _k68660_)))
                 (let () (declare (not safe)) (_E6863768646_)))))
         _lst68631_)
        _h68632_))
    (define plist->hash-table
      (lambda (_lst68628_ . _args68629_)
        (let ((__tmp71394
               (apply make-hash-table 'size: (length _lst68628_) _args68629_)))
          (declare (not safe))
          (plist->hash-table! _lst68628_ __tmp71394))))
    (define plist->hash-table-eq
      (lambda (_lst68625_ . _args68626_)
        (let ((__tmp71395
               (apply make-hash-table-eq
                      'size:
                      (length _lst68625_)
                      _args68626_)))
          (declare (not safe))
          (plist->hash-table! _lst68625_ __tmp71395))))
    (define plist->hash-table-eqv
      (lambda (_lst68622_ . _args68623_)
        (let ((__tmp71396
               (apply make-hash-table-eqv
                      'size:
                      (length _lst68622_)
                      _args68623_)))
          (declare (not safe))
          (plist->hash-table! _lst68622_ __tmp71396))))
    (define plist->hash-table-symbolic
      (lambda (_lst68619_ . _args68620_)
        (let ((__tmp71397
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst68619_)
                      _args68620_)))
          (declare (not safe))
          (plist->hash-table! _lst68619_ __tmp71397))))
    (define plist->hash-table-string
      (lambda (_lst68616_ . _args68617_)
        (let ((__tmp71398
               (apply make-hash-table-string
                      'size:
                      (length _lst68616_)
                      _args68617_)))
          (declare (not safe))
          (plist->hash-table! _lst68616_ __tmp71398))))
    (define plist->hash-table-immediate
      (lambda (_lst68613_ . _args68614_)
        (let ((__tmp71399
               (apply make-hash-table-immediate
                      'size:
                      (length _lst68613_)
                      _args68614_)))
          (declare (not safe))
          (plist->hash-table! _lst68613_ __tmp71399))))
    (define plist->hash-table!
      (lambda (_lst68553_ _h68554_)
        (let _loop68556_ ((_rest68558_ _lst68553_))
          (let* ((_rest6855968571_ _rest68558_)
                 (_else6856268579_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst68553_)))))
            (let ((_K6856568594_
                   (lambda (_rest68590_ _val68591_ _key68592_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h68554_ _key68592_ _val68591_))
                     (let () (declare (not safe)) (_loop68556_ _rest68590_))))
                  (_K6856468584_ (lambda () _h68554_)))
              (let ((_try-match6856168587_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest6855968571_))
                           (let () (declare (not safe)) (_K6856468584_))
                           (let () (declare (not safe)) (_else6856268579_))))))
                (if (let () (declare (not safe)) (##pair? _rest6855968571_))
                    (let ((_tl6856768599_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest6855968571_)))
                          (_hd6856668597_
                           (let ()
                             (declare (not safe))
                             (##car _rest6855968571_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl6856768599_))
                          (let ((_tl6856968606_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl6856768599_)))
                                (_hd6856868604_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl6856768599_))))
                            (let ((_key68602_ _hd6856668597_)
                                  (_val68609_ _hd6856868604_)
                                  (_rest68611_ _tl6856968606_))
                              (let ()
                                (declare (not safe))
                                (_K6856568594_
                                 _rest68611_
                                 _val68609_
                                 _key68602_))))
                          (let () (declare (not safe)) (_else6856268579_))))
                    (let ()
                      (declare (not safe))
                      (_try-match6856168587_)))))))))
    (define hash-length
      (lambda (_h68549_)
        (let ((_h68551_
               (if (and (let () (declare (not safe)) (##structure? _h68549_))
                        (let ((__tmp71400
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68549_))))
                          (declare (not safe))
                          (eq? __tmp71400 HashTable::t)))
                   _h68549_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68549_)))))
          (declare (not safe))
          (&HashTable-length _h68551_))))
    (define &hash-length
      (lambda (_h68547_)
        (let () (declare (not safe)) (&HashTable-length _h68547_))))
    (define hash-ref__%
      (lambda (_h68529_ _key68530_ _default68531_)
        (let ((_h68533_
               (if (and (let () (declare (not safe)) (##structure? _h68529_))
                        (let ((__tmp71401
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68529_))))
                          (declare (not safe))
                          (eq? __tmp71401 HashTable::t)))
                   _h68529_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68529_)))))
          (declare (not safe))
          (&hash-ref__% _h68533_ _key68530_ _default68531_))))
    (define hash-ref__0
      (lambda (_h68538_ _key68539_)
        (let ((_default68541_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h68538_ _key68539_ _default68541_))))
    (define hash-ref
      (lambda _g71403_
        (let ((_g71402_ (let () (declare (not safe)) (##length _g71403_))))
          (cond ((let () (declare (not safe)) (##fx= _g71402_ 2))
                 (apply (lambda (_h68538_ _key68539_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h68538_ _key68539_)))
                        _g71403_))
                ((let () (declare (not safe)) (##fx= _g71402_ 3))
                 (apply (lambda (_h68543_ _key68544_ _default68545_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h68543_ _key68544_ _default68545_)))
                        _g71403_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g71403_))))))
    (define &hash-ref__%
      (lambda (_h68510_ _key68511_ _default68512_)
        (let ((_result68514_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h68510_ _key68511_ _default68512_))))
          (if (let ((__tmp71404 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result68514_ __tmp71404))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h68510_
                 'key:
                 _key68511_))
              _result68514_))))
    (define &hash-ref__0
      (lambda (_h68519_ _key68520_)
        (let ((_default68522_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h68519_ _key68520_ _default68522_))))
    (define &hash-ref
      (lambda _g71406_
        (let ((_g71405_ (let () (declare (not safe)) (##length _g71406_))))
          (cond ((let () (declare (not safe)) (##fx= _g71405_ 2))
                 (apply (lambda (_h68519_ _key68520_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h68519_ _key68520_)))
                        _g71406_))
                ((let () (declare (not safe)) (##fx= _g71405_ 3))
                 (apply (lambda (_h68524_ _key68525_ _default68526_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h68524_ _key68525_ _default68526_)))
                        _g71406_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g71406_))))))
    (define hash-get
      (lambda (_h68504_ _key68505_)
        (let ((_h68507_
               (if (and (let () (declare (not safe)) (##structure? _h68504_))
                        (let ((__tmp71407
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68504_))))
                          (declare (not safe))
                          (eq? __tmp71407 HashTable::t)))
                   _h68504_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68504_)))))
          (declare (not safe))
          (&hash-get _h68507_ _key68505_))))
    (define &hash-get
      (lambda (_h68501_ _key68502_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h68501_ _key68502_ '#f))))
    (define hash-put!
      (lambda (_h68495_ _key68496_ _value68497_)
        (let ((_h68499_
               (if (and (let () (declare (not safe)) (##structure? _h68495_))
                        (let ((__tmp71408
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68495_))))
                          (declare (not safe))
                          (eq? __tmp71408 HashTable::t)))
                   _h68495_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68495_)))))
          (declare (not safe))
          (&HashTable-set! _h68499_ _key68496_ _value68497_))))
    (define &hash-put!
      (lambda (_h68491_ _key68492_ _value68493_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h68491_ _key68492_ _value68493_))))
    (define hash-update!__%
      (lambda (_h68470_ _key68471_ _update68472_ _default68473_)
        (let ((_h68475_
               (if (and (let () (declare (not safe)) (##structure? _h68470_))
                        (let ((__tmp71409
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68470_))))
                          (declare (not safe))
                          (eq? __tmp71409 HashTable::t)))
                   _h68470_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68470_)))))
          (declare (not safe))
          (&HashTable-update!
           _h68475_
           _key68471_
           _update68472_
           _default68473_))))
    (define hash-update!__0
      (lambda (_h68480_ _key68481_ _update68482_)
        (let ((_default68484_ '#!void))
          (declare (not safe))
          (hash-update!__% _h68480_ _key68481_ _update68482_ _default68484_))))
    (define hash-update!
      (lambda _g71411_
        (let ((_g71410_ (let () (declare (not safe)) (##length _g71411_))))
          (cond ((let () (declare (not safe)) (##fx= _g71410_ 3))
                 (apply (lambda (_h68480_ _key68481_ _update68482_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h68480_
                             _key68481_
                             _update68482_)))
                        _g71411_))
                ((let () (declare (not safe)) (##fx= _g71410_ 4))
                 (apply (lambda (_h68486_
                                 _key68487_
                                 _update68488_
                                 _default68489_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h68486_
                             _key68487_
                             _update68488_
                             _default68489_)))
                        _g71411_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g71411_))))))
    (define &hash-update!__%
      (lambda (_h68450_ _key68451_ _update68452_ _default68453_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h68450_
           _key68451_
           _update68452_
           _default68453_))))
    (define &hash-update!__0
      (lambda (_h68458_ _key68459_ _update68460_)
        (let ((_default68462_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h68458_
           _key68459_
           _update68460_
           _default68462_))))
    (define &hash-update!
      (lambda _g71413_
        (let ((_g71412_ (let () (declare (not safe)) (##length _g71413_))))
          (cond ((let () (declare (not safe)) (##fx= _g71412_ 3))
                 (apply (lambda (_h68458_ _key68459_ _update68460_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h68458_
                             _key68459_
                             _update68460_)))
                        _g71413_))
                ((let () (declare (not safe)) (##fx= _g71412_ 4))
                 (apply (lambda (_h68464_
                                 _key68465_
                                 _update68466_
                                 _default68467_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h68464_
                             _key68465_
                             _update68466_
                             _default68467_)))
                        _g71413_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g71413_))))))
    (define hash-remove!
      (lambda (_h68444_ _key68445_)
        (let ((_h68447_
               (if (and (let () (declare (not safe)) (##structure? _h68444_))
                        (let ((__tmp71414
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68444_))))
                          (declare (not safe))
                          (eq? __tmp71414 HashTable::t)))
                   _h68444_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68444_)))))
          (declare (not safe))
          (&HashTable-delete! _h68447_ _key68445_))))
    (define &hash-remove!
      (lambda (_h68441_ _key68442_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h68441_ _key68442_))))
    (define hash-key?
      (lambda (_h68436_ _k68437_)
        (let ((_h68439_
               (if (and (let () (declare (not safe)) (##structure? _h68436_))
                        (let ((__tmp71415
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68436_))))
                          (declare (not safe))
                          (eq? __tmp71415 HashTable::t)))
                   _h68436_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68436_)))))
          (declare (not safe))
          (&hash-key? _h68439_ _k68437_))))
    (define &hash-key?
      (lambda (_h68433_ _k68434_)
        (let ((__tmp71416
               (let ((__tmp71417
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h68433_ _k68434_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp71417 absent-value))))
          (declare (not safe))
          (not __tmp71416))))
    (define hash->list
      (lambda (_h68429_)
        (let ((_h68431_
               (if (and (let () (declare (not safe)) (##structure? _h68429_))
                        (let ((__tmp71418
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68429_))))
                          (declare (not safe))
                          (eq? __tmp71418 HashTable::t)))
                   _h68429_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68429_)))))
          (declare (not safe))
          (&hash->list _h68431_))))
    (define &hash->list
      (lambda (_h68422_)
        (let ((_lst68424_ '()))
          (let ((__tmp71419
                 (lambda (_k68426_ _v68427_)
                   (set! _lst68424_
                         (let ((__tmp71420
                                (let ()
                                  (declare (not safe))
                                  (cons _k68426_ _v68427_))))
                           (declare (not safe))
                           (cons __tmp71420 _lst68424_))))))
            (declare (not safe))
            (&HashTable-for-each _h68422_ __tmp71419))
          _lst68424_)))
    (define hash->plist
      (lambda (_h68418_)
        (let ((_h68420_
               (if (and (let () (declare (not safe)) (##structure? _h68418_))
                        (let ((__tmp71421
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68418_))))
                          (declare (not safe))
                          (eq? __tmp71421 HashTable::t)))
                   _h68418_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68418_)))))
          (declare (not safe))
          (&hash->plist _h68420_))))
    (define &hash->plist
      (lambda (_h68411_)
        (let ((_lst68413_ '()))
          (let ((__tmp71422
                 (lambda (_k68415_ _v68416_)
                   (set! _lst68413_
                         (let ((__tmp71423
                                (let ()
                                  (declare (not safe))
                                  (cons _v68416_ _lst68413_))))
                           (declare (not safe))
                           (cons _k68415_ __tmp71423))))))
            (declare (not safe))
            (&HashTable-for-each _h68411_ __tmp71422))
          _lst68413_)))
    (define hash-for-each
      (lambda (_proc68408_ _h68409_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h68409_ _proc68408_))))
    (define hash-map
      (lambda (_proc68400_ _h68401_)
        (let ((_result68403_ '()))
          (let ((__tmp71424
                 (lambda (_k68405_ _v68406_)
                   (set! _result68403_
                         (let ((__tmp71425 (_proc68400_ _k68405_ _v68406_)))
                           (declare (not safe))
                           (cons __tmp71425 _result68403_))))))
            (declare (not safe))
            (HashTable-for-each _h68401_ __tmp71424))
          _result68403_)))
    (define hash-fold
      (lambda (_proc68391_ _iv68392_ _h68393_)
        (let ((_result68395_ _iv68392_))
          (let ((__tmp71426
                 (lambda (_k68397_ _v68398_)
                   (set! _result68395_
                         (_proc68391_ _k68397_ _v68398_ _result68395_)))))
            (declare (not safe))
            (HashTable-for-each _h68393_ __tmp71426))
          _result68395_)))
    (define hash-find__%
      (lambda (_proc68367_ _h68368_ _default-value68369_)
        (call/cc (lambda (_return68371_)
                   (let ((__tmp71427
                          (lambda (_k68373_ _v68374_)
                            (let ((_$e68376_ (_proc68367_ _k68373_ _v68374_)))
                              (if _$e68376_
                                  (_return68371_ _$e68376_)
                                  '#!void)))))
                     (declare (not safe))
                     (HashTable-for-each _h68368_ __tmp71427))
                   _default-value68369_))))
    (define hash-find__0
      (lambda (_proc68382_ _h68383_)
        (let ((_default-value68385_ '#f))
          (declare (not safe))
          (hash-find__% _proc68382_ _h68383_ _default-value68385_))))
    (define hash-find
      (lambda _g71429_
        (let ((_g71428_ (let () (declare (not safe)) (##length _g71429_))))
          (cond ((let () (declare (not safe)) (##fx= _g71428_ 2))
                 (apply (lambda (_proc68382_ _h68383_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc68382_ _h68383_)))
                        _g71429_))
                ((let () (declare (not safe)) (##fx= _g71428_ 3))
                 (apply (lambda (_proc68387_ _h68388_ _default-value68389_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc68387_
                             _h68388_
                             _default-value68389_)))
                        _g71429_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g71429_))))))
    (define hash-keys
      (lambda (_h68362_)
        (let ((_h68364_
               (if (and (let () (declare (not safe)) (##structure? _h68362_))
                        (let ((__tmp71430
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68362_))))
                          (declare (not safe))
                          (eq? __tmp71430 HashTable::t)))
                   _h68362_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68362_)))))
          (declare (not safe))
          (&hash-keys _h68364_))))
    (define &hash-keys
      (lambda (_h68355_)
        (let ((_result68357_ '()))
          (let ((__tmp71431
                 (lambda (_k68359_ _v68360_)
                   (set! _result68357_
                         (let ()
                           (declare (not safe))
                           (cons _k68359_ _result68357_))))))
            (declare (not safe))
            (&HashTable-for-each _h68355_ __tmp71431))
          _result68357_)))
    (define hash-values
      (lambda (_h68351_)
        (let ((_h68353_
               (if (and (let () (declare (not safe)) (##structure? _h68351_))
                        (let ((__tmp71432
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68351_))))
                          (declare (not safe))
                          (eq? __tmp71432 HashTable::t)))
                   _h68351_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68351_)))))
          (declare (not safe))
          (&hash-values _h68353_))))
    (define &hash-values
      (lambda (_h68344_)
        (let ((_result68346_ '()))
          (let ((__tmp71433
                 (lambda (_k68348_ _v68349_)
                   (set! _result68346_
                         (let ()
                           (declare (not safe))
                           (cons _v68349_ _result68346_))))))
            (declare (not safe))
            (&HashTable-for-each _h68344_ __tmp71433))
          _result68346_)))
    (define hash-copy
      (lambda (_h68340_)
        (let ((_h68342_
               (if (and (let () (declare (not safe)) (##structure? _h68340_))
                        (let ((__tmp71434
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68340_))))
                          (declare (not safe))
                          (eq? __tmp71434 HashTable::t)))
                   _h68340_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68340_)))))
          (declare (not safe))
          (&HashTable-copy _h68342_))))
    (define &hash-copy
      (lambda (_h68338_)
        (let () (declare (not safe)) (&HashTable-copy _h68338_))))
    (define hash-merge
      (lambda (_h68333_ . _rest68334_)
        (let ((_copy68336_ (let () (declare (not safe)) (hash-copy _h68333_))))
          (apply hash-merge! _copy68336_ _rest68334_)
          _copy68336_)))
    (define hash-merge!
      (lambda (_h68323_ . _rest68324_)
        (let ((_h68326_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h68323_))))
          (for-each
           (lambda (_hr68328_)
             (let ((__tmp71435
                    (lambda (_k68330_ _v68331_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h68326_ _k68330_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h68326_ _k68330_ _v68331_))))))
               (declare (not safe))
               (hash-for-each __tmp71435 _hr68328_)))
           _rest68324_)
          _h68326_)))))
