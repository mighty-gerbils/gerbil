(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1710715075)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp73936 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp73936
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args73919_
        (apply make-instance UnboundKeyError::t _$args73919_)))
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
      (lambda (_where73793_ _message73794_ . _irritants73795_)
        (let ((__tmp73937
               (let ((__obj73933
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj73933
                  _message73794_
                  'where:
                  _where73793_
                  'irritants:
                  _irritants73795_)
                 __obj73933)))
          (declare (not safe))
          (raise __tmp73937))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp73942 (list interface-instance::t))
            (__tmp73938
             (let ((__tmp73941
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp73939
                    (let ((__tmp73940
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp73940 '()))))
               (declare (not safe))
               (cons __tmp73941 __tmp73939))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp73942
         '(ref set! update! delete! for-each length copy clear!)
         __tmp73938
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
      (let ((__tmp73947 (list interface-instance::t))
            (__tmp73943
             (let ((__tmp73946
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp73944
                    (let ((__tmp73945
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp73945 '()))))
               (declare (not safe))
               (cons __tmp73946 __tmp73944))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp73947
         '(begin-read! end-read! begin-write! end-write!)
         __tmp73943
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
      (lambda (_table73786_ _key73787_ _update73788_ _default73789_)
        (let ((_result73791_
               (table-ref _table73786_ _key73787_ _default73789_)))
          (table-set!
           _table73786_
           _key73787_
           (_update73788_ _default73789_)))))
    (define gambit-table-for-each
      (lambda (_table73783_ _proc73784_)
        (table-for-each _proc73784_ _table73783_)))
    (define gambit-table-clear!
      (lambda (_table73781_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table73781_ '0 '5 '#f '#f))))
    (let ((__tmp73948 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73948 'ref table-ref))
    (let ((__tmp73949 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73949 'set! table-set!))
    (let ((__tmp73950 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73950 'update! gambit-table-update!))
    (let ((__tmp73951 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73951 'delete! table-set!))
    (let ((__tmp73952 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73952 'for-each gambit-table-for-each))
    (let ((__tmp73953 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73953 'length table-length))
    (let ((__tmp73954 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73954 'copy table-copy))
    (let ((__tmp73955 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp73955 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots73763_ '(table count free hash test seed))
             (_slot-vector73765_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots73763_))))
             (_slot-table73772_
              (let ((_slot-table73767_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot73769_ _field73770_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table73767_
                      _slot73769_
                      _field73770_))
                   (let ((__tmp73956
                          (let ()
                            (declare (not safe))
                            (symbol->keyword _slot73769_))))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table73767_
                      __tmp73956
                      _field73770_)))
                 _slots73763_
                 (iota (length _slots73763_) '1))
                _slot-table73767_))
             (_flags73774_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields73776_ '#())
             (_properties73778_
              (let ((__tmp73959
                     (let ((__tmp73960
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots73763_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp73960)))
                    (__tmp73957
                     (let ((__tmp73958
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp73958 '()))))
                (declare (not safe))
                (cons __tmp73959 __tmp73957))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags73774_
           __table::t
           _fields73776_
           '()
           _slot-vector73765_
           _slot-table73772_
           _properties73778_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_slots73745_ '(gcht immediate))
             (_slot-vector73747_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots73745_))))
             (_slot-table73754_
              (let ((_slot-table73749_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot73751_ _field73752_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table73749_
                      _slot73751_
                      _field73752_))
                   (let ((__tmp73961
                          (let ()
                            (declare (not safe))
                            (symbol->keyword _slot73751_))))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table73749_
                      __tmp73961
                      _field73752_)))
                 _slots73745_
                 (iota (length _slots73745_) '1))
                _slot-table73749_))
             (_flags73756_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields73758_ '#())
             (_properties73760_
              (let ((__tmp73964
                     (let ((__tmp73965
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots73745_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp73965)))
                    (__tmp73962
                     (let ((__tmp73963
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp73963 '()))))
                (declare (not safe))
                (cons __tmp73964 __tmp73962))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'gc-hash-table
           _flags73756_
           __gc-table::t
           _fields73758_
           '()
           _slot-vector73747_
           _slot-table73754_
           _properties73760_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp73970 (list))
            (__tmp73966
             (let ((__tmp73969
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp73967
                    (let ((__tmp73968
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp73968 '()))))
               (declare (not safe))
               (cons __tmp73969 __tmp73967))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp73970
         '(table lock)
         __tmp73966
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args73742_
        (apply make-instance locked-hash-table::t _$args73742_)))
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
      (let ((__tmp73975 (list))
            (__tmp73971
             (let ((__tmp73974
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp73972
                    (let ((__tmp73973
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp73973 '()))))
               (declare (not safe))
               (cons __tmp73974 __tmp73972))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp73975
         '(table key-check)
         __tmp73971
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args73739_
        (apply make-instance checked-hash-table::t _$args73739_)))
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
      (let ((__tmp73978 (list hash-table::t))
            (__tmp73976
             (let ((__tmp73977
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp73977 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp73978
         '()
         __tmp73976
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args73736_
        (apply make-instance eq-hash-table::t _$args73736_)))
    (define eqv-hash-table::t
      (let ((__tmp73981 (list hash-table::t))
            (__tmp73979
             (let ((__tmp73980
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp73980 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp73981
         '()
         __tmp73979
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args73733_
        (apply make-instance eqv-hash-table::t _$args73733_)))
    (define symbol-hash-table::t
      (let ((__tmp73984 (list hash-table::t))
            (__tmp73982
             (let ((__tmp73983
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp73983 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp73984
         '()
         __tmp73982
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args73730_
        (apply make-instance symbol-hash-table::t _$args73730_)))
    (define string-hash-table::t
      (let ((__tmp73987 (list hash-table::t))
            (__tmp73985
             (let ((__tmp73986
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp73986 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp73987
         '()
         __tmp73985
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args73727_
        (apply make-instance string-hash-table::t _$args73727_)))
    (define immediate-hash-table::t
      (let ((__tmp73990 (list hash-table::t))
            (__tmp73988
             (let ((__tmp73989
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp73989 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp73990
         '()
         __tmp73988
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _$args73724_
        (apply make-instance immediate-hash-table::t _$args73724_)))
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
      (lambda (_obj73722_)
        (if (let () (declare (not safe)) (##structure? _obj73722_))
            (let ((__tmp73991
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj73722_))))
              (declare (not safe))
              (eq? __tmp73991 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj73717_)
        (let ((_$e73719_
               (if (let () (declare (not safe)) (##structure? _obj73717_))
                   (let ((__tmp73992
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj73717_))))
                     (declare (not safe))
                     (eq? __tmp73992 HashTable::t))
                   '#f)))
          (if _$e73719_
              _$e73719_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj73717_))))))
    (define HashTable-ref
      (lambda (_h73711_ _key73712_ _default73713_)
        (let ((_h73715_
               (if (and (let () (declare (not safe)) (##structure? _h73711_))
                        (let ((__tmp73993
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h73711_))))
                          (declare (not safe))
                          (eq? __tmp73993 HashTable::t)))
                   _h73711_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h73711_)))))
          (declare (not safe))
          (&HashTable-ref _h73715_ _key73712_ _default73713_))))
    (define &HashTable-ref
      (lambda (_h73706_ _key73707_ _default73708_)
        (declare (not safe))
        ((##unchecked-structure-ref _h73706_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h73706_ '1 interface-instance::t '#f)
         _key73707_
         _default73708_)))
    (define HashTable-set!
      (lambda (_h73700_ _key73701_ _value73702_)
        (let ((_h73704_
               (if (and (let () (declare (not safe)) (##structure? _h73700_))
                        (let ((__tmp73994
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h73700_))))
                          (declare (not safe))
                          (eq? __tmp73994 HashTable::t)))
                   _h73700_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h73700_)))))
          (declare (not safe))
          (&HashTable-set! _h73704_ _key73701_ _value73702_))))
    (define &HashTable-set!
      (lambda (_h73695_ _key73696_ _value73697_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h73695_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h73695_ '1 interface-instance::t '#f)
           _key73696_
           _value73697_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h73688_ _key73689_ _update73690_ _default73691_)
        (let ((_h73693_
               (if (and (let () (declare (not safe)) (##structure? _h73688_))
                        (let ((__tmp73995
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h73688_))))
                          (declare (not safe))
                          (eq? __tmp73995 HashTable::t)))
                   _h73688_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h73688_)))))
          (declare (not safe))
          (&HashTable-update!
           _h73693_
           _key73689_
           _update73690_
           _default73691_))))
    (define &HashTable-update!
      (lambda (_h73682_ _key73683_ _update73684_ _default73685_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h73682_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h73682_ '1 interface-instance::t '#f)
           _key73683_
           _update73684_
           _default73685_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h73677_ _key73678_)
        (let ((_h73680_
               (if (and (let () (declare (not safe)) (##structure? _h73677_))
                        (let ((__tmp73996
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h73677_))))
                          (declare (not safe))
                          (eq? __tmp73996 HashTable::t)))
                   _h73677_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h73677_)))))
          (declare (not safe))
          (&HashTable-delete! _h73680_ _key73678_))))
    (define &HashTable-delete!
      (lambda (_h73673_ _key73674_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h73673_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h73673_ '1 interface-instance::t '#f)
           _key73674_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h73668_ _proc73669_)
        (let ((_h73671_
               (if (and (let () (declare (not safe)) (##structure? _h73668_))
                        (let ((__tmp73997
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h73668_))))
                          (declare (not safe))
                          (eq? __tmp73997 HashTable::t)))
                   _h73668_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h73668_)))))
          (declare (not safe))
          (&HashTable-for-each _h73671_ _proc73669_))))
    (define &HashTable-for-each
      (lambda (_h73664_ _proc73665_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h73664_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h73664_ '1 interface-instance::t '#f)
           _proc73665_)
          '#!void)))
    (define HashTable-length
      (lambda (_h73660_)
        (let ((_h73662_
               (if (and (let () (declare (not safe)) (##structure? _h73660_))
                        (let ((__tmp73998
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h73660_))))
                          (declare (not safe))
                          (eq? __tmp73998 HashTable::t)))
                   _h73660_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h73660_)))))
          (declare (not safe))
          (&HashTable-length _h73662_))))
    (define &HashTable-length
      (lambda (_h73657_)
        (declare (not safe))
        ((##unchecked-structure-ref _h73657_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h73657_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h73653_)
        (let ((_h73655_
               (if (and (let () (declare (not safe)) (##structure? _h73653_))
                        (let ((__tmp73999
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h73653_))))
                          (declare (not safe))
                          (eq? __tmp73999 HashTable::t)))
                   _h73653_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h73653_)))))
          (declare (not safe))
          (&HashTable-copy _h73655_))))
    (define &HashTable-copy
      (lambda (_h73650_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h73650_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h73650_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h73646_)
        (let ((_h73648_
               (if (and (let () (declare (not safe)) (##structure? _h73646_))
                        (let ((__tmp74000
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h73646_))))
                          (declare (not safe))
                          (eq? __tmp74000 HashTable::t)))
                   _h73646_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h73646_)))))
          (declare (not safe))
          (&HashTable-clear! _h73648_))))
    (define &HashTable-clear!
      (lambda (_h73643_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h73643_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h73643_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl73640_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl73640_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl73640_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl73637_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl73637_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl73637_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl73634_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl73634_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl73634_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl73631_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl73631_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl73631_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref70644_
      (lambda (_self73618_ _key73620_ _default73621_)
        (let ((_h73623_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73618_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73625_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73618_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l73625_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h73623_ _key73620_ _default73621_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l73625_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref70644_
       '#f))
    (define _locked-hash-table::set!70646_
      (lambda (_self73482_ _key73484_ _value73485_)
        (let ((_h73487_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73482_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73489_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73482_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73489_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h73487_ _key73484_ _value73485_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73489_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!70646_
       '#f))
    (define _locked-hash-table::update!70648_
      (lambda (_self73345_ _key73347_ _update73348_ _default73349_)
        (let ((_h73351_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73345_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73353_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73345_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73353_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h73351_
                _key73347_
                _update73348_
                _default73349_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73353_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!70648_
       '#f))
    (define _locked-hash-table::delete!70650_
      (lambda (_self73210_ _key73212_)
        (let ((_h73214_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73210_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73216_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73210_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l73216_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h73214_ _key73212_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l73216_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!70650_
       '#f))
    (define _locked-hash-table::for-each70652_
      (lambda (_self73075_ _proc73077_)
        (let ((_h73079_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73075_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l73081_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self73075_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l73081_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h73079_ _proc73077_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l73081_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each70652_
       '#f))
    (define _locked-hash-table::length70654_
      (lambda (_self72941_)
        (let ((_h72944_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72941_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72946_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72941_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l72946_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h72944_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l72946_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length70654_
       '#f))
    (define _locked-hash-table::copy70656_
      (lambda (_self72807_)
        (let ((_h72810_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72807_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72812_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72807_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l72812_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h72810_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l72812_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy70656_
       '#f))
    (define _locked-hash-table::clear!70658_
      (lambda (_self72673_)
        (let ((_h72676_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72673_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72678_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72673_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l72678_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h72676_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l72678_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!70658_
       '#f))
    (let ((__tmp74001 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74001 'begin-read! mutex-lock!))
    (let ((__tmp74002 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74002 'end-read! mutex-unlock!))
    (let ((__tmp74003 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74003 'begin-write! mutex-lock!))
    (let ((__tmp74004 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp74004 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref70936_
      (lambda (_self72537_ _key72538_ _default72539_)
        (let ((_h72541_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72537_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72543_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72537_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7254572547_)
             (if (_g7254572547_ _key72538_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72538_))))
           _key?72543_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h72541_ _key72538_ _default72539_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref70936_
       '#f))
    (define _checked-hash-table::set!70938_
      (lambda (_self72401_ _key72402_ _value72403_)
        (let ((_h72405_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72401_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72407_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72401_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7240972411_)
             (if (_g7240972411_ _key72402_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72402_))))
           _key?72407_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h72405_ _key72402_ _value72403_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!70938_
       '#f))
    (define _checked-hash-table::update!70940_
      (lambda (_self72266_ _key72267_ _update72268_ _default72269_)
        (let ((_h72271_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72266_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72273_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72266_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?72276_)
             (if (_key?72276_ _key72267_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72267_)))
             (if (let () (declare (not safe)) (procedure? _update72268_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update72268_))))
           _key?72273_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h72271_
             _key72267_
             _update72268_
             _default72269_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!70940_
       '#f))
    (define _checked-hash-table::delete!70942_
      (lambda (_self72131_ _key72132_)
        (let ((_h72134_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72131_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72136_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72131_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7213872140_)
             (if (_g7213872140_ _key72132_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key72132_))))
           _key?72136_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h72134_ _key72132_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!70942_
       '#f))
    (define _checked-hash-table::for-each70944_
      (lambda (_self71999_ _proc72000_)
        (let ((_h72002_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71999_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?72004_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71999_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g74005_)
             (if (let () (declare (not safe)) (procedure? _proc72000_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc72000_))))
           _key?72004_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h72002_ _proc72000_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each70944_
       '#f))
    (define _checked-hash-table::length70946_
      (lambda (_self71869_)
        (let ((_h71871_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71869_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71873_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71869_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h71871_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length70946_
       '#f))
    (define _checked-hash-table::copy70948_
      (lambda (_self71739_)
        (let ((_h71741_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71739_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71743_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71739_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h71741_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy70948_
       '#f))
    (define _checked-hash-table::clear!70950_
      (lambda (_self71609_)
        (let ((_h71611_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71609_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71613_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71609_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h71611_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!70950_
       '#f))
    (define make-generic-hash-table
      (lambda (_table71479_
               _count71480_
               _free71481_
               _hash71482_
               _test71483_
               _seed71484_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table71479_
           _count71480_
           _free71481_
           _hash71482_
           _test71483_
           _seed71484_))))
    (define make-hash-table__%
      (lambda (_g74006_
               _size-hint7132471334_
               _seed7132571336_
               _test7132671338_
               _hash7132771340_
               _lock7132871342_
               _check7132971344_
               _weak-keys7133071346_
               _weak-values7133171348_)
        (let* ((_size-hint71351_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint7132471334_ absent-value))
                    '#f
                    _size-hint7132471334_))
               (_seed71353_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed7132571336_ absent-value))
                    '#f
                    _seed7132571336_))
               (_test71355_
                (if (let ()
                      (declare (not safe))
                      (eq? _test7132671338_ absent-value))
                    equal?
                    _test7132671338_))
               (_hash71357_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash7132771340_ absent-value))
                    '#f
                    _hash7132771340_))
               (_lock71359_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock7132871342_ absent-value))
                    '#f
                    _lock7132871342_))
               (_check71361_
                (if (let ()
                      (declare (not safe))
                      (eq? _check7132971344_ absent-value))
                    '#f
                    _check7132971344_))
               (_weak-keys71363_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys7133071346_ absent-value))
                    '#f
                    _weak-keys7133071346_))
               (_weak-values71365_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values7133171348_ absent-value))
                    '#f
                    _weak-values7133171348_)))
          (letrec ((_table-seed71367_
                    (lambda ()
                      (if (let () (declare (not safe)) (fixnum? _seed71353_))
                          _seed71353_
                          (random-integer (macro-max-fixnum32)))))
                   (_wrap-lock71368_
                    (lambda (_ht71462_)
                      (if _lock71359_
                          (let ((__tmp74007
                                 (let ((__tmp74008
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock71359_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht71462_
                                    __tmp74008))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp74007))
                          _ht71462_)))
                   (_wrap-checked71369_
                    (lambda (_ht71459_ _implicit71460_)
                      (if _check71361_
                          (let ((__tmp74009
                                 (let ((__tmp74010
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check71361_))
                                            _check71361_
                                            _implicit71460_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht71459_
                                    __tmp74010))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp74009))
                          _ht71459_)))
                   (_make71370_
                    (lambda (_kons71447_ _key?71448_ _hash71449_ _test71450_)
                      (let* ((_size71452_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint71351_)))
                             (_table71454_
                              (make-vector _size71452_ (macro-unused-obj)))
                             (_ht71456_
                              (let ((__tmp74011
                                     (_kons71447_
                                      _table71454_
                                      '0
                                      (fxquotient _size71452_ '2)
                                      _hash71449_
                                      _test71450_
                                      (let ()
                                        (declare (not safe))
                                        (_table-seed71367_)))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp74011))))
                        (let ((__tmp74012
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock71368_ _ht71456_))))
                          (declare (not safe))
                          (_wrap-checked71369_ __tmp74012 _key?71448_)))))
                   (_make-gc-hash-table71371_
                    (lambda ()
                      (let* ((_ht71445_
                              (let ((__tmp74013
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _size-hint71351_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp74013)))
                             (__tmp74014
                              (let ()
                                (declare (not safe))
                                (_wrap-lock71368_ _ht71445_))))
                        (declare (not safe))
                        (_wrap-checked71369_ __tmp74014 true))))
                   (_make-gambit-table71372_
                    (lambda ()
                      (let* ((_size71429_
                              (let ((_$e71426_ _size-hint71351_))
                                (if _$e71426_ _$e71426_ (macro-absent-obj))))
                             (_test71434_
                              (let ((_$e71431_ _test71355_))
                                (if _$e71431_ _$e71431_ equal?)))
                             (_hash71439_
                              (let ((_$e71436_ _hash71357_))
                                (if _$e71436_
                                    _$e71436_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test71434_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test71434_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht71441_
                              (let ((__tmp74015
                                     (make-table
                                      'size:
                                      _size71429_
                                      'test:
                                      _test71434_
                                      'hash:
                                      _hash71439_
                                      'weak-keys:
                                      _weak-keys71363_
                                      'weak-values:
                                      _weak-values71365_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp74015))))
                        (let ((__tmp74016
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock71368_ _ht71441_))))
                          (declare (not safe))
                          (_wrap-checked71369_ __tmp74016 true))))))
            (if (or _weak-keys71363_ _weak-values71365_)
                (let () (declare (not safe)) (_make-gambit-table71372_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test71355_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test71355_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash71357_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash71357_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash71357_ eq-hash)))
                         (let () (declare (not safe)) (not _seed71353_)))
                    (let () (declare (not safe)) (_make-gc-hash-table71371_))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test71355_ eq?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test71355_ ##eq?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash71357_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash71357_ eq?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash71357_ eq-hash))))
                        (let ()
                          (declare (not safe))
                          (_make71370_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test71355_ eqv?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test71355_ ##eqv?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _hash71357_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash71357_ eqv?-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash71357_ eqv-hash))))
                            (let ()
                              (declare (not safe))
                              (_make71370_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test71355_ eq?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test71355_ ##eq?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash71357_ symbolic-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash71357_ ##symbol-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make71370_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (let ()
                                               (declare (not safe))
                                               (eq? _test71355_ eq?))
                                             (let ()
                                               (declare (not safe))
                                               (eq? _test71355_ ##eq?)))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash71357_ immediate-hash)))
                                    (let ()
                                      (declare (not safe))
                                      (_make71370_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (let ()
                                                   (declare (not safe))
                                                   (eq? _test71355_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test71355_ ##equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test71355_ string=?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test71355_
                                                        ##string=?)))
                                             (or (let ()
                                                   (declare (not safe))
                                                   (eq? _hash71357_
                                                        string-hash))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _hash71357_
                                                        ##string=?-hash))))
                                        (let ()
                                          (declare (not safe))
                                          (_make71370_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (let ()
                                                   (declare (not safe))
                                                   (eq? _test71355_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _hash71357_)))
                                            (let ()
                                              (declare (not safe))
                                              (_make71370_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp74018
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _test71355_))))
                                                  (declare (not safe))
                                                  (not __tmp74018))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _test71355_))
                                                (if (let ((__tmp74017
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _hash71357_))))
                                                      (declare (not safe))
                                                      (not __tmp74017))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _hash71357_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make71370_
                                                       make-generic-hash-table
                                                       true
                                                       _hash71357_
                                                       _test71355_))))))))))))))))
    (define make-hash-table__@
      (lambda (_keys7132371468_ . _args71470_)
        (apply make-hash-table__%
               _keys7132371468_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7132371468_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7132371468_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7132371468_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7132371468_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7132371468_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7132371468_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7132371468_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7132371468_
                  'weak-values:
                  absent-value))
               _args71470_)))
    (define make-hash-table
      (lambda _args7133271476_
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
               _args7133271476_)))
    (define make-hash-table-eq
      (lambda _args71320_ (apply make-hash-table 'test: eq? _args71320_)))
    (define make-hash-table-eqv
      (lambda _args71318_ (apply make-hash-table 'test: eqv? _args71318_)))
    (define make-hash-table-symbolic
      (lambda _args71316_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args71316_)))
    (define make-hash-table-string
      (lambda _args71314_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args71314_)))
    (define make-hash-table-immediate
      (lambda _args71312_
        (apply make-hash-table 'test: eq? 'hash: immediate-hash _args71312_)))
    (define list->hash-table
      (lambda (_lst71309_ . _args71310_)
        (let ((__tmp74019
               (apply make-hash-table 'size: (length _lst71309_) _args71310_)))
          (declare (not safe))
          (list->hash-table! _lst71309_ __tmp74019))))
    (define list->hash-table-eq
      (lambda (_lst71306_ . _args71307_)
        (let ((__tmp74020
               (apply make-hash-table-eq
                      'size:
                      (length _lst71306_)
                      _args71307_)))
          (declare (not safe))
          (list->hash-table! _lst71306_ __tmp74020))))
    (define list->hash-table-eqv
      (lambda (_lst71303_ . _args71304_)
        (let ((__tmp74021
               (apply make-hash-table-eqv
                      'size:
                      (length _lst71303_)
                      _args71304_)))
          (declare (not safe))
          (list->hash-table! _lst71303_ __tmp74021))))
    (define list->hash-table-symbolic
      (lambda (_lst71300_ . _args71301_)
        (let ((__tmp74022
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst71300_)
                      _args71301_)))
          (declare (not safe))
          (list->hash-table! _lst71300_ __tmp74022))))
    (define list->hash-table-string
      (lambda (_lst71297_ . _args71298_)
        (let ((__tmp74023
               (apply make-hash-table-string
                      'size:
                      (length _lst71297_)
                      _args71298_)))
          (declare (not safe))
          (list->hash-table! _lst71297_ __tmp74023))))
    (define list->hash-table-immediate
      (lambda (_lst71294_ . _args71295_)
        (let ((__tmp74024
               (apply make-hash-table-immediate
                      'size:
                      (length _lst71294_)
                      _args71295_)))
          (declare (not safe))
          (list->hash-table! _lst71294_ __tmp74024))))
    (define list->hash-table!
      (lambda (_lst71261_ _h71262_)
        (for-each
         (lambda (_el71264_)
           (let* ((_el7126571272_ _el71264_)
                  (_E7126771276_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el7126571272_))))
                  (_K7126871282_
                   (lambda (_v71279_ _k71280_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h71262_ _k71280_ _v71279_)))))
             (if (let () (declare (not safe)) (##pair? _el7126571272_))
                 (let ((_hd7126971285_
                        (let () (declare (not safe)) (##car _el7126571272_)))
                       (_tl7127071287_
                        (let () (declare (not safe)) (##cdr _el7126571272_))))
                   (let* ((_k71290_ _hd7126971285_) (_v71292_ _tl7127071287_))
                     (declare (not safe))
                     (_K7126871282_ _v71292_ _k71290_)))
                 (let () (declare (not safe)) (_E7126771276_)))))
         _lst71261_)
        _h71262_))
    (define plist->hash-table
      (lambda (_lst71258_ . _args71259_)
        (let ((__tmp74025
               (apply make-hash-table 'size: (length _lst71258_) _args71259_)))
          (declare (not safe))
          (plist->hash-table! _lst71258_ __tmp74025))))
    (define plist->hash-table-eq
      (lambda (_lst71255_ . _args71256_)
        (let ((__tmp74026
               (apply make-hash-table-eq
                      'size:
                      (length _lst71255_)
                      _args71256_)))
          (declare (not safe))
          (plist->hash-table! _lst71255_ __tmp74026))))
    (define plist->hash-table-eqv
      (lambda (_lst71252_ . _args71253_)
        (let ((__tmp74027
               (apply make-hash-table-eqv
                      'size:
                      (length _lst71252_)
                      _args71253_)))
          (declare (not safe))
          (plist->hash-table! _lst71252_ __tmp74027))))
    (define plist->hash-table-symbolic
      (lambda (_lst71249_ . _args71250_)
        (let ((__tmp74028
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst71249_)
                      _args71250_)))
          (declare (not safe))
          (plist->hash-table! _lst71249_ __tmp74028))))
    (define plist->hash-table-string
      (lambda (_lst71246_ . _args71247_)
        (let ((__tmp74029
               (apply make-hash-table-string
                      'size:
                      (length _lst71246_)
                      _args71247_)))
          (declare (not safe))
          (plist->hash-table! _lst71246_ __tmp74029))))
    (define plist->hash-table-immediate
      (lambda (_lst71243_ . _args71244_)
        (let ((__tmp74030
               (apply make-hash-table-immediate
                      'size:
                      (length _lst71243_)
                      _args71244_)))
          (declare (not safe))
          (plist->hash-table! _lst71243_ __tmp74030))))
    (define plist->hash-table!
      (lambda (_lst71183_ _h71184_)
        (let _loop71186_ ((_rest71188_ _lst71183_))
          (let* ((_rest7118971201_ _rest71188_)
                 (_else7119271209_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst71183_)))))
            (let ((_K7119571224_
                   (lambda (_rest71220_ _val71221_ _key71222_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h71184_ _key71222_ _val71221_))
                     (let () (declare (not safe)) (_loop71186_ _rest71220_))))
                  (_K7119471214_ (lambda () _h71184_)))
              (let ((_try-match7119171217_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest7118971201_))
                           (let () (declare (not safe)) (_K7119471214_))
                           (let () (declare (not safe)) (_else7119271209_))))))
                (if (let () (declare (not safe)) (##pair? _rest7118971201_))
                    (let ((_tl7119771229_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest7118971201_)))
                          (_hd7119671227_
                           (let ()
                             (declare (not safe))
                             (##car _rest7118971201_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl7119771229_))
                          (let ((_tl7119971236_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl7119771229_)))
                                (_hd7119871234_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl7119771229_))))
                            (let ((_key71232_ _hd7119671227_)
                                  (_val71239_ _hd7119871234_)
                                  (_rest71241_ _tl7119971236_))
                              (let ()
                                (declare (not safe))
                                (_K7119571224_
                                 _rest71241_
                                 _val71239_
                                 _key71232_))))
                          (let () (declare (not safe)) (_else7119271209_))))
                    (let ()
                      (declare (not safe))
                      (_try-match7119171217_)))))))))
    (define hash-length
      (lambda (_h71179_)
        (let ((_h71181_
               (if (and (let () (declare (not safe)) (##structure? _h71179_))
                        (let ((__tmp74031
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71179_))))
                          (declare (not safe))
                          (eq? __tmp74031 HashTable::t)))
                   _h71179_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71179_)))))
          (declare (not safe))
          (&HashTable-length _h71181_))))
    (define &hash-length
      (lambda (_h71177_)
        (let () (declare (not safe)) (&HashTable-length _h71177_))))
    (define hash-ref__%
      (lambda (_h71159_ _key71160_ _default71161_)
        (let ((_h71163_
               (if (and (let () (declare (not safe)) (##structure? _h71159_))
                        (let ((__tmp74032
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71159_))))
                          (declare (not safe))
                          (eq? __tmp74032 HashTable::t)))
                   _h71159_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71159_)))))
          (declare (not safe))
          (&hash-ref__% _h71163_ _key71160_ _default71161_))))
    (define hash-ref__0
      (lambda (_h71168_ _key71169_)
        (let ((_default71171_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h71168_ _key71169_ _default71171_))))
    (define hash-ref
      (lambda _g74034_
        (let ((_g74033_ (let () (declare (not safe)) (##length _g74034_))))
          (cond ((let () (declare (not safe)) (##fx= _g74033_ 2))
                 (apply (lambda (_h71168_ _key71169_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h71168_ _key71169_)))
                        _g74034_))
                ((let () (declare (not safe)) (##fx= _g74033_ 3))
                 (apply (lambda (_h71173_ _key71174_ _default71175_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h71173_ _key71174_ _default71175_)))
                        _g74034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g74034_))))))
    (define &hash-ref__%
      (lambda (_h71140_ _key71141_ _default71142_)
        (let ((_result71144_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h71140_ _key71141_ _default71142_))))
          (if (let ((__tmp74035 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result71144_ __tmp74035))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h71140_
                 'key:
                 _key71141_))
              _result71144_))))
    (define &hash-ref__0
      (lambda (_h71149_ _key71150_)
        (let ((_default71152_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h71149_ _key71150_ _default71152_))))
    (define &hash-ref
      (lambda _g74037_
        (let ((_g74036_ (let () (declare (not safe)) (##length _g74037_))))
          (cond ((let () (declare (not safe)) (##fx= _g74036_ 2))
                 (apply (lambda (_h71149_ _key71150_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h71149_ _key71150_)))
                        _g74037_))
                ((let () (declare (not safe)) (##fx= _g74036_ 3))
                 (apply (lambda (_h71154_ _key71155_ _default71156_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h71154_ _key71155_ _default71156_)))
                        _g74037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g74037_))))))
    (define hash-get
      (lambda (_h71134_ _key71135_)
        (let ((_h71137_
               (if (and (let () (declare (not safe)) (##structure? _h71134_))
                        (let ((__tmp74038
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71134_))))
                          (declare (not safe))
                          (eq? __tmp74038 HashTable::t)))
                   _h71134_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71134_)))))
          (declare (not safe))
          (&hash-get _h71137_ _key71135_))))
    (define &hash-get
      (lambda (_h71131_ _key71132_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h71131_ _key71132_ '#f))))
    (define hash-put!
      (lambda (_h71125_ _key71126_ _value71127_)
        (let ((_h71129_
               (if (and (let () (declare (not safe)) (##structure? _h71125_))
                        (let ((__tmp74039
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71125_))))
                          (declare (not safe))
                          (eq? __tmp74039 HashTable::t)))
                   _h71125_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71125_)))))
          (declare (not safe))
          (&HashTable-set! _h71129_ _key71126_ _value71127_))))
    (define &hash-put!
      (lambda (_h71121_ _key71122_ _value71123_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h71121_ _key71122_ _value71123_))))
    (define hash-update!__%
      (lambda (_h71100_ _key71101_ _update71102_ _default71103_)
        (let ((_h71105_
               (if (and (let () (declare (not safe)) (##structure? _h71100_))
                        (let ((__tmp74040
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71100_))))
                          (declare (not safe))
                          (eq? __tmp74040 HashTable::t)))
                   _h71100_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71100_)))))
          (declare (not safe))
          (&HashTable-update!
           _h71105_
           _key71101_
           _update71102_
           _default71103_))))
    (define hash-update!__0
      (lambda (_h71110_ _key71111_ _update71112_)
        (let ((_default71114_ '#!void))
          (declare (not safe))
          (hash-update!__% _h71110_ _key71111_ _update71112_ _default71114_))))
    (define hash-update!
      (lambda _g74042_
        (let ((_g74041_ (let () (declare (not safe)) (##length _g74042_))))
          (cond ((let () (declare (not safe)) (##fx= _g74041_ 3))
                 (apply (lambda (_h71110_ _key71111_ _update71112_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h71110_
                             _key71111_
                             _update71112_)))
                        _g74042_))
                ((let () (declare (not safe)) (##fx= _g74041_ 4))
                 (apply (lambda (_h71116_
                                 _key71117_
                                 _update71118_
                                 _default71119_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h71116_
                             _key71117_
                             _update71118_
                             _default71119_)))
                        _g74042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g74042_))))))
    (define &hash-update!__%
      (lambda (_h71080_ _key71081_ _update71082_ _default71083_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h71080_
           _key71081_
           _update71082_
           _default71083_))))
    (define &hash-update!__0
      (lambda (_h71088_ _key71089_ _update71090_)
        (let ((_default71092_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h71088_
           _key71089_
           _update71090_
           _default71092_))))
    (define &hash-update!
      (lambda _g74044_
        (let ((_g74043_ (let () (declare (not safe)) (##length _g74044_))))
          (cond ((let () (declare (not safe)) (##fx= _g74043_ 3))
                 (apply (lambda (_h71088_ _key71089_ _update71090_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h71088_
                             _key71089_
                             _update71090_)))
                        _g74044_))
                ((let () (declare (not safe)) (##fx= _g74043_ 4))
                 (apply (lambda (_h71094_
                                 _key71095_
                                 _update71096_
                                 _default71097_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h71094_
                             _key71095_
                             _update71096_
                             _default71097_)))
                        _g74044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g74044_))))))
    (define hash-remove!
      (lambda (_h71074_ _key71075_)
        (let ((_h71077_
               (if (and (let () (declare (not safe)) (##structure? _h71074_))
                        (let ((__tmp74045
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71074_))))
                          (declare (not safe))
                          (eq? __tmp74045 HashTable::t)))
                   _h71074_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71074_)))))
          (declare (not safe))
          (&HashTable-delete! _h71077_ _key71075_))))
    (define &hash-remove!
      (lambda (_h71071_ _key71072_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h71071_ _key71072_))))
    (define hash-key?
      (lambda (_h71066_ _k71067_)
        (let ((_h71069_
               (if (and (let () (declare (not safe)) (##structure? _h71066_))
                        (let ((__tmp74046
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71066_))))
                          (declare (not safe))
                          (eq? __tmp74046 HashTable::t)))
                   _h71066_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71066_)))))
          (declare (not safe))
          (&hash-key? _h71069_ _k71067_))))
    (define &hash-key?
      (lambda (_h71063_ _k71064_)
        (let ((__tmp74047
               (let ((__tmp74048
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h71063_ _k71064_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp74048 absent-value))))
          (declare (not safe))
          (not __tmp74047))))
    (define hash->list
      (lambda (_h71059_)
        (let ((_h71061_
               (if (and (let () (declare (not safe)) (##structure? _h71059_))
                        (let ((__tmp74049
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71059_))))
                          (declare (not safe))
                          (eq? __tmp74049 HashTable::t)))
                   _h71059_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71059_)))))
          (declare (not safe))
          (&hash->list _h71061_))))
    (define &hash->list
      (lambda (_h71052_)
        (let ((_lst71054_ '()))
          (let ((__tmp74050
                 (lambda (_k71056_ _v71057_)
                   (set! _lst71054_
                         (let ((__tmp74051
                                (let ()
                                  (declare (not safe))
                                  (cons _k71056_ _v71057_))))
                           (declare (not safe))
                           (cons __tmp74051 _lst71054_))))))
            (declare (not safe))
            (&HashTable-for-each _h71052_ __tmp74050))
          _lst71054_)))
    (define hash->plist
      (lambda (_h71048_)
        (let ((_h71050_
               (if (and (let () (declare (not safe)) (##structure? _h71048_))
                        (let ((__tmp74052
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71048_))))
                          (declare (not safe))
                          (eq? __tmp74052 HashTable::t)))
                   _h71048_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71048_)))))
          (declare (not safe))
          (&hash->plist _h71050_))))
    (define &hash->plist
      (lambda (_h71041_)
        (let ((_lst71043_ '()))
          (let ((__tmp74053
                 (lambda (_k71045_ _v71046_)
                   (set! _lst71043_
                         (let ((__tmp74054
                                (let ()
                                  (declare (not safe))
                                  (cons _v71046_ _lst71043_))))
                           (declare (not safe))
                           (cons _k71045_ __tmp74054))))))
            (declare (not safe))
            (&HashTable-for-each _h71041_ __tmp74053))
          _lst71043_)))
    (define hash-for-each
      (lambda (_proc71038_ _h71039_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h71039_ _proc71038_))))
    (define hash-map
      (lambda (_proc71030_ _h71031_)
        (let ((_result71033_ '()))
          (let ((__tmp74055
                 (lambda (_k71035_ _v71036_)
                   (set! _result71033_
                         (let ((__tmp74056 (_proc71030_ _k71035_ _v71036_)))
                           (declare (not safe))
                           (cons __tmp74056 _result71033_))))))
            (declare (not safe))
            (HashTable-for-each _h71031_ __tmp74055))
          _result71033_)))
    (define hash-fold
      (lambda (_proc71021_ _iv71022_ _h71023_)
        (let ((_result71025_ _iv71022_))
          (let ((__tmp74057
                 (lambda (_k71027_ _v71028_)
                   (set! _result71025_
                         (_proc71021_ _k71027_ _v71028_ _result71025_)))))
            (declare (not safe))
            (HashTable-for-each _h71023_ __tmp74057))
          _result71025_)))
    (define hash-find__%
      (lambda (_proc70997_ _h70998_ _default-value70999_)
        (call/cc (lambda (_return71001_)
                   (let ((__tmp74058
                          (lambda (_k71003_ _v71004_)
                            (let ((_$e71006_ (_proc70997_ _k71003_ _v71004_)))
                              (if _$e71006_
                                  (_return71001_ _$e71006_)
                                  '#!void)))))
                     (declare (not safe))
                     (HashTable-for-each _h70998_ __tmp74058))
                   _default-value70999_))))
    (define hash-find__0
      (lambda (_proc71012_ _h71013_)
        (let ((_default-value71015_ '#f))
          (declare (not safe))
          (hash-find__% _proc71012_ _h71013_ _default-value71015_))))
    (define hash-find
      (lambda _g74060_
        (let ((_g74059_ (let () (declare (not safe)) (##length _g74060_))))
          (cond ((let () (declare (not safe)) (##fx= _g74059_ 2))
                 (apply (lambda (_proc71012_ _h71013_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc71012_ _h71013_)))
                        _g74060_))
                ((let () (declare (not safe)) (##fx= _g74059_ 3))
                 (apply (lambda (_proc71017_ _h71018_ _default-value71019_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc71017_
                             _h71018_
                             _default-value71019_)))
                        _g74060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g74060_))))))
    (define hash-keys
      (lambda (_h70992_)
        (let ((_h70994_
               (if (and (let () (declare (not safe)) (##structure? _h70992_))
                        (let ((__tmp74061
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70992_))))
                          (declare (not safe))
                          (eq? __tmp74061 HashTable::t)))
                   _h70992_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70992_)))))
          (declare (not safe))
          (&hash-keys _h70994_))))
    (define &hash-keys
      (lambda (_h70985_)
        (let ((_result70987_ '()))
          (let ((__tmp74062
                 (lambda (_k70989_ _v70990_)
                   (set! _result70987_
                         (let ()
                           (declare (not safe))
                           (cons _k70989_ _result70987_))))))
            (declare (not safe))
            (&HashTable-for-each _h70985_ __tmp74062))
          _result70987_)))
    (define hash-values
      (lambda (_h70981_)
        (let ((_h70983_
               (if (and (let () (declare (not safe)) (##structure? _h70981_))
                        (let ((__tmp74063
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70981_))))
                          (declare (not safe))
                          (eq? __tmp74063 HashTable::t)))
                   _h70981_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70981_)))))
          (declare (not safe))
          (&hash-values _h70983_))))
    (define &hash-values
      (lambda (_h70974_)
        (let ((_result70976_ '()))
          (let ((__tmp74064
                 (lambda (_k70978_ _v70979_)
                   (set! _result70976_
                         (let ()
                           (declare (not safe))
                           (cons _v70979_ _result70976_))))))
            (declare (not safe))
            (&HashTable-for-each _h70974_ __tmp74064))
          _result70976_)))
    (define hash-copy
      (lambda (_h70970_)
        (let ((_h70972_
               (if (and (let () (declare (not safe)) (##structure? _h70970_))
                        (let ((__tmp74065
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70970_))))
                          (declare (not safe))
                          (eq? __tmp74065 HashTable::t)))
                   _h70970_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70970_)))))
          (declare (not safe))
          (&HashTable-copy _h70972_))))
    (define &hash-copy
      (lambda (_h70968_)
        (let () (declare (not safe)) (&HashTable-copy _h70968_))))
    (define hash-merge
      (lambda (_h70963_ . _rest70964_)
        (let ((_copy70966_ (let () (declare (not safe)) (hash-copy _h70963_))))
          (apply hash-merge! _copy70966_ _rest70964_)
          _copy70966_)))
    (define hash-merge!
      (lambda (_h70953_ . _rest70954_)
        (let ((_h70956_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h70953_))))
          (for-each
           (lambda (_hr70958_)
             (let ((__tmp74066
                    (lambda (_k70960_ _v70961_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h70956_ _k70960_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h70956_ _k70960_ _v70961_))))))
               (declare (not safe))
               (hash-for-each __tmp74066 _hr70958_)))
           _rest70954_)
          _h70956_)))))
