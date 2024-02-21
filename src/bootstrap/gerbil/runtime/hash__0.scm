(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1708510101)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp72193 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp72193
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args72176_
        (apply make-instance UnboundKeyError::t _$args72176_)))
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
      (lambda (_where72050_ _message72051_ . _irritants72052_)
        (raise (let ((__obj72190
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj72190
                  _message72051_
                  'where:
                  _where72050_
                  'irritants:
                  _irritants72052_)
                 __obj72190))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp72198 (list interface-instance::t))
            (__tmp72194
             (let ((__tmp72197
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72195
                    (let ((__tmp72196
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72196 '()))))
               (declare (not safe))
               (cons __tmp72197 __tmp72195))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp72198
         '(ref set! update! delete! for-each length copy clear)
         __tmp72194
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
      (let ((__tmp72203 (list interface-instance::t))
            (__tmp72199
             (let ((__tmp72202
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72200
                    (let ((__tmp72201
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72201 '()))))
               (declare (not safe))
               (cons __tmp72202 __tmp72200))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp72203
         '(begin-read! end-read! begin-write! end-write!)
         __tmp72199
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
      (lambda (_table72043_ _key72044_ _update72045_ _default72046_)
        (let ((_result72048_
               (table-ref _table72043_ _key72044_ _default72046_)))
          (table-set!
           _table72043_
           _key72044_
           (_update72045_ _default72046_)))))
    (define gambit-table-for-each
      (lambda (_table72040_ _proc72041_)
        (table-for-each _proc72041_ _table72040_)))
    (define gambit-table-clear!
      (lambda (_table72038_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table72038_ '0 '5 '#f '#f))))
    (let ((__tmp72204 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72204 'ref table-ref))
    (let ((__tmp72205 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72205 'set! table-set!))
    (let ((__tmp72206 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72206 'update! gambit-table-update!))
    (let ((__tmp72207 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72207 'delete! table-set!))
    (let ((__tmp72208 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72208 'for-each gambit-table-for-each))
    (let ((__tmp72209 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72209 'length table-length))
    (let ((__tmp72210 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72210 'copy table-copy))
    (let ((__tmp72211 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72211 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots72020_ '(table count free hash test seed))
             (_slot-vector72022_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots72020_))))
             (_slot-table72029_
              (let ((_slot-table72024_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot72026_ _field72027_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72024_
                      _slot72026_
                      _field72027_))
                   (let ((__tmp72212 (symbol->keyword _slot72026_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72024_
                      __tmp72212
                      _field72027_)))
                 _slots72020_
                 (let ((__tmp72213 (length _slots72020_)))
                   (declare (not safe))
                   (iota__1 __tmp72213 '1)))
                _slot-table72024_))
             (_flags72031_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields72033_ '#())
             (_properties72035_
              (let ((__tmp72216
                     (let ((__tmp72217
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots72020_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp72217)))
                    (__tmp72214
                     (let ((__tmp72215
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp72215 '()))))
                (declare (not safe))
                (cons __tmp72216 __tmp72214))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags72031_
           __table::t
           _fields72033_
           '()
           _slot-vector72022_
           _slot-table72029_
           _properties72035_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp72222 (list))
            (__tmp72218
             (let ((__tmp72221
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72219
                    (let ((__tmp72220
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72220 '()))))
               (declare (not safe))
               (cons __tmp72221 __tmp72219))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp72222
         '(table lock)
         __tmp72218
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args72017_
        (apply make-instance locked-hash-table::t _$args72017_)))
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
      (let ((__tmp72227 (list))
            (__tmp72223
             (let ((__tmp72226
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72224
                    (let ((__tmp72225
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72225 '()))))
               (declare (not safe))
               (cons __tmp72226 __tmp72224))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp72227
         '(table key-check)
         __tmp72223
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args72014_
        (apply make-instance checked-hash-table::t _$args72014_)))
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
      (let ((__tmp72230 (list hash-table::t))
            (__tmp72228
             (let ((__tmp72229
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72229 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp72230
         '()
         __tmp72228
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args72011_
        (apply make-instance eq-hash-table::t _$args72011_)))
    (define eqv-hash-table::t
      (let ((__tmp72233 (list hash-table::t))
            (__tmp72231
             (let ((__tmp72232
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72232 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp72233
         '()
         __tmp72231
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args72008_
        (apply make-instance eqv-hash-table::t _$args72008_)))
    (define symbol-hash-table::t
      (let ((__tmp72236 (list hash-table::t))
            (__tmp72234
             (let ((__tmp72235
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72235 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp72236
         '()
         __tmp72234
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args72005_
        (apply make-instance symbol-hash-table::t _$args72005_)))
    (define string-hash-table::t
      (let ((__tmp72239 (list hash-table::t))
            (__tmp72237
             (let ((__tmp72238
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72238 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp72239
         '()
         __tmp72237
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args72002_
        (apply make-instance string-hash-table::t _$args72002_)))
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
      (lambda (_obj72000_)
        (if (let () (declare (not safe)) (##structure? _obj72000_))
            (let ((__tmp72240
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj72000_))))
              (declare (not safe))
              (eq? __tmp72240 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj71995_)
        (let ((_$e71997_
               (if (let () (declare (not safe)) (##structure? _obj71995_))
                   (let ((__tmp72241
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj71995_))))
                     (declare (not safe))
                     (eq? __tmp72241 HashTable::t))
                   '#f)))
          (if _$e71997_
              _$e71997_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj71995_))))))
    (define HashTable-ref
      (lambda (_h71989_ _key71990_ _default71991_)
        (let ((_h71993_
               (if (and (let () (declare (not safe)) (##structure? _h71989_))
                        (let ((__tmp72242
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71989_))))
                          (declare (not safe))
                          (eq? __tmp72242 HashTable::t)))
                   _h71989_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71989_)))))
          (declare (not safe))
          (&HashTable-ref _h71993_ _key71990_ _default71991_))))
    (define &HashTable-ref
      (lambda (_h71984_ _key71985_ _default71986_)
        (declare (not safe))
        ((##unchecked-structure-ref _h71984_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h71984_ '1 interface-instance::t '#f)
         _key71985_
         _default71986_)))
    (define HashTable-set!
      (lambda (_h71978_ _key71979_ _value71980_)
        (let ((_h71982_
               (if (and (let () (declare (not safe)) (##structure? _h71978_))
                        (let ((__tmp72243
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71978_))))
                          (declare (not safe))
                          (eq? __tmp72243 HashTable::t)))
                   _h71978_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71978_)))))
          (declare (not safe))
          (&HashTable-set! _h71982_ _key71979_ _value71980_))))
    (define &HashTable-set!
      (lambda (_h71973_ _key71974_ _value71975_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71973_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h71973_ '1 interface-instance::t '#f)
           _key71974_
           _value71975_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h71966_ _key71967_ _update71968_ _default71969_)
        (let ((_h71971_
               (if (and (let () (declare (not safe)) (##structure? _h71966_))
                        (let ((__tmp72244
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71966_))))
                          (declare (not safe))
                          (eq? __tmp72244 HashTable::t)))
                   _h71966_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71966_)))))
          (declare (not safe))
          (&HashTable-update!
           _h71971_
           _key71967_
           _update71968_
           _default71969_))))
    (define &HashTable-update!
      (lambda (_h71960_ _key71961_ _update71962_ _default71963_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71960_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h71960_ '1 interface-instance::t '#f)
           _key71961_
           _update71962_
           _default71963_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h71955_ _key71956_)
        (let ((_h71958_
               (if (and (let () (declare (not safe)) (##structure? _h71955_))
                        (let ((__tmp72245
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71955_))))
                          (declare (not safe))
                          (eq? __tmp72245 HashTable::t)))
                   _h71955_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71955_)))))
          (declare (not safe))
          (&HashTable-delete! _h71958_ _key71956_))))
    (define &HashTable-delete!
      (lambda (_h71951_ _key71952_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71951_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h71951_ '1 interface-instance::t '#f)
           _key71952_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h71946_ _proc71947_)
        (let ((_h71949_
               (if (and (let () (declare (not safe)) (##structure? _h71946_))
                        (let ((__tmp72246
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71946_))))
                          (declare (not safe))
                          (eq? __tmp72246 HashTable::t)))
                   _h71946_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71946_)))))
          (declare (not safe))
          (&HashTable-for-each _h71949_ _proc71947_))))
    (define &HashTable-for-each
      (lambda (_h71942_ _proc71943_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71942_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h71942_ '1 interface-instance::t '#f)
           _proc71943_)
          '#!void)))
    (define HashTable-length
      (lambda (_h71938_)
        (let ((_h71940_
               (if (and (let () (declare (not safe)) (##structure? _h71938_))
                        (let ((__tmp72247
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71938_))))
                          (declare (not safe))
                          (eq? __tmp72247 HashTable::t)))
                   _h71938_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71938_)))))
          (declare (not safe))
          (&HashTable-length _h71940_))))
    (define &HashTable-length
      (lambda (_h71935_)
        (declare (not safe))
        ((##unchecked-structure-ref _h71935_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h71935_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h71931_)
        (let ((_h71933_
               (if (and (let () (declare (not safe)) (##structure? _h71931_))
                        (let ((__tmp72248
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71931_))))
                          (declare (not safe))
                          (eq? __tmp72248 HashTable::t)))
                   _h71931_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71931_)))))
          (declare (not safe))
          (&HashTable-copy _h71933_))))
    (define &HashTable-copy
      (lambda (_h71928_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h71928_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h71928_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h71924_)
        (let ((_h71926_
               (if (and (let () (declare (not safe)) (##structure? _h71924_))
                        (let ((__tmp72249
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71924_))))
                          (declare (not safe))
                          (eq? __tmp72249 HashTable::t)))
                   _h71924_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71924_)))))
          (declare (not safe))
          (&HashTable-clear! _h71926_))))
    (define &HashTable-clear!
      (lambda (_h71921_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71921_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h71921_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl71918_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl71918_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl71918_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl71915_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl71915_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl71915_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl71912_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl71912_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl71912_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl71909_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl71909_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl71909_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref68948_
      (lambda (_self71896_ _key71898_ _default71899_)
        (let ((_h71901_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71896_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71903_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71896_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71903_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h71901_ _key71898_ _default71899_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71903_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref68948_
       '#f))
    (define _locked-hash-table::set!68950_
      (lambda (_self71760_ _key71762_ _value71763_)
        (let ((_h71765_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71760_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71767_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71760_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71767_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h71765_ _key71762_ _value71763_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71767_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!68950_
       '#f))
    (define _locked-hash-table::update!68952_
      (lambda (_self71623_ _key71625_ _update71626_ _default71627_)
        (let ((_h71629_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71623_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71631_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71623_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71631_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h71629_
                _key71625_
                _update71626_
                _default71627_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71631_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!68952_
       '#f))
    (define _locked-hash-table::delete!68954_
      (lambda (_self71488_ _key71490_)
        (let ((_h71492_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71488_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71494_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71488_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71494_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h71492_ _key71490_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71494_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!68954_
       '#f))
    (define _locked-hash-table::for-each68956_
      (lambda (_self71353_ _proc71355_)
        (let ((_h71357_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71353_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71359_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71353_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71359_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h71357_ _proc71355_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71359_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each68956_
       '#f))
    (define _locked-hash-table::length68958_
      (lambda (_self71219_)
        (let ((_h71222_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71219_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71224_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71219_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71224_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h71222_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71224_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length68958_
       '#f))
    (define _locked-hash-table::copy68960_
      (lambda (_self71085_)
        (let ((_h71088_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71085_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71090_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71085_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71090_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h71088_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71090_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy68960_
       '#f))
    (define _locked-hash-table::clear!68962_
      (lambda (_self70951_)
        (let ((_h70954_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70951_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70956_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70951_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l70956_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h70954_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l70956_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!68962_
       '#f))
    (let ((__tmp72250 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72250 'begin-read! mutex-lock!))
    (let ((__tmp72251 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72251 'end-read! mutex-unlock!))
    (let ((__tmp72252 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72252 'begin-write! mutex-lock!))
    (let ((__tmp72253 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72253 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref69240_
      (lambda (_self70815_ _key70816_ _default70817_)
        (let ((_h70819_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70815_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70821_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70815_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7082370825_)
             (if (_g7082370825_ _key70816_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key70816_))))
           _key?70821_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h70819_ _key70816_ _default70817_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref69240_
       '#f))
    (define _checked-hash-table::set!69242_
      (lambda (_self70679_ _key70680_ _value70681_)
        (let ((_h70683_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70679_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70685_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70679_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7068770689_)
             (if (_g7068770689_ _key70680_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key70680_))))
           _key?70685_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h70683_ _key70680_ _value70681_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!69242_
       '#f))
    (define _checked-hash-table::update!69244_
      (lambda (_self70544_ _key70545_ _update70546_ _default70547_)
        (let ((_h70549_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70544_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70551_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70544_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?70554_)
             (if (_key?70554_ _key70545_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key70545_)))
             (if (let () (declare (not safe)) (procedure? _update70546_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update70546_))))
           _key?70551_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h70549_
             _key70545_
             _update70546_
             _default70547_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!69244_
       '#f))
    (define _checked-hash-table::delete!69246_
      (lambda (_self70409_ _key70410_)
        (let ((_h70412_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70409_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70414_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70409_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7041670418_)
             (if (_g7041670418_ _key70410_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key70410_))))
           _key?70414_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h70412_ _key70410_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!69246_
       '#f))
    (define _checked-hash-table::for-each69248_
      (lambda (_self70277_ _proc70278_)
        (let ((_h70280_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70277_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70282_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70277_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g72254_)
             (if (let () (declare (not safe)) (procedure? _proc70278_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc70278_))))
           _key?70282_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h70280_ _proc70278_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each69248_
       '#f))
    (define _checked-hash-table::length69250_
      (lambda (_self70147_)
        (let ((_h70149_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70147_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70151_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70147_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h70149_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length69250_
       '#f))
    (define _checked-hash-table::copy69252_
      (lambda (_self70017_)
        (let ((_h70019_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70017_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70021_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70017_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h70019_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy69252_
       '#f))
    (define _checked-hash-table::clear!69254_
      (lambda (_self69887_)
        (let ((_h69889_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69887_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69891_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69887_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h69889_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!69254_
       '#f))
    (define make-generic-hash-table
      (lambda (_table69757_
               _count69758_
               _free69759_
               _hash69760_
               _test69761_
               _seed69762_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table69757_
           _count69758_
           _free69759_
           _hash69760_
           _test69761_
           _seed69762_))))
    (define make-hash-table__%
      (lambda (_g72255_
               _size-hint6962069630_
               _seed6962169632_
               _test6962269634_
               _hash6962369636_
               _lock6962469638_
               _check6962569640_
               _weak-keys6962669642_
               _weak-values6962769644_)
        (let* ((_size-hint69647_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint6962069630_ absent-value))
                    '#f
                    _size-hint6962069630_))
               (_seed69649_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed6962169632_ absent-value))
                    (random-integer (macro-max-fixnum32))
                    _seed6962169632_))
               (_test69651_
                (if (let ()
                      (declare (not safe))
                      (eq? _test6962269634_ absent-value))
                    equal?
                    _test6962269634_))
               (_hash69653_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash6962369636_ absent-value))
                    '#f
                    _hash6962369636_))
               (_lock69655_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock6962469638_ absent-value))
                    '#f
                    _lock6962469638_))
               (_check69657_
                (if (let ()
                      (declare (not safe))
                      (eq? _check6962569640_ absent-value))
                    '#f
                    _check6962569640_))
               (_weak-keys69659_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys6962669642_ absent-value))
                    '#f
                    _weak-keys6962669642_))
               (_weak-values69661_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values6962769644_ absent-value))
                    '#f
                    _weak-values6962769644_)))
          (letrec ((_wrap-lock69663_
                    (lambda (_ht69741_)
                      (if _lock69655_
                          (let ((__tmp72256
                                 (let ((__tmp72257
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock69655_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht69741_
                                    __tmp72257))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp72256))
                          _ht69741_)))
                   (_wrap-checked69664_
                    (lambda (_ht69738_ _implicit69739_)
                      (if _check69657_
                          (let ((__tmp72258
                                 (let ((__tmp72259
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check69657_))
                                            _check69657_
                                            _implicit69739_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht69738_
                                    __tmp72259))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp72258))
                          _ht69738_)))
                   (_make69665_
                    (lambda (_kons69726_ _key?69727_ _hash69728_ _test69729_)
                      (let* ((_size69731_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint69647_)))
                             (_table69733_
                              (make-vector _size69731_ (macro-unused-obj)))
                             (_ht69735_
                              (let ((__tmp72260
                                     (_kons69726_
                                      _table69733_
                                      '0
                                      (fxquotient _size69731_ '2)
                                      _hash69728_
                                      _test69729_
                                      _seed69649_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72260))))
                        (let ((__tmp72261
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock69663_ _ht69735_))))
                          (declare (not safe))
                          (_wrap-checked69664_ __tmp72261 _key?69727_)))))
                   (_make-gambit-table69666_
                    (lambda ()
                      (let* ((_size69711_
                              (let ((_$e69708_ _size-hint69647_))
                                (if _$e69708_ _$e69708_ (macro-absent-obj))))
                             (_test69716_
                              (let ((_$e69713_ _test69651_))
                                (if _$e69713_ _$e69713_ equal?)))
                             (_hash69721_
                              (let ((_$e69718_ _hash69653_))
                                (if _$e69718_
                                    _$e69718_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test69716_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test69716_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht69723_
                              (let ((__tmp72262
                                     (make-table
                                      'size:
                                      _size69711_
                                      'test:
                                      _test69716_
                                      'hash:
                                      _hash69721_
                                      'weak-keys:
                                      _weak-keys69659_
                                      'weak-values:
                                      _weak-values69661_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72262))))
                        (let ((__tmp72263
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock69663_ _ht69723_))))
                          (declare (not safe))
                          (_wrap-checked69664_ __tmp72263 true))))))
            (if (or _weak-keys69659_ _weak-values69661_)
                (let () (declare (not safe)) (_make-gambit-table69666_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test69651_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test69651_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash69653_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash69653_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash69653_ eq-hash))))
                    (let ()
                      (declare (not safe))
                      (_make69665_ make-eq-hash-table true eq-hash eq?))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test69651_ eqv?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test69651_ ##eqv?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash69653_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash69653_ eqv?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash69653_ eqv-hash))))
                        (let ()
                          (declare (not safe))
                          (_make69665_ make-eqv-hash-table true eqv-hash eqv?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test69651_ eq?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test69651_ ##eq?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (eq? _hash69653_ symbolic-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash69653_ ##symbol-hash))))
                            (let ()
                              (declare (not safe))
                              (_make69665_
                               make-symbol-hash-table
                               symbolic?
                               symbolic-hash
                               eq?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test69651_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test69651_ ##equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test69651_ string=?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test69651_ ##string=?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash69653_ string-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash69653_ ##string=?-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make69665_
                                   make-string-hash-table
                                   string?
                                   string-hash
                                   ##string=?))
                                (if (and (let ()
                                           (declare (not safe))
                                           (eq? _test69651_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (not _hash69653_)))
                                    (let ()
                                      (declare (not safe))
                                      (_make69665_
                                       make-generic-hash-table
                                       true
                                       equal?-hash
                                       equal?))
                                    (if (let ((__tmp72265
                                               (let ()
                                                 (declare (not safe))
                                                 (procedure? _test69651_))))
                                          (declare (not safe))
                                          (not __tmp72265))
                                        (let ()
                                          (declare (not safe))
                                          (error '"bad hash table test function; expected procedure"
                                                 _test69651_))
                                        (if (let ((__tmp72264
                                                   (let ()
                                                     (declare (not safe))
                                                     (procedure?
                                                      _hash69653_))))
                                              (declare (not safe))
                                              (not __tmp72264))
                                            (let ()
                                              (declare (not safe))
                                              (error '"bad hash table hash function; expected procedure"
                                                     _hash69653_))
                                            (let ()
                                              (declare (not safe))
                                              (_make69665_
                                               make-generic-hash-table
                                               true
                                               _hash69653_
                                               _test69651_))))))))))))))
    (define make-hash-table__@
      (lambda (_keys6961969746_ . _args69748_)
        (apply make-hash-table__%
               _keys6961969746_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6961969746_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6961969746_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6961969746_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6961969746_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6961969746_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6961969746_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6961969746_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6961969746_
                  'weak-values:
                  absent-value))
               _args69748_)))
    (define make-hash-table
      (lambda _args6962869754_
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
               _args6962869754_)))
    (define make-hash-table-eq
      (lambda _args69616_ (apply make-hash-table 'test: eq? _args69616_)))
    (define make-hash-table-eqv
      (lambda _args69614_ (apply make-hash-table 'test: eqv? _args69614_)))
    (define make-hash-table-symbolic
      (lambda _args69612_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args69612_)))
    (define make-hash-table-string
      (lambda _args69610_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args69610_)))
    (define list->hash-table
      (lambda (_lst69607_ . _args69608_)
        (let ((__tmp72266
               (apply make-hash-table 'size: (length _lst69607_) _args69608_)))
          (declare (not safe))
          (list->hash-table! _lst69607_ __tmp72266))))
    (define list->hash-table-eq
      (lambda (_lst69604_ . _args69605_)
        (let ((__tmp72267
               (apply make-hash-table-eq
                      'size:
                      (length _lst69604_)
                      _args69605_)))
          (declare (not safe))
          (list->hash-table! _lst69604_ __tmp72267))))
    (define list->hash-table-eqv
      (lambda (_lst69601_ . _args69602_)
        (let ((__tmp72268
               (apply make-hash-table-eqv
                      'size:
                      (length _lst69601_)
                      _args69602_)))
          (declare (not safe))
          (list->hash-table! _lst69601_ __tmp72268))))
    (define list->hash-table-symbolic
      (lambda (_lst69598_ . _args69599_)
        (let ((__tmp72269
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst69598_)
                      _args69599_)))
          (declare (not safe))
          (list->hash-table! _lst69598_ __tmp72269))))
    (define list->hash-table-string
      (lambda (_lst69595_ . _args69596_)
        (let ((__tmp72270
               (apply make-hash-table-string
                      'size:
                      (length _lst69595_)
                      _args69596_)))
          (declare (not safe))
          (list->hash-table! _lst69595_ __tmp72270))))
    (define list->hash-table!
      (lambda (_lst69562_ _h69563_)
        (for-each
         (lambda (_el69565_)
           (let* ((_el6956669573_ _el69565_)
                  (_E6956869577_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el6956669573_))))
                  (_K6956969583_
                   (lambda (_v69580_ _k69581_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h69563_ _k69581_ _v69580_)))))
             (if (let () (declare (not safe)) (##pair? _el6956669573_))
                 (let ((_hd6957069586_
                        (let () (declare (not safe)) (##car _el6956669573_)))
                       (_tl6957169588_
                        (let () (declare (not safe)) (##cdr _el6956669573_))))
                   (let* ((_k69591_ _hd6957069586_) (_v69593_ _tl6957169588_))
                     (declare (not safe))
                     (_K6956969583_ _v69593_ _k69591_)))
                 (let () (declare (not safe)) (_E6956869577_)))))
         _lst69562_)
        _h69563_))
    (define plist->hash-table
      (lambda (_lst69559_ . _args69560_)
        (let ((__tmp72271
               (apply make-hash-table 'size: (length _lst69559_) _args69560_)))
          (declare (not safe))
          (plist->hash-table! _lst69559_ __tmp72271))))
    (define plist->hash-table-eq
      (lambda (_lst69556_ . _args69557_)
        (let ((__tmp72272
               (apply make-hash-table-eq
                      'size:
                      (length _lst69556_)
                      _args69557_)))
          (declare (not safe))
          (plist->hash-table! _lst69556_ __tmp72272))))
    (define plist->hash-table-eqv
      (lambda (_lst69553_ . _args69554_)
        (let ((__tmp72273
               (apply make-hash-table-eqv
                      'size:
                      (length _lst69553_)
                      _args69554_)))
          (declare (not safe))
          (plist->hash-table! _lst69553_ __tmp72273))))
    (define plist->hash-table-symbolic
      (lambda (_lst69550_ . _args69551_)
        (let ((__tmp72274
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst69550_)
                      _args69551_)))
          (declare (not safe))
          (plist->hash-table! _lst69550_ __tmp72274))))
    (define plist->hash-table-string
      (lambda (_lst69547_ . _args69548_)
        (let ((__tmp72275
               (apply make-hash-table-string
                      'size:
                      (length _lst69547_)
                      _args69548_)))
          (declare (not safe))
          (plist->hash-table! _lst69547_ __tmp72275))))
    (define plist->hash-table!
      (lambda (_lst69487_ _h69488_)
        (let _loop69490_ ((_rest69492_ _lst69487_))
          (let* ((_rest6949369505_ _rest69492_)
                 (_else6949669513_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst69487_)))))
            (let ((_K6949969528_
                   (lambda (_rest69524_ _val69525_ _key69526_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h69488_ _key69526_ _val69525_))
                     (let () (declare (not safe)) (_loop69490_ _rest69524_))))
                  (_K6949869518_ (lambda () _h69488_)))
              (let ((_try-match6949569521_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest6949369505_))
                           (let () (declare (not safe)) (_K6949869518_))
                           (let () (declare (not safe)) (_else6949669513_))))))
                (if (let () (declare (not safe)) (##pair? _rest6949369505_))
                    (let ((_tl6950169533_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest6949369505_)))
                          (_hd6950069531_
                           (let ()
                             (declare (not safe))
                             (##car _rest6949369505_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl6950169533_))
                          (let ((_tl6950369540_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl6950169533_)))
                                (_hd6950269538_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl6950169533_))))
                            (let ((_key69536_ _hd6950069531_)
                                  (_val69543_ _hd6950269538_)
                                  (_rest69545_ _tl6950369540_))
                              (let ()
                                (declare (not safe))
                                (_K6949969528_
                                 _rest69545_
                                 _val69543_
                                 _key69536_))))
                          (let () (declare (not safe)) (_else6949669513_))))
                    (let ()
                      (declare (not safe))
                      (_try-match6949569521_)))))))))
    (define hash-length
      (lambda (_h69483_)
        (let ((_h69485_
               (if (and (let () (declare (not safe)) (##structure? _h69483_))
                        (let ((__tmp72276
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69483_))))
                          (declare (not safe))
                          (eq? __tmp72276 HashTable::t)))
                   _h69483_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69483_)))))
          (declare (not safe))
          (&HashTable-length _h69485_))))
    (define &hash-length
      (lambda (_h69481_)
        (let () (declare (not safe)) (&HashTable-length _h69481_))))
    (define hash-ref__%
      (lambda (_h69463_ _key69464_ _default69465_)
        (let ((_h69467_
               (if (and (let () (declare (not safe)) (##structure? _h69463_))
                        (let ((__tmp72277
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69463_))))
                          (declare (not safe))
                          (eq? __tmp72277 HashTable::t)))
                   _h69463_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69463_)))))
          (declare (not safe))
          (&hash-ref__% _h69467_ _key69464_ _default69465_))))
    (define hash-ref__0
      (lambda (_h69472_ _key69473_)
        (let ((_default69475_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h69472_ _key69473_ _default69475_))))
    (define hash-ref
      (lambda _g72279_
        (let ((_g72278_ (let () (declare (not safe)) (##length _g72279_))))
          (cond ((let () (declare (not safe)) (##fx= _g72278_ 2))
                 (apply (lambda (_h69472_ _key69473_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h69472_ _key69473_)))
                        _g72279_))
                ((let () (declare (not safe)) (##fx= _g72278_ 3))
                 (apply (lambda (_h69477_ _key69478_ _default69479_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h69477_ _key69478_ _default69479_)))
                        _g72279_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g72279_))))))
    (define &hash-ref__%
      (lambda (_h69444_ _key69445_ _default69446_)
        (let ((_result69448_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h69444_ _key69445_ _default69446_))))
          (if (let ((__tmp72280 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result69448_ __tmp72280))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h69444_
                 'key:
                 _key69445_))
              _result69448_))))
    (define &hash-ref__0
      (lambda (_h69453_ _key69454_)
        (let ((_default69456_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h69453_ _key69454_ _default69456_))))
    (define &hash-ref
      (lambda _g72282_
        (let ((_g72281_ (let () (declare (not safe)) (##length _g72282_))))
          (cond ((let () (declare (not safe)) (##fx= _g72281_ 2))
                 (apply (lambda (_h69453_ _key69454_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h69453_ _key69454_)))
                        _g72282_))
                ((let () (declare (not safe)) (##fx= _g72281_ 3))
                 (apply (lambda (_h69458_ _key69459_ _default69460_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h69458_ _key69459_ _default69460_)))
                        _g72282_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g72282_))))))
    (define hash-get
      (lambda (_h69438_ _key69439_)
        (let ((_h69441_
               (if (and (let () (declare (not safe)) (##structure? _h69438_))
                        (let ((__tmp72283
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69438_))))
                          (declare (not safe))
                          (eq? __tmp72283 HashTable::t)))
                   _h69438_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69438_)))))
          (declare (not safe))
          (&hash-get _h69441_ _key69439_))))
    (define &hash-get
      (lambda (_h69435_ _key69436_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h69435_ _key69436_ '#f))))
    (define hash-put!
      (lambda (_h69429_ _key69430_ _value69431_)
        (let ((_h69433_
               (if (and (let () (declare (not safe)) (##structure? _h69429_))
                        (let ((__tmp72284
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69429_))))
                          (declare (not safe))
                          (eq? __tmp72284 HashTable::t)))
                   _h69429_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69429_)))))
          (declare (not safe))
          (&HashTable-set! _h69433_ _key69430_ _value69431_))))
    (define &hash-put!
      (lambda (_h69425_ _key69426_ _value69427_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h69425_ _key69426_ _value69427_))))
    (define hash-update!__%
      (lambda (_h69404_ _key69405_ _update69406_ _default69407_)
        (let ((_h69409_
               (if (and (let () (declare (not safe)) (##structure? _h69404_))
                        (let ((__tmp72285
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69404_))))
                          (declare (not safe))
                          (eq? __tmp72285 HashTable::t)))
                   _h69404_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69404_)))))
          (declare (not safe))
          (&HashTable-update!
           _h69409_
           _key69405_
           _update69406_
           _default69407_))))
    (define hash-update!__0
      (lambda (_h69414_ _key69415_ _update69416_)
        (let ((_default69418_ '#!void))
          (declare (not safe))
          (hash-update!__% _h69414_ _key69415_ _update69416_ _default69418_))))
    (define hash-update!
      (lambda _g72287_
        (let ((_g72286_ (let () (declare (not safe)) (##length _g72287_))))
          (cond ((let () (declare (not safe)) (##fx= _g72286_ 3))
                 (apply (lambda (_h69414_ _key69415_ _update69416_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h69414_
                             _key69415_
                             _update69416_)))
                        _g72287_))
                ((let () (declare (not safe)) (##fx= _g72286_ 4))
                 (apply (lambda (_h69420_
                                 _key69421_
                                 _update69422_
                                 _default69423_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h69420_
                             _key69421_
                             _update69422_
                             _default69423_)))
                        _g72287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g72287_))))))
    (define &hash-update!__%
      (lambda (_h69384_ _key69385_ _update69386_ _default69387_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h69384_
           _key69385_
           _update69386_
           _default69387_))))
    (define &hash-update!__0
      (lambda (_h69392_ _key69393_ _update69394_)
        (let ((_default69396_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h69392_
           _key69393_
           _update69394_
           _default69396_))))
    (define &hash-update!
      (lambda _g72289_
        (let ((_g72288_ (let () (declare (not safe)) (##length _g72289_))))
          (cond ((let () (declare (not safe)) (##fx= _g72288_ 3))
                 (apply (lambda (_h69392_ _key69393_ _update69394_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h69392_
                             _key69393_
                             _update69394_)))
                        _g72289_))
                ((let () (declare (not safe)) (##fx= _g72288_ 4))
                 (apply (lambda (_h69398_
                                 _key69399_
                                 _update69400_
                                 _default69401_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h69398_
                             _key69399_
                             _update69400_
                             _default69401_)))
                        _g72289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g72289_))))))
    (define hash-remove!
      (lambda (_h69378_ _key69379_)
        (let ((_h69381_
               (if (and (let () (declare (not safe)) (##structure? _h69378_))
                        (let ((__tmp72290
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69378_))))
                          (declare (not safe))
                          (eq? __tmp72290 HashTable::t)))
                   _h69378_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69378_)))))
          (declare (not safe))
          (&HashTable-delete! _h69381_ _key69379_))))
    (define &hash-remove!
      (lambda (_h69375_ _key69376_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h69375_ _key69376_))))
    (define hash-key?
      (lambda (_h69370_ _k69371_)
        (let ((_h69373_
               (if (and (let () (declare (not safe)) (##structure? _h69370_))
                        (let ((__tmp72291
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69370_))))
                          (declare (not safe))
                          (eq? __tmp72291 HashTable::t)))
                   _h69370_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69370_)))))
          (declare (not safe))
          (&hash-key? _h69373_ _k69371_))))
    (define &hash-key?
      (lambda (_h69367_ _k69368_)
        (let ((__tmp72292
               (let ((__tmp72293
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h69367_ _k69368_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp72293 absent-value))))
          (declare (not safe))
          (not __tmp72292))))
    (define hash->list
      (lambda (_h69363_)
        (let ((_h69365_
               (if (and (let () (declare (not safe)) (##structure? _h69363_))
                        (let ((__tmp72294
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69363_))))
                          (declare (not safe))
                          (eq? __tmp72294 HashTable::t)))
                   _h69363_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69363_)))))
          (declare (not safe))
          (&hash->list _h69365_))))
    (define &hash->list
      (lambda (_h69356_)
        (let ((_lst69358_ '()))
          (let ((__tmp72295
                 (lambda (_k69360_ _v69361_)
                   (set! _lst69358_
                         (let ((__tmp72296
                                (let ()
                                  (declare (not safe))
                                  (cons _k69360_ _v69361_))))
                           (declare (not safe))
                           (cons __tmp72296 _lst69358_))))))
            (declare (not safe))
            (&HashTable-for-each _h69356_ __tmp72295))
          _lst69358_)))
    (define hash->plist
      (lambda (_h69352_)
        (let ((_h69354_
               (if (and (let () (declare (not safe)) (##structure? _h69352_))
                        (let ((__tmp72297
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69352_))))
                          (declare (not safe))
                          (eq? __tmp72297 HashTable::t)))
                   _h69352_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69352_)))))
          (declare (not safe))
          (&hash->plist _h69354_))))
    (define &hash->plist
      (lambda (_h69345_)
        (let ((_lst69347_ '()))
          (let ((__tmp72298
                 (lambda (_k69349_ _v69350_)
                   (set! _lst69347_
                         (let ((__tmp72299
                                (let ()
                                  (declare (not safe))
                                  (cons _v69350_ _lst69347_))))
                           (declare (not safe))
                           (cons _k69349_ __tmp72299))))))
            (declare (not safe))
            (&HashTable-for-each _h69345_ __tmp72298))
          _lst69347_)))
    (define hash-for-each
      (lambda (_proc69342_ _h69343_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h69343_ _proc69342_))))
    (define hash-map
      (lambda (_proc69334_ _h69335_)
        (let ((_result69337_ '()))
          (let ((__tmp72300
                 (lambda (_k69339_ _v69340_)
                   (set! _result69337_
                         (let ((__tmp72301 (_proc69334_ _k69339_ _v69340_)))
                           (declare (not safe))
                           (cons __tmp72301 _result69337_))))))
            (declare (not safe))
            (HashTable-for-each _h69335_ __tmp72300))
          _result69337_)))
    (define hash-fold
      (lambda (_proc69325_ _iv69326_ _h69327_)
        (let ((_result69329_ _iv69326_))
          (let ((__tmp72302
                 (lambda (_k69331_ _v69332_)
                   (set! _result69329_
                         (_proc69325_ _k69331_ _v69332_ _result69329_)))))
            (declare (not safe))
            (HashTable-for-each _h69327_ __tmp72302))
          _result69329_)))
    (define hash-find__%
      (lambda (_proc69301_ _h69302_ _default-value69303_)
        (call-with-current-continuation
         (lambda (_return69305_)
           (let ((__tmp72303
                  (lambda (_k69307_ _v69308_)
                    (let ((_$e69310_ (_proc69301_ _k69307_ _v69308_)))
                      (if _$e69310_ (_return69305_ _$e69310_) '#!void)))))
             (declare (not safe))
             (HashTable-for-each _h69302_ __tmp72303))
           _default-value69303_))))
    (define hash-find__0
      (lambda (_proc69316_ _h69317_)
        (let ((_default-value69319_ '#f))
          (declare (not safe))
          (hash-find__% _proc69316_ _h69317_ _default-value69319_))))
    (define hash-find
      (lambda _g72305_
        (let ((_g72304_ (let () (declare (not safe)) (##length _g72305_))))
          (cond ((let () (declare (not safe)) (##fx= _g72304_ 2))
                 (apply (lambda (_proc69316_ _h69317_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc69316_ _h69317_)))
                        _g72305_))
                ((let () (declare (not safe)) (##fx= _g72304_ 3))
                 (apply (lambda (_proc69321_ _h69322_ _default-value69323_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc69321_
                             _h69322_
                             _default-value69323_)))
                        _g72305_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g72305_))))))
    (define hash-keys
      (lambda (_h69296_)
        (let ((_h69298_
               (if (and (let () (declare (not safe)) (##structure? _h69296_))
                        (let ((__tmp72306
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69296_))))
                          (declare (not safe))
                          (eq? __tmp72306 HashTable::t)))
                   _h69296_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69296_)))))
          (declare (not safe))
          (&hash-keys _h69298_))))
    (define &hash-keys
      (lambda (_h69289_)
        (let ((_result69291_ '()))
          (let ((__tmp72307
                 (lambda (_k69293_ _v69294_)
                   (set! _result69291_
                         (let ()
                           (declare (not safe))
                           (cons _k69293_ _result69291_))))))
            (declare (not safe))
            (&HashTable-for-each _h69289_ __tmp72307))
          _result69291_)))
    (define hash-values
      (lambda (_h69285_)
        (let ((_h69287_
               (if (and (let () (declare (not safe)) (##structure? _h69285_))
                        (let ((__tmp72308
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69285_))))
                          (declare (not safe))
                          (eq? __tmp72308 HashTable::t)))
                   _h69285_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69285_)))))
          (declare (not safe))
          (&hash-values _h69287_))))
    (define &hash-values
      (lambda (_h69278_)
        (let ((_result69280_ '()))
          (let ((__tmp72309
                 (lambda (_k69282_ _v69283_)
                   (set! _result69280_
                         (let ()
                           (declare (not safe))
                           (cons _v69283_ _result69280_))))))
            (declare (not safe))
            (&HashTable-for-each _h69278_ __tmp72309))
          _result69280_)))
    (define hash-copy
      (lambda (_h69274_)
        (let ((_h69276_
               (if (and (let () (declare (not safe)) (##structure? _h69274_))
                        (let ((__tmp72310
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69274_))))
                          (declare (not safe))
                          (eq? __tmp72310 HashTable::t)))
                   _h69274_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69274_)))))
          (declare (not safe))
          (&HashTable-copy _h69276_))))
    (define &hash-copy
      (lambda (_h69272_)
        (let () (declare (not safe)) (&HashTable-copy _h69272_))))
    (define hash-merge
      (lambda (_h69267_ . _rest69268_)
        (let ((_copy69270_ (let () (declare (not safe)) (hash-copy _h69267_))))
          (apply hash-merge! _copy69270_ _rest69268_)
          _copy69270_)))
    (define hash-merge!
      (lambda (_h69257_ . _rest69258_)
        (let ((_h69260_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h69257_))))
          (for-each
           (lambda (_hr69262_)
             (let ((__tmp72311
                    (lambda (_k69264_ _v69265_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h69260_ _k69264_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h69260_ _k69264_ _v69265_))))))
               (declare (not safe))
               (hash-for-each __tmp72311 _hr69262_)))
           _rest69258_)
          _h69260_)))))
