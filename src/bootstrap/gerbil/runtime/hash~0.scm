(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1710774316)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp74276 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp74276
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args74259_
        (apply make-instance UnboundKeyError::t _$args74259_)))
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
      (lambda (_where74133_ _message74134_ . _irritants74135_)
        (raise (let ((__obj74273
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj74273
                  _message74134_
                  'where:
                  _where74133_
                  'irritants:
                  _irritants74135_)
                 __obj74273))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp74281 (list interface-instance::t))
            (__tmp74277
             (let ((__tmp74280
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp74278
                    (let ((__tmp74279
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp74279 '()))))
               (declare (not safe))
               (cons __tmp74280 __tmp74278))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp74281
         '(ref set! update! delete! for-each length copy clear!)
         __tmp74277
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
      (let ((__tmp74286 (list interface-instance::t))
            (__tmp74282
             (let ((__tmp74285
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp74283
                    (let ((__tmp74284
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp74284 '()))))
               (declare (not safe))
               (cons __tmp74285 __tmp74283))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp74286
         '(begin-read! end-read! begin-write! end-write!)
         __tmp74282
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
      (lambda (_table74126_ _key74127_ _update74128_ _default74129_)
        (let ((_result74131_
               (table-ref _table74126_ _key74127_ _default74129_)))
          (table-set!
           _table74126_
           _key74127_
           (_update74128_ _default74129_)))))
    (define gambit-table-for-each
      (lambda (_table74123_ _proc74124_)
        (table-for-each _proc74124_ _table74123_)))
    (define gambit-table-clear!
      (lambda (_table74121_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table74121_ '0 '5 '#f '#f))))
    (let ((__tmp74287 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74287 'ref table-ref))
    (let ((__tmp74288 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74288 'set! table-set!))
    (let ((__tmp74289 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74289 'update! gambit-table-update!))
    (let ((__tmp74290 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74290 'delete! table-set!))
    (let ((__tmp74291 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74291 'for-each gambit-table-for-each))
    (let ((__tmp74292 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74292 'length table-length))
    (let ((__tmp74293 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74293 'copy table-copy))
    (let ((__tmp74294 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp74294 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots74103_ '(table count free hash test seed))
             (_slot-vector74105_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots74103_))))
             (_slot-table74112_
              (let ((_slot-table74107_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot74109_ _field74110_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table74107_
                      _slot74109_
                      _field74110_))
                   (let ((__tmp74295 (symbol->keyword _slot74109_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table74107_
                      __tmp74295
                      _field74110_)))
                 _slots74103_
                 (iota (length _slots74103_) '1))
                _slot-table74107_))
             (_flags74114_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields74116_ '#())
             (_properties74118_
              (let ((__tmp74298
                     (let ((__tmp74299
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots74103_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp74299)))
                    (__tmp74296
                     (let ((__tmp74297
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp74297 '()))))
                (declare (not safe))
                (cons __tmp74298 __tmp74296))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags74114_
           __table::t
           _fields74116_
           '()
           _slot-vector74105_
           _slot-table74112_
           _properties74118_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_slots74085_ '(gcht immediate))
             (_slot-vector74087_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots74085_))))
             (_slot-table74094_
              (let ((_slot-table74089_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot74091_ _field74092_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table74089_
                      _slot74091_
                      _field74092_))
                   (let ((__tmp74300 (symbol->keyword _slot74091_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table74089_
                      __tmp74300
                      _field74092_)))
                 _slots74085_
                 (iota (length _slots74085_) '1))
                _slot-table74089_))
             (_flags74096_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields74098_ '#())
             (_properties74100_
              (let ((__tmp74303
                     (let ((__tmp74304
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots74085_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp74304)))
                    (__tmp74301
                     (let ((__tmp74302
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp74302 '()))))
                (declare (not safe))
                (cons __tmp74303 __tmp74301))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'hash-table
           _flags74096_
           __gc-table::t
           _fields74098_
           '()
           _slot-vector74087_
           _slot-table74094_
           _properties74100_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp74309 (list))
            (__tmp74305
             (let ((__tmp74308
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp74306
                    (let ((__tmp74307
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp74307 '()))))
               (declare (not safe))
               (cons __tmp74308 __tmp74306))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp74309
         '(table lock)
         __tmp74305
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args74082_
        (apply make-instance locked-hash-table::t _$args74082_)))
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
      (let ((__tmp74314 (list))
            (__tmp74310
             (let ((__tmp74313
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp74311
                    (let ((__tmp74312
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp74312 '()))))
               (declare (not safe))
               (cons __tmp74313 __tmp74311))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp74314
         '(table key-check)
         __tmp74310
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args74079_
        (apply make-instance checked-hash-table::t _$args74079_)))
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
      (let ((__tmp74317 (list hash-table::t))
            (__tmp74315
             (let ((__tmp74316
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74316 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp74317
         '()
         __tmp74315
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args74076_
        (apply make-instance eq-hash-table::t _$args74076_)))
    (define eqv-hash-table::t
      (let ((__tmp74320 (list hash-table::t))
            (__tmp74318
             (let ((__tmp74319
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74319 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp74320
         '()
         __tmp74318
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args74073_
        (apply make-instance eqv-hash-table::t _$args74073_)))
    (define symbol-hash-table::t
      (let ((__tmp74323 (list hash-table::t))
            (__tmp74321
             (let ((__tmp74322
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74322 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp74323
         '()
         __tmp74321
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args74070_
        (apply make-instance symbol-hash-table::t _$args74070_)))
    (define string-hash-table::t
      (let ((__tmp74326 (list hash-table::t))
            (__tmp74324
             (let ((__tmp74325
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74325 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp74326
         '()
         __tmp74324
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args74067_
        (apply make-instance string-hash-table::t _$args74067_)))
    (define immediate-hash-table::t
      (let ((__tmp74329 (list hash-table::t))
            (__tmp74327
             (let ((__tmp74328
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74328 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp74329
         '()
         __tmp74327
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _$args74064_
        (apply make-instance immediate-hash-table::t _$args74064_)))
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
      (lambda (_obj74062_)
        (if (let () (declare (not safe)) (##structure? _obj74062_))
            (let ((__tmp74330
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj74062_))))
              (declare (not safe))
              (eq? __tmp74330 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj74057_)
        (let ((_$e74059_
               (if (let () (declare (not safe)) (##structure? _obj74057_))
                   (let ((__tmp74331
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj74057_))))
                     (declare (not safe))
                     (eq? __tmp74331 HashTable::t))
                   '#f)))
          (if _$e74059_
              _$e74059_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj74057_))))))
    (define HashTable-ref
      (lambda (_h74051_ _key74052_ _default74053_)
        (let ((_h74055_
               (if (and (let () (declare (not safe)) (##structure? _h74051_))
                        (let ((__tmp74332
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74051_))))
                          (declare (not safe))
                          (eq? __tmp74332 HashTable::t)))
                   _h74051_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74051_)))))
          (declare (not safe))
          (&HashTable-ref _h74055_ _key74052_ _default74053_))))
    (define &HashTable-ref
      (lambda (_h74046_ _key74047_ _default74048_)
        (declare (not safe))
        ((##unchecked-structure-ref _h74046_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h74046_ '1 interface-instance::t '#f)
         _key74047_
         _default74048_)))
    (define HashTable-set!
      (lambda (_h74040_ _key74041_ _value74042_)
        (let ((_h74044_
               (if (and (let () (declare (not safe)) (##structure? _h74040_))
                        (let ((__tmp74333
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74040_))))
                          (declare (not safe))
                          (eq? __tmp74333 HashTable::t)))
                   _h74040_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74040_)))))
          (declare (not safe))
          (&HashTable-set! _h74044_ _key74041_ _value74042_))))
    (define &HashTable-set!
      (lambda (_h74035_ _key74036_ _value74037_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74035_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h74035_ '1 interface-instance::t '#f)
           _key74036_
           _value74037_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h74028_ _key74029_ _update74030_ _default74031_)
        (let ((_h74033_
               (if (and (let () (declare (not safe)) (##structure? _h74028_))
                        (let ((__tmp74334
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74028_))))
                          (declare (not safe))
                          (eq? __tmp74334 HashTable::t)))
                   _h74028_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74028_)))))
          (declare (not safe))
          (&HashTable-update!
           _h74033_
           _key74029_
           _update74030_
           _default74031_))))
    (define &HashTable-update!
      (lambda (_h74022_ _key74023_ _update74024_ _default74025_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74022_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h74022_ '1 interface-instance::t '#f)
           _key74023_
           _update74024_
           _default74025_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h74017_ _key74018_)
        (let ((_h74020_
               (if (and (let () (declare (not safe)) (##structure? _h74017_))
                        (let ((__tmp74335
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74017_))))
                          (declare (not safe))
                          (eq? __tmp74335 HashTable::t)))
                   _h74017_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74017_)))))
          (declare (not safe))
          (&HashTable-delete! _h74020_ _key74018_))))
    (define &HashTable-delete!
      (lambda (_h74013_ _key74014_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74013_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h74013_ '1 interface-instance::t '#f)
           _key74014_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h74008_ _proc74009_)
        (let ((_h74011_
               (if (and (let () (declare (not safe)) (##structure? _h74008_))
                        (let ((__tmp74336
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74008_))))
                          (declare (not safe))
                          (eq? __tmp74336 HashTable::t)))
                   _h74008_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74008_)))))
          (declare (not safe))
          (&HashTable-for-each _h74011_ _proc74009_))))
    (define &HashTable-for-each
      (lambda (_h74004_ _proc74005_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h74004_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h74004_ '1 interface-instance::t '#f)
           _proc74005_)
          '#!void)))
    (define HashTable-length
      (lambda (_h74000_)
        (let ((_h74002_
               (if (and (let () (declare (not safe)) (##structure? _h74000_))
                        (let ((__tmp74337
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h74000_))))
                          (declare (not safe))
                          (eq? __tmp74337 HashTable::t)))
                   _h74000_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h74000_)))))
          (declare (not safe))
          (&HashTable-length _h74002_))))
    (define &HashTable-length
      (lambda (_h73997_)
        (declare (not safe))
        ((##unchecked-structure-ref _h73997_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h73997_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h73993_)
        (let ((_h73995_
               (if (and (let () (declare (not safe)) (##structure? _h73993_))
                        (let ((__tmp74338
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h73993_))))
                          (declare (not safe))
                          (eq? __tmp74338 HashTable::t)))
                   _h73993_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h73993_)))))
          (declare (not safe))
          (&HashTable-copy _h73995_))))
    (define &HashTable-copy
      (lambda (_h73990_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h73990_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h73990_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h73986_)
        (let ((_h73988_
               (if (and (let () (declare (not safe)) (##structure? _h73986_))
                        (let ((__tmp74339
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h73986_))))
                          (declare (not safe))
                          (eq? __tmp74339 HashTable::t)))
                   _h73986_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h73986_)))))
          (declare (not safe))
          (&HashTable-clear! _h73988_))))
    (define &HashTable-clear!
      (lambda (_h73983_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h73983_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h73983_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl73980_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl73980_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl73980_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl73977_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl73977_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl73977_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl73974_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl73974_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl73974_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl73971_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl73971_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl73971_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref70984_
      (lambda (_self73958_ _key73960_ _default73961_)
        (let ((_h73963_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73958_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73965_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73958_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l73965_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h73963_ _key73960_ _default73961_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l73965_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref70984_
       '#f))
    (define _locked-hash-table::set!70986_
      (lambda (_self73822_ _key73824_ _value73825_)
        (let ((_h73827_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73822_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73829_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73822_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73829_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h73827_ _key73824_ _value73825_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73829_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!70986_
       '#f))
    (define _locked-hash-table::update!70988_
      (lambda (_self73685_ _key73687_ _update73688_ _default73689_)
        (let ((_h73691_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73685_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73693_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73685_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73693_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h73691_
                _key73687_
                _update73688_
                _default73689_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73693_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!70988_
       '#f))
    (define _locked-hash-table::delete!70990_
      (lambda (_self73550_ _key73552_)
        (let ((_h73554_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73550_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73556_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73550_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73556_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h73554_ _key73552_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73556_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!70990_
       '#f))
    (define _locked-hash-table::for-each70992_
      (lambda (_self73415_ _proc73417_)
        (let ((_h73419_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73415_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73421_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73415_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l73421_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h73419_ _proc73417_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l73421_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each70992_
       '#f))
    (define _locked-hash-table::length70994_
      (lambda (_self73281_)
        (let ((_h73284_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73281_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73286_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73281_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l73286_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h73284_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l73286_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length70994_
       '#f))
    (define _locked-hash-table::copy70996_
      (lambda (_self73147_)
        (let ((_h73150_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73147_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73152_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73147_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l73152_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h73150_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l73152_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy70996_
       '#f))
    (define _locked-hash-table::clear!70998_
      (lambda (_self73013_)
        (let ((_h73016_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73013_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73018_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73013_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73018_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h73016_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73018_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!70998_
       '#f))
    (let ((__tmp74340 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74340 'begin-read! mutex-lock!))
    (let ((__tmp74341 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74341 'end-read! mutex-unlock!))
    (let ((__tmp74342 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74342 'begin-write! mutex-lock!))
    (let ((__tmp74343 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74343 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref71276_
      (lambda (_self72877_ _key72878_ _default72879_)
        (let ((_h72881_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72877_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72883_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72877_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7288572887_)
             (if (_g7288572887_ _key72878_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72878_))))
           _key?72883_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h72881_ _key72878_ _default72879_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref71276_
       '#f))
    (define _checked-hash-table::set!71278_
      (lambda (_self72741_ _key72742_ _value72743_)
        (let ((_h72745_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72741_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72747_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72741_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7274972751_)
             (if (_g7274972751_ _key72742_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72742_))))
           _key?72747_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h72745_ _key72742_ _value72743_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!71278_
       '#f))
    (define _checked-hash-table::update!71280_
      (lambda (_self72606_ _key72607_ _update72608_ _default72609_)
        (let ((_h72611_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72606_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72613_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72606_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?72616_)
             (if (_key?72616_ _key72607_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72607_)))
             (if (let () (declare (not safe)) (procedure? _update72608_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update72608_))))
           _key?72613_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h72611_
             _key72607_
             _update72608_
             _default72609_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!71280_
       '#f))
    (define _checked-hash-table::delete!71282_
      (lambda (_self72471_ _key72472_)
        (let ((_h72474_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72471_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72476_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72471_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7247872480_)
             (if (_g7247872480_ _key72472_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72472_))))
           _key?72476_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h72474_ _key72472_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!71282_
       '#f))
    (define _checked-hash-table::for-each71284_
      (lambda (_self72339_ _proc72340_)
        (let ((_h72342_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72339_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72344_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72339_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g74344_)
             (if (let () (declare (not safe)) (procedure? _proc72340_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc72340_))))
           _key?72344_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h72342_ _proc72340_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each71284_
       '#f))
    (define _checked-hash-table::length71286_
      (lambda (_self72209_)
        (let ((_h72211_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72209_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72213_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72209_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h72211_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length71286_
       '#f))
    (define _checked-hash-table::copy71288_
      (lambda (_self72079_)
        (let ((_h72081_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72079_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72083_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72079_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h72081_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy71288_
       '#f))
    (define _checked-hash-table::clear!71290_
      (lambda (_self71949_)
        (let ((_h71951_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71949_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71953_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71949_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h71951_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!71290_
       '#f))
    (define make-generic-hash-table
      (lambda (_table71819_
               _count71820_
               _free71821_
               _hash71822_
               _test71823_
               _seed71824_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table71819_
           _count71820_
           _free71821_
           _hash71822_
           _test71823_
           _seed71824_))))
    (define make-hash-table__%
      (lambda (_g74345_
               _size-hint7166471674_
               _seed7166571676_
               _test7166671678_
               _hash7166771680_
               _lock7166871682_
               _check7166971684_
               _weak-keys7167071686_
               _weak-values7167171688_)
        (let* ((_size-hint71691_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint7166471674_ absent-value))
                    '#f
                    _size-hint7166471674_))
               (_seed71693_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed7166571676_ absent-value))
                    '#f
                    _seed7166571676_))
               (_test71695_
                (if (let ()
                      (declare (not safe))
                      (eq? _test7166671678_ absent-value))
                    equal?
                    _test7166671678_))
               (_hash71697_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash7166771680_ absent-value))
                    '#f
                    _hash7166771680_))
               (_lock71699_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock7166871682_ absent-value))
                    '#f
                    _lock7166871682_))
               (_check71701_
                (if (let ()
                      (declare (not safe))
                      (eq? _check7166971684_ absent-value))
                    '#f
                    _check7166971684_))
               (_weak-keys71703_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys7167071686_ absent-value))
                    '#f
                    _weak-keys7167071686_))
               (_weak-values71705_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values7167171688_ absent-value))
                    '#f
                    _weak-values7167171688_)))
          (letrec ((_table-seed71707_
                    (lambda ()
                      (if (let () (declare (not safe)) (fixnum? _seed71693_))
                          _seed71693_
                          (random-integer (macro-max-fixnum32)))))
                   (_wrap-lock71708_
                    (lambda (_ht71802_)
                      (if _lock71699_
                          (let ((__tmp74346
                                 (let ((__tmp74347
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock71699_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht71802_
                                    __tmp74347))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp74346))
                          _ht71802_)))
                   (_wrap-checked71709_
                    (lambda (_ht71799_ _implicit71800_)
                      (if _check71701_
                          (let ((__tmp74348
                                 (let ((__tmp74349
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check71701_))
                                            _check71701_
                                            _implicit71800_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht71799_
                                    __tmp74349))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp74348))
                          _ht71799_)))
                   (_make71710_
                    (lambda (_kons71787_ _key?71788_ _hash71789_ _test71790_)
                      (let* ((_size71792_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint71691_)))
                             (_table71794_
                              (make-vector _size71792_ (macro-unused-obj)))
                             (_ht71796_
                              (let ((__tmp74350
                                     (_kons71787_
                                      _table71794_
                                      '0
                                      (fxquotient _size71792_ '2)
                                      _hash71789_
                                      _test71790_
                                      (let ()
                                        (declare (not safe))
                                        (_table-seed71707_)))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp74350))))
                        (let ((__tmp74351
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock71708_ _ht71796_))))
                          (declare (not safe))
                          (_wrap-checked71709_ __tmp74351 _key?71788_)))))
                   (_make-gc-hash-table71711_
                    (lambda ()
                      (let* ((_ht71785_
                              (let ((__tmp74352
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _size-hint71691_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp74352)))
                             (__tmp74353
                              (let ()
                                (declare (not safe))
                                (_wrap-lock71708_ _ht71785_))))
                        (declare (not safe))
                        (_wrap-checked71709_ __tmp74353 true))))
                   (_make-gambit-table71712_
                    (lambda ()
                      (let* ((_size71769_
                              (let ((_$e71766_ _size-hint71691_))
                                (if _$e71766_ _$e71766_ (macro-absent-obj))))
                             (_test71774_
                              (let ((_$e71771_ _test71695_))
                                (if _$e71771_ _$e71771_ equal?)))
                             (_hash71779_
                              (let ((_$e71776_ _hash71697_))
                                (if _$e71776_
                                    _$e71776_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test71774_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test71774_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht71781_
                              (let ((__tmp74354
                                     (make-table
                                      'size:
                                      _size71769_
                                      'test:
                                      _test71774_
                                      'hash:
                                      _hash71779_
                                      'weak-keys:
                                      _weak-keys71703_
                                      'weak-values:
                                      _weak-values71705_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp74354))))
                        (let ((__tmp74355
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock71708_ _ht71781_))))
                          (declare (not safe))
                          (_wrap-checked71709_ __tmp74355 true))))))
            (if (or _weak-keys71703_ _weak-values71705_)
                (let () (declare (not safe)) (_make-gambit-table71712_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test71695_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test71695_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash71697_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash71697_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash71697_ eq-hash)))
                         (let () (declare (not safe)) (not _seed71693_)))
                    (let () (declare (not safe)) (_make-gc-hash-table71711_))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test71695_ eq?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test71695_ ##eq?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash71697_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash71697_ eq?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash71697_ eq-hash))))
                        (let ()
                          (declare (not safe))
                          (_make71710_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test71695_ eqv?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test71695_ ##eqv?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _hash71697_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash71697_ eqv?-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash71697_ eqv-hash))))
                            (let ()
                              (declare (not safe))
                              (_make71710_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test71695_ eq?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test71695_ ##eq?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash71697_ symbolic-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash71697_ ##symbol-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make71710_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (let ()
                                               (declare (not safe))
                                               (eq? _test71695_ eq?))
                                             (let ()
                                               (declare (not safe))
                                               (eq? _test71695_ ##eq?)))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash71697_ immediate-hash)))
                                    (let ()
                                      (declare (not safe))
                                      (_make71710_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (let ()
                                                   (declare (not safe))
                                                   (eq? _test71695_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test71695_ ##equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test71695_ string=?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test71695_
                                                        ##string=?)))
                                             (or (let ()
                                                   (declare (not safe))
                                                   (eq? _hash71697_
                                                        string-hash))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _hash71697_
                                                        ##string=?-hash))))
                                        (let ()
                                          (declare (not safe))
                                          (_make71710_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (let ()
                                                   (declare (not safe))
                                                   (eq? _test71695_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _hash71697_)))
                                            (let ()
                                              (declare (not safe))
                                              (_make71710_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp74357
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _test71695_))))
                                                  (declare (not safe))
                                                  (not __tmp74357))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _test71695_))
                                                (if (let ((__tmp74356
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _hash71697_))))
                                                      (declare (not safe))
                                                      (not __tmp74356))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _hash71697_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make71710_
                                                       make-generic-hash-table
                                                       true
                                                       _hash71697_
                                                       _test71695_))))))))))))))))
    (define make-hash-table__@
      (lambda (_keys7166371808_ . _args71810_)
        (apply make-hash-table__%
               _keys7166371808_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7166371808_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7166371808_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7166371808_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7166371808_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7166371808_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7166371808_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7166371808_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7166371808_
                  'weak-values:
                  absent-value))
               _args71810_)))
    (define make-hash-table
      (lambda _args7167271816_
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
               _args7167271816_)))
    (define make-hash-table-eq
      (lambda _args71660_ (apply make-hash-table 'test: eq? _args71660_)))
    (define make-hash-table-eqv
      (lambda _args71658_ (apply make-hash-table 'test: eqv? _args71658_)))
    (define make-hash-table-symbolic
      (lambda _args71656_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args71656_)))
    (define make-hash-table-string
      (lambda _args71654_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args71654_)))
    (define make-hash-table-immediate
      (lambda _args71652_
        (apply make-hash-table 'test: eq? 'hash: immediate-hash _args71652_)))
    (define list->hash-table
      (lambda (_lst71649_ . _args71650_)
        (let ((__tmp74358
               (apply make-hash-table 'size: (length _lst71649_) _args71650_)))
          (declare (not safe))
          (list->hash-table! _lst71649_ __tmp74358))))
    (define list->hash-table-eq
      (lambda (_lst71646_ . _args71647_)
        (let ((__tmp74359
               (apply make-hash-table-eq
                      'size:
                      (length _lst71646_)
                      _args71647_)))
          (declare (not safe))
          (list->hash-table! _lst71646_ __tmp74359))))
    (define list->hash-table-eqv
      (lambda (_lst71643_ . _args71644_)
        (let ((__tmp74360
               (apply make-hash-table-eqv
                      'size:
                      (length _lst71643_)
                      _args71644_)))
          (declare (not safe))
          (list->hash-table! _lst71643_ __tmp74360))))
    (define list->hash-table-symbolic
      (lambda (_lst71640_ . _args71641_)
        (let ((__tmp74361
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst71640_)
                      _args71641_)))
          (declare (not safe))
          (list->hash-table! _lst71640_ __tmp74361))))
    (define list->hash-table-string
      (lambda (_lst71637_ . _args71638_)
        (let ((__tmp74362
               (apply make-hash-table-string
                      'size:
                      (length _lst71637_)
                      _args71638_)))
          (declare (not safe))
          (list->hash-table! _lst71637_ __tmp74362))))
    (define list->hash-table-immediate
      (lambda (_lst71634_ . _args71635_)
        (let ((__tmp74363
               (apply make-hash-table-immediate
                      'size:
                      (length _lst71634_)
                      _args71635_)))
          (declare (not safe))
          (list->hash-table! _lst71634_ __tmp74363))))
    (define list->hash-table!
      (lambda (_lst71601_ _h71602_)
        (for-each
         (lambda (_el71604_)
           (let* ((_el7160571612_ _el71604_)
                  (_E7160771616_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el7160571612_))))
                  (_K7160871622_
                   (lambda (_v71619_ _k71620_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h71602_ _k71620_ _v71619_)))))
             (if (let () (declare (not safe)) (##pair? _el7160571612_))
                 (let ((_hd7160971625_
                        (let () (declare (not safe)) (##car _el7160571612_)))
                       (_tl7161071627_
                        (let () (declare (not safe)) (##cdr _el7160571612_))))
                   (let* ((_k71630_ _hd7160971625_) (_v71632_ _tl7161071627_))
                     (declare (not safe))
                     (_K7160871622_ _v71632_ _k71630_)))
                 (let () (declare (not safe)) (_E7160771616_)))))
         _lst71601_)
        _h71602_))
    (define plist->hash-table
      (lambda (_lst71598_ . _args71599_)
        (let ((__tmp74364
               (apply make-hash-table 'size: (length _lst71598_) _args71599_)))
          (declare (not safe))
          (plist->hash-table! _lst71598_ __tmp74364))))
    (define plist->hash-table-eq
      (lambda (_lst71595_ . _args71596_)
        (let ((__tmp74365
               (apply make-hash-table-eq
                      'size:
                      (length _lst71595_)
                      _args71596_)))
          (declare (not safe))
          (plist->hash-table! _lst71595_ __tmp74365))))
    (define plist->hash-table-eqv
      (lambda (_lst71592_ . _args71593_)
        (let ((__tmp74366
               (apply make-hash-table-eqv
                      'size:
                      (length _lst71592_)
                      _args71593_)))
          (declare (not safe))
          (plist->hash-table! _lst71592_ __tmp74366))))
    (define plist->hash-table-symbolic
      (lambda (_lst71589_ . _args71590_)
        (let ((__tmp74367
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst71589_)
                      _args71590_)))
          (declare (not safe))
          (plist->hash-table! _lst71589_ __tmp74367))))
    (define plist->hash-table-string
      (lambda (_lst71586_ . _args71587_)
        (let ((__tmp74368
               (apply make-hash-table-string
                      'size:
                      (length _lst71586_)
                      _args71587_)))
          (declare (not safe))
          (plist->hash-table! _lst71586_ __tmp74368))))
    (define plist->hash-table-immediate
      (lambda (_lst71583_ . _args71584_)
        (let ((__tmp74369
               (apply make-hash-table-immediate
                      'size:
                      (length _lst71583_)
                      _args71584_)))
          (declare (not safe))
          (plist->hash-table! _lst71583_ __tmp74369))))
    (define plist->hash-table!
      (lambda (_lst71523_ _h71524_)
        (let _loop71526_ ((_rest71528_ _lst71523_))
          (let* ((_rest7152971541_ _rest71528_)
                 (_else7153271549_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst71523_)))))
            (let ((_K7153571564_
                   (lambda (_rest71560_ _val71561_ _key71562_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h71524_ _key71562_ _val71561_))
                     (let () (declare (not safe)) (_loop71526_ _rest71560_))))
                  (_K7153471554_ (lambda () _h71524_)))
              (let ((_try-match7153171557_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest7152971541_))
                           (let () (declare (not safe)) (_K7153471554_))
                           (let () (declare (not safe)) (_else7153271549_))))))
                (if (let () (declare (not safe)) (##pair? _rest7152971541_))
                    (let ((_tl7153771569_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest7152971541_)))
                          (_hd7153671567_
                           (let ()
                             (declare (not safe))
                             (##car _rest7152971541_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl7153771569_))
                          (let ((_tl7153971576_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl7153771569_)))
                                (_hd7153871574_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl7153771569_))))
                            (let ((_key71572_ _hd7153671567_)
                                  (_val71579_ _hd7153871574_)
                                  (_rest71581_ _tl7153971576_))
                              (let ()
                                (declare (not safe))
                                (_K7153571564_
                                 _rest71581_
                                 _val71579_
                                 _key71572_))))
                          (let () (declare (not safe)) (_else7153271549_))))
                    (let ()
                      (declare (not safe))
                      (_try-match7153171557_)))))))))
    (define hash-length
      (lambda (_h71519_)
        (let ((_h71521_
               (if (and (let () (declare (not safe)) (##structure? _h71519_))
                        (let ((__tmp74370
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71519_))))
                          (declare (not safe))
                          (eq? __tmp74370 HashTable::t)))
                   _h71519_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71519_)))))
          (declare (not safe))
          (&HashTable-length _h71521_))))
    (define &hash-length
      (lambda (_h71517_)
        (let () (declare (not safe)) (&HashTable-length _h71517_))))
    (define hash-ref__%
      (lambda (_h71499_ _key71500_ _default71501_)
        (let ((_h71503_
               (if (and (let () (declare (not safe)) (##structure? _h71499_))
                        (let ((__tmp74371
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71499_))))
                          (declare (not safe))
                          (eq? __tmp74371 HashTable::t)))
                   _h71499_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71499_)))))
          (declare (not safe))
          (&hash-ref__% _h71503_ _key71500_ _default71501_))))
    (define hash-ref__0
      (lambda (_h71508_ _key71509_)
        (let ((_default71511_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h71508_ _key71509_ _default71511_))))
    (define hash-ref
      (lambda _g74373_
        (let ((_g74372_ (let () (declare (not safe)) (##length _g74373_))))
          (cond ((let () (declare (not safe)) (##fx= _g74372_ 2))
                 (apply (lambda (_h71508_ _key71509_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h71508_ _key71509_)))
                        _g74373_))
                ((let () (declare (not safe)) (##fx= _g74372_ 3))
                 (apply (lambda (_h71513_ _key71514_ _default71515_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h71513_ _key71514_ _default71515_)))
                        _g74373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g74373_))))))
    (define &hash-ref__%
      (lambda (_h71480_ _key71481_ _default71482_)
        (let ((_result71484_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h71480_ _key71481_ _default71482_))))
          (if (let ((__tmp74374 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result71484_ __tmp74374))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h71480_
                 'key:
                 _key71481_))
              _result71484_))))
    (define &hash-ref__0
      (lambda (_h71489_ _key71490_)
        (let ((_default71492_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h71489_ _key71490_ _default71492_))))
    (define &hash-ref
      (lambda _g74376_
        (let ((_g74375_ (let () (declare (not safe)) (##length _g74376_))))
          (cond ((let () (declare (not safe)) (##fx= _g74375_ 2))
                 (apply (lambda (_h71489_ _key71490_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h71489_ _key71490_)))
                        _g74376_))
                ((let () (declare (not safe)) (##fx= _g74375_ 3))
                 (apply (lambda (_h71494_ _key71495_ _default71496_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h71494_ _key71495_ _default71496_)))
                        _g74376_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g74376_))))))
    (define hash-get
      (lambda (_h71474_ _key71475_)
        (let ((_h71477_
               (if (and (let () (declare (not safe)) (##structure? _h71474_))
                        (let ((__tmp74377
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71474_))))
                          (declare (not safe))
                          (eq? __tmp74377 HashTable::t)))
                   _h71474_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71474_)))))
          (declare (not safe))
          (&hash-get _h71477_ _key71475_))))
    (define &hash-get
      (lambda (_h71471_ _key71472_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h71471_ _key71472_ '#f))))
    (define hash-put!
      (lambda (_h71465_ _key71466_ _value71467_)
        (let ((_h71469_
               (if (and (let () (declare (not safe)) (##structure? _h71465_))
                        (let ((__tmp74378
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71465_))))
                          (declare (not safe))
                          (eq? __tmp74378 HashTable::t)))
                   _h71465_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71465_)))))
          (declare (not safe))
          (&HashTable-set! _h71469_ _key71466_ _value71467_))))
    (define &hash-put!
      (lambda (_h71461_ _key71462_ _value71463_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h71461_ _key71462_ _value71463_))))
    (define hash-update!__%
      (lambda (_h71440_ _key71441_ _update71442_ _default71443_)
        (let ((_h71445_
               (if (and (let () (declare (not safe)) (##structure? _h71440_))
                        (let ((__tmp74379
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71440_))))
                          (declare (not safe))
                          (eq? __tmp74379 HashTable::t)))
                   _h71440_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71440_)))))
          (declare (not safe))
          (&HashTable-update!
           _h71445_
           _key71441_
           _update71442_
           _default71443_))))
    (define hash-update!__0
      (lambda (_h71450_ _key71451_ _update71452_)
        (let ((_default71454_ '#!void))
          (declare (not safe))
          (hash-update!__% _h71450_ _key71451_ _update71452_ _default71454_))))
    (define hash-update!
      (lambda _g74381_
        (let ((_g74380_ (let () (declare (not safe)) (##length _g74381_))))
          (cond ((let () (declare (not safe)) (##fx= _g74380_ 3))
                 (apply (lambda (_h71450_ _key71451_ _update71452_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h71450_
                             _key71451_
                             _update71452_)))
                        _g74381_))
                ((let () (declare (not safe)) (##fx= _g74380_ 4))
                 (apply (lambda (_h71456_
                                 _key71457_
                                 _update71458_
                                 _default71459_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h71456_
                             _key71457_
                             _update71458_
                             _default71459_)))
                        _g74381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g74381_))))))
    (define &hash-update!__%
      (lambda (_h71420_ _key71421_ _update71422_ _default71423_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h71420_
           _key71421_
           _update71422_
           _default71423_))))
    (define &hash-update!__0
      (lambda (_h71428_ _key71429_ _update71430_)
        (let ((_default71432_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h71428_
           _key71429_
           _update71430_
           _default71432_))))
    (define &hash-update!
      (lambda _g74383_
        (let ((_g74382_ (let () (declare (not safe)) (##length _g74383_))))
          (cond ((let () (declare (not safe)) (##fx= _g74382_ 3))
                 (apply (lambda (_h71428_ _key71429_ _update71430_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h71428_
                             _key71429_
                             _update71430_)))
                        _g74383_))
                ((let () (declare (not safe)) (##fx= _g74382_ 4))
                 (apply (lambda (_h71434_
                                 _key71435_
                                 _update71436_
                                 _default71437_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h71434_
                             _key71435_
                             _update71436_
                             _default71437_)))
                        _g74383_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g74383_))))))
    (define hash-remove!
      (lambda (_h71414_ _key71415_)
        (let ((_h71417_
               (if (and (let () (declare (not safe)) (##structure? _h71414_))
                        (let ((__tmp74384
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71414_))))
                          (declare (not safe))
                          (eq? __tmp74384 HashTable::t)))
                   _h71414_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71414_)))))
          (declare (not safe))
          (&HashTable-delete! _h71417_ _key71415_))))
    (define &hash-remove!
      (lambda (_h71411_ _key71412_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h71411_ _key71412_))))
    (define hash-key?
      (lambda (_h71406_ _k71407_)
        (let ((_h71409_
               (if (and (let () (declare (not safe)) (##structure? _h71406_))
                        (let ((__tmp74385
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71406_))))
                          (declare (not safe))
                          (eq? __tmp74385 HashTable::t)))
                   _h71406_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71406_)))))
          (declare (not safe))
          (&hash-key? _h71409_ _k71407_))))
    (define &hash-key?
      (lambda (_h71403_ _k71404_)
        (let ((__tmp74386
               (let ((__tmp74387
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h71403_ _k71404_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp74387 absent-value))))
          (declare (not safe))
          (not __tmp74386))))
    (define hash->list
      (lambda (_h71399_)
        (let ((_h71401_
               (if (and (let () (declare (not safe)) (##structure? _h71399_))
                        (let ((__tmp74388
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71399_))))
                          (declare (not safe))
                          (eq? __tmp74388 HashTable::t)))
                   _h71399_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71399_)))))
          (declare (not safe))
          (&hash->list _h71401_))))
    (define &hash->list
      (lambda (_h71392_)
        (let ((_lst71394_ '()))
          (let ((__tmp74389
                 (lambda (_k71396_ _v71397_)
                   (set! _lst71394_
                         (let ((__tmp74390
                                (let ()
                                  (declare (not safe))
                                  (cons _k71396_ _v71397_))))
                           (declare (not safe))
                           (cons __tmp74390 _lst71394_))))))
            (declare (not safe))
            (&HashTable-for-each _h71392_ __tmp74389))
          _lst71394_)))
    (define hash->plist
      (lambda (_h71388_)
        (let ((_h71390_
               (if (and (let () (declare (not safe)) (##structure? _h71388_))
                        (let ((__tmp74391
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71388_))))
                          (declare (not safe))
                          (eq? __tmp74391 HashTable::t)))
                   _h71388_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71388_)))))
          (declare (not safe))
          (&hash->plist _h71390_))))
    (define &hash->plist
      (lambda (_h71381_)
        (let ((_lst71383_ '()))
          (let ((__tmp74392
                 (lambda (_k71385_ _v71386_)
                   (set! _lst71383_
                         (let ((__tmp74393
                                (let ()
                                  (declare (not safe))
                                  (cons _v71386_ _lst71383_))))
                           (declare (not safe))
                           (cons _k71385_ __tmp74393))))))
            (declare (not safe))
            (&HashTable-for-each _h71381_ __tmp74392))
          _lst71383_)))
    (define hash-for-each
      (lambda (_proc71378_ _h71379_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h71379_ _proc71378_))))
    (define hash-map
      (lambda (_proc71370_ _h71371_)
        (let ((_result71373_ '()))
          (let ((__tmp74394
                 (lambda (_k71375_ _v71376_)
                   (set! _result71373_
                         (let ((__tmp74395 (_proc71370_ _k71375_ _v71376_)))
                           (declare (not safe))
                           (cons __tmp74395 _result71373_))))))
            (declare (not safe))
            (HashTable-for-each _h71371_ __tmp74394))
          _result71373_)))
    (define hash-fold
      (lambda (_proc71361_ _iv71362_ _h71363_)
        (let ((_result71365_ _iv71362_))
          (let ((__tmp74396
                 (lambda (_k71367_ _v71368_)
                   (set! _result71365_
                         (_proc71361_ _k71367_ _v71368_ _result71365_)))))
            (declare (not safe))
            (HashTable-for-each _h71363_ __tmp74396))
          _result71365_)))
    (define hash-find__%
      (lambda (_proc71337_ _h71338_ _default-value71339_)
        (call/cc (lambda (_return71341_)
                   (let ((__tmp74397
                          (lambda (_k71343_ _v71344_)
                            (let ((_$e71346_ (_proc71337_ _k71343_ _v71344_)))
                              (if _$e71346_
                                  (_return71341_ _$e71346_)
                                  '#!void)))))
                     (declare (not safe))
                     (HashTable-for-each _h71338_ __tmp74397))
                   _default-value71339_))))
    (define hash-find__0
      (lambda (_proc71352_ _h71353_)
        (let ((_default-value71355_ '#f))
          (declare (not safe))
          (hash-find__% _proc71352_ _h71353_ _default-value71355_))))
    (define hash-find
      (lambda _g74399_
        (let ((_g74398_ (let () (declare (not safe)) (##length _g74399_))))
          (cond ((let () (declare (not safe)) (##fx= _g74398_ 2))
                 (apply (lambda (_proc71352_ _h71353_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc71352_ _h71353_)))
                        _g74399_))
                ((let () (declare (not safe)) (##fx= _g74398_ 3))
                 (apply (lambda (_proc71357_ _h71358_ _default-value71359_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc71357_
                             _h71358_
                             _default-value71359_)))
                        _g74399_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g74399_))))))
    (define hash-keys
      (lambda (_h71332_)
        (let ((_h71334_
               (if (and (let () (declare (not safe)) (##structure? _h71332_))
                        (let ((__tmp74400
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71332_))))
                          (declare (not safe))
                          (eq? __tmp74400 HashTable::t)))
                   _h71332_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71332_)))))
          (declare (not safe))
          (&hash-keys _h71334_))))
    (define &hash-keys
      (lambda (_h71325_)
        (let ((_result71327_ '()))
          (let ((__tmp74401
                 (lambda (_k71329_ _v71330_)
                   (set! _result71327_
                         (let ()
                           (declare (not safe))
                           (cons _k71329_ _result71327_))))))
            (declare (not safe))
            (&HashTable-for-each _h71325_ __tmp74401))
          _result71327_)))
    (define hash-values
      (lambda (_h71321_)
        (let ((_h71323_
               (if (and (let () (declare (not safe)) (##structure? _h71321_))
                        (let ((__tmp74402
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71321_))))
                          (declare (not safe))
                          (eq? __tmp74402 HashTable::t)))
                   _h71321_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71321_)))))
          (declare (not safe))
          (&hash-values _h71323_))))
    (define &hash-values
      (lambda (_h71314_)
        (let ((_result71316_ '()))
          (let ((__tmp74403
                 (lambda (_k71318_ _v71319_)
                   (set! _result71316_
                         (let ()
                           (declare (not safe))
                           (cons _v71319_ _result71316_))))))
            (declare (not safe))
            (&HashTable-for-each _h71314_ __tmp74403))
          _result71316_)))
    (define hash-copy
      (lambda (_h71310_)
        (let ((_h71312_
               (if (and (let () (declare (not safe)) (##structure? _h71310_))
                        (let ((__tmp74404
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71310_))))
                          (declare (not safe))
                          (eq? __tmp74404 HashTable::t)))
                   _h71310_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71310_)))))
          (declare (not safe))
          (&HashTable-copy _h71312_))))
    (define &hash-copy
      (lambda (_h71308_)
        (let () (declare (not safe)) (&HashTable-copy _h71308_))))
    (define hash-merge
      (lambda (_h71303_ . _rest71304_)
        (let ((_copy71306_ (let () (declare (not safe)) (hash-copy _h71303_))))
          (apply hash-merge! _copy71306_ _rest71304_)
          _copy71306_)))
    (define hash-merge!
      (lambda (_h71293_ . _rest71294_)
        (let ((_h71296_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h71293_))))
          (for-each
           (lambda (_hr71298_)
             (let ((__tmp74405
                    (lambda (_k71300_ _v71301_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h71296_ _k71300_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h71296_ _k71300_ _v71301_))))))
               (declare (not safe))
               (hash-for-each __tmp74405 _hr71298_)))
           _rest71294_)
          _h71296_)))))
