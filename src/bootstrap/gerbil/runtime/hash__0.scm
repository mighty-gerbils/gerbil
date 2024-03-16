(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1710617601)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp71252 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp71252
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args71235_
        (apply make-instance UnboundKeyError::t _$args71235_)))
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
      (lambda (_where71109_ _message71110_ . _irritants71111_)
        (raise (let ((__obj71249
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj71249
                  _message71110_
                  'where:
                  _where71109_
                  'irritants:
                  _irritants71111_)
                 __obj71249))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp71257 (list interface-instance::t))
            (__tmp71253
             (let ((__tmp71256
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp71254
                    (let ((__tmp71255
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp71255 '()))))
               (declare (not safe))
               (cons __tmp71256 __tmp71254))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp71257
         '(ref set! update! delete! for-each length copy clear)
         __tmp71253
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
      (let ((__tmp71262 (list interface-instance::t))
            (__tmp71258
             (let ((__tmp71261
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp71259
                    (let ((__tmp71260
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp71260 '()))))
               (declare (not safe))
               (cons __tmp71261 __tmp71259))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp71262
         '(begin-read! end-read! begin-write! end-write!)
         __tmp71258
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
      (lambda (_table71102_ _key71103_ _update71104_ _default71105_)
        (let ((_result71107_
               (table-ref _table71102_ _key71103_ _default71105_)))
          (table-set!
           _table71102_
           _key71103_
           (_update71104_ _default71105_)))))
    (define gambit-table-for-each
      (lambda (_table71099_ _proc71100_)
        (table-for-each _proc71100_ _table71099_)))
    (define gambit-table-clear!
      (lambda (_table71097_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table71097_ '0 '5 '#f '#f))))
    (let ((__tmp71263 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71263 'ref table-ref))
    (let ((__tmp71264 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71264 'set! table-set!))
    (let ((__tmp71265 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71265 'update! gambit-table-update!))
    (let ((__tmp71266 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71266 'delete! table-set!))
    (let ((__tmp71267 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71267 'for-each gambit-table-for-each))
    (let ((__tmp71268 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71268 'length table-length))
    (let ((__tmp71269 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71269 'copy table-copy))
    (let ((__tmp71270 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71270 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots71079_ '(table count free hash test seed))
             (_slot-vector71081_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots71079_))))
             (_slot-table71088_
              (let ((_slot-table71083_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot71085_ _field71086_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table71083_
                      _slot71085_
                      _field71086_))
                   (let ((__tmp71271 (symbol->keyword _slot71085_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table71083_
                      __tmp71271
                      _field71086_)))
                 _slots71079_
                 (iota (length _slots71079_) '1))
                _slot-table71083_))
             (_flags71090_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields71092_ '#())
             (_properties71094_
              (let ((__tmp71274
                     (let ((__tmp71275
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots71079_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp71275)))
                    (__tmp71272
                     (let ((__tmp71273
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp71273 '()))))
                (declare (not safe))
                (cons __tmp71274 __tmp71272))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags71090_
           __table::t
           _fields71092_
           '()
           _slot-vector71081_
           _slot-table71088_
           _properties71094_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_slots71061_ '(gcht immediate))
             (_slot-vector71063_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots71061_))))
             (_slot-table71070_
              (let ((_slot-table71065_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot71067_ _field71068_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table71065_
                      _slot71067_
                      _field71068_))
                   (let ((__tmp71276 (symbol->keyword _slot71067_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table71065_
                      __tmp71276
                      _field71068_)))
                 _slots71061_
                 (iota (length _slots71061_) '1))
                _slot-table71065_))
             (_flags71072_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields71074_ '#())
             (_properties71076_
              (let ((__tmp71279
                     (let ((__tmp71280
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots71061_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp71280)))
                    (__tmp71277
                     (let ((__tmp71278
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp71278 '()))))
                (declare (not safe))
                (cons __tmp71279 __tmp71277))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'gc-hash-table
           _flags71072_
           __gc-table::t
           _fields71074_
           '()
           _slot-vector71063_
           _slot-table71070_
           _properties71076_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp71285 (list))
            (__tmp71281
             (let ((__tmp71284
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp71282
                    (let ((__tmp71283
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp71283 '()))))
               (declare (not safe))
               (cons __tmp71284 __tmp71282))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp71285
         '(table lock)
         __tmp71281
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args71058_
        (apply make-instance locked-hash-table::t _$args71058_)))
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
      (let ((__tmp71290 (list))
            (__tmp71286
             (let ((__tmp71289
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp71287
                    (let ((__tmp71288
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp71288 '()))))
               (declare (not safe))
               (cons __tmp71289 __tmp71287))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp71290
         '(table key-check)
         __tmp71286
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args71055_
        (apply make-instance checked-hash-table::t _$args71055_)))
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
      (let ((__tmp71293 (list hash-table::t))
            (__tmp71291
             (let ((__tmp71292
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71292 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp71293
         '()
         __tmp71291
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args71052_
        (apply make-instance eq-hash-table::t _$args71052_)))
    (define eqv-hash-table::t
      (let ((__tmp71296 (list hash-table::t))
            (__tmp71294
             (let ((__tmp71295
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71295 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp71296
         '()
         __tmp71294
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args71049_
        (apply make-instance eqv-hash-table::t _$args71049_)))
    (define symbol-hash-table::t
      (let ((__tmp71299 (list hash-table::t))
            (__tmp71297
             (let ((__tmp71298
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71298 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp71299
         '()
         __tmp71297
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args71046_
        (apply make-instance symbol-hash-table::t _$args71046_)))
    (define string-hash-table::t
      (let ((__tmp71302 (list hash-table::t))
            (__tmp71300
             (let ((__tmp71301
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71301 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp71302
         '()
         __tmp71300
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args71043_
        (apply make-instance string-hash-table::t _$args71043_)))
    (define immediate-hash-table::t
      (let ((__tmp71305 (list hash-table::t))
            (__tmp71303
             (let ((__tmp71304
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71304 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table
         'hash-table
         __tmp71305
         '()
         __tmp71303
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _$args71040_
        (apply make-instance immediate-hash-table::t _$args71040_)))
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
      (lambda (_obj71038_)
        (if (let () (declare (not safe)) (##structure? _obj71038_))
            (let ((__tmp71306
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj71038_))))
              (declare (not safe))
              (eq? __tmp71306 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj71033_)
        (let ((_$e71035_
               (if (let () (declare (not safe)) (##structure? _obj71033_))
                   (let ((__tmp71307
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj71033_))))
                     (declare (not safe))
                     (eq? __tmp71307 HashTable::t))
                   '#f)))
          (if _$e71035_
              _$e71035_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj71033_))))))
    (define HashTable-ref
      (lambda (_h71027_ _key71028_ _default71029_)
        (let ((_h71031_
               (if (and (let () (declare (not safe)) (##structure? _h71027_))
                        (let ((__tmp71308
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71027_))))
                          (declare (not safe))
                          (eq? __tmp71308 HashTable::t)))
                   _h71027_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71027_)))))
          (declare (not safe))
          (&HashTable-ref _h71031_ _key71028_ _default71029_))))
    (define &HashTable-ref
      (lambda (_h71022_ _key71023_ _default71024_)
        (declare (not safe))
        ((##unchecked-structure-ref _h71022_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h71022_ '1 interface-instance::t '#f)
         _key71023_
         _default71024_)))
    (define HashTable-set!
      (lambda (_h71016_ _key71017_ _value71018_)
        (let ((_h71020_
               (if (and (let () (declare (not safe)) (##structure? _h71016_))
                        (let ((__tmp71309
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71016_))))
                          (declare (not safe))
                          (eq? __tmp71309 HashTable::t)))
                   _h71016_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71016_)))))
          (declare (not safe))
          (&HashTable-set! _h71020_ _key71017_ _value71018_))))
    (define &HashTable-set!
      (lambda (_h71011_ _key71012_ _value71013_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71011_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h71011_ '1 interface-instance::t '#f)
           _key71012_
           _value71013_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h71004_ _key71005_ _update71006_ _default71007_)
        (let ((_h71009_
               (if (and (let () (declare (not safe)) (##structure? _h71004_))
                        (let ((__tmp71310
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71004_))))
                          (declare (not safe))
                          (eq? __tmp71310 HashTable::t)))
                   _h71004_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71004_)))))
          (declare (not safe))
          (&HashTable-update!
           _h71009_
           _key71005_
           _update71006_
           _default71007_))))
    (define &HashTable-update!
      (lambda (_h70998_ _key70999_ _update71000_ _default71001_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h70998_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h70998_ '1 interface-instance::t '#f)
           _key70999_
           _update71000_
           _default71001_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h70993_ _key70994_)
        (let ((_h70996_
               (if (and (let () (declare (not safe)) (##structure? _h70993_))
                        (let ((__tmp71311
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70993_))))
                          (declare (not safe))
                          (eq? __tmp71311 HashTable::t)))
                   _h70993_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70993_)))))
          (declare (not safe))
          (&HashTable-delete! _h70996_ _key70994_))))
    (define &HashTable-delete!
      (lambda (_h70989_ _key70990_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h70989_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h70989_ '1 interface-instance::t '#f)
           _key70990_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h70984_ _proc70985_)
        (let ((_h70987_
               (if (and (let () (declare (not safe)) (##structure? _h70984_))
                        (let ((__tmp71312
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70984_))))
                          (declare (not safe))
                          (eq? __tmp71312 HashTable::t)))
                   _h70984_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70984_)))))
          (declare (not safe))
          (&HashTable-for-each _h70987_ _proc70985_))))
    (define &HashTable-for-each
      (lambda (_h70980_ _proc70981_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h70980_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h70980_ '1 interface-instance::t '#f)
           _proc70981_)
          '#!void)))
    (define HashTable-length
      (lambda (_h70976_)
        (let ((_h70978_
               (if (and (let () (declare (not safe)) (##structure? _h70976_))
                        (let ((__tmp71313
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70976_))))
                          (declare (not safe))
                          (eq? __tmp71313 HashTable::t)))
                   _h70976_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70976_)))))
          (declare (not safe))
          (&HashTable-length _h70978_))))
    (define &HashTable-length
      (lambda (_h70973_)
        (declare (not safe))
        ((##unchecked-structure-ref _h70973_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h70973_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h70969_)
        (let ((_h70971_
               (if (and (let () (declare (not safe)) (##structure? _h70969_))
                        (let ((__tmp71314
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70969_))))
                          (declare (not safe))
                          (eq? __tmp71314 HashTable::t)))
                   _h70969_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70969_)))))
          (declare (not safe))
          (&HashTable-copy _h70971_))))
    (define &HashTable-copy
      (lambda (_h70966_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h70966_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h70966_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h70962_)
        (let ((_h70964_
               (if (and (let () (declare (not safe)) (##structure? _h70962_))
                        (let ((__tmp71315
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70962_))))
                          (declare (not safe))
                          (eq? __tmp71315 HashTable::t)))
                   _h70962_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70962_)))))
          (declare (not safe))
          (&HashTable-clear! _h70964_))))
    (define &HashTable-clear!
      (lambda (_h70959_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h70959_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h70959_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl70956_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl70956_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl70956_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl70953_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl70953_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl70953_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl70950_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl70950_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl70950_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl70947_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl70947_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl70947_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref67960_
      (lambda (_self70934_ _key70936_ _default70937_)
        (let ((_h70939_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70934_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70941_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70934_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l70941_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h70939_ _key70936_ _default70937_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l70941_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref67960_
       '#f))
    (define _locked-hash-table::set!67962_
      (lambda (_self70798_ _key70800_ _value70801_)
        (let ((_h70803_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70798_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70805_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70798_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l70805_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h70803_ _key70800_ _value70801_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l70805_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!67962_
       '#f))
    (define _locked-hash-table::update!67964_
      (lambda (_self70661_ _key70663_ _update70664_ _default70665_)
        (let ((_h70667_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70661_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70669_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70661_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l70669_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h70667_
                _key70663_
                _update70664_
                _default70665_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l70669_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!67964_
       '#f))
    (define _locked-hash-table::delete!67966_
      (lambda (_self70526_ _key70528_)
        (let ((_h70530_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70526_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70532_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70526_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l70532_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h70530_ _key70528_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l70532_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!67966_
       '#f))
    (define _locked-hash-table::for-each67968_
      (lambda (_self70391_ _proc70393_)
        (let ((_h70395_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70391_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70397_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70391_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l70397_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h70395_ _proc70393_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l70397_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each67968_
       '#f))
    (define _locked-hash-table::length67970_
      (lambda (_self70257_)
        (let ((_h70260_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70257_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70262_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70257_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l70262_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h70260_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l70262_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length67970_
       '#f))
    (define _locked-hash-table::copy67972_
      (lambda (_self70123_)
        (let ((_h70126_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70123_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70128_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70123_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l70128_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h70126_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l70128_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy67972_
       '#f))
    (define _locked-hash-table::clear!67974_
      (lambda (_self69989_)
        (let ((_h69992_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69989_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l69994_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69989_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l69994_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h69992_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l69994_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!67974_
       '#f))
    (let ((__tmp71316 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp71316 'begin-read! mutex-lock!))
    (let ((__tmp71317 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp71317 'end-read! mutex-unlock!))
    (let ((__tmp71318 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp71318 'begin-write! mutex-lock!))
    (let ((__tmp71319 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp71319 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref68252_
      (lambda (_self69853_ _key69854_ _default69855_)
        (let ((_h69857_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69853_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69859_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69853_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g6986169863_)
             (if (_g6986169863_ _key69854_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key69854_))))
           _key?69859_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h69857_ _key69854_ _default69855_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref68252_
       '#f))
    (define _checked-hash-table::set!68254_
      (lambda (_self69717_ _key69718_ _value69719_)
        (let ((_h69721_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69717_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69723_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69717_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g6972569727_)
             (if (_g6972569727_ _key69718_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key69718_))))
           _key?69723_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h69721_ _key69718_ _value69719_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!68254_
       '#f))
    (define _checked-hash-table::update!68256_
      (lambda (_self69582_ _key69583_ _update69584_ _default69585_)
        (let ((_h69587_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69582_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69589_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69582_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?69592_)
             (if (_key?69592_ _key69583_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key69583_)))
             (if (let () (declare (not safe)) (procedure? _update69584_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update69584_))))
           _key?69589_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h69587_
             _key69583_
             _update69584_
             _default69585_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!68256_
       '#f))
    (define _checked-hash-table::delete!68258_
      (lambda (_self69447_ _key69448_)
        (let ((_h69450_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69447_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69452_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69447_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g6945469456_)
             (if (_g6945469456_ _key69448_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key69448_))))
           _key?69452_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h69450_ _key69448_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!68258_
       '#f))
    (define _checked-hash-table::for-each68260_
      (lambda (_self69315_ _proc69316_)
        (let ((_h69318_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69315_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69320_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69315_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g71320_)
             (if (let () (declare (not safe)) (procedure? _proc69316_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc69316_))))
           _key?69320_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h69318_ _proc69316_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each68260_
       '#f))
    (define _checked-hash-table::length68262_
      (lambda (_self69185_)
        (let ((_h69187_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69185_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69189_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69185_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h69187_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length68262_
       '#f))
    (define _checked-hash-table::copy68264_
      (lambda (_self69055_)
        (let ((_h69057_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69055_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69059_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69055_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h69057_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy68264_
       '#f))
    (define _checked-hash-table::clear!68266_
      (lambda (_self68925_)
        (let ((_h68927_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68925_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?68929_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68925_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h68927_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!68266_
       '#f))
    (define make-generic-hash-table
      (lambda (_table68795_
               _count68796_
               _free68797_
               _hash68798_
               _test68799_
               _seed68800_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table68795_
           _count68796_
           _free68797_
           _hash68798_
           _test68799_
           _seed68800_))))
    (define make-hash-table__%
      (lambda (_g71321_
               _size-hint6864068650_
               _seed6864168652_
               _test6864268654_
               _hash6864368656_
               _lock6864468658_
               _check6864568660_
               _weak-keys6864668662_
               _weak-values6864768664_)
        (let* ((_size-hint68667_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint6864068650_ absent-value))
                    '#f
                    _size-hint6864068650_))
               (_seed68669_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed6864168652_ absent-value))
                    '#f
                    _seed6864168652_))
               (_test68671_
                (if (let ()
                      (declare (not safe))
                      (eq? _test6864268654_ absent-value))
                    equal?
                    _test6864268654_))
               (_hash68673_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash6864368656_ absent-value))
                    '#f
                    _hash6864368656_))
               (_lock68675_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock6864468658_ absent-value))
                    '#f
                    _lock6864468658_))
               (_check68677_
                (if (let ()
                      (declare (not safe))
                      (eq? _check6864568660_ absent-value))
                    '#f
                    _check6864568660_))
               (_weak-keys68679_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys6864668662_ absent-value))
                    '#f
                    _weak-keys6864668662_))
               (_weak-values68681_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values6864768664_ absent-value))
                    '#f
                    _weak-values6864768664_)))
          (letrec ((_table-seed68683_
                    (lambda ()
                      (if (let () (declare (not safe)) (fixnum? _seed68669_))
                          _seed68669_
                          (random-integer (macro-max-fixnum32)))))
                   (_wrap-lock68684_
                    (lambda (_ht68778_)
                      (if _lock68675_
                          (let ((__tmp71322
                                 (let ((__tmp71323
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock68675_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht68778_
                                    __tmp71323))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp71322))
                          _ht68778_)))
                   (_wrap-checked68685_
                    (lambda (_ht68775_ _implicit68776_)
                      (if _check68677_
                          (let ((__tmp71324
                                 (let ((__tmp71325
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check68677_))
                                            _check68677_
                                            _implicit68776_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht68775_
                                    __tmp71325))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp71324))
                          _ht68775_)))
                   (_make68686_
                    (lambda (_kons68763_ _key?68764_ _hash68765_ _test68766_)
                      (let* ((_size68768_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint68667_)))
                             (_table68770_
                              (make-vector _size68768_ (macro-unused-obj)))
                             (_ht68772_
                              (let ((__tmp71326
                                     (_kons68763_
                                      _table68770_
                                      '0
                                      (fxquotient _size68768_ '2)
                                      _hash68765_
                                      _test68766_
                                      (let ()
                                        (declare (not safe))
                                        (_table-seed68683_)))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp71326))))
                        (let ((__tmp71327
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock68684_ _ht68772_))))
                          (declare (not safe))
                          (_wrap-checked68685_ __tmp71327 _key?68764_)))))
                   (_make-gc-hash-table68687_
                    (lambda ()
                      (let* ((_ht68761_
                              (let ((__tmp71328
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _size-hint68667_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp71328)))
                             (__tmp71329
                              (let ()
                                (declare (not safe))
                                (_wrap-lock68684_ _ht68761_))))
                        (declare (not safe))
                        (_wrap-checked68685_ __tmp71329 true))))
                   (_make-gambit-table68688_
                    (lambda ()
                      (let* ((_size68745_
                              (let ((_$e68742_ _size-hint68667_))
                                (if _$e68742_ _$e68742_ (macro-absent-obj))))
                             (_test68750_
                              (let ((_$e68747_ _test68671_))
                                (if _$e68747_ _$e68747_ equal?)))
                             (_hash68755_
                              (let ((_$e68752_ _hash68673_))
                                (if _$e68752_
                                    _$e68752_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test68750_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test68750_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht68757_
                              (let ((__tmp71330
                                     (make-table
                                      'size:
                                      _size68745_
                                      'test:
                                      _test68750_
                                      'hash:
                                      _hash68755_
                                      'weak-keys:
                                      _weak-keys68679_
                                      'weak-values:
                                      _weak-values68681_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp71330))))
                        (let ((__tmp71331
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock68684_ _ht68757_))))
                          (declare (not safe))
                          (_wrap-checked68685_ __tmp71331 true))))))
            (if (or _weak-keys68679_ _weak-values68681_)
                (let () (declare (not safe)) (_make-gambit-table68688_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test68671_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test68671_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash68673_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash68673_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash68673_ eq-hash)))
                         (let () (declare (not safe)) (not _seed68669_)))
                    (let () (declare (not safe)) (_make-gc-hash-table68687_))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test68671_ eq?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test68671_ ##eq?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash68673_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash68673_ eq?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash68673_ eq-hash))))
                        (let ()
                          (declare (not safe))
                          (_make68686_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test68671_ eqv?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test68671_ ##eqv?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _hash68673_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash68673_ eqv?-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash68673_ eqv-hash))))
                            (let ()
                              (declare (not safe))
                              (_make68686_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test68671_ eq?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test68671_ ##eq?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash68673_ symbolic-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash68673_ ##symbol-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make68686_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (let ()
                                               (declare (not safe))
                                               (eq? _test68671_ eq?))
                                             (let ()
                                               (declare (not safe))
                                               (eq? _test68671_ ##eq?)))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash68673_ immediate-hash)))
                                    (let ()
                                      (declare (not safe))
                                      (_make68686_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (let ()
                                                   (declare (not safe))
                                                   (eq? _test68671_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test68671_ ##equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test68671_ string=?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test68671_
                                                        ##string=?)))
                                             (or (let ()
                                                   (declare (not safe))
                                                   (eq? _hash68673_
                                                        string-hash))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _hash68673_
                                                        ##string=?-hash))))
                                        (let ()
                                          (declare (not safe))
                                          (_make68686_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (let ()
                                                   (declare (not safe))
                                                   (eq? _test68671_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _hash68673_)))
                                            (let ()
                                              (declare (not safe))
                                              (_make68686_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp71332
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _test68671_))))
                                                  (declare (not safe))
                                                  (not __tmp71332))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _test68671_))
                                                (if (let ((__tmp71333
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _hash68673_))))
                                                      (declare (not safe))
                                                      (not __tmp71333))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _hash68673_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make68686_
                                                       make-generic-hash-table
                                                       true
                                                       _hash68673_
                                                       _test68671_))))))))))))))))
    (define make-hash-table__@
      (lambda (_keys6863968784_ . _args68786_)
        (apply make-hash-table__%
               _keys6863968784_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6863968784_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6863968784_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6863968784_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6863968784_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6863968784_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6863968784_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6863968784_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6863968784_
                  'weak-values:
                  absent-value))
               _args68786_)))
    (define make-hash-table
      (lambda _args6864868792_
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
               _args6864868792_)))
    (define make-hash-table-eq
      (lambda _args68636_ (apply make-hash-table 'test: eq? _args68636_)))
    (define make-hash-table-eqv
      (lambda _args68634_ (apply make-hash-table 'test: eqv? _args68634_)))
    (define make-hash-table-symbolic
      (lambda _args68632_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args68632_)))
    (define make-hash-table-string
      (lambda _args68630_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args68630_)))
    (define make-hash-table-immediate
      (lambda _args68628_
        (apply make-hash-table 'test: eq? 'hash: immediate-hash _args68628_)))
    (define list->hash-table
      (lambda (_lst68625_ . _args68626_)
        (let ((__tmp71334
               (apply make-hash-table 'size: (length _lst68625_) _args68626_)))
          (declare (not safe))
          (list->hash-table! _lst68625_ __tmp71334))))
    (define list->hash-table-eq
      (lambda (_lst68622_ . _args68623_)
        (let ((__tmp71335
               (apply make-hash-table-eq
                      'size:
                      (length _lst68622_)
                      _args68623_)))
          (declare (not safe))
          (list->hash-table! _lst68622_ __tmp71335))))
    (define list->hash-table-eqv
      (lambda (_lst68619_ . _args68620_)
        (let ((__tmp71336
               (apply make-hash-table-eqv
                      'size:
                      (length _lst68619_)
                      _args68620_)))
          (declare (not safe))
          (list->hash-table! _lst68619_ __tmp71336))))
    (define list->hash-table-symbolic
      (lambda (_lst68616_ . _args68617_)
        (let ((__tmp71337
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst68616_)
                      _args68617_)))
          (declare (not safe))
          (list->hash-table! _lst68616_ __tmp71337))))
    (define list->hash-table-string
      (lambda (_lst68613_ . _args68614_)
        (let ((__tmp71338
               (apply make-hash-table-string
                      'size:
                      (length _lst68613_)
                      _args68614_)))
          (declare (not safe))
          (list->hash-table! _lst68613_ __tmp71338))))
    (define list->hash-table-immediate
      (lambda (_lst68610_ . _args68611_)
        (let ((__tmp71339
               (apply make-hash-table-immediate
                      'size:
                      (length _lst68610_)
                      _args68611_)))
          (declare (not safe))
          (list->hash-table! _lst68610_ __tmp71339))))
    (define list->hash-table!
      (lambda (_lst68577_ _h68578_)
        (for-each
         (lambda (_el68580_)
           (let* ((_el6858168588_ _el68580_)
                  (_E6858368592_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el6858168588_))))
                  (_K6858468598_
                   (lambda (_v68595_ _k68596_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h68578_ _k68596_ _v68595_)))))
             (if (let () (declare (not safe)) (##pair? _el6858168588_))
                 (let ((_hd6858568601_
                        (let () (declare (not safe)) (##car _el6858168588_)))
                       (_tl6858668603_
                        (let () (declare (not safe)) (##cdr _el6858168588_))))
                   (let* ((_k68606_ _hd6858568601_) (_v68608_ _tl6858668603_))
                     (declare (not safe))
                     (_K6858468598_ _v68608_ _k68606_)))
                 (let () (declare (not safe)) (_E6858368592_)))))
         _lst68577_)
        _h68578_))
    (define plist->hash-table
      (lambda (_lst68574_ . _args68575_)
        (let ((__tmp71340
               (apply make-hash-table 'size: (length _lst68574_) _args68575_)))
          (declare (not safe))
          (plist->hash-table! _lst68574_ __tmp71340))))
    (define plist->hash-table-eq
      (lambda (_lst68571_ . _args68572_)
        (let ((__tmp71341
               (apply make-hash-table-eq
                      'size:
                      (length _lst68571_)
                      _args68572_)))
          (declare (not safe))
          (plist->hash-table! _lst68571_ __tmp71341))))
    (define plist->hash-table-eqv
      (lambda (_lst68568_ . _args68569_)
        (let ((__tmp71342
               (apply make-hash-table-eqv
                      'size:
                      (length _lst68568_)
                      _args68569_)))
          (declare (not safe))
          (plist->hash-table! _lst68568_ __tmp71342))))
    (define plist->hash-table-symbolic
      (lambda (_lst68565_ . _args68566_)
        (let ((__tmp71343
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst68565_)
                      _args68566_)))
          (declare (not safe))
          (plist->hash-table! _lst68565_ __tmp71343))))
    (define plist->hash-table-string
      (lambda (_lst68562_ . _args68563_)
        (let ((__tmp71344
               (apply make-hash-table-string
                      'size:
                      (length _lst68562_)
                      _args68563_)))
          (declare (not safe))
          (plist->hash-table! _lst68562_ __tmp71344))))
    (define plist->hash-table-immediate
      (lambda (_lst68559_ . _args68560_)
        (let ((__tmp71345
               (apply make-hash-table-immediate
                      'size:
                      (length _lst68559_)
                      _args68560_)))
          (declare (not safe))
          (plist->hash-table! _lst68559_ __tmp71345))))
    (define plist->hash-table!
      (lambda (_lst68499_ _h68500_)
        (let _loop68502_ ((_rest68504_ _lst68499_))
          (let* ((_rest6850568517_ _rest68504_)
                 (_else6850868525_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst68499_)))))
            (let ((_K6851168540_
                   (lambda (_rest68536_ _val68537_ _key68538_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h68500_ _key68538_ _val68537_))
                     (let () (declare (not safe)) (_loop68502_ _rest68536_))))
                  (_K6851068530_ (lambda () _h68500_)))
              (let ((_try-match6850768533_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest6850568517_))
                           (let () (declare (not safe)) (_K6851068530_))
                           (let () (declare (not safe)) (_else6850868525_))))))
                (if (let () (declare (not safe)) (##pair? _rest6850568517_))
                    (let ((_tl6851368545_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest6850568517_)))
                          (_hd6851268543_
                           (let ()
                             (declare (not safe))
                             (##car _rest6850568517_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl6851368545_))
                          (let ((_tl6851568552_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl6851368545_)))
                                (_hd6851468550_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl6851368545_))))
                            (let ((_key68548_ _hd6851268543_)
                                  (_val68555_ _hd6851468550_)
                                  (_rest68557_ _tl6851568552_))
                              (let ()
                                (declare (not safe))
                                (_K6851168540_
                                 _rest68557_
                                 _val68555_
                                 _key68548_))))
                          (let () (declare (not safe)) (_else6850868525_))))
                    (let ()
                      (declare (not safe))
                      (_try-match6850768533_)))))))))
    (define hash-length
      (lambda (_h68495_)
        (let ((_h68497_
               (if (and (let () (declare (not safe)) (##structure? _h68495_))
                        (let ((__tmp71346
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68495_))))
                          (declare (not safe))
                          (eq? __tmp71346 HashTable::t)))
                   _h68495_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68495_)))))
          (declare (not safe))
          (&HashTable-length _h68497_))))
    (define &hash-length
      (lambda (_h68493_)
        (let () (declare (not safe)) (&HashTable-length _h68493_))))
    (define hash-ref__%
      (lambda (_h68475_ _key68476_ _default68477_)
        (let ((_h68479_
               (if (and (let () (declare (not safe)) (##structure? _h68475_))
                        (let ((__tmp71347
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68475_))))
                          (declare (not safe))
                          (eq? __tmp71347 HashTable::t)))
                   _h68475_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68475_)))))
          (declare (not safe))
          (&hash-ref__% _h68479_ _key68476_ _default68477_))))
    (define hash-ref__0
      (lambda (_h68484_ _key68485_)
        (let ((_default68487_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h68484_ _key68485_ _default68487_))))
    (define hash-ref
      (lambda _g71349_
        (let ((_g71348_ (let () (declare (not safe)) (##length _g71349_))))
          (cond ((let () (declare (not safe)) (##fx= _g71348_ 2))
                 (apply (lambda (_h68484_ _key68485_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h68484_ _key68485_)))
                        _g71349_))
                ((let () (declare (not safe)) (##fx= _g71348_ 3))
                 (apply (lambda (_h68489_ _key68490_ _default68491_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h68489_ _key68490_ _default68491_)))
                        _g71349_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g71349_))))))
    (define &hash-ref__%
      (lambda (_h68456_ _key68457_ _default68458_)
        (let ((_result68460_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h68456_ _key68457_ _default68458_))))
          (if (let ((__tmp71350 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result68460_ __tmp71350))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h68456_
                 'key:
                 _key68457_))
              _result68460_))))
    (define &hash-ref__0
      (lambda (_h68465_ _key68466_)
        (let ((_default68468_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h68465_ _key68466_ _default68468_))))
    (define &hash-ref
      (lambda _g71352_
        (let ((_g71351_ (let () (declare (not safe)) (##length _g71352_))))
          (cond ((let () (declare (not safe)) (##fx= _g71351_ 2))
                 (apply (lambda (_h68465_ _key68466_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h68465_ _key68466_)))
                        _g71352_))
                ((let () (declare (not safe)) (##fx= _g71351_ 3))
                 (apply (lambda (_h68470_ _key68471_ _default68472_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h68470_ _key68471_ _default68472_)))
                        _g71352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g71352_))))))
    (define hash-get
      (lambda (_h68450_ _key68451_)
        (let ((_h68453_
               (if (and (let () (declare (not safe)) (##structure? _h68450_))
                        (let ((__tmp71353
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68450_))))
                          (declare (not safe))
                          (eq? __tmp71353 HashTable::t)))
                   _h68450_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68450_)))))
          (declare (not safe))
          (&hash-get _h68453_ _key68451_))))
    (define &hash-get
      (lambda (_h68447_ _key68448_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h68447_ _key68448_ '#f))))
    (define hash-put!
      (lambda (_h68441_ _key68442_ _value68443_)
        (let ((_h68445_
               (if (and (let () (declare (not safe)) (##structure? _h68441_))
                        (let ((__tmp71354
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68441_))))
                          (declare (not safe))
                          (eq? __tmp71354 HashTable::t)))
                   _h68441_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68441_)))))
          (declare (not safe))
          (&HashTable-set! _h68445_ _key68442_ _value68443_))))
    (define &hash-put!
      (lambda (_h68437_ _key68438_ _value68439_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h68437_ _key68438_ _value68439_))))
    (define hash-update!__%
      (lambda (_h68416_ _key68417_ _update68418_ _default68419_)
        (let ((_h68421_
               (if (and (let () (declare (not safe)) (##structure? _h68416_))
                        (let ((__tmp71355
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68416_))))
                          (declare (not safe))
                          (eq? __tmp71355 HashTable::t)))
                   _h68416_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68416_)))))
          (declare (not safe))
          (&HashTable-update!
           _h68421_
           _key68417_
           _update68418_
           _default68419_))))
    (define hash-update!__0
      (lambda (_h68426_ _key68427_ _update68428_)
        (let ((_default68430_ '#!void))
          (declare (not safe))
          (hash-update!__% _h68426_ _key68427_ _update68428_ _default68430_))))
    (define hash-update!
      (lambda _g71357_
        (let ((_g71356_ (let () (declare (not safe)) (##length _g71357_))))
          (cond ((let () (declare (not safe)) (##fx= _g71356_ 3))
                 (apply (lambda (_h68426_ _key68427_ _update68428_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h68426_
                             _key68427_
                             _update68428_)))
                        _g71357_))
                ((let () (declare (not safe)) (##fx= _g71356_ 4))
                 (apply (lambda (_h68432_
                                 _key68433_
                                 _update68434_
                                 _default68435_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h68432_
                             _key68433_
                             _update68434_
                             _default68435_)))
                        _g71357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g71357_))))))
    (define &hash-update!__%
      (lambda (_h68396_ _key68397_ _update68398_ _default68399_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h68396_
           _key68397_
           _update68398_
           _default68399_))))
    (define &hash-update!__0
      (lambda (_h68404_ _key68405_ _update68406_)
        (let ((_default68408_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h68404_
           _key68405_
           _update68406_
           _default68408_))))
    (define &hash-update!
      (lambda _g71359_
        (let ((_g71358_ (let () (declare (not safe)) (##length _g71359_))))
          (cond ((let () (declare (not safe)) (##fx= _g71358_ 3))
                 (apply (lambda (_h68404_ _key68405_ _update68406_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h68404_
                             _key68405_
                             _update68406_)))
                        _g71359_))
                ((let () (declare (not safe)) (##fx= _g71358_ 4))
                 (apply (lambda (_h68410_
                                 _key68411_
                                 _update68412_
                                 _default68413_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h68410_
                             _key68411_
                             _update68412_
                             _default68413_)))
                        _g71359_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g71359_))))))
    (define hash-remove!
      (lambda (_h68390_ _key68391_)
        (let ((_h68393_
               (if (and (let () (declare (not safe)) (##structure? _h68390_))
                        (let ((__tmp71360
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68390_))))
                          (declare (not safe))
                          (eq? __tmp71360 HashTable::t)))
                   _h68390_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68390_)))))
          (declare (not safe))
          (&HashTable-delete! _h68393_ _key68391_))))
    (define &hash-remove!
      (lambda (_h68387_ _key68388_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h68387_ _key68388_))))
    (define hash-key?
      (lambda (_h68382_ _k68383_)
        (let ((_h68385_
               (if (and (let () (declare (not safe)) (##structure? _h68382_))
                        (let ((__tmp71361
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68382_))))
                          (declare (not safe))
                          (eq? __tmp71361 HashTable::t)))
                   _h68382_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68382_)))))
          (declare (not safe))
          (&hash-key? _h68385_ _k68383_))))
    (define &hash-key?
      (lambda (_h68379_ _k68380_)
        (let ((__tmp71362
               (let ((__tmp71363
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h68379_ _k68380_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp71363 absent-value))))
          (declare (not safe))
          (not __tmp71362))))
    (define hash->list
      (lambda (_h68375_)
        (let ((_h68377_
               (if (and (let () (declare (not safe)) (##structure? _h68375_))
                        (let ((__tmp71364
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68375_))))
                          (declare (not safe))
                          (eq? __tmp71364 HashTable::t)))
                   _h68375_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68375_)))))
          (declare (not safe))
          (&hash->list _h68377_))))
    (define &hash->list
      (lambda (_h68368_)
        (let ((_lst68370_ '()))
          (let ((__tmp71365
                 (lambda (_k68372_ _v68373_)
                   (set! _lst68370_
                         (let ((__tmp71366
                                (let ()
                                  (declare (not safe))
                                  (cons _k68372_ _v68373_))))
                           (declare (not safe))
                           (cons __tmp71366 _lst68370_))))))
            (declare (not safe))
            (&HashTable-for-each _h68368_ __tmp71365))
          _lst68370_)))
    (define hash->plist
      (lambda (_h68364_)
        (let ((_h68366_
               (if (and (let () (declare (not safe)) (##structure? _h68364_))
                        (let ((__tmp71367
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68364_))))
                          (declare (not safe))
                          (eq? __tmp71367 HashTable::t)))
                   _h68364_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68364_)))))
          (declare (not safe))
          (&hash->plist _h68366_))))
    (define &hash->plist
      (lambda (_h68357_)
        (let ((_lst68359_ '()))
          (let ((__tmp71368
                 (lambda (_k68361_ _v68362_)
                   (set! _lst68359_
                         (let ((__tmp71369
                                (let ()
                                  (declare (not safe))
                                  (cons _v68362_ _lst68359_))))
                           (declare (not safe))
                           (cons _k68361_ __tmp71369))))))
            (declare (not safe))
            (&HashTable-for-each _h68357_ __tmp71368))
          _lst68359_)))
    (define hash-for-each
      (lambda (_proc68354_ _h68355_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h68355_ _proc68354_))))
    (define hash-map
      (lambda (_proc68346_ _h68347_)
        (let ((_result68349_ '()))
          (let ((__tmp71370
                 (lambda (_k68351_ _v68352_)
                   (set! _result68349_
                         (let ((__tmp71371 (_proc68346_ _k68351_ _v68352_)))
                           (declare (not safe))
                           (cons __tmp71371 _result68349_))))))
            (declare (not safe))
            (HashTable-for-each _h68347_ __tmp71370))
          _result68349_)))
    (define hash-fold
      (lambda (_proc68337_ _iv68338_ _h68339_)
        (let ((_result68341_ _iv68338_))
          (let ((__tmp71372
                 (lambda (_k68343_ _v68344_)
                   (set! _result68341_
                         (_proc68337_ _k68343_ _v68344_ _result68341_)))))
            (declare (not safe))
            (HashTable-for-each _h68339_ __tmp71372))
          _result68341_)))
    (define hash-find__%
      (lambda (_proc68313_ _h68314_ _default-value68315_)
        (call/cc (lambda (_return68317_)
                   (let ((__tmp71373
                          (lambda (_k68319_ _v68320_)
                            (let ((_$e68322_ (_proc68313_ _k68319_ _v68320_)))
                              (if _$e68322_
                                  (_return68317_ _$e68322_)
                                  '#!void)))))
                     (declare (not safe))
                     (HashTable-for-each _h68314_ __tmp71373))
                   _default-value68315_))))
    (define hash-find__0
      (lambda (_proc68328_ _h68329_)
        (let ((_default-value68331_ '#f))
          (declare (not safe))
          (hash-find__% _proc68328_ _h68329_ _default-value68331_))))
    (define hash-find
      (lambda _g71375_
        (let ((_g71374_ (let () (declare (not safe)) (##length _g71375_))))
          (cond ((let () (declare (not safe)) (##fx= _g71374_ 2))
                 (apply (lambda (_proc68328_ _h68329_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc68328_ _h68329_)))
                        _g71375_))
                ((let () (declare (not safe)) (##fx= _g71374_ 3))
                 (apply (lambda (_proc68333_ _h68334_ _default-value68335_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc68333_
                             _h68334_
                             _default-value68335_)))
                        _g71375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g71375_))))))
    (define hash-keys
      (lambda (_h68308_)
        (let ((_h68310_
               (if (and (let () (declare (not safe)) (##structure? _h68308_))
                        (let ((__tmp71376
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68308_))))
                          (declare (not safe))
                          (eq? __tmp71376 HashTable::t)))
                   _h68308_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68308_)))))
          (declare (not safe))
          (&hash-keys _h68310_))))
    (define &hash-keys
      (lambda (_h68301_)
        (let ((_result68303_ '()))
          (let ((__tmp71377
                 (lambda (_k68305_ _v68306_)
                   (set! _result68303_
                         (let ()
                           (declare (not safe))
                           (cons _k68305_ _result68303_))))))
            (declare (not safe))
            (&HashTable-for-each _h68301_ __tmp71377))
          _result68303_)))
    (define hash-values
      (lambda (_h68297_)
        (let ((_h68299_
               (if (and (let () (declare (not safe)) (##structure? _h68297_))
                        (let ((__tmp71378
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68297_))))
                          (declare (not safe))
                          (eq? __tmp71378 HashTable::t)))
                   _h68297_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68297_)))))
          (declare (not safe))
          (&hash-values _h68299_))))
    (define &hash-values
      (lambda (_h68290_)
        (let ((_result68292_ '()))
          (let ((__tmp71379
                 (lambda (_k68294_ _v68295_)
                   (set! _result68292_
                         (let ()
                           (declare (not safe))
                           (cons _v68295_ _result68292_))))))
            (declare (not safe))
            (&HashTable-for-each _h68290_ __tmp71379))
          _result68292_)))
    (define hash-copy
      (lambda (_h68286_)
        (let ((_h68288_
               (if (and (let () (declare (not safe)) (##structure? _h68286_))
                        (let ((__tmp71380
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68286_))))
                          (declare (not safe))
                          (eq? __tmp71380 HashTable::t)))
                   _h68286_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68286_)))))
          (declare (not safe))
          (&HashTable-copy _h68288_))))
    (define &hash-copy
      (lambda (_h68284_)
        (let () (declare (not safe)) (&HashTable-copy _h68284_))))
    (define hash-merge
      (lambda (_h68279_ . _rest68280_)
        (let ((_copy68282_ (let () (declare (not safe)) (hash-copy _h68279_))))
          (apply hash-merge! _copy68282_ _rest68280_)
          _copy68282_)))
    (define hash-merge!
      (lambda (_h68269_ . _rest68270_)
        (let ((_h68272_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h68269_))))
          (for-each
           (lambda (_hr68274_)
             (let ((__tmp71381
                    (lambda (_k68276_ _v68277_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h68272_ _k68276_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h68272_ _k68276_ _v68277_))))))
               (declare (not safe))
               (hash-for-each __tmp71381 _hr68274_)))
           _rest68270_)
          _h68272_)))))
