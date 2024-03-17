(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1710677337)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp73929 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp73929
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args73912_
        (apply make-instance UnboundKeyError::t _$args73912_)))
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
      (lambda (_where73786_ _message73787_ . _irritants73788_)
        (let ((__tmp73930
               (let ((__obj73926
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj73926
                  _message73787_
                  'where:
                  _where73786_
                  'irritants:
                  _irritants73788_)
                 __obj73926)))
          (declare (not safe))
          (raise __tmp73930))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp73935 (list interface-instance::t))
            (__tmp73931
             (let ((__tmp73934
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp73932
                    (let ((__tmp73933
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp73933 '()))))
               (declare (not safe))
               (cons __tmp73934 __tmp73932))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp73935
         '(ref set! update! delete! for-each length copy clear!)
         __tmp73931
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
      (let ((__tmp73940 (list interface-instance::t))
            (__tmp73936
             (let ((__tmp73939
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp73937
                    (let ((__tmp73938
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp73938 '()))))
               (declare (not safe))
               (cons __tmp73939 __tmp73937))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp73940
         '(begin-read! end-read! begin-write! end-write!)
         __tmp73936
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
      (lambda (_table73779_ _key73780_ _update73781_ _default73782_)
        (let ((_result73784_
               (table-ref _table73779_ _key73780_ _default73782_)))
          (table-set!
           _table73779_
           _key73780_
           (_update73781_ _default73782_)))))
    (define gambit-table-for-each
      (lambda (_table73776_ _proc73777_)
        (table-for-each _proc73777_ _table73776_)))
    (define gambit-table-clear!
      (lambda (_table73774_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table73774_ '0 '5 '#f '#f))))
    (let ((__tmp73941 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73941 'ref table-ref))
    (let ((__tmp73942 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73942 'set! table-set!))
    (let ((__tmp73943 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73943 'update! gambit-table-update!))
    (let ((__tmp73944 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73944 'delete! table-set!))
    (let ((__tmp73945 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73945 'for-each gambit-table-for-each))
    (let ((__tmp73946 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73946 'length table-length))
    (let ((__tmp73947 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73947 'copy table-copy))
    (let ((__tmp73948 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73948 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots73756_ '(table count free hash test seed))
             (_slot-vector73758_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots73756_))))
             (_slot-table73765_
              (let ((_slot-table73760_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot73762_ _field73763_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table73760_
                      _slot73762_
                      _field73763_))
                   (let ((__tmp73949
                          (let ()
                            (declare (not safe))
                            (symbol->keyword _slot73762_))))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table73760_
                      __tmp73949
                      _field73763_)))
                 _slots73756_
                 (iota (length _slots73756_) '1))
                _slot-table73760_))
             (_flags73767_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields73769_ '#())
             (_properties73771_
              (let ((__tmp73952
                     (let ((__tmp73953
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots73756_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp73953)))
                    (__tmp73950
                     (let ((__tmp73951
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp73951 '()))))
                (declare (not safe))
                (cons __tmp73952 __tmp73950))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags73767_
           __table::t
           _fields73769_
           '()
           _slot-vector73758_
           _slot-table73765_
           _properties73771_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_slots73738_ '(gcht immediate))
             (_slot-vector73740_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots73738_))))
             (_slot-table73747_
              (let ((_slot-table73742_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot73744_ _field73745_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table73742_
                      _slot73744_
                      _field73745_))
                   (let ((__tmp73954
                          (let ()
                            (declare (not safe))
                            (symbol->keyword _slot73744_))))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table73742_
                      __tmp73954
                      _field73745_)))
                 _slots73738_
                 (iota (length _slots73738_) '1))
                _slot-table73742_))
             (_flags73749_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields73751_ '#())
             (_properties73753_
              (let ((__tmp73957
                     (let ((__tmp73958
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots73738_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp73958)))
                    (__tmp73955
                     (let ((__tmp73956
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp73956 '()))))
                (declare (not safe))
                (cons __tmp73957 __tmp73955))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'gc-hash-table
           _flags73749_
           __gc-table::t
           _fields73751_
           '()
           _slot-vector73740_
           _slot-table73747_
           _properties73753_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp73963 (list))
            (__tmp73959
             (let ((__tmp73962
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp73960
                    (let ((__tmp73961
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp73961 '()))))
               (declare (not safe))
               (cons __tmp73962 __tmp73960))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp73963
         '(table lock)
         __tmp73959
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args73735_
        (apply make-instance locked-hash-table::t _$args73735_)))
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
      (let ((__tmp73968 (list))
            (__tmp73964
             (let ((__tmp73967
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp73965
                    (let ((__tmp73966
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp73966 '()))))
               (declare (not safe))
               (cons __tmp73967 __tmp73965))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp73968
         '(table key-check)
         __tmp73964
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args73732_
        (apply make-instance checked-hash-table::t _$args73732_)))
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
      (let ((__tmp73971 (list hash-table::t))
            (__tmp73969
             (let ((__tmp73970
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp73970 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp73971
         '()
         __tmp73969
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args73729_
        (apply make-instance eq-hash-table::t _$args73729_)))
    (define eqv-hash-table::t
      (let ((__tmp73974 (list hash-table::t))
            (__tmp73972
             (let ((__tmp73973
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp73973 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp73974
         '()
         __tmp73972
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args73726_
        (apply make-instance eqv-hash-table::t _$args73726_)))
    (define symbol-hash-table::t
      (let ((__tmp73977 (list hash-table::t))
            (__tmp73975
             (let ((__tmp73976
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp73976 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp73977
         '()
         __tmp73975
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args73723_
        (apply make-instance symbol-hash-table::t _$args73723_)))
    (define string-hash-table::t
      (let ((__tmp73980 (list hash-table::t))
            (__tmp73978
             (let ((__tmp73979
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp73979 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp73980
         '()
         __tmp73978
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args73720_
        (apply make-instance string-hash-table::t _$args73720_)))
    (define immediate-hash-table::t
      (let ((__tmp73983 (list hash-table::t))
            (__tmp73981
             (let ((__tmp73982
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp73982 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp73983
         '()
         __tmp73981
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _$args73717_
        (apply make-instance immediate-hash-table::t _$args73717_)))
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
      (lambda (_obj73715_)
        (if (let () (declare (not safe)) (##structure? _obj73715_))
            (let ((__tmp73984
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj73715_))))
              (declare (not safe))
              (eq? __tmp73984 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj73710_)
        (let ((_$e73712_
               (if (let () (declare (not safe)) (##structure? _obj73710_))
                   (let ((__tmp73985
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj73710_))))
                     (declare (not safe))
                     (eq? __tmp73985 HashTable::t))
                   '#f)))
          (if _$e73712_
              _$e73712_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj73710_))))))
    (define HashTable-ref
      (lambda (_h73704_ _key73705_ _default73706_)
        (let ((_h73708_
               (if (and (let () (declare (not safe)) (##structure? _h73704_))
                        (let ((__tmp73986
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h73704_))))
                          (declare (not safe))
                          (eq? __tmp73986 HashTable::t)))
                   _h73704_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h73704_)))))
          (declare (not safe))
          (&HashTable-ref _h73708_ _key73705_ _default73706_))))
    (define &HashTable-ref
      (lambda (_h73699_ _key73700_ _default73701_)
        (declare (not safe))
        ((##unchecked-structure-ref _h73699_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h73699_ '1 interface-instance::t '#f)
         _key73700_
         _default73701_)))
    (define HashTable-set!
      (lambda (_h73693_ _key73694_ _value73695_)
        (let ((_h73697_
               (if (and (let () (declare (not safe)) (##structure? _h73693_))
                        (let ((__tmp73987
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h73693_))))
                          (declare (not safe))
                          (eq? __tmp73987 HashTable::t)))
                   _h73693_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h73693_)))))
          (declare (not safe))
          (&HashTable-set! _h73697_ _key73694_ _value73695_))))
    (define &HashTable-set!
      (lambda (_h73688_ _key73689_ _value73690_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h73688_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h73688_ '1 interface-instance::t '#f)
           _key73689_
           _value73690_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h73681_ _key73682_ _update73683_ _default73684_)
        (let ((_h73686_
               (if (and (let () (declare (not safe)) (##structure? _h73681_))
                        (let ((__tmp73988
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h73681_))))
                          (declare (not safe))
                          (eq? __tmp73988 HashTable::t)))
                   _h73681_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h73681_)))))
          (declare (not safe))
          (&HashTable-update!
           _h73686_
           _key73682_
           _update73683_
           _default73684_))))
    (define &HashTable-update!
      (lambda (_h73675_ _key73676_ _update73677_ _default73678_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h73675_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h73675_ '1 interface-instance::t '#f)
           _key73676_
           _update73677_
           _default73678_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h73670_ _key73671_)
        (let ((_h73673_
               (if (and (let () (declare (not safe)) (##structure? _h73670_))
                        (let ((__tmp73989
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h73670_))))
                          (declare (not safe))
                          (eq? __tmp73989 HashTable::t)))
                   _h73670_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h73670_)))))
          (declare (not safe))
          (&HashTable-delete! _h73673_ _key73671_))))
    (define &HashTable-delete!
      (lambda (_h73666_ _key73667_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h73666_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h73666_ '1 interface-instance::t '#f)
           _key73667_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h73661_ _proc73662_)
        (let ((_h73664_
               (if (and (let () (declare (not safe)) (##structure? _h73661_))
                        (let ((__tmp73990
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h73661_))))
                          (declare (not safe))
                          (eq? __tmp73990 HashTable::t)))
                   _h73661_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h73661_)))))
          (declare (not safe))
          (&HashTable-for-each _h73664_ _proc73662_))))
    (define &HashTable-for-each
      (lambda (_h73657_ _proc73658_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h73657_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h73657_ '1 interface-instance::t '#f)
           _proc73658_)
          '#!void)))
    (define HashTable-length
      (lambda (_h73653_)
        (let ((_h73655_
               (if (and (let () (declare (not safe)) (##structure? _h73653_))
                        (let ((__tmp73991
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h73653_))))
                          (declare (not safe))
                          (eq? __tmp73991 HashTable::t)))
                   _h73653_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h73653_)))))
          (declare (not safe))
          (&HashTable-length _h73655_))))
    (define &HashTable-length
      (lambda (_h73650_)
        (declare (not safe))
        ((##unchecked-structure-ref _h73650_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h73650_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h73646_)
        (let ((_h73648_
               (if (and (let () (declare (not safe)) (##structure? _h73646_))
                        (let ((__tmp73992
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h73646_))))
                          (declare (not safe))
                          (eq? __tmp73992 HashTable::t)))
                   _h73646_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h73646_)))))
          (declare (not safe))
          (&HashTable-copy _h73648_))))
    (define &HashTable-copy
      (lambda (_h73643_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h73643_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h73643_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h73639_)
        (let ((_h73641_
               (if (and (let () (declare (not safe)) (##structure? _h73639_))
                        (let ((__tmp73993
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h73639_))))
                          (declare (not safe))
                          (eq? __tmp73993 HashTable::t)))
                   _h73639_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h73639_)))))
          (declare (not safe))
          (&HashTable-clear! _h73641_))))
    (define &HashTable-clear!
      (lambda (_h73636_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h73636_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h73636_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl73633_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl73633_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl73633_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl73630_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl73630_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl73630_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl73627_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl73627_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl73627_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl73624_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl73624_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl73624_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref70637_
      (lambda (_self73611_ _key73613_ _default73614_)
        (let ((_h73616_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73611_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73618_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73611_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l73618_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h73616_ _key73613_ _default73614_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l73618_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref70637_
       '#f))
    (define _locked-hash-table::set!70639_
      (lambda (_self73475_ _key73477_ _value73478_)
        (let ((_h73480_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73475_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73482_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73475_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73482_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h73480_ _key73477_ _value73478_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73482_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!70639_
       '#f))
    (define _locked-hash-table::update!70641_
      (lambda (_self73338_ _key73340_ _update73341_ _default73342_)
        (let ((_h73344_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73338_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73346_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73338_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73346_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h73344_
                _key73340_
                _update73341_
                _default73342_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73346_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!70641_
       '#f))
    (define _locked-hash-table::delete!70643_
      (lambda (_self73203_ _key73205_)
        (let ((_h73207_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73203_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73209_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73203_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73209_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h73207_ _key73205_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73209_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!70643_
       '#f))
    (define _locked-hash-table::for-each70645_
      (lambda (_self73068_ _proc73070_)
        (let ((_h73072_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73068_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73074_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73068_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l73074_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h73072_ _proc73070_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l73074_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each70645_
       '#f))
    (define _locked-hash-table::length70647_
      (lambda (_self72934_)
        (let ((_h72937_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72934_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72939_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72934_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l72939_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h72937_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l72939_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length70647_
       '#f))
    (define _locked-hash-table::copy70649_
      (lambda (_self72800_)
        (let ((_h72803_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72800_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72805_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72800_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l72805_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h72803_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l72805_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy70649_
       '#f))
    (define _locked-hash-table::clear!70651_
      (lambda (_self72666_)
        (let ((_h72669_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72666_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72671_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72666_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l72671_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h72669_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l72671_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!70651_
       '#f))
    (let ((__tmp73994 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp73994 'begin-read! mutex-lock!))
    (let ((__tmp73995 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp73995 'end-read! mutex-unlock!))
    (let ((__tmp73996 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp73996 'begin-write! mutex-lock!))
    (let ((__tmp73997 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp73997 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref70929_
      (lambda (_self72530_ _key72531_ _default72532_)
        (let ((_h72534_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72530_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72536_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72530_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7253872540_)
             (if (_g7253872540_ _key72531_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72531_))))
           _key?72536_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h72534_ _key72531_ _default72532_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref70929_
       '#f))
    (define _checked-hash-table::set!70931_
      (lambda (_self72394_ _key72395_ _value72396_)
        (let ((_h72398_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72394_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72400_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72394_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7240272404_)
             (if (_g7240272404_ _key72395_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72395_))))
           _key?72400_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h72398_ _key72395_ _value72396_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!70931_
       '#f))
    (define _checked-hash-table::update!70933_
      (lambda (_self72259_ _key72260_ _update72261_ _default72262_)
        (let ((_h72264_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72259_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72266_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72259_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?72269_)
             (if (_key?72269_ _key72260_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72260_)))
             (if (let () (declare (not safe)) (procedure? _update72261_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update72261_))))
           _key?72266_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h72264_
             _key72260_
             _update72261_
             _default72262_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!70933_
       '#f))
    (define _checked-hash-table::delete!70935_
      (lambda (_self72124_ _key72125_)
        (let ((_h72127_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72124_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72129_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72124_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7213172133_)
             (if (_g7213172133_ _key72125_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72125_))))
           _key?72129_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h72127_ _key72125_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!70935_
       '#f))
    (define _checked-hash-table::for-each70937_
      (lambda (_self71992_ _proc71993_)
        (let ((_h71995_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71992_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71997_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71992_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g73998_)
             (if (let () (declare (not safe)) (procedure? _proc71993_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc71993_))))
           _key?71997_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h71995_ _proc71993_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each70937_
       '#f))
    (define _checked-hash-table::length70939_
      (lambda (_self71862_)
        (let ((_h71864_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71862_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71866_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71862_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h71864_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length70939_
       '#f))
    (define _checked-hash-table::copy70941_
      (lambda (_self71732_)
        (let ((_h71734_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71732_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71736_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71732_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h71734_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy70941_
       '#f))
    (define _checked-hash-table::clear!70943_
      (lambda (_self71602_)
        (let ((_h71604_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71602_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71606_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71602_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h71604_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!70943_
       '#f))
    (define make-generic-hash-table
      (lambda (_table71472_
               _count71473_
               _free71474_
               _hash71475_
               _test71476_
               _seed71477_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table71472_
           _count71473_
           _free71474_
           _hash71475_
           _test71476_
           _seed71477_))))
    (define make-hash-table__%
      (lambda (_g73999_
               _size-hint7131771327_
               _seed7131871329_
               _test7131971331_
               _hash7132071333_
               _lock7132171335_
               _check7132271337_
               _weak-keys7132371339_
               _weak-values7132471341_)
        (let* ((_size-hint71344_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint7131771327_ absent-value))
                    '#f
                    _size-hint7131771327_))
               (_seed71346_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed7131871329_ absent-value))
                    '#f
                    _seed7131871329_))
               (_test71348_
                (if (let ()
                      (declare (not safe))
                      (eq? _test7131971331_ absent-value))
                    equal?
                    _test7131971331_))
               (_hash71350_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash7132071333_ absent-value))
                    '#f
                    _hash7132071333_))
               (_lock71352_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock7132171335_ absent-value))
                    '#f
                    _lock7132171335_))
               (_check71354_
                (if (let ()
                      (declare (not safe))
                      (eq? _check7132271337_ absent-value))
                    '#f
                    _check7132271337_))
               (_weak-keys71356_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys7132371339_ absent-value))
                    '#f
                    _weak-keys7132371339_))
               (_weak-values71358_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values7132471341_ absent-value))
                    '#f
                    _weak-values7132471341_)))
          (letrec ((_table-seed71360_
                    (lambda ()
                      (if (let () (declare (not safe)) (fixnum? _seed71346_))
                          _seed71346_
                          (random-integer (macro-max-fixnum32)))))
                   (_wrap-lock71361_
                    (lambda (_ht71455_)
                      (if _lock71352_
                          (let ((__tmp74000
                                 (let ((__tmp74001
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock71352_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht71455_
                                    __tmp74001))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp74000))
                          _ht71455_)))
                   (_wrap-checked71362_
                    (lambda (_ht71452_ _implicit71453_)
                      (if _check71354_
                          (let ((__tmp74002
                                 (let ((__tmp74003
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check71354_))
                                            _check71354_
                                            _implicit71453_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht71452_
                                    __tmp74003))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp74002))
                          _ht71452_)))
                   (_make71363_
                    (lambda (_kons71440_ _key?71441_ _hash71442_ _test71443_)
                      (let* ((_size71445_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint71344_)))
                             (_table71447_
                              (make-vector _size71445_ (macro-unused-obj)))
                             (_ht71449_
                              (let ((__tmp74004
                                     (_kons71440_
                                      _table71447_
                                      '0
                                      (fxquotient _size71445_ '2)
                                      _hash71442_
                                      _test71443_
                                      (let ()
                                        (declare (not safe))
                                        (_table-seed71360_)))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp74004))))
                        (let ((__tmp74005
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock71361_ _ht71449_))))
                          (declare (not safe))
                          (_wrap-checked71362_ __tmp74005 _key?71441_)))))
                   (_make-gc-hash-table71364_
                    (lambda ()
                      (let* ((_ht71438_
                              (let ((__tmp74006
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _size-hint71344_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp74006)))
                             (__tmp74007
                              (let ()
                                (declare (not safe))
                                (_wrap-lock71361_ _ht71438_))))
                        (declare (not safe))
                        (_wrap-checked71362_ __tmp74007 true))))
                   (_make-gambit-table71365_
                    (lambda ()
                      (let* ((_size71422_
                              (let ((_$e71419_ _size-hint71344_))
                                (if _$e71419_ _$e71419_ (macro-absent-obj))))
                             (_test71427_
                              (let ((_$e71424_ _test71348_))
                                (if _$e71424_ _$e71424_ equal?)))
                             (_hash71432_
                              (let ((_$e71429_ _hash71350_))
                                (if _$e71429_
                                    _$e71429_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test71427_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test71427_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht71434_
                              (let ((__tmp74008
                                     (make-table
                                      'size:
                                      _size71422_
                                      'test:
                                      _test71427_
                                      'hash:
                                      _hash71432_
                                      'weak-keys:
                                      _weak-keys71356_
                                      'weak-values:
                                      _weak-values71358_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp74008))))
                        (let ((__tmp74009
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock71361_ _ht71434_))))
                          (declare (not safe))
                          (_wrap-checked71362_ __tmp74009 true))))))
            (if (or _weak-keys71356_ _weak-values71358_)
                (let () (declare (not safe)) (_make-gambit-table71365_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test71348_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test71348_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash71350_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash71350_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash71350_ eq-hash)))
                         (let () (declare (not safe)) (not _seed71346_)))
                    (let () (declare (not safe)) (_make-gc-hash-table71364_))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test71348_ eq?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test71348_ ##eq?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash71350_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash71350_ eq?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash71350_ eq-hash))))
                        (let ()
                          (declare (not safe))
                          (_make71363_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test71348_ eqv?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test71348_ ##eqv?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _hash71350_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash71350_ eqv?-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash71350_ eqv-hash))))
                            (let ()
                              (declare (not safe))
                              (_make71363_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test71348_ eq?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test71348_ ##eq?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash71350_ symbolic-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash71350_ ##symbol-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make71363_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (let ()
                                               (declare (not safe))
                                               (eq? _test71348_ eq?))
                                             (let ()
                                               (declare (not safe))
                                               (eq? _test71348_ ##eq?)))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash71350_ immediate-hash)))
                                    (let ()
                                      (declare (not safe))
                                      (_make71363_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (let ()
                                                   (declare (not safe))
                                                   (eq? _test71348_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test71348_ ##equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test71348_ string=?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test71348_
                                                        ##string=?)))
                                             (or (let ()
                                                   (declare (not safe))
                                                   (eq? _hash71350_
                                                        string-hash))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _hash71350_
                                                        ##string=?-hash))))
                                        (let ()
                                          (declare (not safe))
                                          (_make71363_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (let ()
                                                   (declare (not safe))
                                                   (eq? _test71348_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _hash71350_)))
                                            (let ()
                                              (declare (not safe))
                                              (_make71363_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp74011
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _test71348_))))
                                                  (declare (not safe))
                                                  (not __tmp74011))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _test71348_))
                                                (if (let ((__tmp74010
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _hash71350_))))
                                                      (declare (not safe))
                                                      (not __tmp74010))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _hash71350_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make71363_
                                                       make-generic-hash-table
                                                       true
                                                       _hash71350_
                                                       _test71348_))))))))))))))))
    (define make-hash-table__@
      (lambda (_keys7131671461_ . _args71463_)
        (apply make-hash-table__%
               _keys7131671461_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7131671461_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7131671461_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7131671461_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7131671461_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7131671461_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7131671461_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7131671461_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7131671461_
                  'weak-values:
                  absent-value))
               _args71463_)))
    (define make-hash-table
      (lambda _args7132571469_
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
               _args7132571469_)))
    (define make-hash-table-eq
      (lambda _args71313_ (apply make-hash-table 'test: eq? _args71313_)))
    (define make-hash-table-eqv
      (lambda _args71311_ (apply make-hash-table 'test: eqv? _args71311_)))
    (define make-hash-table-symbolic
      (lambda _args71309_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args71309_)))
    (define make-hash-table-string
      (lambda _args71307_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args71307_)))
    (define make-hash-table-immediate
      (lambda _args71305_
        (apply make-hash-table 'test: eq? 'hash: immediate-hash _args71305_)))
    (define list->hash-table
      (lambda (_lst71302_ . _args71303_)
        (let ((__tmp74012
               (apply make-hash-table 'size: (length _lst71302_) _args71303_)))
          (declare (not safe))
          (list->hash-table! _lst71302_ __tmp74012))))
    (define list->hash-table-eq
      (lambda (_lst71299_ . _args71300_)
        (let ((__tmp74013
               (apply make-hash-table-eq
                      'size:
                      (length _lst71299_)
                      _args71300_)))
          (declare (not safe))
          (list->hash-table! _lst71299_ __tmp74013))))
    (define list->hash-table-eqv
      (lambda (_lst71296_ . _args71297_)
        (let ((__tmp74014
               (apply make-hash-table-eqv
                      'size:
                      (length _lst71296_)
                      _args71297_)))
          (declare (not safe))
          (list->hash-table! _lst71296_ __tmp74014))))
    (define list->hash-table-symbolic
      (lambda (_lst71293_ . _args71294_)
        (let ((__tmp74015
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst71293_)
                      _args71294_)))
          (declare (not safe))
          (list->hash-table! _lst71293_ __tmp74015))))
    (define list->hash-table-string
      (lambda (_lst71290_ . _args71291_)
        (let ((__tmp74016
               (apply make-hash-table-string
                      'size:
                      (length _lst71290_)
                      _args71291_)))
          (declare (not safe))
          (list->hash-table! _lst71290_ __tmp74016))))
    (define list->hash-table-immediate
      (lambda (_lst71287_ . _args71288_)
        (let ((__tmp74017
               (apply make-hash-table-immediate
                      'size:
                      (length _lst71287_)
                      _args71288_)))
          (declare (not safe))
          (list->hash-table! _lst71287_ __tmp74017))))
    (define list->hash-table!
      (lambda (_lst71254_ _h71255_)
        (for-each
         (lambda (_el71257_)
           (let* ((_el7125871265_ _el71257_)
                  (_E7126071269_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el7125871265_))))
                  (_K7126171275_
                   (lambda (_v71272_ _k71273_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h71255_ _k71273_ _v71272_)))))
             (if (let () (declare (not safe)) (##pair? _el7125871265_))
                 (let ((_hd7126271278_
                        (let () (declare (not safe)) (##car _el7125871265_)))
                       (_tl7126371280_
                        (let () (declare (not safe)) (##cdr _el7125871265_))))
                   (let* ((_k71283_ _hd7126271278_) (_v71285_ _tl7126371280_))
                     (declare (not safe))
                     (_K7126171275_ _v71285_ _k71283_)))
                 (let () (declare (not safe)) (_E7126071269_)))))
         _lst71254_)
        _h71255_))
    (define plist->hash-table
      (lambda (_lst71251_ . _args71252_)
        (let ((__tmp74018
               (apply make-hash-table 'size: (length _lst71251_) _args71252_)))
          (declare (not safe))
          (plist->hash-table! _lst71251_ __tmp74018))))
    (define plist->hash-table-eq
      (lambda (_lst71248_ . _args71249_)
        (let ((__tmp74019
               (apply make-hash-table-eq
                      'size:
                      (length _lst71248_)
                      _args71249_)))
          (declare (not safe))
          (plist->hash-table! _lst71248_ __tmp74019))))
    (define plist->hash-table-eqv
      (lambda (_lst71245_ . _args71246_)
        (let ((__tmp74020
               (apply make-hash-table-eqv
                      'size:
                      (length _lst71245_)
                      _args71246_)))
          (declare (not safe))
          (plist->hash-table! _lst71245_ __tmp74020))))
    (define plist->hash-table-symbolic
      (lambda (_lst71242_ . _args71243_)
        (let ((__tmp74021
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst71242_)
                      _args71243_)))
          (declare (not safe))
          (plist->hash-table! _lst71242_ __tmp74021))))
    (define plist->hash-table-string
      (lambda (_lst71239_ . _args71240_)
        (let ((__tmp74022
               (apply make-hash-table-string
                      'size:
                      (length _lst71239_)
                      _args71240_)))
          (declare (not safe))
          (plist->hash-table! _lst71239_ __tmp74022))))
    (define plist->hash-table-immediate
      (lambda (_lst71236_ . _args71237_)
        (let ((__tmp74023
               (apply make-hash-table-immediate
                      'size:
                      (length _lst71236_)
                      _args71237_)))
          (declare (not safe))
          (plist->hash-table! _lst71236_ __tmp74023))))
    (define plist->hash-table!
      (lambda (_lst71176_ _h71177_)
        (let _loop71179_ ((_rest71181_ _lst71176_))
          (let* ((_rest7118271194_ _rest71181_)
                 (_else7118571202_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst71176_)))))
            (let ((_K7118871217_
                   (lambda (_rest71213_ _val71214_ _key71215_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h71177_ _key71215_ _val71214_))
                     (let () (declare (not safe)) (_loop71179_ _rest71213_))))
                  (_K7118771207_ (lambda () _h71177_)))
              (let ((_try-match7118471210_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest7118271194_))
                           (let () (declare (not safe)) (_K7118771207_))
                           (let () (declare (not safe)) (_else7118571202_))))))
                (if (let () (declare (not safe)) (##pair? _rest7118271194_))
                    (let ((_tl7119071222_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest7118271194_)))
                          (_hd7118971220_
                           (let ()
                             (declare (not safe))
                             (##car _rest7118271194_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl7119071222_))
                          (let ((_tl7119271229_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl7119071222_)))
                                (_hd7119171227_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl7119071222_))))
                            (let ((_key71225_ _hd7118971220_)
                                  (_val71232_ _hd7119171227_)
                                  (_rest71234_ _tl7119271229_))
                              (let ()
                                (declare (not safe))
                                (_K7118871217_
                                 _rest71234_
                                 _val71232_
                                 _key71225_))))
                          (let () (declare (not safe)) (_else7118571202_))))
                    (let ()
                      (declare (not safe))
                      (_try-match7118471210_)))))))))
    (define hash-length
      (lambda (_h71172_)
        (let ((_h71174_
               (if (and (let () (declare (not safe)) (##structure? _h71172_))
                        (let ((__tmp74024
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71172_))))
                          (declare (not safe))
                          (eq? __tmp74024 HashTable::t)))
                   _h71172_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71172_)))))
          (declare (not safe))
          (&HashTable-length _h71174_))))
    (define &hash-length
      (lambda (_h71170_)
        (let () (declare (not safe)) (&HashTable-length _h71170_))))
    (define hash-ref__%
      (lambda (_h71152_ _key71153_ _default71154_)
        (let ((_h71156_
               (if (and (let () (declare (not safe)) (##structure? _h71152_))
                        (let ((__tmp74025
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71152_))))
                          (declare (not safe))
                          (eq? __tmp74025 HashTable::t)))
                   _h71152_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71152_)))))
          (declare (not safe))
          (&hash-ref__% _h71156_ _key71153_ _default71154_))))
    (define hash-ref__0
      (lambda (_h71161_ _key71162_)
        (let ((_default71164_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h71161_ _key71162_ _default71164_))))
    (define hash-ref
      (lambda _g74027_
        (let ((_g74026_ (let () (declare (not safe)) (##length _g74027_))))
          (cond ((let () (declare (not safe)) (##fx= _g74026_ 2))
                 (apply (lambda (_h71161_ _key71162_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h71161_ _key71162_)))
                        _g74027_))
                ((let () (declare (not safe)) (##fx= _g74026_ 3))
                 (apply (lambda (_h71166_ _key71167_ _default71168_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h71166_ _key71167_ _default71168_)))
                        _g74027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g74027_))))))
    (define &hash-ref__%
      (lambda (_h71133_ _key71134_ _default71135_)
        (let ((_result71137_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h71133_ _key71134_ _default71135_))))
          (if (let ((__tmp74028 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result71137_ __tmp74028))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h71133_
                 'key:
                 _key71134_))
              _result71137_))))
    (define &hash-ref__0
      (lambda (_h71142_ _key71143_)
        (let ((_default71145_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h71142_ _key71143_ _default71145_))))
    (define &hash-ref
      (lambda _g74030_
        (let ((_g74029_ (let () (declare (not safe)) (##length _g74030_))))
          (cond ((let () (declare (not safe)) (##fx= _g74029_ 2))
                 (apply (lambda (_h71142_ _key71143_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h71142_ _key71143_)))
                        _g74030_))
                ((let () (declare (not safe)) (##fx= _g74029_ 3))
                 (apply (lambda (_h71147_ _key71148_ _default71149_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h71147_ _key71148_ _default71149_)))
                        _g74030_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g74030_))))))
    (define hash-get
      (lambda (_h71127_ _key71128_)
        (let ((_h71130_
               (if (and (let () (declare (not safe)) (##structure? _h71127_))
                        (let ((__tmp74031
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71127_))))
                          (declare (not safe))
                          (eq? __tmp74031 HashTable::t)))
                   _h71127_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71127_)))))
          (declare (not safe))
          (&hash-get _h71130_ _key71128_))))
    (define &hash-get
      (lambda (_h71124_ _key71125_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h71124_ _key71125_ '#f))))
    (define hash-put!
      (lambda (_h71118_ _key71119_ _value71120_)
        (let ((_h71122_
               (if (and (let () (declare (not safe)) (##structure? _h71118_))
                        (let ((__tmp74032
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71118_))))
                          (declare (not safe))
                          (eq? __tmp74032 HashTable::t)))
                   _h71118_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71118_)))))
          (declare (not safe))
          (&HashTable-set! _h71122_ _key71119_ _value71120_))))
    (define &hash-put!
      (lambda (_h71114_ _key71115_ _value71116_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h71114_ _key71115_ _value71116_))))
    (define hash-update!__%
      (lambda (_h71093_ _key71094_ _update71095_ _default71096_)
        (let ((_h71098_
               (if (and (let () (declare (not safe)) (##structure? _h71093_))
                        (let ((__tmp74033
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71093_))))
                          (declare (not safe))
                          (eq? __tmp74033 HashTable::t)))
                   _h71093_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71093_)))))
          (declare (not safe))
          (&HashTable-update!
           _h71098_
           _key71094_
           _update71095_
           _default71096_))))
    (define hash-update!__0
      (lambda (_h71103_ _key71104_ _update71105_)
        (let ((_default71107_ '#!void))
          (declare (not safe))
          (hash-update!__% _h71103_ _key71104_ _update71105_ _default71107_))))
    (define hash-update!
      (lambda _g74035_
        (let ((_g74034_ (let () (declare (not safe)) (##length _g74035_))))
          (cond ((let () (declare (not safe)) (##fx= _g74034_ 3))
                 (apply (lambda (_h71103_ _key71104_ _update71105_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h71103_
                             _key71104_
                             _update71105_)))
                        _g74035_))
                ((let () (declare (not safe)) (##fx= _g74034_ 4))
                 (apply (lambda (_h71109_
                                 _key71110_
                                 _update71111_
                                 _default71112_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h71109_
                             _key71110_
                             _update71111_
                             _default71112_)))
                        _g74035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g74035_))))))
    (define &hash-update!__%
      (lambda (_h71073_ _key71074_ _update71075_ _default71076_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h71073_
           _key71074_
           _update71075_
           _default71076_))))
    (define &hash-update!__0
      (lambda (_h71081_ _key71082_ _update71083_)
        (let ((_default71085_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h71081_
           _key71082_
           _update71083_
           _default71085_))))
    (define &hash-update!
      (lambda _g74037_
        (let ((_g74036_ (let () (declare (not safe)) (##length _g74037_))))
          (cond ((let () (declare (not safe)) (##fx= _g74036_ 3))
                 (apply (lambda (_h71081_ _key71082_ _update71083_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h71081_
                             _key71082_
                             _update71083_)))
                        _g74037_))
                ((let () (declare (not safe)) (##fx= _g74036_ 4))
                 (apply (lambda (_h71087_
                                 _key71088_
                                 _update71089_
                                 _default71090_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h71087_
                             _key71088_
                             _update71089_
                             _default71090_)))
                        _g74037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g74037_))))))
    (define hash-remove!
      (lambda (_h71067_ _key71068_)
        (let ((_h71070_
               (if (and (let () (declare (not safe)) (##structure? _h71067_))
                        (let ((__tmp74038
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71067_))))
                          (declare (not safe))
                          (eq? __tmp74038 HashTable::t)))
                   _h71067_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71067_)))))
          (declare (not safe))
          (&HashTable-delete! _h71070_ _key71068_))))
    (define &hash-remove!
      (lambda (_h71064_ _key71065_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h71064_ _key71065_))))
    (define hash-key?
      (lambda (_h71059_ _k71060_)
        (let ((_h71062_
               (if (and (let () (declare (not safe)) (##structure? _h71059_))
                        (let ((__tmp74039
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71059_))))
                          (declare (not safe))
                          (eq? __tmp74039 HashTable::t)))
                   _h71059_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71059_)))))
          (declare (not safe))
          (&hash-key? _h71062_ _k71060_))))
    (define &hash-key?
      (lambda (_h71056_ _k71057_)
        (let ((__tmp74040
               (let ((__tmp74041
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h71056_ _k71057_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp74041 absent-value))))
          (declare (not safe))
          (not __tmp74040))))
    (define hash->list
      (lambda (_h71052_)
        (let ((_h71054_
               (if (and (let () (declare (not safe)) (##structure? _h71052_))
                        (let ((__tmp74042
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71052_))))
                          (declare (not safe))
                          (eq? __tmp74042 HashTable::t)))
                   _h71052_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71052_)))))
          (declare (not safe))
          (&hash->list _h71054_))))
    (define &hash->list
      (lambda (_h71045_)
        (let ((_lst71047_ '()))
          (let ((__tmp74043
                 (lambda (_k71049_ _v71050_)
                   (set! _lst71047_
                         (let ((__tmp74044
                                (let ()
                                  (declare (not safe))
                                  (cons _k71049_ _v71050_))))
                           (declare (not safe))
                           (cons __tmp74044 _lst71047_))))))
            (declare (not safe))
            (&HashTable-for-each _h71045_ __tmp74043))
          _lst71047_)))
    (define hash->plist
      (lambda (_h71041_)
        (let ((_h71043_
               (if (and (let () (declare (not safe)) (##structure? _h71041_))
                        (let ((__tmp74045
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71041_))))
                          (declare (not safe))
                          (eq? __tmp74045 HashTable::t)))
                   _h71041_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71041_)))))
          (declare (not safe))
          (&hash->plist _h71043_))))
    (define &hash->plist
      (lambda (_h71034_)
        (let ((_lst71036_ '()))
          (let ((__tmp74046
                 (lambda (_k71038_ _v71039_)
                   (set! _lst71036_
                         (let ((__tmp74047
                                (let ()
                                  (declare (not safe))
                                  (cons _v71039_ _lst71036_))))
                           (declare (not safe))
                           (cons _k71038_ __tmp74047))))))
            (declare (not safe))
            (&HashTable-for-each _h71034_ __tmp74046))
          _lst71036_)))
    (define hash-for-each
      (lambda (_proc71031_ _h71032_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h71032_ _proc71031_))))
    (define hash-map
      (lambda (_proc71023_ _h71024_)
        (let ((_result71026_ '()))
          (let ((__tmp74048
                 (lambda (_k71028_ _v71029_)
                   (set! _result71026_
                         (let ((__tmp74049 (_proc71023_ _k71028_ _v71029_)))
                           (declare (not safe))
                           (cons __tmp74049 _result71026_))))))
            (declare (not safe))
            (HashTable-for-each _h71024_ __tmp74048))
          _result71026_)))
    (define hash-fold
      (lambda (_proc71014_ _iv71015_ _h71016_)
        (let ((_result71018_ _iv71015_))
          (let ((__tmp74050
                 (lambda (_k71020_ _v71021_)
                   (set! _result71018_
                         (_proc71014_ _k71020_ _v71021_ _result71018_)))))
            (declare (not safe))
            (HashTable-for-each _h71016_ __tmp74050))
          _result71018_)))
    (define hash-find__%
      (lambda (_proc70990_ _h70991_ _default-value70992_)
        (call/cc (lambda (_return70994_)
                   (let ((__tmp74051
                          (lambda (_k70996_ _v70997_)
                            (let ((_$e70999_ (_proc70990_ _k70996_ _v70997_)))
                              (if _$e70999_
                                  (_return70994_ _$e70999_)
                                  '#!void)))))
                     (declare (not safe))
                     (HashTable-for-each _h70991_ __tmp74051))
                   _default-value70992_))))
    (define hash-find__0
      (lambda (_proc71005_ _h71006_)
        (let ((_default-value71008_ '#f))
          (declare (not safe))
          (hash-find__% _proc71005_ _h71006_ _default-value71008_))))
    (define hash-find
      (lambda _g74053_
        (let ((_g74052_ (let () (declare (not safe)) (##length _g74053_))))
          (cond ((let () (declare (not safe)) (##fx= _g74052_ 2))
                 (apply (lambda (_proc71005_ _h71006_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc71005_ _h71006_)))
                        _g74053_))
                ((let () (declare (not safe)) (##fx= _g74052_ 3))
                 (apply (lambda (_proc71010_ _h71011_ _default-value71012_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc71010_
                             _h71011_
                             _default-value71012_)))
                        _g74053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g74053_))))))
    (define hash-keys
      (lambda (_h70985_)
        (let ((_h70987_
               (if (and (let () (declare (not safe)) (##structure? _h70985_))
                        (let ((__tmp74054
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70985_))))
                          (declare (not safe))
                          (eq? __tmp74054 HashTable::t)))
                   _h70985_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70985_)))))
          (declare (not safe))
          (&hash-keys _h70987_))))
    (define &hash-keys
      (lambda (_h70978_)
        (let ((_result70980_ '()))
          (let ((__tmp74055
                 (lambda (_k70982_ _v70983_)
                   (set! _result70980_
                         (let ()
                           (declare (not safe))
                           (cons _k70982_ _result70980_))))))
            (declare (not safe))
            (&HashTable-for-each _h70978_ __tmp74055))
          _result70980_)))
    (define hash-values
      (lambda (_h70974_)
        (let ((_h70976_
               (if (and (let () (declare (not safe)) (##structure? _h70974_))
                        (let ((__tmp74056
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70974_))))
                          (declare (not safe))
                          (eq? __tmp74056 HashTable::t)))
                   _h70974_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70974_)))))
          (declare (not safe))
          (&hash-values _h70976_))))
    (define &hash-values
      (lambda (_h70967_)
        (let ((_result70969_ '()))
          (let ((__tmp74057
                 (lambda (_k70971_ _v70972_)
                   (set! _result70969_
                         (let ()
                           (declare (not safe))
                           (cons _v70972_ _result70969_))))))
            (declare (not safe))
            (&HashTable-for-each _h70967_ __tmp74057))
          _result70969_)))
    (define hash-copy
      (lambda (_h70963_)
        (let ((_h70965_
               (if (and (let () (declare (not safe)) (##structure? _h70963_))
                        (let ((__tmp74058
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70963_))))
                          (declare (not safe))
                          (eq? __tmp74058 HashTable::t)))
                   _h70963_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70963_)))))
          (declare (not safe))
          (&HashTable-copy _h70965_))))
    (define &hash-copy
      (lambda (_h70961_)
        (let () (declare (not safe)) (&HashTable-copy _h70961_))))
    (define hash-merge
      (lambda (_h70956_ . _rest70957_)
        (let ((_copy70959_ (let () (declare (not safe)) (hash-copy _h70956_))))
          (apply hash-merge! _copy70959_ _rest70957_)
          _copy70959_)))
    (define hash-merge!
      (lambda (_h70946_ . _rest70947_)
        (let ((_h70949_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h70946_))))
          (for-each
           (lambda (_hr70951_)
             (let ((__tmp74059
                    (lambda (_k70953_ _v70954_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h70949_ _k70953_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h70949_ _k70953_ _v70954_))))))
               (declare (not safe))
               (hash-for-each __tmp74059 _hr70951_)))
           _rest70947_)
          _h70949_)))))
