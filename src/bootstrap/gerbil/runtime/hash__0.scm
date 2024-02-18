(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1708280332)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp108346 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp108346
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args104223_
        (apply make-instance UnboundKeyError::t _$args104223_)))
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
      (lambda (_where104097_ _message104098_ . _irritants104099_)
        (raise (let ((__obj108344
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj108344
                  _message104098_
                  'where:
                  _where104097_
                  'irritants:
                  _irritants104099_)
                 __obj108344))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp108349 (list interface-instance::t))
            (__tmp108347
             (let ((__tmp108348
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp108348 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp108349
         '(ref set update del each length copy clear)
         __tmp108347
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
      (let ((__tmp108352 (list interface-instance::t))
            (__tmp108350
             (let ((__tmp108351
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp108351 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp108352
         '(begin-read end-read begin-write end-write)
         __tmp108350
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
      (lambda (_table104090_ _key104091_ _update104092_ _default104093_)
        (let ((_result104095_
               (table-ref _table104090_ _key104091_ _default104093_)))
          (table-set!
           _table104090_
           _key104091_
           (_update104092_ _default104093_)))))
    (define gambit-table-for-each
      (lambda (_table104087_ _proc104088_)
        (table-for-each _proc104088_ _table104087_)))
    (define gambit-table-clear!
      (lambda (_table104085_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table104085_ '0 '5 '#f '#f))))
    (let ((__tmp108353 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp108353 'ref table-ref))
    (let ((__tmp108354 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp108354 'set! table-set!))
    (let ((__tmp108355 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp108355 'update! gambit-table-update!))
    (let ((__tmp108356 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp108356 'delete! table-set!))
    (let ((__tmp108357 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp108357 'for-each gambit-table-for-each))
    (let ((__tmp108358 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp108358 'length table-length))
    (let ((__tmp108359 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp108359 'copy table-copy))
    (let ((__tmp108360 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp108360 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots104067_ '(table count free hash test seed))
             (_slot-vector104069_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots104067_))))
             (_slot-table104076_
              (let ((_slot-table104071_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table '#f '0))))
                (for-each
                 (lambda (_slot104073_ _field104074_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table104071_
                      _slot104073_
                      _field104074_))
                   (let ((__tmp108361 (symbol->keyword _slot104073_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table104071_
                      __tmp108361
                      _field104074_)))
                 _slots104067_
                 (let ((__tmp108362 (length _slots104067_)))
                   (declare (not safe))
                   (iota __tmp108362 '1)))
                _slot-table104071_))
             (_flags104078_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields104080_ '#())
             (_properties104082_
              (let ((__tmp108365
                     (let ((__tmp108366
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots104067_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp108366)))
                    (__tmp108363
                     (let ((__tmp108364
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp108364 '()))))
                (declare (not safe))
                (cons __tmp108365 __tmp108363))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags104078_
           __table::t
           _fields104080_
           '()
           _slot-vector104069_
           _slot-table104076_
           _properties104082_
           '#f
           '#f))))
    (define hash-table?
      (lambda (_obj104065_)
        (let ((__tmp108367
               (let () (declare (not safe)) (##type-id hash-table::t))))
          (declare (not safe))
          (##structure-instance-of? _obj104065_ __tmp108367))))
    (define locked-hash-table::t
      (let ((__tmp108372 (list))
            (__tmp108368
             (let ((__tmp108371
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp108369
                    (let ((__tmp108370
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp108370 '()))))
               (declare (not safe))
               (cons __tmp108371 __tmp108369))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp108372
         '(table lock)
         __tmp108368
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args104062_
        (apply make-instance locked-hash-table::t _$args104062_)))
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
      (let ((__tmp108375 (list hash-table::t))
            (__tmp108373
             (let ((__tmp108374
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp108374 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp108375
         '()
         __tmp108373
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args104059_
        (apply make-instance eq-hash-table::t _$args104059_)))
    (define eqv-hash-table::t
      (let ((__tmp108378 (list hash-table::t))
            (__tmp108376
             (let ((__tmp108377
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp108377 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp108378
         '()
         __tmp108376
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args104056_
        (apply make-instance eqv-hash-table::t _$args104056_)))
    (define symbol-hash-table::t
      (let ((__tmp108381 (list hash-table::t))
            (__tmp108379
             (let ((__tmp108380
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp108380 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp108381
         '()
         __tmp108379
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args104053_
        (apply make-instance symbol-hash-table::t _$args104053_)))
    (define string-hash-table::t
      (let ((__tmp108384 (list hash-table::t))
            (__tmp108382
             (let ((__tmp108383
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp108383 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp108384
         '()
         __tmp108382
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args104050_
        (apply make-instance string-hash-table::t _$args104050_)))
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
      (lambda (_h104046_ _key104047_ _default104048_)
        (let ((__tmp108385
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h104046_))))
          (declare (not safe))
          (&HashTable-ref __tmp108385 _key104047_ _default104048_))))
    (define &HashTable-ref
      (lambda (_h104041_ _key104042_ _default104043_)
        (declare (not safe))
        ((##unchecked-structure-ref _h104041_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h104041_ '1 interface-instance::t '#f)
         _key104042_
         _default104043_)))
    (define HashTable-set!
      (lambda (_h104037_ _key104038_ _value104039_)
        (let ((__tmp108386
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h104037_))))
          (declare (not safe))
          (&HashTable-set! __tmp108386 _key104038_ _value104039_))))
    (define &HashTable-set!
      (lambda (_h104032_ _key104033_ _value104034_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h104032_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h104032_ '1 interface-instance::t '#f)
           _key104033_
           _value104034_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h104027_ _key104028_ _update104029_ _default104030_)
        (let ((__tmp108387
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h104027_))))
          (declare (not safe))
          (&HashTable-update!
           __tmp108387
           _key104028_
           _update104029_
           _default104030_))))
    (define &HashTable-update!
      (lambda (_h104021_ _key104022_ _update104023_ _default104024_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h104021_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h104021_ '1 interface-instance::t '#f)
           _key104022_
           _update104023_
           _default104024_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h104018_ _key104019_)
        (let ((__tmp108388
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h104018_))))
          (declare (not safe))
          (&HashTable-delete! __tmp108388 _key104019_))))
    (define &HashTable-delete!
      (lambda (_h104014_ _key104015_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h104014_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h104014_ '1 interface-instance::t '#f)
           _key104015_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h104011_ _proc104012_)
        (let ((__tmp108389
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h104011_))))
          (declare (not safe))
          (&HashTable-for-each __tmp108389 _proc104012_))))
    (define &HashTable-for-each
      (lambda (_h104007_ _proc104008_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h104007_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h104007_ '1 interface-instance::t '#f)
           _proc104008_)
          '#!void)))
    (define HashTable-length
      (lambda (_h104005_)
        (let ((__tmp108390
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h104005_))))
          (declare (not safe))
          (&HashTable-length __tmp108390))))
    (define &HashTable-length
      (lambda (_h104002_)
        (declare (not safe))
        ((##unchecked-structure-ref _h104002_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h104002_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h104000_)
        (let ((__tmp108391
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h104000_))))
          (declare (not safe))
          (&HashTable-copy __tmp108391))))
    (define &HashTable-copy
      (lambda (_h103997_)
        (declare (not safe))
        ((##unchecked-structure-ref _h103997_ '8 HashTable::t '#f)
         (##unchecked-structure-ref _h103997_ '1 interface-instance::t '#f))))
    (define HashTable-clear!
      (lambda (_h103995_)
        (let ((__tmp108392
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h103995_))))
          (declare (not safe))
          (&HashTable-clear! __tmp108392))))
    (define &HashTable-clear!
      (lambda (_h103992_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h103992_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h103992_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl103989_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl103989_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl103989_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl103986_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl103986_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl103986_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl103983_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl103983_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl103983_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl103980_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl103980_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl103980_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref102412_
      (lambda (_self103967_ _key103969_ _default103970_)
        (let ((_h103972_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103967_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l103974_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103967_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l103974_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h103972_ _key103969_ _default103970_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l103974_)))))))
    (define locked-hash-table::ref::specialize
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
          (lambda (_self103967_ _key103969_ _default103970_)
            (let ((_h103972_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103967_
                      __table108294
                      __t108292
                      '#f)))
                  (_l103974_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103967_
                      __lock108293
                      __t108292
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l103974_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-ref _h103972_ _key103969_ _default103970_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l103974_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::ref102412_
       locked-hash-table::ref::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'ref
       _locked-hash-table::ref102412_
       '#f))
    (define _locked-hash-table::set!102414_
      (lambda (_self103831_ _key103833_ _value103834_)
        (let ((_h103836_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103831_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l103838_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103831_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l103838_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h103836_ _key103833_ _value103834_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l103838_)))))))
    (define locked-hash-table::set!::specialize
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
          (lambda (_self103831_ _key103833_ _value103834_)
            (let ((_h103836_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103831_
                      __table108298
                      __t108297
                      '#f)))
                  (_l103838_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103831_
                      __lock108299
                      __t108297
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l103838_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-set! _h103836_ _key103833_ _value103834_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l103838_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::set!102414_
       locked-hash-table::set!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'set!
       _locked-hash-table::set!102414_
       '#f))
    (define _locked-hash-table::update!102416_
      (lambda (_self103694_ _key103696_ _update103697_ _default103698_)
        (let ((_h103700_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103694_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l103702_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103694_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l103702_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h103700_
                _key103696_
                _update103697_
                _default103698_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l103702_)))))))
    (define locked-hash-table::update!::specialize
      (lambda (__t108302)
        (let ((__lock108303
               (let ((__tmp108305
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108302 'lock))))
                 (if __tmp108305 __tmp108305 (error '"Unknown slot" 'lock))))
              (__table108304
               (let ((__tmp108306
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108302 'table))))
                 (if __tmp108306 __tmp108306 (error '"Unknown slot" 'table)))))
          (lambda (_self103694_ _key103696_ _update103697_ _default103698_)
            (let ((_h103700_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103694_
                      __table108304
                      __t108302
                      '#f)))
                  (_l103702_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103694_
                      __lock108303
                      __t108302
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l103702_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-update!
                    _h103700_
                    _key103696_
                    _update103697_
                    _default103698_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l103702_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::update!102416_
       locked-hash-table::update!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'update!
       _locked-hash-table::update!102416_
       '#f))
    (define _locked-hash-table::delete!102418_
      (lambda (_self103559_ _key103561_)
        (let ((_h103563_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103559_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l103565_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103559_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l103565_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h103563_ _key103561_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l103565_)))))))
    (define locked-hash-table::delete!::specialize
      (lambda (__t108307)
        (let ((__table108308
               (let ((__tmp108310
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108307 'table))))
                 (if __tmp108310 __tmp108310 (error '"Unknown slot" 'table))))
              (__lock108309
               (let ((__tmp108311
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108307 'lock))))
                 (if __tmp108311 __tmp108311 (error '"Unknown slot" 'lock)))))
          (lambda (_self103559_ _key103561_)
            (let ((_h103563_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103559_
                      __table108308
                      __t108307
                      '#f)))
                  (_l103565_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103559_
                      __lock108309
                      __t108307
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l103565_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-delete! _h103563_ _key103561_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l103565_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::delete!102418_
       locked-hash-table::delete!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!102418_
       '#f))
    (define _locked-hash-table::for-each102420_
      (lambda (_self103424_ _proc103426_)
        (let ((_h103428_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103424_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l103430_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103424_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l103430_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h103428_ _proc103426_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l103430_)))))))
    (define locked-hash-table::for-each::specialize
      (lambda (__t108312)
        (let ((__lock108313
               (let ((__tmp108315
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108312 'lock))))
                 (if __tmp108315 __tmp108315 (error '"Unknown slot" 'lock))))
              (__table108314
               (let ((__tmp108316
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108312 'table))))
                 (if __tmp108316 __tmp108316 (error '"Unknown slot" 'table)))))
          (lambda (_self103424_ _proc103426_)
            (let ((_h103428_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103424_
                      __table108314
                      __t108312
                      '#f)))
                  (_l103430_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103424_
                      __lock108313
                      __t108312
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l103430_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-for-each _h103428_ _proc103426_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l103430_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::for-each102420_
       locked-hash-table::for-each::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each102420_
       '#f))
    (define _locked-hash-table::length102422_
      (lambda (_self103290_)
        (let ((_h103293_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103290_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l103295_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103290_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l103295_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h103293_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l103295_)))))))
    (define locked-hash-table::length::specialize
      (lambda (__t108317)
        (let ((__lock108318
               (let ((__tmp108320
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108317 'lock))))
                 (if __tmp108320 __tmp108320 (error '"Unknown slot" 'lock))))
              (__table108319
               (let ((__tmp108321
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108317 'table))))
                 (if __tmp108321 __tmp108321 (error '"Unknown slot" 'table)))))
          (lambda (_self103290_)
            (let ((_h103293_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103290_
                      __table108319
                      __t108317
                      '#f)))
                  (_l103295_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103290_
                      __lock108318
                      __t108317
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l103295_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-length _h103293_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l103295_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::length102422_
       locked-hash-table::length::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'length
       _locked-hash-table::length102422_
       '#f))
    (define _locked-hash-table::copy102424_
      (lambda (_self103156_)
        (let ((_h103159_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103156_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l103161_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103156_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l103161_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-copy _h103159_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l103161_)))))))
    (define locked-hash-table::copy::specialize
      (lambda (__t108322)
        (let ((__table108323
               (let ((__tmp108325
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108322 'table))))
                 (if __tmp108325 __tmp108325 (error '"Unknown slot" 'table))))
              (__lock108324
               (let ((__tmp108326
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108322 'lock))))
                 (if __tmp108326 __tmp108326 (error '"Unknown slot" 'lock)))))
          (lambda (_self103156_)
            (let ((_h103159_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103156_
                      __table108323
                      __t108322
                      '#f)))
                  (_l103161_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103156_
                      __lock108324
                      __t108322
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l103161_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-copy _h103159_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l103161_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::copy102424_
       locked-hash-table::copy::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'copy
       _locked-hash-table::copy102424_
       '#f))
    (define _locked-hash-table::clear!102426_
      (lambda (_self103022_)
        (let ((_h103025_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103022_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l103027_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103022_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l103027_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h103025_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l103027_)))))))
    (define locked-hash-table::clear!::specialize
      (lambda (__t108327)
        (let ((__lock108328
               (let ((__tmp108330
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108327 'lock))))
                 (if __tmp108330 __tmp108330 (error '"Unknown slot" 'lock))))
              (__table108329
               (let ((__tmp108331
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108327 'table))))
                 (if __tmp108331 __tmp108331 (error '"Unknown slot" 'table)))))
          (lambda (_self103022_)
            (let ((_h103025_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103022_
                      __table108329
                      __t108327
                      '#f)))
                  (_l103027_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103022_
                      __lock108328
                      __t108327
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l103027_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-clear! _h103025_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l103027_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::clear!102426_
       locked-hash-table::clear!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!102426_
       '#f))
    (let ((__tmp108393 (macro-type-mutex)))
      (declare (not safe))
      (bind-method! __tmp108393 'begin-read! mutex-lock!))
    (let ((__tmp108394 (macro-type-mutex)))
      (declare (not safe))
      (bind-method! __tmp108394 'end-read! mutex-unlock!))
    (let ((__tmp108395 (macro-type-mutex)))
      (declare (not safe))
      (bind-method! __tmp108395 'begin-write! mutex-lock!))
    (let ((__tmp108396 (macro-type-mutex)))
      (declare (not safe))
      (bind-method! __tmp108396 'end-write! mutex-unlock!))
    (define make-generic-hash-table
      (lambda (_table102892_
               _count102893_
               _free102894_
               _hash102895_
               _test102896_
               _seed102897_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table102892_
           _count102893_
           _free102894_
           _hash102895_
           _test102896_
           _seed102897_))))
    (define make-hash-table__%
      (lambda (_g108397_
               _size-hint102768102777_
               _seed102769102779_
               _test102770102781_
               _hash102771102783_
               _lock102772102785_
               _weak-keys102773102787_
               _weak-values102774102789_)
        (let* ((_size-hint102792_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint102768102777_ absent-value))
                    '#f
                    _size-hint102768102777_))
               (_seed102794_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed102769102779_ absent-value))
                    (random-integer (macro-max-fixnum32))
                    _seed102769102779_))
               (_test102796_
                (if (let ()
                      (declare (not safe))
                      (eq? _test102770102781_ absent-value))
                    equal?
                    _test102770102781_))
               (_hash102798_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash102771102783_ absent-value))
                    '#f
                    _hash102771102783_))
               (_lock102800_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock102772102785_ absent-value))
                    '#f
                    _lock102772102785_))
               (_weak-keys102802_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys102773102787_ absent-value))
                    '#f
                    _weak-keys102773102787_))
               (_weak-values102804_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values102774102789_ absent-value))
                    '#f
                    _weak-values102774102789_)))
          (letrec ((_make102806_
                    (lambda (_kons102867_ _hash102868_ _test102869_)
                      (let* ((_size102871_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint102792_)))
                             (_table102873_
                              (make-vector _size102871_ (macro-unused-obj)))
                             (_ht102875_
                              (let ((__tmp108398
                                     (_kons102867_
                                      _table102873_
                                      '0
                                      (fxquotient _size102871_ '2)
                                      _hash102868_
                                      _test102869_
                                      _seed102794_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp108398))))
                        (if _lock102800_
                            (let ((__tmp108399
                                   (let ((__tmp108400
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTableLock::interface
                                                  _lock102800_))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _ht102875_
                                      __tmp108400))))
                              (declare (not safe))
                              (cast HashTable::interface __tmp108399))
                            _ht102875_))))
                   (_make-gambit-table102807_
                    (lambda ()
                      (let* ((_size102852_
                              (let ((_$e102849_ _size-hint102792_))
                                (if _$e102849_ _$e102849_ (macro-absent-obj))))
                             (_test102857_
                              (let ((_$e102854_ _test102796_))
                                (if _$e102854_ _$e102854_ equal?)))
                             (_hash102862_
                              (let ((_$e102859_ _hash102798_))
                                (if _$e102859_
                                    _$e102859_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test102857_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test102857_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht102864_
                              (let ((__tmp108401
                                     (make-table
                                      'size:
                                      _size102852_
                                      'test:
                                      _test102857_
                                      'hash:
                                      _hash102862_
                                      'weak-keys:
                                      _weak-keys102802_
                                      'weak-values:
                                      _weak-values102804_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp108401))))
                        (if _lock102800_
                            (let ((__tmp108402
                                   (let ((__tmp108403
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTableLock::interface
                                                  _lock102800_))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _ht102864_
                                      __tmp108403))))
                              (declare (not safe))
                              (cast HashTable::interface __tmp108402))
                            _ht102864_)))))
            (if (or _weak-keys102802_ _weak-values102804_)
                (let () (declare (not safe)) (_make-gambit-table102807_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test102796_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test102796_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash102798_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash102798_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash102798_ eq-hash))))
                    (let ()
                      (declare (not safe))
                      (_make102806_ make-eq-hash-table eq-hash eq?))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test102796_ eqv?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test102796_ ##eqv?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash102798_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash102798_ eqv?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash102798_ eqv-hash))))
                        (let ()
                          (declare (not safe))
                          (_make102806_ make-eqv-hash-table eqv-hash eqv?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test102796_ eq?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test102796_ ##eq?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (eq? _hash102798_ symbolic-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash102798_ ##symbol-hash))))
                            (let ()
                              (declare (not safe))
                              (_make102806_
                               make-symbol-hash-table
                               symbolic-hash
                               eq?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test102796_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test102796_ ##equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test102796_ string=?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test102796_ ##string=?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash102798_ string-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash102798_
                                                ##string=?-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make102806_
                                   make-string-hash-table
                                   string-hash
                                   ##string=?))
                                (if (and (let ()
                                           (declare (not safe))
                                           (eq? _test102796_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (not _hash102798_)))
                                    (let ()
                                      (declare (not safe))
                                      (_make102806_
                                       make-generic-hash-table
                                       equal?-hash
                                       equal?))
                                    (if (let ((__tmp108405
                                               (let ()
                                                 (declare (not safe))
                                                 (procedure? _test102796_))))
                                          (declare (not safe))
                                          (not __tmp108405))
                                        (error '"bad hash table test function; expected procedure"
                                               _test102796_)
                                        (if (let ((__tmp108404
                                                   (let ()
                                                     (declare (not safe))
                                                     (procedure?
                                                      _hash102798_))))
                                              (declare (not safe))
                                              (not __tmp108404))
                                            (error '"bad hash table hash function; expected procedure"
                                                   _hash102798_)
                                            (let ()
                                              (declare (not safe))
                                              (_make102806_
                                               make-generic-hash-table
                                               _hash102798_
                                               _test102796_))))))))))))))
    (define make-hash-table__@
      (lambda (_keys102767102881_ . _args102883_)
        (apply make-hash-table__%
               _keys102767102881_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys102767102881_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys102767102881_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys102767102881_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys102767102881_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys102767102881_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys102767102881_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys102767102881_
                  'weak-values:
                  absent-value))
               _args102883_)))
    (define make-hash-table
      (lambda _args102775102889_
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
               _args102775102889_)))
    (define make-hash-table-eq
      (lambda _args102764_ (apply make-hash-table 'test: eq? _args102764_)))
    (define make-hash-table-eqv
      (lambda _args102762_ (apply make-hash-table 'test: eqv? _args102762_)))
    (define make-hash-table-symbolic
      (lambda _args102760_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args102760_)))
    (define make-hash-table-string
      (lambda _args102758_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args102758_)))
    (define list->hash-table
      (lambda (_lst102755_ . _args102756_)
        (let ((__tmp108406
               (apply make-hash-table
                      'size:
                      (length _lst102755_)
                      _args102756_)))
          (declare (not safe))
          (list->hash-table! _lst102755_ __tmp108406))))
    (define list->hash-table-eq
      (lambda (_lst102752_ . _args102753_)
        (let ((__tmp108407
               (apply make-hash-table-eq
                      'size:
                      (length _lst102752_)
                      _args102753_)))
          (declare (not safe))
          (list->hash-table! _lst102752_ __tmp108407))))
    (define list->hash-table-eqv
      (lambda (_lst102749_ . _args102750_)
        (let ((__tmp108408
               (apply make-hash-table-eqv
                      'size:
                      (length _lst102749_)
                      _args102750_)))
          (declare (not safe))
          (list->hash-table! _lst102749_ __tmp108408))))
    (define list->hash-table-symbolic
      (lambda (_lst102746_ . _args102747_)
        (let ((__tmp108409
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst102746_)
                      _args102747_)))
          (declare (not safe))
          (list->hash-table! _lst102746_ __tmp108409))))
    (define list->hash-table-string
      (lambda (_lst102743_ . _args102744_)
        (let ((__tmp108410
               (apply make-hash-table-string
                      'size:
                      (length _lst102743_)
                      _args102744_)))
          (declare (not safe))
          (list->hash-table! _lst102743_ __tmp108410))))
    (define list->hash-table!
      (lambda (_lst102710_ _h102711_)
        (for-each
         (lambda (_el102713_)
           (let* ((_el102714102721_ _el102713_)
                  (_E102716102725_
                   (lambda () (error '"No clause matching" _el102714102721_)))
                  (_K102717102731_
                   (lambda (_v102728_ _k102729_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h102711_ _k102729_ _v102728_)))))
             (if (let () (declare (not safe)) (##pair? _el102714102721_))
                 (let ((_hd102718102734_
                        (let () (declare (not safe)) (##car _el102714102721_)))
                       (_tl102719102736_
                        (let ()
                          (declare (not safe))
                          (##cdr _el102714102721_))))
                   (let* ((_k102739_ _hd102718102734_)
                          (_v102741_ _tl102719102736_))
                     (declare (not safe))
                     (_K102717102731_ _v102741_ _k102739_)))
                 (let () (declare (not safe)) (_E102716102725_)))))
         _lst102710_)
        _h102711_))
    (define plist->hash-table
      (lambda (_lst102707_ . _args102708_)
        (let ((__tmp108411
               (apply make-hash-table
                      'size:
                      (length _lst102707_)
                      _args102708_)))
          (declare (not safe))
          (plist->hash-table! _lst102707_ __tmp108411))))
    (define plist->hash-table-eq
      (lambda (_lst102704_ . _args102705_)
        (let ((__tmp108412
               (apply make-hash-table-eq
                      'size:
                      (length _lst102704_)
                      _args102705_)))
          (declare (not safe))
          (plist->hash-table! _lst102704_ __tmp108412))))
    (define plist->hash-table-eqv
      (lambda (_lst102701_ . _args102702_)
        (let ((__tmp108413
               (apply make-hash-table-eqv
                      'size:
                      (length _lst102701_)
                      _args102702_)))
          (declare (not safe))
          (plist->hash-table! _lst102701_ __tmp108413))))
    (define plist->hash-table-symbolic
      (lambda (_lst102698_ . _args102699_)
        (let ((__tmp108414
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst102698_)
                      _args102699_)))
          (declare (not safe))
          (plist->hash-table! _lst102698_ __tmp108414))))
    (define plist->hash-table-string
      (lambda (_lst102695_ . _args102696_)
        (let ((__tmp108415
               (apply make-hash-table-string
                      'size:
                      (length _lst102695_)
                      _args102696_)))
          (declare (not safe))
          (plist->hash-table! _lst102695_ __tmp108415))))
    (define plist->hash-table!
      (lambda (_lst102635_ _h102636_)
        (let _loop102638_ ((_rest102640_ _lst102635_))
          (let* ((_rest102641102653_ _rest102640_)
                 (_else102644102661_
                  (lambda ()
                    (error '"bad property list -- uneven list" _lst102635_))))
            (let ((_K102647102676_
                   (lambda (_rest102672_ _val102673_ _key102674_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h102636_ _key102674_ _val102673_))
                     (let ()
                       (declare (not safe))
                       (_loop102638_ _rest102672_))))
                  (_K102646102666_ (lambda () _h102636_)))
              (let ((_try-match102643102669_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest102641102653_))
                           (let () (declare (not safe)) (_K102646102666_))
                           (let ()
                             (declare (not safe))
                             (_else102644102661_))))))
                (if (let () (declare (not safe)) (##pair? _rest102641102653_))
                    (let ((_tl102649102681_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest102641102653_)))
                          (_hd102648102679_
                           (let ()
                             (declare (not safe))
                             (##car _rest102641102653_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl102649102681_))
                          (let ((_tl102651102688_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl102649102681_)))
                                (_hd102650102686_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl102649102681_))))
                            (let ((_key102684_ _hd102648102679_)
                                  (_val102691_ _hd102650102686_)
                                  (_rest102693_ _tl102651102688_))
                              (let ()
                                (declare (not safe))
                                (_K102647102676_
                                 _rest102693_
                                 _val102691_
                                 _key102684_))))
                          (let () (declare (not safe)) (_else102644102661_))))
                    (let ()
                      (declare (not safe))
                      (_try-match102643102669_)))))))))
    (define hash-length
      (lambda (_h102633_)
        (let ((__tmp108416
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102633_))))
          (declare (not safe))
          (&HashTable-length __tmp108416))))
    (define &hash-length
      (lambda (_h102631_)
        (let () (declare (not safe)) (&HashTable-length _h102631_))))
    (define hash-ref__%
      (lambda (_h102615_ _key102616_ _default102617_)
        (let ((__tmp108417
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102615_))))
          (declare (not safe))
          (&hash-ref__% __tmp108417 _key102616_ _default102617_))))
    (define hash-ref__0
      (lambda (_h102622_ _key102623_)
        (let ((_default102625_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h102622_ _key102623_ _default102625_))))
    (define hash-ref
      (lambda _g108419_
        (let ((_g108418_ (let () (declare (not safe)) (##length _g108419_))))
          (cond ((let () (declare (not safe)) (##fx= _g108418_ 2))
                 (apply (lambda (_h102622_ _key102623_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h102622_ _key102623_)))
                        _g108419_))
                ((let () (declare (not safe)) (##fx= _g108418_ 3))
                 (apply (lambda (_h102627_ _key102628_ _default102629_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__%
                             _h102627_
                             _key102628_
                             _default102629_)))
                        _g108419_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g108419_))))))
    (define &hash-ref__%
      (lambda (_h102596_ _key102597_ _default102598_)
        (let ((_result102600_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h102596_ _key102597_ _default102598_))))
          (if (let ((__tmp108420 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result102600_ __tmp108420))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h102596_
                 'key:
                 _key102597_))
              _result102600_))))
    (define &hash-ref__0
      (lambda (_h102605_ _key102606_)
        (let ((_default102608_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h102605_ _key102606_ _default102608_))))
    (define &hash-ref
      (lambda _g108422_
        (let ((_g108421_ (let () (declare (not safe)) (##length _g108422_))))
          (cond ((let () (declare (not safe)) (##fx= _g108421_ 2))
                 (apply (lambda (_h102605_ _key102606_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h102605_ _key102606_)))
                        _g108422_))
                ((let () (declare (not safe)) (##fx= _g108421_ 3))
                 (apply (lambda (_h102610_ _key102611_ _default102612_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__%
                             _h102610_
                             _key102611_
                             _default102612_)))
                        _g108422_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g108422_))))))
    (define hash-get
      (lambda (_h102592_ _key102593_)
        (let ((__tmp108423
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102592_))))
          (declare (not safe))
          (&hash-get __tmp108423 _key102593_))))
    (define &hash-get
      (lambda (_h102589_ _key102590_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h102589_ _key102590_ '#f))))
    (define hash-put!
      (lambda (_h102585_ _key102586_ _value102587_)
        (let ((__tmp108424
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102585_))))
          (declare (not safe))
          (&HashTable-set! __tmp108424 _key102586_ _value102587_))))
    (define &hash-put!
      (lambda (_h102581_ _key102582_ _value102583_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h102581_ _key102582_ _value102583_))))
    (define hash-update!__%
      (lambda (_h102562_ _key102563_ _update102564_ _default102565_)
        (let ((__tmp108425
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102562_))))
          (declare (not safe))
          (&HashTable-update!
           __tmp108425
           _key102563_
           _update102564_
           _default102565_))))
    (define hash-update!__0
      (lambda (_h102570_ _key102571_ _update102572_)
        (let ((_default102574_ '#!void))
          (declare (not safe))
          (hash-update!__%
           _h102570_
           _key102571_
           _update102572_
           _default102574_))))
    (define hash-update!
      (lambda _g108427_
        (let ((_g108426_ (let () (declare (not safe)) (##length _g108427_))))
          (cond ((let () (declare (not safe)) (##fx= _g108426_ 3))
                 (apply (lambda (_h102570_ _key102571_ _update102572_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h102570_
                             _key102571_
                             _update102572_)))
                        _g108427_))
                ((let () (declare (not safe)) (##fx= _g108426_ 4))
                 (apply (lambda (_h102576_
                                 _key102577_
                                 _update102578_
                                 _default102579_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h102576_
                             _key102577_
                             _update102578_
                             _default102579_)))
                        _g108427_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g108427_))))))
    (define &hash-update!__%
      (lambda (_h102542_ _key102543_ _update102544_ _default102545_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h102542_
           _key102543_
           _update102544_
           _default102545_))))
    (define &hash-update!__0
      (lambda (_h102550_ _key102551_ _update102552_)
        (let ((_default102554_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h102550_
           _key102551_
           _update102552_
           _default102554_))))
    (define &hash-update!
      (lambda _g108429_
        (let ((_g108428_ (let () (declare (not safe)) (##length _g108429_))))
          (cond ((let () (declare (not safe)) (##fx= _g108428_ 3))
                 (apply (lambda (_h102550_ _key102551_ _update102552_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h102550_
                             _key102551_
                             _update102552_)))
                        _g108429_))
                ((let () (declare (not safe)) (##fx= _g108428_ 4))
                 (apply (lambda (_h102556_
                                 _key102557_
                                 _update102558_
                                 _default102559_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h102556_
                             _key102557_
                             _update102558_
                             _default102559_)))
                        _g108429_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g108429_))))))
    (define hash-remove!
      (lambda (_h102538_ _key102539_)
        (let ((__tmp108430
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102538_))))
          (declare (not safe))
          (&HashTable-delete! __tmp108430 _key102539_))))
    (define &hash-remove!
      (lambda (_h102535_ _key102536_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h102535_ _key102536_))))
    (define hash-key?
      (lambda (_h102532_ _k102533_)
        (let ((__tmp108431
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102532_))))
          (declare (not safe))
          (&hash-key? __tmp108431 _k102533_))))
    (define &hash-key?
      (lambda (_h102529_ _k102530_)
        (let ((__tmp108432
               (let ((__tmp108433
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h102529_ _k102530_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp108433 absent-value))))
          (declare (not safe))
          (not __tmp108432))))
    (define hash->list
      (lambda (_h102527_)
        (let ((__tmp108434
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102527_))))
          (declare (not safe))
          (&hash->list __tmp108434))))
    (define &hash->list
      (lambda (_h102520_)
        (let ((_lst102522_ '()))
          (let ((__tmp108435
                 (lambda (_k102524_ _v102525_)
                   (set! _lst102522_
                         (let ((__tmp108436
                                (let ()
                                  (declare (not safe))
                                  (cons _k102524_ _v102525_))))
                           (declare (not safe))
                           (cons __tmp108436 _lst102522_))))))
            (declare (not safe))
            (&HashTable-for-each _h102520_ __tmp108435))
          _lst102522_)))
    (define hash->plist
      (lambda (_h102518_)
        (let ((__tmp108437
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102518_))))
          (declare (not safe))
          (&hash->plist __tmp108437))))
    (define &hash->plist
      (lambda (_h102511_)
        (let ((_lst102513_ '()))
          (let ((__tmp108438
                 (lambda (_k102515_ _v102516_)
                   (set! _lst102513_
                         (let ((__tmp108439
                                (let ()
                                  (declare (not safe))
                                  (cons _v102516_ _lst102513_))))
                           (declare (not safe))
                           (cons _k102515_ __tmp108439))))))
            (declare (not safe))
            (&HashTable-for-each _h102511_ __tmp108438))
          _lst102513_)))
    (define hash-for-each
      (lambda (_proc102508_ _h102509_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h102509_ _proc102508_))))
    (define hash-map
      (lambda (_proc102500_ _h102501_)
        (let ((_result102503_ '()))
          (let ((__tmp108440
                 (lambda (_k102505_ _v102506_)
                   (set! _result102503_
                         (let ((__tmp108441
                                (_proc102500_ _k102505_ _v102506_)))
                           (declare (not safe))
                           (cons __tmp108441 _result102503_))))))
            (declare (not safe))
            (HashTable-for-each _h102501_ __tmp108440))
          _result102503_)))
    (define hash-fold
      (lambda (_proc102491_ _iv102492_ _h102493_)
        (let ((_result102495_ _iv102492_))
          (let ((__tmp108442
                 (lambda (_k102497_ _v102498_)
                   (set! _result102495_
                         (_proc102491_ _k102497_ _v102498_ _result102495_)))))
            (declare (not safe))
            (HashTable-for-each _h102493_ __tmp108442))
          _result102495_)))
    (define hash-find__%
      (lambda (_proc102467_ _h102468_ _default-value102469_)
        (call-with-current-continuation
         (lambda (_return102471_)
           (let ((__tmp108443
                  (lambda (_k102473_ _v102474_)
                    (let ((_$e102476_ (_proc102467_ _k102473_ _v102474_)))
                      (if _$e102476_ (_return102471_ _$e102476_) '#!void)))))
             (declare (not safe))
             (HashTable-for-each _h102468_ __tmp108443))
           _default-value102469_))))
    (define hash-find__0
      (lambda (_proc102482_ _h102483_)
        (let ((_default-value102485_ '#f))
          (declare (not safe))
          (hash-find__% _proc102482_ _h102483_ _default-value102485_))))
    (define hash-find
      (lambda _g108445_
        (let ((_g108444_ (let () (declare (not safe)) (##length _g108445_))))
          (cond ((let () (declare (not safe)) (##fx= _g108444_ 2))
                 (apply (lambda (_proc102482_ _h102483_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc102482_ _h102483_)))
                        _g108445_))
                ((let () (declare (not safe)) (##fx= _g108444_ 3))
                 (apply (lambda (_proc102487_ _h102488_ _default-value102489_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc102487_
                             _h102488_
                             _default-value102489_)))
                        _g108445_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g108445_))))))
    (define hash-keys
      (lambda (_h102464_)
        (let ((__tmp108446
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102464_))))
          (declare (not safe))
          (&hash-keys __tmp108446))))
    (define &hash-keys
      (lambda (_h102457_)
        (let ((_result102459_ '()))
          (let ((__tmp108447
                 (lambda (_k102461_ _v102462_)
                   (set! _result102459_
                         (let ()
                           (declare (not safe))
                           (cons _k102461_ _result102459_))))))
            (declare (not safe))
            (&HashTable-for-each _h102457_ __tmp108447))
          _result102459_)))
    (define hash-values
      (lambda (_h102455_)
        (let ((__tmp108448
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102455_))))
          (declare (not safe))
          (&hash-values __tmp108448))))
    (define &hash-values
      (lambda (_h102448_)
        (let ((_result102450_ '()))
          (let ((__tmp108449
                 (lambda (_k102452_ _v102453_)
                   (set! _result102450_
                         (let ()
                           (declare (not safe))
                           (cons _v102453_ _result102450_))))))
            (declare (not safe))
            (&HashTable-for-each _h102448_ __tmp108449))
          _result102450_)))
    (define hash-copy
      (lambda (_h102446_)
        (let ((__tmp108450
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102446_))))
          (declare (not safe))
          (&HashTable-copy __tmp108450))))
    (define &hash-copy
      (lambda (_h102444_)
        (let () (declare (not safe)) (&HashTable-copy _h102444_))))
    (define hash-merge
      (lambda (_h102439_ . _rest102440_)
        (let ((_copy102442_
               (let () (declare (not safe)) (hash-copy _h102439_))))
          (apply hash-merge! _copy102442_ _rest102440_)
          _copy102442_)))
    (define hash-merge!
      (lambda (_h102429_ . _rest102430_)
        (let ((_h102432_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102429_))))
          (for-each
           (lambda (_hr102434_)
             (let ((__tmp108451
                    (lambda (_k102436_ _v102437_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h102432_ _k102436_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set!
                             _h102432_
                             _k102436_
                             _v102437_))))))
               (declare (not safe))
               (hash-for-each __tmp108451 _hr102434_)))
           _rest102430_)
          _h102432_)))))
