(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1708337963)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp108936 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp108936
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args104853_
        (apply make-instance UnboundKeyError::t _$args104853_)))
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
      (lambda (_where104727_ _message104728_ . _irritants104729_)
        (raise (let ((__obj108933
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj108933
                  _message104728_
                  'where:
                  _where104727_
                  'irritants:
                  _irritants104729_)
                 __obj108933))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp108941 (list interface-instance::t))
            (__tmp108937
             (let ((__tmp108940
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp108938
                    (let ((__tmp108939
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp108939 '()))))
               (declare (not safe))
               (cons __tmp108940 __tmp108938))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp108941
         '(ref set update del each length copy clear)
         __tmp108937
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
      (let ((__tmp108946 (list interface-instance::t))
            (__tmp108942
             (let ((__tmp108945
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp108943
                    (let ((__tmp108944
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp108944 '()))))
               (declare (not safe))
               (cons __tmp108945 __tmp108943))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp108946
         '(begin-read end-read begin-write end-write)
         __tmp108942
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
      (lambda (_table104720_ _key104721_ _update104722_ _default104723_)
        (let ((_result104725_
               (table-ref _table104720_ _key104721_ _default104723_)))
          (table-set!
           _table104720_
           _key104721_
           (_update104722_ _default104723_)))))
    (define gambit-table-for-each
      (lambda (_table104717_ _proc104718_)
        (table-for-each _proc104718_ _table104717_)))
    (define gambit-table-clear!
      (lambda (_table104715_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table104715_ '0 '5 '#f '#f))))
    (let ((__tmp108947 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108947 'ref table-ref))
    (let ((__tmp108948 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108948 'set! table-set!))
    (let ((__tmp108949 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108949 'update! gambit-table-update!))
    (let ((__tmp108950 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108950 'delete! table-set!))
    (let ((__tmp108951 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108951 'for-each gambit-table-for-each))
    (let ((__tmp108952 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108952 'length table-length))
    (let ((__tmp108953 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108953 'copy table-copy))
    (let ((__tmp108954 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108954 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots104697_ '(table count free hash test seed))
             (_slot-vector104699_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots104697_))))
             (_slot-table104706_
              (let ((_slot-table104701_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot104703_ _field104704_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table104701_
                      _slot104703_
                      _field104704_))
                   (let ((__tmp108955 (symbol->keyword _slot104703_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table104701_
                      __tmp108955
                      _field104704_)))
                 _slots104697_
                 (let ((__tmp108956 (length _slots104697_)))
                   (declare (not safe))
                   (iota__1 __tmp108956 '1)))
                _slot-table104701_))
             (_flags104708_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields104710_ '#())
             (_properties104712_
              (let ((__tmp108959
                     (let ((__tmp108960
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots104697_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp108960)))
                    (__tmp108957
                     (let ((__tmp108958
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp108958 '()))))
                (declare (not safe))
                (cons __tmp108959 __tmp108957))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags104708_
           __table::t
           _fields104710_
           '()
           _slot-vector104699_
           _slot-table104706_
           _properties104712_
           '#f
           '#f))))
    (define hash-table?
      (lambda (_obj104695_)
        (let ((__tmp108961
               (let () (declare (not safe)) (##type-id hash-table::t))))
          (declare (not safe))
          (##structure-instance-of? _obj104695_ __tmp108961))))
    (define locked-hash-table::t
      (let ((__tmp108966 (list))
            (__tmp108962
             (let ((__tmp108965
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp108963
                    (let ((__tmp108964
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp108964 '()))))
               (declare (not safe))
               (cons __tmp108965 __tmp108963))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp108966
         '(table lock)
         __tmp108962
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args104692_
        (apply make-instance locked-hash-table::t _$args104692_)))
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
      (let ((__tmp108971 (list))
            (__tmp108967
             (let ((__tmp108970
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp108968
                    (let ((__tmp108969
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp108969 '()))))
               (declare (not safe))
               (cons __tmp108970 __tmp108968))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp108971
         '(table key-check)
         __tmp108967
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args104689_
        (apply make-instance checked-hash-table::t _$args104689_)))
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
      (let ((__tmp108974 (list hash-table::t))
            (__tmp108972
             (let ((__tmp108973
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp108973 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp108974
         '()
         __tmp108972
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args104686_
        (apply make-instance eq-hash-table::t _$args104686_)))
    (define eqv-hash-table::t
      (let ((__tmp108977 (list hash-table::t))
            (__tmp108975
             (let ((__tmp108976
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp108976 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp108977
         '()
         __tmp108975
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args104683_
        (apply make-instance eqv-hash-table::t _$args104683_)))
    (define symbol-hash-table::t
      (let ((__tmp108980 (list hash-table::t))
            (__tmp108978
             (let ((__tmp108979
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp108979 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp108980
         '()
         __tmp108978
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args104680_
        (apply make-instance symbol-hash-table::t _$args104680_)))
    (define string-hash-table::t
      (let ((__tmp108983 (list hash-table::t))
            (__tmp108981
             (let ((__tmp108982
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp108982 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp108983
         '()
         __tmp108981
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args104677_
        (apply make-instance string-hash-table::t _$args104677_)))
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
    (define HashTable-ref
      (lambda (_h104671_ _key104672_ _default104673_)
        (let ((_h104675_
               (if (and (let () (declare (not safe)) (##structure? _h104671_))
                        (let ((__tmp108984
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h104671_))))
                          (declare (not safe))
                          (eq? __tmp108984 HashTable::t)))
                   _h104671_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h104671_)))))
          (declare (not safe))
          (&HashTable-ref _h104675_ _key104672_ _default104673_))))
    (define &HashTable-ref
      (lambda (_h104666_ _key104667_ _default104668_)
        (declare (not safe))
        ((##unchecked-structure-ref _h104666_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h104666_ '1 interface-instance::t '#f)
         _key104667_
         _default104668_)))
    (define HashTable-set!
      (lambda (_h104660_ _key104661_ _value104662_)
        (let ((_h104664_
               (if (and (let () (declare (not safe)) (##structure? _h104660_))
                        (let ((__tmp108985
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h104660_))))
                          (declare (not safe))
                          (eq? __tmp108985 HashTable::t)))
                   _h104660_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h104660_)))))
          (declare (not safe))
          (&HashTable-set! _h104664_ _key104661_ _value104662_))))
    (define &HashTable-set!
      (lambda (_h104655_ _key104656_ _value104657_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h104655_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h104655_ '1 interface-instance::t '#f)
           _key104656_
           _value104657_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h104648_ _key104649_ _update104650_ _default104651_)
        (let ((_h104653_
               (if (and (let () (declare (not safe)) (##structure? _h104648_))
                        (let ((__tmp108986
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h104648_))))
                          (declare (not safe))
                          (eq? __tmp108986 HashTable::t)))
                   _h104648_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h104648_)))))
          (declare (not safe))
          (&HashTable-update!
           _h104653_
           _key104649_
           _update104650_
           _default104651_))))
    (define &HashTable-update!
      (lambda (_h104642_ _key104643_ _update104644_ _default104645_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h104642_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h104642_ '1 interface-instance::t '#f)
           _key104643_
           _update104644_
           _default104645_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h104637_ _key104638_)
        (let ((_h104640_
               (if (and (let () (declare (not safe)) (##structure? _h104637_))
                        (let ((__tmp108987
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h104637_))))
                          (declare (not safe))
                          (eq? __tmp108987 HashTable::t)))
                   _h104637_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h104637_)))))
          (declare (not safe))
          (&HashTable-delete! _h104640_ _key104638_))))
    (define &HashTable-delete!
      (lambda (_h104633_ _key104634_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h104633_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h104633_ '1 interface-instance::t '#f)
           _key104634_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h104628_ _proc104629_)
        (let ((_h104631_
               (if (and (let () (declare (not safe)) (##structure? _h104628_))
                        (let ((__tmp108988
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h104628_))))
                          (declare (not safe))
                          (eq? __tmp108988 HashTable::t)))
                   _h104628_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h104628_)))))
          (declare (not safe))
          (&HashTable-for-each _h104631_ _proc104629_))))
    (define &HashTable-for-each
      (lambda (_h104624_ _proc104625_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h104624_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h104624_ '1 interface-instance::t '#f)
           _proc104625_)
          '#!void)))
    (define HashTable-length
      (lambda (_h104620_)
        (let ((_h104622_
               (if (and (let () (declare (not safe)) (##structure? _h104620_))
                        (let ((__tmp108989
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h104620_))))
                          (declare (not safe))
                          (eq? __tmp108989 HashTable::t)))
                   _h104620_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h104620_)))))
          (declare (not safe))
          (&HashTable-length _h104622_))))
    (define &HashTable-length
      (lambda (_h104617_)
        (declare (not safe))
        ((##unchecked-structure-ref _h104617_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h104617_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h104613_)
        (let ((_h104615_
               (if (and (let () (declare (not safe)) (##structure? _h104613_))
                        (let ((__tmp108990
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h104613_))))
                          (declare (not safe))
                          (eq? __tmp108990 HashTable::t)))
                   _h104613_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h104613_)))))
          (declare (not safe))
          (&HashTable-copy _h104615_))))
    (define &HashTable-copy
      (lambda (_h104610_)
        (declare (not safe))
        ((##unchecked-structure-ref _h104610_ '8 HashTable::t '#f)
         (##unchecked-structure-ref _h104610_ '1 interface-instance::t '#f))))
    (define HashTable-clear!
      (lambda (_h104606_)
        (let ((_h104608_
               (if (and (let () (declare (not safe)) (##structure? _h104606_))
                        (let ((__tmp108991
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h104606_))))
                          (declare (not safe))
                          (eq? __tmp108991 HashTable::t)))
                   _h104606_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h104606_)))))
          (declare (not safe))
          (&HashTable-clear! _h104608_))))
    (define &HashTable-clear!
      (lambda (_h104603_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h104603_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h104603_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl104600_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl104600_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl104600_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl104597_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl104597_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl104597_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl104594_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl104594_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl104594_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl104591_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl104591_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl104591_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref101630_
      (lambda (_self104578_ _key104580_ _default104581_)
        (let ((_h104583_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104578_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l104585_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104578_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l104585_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h104583_ _key104580_ _default104581_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l104585_)))))))
    (define locked-hash-table::ref::specialize
      (lambda (__t108841)
        (let ((__lock108842
               (let ((__tmp108844
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108841 'lock))))
                 (if __tmp108844
                     __tmp108844
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock)))))
              (__table108843
               (let ((__tmp108845
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108841 'table))))
                 (if __tmp108845
                     __tmp108845
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self104578_ _key104580_ _default104581_)
            (let ((_h104583_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104578_
                      __table108843
                      __t108841
                      '#f)))
                  (_l104585_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104578_
                      __lock108842
                      __t108841
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l104585_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-ref _h104583_ _key104580_ _default104581_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l104585_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::ref101630_
       locked-hash-table::ref::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref101630_
       '#f))
    (define _locked-hash-table::set!101632_
      (lambda (_self104442_ _key104444_ _value104445_)
        (let ((_h104447_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104442_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l104449_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104442_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l104449_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h104447_ _key104444_ _value104445_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l104449_)))))))
    (define locked-hash-table::set!::specialize
      (lambda (__t108846)
        (let ((__lock108847
               (let ((__tmp108849
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108846 'lock))))
                 (if __tmp108849
                     __tmp108849
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock)))))
              (__table108848
               (let ((__tmp108850
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108846 'table))))
                 (if __tmp108850
                     __tmp108850
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self104442_ _key104444_ _value104445_)
            (let ((_h104447_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104442_
                      __table108848
                      __t108846
                      '#f)))
                  (_l104449_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104442_
                      __lock108847
                      __t108846
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l104449_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-set! _h104447_ _key104444_ _value104445_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l104449_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::set!101632_
       locked-hash-table::set!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!101632_
       '#f))
    (define _locked-hash-table::update!101634_
      (lambda (_self104305_ _key104307_ _update104308_ _default104309_)
        (let ((_h104311_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104305_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l104313_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104305_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l104313_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h104311_
                _key104307_
                _update104308_
                _default104309_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l104313_)))))))
    (define locked-hash-table::update!::specialize
      (lambda (__t108851)
        (let ((__table108852
               (let ((__tmp108854
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108851 'table))))
                 (if __tmp108854
                     __tmp108854
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__lock108853
               (let ((__tmp108855
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108851 'lock))))
                 (if __tmp108855
                     __tmp108855
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock))))))
          (lambda (_self104305_ _key104307_ _update104308_ _default104309_)
            (let ((_h104311_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104305_
                      __table108852
                      __t108851
                      '#f)))
                  (_l104313_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104305_
                      __lock108853
                      __t108851
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l104313_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-update!
                    _h104311_
                    _key104307_
                    _update104308_
                    _default104309_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l104313_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::update!101634_
       locked-hash-table::update!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!101634_
       '#f))
    (define _locked-hash-table::delete!101636_
      (lambda (_self104170_ _key104172_)
        (let ((_h104174_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104170_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l104176_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104170_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l104176_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h104174_ _key104172_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l104176_)))))))
    (define locked-hash-table::delete!::specialize
      (lambda (__t108856)
        (let ((__lock108857
               (let ((__tmp108859
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108856 'lock))))
                 (if __tmp108859
                     __tmp108859
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock)))))
              (__table108858
               (let ((__tmp108860
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108856 'table))))
                 (if __tmp108860
                     __tmp108860
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self104170_ _key104172_)
            (let ((_h104174_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104170_
                      __table108858
                      __t108856
                      '#f)))
                  (_l104176_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104170_
                      __lock108857
                      __t108856
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l104176_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-delete! _h104174_ _key104172_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l104176_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::delete!101636_
       locked-hash-table::delete!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!101636_
       '#f))
    (define _locked-hash-table::for-each101638_
      (lambda (_self104035_ _proc104037_)
        (let ((_h104039_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104035_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l104041_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104035_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l104041_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h104039_ _proc104037_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l104041_)))))))
    (define locked-hash-table::for-each::specialize
      (lambda (__t108861)
        (let ((__lock108862
               (let ((__tmp108864
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108861 'lock))))
                 (if __tmp108864
                     __tmp108864
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock)))))
              (__table108863
               (let ((__tmp108865
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108861 'table))))
                 (if __tmp108865
                     __tmp108865
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self104035_ _proc104037_)
            (let ((_h104039_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104035_
                      __table108863
                      __t108861
                      '#f)))
                  (_l104041_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104035_
                      __lock108862
                      __t108861
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l104041_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-for-each _h104039_ _proc104037_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l104041_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::for-each101638_
       locked-hash-table::for-each::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each101638_
       '#f))
    (define _locked-hash-table::length101640_
      (lambda (_self103901_)
        (let ((_h103904_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103901_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l103906_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103901_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l103906_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h103904_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l103906_)))))))
    (define locked-hash-table::length::specialize
      (lambda (__t108866)
        (let ((__lock108867
               (let ((__tmp108869
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108866 'lock))))
                 (if __tmp108869
                     __tmp108869
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock)))))
              (__table108868
               (let ((__tmp108870
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108866 'table))))
                 (if __tmp108870
                     __tmp108870
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self103901_)
            (let ((_h103904_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103901_
                      __table108868
                      __t108866
                      '#f)))
                  (_l103906_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103901_
                      __lock108867
                      __t108866
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l103906_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-length _h103904_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l103906_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::length101640_
       locked-hash-table::length::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length101640_
       '#f))
    (define _locked-hash-table::copy101642_
      (lambda (_self103767_)
        (let ((_h103770_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103767_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l103772_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103767_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l103772_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-copy _h103770_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l103772_)))))))
    (define locked-hash-table::copy::specialize
      (lambda (__t108871)
        (let ((__lock108872
               (let ((__tmp108874
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108871 'lock))))
                 (if __tmp108874
                     __tmp108874
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock)))))
              (__table108873
               (let ((__tmp108875
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108871 'table))))
                 (if __tmp108875
                     __tmp108875
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self103767_)
            (let ((_h103770_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103767_
                      __table108873
                      __t108871
                      '#f)))
                  (_l103772_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103767_
                      __lock108872
                      __t108871
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l103772_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-copy _h103770_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l103772_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::copy101642_
       locked-hash-table::copy::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy101642_
       '#f))
    (define _locked-hash-table::clear!101644_
      (lambda (_self103633_)
        (let ((_h103636_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103633_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l103638_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103633_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l103638_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h103636_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l103638_)))))))
    (define locked-hash-table::clear!::specialize
      (lambda (__t108876)
        (let ((__table108877
               (let ((__tmp108879
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108876 'table))))
                 (if __tmp108879
                     __tmp108879
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__lock108878
               (let ((__tmp108880
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108876 'lock))))
                 (if __tmp108880
                     __tmp108880
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock))))))
          (lambda (_self103633_)
            (let ((_h103636_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103633_
                      __table108877
                      __t108876
                      '#f)))
                  (_l103638_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103633_
                      __lock108878
                      __t108876
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l103638_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-clear! _h103636_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l103638_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::clear!101644_
       locked-hash-table::clear!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!101644_
       '#f))
    (let ((__tmp108992 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108992 'begin-read! mutex-lock!))
    (let ((__tmp108993 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108993 'end-read! mutex-unlock!))
    (let ((__tmp108994 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108994 'begin-write! mutex-lock!))
    (let ((__tmp108995 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108995 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref101922_
      (lambda (_self103497_ _key103498_ _default103499_)
        (let ((_h103501_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103497_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?103503_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103497_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g103505103507_)
             (if (_g103505103507_ _key103498_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key103498_))))
           _key?103503_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h103501_ _key103498_ _default103499_)))))
    (define checked-hash-table::ref::specialize
      (lambda (__t108881)
        (let ((__table108882
               (let ((__tmp108884
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108881 'table))))
                 (if __tmp108884
                     __tmp108884
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__key-check108883
               (let ((__tmp108885
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108881 'key-check))))
                 (if __tmp108885
                     __tmp108885
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check))))))
          (lambda (_self103497_ _key103498_ _default103499_)
            (let ((_h103501_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103497_
                      __table108882
                      __t108881
                      '#f)))
                  (_key?103503_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103497_
                      __key-check108883
                      __t108881
                      '#f))))
              ((lambda (_g103505103507_)
                 (if (_g103505103507_ _key103498_)
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _key103498_))))
               _key?103503_)
              (let ()
                (declare (not safe))
                (&HashTable-ref _h103501_ _key103498_ _default103499_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::ref101922_
       checked-hash-table::ref::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref101922_
       '#f))
    (define _checked-hash-table::set!101924_
      (lambda (_self103361_ _key103362_ _value103363_)
        (let ((_h103365_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103361_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?103367_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103361_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g103369103371_)
             (if (_g103369103371_ _key103362_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key103362_))))
           _key?103367_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h103365_ _key103362_ _value103363_)))))
    (define checked-hash-table::set!::specialize
      (lambda (__t108886)
        (let ((__table108887
               (let ((__tmp108889
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108886 'table))))
                 (if __tmp108889
                     __tmp108889
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__key-check108888
               (let ((__tmp108890
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108886 'key-check))))
                 (if __tmp108890
                     __tmp108890
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check))))))
          (lambda (_self103361_ _key103362_ _value103363_)
            (let ((_h103365_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103361_
                      __table108887
                      __t108886
                      '#f)))
                  (_key?103367_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103361_
                      __key-check108888
                      __t108886
                      '#f))))
              ((lambda (_g103369103371_)
                 (if (_g103369103371_ _key103362_)
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _key103362_))))
               _key?103367_)
              (let ()
                (declare (not safe))
                (&HashTable-set! _h103365_ _key103362_ _value103363_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::set!101924_
       checked-hash-table::set!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!101924_
       '#f))
    (define _checked-hash-table::update!101926_
      (lambda (_self103226_ _key103227_ _update103228_ _default103229_)
        (let ((_h103231_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103226_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?103233_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103226_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?103236_)
             (if (_key?103236_ _key103227_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key103227_)))
             (if (let () (declare (not safe)) (procedure? _update103228_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update103228_))))
           _key?103233_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h103231_
             _key103227_
             _update103228_
             _default103229_)))))
    (define checked-hash-table::update!::specialize
      (lambda (__t108891)
        (let ((__table108892
               (let ((__tmp108894
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108891 'table))))
                 (if __tmp108894
                     __tmp108894
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__key-check108893
               (let ((__tmp108895
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108891 'key-check))))
                 (if __tmp108895
                     __tmp108895
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check))))))
          (lambda (_self103226_ _key103227_ _update103228_ _default103229_)
            (let ((_h103231_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103226_
                      __table108892
                      __t108891
                      '#f)))
                  (_key?103233_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103226_
                      __key-check108893
                      __t108891
                      '#f))))
              ((lambda (_key?103236_)
                 (if (_key?103236_ _key103227_)
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _key103227_)))
                 (if (let () (declare (not safe)) (procedure? _update103228_))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _update103228_))))
               _key?103233_)
              (let ()
                (declare (not safe))
                (&HashTable-update!
                 _h103231_
                 _key103227_
                 _update103228_
                 _default103229_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::update!101926_
       checked-hash-table::update!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!101926_
       '#f))
    (define _checked-hash-table::delete!101928_
      (lambda (_self103091_ _key103092_)
        (let ((_h103094_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103091_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?103096_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103091_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g103098103100_)
             (if (_g103098103100_ _key103092_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key103092_))))
           _key?103096_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h103094_ _key103092_)))))
    (define checked-hash-table::delete!::specialize
      (lambda (__t108896)
        (let ((__key-check108897
               (let ((__tmp108899
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108896 'key-check))))
                 (if __tmp108899
                     __tmp108899
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check)))))
              (__table108898
               (let ((__tmp108900
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108896 'table))))
                 (if __tmp108900
                     __tmp108900
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self103091_ _key103092_)
            (let ((_h103094_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103091_
                      __table108898
                      __t108896
                      '#f)))
                  (_key?103096_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103091_
                      __key-check108897
                      __t108896
                      '#f))))
              ((lambda (_g103098103100_)
                 (if (_g103098103100_ _key103092_)
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _key103092_))))
               _key?103096_)
              (let ()
                (declare (not safe))
                (&HashTable-delete! _h103094_ _key103092_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::delete!101928_
       checked-hash-table::delete!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!101928_
       '#f))
    (define _checked-hash-table::for-each101930_
      (lambda (_self102959_ _proc102960_)
        (let ((_h102962_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self102959_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?102964_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self102959_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g108996_)
             (if (let () (declare (not safe)) (procedure? _proc102960_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc102960_))))
           _key?102964_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h102962_ _proc102960_)))))
    (define checked-hash-table::for-each::specialize
      (lambda (__t108901)
        (let ((__table108902
               (let ((__tmp108904
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108901 'table))))
                 (if __tmp108904
                     __tmp108904
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__key-check108903
               (let ((__tmp108905
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108901 'key-check))))
                 (if __tmp108905
                     __tmp108905
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check))))))
          (lambda (_self102959_ _proc102960_)
            (let ((_h102962_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self102959_
                      __table108902
                      __t108901
                      '#f)))
                  (_key?102964_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self102959_
                      __key-check108903
                      __t108901
                      '#f))))
              ((lambda (_g108997_)
                 (if (let () (declare (not safe)) (procedure? _proc102960_))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _proc102960_))))
               _key?102964_)
              (let ()
                (declare (not safe))
                (&HashTable-for-each _h102962_ _proc102960_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::for-each101930_
       checked-hash-table::for-each::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each101930_
       '#f))
    (define _checked-hash-table::length101932_
      (lambda (_self102829_)
        (let ((_h102831_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self102829_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?102833_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self102829_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h102831_)))))
    (define checked-hash-table::length::specialize
      (lambda (__t108906)
        (let ((__key-check108907
               (let ((__tmp108909
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108906 'key-check))))
                 (if __tmp108909
                     __tmp108909
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check)))))
              (__table108908
               (let ((__tmp108910
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108906 'table))))
                 (if __tmp108910
                     __tmp108910
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self102829_)
            (let ((_h102831_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self102829_
                      __table108908
                      __t108906
                      '#f)))
                  (_key?102833_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self102829_
                      __key-check108907
                      __t108906
                      '#f))))
              (let () (declare (not safe)) (&HashTable-length _h102831_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::length101932_
       checked-hash-table::length::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length101932_
       '#f))
    (define _checked-hash-table::copy101934_
      (lambda (_self102699_)
        (let ((_h102701_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self102699_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?102703_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self102699_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h102701_)))))
    (define checked-hash-table::copy::specialize
      (lambda (__t108911)
        (let ((__key-check108912
               (let ((__tmp108914
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108911 'key-check))))
                 (if __tmp108914
                     __tmp108914
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check)))))
              (__table108913
               (let ((__tmp108915
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108911 'table))))
                 (if __tmp108915
                     __tmp108915
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self102699_)
            (let ((_h102701_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self102699_
                      __table108913
                      __t108911
                      '#f)))
                  (_key?102703_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self102699_
                      __key-check108912
                      __t108911
                      '#f))))
              (let () (declare (not safe)) (&HashTable-copy _h102701_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::copy101934_
       checked-hash-table::copy::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy101934_
       '#f))
    (define _checked-hash-table::clear!101936_
      (lambda (_self102569_)
        (let ((_h102571_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self102569_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?102573_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self102569_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h102571_)))))
    (define checked-hash-table::clear!::specialize
      (lambda (__t108916)
        (let ((__key-check108917
               (let ((__tmp108919
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108916 'key-check))))
                 (if __tmp108919
                     __tmp108919
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check)))))
              (__table108918
               (let ((__tmp108920
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t108916 'table))))
                 (if __tmp108920
                     __tmp108920
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self102569_)
            (let ((_h102571_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self102569_
                      __table108918
                      __t108916
                      '#f)))
                  (_key?102573_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self102569_
                      __key-check108917
                      __t108916
                      '#f))))
              (let () (declare (not safe)) (&HashTable-clear! _h102571_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::clear!101936_
       checked-hash-table::clear!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!101936_
       '#f))
    (define make-generic-hash-table
      (lambda (_table102439_
               _count102440_
               _free102441_
               _hash102442_
               _test102443_
               _seed102444_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table102439_
           _count102440_
           _free102441_
           _hash102442_
           _test102443_
           _seed102444_))))
    (define make-hash-table__%
      (lambda (_g108998_
               _size-hint102302102312_
               _seed102303102314_
               _test102304102316_
               _hash102305102318_
               _lock102306102320_
               _check102307102322_
               _weak-keys102308102324_
               _weak-values102309102326_)
        (let* ((_size-hint102329_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint102302102312_ absent-value))
                    '#f
                    _size-hint102302102312_))
               (_seed102331_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed102303102314_ absent-value))
                    (random-integer (macro-max-fixnum32))
                    _seed102303102314_))
               (_test102333_
                (if (let ()
                      (declare (not safe))
                      (eq? _test102304102316_ absent-value))
                    equal?
                    _test102304102316_))
               (_hash102335_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash102305102318_ absent-value))
                    '#f
                    _hash102305102318_))
               (_lock102337_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock102306102320_ absent-value))
                    '#f
                    _lock102306102320_))
               (_check102339_
                (if (let ()
                      (declare (not safe))
                      (eq? _check102307102322_ absent-value))
                    '#f
                    _check102307102322_))
               (_weak-keys102341_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys102308102324_ absent-value))
                    '#f
                    _weak-keys102308102324_))
               (_weak-values102343_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values102309102326_ absent-value))
                    '#f
                    _weak-values102309102326_)))
          (letrec ((_wrap-lock102345_
                    (lambda (_ht102423_)
                      (if _lock102337_
                          (let ((__tmp108999
                                 (let ((__tmp109000
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock102337_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht102423_
                                    __tmp109000))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp108999))
                          _ht102423_)))
                   (_wrap-checked102346_
                    (lambda (_ht102420_ _implicit102421_)
                      (if _check102339_
                          (let ((__tmp109001
                                 (let ((__tmp109002
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check102339_))
                                            _check102339_
                                            _implicit102421_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht102420_
                                    __tmp109002))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp109001))
                          _ht102420_)))
                   (_make102347_
                    (lambda (_kons102408_
                             _key?102409_
                             _hash102410_
                             _test102411_)
                      (let* ((_size102413_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint102329_)))
                             (_table102415_
                              (make-vector _size102413_ (macro-unused-obj)))
                             (_ht102417_
                              (let ((__tmp109003
                                     (_kons102408_
                                      _table102415_
                                      '0
                                      (fxquotient _size102413_ '2)
                                      _hash102410_
                                      _test102411_
                                      _seed102331_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp109003))))
                        (let ((__tmp109004
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock102345_ _ht102417_))))
                          (declare (not safe))
                          (_wrap-checked102346_ __tmp109004 _key?102409_)))))
                   (_make-gambit-table102348_
                    (lambda ()
                      (let* ((_size102393_
                              (let ((_$e102390_ _size-hint102329_))
                                (if _$e102390_ _$e102390_ (macro-absent-obj))))
                             (_test102398_
                              (let ((_$e102395_ _test102333_))
                                (if _$e102395_ _$e102395_ equal?)))
                             (_hash102403_
                              (let ((_$e102400_ _hash102335_))
                                (if _$e102400_
                                    _$e102400_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test102398_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test102398_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht102405_
                              (let ((__tmp109005
                                     (make-table
                                      'size:
                                      _size102393_
                                      'test:
                                      _test102398_
                                      'hash:
                                      _hash102403_
                                      'weak-keys:
                                      _weak-keys102341_
                                      'weak-values:
                                      _weak-values102343_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp109005))))
                        (let ((__tmp109006
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock102345_ _ht102405_))))
                          (declare (not safe))
                          (_wrap-checked102346_ __tmp109006 true))))))
            (if (or _weak-keys102341_ _weak-values102343_)
                (let () (declare (not safe)) (_make-gambit-table102348_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test102333_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test102333_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash102335_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash102335_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash102335_ eq-hash))))
                    (let ()
                      (declare (not safe))
                      (_make102347_ make-eq-hash-table true eq-hash eq?))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test102333_ eqv?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test102333_ ##eqv?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash102335_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash102335_ eqv?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash102335_ eqv-hash))))
                        (let ()
                          (declare (not safe))
                          (_make102347_
                           make-eqv-hash-table
                           true
                           eqv-hash
                           eqv?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test102333_ eq?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test102333_ ##eq?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (eq? _hash102335_ symbolic-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash102335_ ##symbol-hash))))
                            (let ()
                              (declare (not safe))
                              (_make102347_
                               make-symbol-hash-table
                               symbolic?
                               symbolic-hash
                               eq?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test102333_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test102333_ ##equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test102333_ string=?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test102333_ ##string=?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash102335_ string-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash102335_
                                                ##string=?-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make102347_
                                   make-string-hash-table
                                   string?
                                   string-hash
                                   ##string=?))
                                (if (and (let ()
                                           (declare (not safe))
                                           (eq? _test102333_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (not _hash102335_)))
                                    (let ()
                                      (declare (not safe))
                                      (_make102347_
                                       make-generic-hash-table
                                       true
                                       equal?-hash
                                       equal?))
                                    (if (let ((__tmp109008
                                               (let ()
                                                 (declare (not safe))
                                                 (procedure? _test102333_))))
                                          (declare (not safe))
                                          (not __tmp109008))
                                        (let ()
                                          (declare (not safe))
                                          (error '"bad hash table test function; expected procedure"
                                                 _test102333_))
                                        (if (let ((__tmp109007
                                                   (let ()
                                                     (declare (not safe))
                                                     (procedure?
                                                      _hash102335_))))
                                              (declare (not safe))
                                              (not __tmp109007))
                                            (let ()
                                              (declare (not safe))
                                              (error '"bad hash table hash function; expected procedure"
                                                     _hash102335_))
                                            (let ()
                                              (declare (not safe))
                                              (_make102347_
                                               make-generic-hash-table
                                               true
                                               _hash102335_
                                               _test102333_))))))))))))))
    (define make-hash-table__@
      (lambda (_keys102301102428_ . _args102430_)
        (apply make-hash-table__%
               _keys102301102428_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys102301102428_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys102301102428_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys102301102428_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys102301102428_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys102301102428_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys102301102428_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys102301102428_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys102301102428_
                  'weak-values:
                  absent-value))
               _args102430_)))
    (define make-hash-table
      (lambda _args102310102436_
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
               _args102310102436_)))
    (define make-hash-table-eq
      (lambda _args102298_ (apply make-hash-table 'test: eq? _args102298_)))
    (define make-hash-table-eqv
      (lambda _args102296_ (apply make-hash-table 'test: eqv? _args102296_)))
    (define make-hash-table-symbolic
      (lambda _args102294_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args102294_)))
    (define make-hash-table-string
      (lambda _args102292_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args102292_)))
    (define list->hash-table
      (lambda (_lst102289_ . _args102290_)
        (let ((__tmp109009
               (apply make-hash-table
                      'size:
                      (length _lst102289_)
                      _args102290_)))
          (declare (not safe))
          (list->hash-table! _lst102289_ __tmp109009))))
    (define list->hash-table-eq
      (lambda (_lst102286_ . _args102287_)
        (let ((__tmp109010
               (apply make-hash-table-eq
                      'size:
                      (length _lst102286_)
                      _args102287_)))
          (declare (not safe))
          (list->hash-table! _lst102286_ __tmp109010))))
    (define list->hash-table-eqv
      (lambda (_lst102283_ . _args102284_)
        (let ((__tmp109011
               (apply make-hash-table-eqv
                      'size:
                      (length _lst102283_)
                      _args102284_)))
          (declare (not safe))
          (list->hash-table! _lst102283_ __tmp109011))))
    (define list->hash-table-symbolic
      (lambda (_lst102280_ . _args102281_)
        (let ((__tmp109012
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst102280_)
                      _args102281_)))
          (declare (not safe))
          (list->hash-table! _lst102280_ __tmp109012))))
    (define list->hash-table-string
      (lambda (_lst102277_ . _args102278_)
        (let ((__tmp109013
               (apply make-hash-table-string
                      'size:
                      (length _lst102277_)
                      _args102278_)))
          (declare (not safe))
          (list->hash-table! _lst102277_ __tmp109013))))
    (define list->hash-table!
      (lambda (_lst102244_ _h102245_)
        (for-each
         (lambda (_el102247_)
           (let* ((_el102248102255_ _el102247_)
                  (_E102250102259_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el102248102255_))))
                  (_K102251102265_
                   (lambda (_v102262_ _k102263_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h102245_ _k102263_ _v102262_)))))
             (if (let () (declare (not safe)) (##pair? _el102248102255_))
                 (let ((_hd102252102268_
                        (let () (declare (not safe)) (##car _el102248102255_)))
                       (_tl102253102270_
                        (let ()
                          (declare (not safe))
                          (##cdr _el102248102255_))))
                   (let* ((_k102273_ _hd102252102268_)
                          (_v102275_ _tl102253102270_))
                     (declare (not safe))
                     (_K102251102265_ _v102275_ _k102273_)))
                 (let () (declare (not safe)) (_E102250102259_)))))
         _lst102244_)
        _h102245_))
    (define plist->hash-table
      (lambda (_lst102241_ . _args102242_)
        (let ((__tmp109014
               (apply make-hash-table
                      'size:
                      (length _lst102241_)
                      _args102242_)))
          (declare (not safe))
          (plist->hash-table! _lst102241_ __tmp109014))))
    (define plist->hash-table-eq
      (lambda (_lst102238_ . _args102239_)
        (let ((__tmp109015
               (apply make-hash-table-eq
                      'size:
                      (length _lst102238_)
                      _args102239_)))
          (declare (not safe))
          (plist->hash-table! _lst102238_ __tmp109015))))
    (define plist->hash-table-eqv
      (lambda (_lst102235_ . _args102236_)
        (let ((__tmp109016
               (apply make-hash-table-eqv
                      'size:
                      (length _lst102235_)
                      _args102236_)))
          (declare (not safe))
          (plist->hash-table! _lst102235_ __tmp109016))))
    (define plist->hash-table-symbolic
      (lambda (_lst102232_ . _args102233_)
        (let ((__tmp109017
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst102232_)
                      _args102233_)))
          (declare (not safe))
          (plist->hash-table! _lst102232_ __tmp109017))))
    (define plist->hash-table-string
      (lambda (_lst102229_ . _args102230_)
        (let ((__tmp109018
               (apply make-hash-table-string
                      'size:
                      (length _lst102229_)
                      _args102230_)))
          (declare (not safe))
          (plist->hash-table! _lst102229_ __tmp109018))))
    (define plist->hash-table!
      (lambda (_lst102169_ _h102170_)
        (let _loop102172_ ((_rest102174_ _lst102169_))
          (let* ((_rest102175102187_ _rest102174_)
                 (_else102178102195_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst102169_)))))
            (let ((_K102181102210_
                   (lambda (_rest102206_ _val102207_ _key102208_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h102170_ _key102208_ _val102207_))
                     (let ()
                       (declare (not safe))
                       (_loop102172_ _rest102206_))))
                  (_K102180102200_ (lambda () _h102170_)))
              (let ((_try-match102177102203_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest102175102187_))
                           (let () (declare (not safe)) (_K102180102200_))
                           (let ()
                             (declare (not safe))
                             (_else102178102195_))))))
                (if (let () (declare (not safe)) (##pair? _rest102175102187_))
                    (let ((_tl102183102215_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest102175102187_)))
                          (_hd102182102213_
                           (let ()
                             (declare (not safe))
                             (##car _rest102175102187_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl102183102215_))
                          (let ((_tl102185102222_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl102183102215_)))
                                (_hd102184102220_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl102183102215_))))
                            (let ((_key102218_ _hd102182102213_)
                                  (_val102225_ _hd102184102220_)
                                  (_rest102227_ _tl102185102222_))
                              (let ()
                                (declare (not safe))
                                (_K102181102210_
                                 _rest102227_
                                 _val102225_
                                 _key102218_))))
                          (let () (declare (not safe)) (_else102178102195_))))
                    (let ()
                      (declare (not safe))
                      (_try-match102177102203_)))))))))
    (define hash-length
      (lambda (_h102165_)
        (let ((_h102167_
               (if (and (let () (declare (not safe)) (##structure? _h102165_))
                        (let ((__tmp109019
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h102165_))))
                          (declare (not safe))
                          (eq? __tmp109019 HashTable::t)))
                   _h102165_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h102165_)))))
          (declare (not safe))
          (&HashTable-length _h102167_))))
    (define &hash-length
      (lambda (_h102163_)
        (let () (declare (not safe)) (&HashTable-length _h102163_))))
    (define hash-ref__%
      (lambda (_h102145_ _key102146_ _default102147_)
        (let ((_h102149_
               (if (and (let () (declare (not safe)) (##structure? _h102145_))
                        (let ((__tmp109020
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h102145_))))
                          (declare (not safe))
                          (eq? __tmp109020 HashTable::t)))
                   _h102145_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h102145_)))))
          (declare (not safe))
          (&hash-ref__% _h102149_ _key102146_ _default102147_))))
    (define hash-ref__0
      (lambda (_h102154_ _key102155_)
        (let ((_default102157_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h102154_ _key102155_ _default102157_))))
    (define hash-ref
      (lambda _g109022_
        (let ((_g109021_ (let () (declare (not safe)) (##length _g109022_))))
          (cond ((let () (declare (not safe)) (##fx= _g109021_ 2))
                 (apply (lambda (_h102154_ _key102155_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h102154_ _key102155_)))
                        _g109022_))
                ((let () (declare (not safe)) (##fx= _g109021_ 3))
                 (apply (lambda (_h102159_ _key102160_ _default102161_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__%
                             _h102159_
                             _key102160_
                             _default102161_)))
                        _g109022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g109022_))))))
    (define &hash-ref__%
      (lambda (_h102126_ _key102127_ _default102128_)
        (let ((_result102130_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h102126_ _key102127_ _default102128_))))
          (if (let ((__tmp109023 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result102130_ __tmp109023))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h102126_
                 'key:
                 _key102127_))
              _result102130_))))
    (define &hash-ref__0
      (lambda (_h102135_ _key102136_)
        (let ((_default102138_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h102135_ _key102136_ _default102138_))))
    (define &hash-ref
      (lambda _g109025_
        (let ((_g109024_ (let () (declare (not safe)) (##length _g109025_))))
          (cond ((let () (declare (not safe)) (##fx= _g109024_ 2))
                 (apply (lambda (_h102135_ _key102136_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h102135_ _key102136_)))
                        _g109025_))
                ((let () (declare (not safe)) (##fx= _g109024_ 3))
                 (apply (lambda (_h102140_ _key102141_ _default102142_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__%
                             _h102140_
                             _key102141_
                             _default102142_)))
                        _g109025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g109025_))))))
    (define hash-get
      (lambda (_h102120_ _key102121_)
        (let ((_h102123_
               (if (and (let () (declare (not safe)) (##structure? _h102120_))
                        (let ((__tmp109026
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h102120_))))
                          (declare (not safe))
                          (eq? __tmp109026 HashTable::t)))
                   _h102120_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h102120_)))))
          (declare (not safe))
          (&hash-get _h102123_ _key102121_))))
    (define &hash-get
      (lambda (_h102117_ _key102118_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h102117_ _key102118_ '#f))))
    (define hash-put!
      (lambda (_h102111_ _key102112_ _value102113_)
        (let ((_h102115_
               (if (and (let () (declare (not safe)) (##structure? _h102111_))
                        (let ((__tmp109027
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h102111_))))
                          (declare (not safe))
                          (eq? __tmp109027 HashTable::t)))
                   _h102111_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h102111_)))))
          (declare (not safe))
          (&HashTable-set! _h102115_ _key102112_ _value102113_))))
    (define &hash-put!
      (lambda (_h102107_ _key102108_ _value102109_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h102107_ _key102108_ _value102109_))))
    (define hash-update!__%
      (lambda (_h102086_ _key102087_ _update102088_ _default102089_)
        (let ((_h102091_
               (if (and (let () (declare (not safe)) (##structure? _h102086_))
                        (let ((__tmp109028
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h102086_))))
                          (declare (not safe))
                          (eq? __tmp109028 HashTable::t)))
                   _h102086_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h102086_)))))
          (declare (not safe))
          (&HashTable-update!
           _h102091_
           _key102087_
           _update102088_
           _default102089_))))
    (define hash-update!__0
      (lambda (_h102096_ _key102097_ _update102098_)
        (let ((_default102100_ '#!void))
          (declare (not safe))
          (hash-update!__%
           _h102096_
           _key102097_
           _update102098_
           _default102100_))))
    (define hash-update!
      (lambda _g109030_
        (let ((_g109029_ (let () (declare (not safe)) (##length _g109030_))))
          (cond ((let () (declare (not safe)) (##fx= _g109029_ 3))
                 (apply (lambda (_h102096_ _key102097_ _update102098_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h102096_
                             _key102097_
                             _update102098_)))
                        _g109030_))
                ((let () (declare (not safe)) (##fx= _g109029_ 4))
                 (apply (lambda (_h102102_
                                 _key102103_
                                 _update102104_
                                 _default102105_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h102102_
                             _key102103_
                             _update102104_
                             _default102105_)))
                        _g109030_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g109030_))))))
    (define &hash-update!__%
      (lambda (_h102066_ _key102067_ _update102068_ _default102069_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h102066_
           _key102067_
           _update102068_
           _default102069_))))
    (define &hash-update!__0
      (lambda (_h102074_ _key102075_ _update102076_)
        (let ((_default102078_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h102074_
           _key102075_
           _update102076_
           _default102078_))))
    (define &hash-update!
      (lambda _g109032_
        (let ((_g109031_ (let () (declare (not safe)) (##length _g109032_))))
          (cond ((let () (declare (not safe)) (##fx= _g109031_ 3))
                 (apply (lambda (_h102074_ _key102075_ _update102076_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h102074_
                             _key102075_
                             _update102076_)))
                        _g109032_))
                ((let () (declare (not safe)) (##fx= _g109031_ 4))
                 (apply (lambda (_h102080_
                                 _key102081_
                                 _update102082_
                                 _default102083_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h102080_
                             _key102081_
                             _update102082_
                             _default102083_)))
                        _g109032_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g109032_))))))
    (define hash-remove!
      (lambda (_h102060_ _key102061_)
        (let ((_h102063_
               (if (and (let () (declare (not safe)) (##structure? _h102060_))
                        (let ((__tmp109033
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h102060_))))
                          (declare (not safe))
                          (eq? __tmp109033 HashTable::t)))
                   _h102060_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h102060_)))))
          (declare (not safe))
          (&HashTable-delete! _h102063_ _key102061_))))
    (define &hash-remove!
      (lambda (_h102057_ _key102058_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h102057_ _key102058_))))
    (define hash-key?
      (lambda (_h102052_ _k102053_)
        (let ((_h102055_
               (if (and (let () (declare (not safe)) (##structure? _h102052_))
                        (let ((__tmp109034
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h102052_))))
                          (declare (not safe))
                          (eq? __tmp109034 HashTable::t)))
                   _h102052_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h102052_)))))
          (declare (not safe))
          (&hash-key? _h102055_ _k102053_))))
    (define &hash-key?
      (lambda (_h102049_ _k102050_)
        (let ((__tmp109035
               (let ((__tmp109036
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h102049_ _k102050_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp109036 absent-value))))
          (declare (not safe))
          (not __tmp109035))))
    (define hash->list
      (lambda (_h102045_)
        (let ((_h102047_
               (if (and (let () (declare (not safe)) (##structure? _h102045_))
                        (let ((__tmp109037
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h102045_))))
                          (declare (not safe))
                          (eq? __tmp109037 HashTable::t)))
                   _h102045_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h102045_)))))
          (declare (not safe))
          (&hash->list _h102047_))))
    (define &hash->list
      (lambda (_h102038_)
        (let ((_lst102040_ '()))
          (let ((__tmp109038
                 (lambda (_k102042_ _v102043_)
                   (set! _lst102040_
                         (let ((__tmp109039
                                (let ()
                                  (declare (not safe))
                                  (cons _k102042_ _v102043_))))
                           (declare (not safe))
                           (cons __tmp109039 _lst102040_))))))
            (declare (not safe))
            (&HashTable-for-each _h102038_ __tmp109038))
          _lst102040_)))
    (define hash->plist
      (lambda (_h102034_)
        (let ((_h102036_
               (if (and (let () (declare (not safe)) (##structure? _h102034_))
                        (let ((__tmp109040
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h102034_))))
                          (declare (not safe))
                          (eq? __tmp109040 HashTable::t)))
                   _h102034_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h102034_)))))
          (declare (not safe))
          (&hash->plist _h102036_))))
    (define &hash->plist
      (lambda (_h102027_)
        (let ((_lst102029_ '()))
          (let ((__tmp109041
                 (lambda (_k102031_ _v102032_)
                   (set! _lst102029_
                         (let ((__tmp109042
                                (let ()
                                  (declare (not safe))
                                  (cons _v102032_ _lst102029_))))
                           (declare (not safe))
                           (cons _k102031_ __tmp109042))))))
            (declare (not safe))
            (&HashTable-for-each _h102027_ __tmp109041))
          _lst102029_)))
    (define hash-for-each
      (lambda (_proc102024_ _h102025_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h102025_ _proc102024_))))
    (define hash-map
      (lambda (_proc102016_ _h102017_)
        (let ((_result102019_ '()))
          (let ((__tmp109043
                 (lambda (_k102021_ _v102022_)
                   (set! _result102019_
                         (let ((__tmp109044
                                (_proc102016_ _k102021_ _v102022_)))
                           (declare (not safe))
                           (cons __tmp109044 _result102019_))))))
            (declare (not safe))
            (HashTable-for-each _h102017_ __tmp109043))
          _result102019_)))
    (define hash-fold
      (lambda (_proc102007_ _iv102008_ _h102009_)
        (let ((_result102011_ _iv102008_))
          (let ((__tmp109045
                 (lambda (_k102013_ _v102014_)
                   (set! _result102011_
                         (_proc102007_ _k102013_ _v102014_ _result102011_)))))
            (declare (not safe))
            (HashTable-for-each _h102009_ __tmp109045))
          _result102011_)))
    (define hash-find__%
      (lambda (_proc101983_ _h101984_ _default-value101985_)
        (call-with-current-continuation
         (lambda (_return101987_)
           (let ((__tmp109046
                  (lambda (_k101989_ _v101990_)
                    (let ((_$e101992_ (_proc101983_ _k101989_ _v101990_)))
                      (if _$e101992_ (_return101987_ _$e101992_) '#!void)))))
             (declare (not safe))
             (HashTable-for-each _h101984_ __tmp109046))
           _default-value101985_))))
    (define hash-find__0
      (lambda (_proc101998_ _h101999_)
        (let ((_default-value102001_ '#f))
          (declare (not safe))
          (hash-find__% _proc101998_ _h101999_ _default-value102001_))))
    (define hash-find
      (lambda _g109048_
        (let ((_g109047_ (let () (declare (not safe)) (##length _g109048_))))
          (cond ((let () (declare (not safe)) (##fx= _g109047_ 2))
                 (apply (lambda (_proc101998_ _h101999_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc101998_ _h101999_)))
                        _g109048_))
                ((let () (declare (not safe)) (##fx= _g109047_ 3))
                 (apply (lambda (_proc102003_ _h102004_ _default-value102005_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc102003_
                             _h102004_
                             _default-value102005_)))
                        _g109048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g109048_))))))
    (define hash-keys
      (lambda (_h101978_)
        (let ((_h101980_
               (if (and (let () (declare (not safe)) (##structure? _h101978_))
                        (let ((__tmp109049
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h101978_))))
                          (declare (not safe))
                          (eq? __tmp109049 HashTable::t)))
                   _h101978_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h101978_)))))
          (declare (not safe))
          (&hash-keys _h101980_))))
    (define &hash-keys
      (lambda (_h101971_)
        (let ((_result101973_ '()))
          (let ((__tmp109050
                 (lambda (_k101975_ _v101976_)
                   (set! _result101973_
                         (let ()
                           (declare (not safe))
                           (cons _k101975_ _result101973_))))))
            (declare (not safe))
            (&HashTable-for-each _h101971_ __tmp109050))
          _result101973_)))
    (define hash-values
      (lambda (_h101967_)
        (let ((_h101969_
               (if (and (let () (declare (not safe)) (##structure? _h101967_))
                        (let ((__tmp109051
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h101967_))))
                          (declare (not safe))
                          (eq? __tmp109051 HashTable::t)))
                   _h101967_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h101967_)))))
          (declare (not safe))
          (&hash-values _h101969_))))
    (define &hash-values
      (lambda (_h101960_)
        (let ((_result101962_ '()))
          (let ((__tmp109052
                 (lambda (_k101964_ _v101965_)
                   (set! _result101962_
                         (let ()
                           (declare (not safe))
                           (cons _v101965_ _result101962_))))))
            (declare (not safe))
            (&HashTable-for-each _h101960_ __tmp109052))
          _result101962_)))
    (define hash-copy
      (lambda (_h101956_)
        (let ((_h101958_
               (if (and (let () (declare (not safe)) (##structure? _h101956_))
                        (let ((__tmp109053
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h101956_))))
                          (declare (not safe))
                          (eq? __tmp109053 HashTable::t)))
                   _h101956_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h101956_)))))
          (declare (not safe))
          (&HashTable-copy _h101958_))))
    (define &hash-copy
      (lambda (_h101954_)
        (let () (declare (not safe)) (&HashTable-copy _h101954_))))
    (define hash-merge
      (lambda (_h101949_ . _rest101950_)
        (let ((_copy101952_
               (let () (declare (not safe)) (hash-copy _h101949_))))
          (apply hash-merge! _copy101952_ _rest101950_)
          _copy101952_)))
    (define hash-merge!
      (lambda (_h101939_ . _rest101940_)
        (let ((_h101942_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h101939_))))
          (for-each
           (lambda (_hr101944_)
             (let ((__tmp109054
                    (lambda (_k101946_ _v101947_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h101942_ _k101946_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set!
                             _h101942_
                             _k101946_
                             _v101947_))))))
               (declare (not safe))
               (hash-for-each __tmp109054 _hr101944_)))
           _rest101940_)
          _h101942_)))))
