(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1711709196)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp73209 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp73209
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args73192_
        (apply make-instance UnboundKeyError::t _$args73192_)))
    (define UnboundKeyError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor UnboundKeyError::t 'message)))
    (define UnboundKeyError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor UnboundKeyError::t 'irritants)))
    (define UnboundKeyError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor UnboundKeyError::t 'where)))
    (define UnboundKeyError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor UnboundKeyError::t 'continuation)))
    (define UnboundKeyError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator UnboundKeyError::t 'message)))
    (define UnboundKeyError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator UnboundKeyError::t 'irritants)))
    (define UnboundKeyError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator UnboundKeyError::t 'where)))
    (define UnboundKeyError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator UnboundKeyError::t 'continuation)))
    (define &UnboundKeyError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor UnboundKeyError::t 'message)))
    (define &UnboundKeyError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor UnboundKeyError::t 'irritants)))
    (define &UnboundKeyError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor UnboundKeyError::t 'where)))
    (define &UnboundKeyError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         UnboundKeyError::t
         'continuation)))
    (define &UnboundKeyError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator UnboundKeyError::t 'message)))
    (define &UnboundKeyError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator UnboundKeyError::t 'irritants)))
    (define &UnboundKeyError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator UnboundKeyError::t 'where)))
    (define &UnboundKeyError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         UnboundKeyError::t
         'continuation)))
    (define UnboundKeyError:::init! Error:::init!)
    (let ()
      (declare (not safe))
      (__bind-method! UnboundKeyError::t ':init! UnboundKeyError:::init! '#f))
    (define raise-unbound-key-error
      (lambda (_where73066_ _message73067_ . _irritants73068_)
        (let ((__tmp73210
               (let ((__obj73206
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj73206
                  _message73067_
                  'where:
                  _where73066_
                  'irritants:
                  _irritants73068_)
                 __obj73206)))
          (declare (not safe))
          (raise __tmp73210))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp73212 (list interface-instance::t))
            (__tmp73211
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp73212
         '(ref set! update! delete! for-each length copy clear!)
         __tmp73211
         '#f)))
    (define HashTable?
      (let () (declare (not safe)) (__make-class-predicate HashTable::t)))
    (define HashTable-ref@
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor HashTable::t 'ref)))
    (define HashTable-set@
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor HashTable::t 'set!)))
    (define HashTable-update@
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor HashTable::t 'update!)))
    (define HashTable-del@
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor HashTable::t 'delete!)))
    (define HashTable-each@
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor HashTable::t 'for-each)))
    (define HashTable-length@
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor HashTable::t 'length)))
    (define HashTable-copy@
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor HashTable::t 'copy)))
    (define HashTable-clear@
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor HashTable::t 'clear!)))
    (define HashTable-ref@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator HashTable::t 'ref)))
    (define HashTable-set@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator HashTable::t 'set!)))
    (define HashTable-update@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator HashTable::t 'update!)))
    (define HashTable-del@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator HashTable::t 'delete!)))
    (define HashTable-each@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator HashTable::t 'for-each)))
    (define HashTable-length@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator HashTable::t 'length)))
    (define HashTable-copy@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator HashTable::t 'copy)))
    (define HashTable-clear@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator HashTable::t 'clear!)))
    (define &HashTable-ref@
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor HashTable::t 'ref)))
    (define &HashTable-set@
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor HashTable::t 'set!)))
    (define &HashTable-update@
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor HashTable::t 'update!)))
    (define &HashTable-del@
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor HashTable::t 'delete!)))
    (define &HashTable-each@
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor HashTable::t 'for-each)))
    (define &HashTable-length@
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor HashTable::t 'length)))
    (define &HashTable-copy@
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor HashTable::t 'copy)))
    (define &HashTable-clear@
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor HashTable::t 'clear!)))
    (define &HashTable-ref@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator HashTable::t 'ref)))
    (define &HashTable-set@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator HashTable::t 'set!)))
    (define &HashTable-update@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator HashTable::t 'update!)))
    (define &HashTable-del@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator HashTable::t 'delete!)))
    (define &HashTable-each@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator HashTable::t 'for-each)))
    (define &HashTable-length@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator HashTable::t 'length)))
    (define &HashTable-copy@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator HashTable::t 'copy)))
    (define &HashTable-clear@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator HashTable::t 'clear!)))
    (define HashTable::interface
      (let ()
        (declare (not safe))
        (##structure
         interface-descriptor::t
         HashTable::t
         '(ref set! update! delete! for-each length copy clear!))))
    (define HashTableLock::t
      (let ((__tmp73214 (list interface-instance::t))
            (__tmp73213
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp73214
         '(begin-read! end-read! begin-write! end-write!)
         __tmp73213
         '#f)))
    (define HashTableLock?
      (let () (declare (not safe)) (__make-class-predicate HashTableLock::t)))
    (define HashTableLock-begin-read@
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor HashTableLock::t 'begin-read!)))
    (define HashTableLock-end-read@
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor HashTableLock::t 'end-read!)))
    (define HashTableLock-begin-write@
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor HashTableLock::t 'begin-write!)))
    (define HashTableLock-end-write@
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor HashTableLock::t 'end-write!)))
    (define HashTableLock-begin-read@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator HashTableLock::t 'begin-read!)))
    (define HashTableLock-end-read@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator HashTableLock::t 'end-read!)))
    (define HashTableLock-begin-write@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator HashTableLock::t 'begin-write!)))
    (define HashTableLock-end-write@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator HashTableLock::t 'end-write!)))
    (define &HashTableLock-begin-read@
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor HashTableLock::t 'begin-read!)))
    (define &HashTableLock-end-read@
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor HashTableLock::t 'end-read!)))
    (define &HashTableLock-begin-write@
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor HashTableLock::t 'begin-write!)))
    (define &HashTableLock-end-write@
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor HashTableLock::t 'end-write!)))
    (define &HashTableLock-begin-read@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator HashTableLock::t 'begin-read!)))
    (define &HashTableLock-end-read@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator HashTableLock::t 'end-read!)))
    (define &HashTableLock-begin-write@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator HashTableLock::t 'begin-write!)))
    (define &HashTableLock-end-write@-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator HashTableLock::t 'end-write!)))
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
      (lambda (_table73059_ _key73060_ _update73061_ _default73062_)
        (let ((_result73064_
               (table-ref _table73059_ _key73060_ _default73062_)))
          (table-set!
           _table73059_
           _key73060_
           (_update73061_ _default73062_)))))
    (define gambit-table-for-each
      (lambda (_table73056_ _proc73057_)
        (table-for-each _proc73057_ _table73056_)))
    (define gambit-table-clear!
      (lambda (_table73054_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table73054_ '0 '5 '#f '#f))))
    (let ((__tmp73215 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73215 'ref table-ref))
    (let ((__tmp73216 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73216 'set! table-set!))
    (let ((__tmp73217 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73217 'update! gambit-table-update!))
    (let ((__tmp73218 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73218 'delete! table-set!))
    (let ((__tmp73219 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73219 'for-each gambit-table-for-each))
    (let ((__tmp73220 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73220 'length table-length))
    (let ((__tmp73221 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73221 'copy table-copy))
    (let ((__tmp73222 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73222 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots73036_ '(table count free hash test seed))
             (_slot-vector73038_ (list->vector (cons '#f _slots73036_)))
             (_slot-table73045_
              (let ((_slot-table73040_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp73225
                       (lambda (_slot73042_ _field73043_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _slot-table73040_
                            _slot73042_
                            _field73043_))
                         (let ((__tmp73226
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _slot73042_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _slot-table73040_
                            __tmp73226
                            _field73043_))))
                      (__tmp73223
                       (let ((__tmp73224
                              (let ()
                                (declare (not safe))
                                (##length _slots73036_))))
                         (declare (not safe))
                         (##iota __tmp73224 '1))))
                  (declare (not safe))
                  (##for-each __tmp73225 _slots73036_ __tmp73223))
                _slot-table73040_))
             (_flags73047_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields73049_ '#())
             (_properties73051_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _slots73036_)))
                    (cons (cons 'struct: '#t) '()))))
        (let ((__tmp73227 (cons object::t (cons t::t '()))))
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags73047_
           __table::t
           _fields73049_
           __tmp73227
           _slot-vector73038_
           _slot-table73045_
           _properties73051_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_slots73018_ '(gcht immediate))
             (_slot-vector73020_ (list->vector (cons '#f _slots73018_)))
             (_slot-table73027_
              (let ((_slot-table73022_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp73230
                       (lambda (_slot73024_ _field73025_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _slot-table73022_
                            _slot73024_
                            _field73025_))
                         (let ((__tmp73231
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _slot73024_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _slot-table73022_
                            __tmp73231
                            _field73025_))))
                      (__tmp73228
                       (let ((__tmp73229
                              (let ()
                                (declare (not safe))
                                (##length _slots73018_))))
                         (declare (not safe))
                         (##iota __tmp73229 '1))))
                  (declare (not safe))
                  (##for-each __tmp73230 _slots73018_ __tmp73228))
                _slot-table73022_))
             (_flags73029_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields73031_ '#())
             (_properties73033_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _slots73018_)))
                    (cons (cons 'struct: '#t) '()))))
        (let ((__tmp73232 (cons object::t (cons t::t '()))))
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'hash-table
           _flags73029_
           __gc-table::t
           _fields73031_
           __tmp73232
           _slot-vector73020_
           _slot-table73027_
           _properties73033_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp73234 (list))
            (__tmp73233
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp73234
         '(table lock)
         __tmp73233
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args73015_
        (apply make-instance locked-hash-table::t _$args73015_)))
    (define locked-hash-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor locked-hash-table::t 'table)))
    (define locked-hash-table-lock
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor locked-hash-table::t 'lock)))
    (define locked-hash-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator locked-hash-table::t 'table)))
    (define locked-hash-table-lock-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator locked-hash-table::t 'lock)))
    (define &locked-hash-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor locked-hash-table::t 'table)))
    (define &locked-hash-table-lock
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor locked-hash-table::t 'lock)))
    (define &locked-hash-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator locked-hash-table::t 'table)))
    (define &locked-hash-table-lock-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator locked-hash-table::t 'lock)))
    (define checked-hash-table::t
      (let ((__tmp73236 (list))
            (__tmp73235
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp73236
         '(table key-check)
         __tmp73235
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args73012_
        (apply make-instance checked-hash-table::t _$args73012_)))
    (define checked-hash-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor checked-hash-table::t 'table)))
    (define checked-hash-table-key-check
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor checked-hash-table::t 'key-check)))
    (define checked-hash-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator checked-hash-table::t 'table)))
    (define checked-hash-table-key-check-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator checked-hash-table::t 'key-check)))
    (define &checked-hash-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor checked-hash-table::t 'table)))
    (define &checked-hash-table-key-check
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         checked-hash-table::t
         'key-check)))
    (define &checked-hash-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator checked-hash-table::t 'table)))
    (define &checked-hash-table-key-check-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         checked-hash-table::t
         'key-check)))
    (define eq-hash-table::t
      (let ((__tmp73238 (list hash-table::t))
            (__tmp73237 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp73238
         '()
         __tmp73237
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args73009_
        (apply make-instance eq-hash-table::t _$args73009_)))
    (define eqv-hash-table::t
      (let ((__tmp73240 (list hash-table::t))
            (__tmp73239 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp73240
         '()
         __tmp73239
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args73006_
        (apply make-instance eqv-hash-table::t _$args73006_)))
    (define symbol-hash-table::t
      (let ((__tmp73242 (list hash-table::t))
            (__tmp73241 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp73242
         '()
         __tmp73241
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args73003_
        (apply make-instance symbol-hash-table::t _$args73003_)))
    (define string-hash-table::t
      (let ((__tmp73244 (list hash-table::t))
            (__tmp73243 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp73244
         '()
         __tmp73243
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args73000_
        (apply make-instance string-hash-table::t _$args73000_)))
    (define immediate-hash-table::t
      (let ((__tmp73246 (list hash-table::t))
            (__tmp73245 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp73246
         '()
         __tmp73245
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _$args72997_
        (apply make-instance immediate-hash-table::t _$args72997_)))
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
      (lambda (_obj72995_)
        (if (let () (declare (not safe)) (##structure? _obj72995_))
            (eq? (let () (declare (not safe)) (##structure-type _obj72995_))
                 HashTable::t)
            '#f)))
    (define is-hash-table?
      (lambda (_obj72990_)
        (let ((_$e72992_
               (if (let () (declare (not safe)) (##structure? _obj72990_))
                   (eq? (let ()
                          (declare (not safe))
                          (##structure-type _obj72990_))
                        HashTable::t)
                   '#f)))
          (if _$e72992_
              _$e72992_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj72990_))))))
    (define HashTable-ref
      (lambda (_h72984_ _key72985_ _default72986_)
        (let ((_h72988_
               (if (and (let () (declare (not safe)) (##structure? _h72984_))
                        (eq? (let ()
                               (declare (not safe))
                               (##structure-type _h72984_))
                             HashTable::t))
                   _h72984_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72984_)))))
          (declare (not safe))
          (&HashTable-ref _h72988_ _key72985_ _default72986_))))
    (define &HashTable-ref
      (lambda (_h72979_ _key72980_ _default72981_)
        (declare (not safe))
        ((##unchecked-structure-ref _h72979_ '2 '#f '#f)
         (##unchecked-structure-ref _h72979_ '1 '#f '#f)
         _key72980_
         _default72981_)))
    (define HashTable-set!
      (lambda (_h72973_ _key72974_ _value72975_)
        (let ((_h72977_
               (if (and (let () (declare (not safe)) (##structure? _h72973_))
                        (eq? (let ()
                               (declare (not safe))
                               (##structure-type _h72973_))
                             HashTable::t))
                   _h72973_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72973_)))))
          (declare (not safe))
          (&HashTable-set! _h72977_ _key72974_ _value72975_))))
    (define &HashTable-set!
      (lambda (_h72968_ _key72969_ _value72970_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72968_ '3 '#f '#f)
           (##unchecked-structure-ref _h72968_ '1 '#f '#f)
           _key72969_
           _value72970_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h72961_ _key72962_ _update72963_ _default72964_)
        (let ((_h72966_
               (if (and (let () (declare (not safe)) (##structure? _h72961_))
                        (eq? (let ()
                               (declare (not safe))
                               (##structure-type _h72961_))
                             HashTable::t))
                   _h72961_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72961_)))))
          (declare (not safe))
          (&HashTable-update!
           _h72966_
           _key72962_
           _update72963_
           _default72964_))))
    (define &HashTable-update!
      (lambda (_h72955_ _key72956_ _update72957_ _default72958_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72955_ '4 '#f '#f)
           (##unchecked-structure-ref _h72955_ '1 '#f '#f)
           _key72956_
           _update72957_
           _default72958_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h72950_ _key72951_)
        (let ((_h72953_
               (if (and (let () (declare (not safe)) (##structure? _h72950_))
                        (eq? (let ()
                               (declare (not safe))
                               (##structure-type _h72950_))
                             HashTable::t))
                   _h72950_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72950_)))))
          (declare (not safe))
          (&HashTable-delete! _h72953_ _key72951_))))
    (define &HashTable-delete!
      (lambda (_h72946_ _key72947_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72946_ '5 '#f '#f)
           (##unchecked-structure-ref _h72946_ '1 '#f '#f)
           _key72947_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h72941_ _proc72942_)
        (let ((_h72944_
               (if (and (let () (declare (not safe)) (##structure? _h72941_))
                        (eq? (let ()
                               (declare (not safe))
                               (##structure-type _h72941_))
                             HashTable::t))
                   _h72941_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72941_)))))
          (declare (not safe))
          (&HashTable-for-each _h72944_ _proc72942_))))
    (define &HashTable-for-each
      (lambda (_h72937_ _proc72938_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72937_ '6 '#f '#f)
           (##unchecked-structure-ref _h72937_ '1 '#f '#f)
           _proc72938_)
          '#!void)))
    (define HashTable-length
      (lambda (_h72933_)
        (let ((_h72935_
               (if (and (let () (declare (not safe)) (##structure? _h72933_))
                        (eq? (let ()
                               (declare (not safe))
                               (##structure-type _h72933_))
                             HashTable::t))
                   _h72933_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72933_)))))
          (declare (not safe))
          (&HashTable-length _h72935_))))
    (define &HashTable-length
      (lambda (_h72930_)
        (declare (not safe))
        ((##unchecked-structure-ref _h72930_ '7 '#f '#f)
         (##unchecked-structure-ref _h72930_ '1 '#f '#f))))
    (define HashTable-copy
      (lambda (_h72926_)
        (let ((_h72928_
               (if (and (let () (declare (not safe)) (##structure? _h72926_))
                        (eq? (let ()
                               (declare (not safe))
                               (##structure-type _h72926_))
                             HashTable::t))
                   _h72926_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72926_)))))
          (declare (not safe))
          (&HashTable-copy _h72928_))))
    (define &HashTable-copy
      (lambda (_h72923_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h72923_ '8 '#f '#f)
               (##unchecked-structure-ref _h72923_ '1 '#f '#f)))))
    (define HashTable-clear!
      (lambda (_h72919_)
        (let ((_h72921_
               (if (and (let () (declare (not safe)) (##structure? _h72919_))
                        (eq? (let ()
                               (declare (not safe))
                               (##structure-type _h72919_))
                             HashTable::t))
                   _h72919_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72919_)))))
          (declare (not safe))
          (&HashTable-clear! _h72921_))))
    (define &HashTable-clear!
      (lambda (_h72916_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72916_ '9 '#f '#f)
           (##unchecked-structure-ref _h72916_ '1 '#f '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl72913_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72913_ '2 '#f '#f)
         (##unchecked-structure-ref _hl72913_ '1 '#f '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl72910_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72910_ '3 '#f '#f)
         (##unchecked-structure-ref _hl72910_ '1 '#f '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl72907_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72907_ '4 '#f '#f)
         (##unchecked-structure-ref _hl72907_ '1 '#f '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl72904_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72904_ '5 '#f '#f)
         (##unchecked-structure-ref _hl72904_ '1 '#f '#f))))
    (define _locked-hash-table::ref69914_
      (lambda (_self72891_ _key72893_ _default72894_)
        (let ((_h72896_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self72891_ '1 '#f '#f)))
              (_l72898_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self72891_ '2 '#f '#f))))
          (let ((__tmp73249
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (&HashTableLock-begin-read! _l72898_))))
                (__tmp73248
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (&HashTable-ref _h72896_ _key72893_ _default72894_))))
                (__tmp73247
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (&HashTableLock-end-read! _l72898_)))))
            (declare (not safe))
            (##dynamic-wind __tmp73249 __tmp73248 __tmp73247)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'ref
       _locked-hash-table::ref69914_
       '#f))
    (define _locked-hash-table::set!69916_
      (lambda (_self72755_ _key72757_ _value72758_)
        (let ((_h72760_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self72755_ '1 '#f '#f)))
              (_l72762_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self72755_ '2 '#f '#f))))
          (let ((__tmp73252
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (&HashTableLock-begin-write! _l72762_))))
                (__tmp73251
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (&HashTable-set! _h72760_ _key72757_ _value72758_))))
                (__tmp73250
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (&HashTableLock-end-write! _l72762_)))))
            (declare (not safe))
            (##dynamic-wind __tmp73252 __tmp73251 __tmp73250)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'set!
       _locked-hash-table::set!69916_
       '#f))
    (define _locked-hash-table::update!69918_
      (lambda (_self72618_ _key72620_ _update72621_ _default72622_)
        (let ((_h72624_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self72618_ '1 '#f '#f)))
              (_l72626_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self72618_ '2 '#f '#f))))
          (let ((__tmp73255
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (&HashTableLock-begin-write! _l72626_))))
                (__tmp73254
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (&HashTable-update!
                      _h72624_
                      _key72620_
                      _update72621_
                      _default72622_))))
                (__tmp73253
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (&HashTableLock-end-write! _l72626_)))))
            (declare (not safe))
            (##dynamic-wind __tmp73255 __tmp73254 __tmp73253)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'update!
       _locked-hash-table::update!69918_
       '#f))
    (define _locked-hash-table::delete!69920_
      (lambda (_self72483_ _key72485_)
        (let ((_h72487_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self72483_ '1 '#f '#f)))
              (_l72489_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self72483_ '2 '#f '#f))))
          (let ((__tmp73258
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (&HashTableLock-begin-write! _l72489_))))
                (__tmp73257
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (&HashTable-delete! _h72487_ _key72485_))))
                (__tmp73256
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (&HashTableLock-end-write! _l72489_)))))
            (declare (not safe))
            (##dynamic-wind __tmp73258 __tmp73257 __tmp73256)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!69920_
       '#f))
    (define _locked-hash-table::for-each69922_
      (lambda (_self72348_ _proc72350_)
        (let ((_h72352_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self72348_ '1 '#f '#f)))
              (_l72354_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self72348_ '2 '#f '#f))))
          (let ((__tmp73261
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (&HashTableLock-begin-read! _l72354_))))
                (__tmp73260
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (&HashTable-for-each _h72352_ _proc72350_))))
                (__tmp73259
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (&HashTableLock-end-read! _l72354_)))))
            (declare (not safe))
            (##dynamic-wind __tmp73261 __tmp73260 __tmp73259)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each69922_
       '#f))
    (define _locked-hash-table::length69924_
      (lambda (_self72214_)
        (let ((_h72217_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self72214_ '1 '#f '#f)))
              (_l72219_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self72214_ '2 '#f '#f))))
          (let ((__tmp73264
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (&HashTableLock-begin-read! _l72219_))))
                (__tmp73263
                 (lambda ()
                   (let () (declare (not safe)) (&HashTable-length _h72217_))))
                (__tmp73262
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (&HashTableLock-end-read! _l72219_)))))
            (declare (not safe))
            (##dynamic-wind __tmp73264 __tmp73263 __tmp73262)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'length
       _locked-hash-table::length69924_
       '#f))
    (define _locked-hash-table::copy69926_
      (lambda (_self72080_)
        (let ((_h72083_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self72080_ '1 '#f '#f)))
              (_l72085_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self72080_ '2 '#f '#f))))
          (let ((__tmp73267
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (&HashTableLock-begin-read! _l72085_))))
                (__tmp73266
                 (lambda ()
                   (let () (declare (not safe)) (&HashTable-copy _h72083_))))
                (__tmp73265
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (&HashTableLock-end-read! _l72085_)))))
            (declare (not safe))
            (##dynamic-wind __tmp73267 __tmp73266 __tmp73265)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'copy
       _locked-hash-table::copy69926_
       '#f))
    (define _locked-hash-table::clear!69928_
      (lambda (_self71946_)
        (let ((_h71949_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self71946_ '1 '#f '#f)))
              (_l71951_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self71946_ '2 '#f '#f))))
          (let ((__tmp73270
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (&HashTableLock-begin-write! _l71951_))))
                (__tmp73269
                 (lambda ()
                   (let () (declare (not safe)) (&HashTable-clear! _h71949_))))
                (__tmp73268
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (&HashTableLock-end-write! _l71951_)))))
            (declare (not safe))
            (##dynamic-wind __tmp73270 __tmp73269 __tmp73268)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!69928_
       '#f))
    (let ((__tmp73271 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp73271 'begin-read! mutex-lock!))
    (let ((__tmp73272 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp73272 'end-read! mutex-unlock!))
    (let ((__tmp73273 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp73273 'begin-write! mutex-lock!))
    (let ((__tmp73274 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp73274 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref70206_
      (lambda (_self71810_ _key71811_ _default71812_)
        (let ((_h71814_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self71810_ '1 '#f '#f)))
              (_key?71816_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self71810_ '2 '#f '#f))))
          ((lambda (_g7181871820_)
             (if (_g7181871820_ _key71811_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71811_))))
           _key?71816_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h71814_ _key71811_ _default71812_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'ref
       _checked-hash-table::ref70206_
       '#f))
    (define _checked-hash-table::set!70208_
      (lambda (_self71674_ _key71675_ _value71676_)
        (let ((_h71678_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self71674_ '1 '#f '#f)))
              (_key?71680_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self71674_ '2 '#f '#f))))
          ((lambda (_g7168271684_)
             (if (_g7168271684_ _key71675_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71675_))))
           _key?71680_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h71678_ _key71675_ _value71676_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'set!
       _checked-hash-table::set!70208_
       '#f))
    (define _checked-hash-table::update!70210_
      (lambda (_self71539_ _key71540_ _update71541_ _default71542_)
        (let ((_h71544_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self71539_ '1 '#f '#f)))
              (_key?71546_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self71539_ '2 '#f '#f))))
          ((lambda (_key?71549_)
             (if (_key?71549_ _key71540_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71540_)))
             (if (let () (declare (not safe)) (procedure? _update71541_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update71541_))))
           _key?71546_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h71544_
             _key71540_
             _update71541_
             _default71542_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'update!
       _checked-hash-table::update!70210_
       '#f))
    (define _checked-hash-table::delete!70212_
      (lambda (_self71404_ _key71405_)
        (let ((_h71407_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self71404_ '1 '#f '#f)))
              (_key?71409_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self71404_ '2 '#f '#f))))
          ((lambda (_g7141171413_)
             (if (_g7141171413_ _key71405_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71405_))))
           _key?71409_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h71407_ _key71405_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!70212_
       '#f))
    (define _checked-hash-table::for-each70214_
      (lambda (_self71271_ _proc71272_)
        (let ((_h71274_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self71271_ '1 '#f '#f)))
              (_key?71276_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self71271_ '2 '#f '#f))))
          ((lambda (__71279_)
             (if (let () (declare (not safe)) (procedure? _proc71272_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc71272_))))
           _key?71276_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h71274_ _proc71272_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each70214_
       '#f))
    (define _checked-hash-table::length70216_
      (lambda (_self71141_)
        (let ((_h71143_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self71141_ '1 '#f '#f)))
              (_key?71145_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self71141_ '2 '#f '#f))))
          (let () (declare (not safe)) (&HashTable-length _h71143_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'length
       _checked-hash-table::length70216_
       '#f))
    (define _checked-hash-table::copy70218_
      (lambda (_self71011_)
        (let ((_h71013_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self71011_ '1 '#f '#f)))
              (_key?71015_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self71011_ '2 '#f '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h71013_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'copy
       _checked-hash-table::copy70218_
       '#f))
    (define _checked-hash-table::clear!70220_
      (lambda (_self70881_)
        (let ((_h70883_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self70881_ '1 '#f '#f)))
              (_key?70885_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self70881_ '2 '#f '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h70883_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!70220_
       '#f))
    (define make-generic-hash-table
      (lambda (_table70751_
               _count70752_
               _free70753_
               _hash70754_
               _test70755_
               _seed70756_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table70751_
           _count70752_
           _free70753_
           _hash70754_
           _test70755_
           _seed70756_))))
    (define make-hash-table__%
      (lambda (__70604_
               _size-hint7059470606_
               _seed7059570608_
               _test7059670610_
               _hash7059770612_
               _lock7059870614_
               _check7059970616_
               _weak-keys7060070618_
               _weak-values7060170620_)
        (let* ((_size-hint70623_
                (if (eq? _size-hint7059470606_ absent-value)
                    '#f
                    _size-hint7059470606_))
               (_seed70625_
                (if (eq? _seed7059570608_ absent-value) '#f _seed7059570608_))
               (_test70627_
                (if (eq? _test7059670610_ absent-value)
                    equal?
                    _test7059670610_))
               (_hash70629_
                (if (eq? _hash7059770612_ absent-value) '#f _hash7059770612_))
               (_lock70631_
                (if (eq? _lock7059870614_ absent-value) '#f _lock7059870614_))
               (_check70633_
                (if (eq? _check7059970616_ absent-value)
                    '#f
                    _check7059970616_))
               (_weak-keys70635_
                (if (eq? _weak-keys7060070618_ absent-value)
                    '#f
                    _weak-keys7060070618_))
               (_weak-values70637_
                (if (eq? _weak-values7060170620_ absent-value)
                    '#f
                    _weak-values7060170620_)))
          (letrec ((_table-seed70639_
                    (lambda ()
                      (if (let () (declare (not safe)) (fixnum? _seed70625_))
                          _seed70625_
                          (random-integer (macro-max-fixnum32)))))
                   (_wrap-lock70640_
                    (lambda (_ht70734_)
                      (if _lock70631_
                          (let ((__tmp73275
                                 (let ((__tmp73276
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock70631_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht70734_
                                    __tmp73276))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp73275))
                          _ht70734_)))
                   (_wrap-checked70641_
                    (lambda (_ht70731_ _implicit70732_)
                      (if _check70633_
                          (let ((__tmp73277
                                 (let ((__tmp73278
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check70633_))
                                            _check70633_
                                            _implicit70732_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht70731_
                                    __tmp73278))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp73277))
                          _ht70731_)))
                   (_make70642_
                    (lambda (_kons70719_ _key?70720_ _hash70721_ _test70722_)
                      (let* ((_size70724_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint70623_)))
                             (_table70726_
                              (let ((__tmp73279 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _size70724_ __tmp73279)))
                             (_ht70728_
                              (let ((__tmp73280
                                     (_kons70719_
                                      _table70726_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _size70724_ '2))
                                      _hash70721_
                                      _test70722_
                                      (let ()
                                        (declare (not safe))
                                        (_table-seed70639_)))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp73280))))
                        (let ((__tmp73281
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock70640_ _ht70728_))))
                          (declare (not safe))
                          (_wrap-checked70641_ __tmp73281 _key?70720_)))))
                   (_make-gc-hash-table70643_
                    (lambda ()
                      (let* ((_ht70717_
                              (let ((__tmp73282
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _size-hint70623_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp73282)))
                             (__tmp73283
                              (let ()
                                (declare (not safe))
                                (_wrap-lock70640_ _ht70717_))))
                        (declare (not safe))
                        (_wrap-checked70641_ __tmp73283 true))))
                   (_make-gambit-table70644_
                    (lambda ()
                      (let* ((_size70701_
                              (let ((_$e70698_ _size-hint70623_))
                                (if _$e70698_ _$e70698_ (macro-absent-obj))))
                             (_test70706_
                              (let ((_$e70703_ _test70627_))
                                (if _$e70703_ _$e70703_ equal?)))
                             (_hash70711_
                              (let ((_$e70708_ _hash70629_))
                                (if _$e70708_
                                    _$e70708_
                                    (if (eq? _test70706_ eq?)
                                        eq?-hash
                                        (if (eq? _test70706_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht70713_
                              (let ((__tmp73284
                                     (make-table
                                      'size:
                                      _size70701_
                                      'test:
                                      _test70706_
                                      'hash:
                                      _hash70711_
                                      'weak-keys:
                                      _weak-keys70635_
                                      'weak-values:
                                      _weak-values70637_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp73284))))
                        (let ((__tmp73285
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock70640_ _ht70713_))))
                          (declare (not safe))
                          (_wrap-checked70641_ __tmp73285 true))))))
            (if (or _weak-keys70635_ _weak-values70637_)
                (let () (declare (not safe)) (_make-gambit-table70644_))
                (if (and (or (eq? _test70627_ eq?) (eq? _test70627_ ##eq?))
                         (or (let () (declare (not safe)) (not _hash70629_))
                             (eq? _hash70629_ eq?-hash)
                             (eq? _hash70629_ eq-hash))
                         (let () (declare (not safe)) (not _seed70625_)))
                    (let () (declare (not safe)) (_make-gc-hash-table70643_))
                    (if (and (or (eq? _test70627_ eq?) (eq? _test70627_ ##eq?))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash70629_))
                                 (eq? _hash70629_ eq?-hash)
                                 (eq? _hash70629_ eq-hash)))
                        (let ()
                          (declare (not safe))
                          (_make70642_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (eq? _test70627_ eqv?)
                                     (eq? _test70627_ ##eqv?))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _hash70629_))
                                     (eq? _hash70629_ eqv?-hash)
                                     (eq? _hash70629_ eqv-hash)))
                            (let ()
                              (declare (not safe))
                              (_make70642_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (eq? _test70627_ eq?)
                                         (eq? _test70627_ ##eq?))
                                     (or (eq? _hash70629_ symbolic-hash)
                                         (eq? _hash70629_ ##symbol-hash)))
                                (let ()
                                  (declare (not safe))
                                  (_make70642_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (eq? _test70627_ eq?)
                                             (eq? _test70627_ ##eq?))
                                         (eq? _hash70629_ immediate-hash))
                                    (let ()
                                      (declare (not safe))
                                      (_make70642_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (eq? _test70627_ equal?)
                                                 (eq? _test70627_ ##equal?)
                                                 (eq? _test70627_ string=?)
                                                 (eq? _test70627_ ##string=?))
                                             (or (eq? _hash70629_ string-hash)
                                                 (eq? _hash70629_
                                                      ##string=?-hash)))
                                        (let ()
                                          (declare (not safe))
                                          (_make70642_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (eq? _test70627_ equal?)
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _hash70629_)))
                                            (let ()
                                              (declare (not safe))
                                              (_make70642_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp73286
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _test70627_))))
                                                  (declare (not safe))
                                                  (not __tmp73286))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _test70627_))
                                                (if (let ((__tmp73287
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _hash70629_))))
                                                      (declare (not safe))
                                                      (not __tmp73287))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _hash70629_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make70642_
                                                       make-generic-hash-table
                                                       true
                                                       _hash70629_
                                                       _test70627_))))))))))))))))
    (define make-hash-table__@
      (lambda (_keys7059370740_ . _args70742_)
        (apply make-hash-table__%
               _keys7059370740_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7059370740_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7059370740_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7059370740_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7059370740_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7059370740_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7059370740_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7059370740_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7059370740_
                  'weak-values:
                  absent-value))
               _args70742_)))
    (define make-hash-table
      (lambda _args7060270748_
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
               _args7060270748_)))
    (define make-hash-table-eq
      (lambda _args70590_ (apply make-hash-table 'test: eq? _args70590_)))
    (define make-hash-table-eqv
      (lambda _args70588_ (apply make-hash-table 'test: eqv? _args70588_)))
    (define make-hash-table-symbolic
      (lambda _args70586_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args70586_)))
    (define make-hash-table-string
      (lambda _args70584_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args70584_)))
    (define make-hash-table-immediate
      (lambda _args70582_
        (apply make-hash-table 'test: eq? 'hash: immediate-hash _args70582_)))
    (define list->hash-table
      (lambda (_lst70579_ . _args70580_)
        (let ((__tmp73288
               (apply make-hash-table 'size: (length _lst70579_) _args70580_)))
          (declare (not safe))
          (list->hash-table! _lst70579_ __tmp73288))))
    (define list->hash-table-eq
      (lambda (_lst70576_ . _args70577_)
        (let ((__tmp73289
               (apply make-hash-table-eq
                      'size:
                      (length _lst70576_)
                      _args70577_)))
          (declare (not safe))
          (list->hash-table! _lst70576_ __tmp73289))))
    (define list->hash-table-eqv
      (lambda (_lst70573_ . _args70574_)
        (let ((__tmp73290
               (apply make-hash-table-eqv
                      'size:
                      (length _lst70573_)
                      _args70574_)))
          (declare (not safe))
          (list->hash-table! _lst70573_ __tmp73290))))
    (define list->hash-table-symbolic
      (lambda (_lst70570_ . _args70571_)
        (let ((__tmp73291
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst70570_)
                      _args70571_)))
          (declare (not safe))
          (list->hash-table! _lst70570_ __tmp73291))))
    (define list->hash-table-string
      (lambda (_lst70567_ . _args70568_)
        (let ((__tmp73292
               (apply make-hash-table-string
                      'size:
                      (length _lst70567_)
                      _args70568_)))
          (declare (not safe))
          (list->hash-table! _lst70567_ __tmp73292))))
    (define list->hash-table-immediate
      (lambda (_lst70564_ . _args70565_)
        (let ((__tmp73293
               (apply make-hash-table-immediate
                      'size:
                      (length _lst70564_)
                      _args70565_)))
          (declare (not safe))
          (list->hash-table! _lst70564_ __tmp73293))))
    (define list->hash-table!
      (lambda (_lst70531_ _h70532_)
        (for-each
         (lambda (_el70534_)
           (let* ((_el7053570542_ _el70534_)
                  (_E7053770546_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el7053570542_))))
                  (_K7053870552_
                   (lambda (_v70549_ _k70550_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h70532_ _k70550_ _v70549_)))))
             (if (let () (declare (not safe)) (##pair? _el7053570542_))
                 (let ((_hd7053970555_
                        (let () (declare (not safe)) (##car _el7053570542_)))
                       (_tl7054070557_
                        (let () (declare (not safe)) (##cdr _el7053570542_))))
                   (let* ((_k70560_ _hd7053970555_) (_v70562_ _tl7054070557_))
                     (declare (not safe))
                     (_K7053870552_ _v70562_ _k70560_)))
                 (let () (declare (not safe)) (_E7053770546_)))))
         _lst70531_)
        _h70532_))
    (define plist->hash-table
      (lambda (_lst70528_ . _args70529_)
        (let ((__tmp73294
               (apply make-hash-table 'size: (length _lst70528_) _args70529_)))
          (declare (not safe))
          (plist->hash-table! _lst70528_ __tmp73294))))
    (define plist->hash-table-eq
      (lambda (_lst70525_ . _args70526_)
        (let ((__tmp73295
               (apply make-hash-table-eq
                      'size:
                      (length _lst70525_)
                      _args70526_)))
          (declare (not safe))
          (plist->hash-table! _lst70525_ __tmp73295))))
    (define plist->hash-table-eqv
      (lambda (_lst70522_ . _args70523_)
        (let ((__tmp73296
               (apply make-hash-table-eqv
                      'size:
                      (length _lst70522_)
                      _args70523_)))
          (declare (not safe))
          (plist->hash-table! _lst70522_ __tmp73296))))
    (define plist->hash-table-symbolic
      (lambda (_lst70519_ . _args70520_)
        (let ((__tmp73297
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst70519_)
                      _args70520_)))
          (declare (not safe))
          (plist->hash-table! _lst70519_ __tmp73297))))
    (define plist->hash-table-string
      (lambda (_lst70516_ . _args70517_)
        (let ((__tmp73298
               (apply make-hash-table-string
                      'size:
                      (length _lst70516_)
                      _args70517_)))
          (declare (not safe))
          (plist->hash-table! _lst70516_ __tmp73298))))
    (define plist->hash-table-immediate
      (lambda (_lst70513_ . _args70514_)
        (let ((__tmp73299
               (apply make-hash-table-immediate
                      'size:
                      (length _lst70513_)
                      _args70514_)))
          (declare (not safe))
          (plist->hash-table! _lst70513_ __tmp73299))))
    (define plist->hash-table!
      (lambda (_lst70453_ _h70454_)
        (let _loop70456_ ((_rest70458_ _lst70453_))
          (let* ((_rest7045970471_ _rest70458_)
                 (_else7046270479_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst70453_)))))
            (let ((_K7046570494_
                   (lambda (_rest70490_ _val70491_ _key70492_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h70454_ _key70492_ _val70491_))
                     (let () (declare (not safe)) (_loop70456_ _rest70490_))))
                  (_K7046470484_ (lambda () _h70454_)))
              (let ((_try-match7046170487_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest7045970471_))
                           (let () (declare (not safe)) (_K7046470484_))
                           (let () (declare (not safe)) (_else7046270479_))))))
                (if (let () (declare (not safe)) (##pair? _rest7045970471_))
                    (let ((_tl7046770499_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest7045970471_)))
                          (_hd7046670497_
                           (let ()
                             (declare (not safe))
                             (##car _rest7045970471_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl7046770499_))
                          (let ((_tl7046970506_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl7046770499_)))
                                (_hd7046870504_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl7046770499_))))
                            (let ((_key70502_ _hd7046670497_)
                                  (_val70509_ _hd7046870504_)
                                  (_rest70511_ _tl7046970506_))
                              (let ()
                                (declare (not safe))
                                (_K7046570494_
                                 _rest70511_
                                 _val70509_
                                 _key70502_))))
                          (let () (declare (not safe)) (_else7046270479_))))
                    (let ()
                      (declare (not safe))
                      (_try-match7046170487_)))))))))
    (define hash-length
      (lambda (_h70449_)
        (let ((_h70451_
               (if (and (let () (declare (not safe)) (##structure? _h70449_))
                        (eq? (let ()
                               (declare (not safe))
                               (##structure-type _h70449_))
                             HashTable::t))
                   _h70449_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70449_)))))
          (declare (not safe))
          (&HashTable-length _h70451_))))
    (define &hash-length
      (lambda (_h70447_)
        (let () (declare (not safe)) (&HashTable-length _h70447_))))
    (define hash-ref__%
      (lambda (_h70429_ _key70430_ _default70431_)
        (let ((_h70433_
               (if (and (let () (declare (not safe)) (##structure? _h70429_))
                        (eq? (let ()
                               (declare (not safe))
                               (##structure-type _h70429_))
                             HashTable::t))
                   _h70429_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70429_)))))
          (declare (not safe))
          (&hash-ref__% _h70433_ _key70430_ _default70431_))))
    (define hash-ref__0
      (lambda (_h70438_ _key70439_)
        (let ((_default70441_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h70438_ _key70439_ _default70441_))))
    (define hash-ref
      (lambda _g73301_
        (let ((_g73300_ (let () (declare (not safe)) (##length _g73301_))))
          (cond ((let () (declare (not safe)) (##fx= _g73300_ 2))
                 (apply (lambda (_h70438_ _key70439_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h70438_ _key70439_)))
                        _g73301_))
                ((let () (declare (not safe)) (##fx= _g73300_ 3))
                 (apply (lambda (_h70443_ _key70444_ _default70445_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h70443_ _key70444_ _default70445_)))
                        _g73301_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g73301_))))))
    (define &hash-ref__%
      (lambda (_h70410_ _key70411_ _default70412_)
        (let ((_result70414_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h70410_ _key70411_ _default70412_))))
          (if (eq? _result70414_ (macro-absent-obj))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h70410_
                 'key:
                 _key70411_))
              _result70414_))))
    (define &hash-ref__0
      (lambda (_h70419_ _key70420_)
        (let ((_default70422_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h70419_ _key70420_ _default70422_))))
    (define &hash-ref
      (lambda _g73303_
        (let ((_g73302_ (let () (declare (not safe)) (##length _g73303_))))
          (cond ((let () (declare (not safe)) (##fx= _g73302_ 2))
                 (apply (lambda (_h70419_ _key70420_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h70419_ _key70420_)))
                        _g73303_))
                ((let () (declare (not safe)) (##fx= _g73302_ 3))
                 (apply (lambda (_h70424_ _key70425_ _default70426_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h70424_ _key70425_ _default70426_)))
                        _g73303_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g73303_))))))
    (define hash-get
      (lambda (_h70404_ _key70405_)
        (let ((_h70407_
               (if (and (let () (declare (not safe)) (##structure? _h70404_))
                        (eq? (let ()
                               (declare (not safe))
                               (##structure-type _h70404_))
                             HashTable::t))
                   _h70404_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70404_)))))
          (declare (not safe))
          (&hash-get _h70407_ _key70405_))))
    (define &hash-get
      (lambda (_h70401_ _key70402_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h70401_ _key70402_ '#f))))
    (define hash-put!
      (lambda (_h70395_ _key70396_ _value70397_)
        (let ((_h70399_
               (if (and (let () (declare (not safe)) (##structure? _h70395_))
                        (eq? (let ()
                               (declare (not safe))
                               (##structure-type _h70395_))
                             HashTable::t))
                   _h70395_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70395_)))))
          (declare (not safe))
          (&HashTable-set! _h70399_ _key70396_ _value70397_))))
    (define &hash-put!
      (lambda (_h70391_ _key70392_ _value70393_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h70391_ _key70392_ _value70393_))))
    (define hash-update!__%
      (lambda (_h70370_ _key70371_ _update70372_ _default70373_)
        (let ((_h70375_
               (if (and (let () (declare (not safe)) (##structure? _h70370_))
                        (eq? (let ()
                               (declare (not safe))
                               (##structure-type _h70370_))
                             HashTable::t))
                   _h70370_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70370_)))))
          (declare (not safe))
          (&HashTable-update!
           _h70375_
           _key70371_
           _update70372_
           _default70373_))))
    (define hash-update!__0
      (lambda (_h70380_ _key70381_ _update70382_)
        (let ((_default70384_ '#!void))
          (declare (not safe))
          (hash-update!__% _h70380_ _key70381_ _update70382_ _default70384_))))
    (define hash-update!
      (lambda _g73305_
        (let ((_g73304_ (let () (declare (not safe)) (##length _g73305_))))
          (cond ((let () (declare (not safe)) (##fx= _g73304_ 3))
                 (apply (lambda (_h70380_ _key70381_ _update70382_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h70380_
                             _key70381_
                             _update70382_)))
                        _g73305_))
                ((let () (declare (not safe)) (##fx= _g73304_ 4))
                 (apply (lambda (_h70386_
                                 _key70387_
                                 _update70388_
                                 _default70389_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h70386_
                             _key70387_
                             _update70388_
                             _default70389_)))
                        _g73305_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g73305_))))))
    (define &hash-update!__%
      (lambda (_h70350_ _key70351_ _update70352_ _default70353_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h70350_
           _key70351_
           _update70352_
           _default70353_))))
    (define &hash-update!__0
      (lambda (_h70358_ _key70359_ _update70360_)
        (let ((_default70362_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h70358_
           _key70359_
           _update70360_
           _default70362_))))
    (define &hash-update!
      (lambda _g73307_
        (let ((_g73306_ (let () (declare (not safe)) (##length _g73307_))))
          (cond ((let () (declare (not safe)) (##fx= _g73306_ 3))
                 (apply (lambda (_h70358_ _key70359_ _update70360_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h70358_
                             _key70359_
                             _update70360_)))
                        _g73307_))
                ((let () (declare (not safe)) (##fx= _g73306_ 4))
                 (apply (lambda (_h70364_
                                 _key70365_
                                 _update70366_
                                 _default70367_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h70364_
                             _key70365_
                             _update70366_
                             _default70367_)))
                        _g73307_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g73307_))))))
    (define hash-remove!
      (lambda (_h70344_ _key70345_)
        (let ((_h70347_
               (if (and (let () (declare (not safe)) (##structure? _h70344_))
                        (eq? (let ()
                               (declare (not safe))
                               (##structure-type _h70344_))
                             HashTable::t))
                   _h70344_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70344_)))))
          (declare (not safe))
          (&HashTable-delete! _h70347_ _key70345_))))
    (define &hash-remove!
      (lambda (_h70341_ _key70342_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h70341_ _key70342_))))
    (define hash-key?
      (lambda (_h70336_ _k70337_)
        (let ((_h70339_
               (if (and (let () (declare (not safe)) (##structure? _h70336_))
                        (eq? (let ()
                               (declare (not safe))
                               (##structure-type _h70336_))
                             HashTable::t))
                   _h70336_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70336_)))))
          (declare (not safe))
          (&hash-key? _h70339_ _k70337_))))
    (define &hash-key?
      (lambda (_h70333_ _k70334_)
        (let ((__tmp73308
               (eq? (let ()
                      (declare (not safe))
                      (&HashTable-ref _h70333_ _k70334_ absent-value))
                    absent-value)))
          (declare (not safe))
          (not __tmp73308))))
    (define hash->list
      (lambda (_h70329_)
        (let ((_h70331_
               (if (and (let () (declare (not safe)) (##structure? _h70329_))
                        (eq? (let ()
                               (declare (not safe))
                               (##structure-type _h70329_))
                             HashTable::t))
                   _h70329_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70329_)))))
          (declare (not safe))
          (&hash->list _h70331_))))
    (define &hash->list
      (lambda (_h70322_)
        (let ((_lst70324_ '()))
          (let ((__tmp73309
                 (lambda (_k70326_ _v70327_)
                   (set! _lst70324_
                         (cons (cons _k70326_ _v70327_) _lst70324_)))))
            (declare (not safe))
            (&HashTable-for-each _h70322_ __tmp73309))
          _lst70324_)))
    (define hash->plist
      (lambda (_h70318_)
        (let ((_h70320_
               (if (and (let () (declare (not safe)) (##structure? _h70318_))
                        (eq? (let ()
                               (declare (not safe))
                               (##structure-type _h70318_))
                             HashTable::t))
                   _h70318_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70318_)))))
          (declare (not safe))
          (&hash->plist _h70320_))))
    (define &hash->plist
      (lambda (_h70311_)
        (let ((_lst70313_ '()))
          (let ((__tmp73310
                 (lambda (_k70315_ _v70316_)
                   (set! _lst70313_
                         (let ((__tmp73311
                                (let ()
                                  (declare (not safe))
                                  (cons _v70316_ _lst70313_))))
                           (declare (not safe))
                           (cons _k70315_ __tmp73311))))))
            (declare (not safe))
            (&HashTable-for-each _h70311_ __tmp73310))
          _lst70313_)))
    (define hash-for-each
      (lambda (_proc70308_ _h70309_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h70309_ _proc70308_))))
    (define hash-map
      (lambda (_proc70300_ _h70301_)
        (let ((_result70303_ '()))
          (let ((__tmp73312
                 (lambda (_k70305_ _v70306_)
                   (set! _result70303_
                         (cons (_proc70300_ _k70305_ _v70306_)
                               _result70303_)))))
            (declare (not safe))
            (HashTable-for-each _h70301_ __tmp73312))
          _result70303_)))
    (define hash-fold
      (lambda (_proc70291_ _iv70292_ _h70293_)
        (let ((_result70295_ _iv70292_))
          (let ((__tmp73313
                 (lambda (_k70297_ _v70298_)
                   (set! _result70295_
                         (_proc70291_ _k70297_ _v70298_ _result70295_)))))
            (declare (not safe))
            (HashTable-for-each _h70293_ __tmp73313))
          _result70295_)))
    (define hash-find__%
      (lambda (_proc70267_ _h70268_ _default-value70269_)
        (let ((__tmp73314
               (lambda (_return70271_)
                 (let ((__tmp73315
                        (lambda (_k70273_ _v70274_)
                          (let ((_$e70276_ (_proc70267_ _k70273_ _v70274_)))
                            (if _$e70276_
                                (_return70271_ _$e70276_)
                                '#!void)))))
                   (declare (not safe))
                   (HashTable-for-each _h70268_ __tmp73315))
                 _default-value70269_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp73314))))
    (define hash-find__0
      (lambda (_proc70282_ _h70283_)
        (let ((_default-value70285_ '#f))
          (declare (not safe))
          (hash-find__% _proc70282_ _h70283_ _default-value70285_))))
    (define hash-find
      (lambda _g73317_
        (let ((_g73316_ (let () (declare (not safe)) (##length _g73317_))))
          (cond ((let () (declare (not safe)) (##fx= _g73316_ 2))
                 (apply (lambda (_proc70282_ _h70283_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc70282_ _h70283_)))
                        _g73317_))
                ((let () (declare (not safe)) (##fx= _g73316_ 3))
                 (apply (lambda (_proc70287_ _h70288_ _default-value70289_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc70287_
                             _h70288_
                             _default-value70289_)))
                        _g73317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g73317_))))))
    (define hash-keys
      (lambda (_h70262_)
        (let ((_h70264_
               (if (and (let () (declare (not safe)) (##structure? _h70262_))
                        (eq? (let ()
                               (declare (not safe))
                               (##structure-type _h70262_))
                             HashTable::t))
                   _h70262_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70262_)))))
          (declare (not safe))
          (&hash-keys _h70264_))))
    (define &hash-keys
      (lambda (_h70255_)
        (let ((_result70257_ '()))
          (let ((__tmp73318
                 (lambda (_k70259_ _v70260_)
                   (set! _result70257_ (cons _k70259_ _result70257_)))))
            (declare (not safe))
            (&HashTable-for-each _h70255_ __tmp73318))
          _result70257_)))
    (define hash-values
      (lambda (_h70251_)
        (let ((_h70253_
               (if (and (let () (declare (not safe)) (##structure? _h70251_))
                        (eq? (let ()
                               (declare (not safe))
                               (##structure-type _h70251_))
                             HashTable::t))
                   _h70251_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70251_)))))
          (declare (not safe))
          (&hash-values _h70253_))))
    (define &hash-values
      (lambda (_h70244_)
        (let ((_result70246_ '()))
          (let ((__tmp73319
                 (lambda (_k70248_ _v70249_)
                   (set! _result70246_ (cons _v70249_ _result70246_)))))
            (declare (not safe))
            (&HashTable-for-each _h70244_ __tmp73319))
          _result70246_)))
    (define hash-copy
      (lambda (_h70240_)
        (let ((_h70242_
               (if (and (let () (declare (not safe)) (##structure? _h70240_))
                        (eq? (let ()
                               (declare (not safe))
                               (##structure-type _h70240_))
                             HashTable::t))
                   _h70240_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70240_)))))
          (declare (not safe))
          (&HashTable-copy _h70242_))))
    (define &hash-copy
      (lambda (_h70238_)
        (let () (declare (not safe)) (&HashTable-copy _h70238_))))
    (define hash-merge
      (lambda (_h70233_ . _rest70234_)
        (let ((_copy70236_ (let () (declare (not safe)) (hash-copy _h70233_))))
          (apply hash-merge! _copy70236_ _rest70234_)
          _copy70236_)))
    (define hash-merge!
      (lambda (_h70223_ . _rest70224_)
        (let ((_h70226_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h70223_))))
          (for-each
           (lambda (_hr70228_)
             (let ((__tmp73320
                    (lambda (_k70230_ _v70231_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h70226_ _k70230_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h70226_ _k70230_ _v70231_))))))
               (declare (not safe))
               (hash-for-each __tmp73320 _hr70228_)))
           _rest70224_)
          _h70226_)))))
