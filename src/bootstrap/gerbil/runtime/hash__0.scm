(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1709994213)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp73101 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp73101
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args73084_
        (apply make-instance UnboundKeyError::t _$args73084_)))
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
      (lambda (_where72958_ _message72959_ . _irritants72960_)
        (raise (let ((__obj73098
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj73098
                  _message72959_
                  'where:
                  _where72958_
                  'irritants:
                  _irritants72960_)
                 __obj73098))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp73106 (list interface-instance::t))
            (__tmp73102
             (let ((__tmp73105
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp73103
                    (let ((__tmp73104
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp73104 '()))))
               (declare (not safe))
               (cons __tmp73105 __tmp73103))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp73106
         '(ref set! update! delete! for-each length copy clear)
         __tmp73102
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
      (let ((__tmp73111 (list interface-instance::t))
            (__tmp73107
             (let ((__tmp73110
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp73108
                    (let ((__tmp73109
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp73109 '()))))
               (declare (not safe))
               (cons __tmp73110 __tmp73108))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp73111
         '(begin-read! end-read! begin-write! end-write!)
         __tmp73107
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
      (lambda (_table72951_ _key72952_ _update72953_ _default72954_)
        (let ((_result72956_
               (table-ref _table72951_ _key72952_ _default72954_)))
          (table-set!
           _table72951_
           _key72952_
           (_update72953_ _default72954_)))))
    (define gambit-table-for-each
      (lambda (_table72948_ _proc72949_)
        (table-for-each _proc72949_ _table72948_)))
    (define gambit-table-clear!
      (lambda (_table72946_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table72946_ '0 '5 '#f '#f))))
    (let ((__tmp73112 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73112 'ref table-ref))
    (let ((__tmp73113 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73113 'set! table-set!))
    (let ((__tmp73114 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73114 'update! gambit-table-update!))
    (let ((__tmp73115 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73115 'delete! table-set!))
    (let ((__tmp73116 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73116 'for-each gambit-table-for-each))
    (let ((__tmp73117 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73117 'length table-length))
    (let ((__tmp73118 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73118 'copy table-copy))
    (let ((__tmp73119 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73119 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots72928_ '(table count free hash test seed))
             (_slot-vector72930_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots72928_))))
             (_slot-table72937_
              (let ((_slot-table72932_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot72934_ _field72935_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72932_
                      _slot72934_
                      _field72935_))
                   (let ((__tmp73120 (symbol->keyword _slot72934_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72932_
                      __tmp73120
                      _field72935_)))
                 _slots72928_
                 (let ((__tmp73121 (length _slots72928_)))
                   (declare (not safe))
                   (iota__1 __tmp73121 '1)))
                _slot-table72932_))
             (_flags72939_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields72941_ '#())
             (_properties72943_
              (let ((__tmp73124
                     (let ((__tmp73125
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots72928_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp73125)))
                    (__tmp73122
                     (let ((__tmp73123
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp73123 '()))))
                (declare (not safe))
                (cons __tmp73124 __tmp73122))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags72939_
           __table::t
           _fields72941_
           '()
           _slot-vector72930_
           _slot-table72937_
           _properties72943_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_slots72910_ '(gcht immediate))
             (_slot-vector72912_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots72910_))))
             (_slot-table72919_
              (let ((_slot-table72914_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot72916_ _field72917_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72914_
                      _slot72916_
                      _field72917_))
                   (let ((__tmp73126 (symbol->keyword _slot72916_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72914_
                      __tmp73126
                      _field72917_)))
                 _slots72910_
                 (let ((__tmp73127 (length _slots72910_)))
                   (declare (not safe))
                   (iota__1 __tmp73127 '1)))
                _slot-table72914_))
             (_flags72921_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields72923_ '#())
             (_properties72925_
              (let ((__tmp73130
                     (let ((__tmp73131
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots72910_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp73131)))
                    (__tmp73128
                     (let ((__tmp73129
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp73129 '()))))
                (declare (not safe))
                (cons __tmp73130 __tmp73128))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'gc-hash-table
           _flags72921_
           __gc-table::t
           _fields72923_
           '()
           _slot-vector72912_
           _slot-table72919_
           _properties72925_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp73136 (list))
            (__tmp73132
             (let ((__tmp73135
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp73133
                    (let ((__tmp73134
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp73134 '()))))
               (declare (not safe))
               (cons __tmp73135 __tmp73133))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp73136
         '(table lock)
         __tmp73132
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args72907_
        (apply make-instance locked-hash-table::t _$args72907_)))
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
      (let ((__tmp73141 (list))
            (__tmp73137
             (let ((__tmp73140
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp73138
                    (let ((__tmp73139
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp73139 '()))))
               (declare (not safe))
               (cons __tmp73140 __tmp73138))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp73141
         '(table key-check)
         __tmp73137
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args72904_
        (apply make-instance checked-hash-table::t _$args72904_)))
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
      (let ((__tmp73144 (list hash-table::t))
            (__tmp73142
             (let ((__tmp73143
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp73143 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp73144
         '()
         __tmp73142
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args72901_
        (apply make-instance eq-hash-table::t _$args72901_)))
    (define eqv-hash-table::t
      (let ((__tmp73147 (list hash-table::t))
            (__tmp73145
             (let ((__tmp73146
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp73146 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp73147
         '()
         __tmp73145
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args72898_
        (apply make-instance eqv-hash-table::t _$args72898_)))
    (define symbol-hash-table::t
      (let ((__tmp73150 (list hash-table::t))
            (__tmp73148
             (let ((__tmp73149
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp73149 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp73150
         '()
         __tmp73148
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args72895_
        (apply make-instance symbol-hash-table::t _$args72895_)))
    (define string-hash-table::t
      (let ((__tmp73153 (list hash-table::t))
            (__tmp73151
             (let ((__tmp73152
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp73152 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp73153
         '()
         __tmp73151
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args72892_
        (apply make-instance string-hash-table::t _$args72892_)))
    (define immediate-hash-table::t
      (let ((__tmp73156 (list hash-table::t))
            (__tmp73154
             (let ((__tmp73155
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp73155 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table
         'hash-table
         __tmp73156
         '()
         __tmp73154
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _$args72889_
        (apply make-instance immediate-hash-table::t _$args72889_)))
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
      (lambda (_obj72887_)
        (if (let () (declare (not safe)) (##structure? _obj72887_))
            (let ((__tmp73157
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj72887_))))
              (declare (not safe))
              (eq? __tmp73157 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj72882_)
        (let ((_$e72884_
               (if (let () (declare (not safe)) (##structure? _obj72882_))
                   (let ((__tmp73158
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj72882_))))
                     (declare (not safe))
                     (eq? __tmp73158 HashTable::t))
                   '#f)))
          (if _$e72884_
              _$e72884_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj72882_))))))
    (define HashTable-ref
      (lambda (_h72876_ _key72877_ _default72878_)
        (let ((_h72880_
               (if (and (let () (declare (not safe)) (##structure? _h72876_))
                        (let ((__tmp73159
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72876_))))
                          (declare (not safe))
                          (eq? __tmp73159 HashTable::t)))
                   _h72876_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72876_)))))
          (declare (not safe))
          (&HashTable-ref _h72880_ _key72877_ _default72878_))))
    (define &HashTable-ref
      (lambda (_h72871_ _key72872_ _default72873_)
        (declare (not safe))
        ((##unchecked-structure-ref _h72871_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h72871_ '1 interface-instance::t '#f)
         _key72872_
         _default72873_)))
    (define HashTable-set!
      (lambda (_h72865_ _key72866_ _value72867_)
        (let ((_h72869_
               (if (and (let () (declare (not safe)) (##structure? _h72865_))
                        (let ((__tmp73160
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72865_))))
                          (declare (not safe))
                          (eq? __tmp73160 HashTable::t)))
                   _h72865_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72865_)))))
          (declare (not safe))
          (&HashTable-set! _h72869_ _key72866_ _value72867_))))
    (define &HashTable-set!
      (lambda (_h72860_ _key72861_ _value72862_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72860_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h72860_ '1 interface-instance::t '#f)
           _key72861_
           _value72862_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h72853_ _key72854_ _update72855_ _default72856_)
        (let ((_h72858_
               (if (and (let () (declare (not safe)) (##structure? _h72853_))
                        (let ((__tmp73161
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72853_))))
                          (declare (not safe))
                          (eq? __tmp73161 HashTable::t)))
                   _h72853_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72853_)))))
          (declare (not safe))
          (&HashTable-update!
           _h72858_
           _key72854_
           _update72855_
           _default72856_))))
    (define &HashTable-update!
      (lambda (_h72847_ _key72848_ _update72849_ _default72850_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72847_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h72847_ '1 interface-instance::t '#f)
           _key72848_
           _update72849_
           _default72850_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h72842_ _key72843_)
        (let ((_h72845_
               (if (and (let () (declare (not safe)) (##structure? _h72842_))
                        (let ((__tmp73162
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72842_))))
                          (declare (not safe))
                          (eq? __tmp73162 HashTable::t)))
                   _h72842_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72842_)))))
          (declare (not safe))
          (&HashTable-delete! _h72845_ _key72843_))))
    (define &HashTable-delete!
      (lambda (_h72838_ _key72839_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72838_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h72838_ '1 interface-instance::t '#f)
           _key72839_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h72833_ _proc72834_)
        (let ((_h72836_
               (if (and (let () (declare (not safe)) (##structure? _h72833_))
                        (let ((__tmp73163
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72833_))))
                          (declare (not safe))
                          (eq? __tmp73163 HashTable::t)))
                   _h72833_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72833_)))))
          (declare (not safe))
          (&HashTable-for-each _h72836_ _proc72834_))))
    (define &HashTable-for-each
      (lambda (_h72829_ _proc72830_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72829_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h72829_ '1 interface-instance::t '#f)
           _proc72830_)
          '#!void)))
    (define HashTable-length
      (lambda (_h72825_)
        (let ((_h72827_
               (if (and (let () (declare (not safe)) (##structure? _h72825_))
                        (let ((__tmp73164
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72825_))))
                          (declare (not safe))
                          (eq? __tmp73164 HashTable::t)))
                   _h72825_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72825_)))))
          (declare (not safe))
          (&HashTable-length _h72827_))))
    (define &HashTable-length
      (lambda (_h72822_)
        (declare (not safe))
        ((##unchecked-structure-ref _h72822_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h72822_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h72818_)
        (let ((_h72820_
               (if (and (let () (declare (not safe)) (##structure? _h72818_))
                        (let ((__tmp73165
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72818_))))
                          (declare (not safe))
                          (eq? __tmp73165 HashTable::t)))
                   _h72818_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72818_)))))
          (declare (not safe))
          (&HashTable-copy _h72820_))))
    (define &HashTable-copy
      (lambda (_h72815_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h72815_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h72815_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h72811_)
        (let ((_h72813_
               (if (and (let () (declare (not safe)) (##structure? _h72811_))
                        (let ((__tmp73166
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72811_))))
                          (declare (not safe))
                          (eq? __tmp73166 HashTable::t)))
                   _h72811_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72811_)))))
          (declare (not safe))
          (&HashTable-clear! _h72813_))))
    (define &HashTable-clear!
      (lambda (_h72808_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72808_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h72808_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl72805_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72805_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72805_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl72802_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72802_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72802_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl72799_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72799_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72799_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl72796_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72796_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72796_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref69815_
      (lambda (_self72783_ _key72785_ _default72786_)
        (let ((_h72788_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72783_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72790_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72783_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l72790_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h72788_ _key72785_ _default72786_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l72790_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref69815_
       '#f))
    (define _locked-hash-table::set!69817_
      (lambda (_self72647_ _key72649_ _value72650_)
        (let ((_h72652_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72647_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72654_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72647_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l72654_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h72652_ _key72649_ _value72650_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l72654_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!69817_
       '#f))
    (define _locked-hash-table::update!69819_
      (lambda (_self72510_ _key72512_ _update72513_ _default72514_)
        (let ((_h72516_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72510_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72518_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72510_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l72518_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h72516_
                _key72512_
                _update72513_
                _default72514_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l72518_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!69819_
       '#f))
    (define _locked-hash-table::delete!69821_
      (lambda (_self72375_ _key72377_)
        (let ((_h72379_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72375_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72381_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72375_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l72381_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h72379_ _key72377_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l72381_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!69821_
       '#f))
    (define _locked-hash-table::for-each69823_
      (lambda (_self72240_ _proc72242_)
        (let ((_h72244_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72240_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72246_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72240_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l72246_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h72244_ _proc72242_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l72246_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each69823_
       '#f))
    (define _locked-hash-table::length69825_
      (lambda (_self72106_)
        (let ((_h72109_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72106_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72111_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72106_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l72111_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h72109_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l72111_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length69825_
       '#f))
    (define _locked-hash-table::copy69827_
      (lambda (_self71972_)
        (let ((_h71975_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71972_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71977_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71972_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71977_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h71975_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71977_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy69827_
       '#f))
    (define _locked-hash-table::clear!69829_
      (lambda (_self71838_)
        (let ((_h71841_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71838_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71843_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71838_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71843_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h71841_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71843_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!69829_
       '#f))
    (let ((__tmp73167 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp73167 'begin-read! mutex-lock!))
    (let ((__tmp73168 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp73168 'end-read! mutex-unlock!))
    (let ((__tmp73169 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp73169 'begin-write! mutex-lock!))
    (let ((__tmp73170 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp73170 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref70107_
      (lambda (_self71702_ _key71703_ _default71704_)
        (let ((_h71706_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71702_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71708_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71702_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7171071712_)
             (if (_g7171071712_ _key71703_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71703_))))
           _key?71708_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h71706_ _key71703_ _default71704_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref70107_
       '#f))
    (define _checked-hash-table::set!70109_
      (lambda (_self71566_ _key71567_ _value71568_)
        (let ((_h71570_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71566_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71572_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71566_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7157471576_)
             (if (_g7157471576_ _key71567_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71567_))))
           _key?71572_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h71570_ _key71567_ _value71568_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!70109_
       '#f))
    (define _checked-hash-table::update!70111_
      (lambda (_self71431_ _key71432_ _update71433_ _default71434_)
        (let ((_h71436_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71431_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71438_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71431_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?71441_)
             (if (_key?71441_ _key71432_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71432_)))
             (if (let () (declare (not safe)) (procedure? _update71433_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update71433_))))
           _key?71438_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h71436_
             _key71432_
             _update71433_
             _default71434_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!70111_
       '#f))
    (define _checked-hash-table::delete!70113_
      (lambda (_self71296_ _key71297_)
        (let ((_h71299_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71296_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71301_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71296_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7130371305_)
             (if (_g7130371305_ _key71297_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71297_))))
           _key?71301_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h71299_ _key71297_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!70113_
       '#f))
    (define _checked-hash-table::for-each70115_
      (lambda (_self71164_ _proc71165_)
        (let ((_h71167_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71164_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71169_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71164_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g73171_)
             (if (let () (declare (not safe)) (procedure? _proc71165_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc71165_))))
           _key?71169_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h71167_ _proc71165_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each70115_
       '#f))
    (define _checked-hash-table::length70117_
      (lambda (_self71034_)
        (let ((_h71036_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71034_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71038_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71034_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h71036_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length70117_
       '#f))
    (define _checked-hash-table::copy70119_
      (lambda (_self70904_)
        (let ((_h70906_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70904_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70908_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70904_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h70906_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy70119_
       '#f))
    (define _checked-hash-table::clear!70121_
      (lambda (_self70774_)
        (let ((_h70776_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70774_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70778_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70774_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h70776_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!70121_
       '#f))
    (define make-generic-hash-table
      (lambda (_table70644_
               _count70645_
               _free70646_
               _hash70647_
               _test70648_
               _seed70649_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table70644_
           _count70645_
           _free70646_
           _hash70647_
           _test70648_
           _seed70649_))))
    (define make-hash-table__%
      (lambda (_g73172_
               _size-hint7048970499_
               _seed7049070501_
               _test7049170503_
               _hash7049270505_
               _lock7049370507_
               _check7049470509_
               _weak-keys7049570511_
               _weak-values7049670513_)
        (let* ((_size-hint70516_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint7048970499_ absent-value))
                    '#f
                    _size-hint7048970499_))
               (_seed70518_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed7049070501_ absent-value))
                    '#f
                    _seed7049070501_))
               (_test70520_
                (if (let ()
                      (declare (not safe))
                      (eq? _test7049170503_ absent-value))
                    equal?
                    _test7049170503_))
               (_hash70522_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash7049270505_ absent-value))
                    '#f
                    _hash7049270505_))
               (_lock70524_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock7049370507_ absent-value))
                    '#f
                    _lock7049370507_))
               (_check70526_
                (if (let ()
                      (declare (not safe))
                      (eq? _check7049470509_ absent-value))
                    '#f
                    _check7049470509_))
               (_weak-keys70528_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys7049570511_ absent-value))
                    '#f
                    _weak-keys7049570511_))
               (_weak-values70530_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values7049670513_ absent-value))
                    '#f
                    _weak-values7049670513_)))
          (letrec ((_table-seed70532_
                    (lambda ()
                      (if (let () (declare (not safe)) (fixnum? _seed70518_))
                          _seed70518_
                          (random-integer (macro-max-fixnum32)))))
                   (_wrap-lock70533_
                    (lambda (_ht70627_)
                      (if _lock70524_
                          (let ((__tmp73173
                                 (let ((__tmp73174
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock70524_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht70627_
                                    __tmp73174))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp73173))
                          _ht70627_)))
                   (_wrap-checked70534_
                    (lambda (_ht70624_ _implicit70625_)
                      (if _check70526_
                          (let ((__tmp73175
                                 (let ((__tmp73176
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check70526_))
                                            _check70526_
                                            _implicit70625_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht70624_
                                    __tmp73176))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp73175))
                          _ht70624_)))
                   (_make70535_
                    (lambda (_kons70612_ _key?70613_ _hash70614_ _test70615_)
                      (let* ((_size70617_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint70516_)))
                             (_table70619_
                              (make-vector _size70617_ (macro-unused-obj)))
                             (_ht70621_
                              (let ((__tmp73177
                                     (_kons70612_
                                      _table70619_
                                      '0
                                      (fxquotient _size70617_ '2)
                                      _hash70614_
                                      _test70615_
                                      (let ()
                                        (declare (not safe))
                                        (_table-seed70532_)))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp73177))))
                        (let ((__tmp73178
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock70533_ _ht70621_))))
                          (declare (not safe))
                          (_wrap-checked70534_ __tmp73178 _key?70613_)))))
                   (_make-gc-hash-table70536_
                    (lambda ()
                      (let* ((_ht70610_
                              (let ((__tmp73179
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _size-hint70516_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp73179)))
                             (__tmp73180
                              (let ()
                                (declare (not safe))
                                (_wrap-lock70533_ _ht70610_))))
                        (declare (not safe))
                        (_wrap-checked70534_ __tmp73180 true))))
                   (_make-gambit-table70537_
                    (lambda ()
                      (let* ((_size70594_
                              (let ((_$e70591_ _size-hint70516_))
                                (if _$e70591_ _$e70591_ (macro-absent-obj))))
                             (_test70599_
                              (let ((_$e70596_ _test70520_))
                                (if _$e70596_ _$e70596_ equal?)))
                             (_hash70604_
                              (let ((_$e70601_ _hash70522_))
                                (if _$e70601_
                                    _$e70601_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test70599_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test70599_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht70606_
                              (let ((__tmp73181
                                     (make-table
                                      'size:
                                      _size70594_
                                      'test:
                                      _test70599_
                                      'hash:
                                      _hash70604_
                                      'weak-keys:
                                      _weak-keys70528_
                                      'weak-values:
                                      _weak-values70530_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp73181))))
                        (let ((__tmp73182
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock70533_ _ht70606_))))
                          (declare (not safe))
                          (_wrap-checked70534_ __tmp73182 true))))))
            (if (or _weak-keys70528_ _weak-values70530_)
                (let () (declare (not safe)) (_make-gambit-table70537_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test70520_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test70520_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash70522_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash70522_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash70522_ eq-hash)))
                         (let () (declare (not safe)) (not _seed70518_)))
                    (let () (declare (not safe)) (_make-gc-hash-table70536_))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test70520_ eq?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test70520_ ##eq?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash70522_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash70522_ eq?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash70522_ eq-hash))))
                        (let ()
                          (declare (not safe))
                          (_make70535_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test70520_ eqv?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test70520_ ##eqv?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _hash70522_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash70522_ eqv?-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash70522_ eqv-hash))))
                            (let ()
                              (declare (not safe))
                              (_make70535_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test70520_ eq?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test70520_ ##eq?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash70522_ symbolic-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash70522_ ##symbol-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make70535_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (let ()
                                               (declare (not safe))
                                               (eq? _test70520_ eq?))
                                             (let ()
                                               (declare (not safe))
                                               (eq? _test70520_ ##eq?)))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash70522_ immediate-hash)))
                                    (let ()
                                      (declare (not safe))
                                      (_make70535_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (let ()
                                                   (declare (not safe))
                                                   (eq? _test70520_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test70520_ ##equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test70520_ string=?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test70520_
                                                        ##string=?)))
                                             (or (let ()
                                                   (declare (not safe))
                                                   (eq? _hash70522_
                                                        string-hash))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _hash70522_
                                                        ##string=?-hash))))
                                        (let ()
                                          (declare (not safe))
                                          (_make70535_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (let ()
                                                   (declare (not safe))
                                                   (eq? _test70520_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _hash70522_)))
                                            (let ()
                                              (declare (not safe))
                                              (_make70535_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp73184
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _test70520_))))
                                                  (declare (not safe))
                                                  (not __tmp73184))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _test70520_))
                                                (if (let ((__tmp73183
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _hash70522_))))
                                                      (declare (not safe))
                                                      (not __tmp73183))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _hash70522_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make70535_
                                                       make-generic-hash-table
                                                       true
                                                       _hash70522_
                                                       _test70520_))))))))))))))))
    (define make-hash-table__@
      (lambda (_keys7048870633_ . _args70635_)
        (apply make-hash-table__%
               _keys7048870633_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7048870633_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7048870633_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7048870633_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7048870633_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7048870633_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7048870633_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7048870633_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7048870633_
                  'weak-values:
                  absent-value))
               _args70635_)))
    (define make-hash-table
      (lambda _args7049770641_
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
               _args7049770641_)))
    (define make-hash-table-eq
      (lambda _args70485_ (apply make-hash-table 'test: eq? _args70485_)))
    (define make-hash-table-eqv
      (lambda _args70483_ (apply make-hash-table 'test: eqv? _args70483_)))
    (define make-hash-table-symbolic
      (lambda _args70481_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args70481_)))
    (define make-hash-table-string
      (lambda _args70479_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args70479_)))
    (define make-hash-table-immediate
      (lambda _args70477_
        (apply make-hash-table 'test: eq? 'hash: immediate-hash _args70477_)))
    (define list->hash-table
      (lambda (_lst70474_ . _args70475_)
        (let ((__tmp73185
               (apply make-hash-table 'size: (length _lst70474_) _args70475_)))
          (declare (not safe))
          (list->hash-table! _lst70474_ __tmp73185))))
    (define list->hash-table-eq
      (lambda (_lst70471_ . _args70472_)
        (let ((__tmp73186
               (apply make-hash-table-eq
                      'size:
                      (length _lst70471_)
                      _args70472_)))
          (declare (not safe))
          (list->hash-table! _lst70471_ __tmp73186))))
    (define list->hash-table-eqv
      (lambda (_lst70468_ . _args70469_)
        (let ((__tmp73187
               (apply make-hash-table-eqv
                      'size:
                      (length _lst70468_)
                      _args70469_)))
          (declare (not safe))
          (list->hash-table! _lst70468_ __tmp73187))))
    (define list->hash-table-symbolic
      (lambda (_lst70465_ . _args70466_)
        (let ((__tmp73188
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst70465_)
                      _args70466_)))
          (declare (not safe))
          (list->hash-table! _lst70465_ __tmp73188))))
    (define list->hash-table-string
      (lambda (_lst70462_ . _args70463_)
        (let ((__tmp73189
               (apply make-hash-table-string
                      'size:
                      (length _lst70462_)
                      _args70463_)))
          (declare (not safe))
          (list->hash-table! _lst70462_ __tmp73189))))
    (define list->hash-table!
      (lambda (_lst70429_ _h70430_)
        (for-each
         (lambda (_el70432_)
           (let* ((_el7043370440_ _el70432_)
                  (_E7043570444_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el7043370440_))))
                  (_K7043670450_
                   (lambda (_v70447_ _k70448_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h70430_ _k70448_ _v70447_)))))
             (if (let () (declare (not safe)) (##pair? _el7043370440_))
                 (let ((_hd7043770453_
                        (let () (declare (not safe)) (##car _el7043370440_)))
                       (_tl7043870455_
                        (let () (declare (not safe)) (##cdr _el7043370440_))))
                   (let* ((_k70458_ _hd7043770453_) (_v70460_ _tl7043870455_))
                     (declare (not safe))
                     (_K7043670450_ _v70460_ _k70458_)))
                 (let () (declare (not safe)) (_E7043570444_)))))
         _lst70429_)
        _h70430_))
    (define plist->hash-table
      (lambda (_lst70426_ . _args70427_)
        (let ((__tmp73190
               (apply make-hash-table 'size: (length _lst70426_) _args70427_)))
          (declare (not safe))
          (plist->hash-table! _lst70426_ __tmp73190))))
    (define plist->hash-table-eq
      (lambda (_lst70423_ . _args70424_)
        (let ((__tmp73191
               (apply make-hash-table-eq
                      'size:
                      (length _lst70423_)
                      _args70424_)))
          (declare (not safe))
          (plist->hash-table! _lst70423_ __tmp73191))))
    (define plist->hash-table-eqv
      (lambda (_lst70420_ . _args70421_)
        (let ((__tmp73192
               (apply make-hash-table-eqv
                      'size:
                      (length _lst70420_)
                      _args70421_)))
          (declare (not safe))
          (plist->hash-table! _lst70420_ __tmp73192))))
    (define plist->hash-table-symbolic
      (lambda (_lst70417_ . _args70418_)
        (let ((__tmp73193
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst70417_)
                      _args70418_)))
          (declare (not safe))
          (plist->hash-table! _lst70417_ __tmp73193))))
    (define plist->hash-table-string
      (lambda (_lst70414_ . _args70415_)
        (let ((__tmp73194
               (apply make-hash-table-string
                      'size:
                      (length _lst70414_)
                      _args70415_)))
          (declare (not safe))
          (plist->hash-table! _lst70414_ __tmp73194))))
    (define plist->hash-table!
      (lambda (_lst70354_ _h70355_)
        (let _loop70357_ ((_rest70359_ _lst70354_))
          (let* ((_rest7036070372_ _rest70359_)
                 (_else7036370380_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst70354_)))))
            (let ((_K7036670395_
                   (lambda (_rest70391_ _val70392_ _key70393_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h70355_ _key70393_ _val70392_))
                     (let () (declare (not safe)) (_loop70357_ _rest70391_))))
                  (_K7036570385_ (lambda () _h70355_)))
              (let ((_try-match7036270388_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest7036070372_))
                           (let () (declare (not safe)) (_K7036570385_))
                           (let () (declare (not safe)) (_else7036370380_))))))
                (if (let () (declare (not safe)) (##pair? _rest7036070372_))
                    (let ((_tl7036870400_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest7036070372_)))
                          (_hd7036770398_
                           (let ()
                             (declare (not safe))
                             (##car _rest7036070372_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl7036870400_))
                          (let ((_tl7037070407_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl7036870400_)))
                                (_hd7036970405_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl7036870400_))))
                            (let ((_key70403_ _hd7036770398_)
                                  (_val70410_ _hd7036970405_)
                                  (_rest70412_ _tl7037070407_))
                              (let ()
                                (declare (not safe))
                                (_K7036670395_
                                 _rest70412_
                                 _val70410_
                                 _key70403_))))
                          (let () (declare (not safe)) (_else7036370380_))))
                    (let ()
                      (declare (not safe))
                      (_try-match7036270388_)))))))))
    (define hash-length
      (lambda (_h70350_)
        (let ((_h70352_
               (if (and (let () (declare (not safe)) (##structure? _h70350_))
                        (let ((__tmp73195
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70350_))))
                          (declare (not safe))
                          (eq? __tmp73195 HashTable::t)))
                   _h70350_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70350_)))))
          (declare (not safe))
          (&HashTable-length _h70352_))))
    (define &hash-length
      (lambda (_h70348_)
        (let () (declare (not safe)) (&HashTable-length _h70348_))))
    (define hash-ref__%
      (lambda (_h70330_ _key70331_ _default70332_)
        (let ((_h70334_
               (if (and (let () (declare (not safe)) (##structure? _h70330_))
                        (let ((__tmp73196
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70330_))))
                          (declare (not safe))
                          (eq? __tmp73196 HashTable::t)))
                   _h70330_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70330_)))))
          (declare (not safe))
          (&hash-ref__% _h70334_ _key70331_ _default70332_))))
    (define hash-ref__0
      (lambda (_h70339_ _key70340_)
        (let ((_default70342_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h70339_ _key70340_ _default70342_))))
    (define hash-ref
      (lambda _g73198_
        (let ((_g73197_ (let () (declare (not safe)) (##length _g73198_))))
          (cond ((let () (declare (not safe)) (##fx= _g73197_ 2))
                 (apply (lambda (_h70339_ _key70340_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h70339_ _key70340_)))
                        _g73198_))
                ((let () (declare (not safe)) (##fx= _g73197_ 3))
                 (apply (lambda (_h70344_ _key70345_ _default70346_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h70344_ _key70345_ _default70346_)))
                        _g73198_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g73198_))))))
    (define &hash-ref__%
      (lambda (_h70311_ _key70312_ _default70313_)
        (let ((_result70315_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h70311_ _key70312_ _default70313_))))
          (if (let ((__tmp73199 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result70315_ __tmp73199))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h70311_
                 'key:
                 _key70312_))
              _result70315_))))
    (define &hash-ref__0
      (lambda (_h70320_ _key70321_)
        (let ((_default70323_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h70320_ _key70321_ _default70323_))))
    (define &hash-ref
      (lambda _g73201_
        (let ((_g73200_ (let () (declare (not safe)) (##length _g73201_))))
          (cond ((let () (declare (not safe)) (##fx= _g73200_ 2))
                 (apply (lambda (_h70320_ _key70321_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h70320_ _key70321_)))
                        _g73201_))
                ((let () (declare (not safe)) (##fx= _g73200_ 3))
                 (apply (lambda (_h70325_ _key70326_ _default70327_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h70325_ _key70326_ _default70327_)))
                        _g73201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g73201_))))))
    (define hash-get
      (lambda (_h70305_ _key70306_)
        (let ((_h70308_
               (if (and (let () (declare (not safe)) (##structure? _h70305_))
                        (let ((__tmp73202
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70305_))))
                          (declare (not safe))
                          (eq? __tmp73202 HashTable::t)))
                   _h70305_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70305_)))))
          (declare (not safe))
          (&hash-get _h70308_ _key70306_))))
    (define &hash-get
      (lambda (_h70302_ _key70303_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h70302_ _key70303_ '#f))))
    (define hash-put!
      (lambda (_h70296_ _key70297_ _value70298_)
        (let ((_h70300_
               (if (and (let () (declare (not safe)) (##structure? _h70296_))
                        (let ((__tmp73203
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70296_))))
                          (declare (not safe))
                          (eq? __tmp73203 HashTable::t)))
                   _h70296_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70296_)))))
          (declare (not safe))
          (&HashTable-set! _h70300_ _key70297_ _value70298_))))
    (define &hash-put!
      (lambda (_h70292_ _key70293_ _value70294_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h70292_ _key70293_ _value70294_))))
    (define hash-update!__%
      (lambda (_h70271_ _key70272_ _update70273_ _default70274_)
        (let ((_h70276_
               (if (and (let () (declare (not safe)) (##structure? _h70271_))
                        (let ((__tmp73204
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70271_))))
                          (declare (not safe))
                          (eq? __tmp73204 HashTable::t)))
                   _h70271_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70271_)))))
          (declare (not safe))
          (&HashTable-update!
           _h70276_
           _key70272_
           _update70273_
           _default70274_))))
    (define hash-update!__0
      (lambda (_h70281_ _key70282_ _update70283_)
        (let ((_default70285_ '#!void))
          (declare (not safe))
          (hash-update!__% _h70281_ _key70282_ _update70283_ _default70285_))))
    (define hash-update!
      (lambda _g73206_
        (let ((_g73205_ (let () (declare (not safe)) (##length _g73206_))))
          (cond ((let () (declare (not safe)) (##fx= _g73205_ 3))
                 (apply (lambda (_h70281_ _key70282_ _update70283_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h70281_
                             _key70282_
                             _update70283_)))
                        _g73206_))
                ((let () (declare (not safe)) (##fx= _g73205_ 4))
                 (apply (lambda (_h70287_
                                 _key70288_
                                 _update70289_
                                 _default70290_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h70287_
                             _key70288_
                             _update70289_
                             _default70290_)))
                        _g73206_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g73206_))))))
    (define &hash-update!__%
      (lambda (_h70251_ _key70252_ _update70253_ _default70254_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h70251_
           _key70252_
           _update70253_
           _default70254_))))
    (define &hash-update!__0
      (lambda (_h70259_ _key70260_ _update70261_)
        (let ((_default70263_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h70259_
           _key70260_
           _update70261_
           _default70263_))))
    (define &hash-update!
      (lambda _g73208_
        (let ((_g73207_ (let () (declare (not safe)) (##length _g73208_))))
          (cond ((let () (declare (not safe)) (##fx= _g73207_ 3))
                 (apply (lambda (_h70259_ _key70260_ _update70261_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h70259_
                             _key70260_
                             _update70261_)))
                        _g73208_))
                ((let () (declare (not safe)) (##fx= _g73207_ 4))
                 (apply (lambda (_h70265_
                                 _key70266_
                                 _update70267_
                                 _default70268_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h70265_
                             _key70266_
                             _update70267_
                             _default70268_)))
                        _g73208_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g73208_))))))
    (define hash-remove!
      (lambda (_h70245_ _key70246_)
        (let ((_h70248_
               (if (and (let () (declare (not safe)) (##structure? _h70245_))
                        (let ((__tmp73209
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70245_))))
                          (declare (not safe))
                          (eq? __tmp73209 HashTable::t)))
                   _h70245_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70245_)))))
          (declare (not safe))
          (&HashTable-delete! _h70248_ _key70246_))))
    (define &hash-remove!
      (lambda (_h70242_ _key70243_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h70242_ _key70243_))))
    (define hash-key?
      (lambda (_h70237_ _k70238_)
        (let ((_h70240_
               (if (and (let () (declare (not safe)) (##structure? _h70237_))
                        (let ((__tmp73210
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70237_))))
                          (declare (not safe))
                          (eq? __tmp73210 HashTable::t)))
                   _h70237_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70237_)))))
          (declare (not safe))
          (&hash-key? _h70240_ _k70238_))))
    (define &hash-key?
      (lambda (_h70234_ _k70235_)
        (let ((__tmp73211
               (let ((__tmp73212
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h70234_ _k70235_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp73212 absent-value))))
          (declare (not safe))
          (not __tmp73211))))
    (define hash->list
      (lambda (_h70230_)
        (let ((_h70232_
               (if (and (let () (declare (not safe)) (##structure? _h70230_))
                        (let ((__tmp73213
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70230_))))
                          (declare (not safe))
                          (eq? __tmp73213 HashTable::t)))
                   _h70230_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70230_)))))
          (declare (not safe))
          (&hash->list _h70232_))))
    (define &hash->list
      (lambda (_h70223_)
        (let ((_lst70225_ '()))
          (let ((__tmp73214
                 (lambda (_k70227_ _v70228_)
                   (set! _lst70225_
                         (let ((__tmp73215
                                (let ()
                                  (declare (not safe))
                                  (cons _k70227_ _v70228_))))
                           (declare (not safe))
                           (cons __tmp73215 _lst70225_))))))
            (declare (not safe))
            (&HashTable-for-each _h70223_ __tmp73214))
          _lst70225_)))
    (define hash->plist
      (lambda (_h70219_)
        (let ((_h70221_
               (if (and (let () (declare (not safe)) (##structure? _h70219_))
                        (let ((__tmp73216
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70219_))))
                          (declare (not safe))
                          (eq? __tmp73216 HashTable::t)))
                   _h70219_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70219_)))))
          (declare (not safe))
          (&hash->plist _h70221_))))
    (define &hash->plist
      (lambda (_h70212_)
        (let ((_lst70214_ '()))
          (let ((__tmp73217
                 (lambda (_k70216_ _v70217_)
                   (set! _lst70214_
                         (let ((__tmp73218
                                (let ()
                                  (declare (not safe))
                                  (cons _v70217_ _lst70214_))))
                           (declare (not safe))
                           (cons _k70216_ __tmp73218))))))
            (declare (not safe))
            (&HashTable-for-each _h70212_ __tmp73217))
          _lst70214_)))
    (define hash-for-each
      (lambda (_proc70209_ _h70210_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h70210_ _proc70209_))))
    (define hash-map
      (lambda (_proc70201_ _h70202_)
        (let ((_result70204_ '()))
          (let ((__tmp73219
                 (lambda (_k70206_ _v70207_)
                   (set! _result70204_
                         (let ((__tmp73220 (_proc70201_ _k70206_ _v70207_)))
                           (declare (not safe))
                           (cons __tmp73220 _result70204_))))))
            (declare (not safe))
            (HashTable-for-each _h70202_ __tmp73219))
          _result70204_)))
    (define hash-fold
      (lambda (_proc70192_ _iv70193_ _h70194_)
        (let ((_result70196_ _iv70193_))
          (let ((__tmp73221
                 (lambda (_k70198_ _v70199_)
                   (set! _result70196_
                         (_proc70192_ _k70198_ _v70199_ _result70196_)))))
            (declare (not safe))
            (HashTable-for-each _h70194_ __tmp73221))
          _result70196_)))
    (define hash-find__%
      (lambda (_proc70168_ _h70169_ _default-value70170_)
        (call-with-current-continuation
         (lambda (_return70172_)
           (let ((__tmp73222
                  (lambda (_k70174_ _v70175_)
                    (let ((_$e70177_ (_proc70168_ _k70174_ _v70175_)))
                      (if _$e70177_ (_return70172_ _$e70177_) '#!void)))))
             (declare (not safe))
             (HashTable-for-each _h70169_ __tmp73222))
           _default-value70170_))))
    (define hash-find__0
      (lambda (_proc70183_ _h70184_)
        (let ((_default-value70186_ '#f))
          (declare (not safe))
          (hash-find__% _proc70183_ _h70184_ _default-value70186_))))
    (define hash-find
      (lambda _g73224_
        (let ((_g73223_ (let () (declare (not safe)) (##length _g73224_))))
          (cond ((let () (declare (not safe)) (##fx= _g73223_ 2))
                 (apply (lambda (_proc70183_ _h70184_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc70183_ _h70184_)))
                        _g73224_))
                ((let () (declare (not safe)) (##fx= _g73223_ 3))
                 (apply (lambda (_proc70188_ _h70189_ _default-value70190_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc70188_
                             _h70189_
                             _default-value70190_)))
                        _g73224_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g73224_))))))
    (define hash-keys
      (lambda (_h70163_)
        (let ((_h70165_
               (if (and (let () (declare (not safe)) (##structure? _h70163_))
                        (let ((__tmp73225
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70163_))))
                          (declare (not safe))
                          (eq? __tmp73225 HashTable::t)))
                   _h70163_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70163_)))))
          (declare (not safe))
          (&hash-keys _h70165_))))
    (define &hash-keys
      (lambda (_h70156_)
        (let ((_result70158_ '()))
          (let ((__tmp73226
                 (lambda (_k70160_ _v70161_)
                   (set! _result70158_
                         (let ()
                           (declare (not safe))
                           (cons _k70160_ _result70158_))))))
            (declare (not safe))
            (&HashTable-for-each _h70156_ __tmp73226))
          _result70158_)))
    (define hash-values
      (lambda (_h70152_)
        (let ((_h70154_
               (if (and (let () (declare (not safe)) (##structure? _h70152_))
                        (let ((__tmp73227
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70152_))))
                          (declare (not safe))
                          (eq? __tmp73227 HashTable::t)))
                   _h70152_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70152_)))))
          (declare (not safe))
          (&hash-values _h70154_))))
    (define &hash-values
      (lambda (_h70145_)
        (let ((_result70147_ '()))
          (let ((__tmp73228
                 (lambda (_k70149_ _v70150_)
                   (set! _result70147_
                         (let ()
                           (declare (not safe))
                           (cons _v70150_ _result70147_))))))
            (declare (not safe))
            (&HashTable-for-each _h70145_ __tmp73228))
          _result70147_)))
    (define hash-copy
      (lambda (_h70141_)
        (let ((_h70143_
               (if (and (let () (declare (not safe)) (##structure? _h70141_))
                        (let ((__tmp73229
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70141_))))
                          (declare (not safe))
                          (eq? __tmp73229 HashTable::t)))
                   _h70141_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70141_)))))
          (declare (not safe))
          (&HashTable-copy _h70143_))))
    (define &hash-copy
      (lambda (_h70139_)
        (let () (declare (not safe)) (&HashTable-copy _h70139_))))
    (define hash-merge
      (lambda (_h70134_ . _rest70135_)
        (let ((_copy70137_ (let () (declare (not safe)) (hash-copy _h70134_))))
          (apply hash-merge! _copy70137_ _rest70135_)
          _copy70137_)))
    (define hash-merge!
      (lambda (_h70124_ . _rest70125_)
        (let ((_h70127_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h70124_))))
          (for-each
           (lambda (_hr70129_)
             (let ((__tmp73230
                    (lambda (_k70131_ _v70132_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h70127_ _k70131_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h70127_ _k70131_ _v70132_))))))
               (declare (not safe))
               (hash-for-each __tmp73230 _hr70129_)))
           _rest70125_)
          _h70127_)))))
