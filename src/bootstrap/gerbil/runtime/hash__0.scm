(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1708334573)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp109895 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp109895
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args105731_
        (apply make-instance UnboundKeyError::t _$args105731_)))
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
      (lambda (_where105605_ _message105606_ . _irritants105607_)
        (raise (let ((__obj109892
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj109892
                  _message105606_
                  'where:
                  _where105605_
                  'irritants:
                  _irritants105607_)
                 __obj109892))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp109900 (list interface-instance::t))
            (__tmp109896
             (let ((__tmp109899
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp109897
                    (let ((__tmp109898
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp109898 '()))))
               (declare (not safe))
               (cons __tmp109899 __tmp109897))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp109900
         '(ref set update del each length copy clear)
         __tmp109896
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
      (let ((__tmp109905 (list interface-instance::t))
            (__tmp109901
             (let ((__tmp109904
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp109902
                    (let ((__tmp109903
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp109903 '()))))
               (declare (not safe))
               (cons __tmp109904 __tmp109902))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp109905
         '(begin-read end-read begin-write end-write)
         __tmp109901
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
      (lambda (_table105598_ _key105599_ _update105600_ _default105601_)
        (let ((_result105603_
               (table-ref _table105598_ _key105599_ _default105601_)))
          (table-set!
           _table105598_
           _key105599_
           (_update105600_ _default105601_)))))
    (define gambit-table-for-each
      (lambda (_table105595_ _proc105596_)
        (table-for-each _proc105596_ _table105595_)))
    (define gambit-table-clear!
      (lambda (_table105593_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table105593_ '0 '5 '#f '#f))))
    (let ((__tmp109906 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp109906 'ref table-ref))
    (let ((__tmp109907 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp109907 'set! table-set!))
    (let ((__tmp109908 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp109908 'update! gambit-table-update!))
    (let ((__tmp109909 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp109909 'delete! table-set!))
    (let ((__tmp109910 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp109910 'for-each gambit-table-for-each))
    (let ((__tmp109911 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp109911 'length table-length))
    (let ((__tmp109912 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp109912 'copy table-copy))
    (let ((__tmp109913 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp109913 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots105575_ '(table count free hash test seed))
             (_slot-vector105577_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots105575_))))
             (_slot-table105584_
              (let ((_slot-table105579_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table '#f '0))))
                (for-each
                 (lambda (_slot105581_ _field105582_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table105579_
                      _slot105581_
                      _field105582_))
                   (let ((__tmp109914 (symbol->keyword _slot105581_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table105579_
                      __tmp109914
                      _field105582_)))
                 _slots105575_
                 (let ((__tmp109915 (length _slots105575_)))
                   (declare (not safe))
                   (iota __tmp109915 '1)))
                _slot-table105579_))
             (_flags105586_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields105588_ '#())
             (_properties105590_
              (let ((__tmp109918
                     (let ((__tmp109919
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots105575_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp109919)))
                    (__tmp109916
                     (let ((__tmp109917
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp109917 '()))))
                (declare (not safe))
                (cons __tmp109918 __tmp109916))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags105586_
           __table::t
           _fields105588_
           '()
           _slot-vector105577_
           _slot-table105584_
           _properties105590_
           '#f
           '#f))))
    (define hash-table?
      (lambda (_obj105573_)
        (let ((__tmp109920
               (let () (declare (not safe)) (##type-id hash-table::t))))
          (declare (not safe))
          (##structure-instance-of? _obj105573_ __tmp109920))))
    (define locked-hash-table::t
      (let ((__tmp109925 (list))
            (__tmp109921
             (let ((__tmp109924
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp109922
                    (let ((__tmp109923
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp109923 '()))))
               (declare (not safe))
               (cons __tmp109924 __tmp109922))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp109925
         '(table lock)
         __tmp109921
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args105570_
        (apply make-instance locked-hash-table::t _$args105570_)))
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
      (let ((__tmp109930 (list))
            (__tmp109926
             (let ((__tmp109929
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp109927
                    (let ((__tmp109928
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp109928 '()))))
               (declare (not safe))
               (cons __tmp109929 __tmp109927))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp109930
         '(table key-check)
         __tmp109926
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args105567_
        (apply make-instance checked-hash-table::t _$args105567_)))
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
      (let ((__tmp109933 (list hash-table::t))
            (__tmp109931
             (let ((__tmp109932
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp109932 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp109933
         '()
         __tmp109931
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args105564_
        (apply make-instance eq-hash-table::t _$args105564_)))
    (define eqv-hash-table::t
      (let ((__tmp109936 (list hash-table::t))
            (__tmp109934
             (let ((__tmp109935
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp109935 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp109936
         '()
         __tmp109934
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args105561_
        (apply make-instance eqv-hash-table::t _$args105561_)))
    (define symbol-hash-table::t
      (let ((__tmp109939 (list hash-table::t))
            (__tmp109937
             (let ((__tmp109938
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp109938 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp109939
         '()
         __tmp109937
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args105558_
        (apply make-instance symbol-hash-table::t _$args105558_)))
    (define string-hash-table::t
      (let ((__tmp109942 (list hash-table::t))
            (__tmp109940
             (let ((__tmp109941
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp109941 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp109942
         '()
         __tmp109940
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args105555_
        (apply make-instance string-hash-table::t _$args105555_)))
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
      (lambda (_h105549_ _key105550_ _default105551_)
        (let ((_h105553_
               (if (and (let () (declare (not safe)) (##structure? _h105549_))
                        (let ((__tmp109943
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h105549_))))
                          (declare (not safe))
                          (eq? __tmp109943 HashTable::t)))
                   _h105549_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h105549_)))))
          (declare (not safe))
          (&HashTable-ref _h105553_ _key105550_ _default105551_))))
    (define &HashTable-ref
      (lambda (_h105544_ _key105545_ _default105546_)
        (declare (not safe))
        ((##unchecked-structure-ref _h105544_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h105544_ '1 interface-instance::t '#f)
         _key105545_
         _default105546_)))
    (define HashTable-set!
      (lambda (_h105538_ _key105539_ _value105540_)
        (let ((_h105542_
               (if (and (let () (declare (not safe)) (##structure? _h105538_))
                        (let ((__tmp109944
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h105538_))))
                          (declare (not safe))
                          (eq? __tmp109944 HashTable::t)))
                   _h105538_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h105538_)))))
          (declare (not safe))
          (&HashTable-set! _h105542_ _key105539_ _value105540_))))
    (define &HashTable-set!
      (lambda (_h105533_ _key105534_ _value105535_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h105533_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h105533_ '1 interface-instance::t '#f)
           _key105534_
           _value105535_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h105526_ _key105527_ _update105528_ _default105529_)
        (let ((_h105531_
               (if (and (let () (declare (not safe)) (##structure? _h105526_))
                        (let ((__tmp109945
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h105526_))))
                          (declare (not safe))
                          (eq? __tmp109945 HashTable::t)))
                   _h105526_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h105526_)))))
          (declare (not safe))
          (&HashTable-update!
           _h105531_
           _key105527_
           _update105528_
           _default105529_))))
    (define &HashTable-update!
      (lambda (_h105520_ _key105521_ _update105522_ _default105523_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h105520_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h105520_ '1 interface-instance::t '#f)
           _key105521_
           _update105522_
           _default105523_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h105515_ _key105516_)
        (let ((_h105518_
               (if (and (let () (declare (not safe)) (##structure? _h105515_))
                        (let ((__tmp109946
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h105515_))))
                          (declare (not safe))
                          (eq? __tmp109946 HashTable::t)))
                   _h105515_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h105515_)))))
          (declare (not safe))
          (&HashTable-delete! _h105518_ _key105516_))))
    (define &HashTable-delete!
      (lambda (_h105511_ _key105512_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h105511_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h105511_ '1 interface-instance::t '#f)
           _key105512_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h105506_ _proc105507_)
        (let ((_h105509_
               (if (and (let () (declare (not safe)) (##structure? _h105506_))
                        (let ((__tmp109947
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h105506_))))
                          (declare (not safe))
                          (eq? __tmp109947 HashTable::t)))
                   _h105506_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h105506_)))))
          (declare (not safe))
          (&HashTable-for-each _h105509_ _proc105507_))))
    (define &HashTable-for-each
      (lambda (_h105502_ _proc105503_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h105502_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h105502_ '1 interface-instance::t '#f)
           _proc105503_)
          '#!void)))
    (define HashTable-length
      (lambda (_h105498_)
        (let ((_h105500_
               (if (and (let () (declare (not safe)) (##structure? _h105498_))
                        (let ((__tmp109948
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h105498_))))
                          (declare (not safe))
                          (eq? __tmp109948 HashTable::t)))
                   _h105498_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h105498_)))))
          (declare (not safe))
          (&HashTable-length _h105500_))))
    (define &HashTable-length
      (lambda (_h105495_)
        (declare (not safe))
        ((##unchecked-structure-ref _h105495_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h105495_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h105491_)
        (let ((_h105493_
               (if (and (let () (declare (not safe)) (##structure? _h105491_))
                        (let ((__tmp109949
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h105491_))))
                          (declare (not safe))
                          (eq? __tmp109949 HashTable::t)))
                   _h105491_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h105491_)))))
          (declare (not safe))
          (&HashTable-copy _h105493_))))
    (define &HashTable-copy
      (lambda (_h105488_)
        (declare (not safe))
        ((##unchecked-structure-ref _h105488_ '8 HashTable::t '#f)
         (##unchecked-structure-ref _h105488_ '1 interface-instance::t '#f))))
    (define HashTable-clear!
      (lambda (_h105484_)
        (let ((_h105486_
               (if (and (let () (declare (not safe)) (##structure? _h105484_))
                        (let ((__tmp109950
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h105484_))))
                          (declare (not safe))
                          (eq? __tmp109950 HashTable::t)))
                   _h105484_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h105484_)))))
          (declare (not safe))
          (&HashTable-clear! _h105486_))))
    (define &HashTable-clear!
      (lambda (_h105481_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h105481_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h105481_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl105478_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl105478_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl105478_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl105475_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl105475_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl105475_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl105472_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl105472_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl105472_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl105469_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl105469_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl105469_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref102508_
      (lambda (_self105456_ _key105458_ _default105459_)
        (let ((_h105461_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self105456_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l105463_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self105456_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l105463_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h105461_ _key105458_ _default105459_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l105463_)))))))
    (define locked-hash-table::ref::specialize
      (lambda (__t109800)
        (let ((__lock109801
               (let ((__tmp109803
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109800 'lock))))
                 (if __tmp109803 __tmp109803 (error '"Unknown slot" 'lock))))
              (__table109802
               (let ((__tmp109804
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109800 'table))))
                 (if __tmp109804 __tmp109804 (error '"Unknown slot" 'table)))))
          (lambda (_self105456_ _key105458_ _default105459_)
            (let ((_h105461_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self105456_
                      __table109802
                      __t109800
                      '#f)))
                  (_l105463_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self105456_
                      __lock109801
                      __t109800
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l105463_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-ref _h105461_ _key105458_ _default105459_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l105463_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::ref102508_
       locked-hash-table::ref::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'ref
       _locked-hash-table::ref102508_
       '#f))
    (define _locked-hash-table::set!102510_
      (lambda (_self105320_ _key105322_ _value105323_)
        (let ((_h105325_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self105320_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l105327_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self105320_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l105327_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h105325_ _key105322_ _value105323_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l105327_)))))))
    (define locked-hash-table::set!::specialize
      (lambda (__t109805)
        (let ((__table109806
               (let ((__tmp109808
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109805 'table))))
                 (if __tmp109808 __tmp109808 (error '"Unknown slot" 'table))))
              (__lock109807
               (let ((__tmp109809
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109805 'lock))))
                 (if __tmp109809 __tmp109809 (error '"Unknown slot" 'lock)))))
          (lambda (_self105320_ _key105322_ _value105323_)
            (let ((_h105325_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self105320_
                      __table109806
                      __t109805
                      '#f)))
                  (_l105327_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self105320_
                      __lock109807
                      __t109805
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l105327_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-set! _h105325_ _key105322_ _value105323_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l105327_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::set!102510_
       locked-hash-table::set!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'set!
       _locked-hash-table::set!102510_
       '#f))
    (define _locked-hash-table::update!102512_
      (lambda (_self105183_ _key105185_ _update105186_ _default105187_)
        (let ((_h105189_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self105183_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l105191_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self105183_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l105191_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h105189_
                _key105185_
                _update105186_
                _default105187_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l105191_)))))))
    (define locked-hash-table::update!::specialize
      (lambda (__t109810)
        (let ((__lock109811
               (let ((__tmp109813
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109810 'lock))))
                 (if __tmp109813 __tmp109813 (error '"Unknown slot" 'lock))))
              (__table109812
               (let ((__tmp109814
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109810 'table))))
                 (if __tmp109814 __tmp109814 (error '"Unknown slot" 'table)))))
          (lambda (_self105183_ _key105185_ _update105186_ _default105187_)
            (let ((_h105189_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self105183_
                      __table109812
                      __t109810
                      '#f)))
                  (_l105191_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self105183_
                      __lock109811
                      __t109810
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l105191_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-update!
                    _h105189_
                    _key105185_
                    _update105186_
                    _default105187_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l105191_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::update!102512_
       locked-hash-table::update!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'update!
       _locked-hash-table::update!102512_
       '#f))
    (define _locked-hash-table::delete!102514_
      (lambda (_self105048_ _key105050_)
        (let ((_h105052_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self105048_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l105054_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self105048_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l105054_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h105052_ _key105050_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l105054_)))))))
    (define locked-hash-table::delete!::specialize
      (lambda (__t109815)
        (let ((__lock109816
               (let ((__tmp109818
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109815 'lock))))
                 (if __tmp109818 __tmp109818 (error '"Unknown slot" 'lock))))
              (__table109817
               (let ((__tmp109819
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109815 'table))))
                 (if __tmp109819 __tmp109819 (error '"Unknown slot" 'table)))))
          (lambda (_self105048_ _key105050_)
            (let ((_h105052_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self105048_
                      __table109817
                      __t109815
                      '#f)))
                  (_l105054_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self105048_
                      __lock109816
                      __t109815
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l105054_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-delete! _h105052_ _key105050_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l105054_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::delete!102514_
       locked-hash-table::delete!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!102514_
       '#f))
    (define _locked-hash-table::for-each102516_
      (lambda (_self104913_ _proc104915_)
        (let ((_h104917_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104913_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l104919_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104913_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l104919_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h104917_ _proc104915_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l104919_)))))))
    (define locked-hash-table::for-each::specialize
      (lambda (__t109820)
        (let ((__lock109821
               (let ((__tmp109823
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109820 'lock))))
                 (if __tmp109823 __tmp109823 (error '"Unknown slot" 'lock))))
              (__table109822
               (let ((__tmp109824
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109820 'table))))
                 (if __tmp109824 __tmp109824 (error '"Unknown slot" 'table)))))
          (lambda (_self104913_ _proc104915_)
            (let ((_h104917_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104913_
                      __table109822
                      __t109820
                      '#f)))
                  (_l104919_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104913_
                      __lock109821
                      __t109820
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l104919_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-for-each _h104917_ _proc104915_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l104919_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::for-each102516_
       locked-hash-table::for-each::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each102516_
       '#f))
    (define _locked-hash-table::length102518_
      (lambda (_self104779_)
        (let ((_h104782_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104779_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l104784_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104779_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l104784_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h104782_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l104784_)))))))
    (define locked-hash-table::length::specialize
      (lambda (__t109825)
        (let ((__table109826
               (let ((__tmp109828
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109825 'table))))
                 (if __tmp109828 __tmp109828 (error '"Unknown slot" 'table))))
              (__lock109827
               (let ((__tmp109829
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109825 'lock))))
                 (if __tmp109829 __tmp109829 (error '"Unknown slot" 'lock)))))
          (lambda (_self104779_)
            (let ((_h104782_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104779_
                      __table109826
                      __t109825
                      '#f)))
                  (_l104784_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104779_
                      __lock109827
                      __t109825
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l104784_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-length _h104782_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l104784_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::length102518_
       locked-hash-table::length::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'length
       _locked-hash-table::length102518_
       '#f))
    (define _locked-hash-table::copy102520_
      (lambda (_self104645_)
        (let ((_h104648_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104645_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l104650_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104645_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l104650_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-copy _h104648_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l104650_)))))))
    (define locked-hash-table::copy::specialize
      (lambda (__t109830)
        (let ((__lock109831
               (let ((__tmp109833
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109830 'lock))))
                 (if __tmp109833 __tmp109833 (error '"Unknown slot" 'lock))))
              (__table109832
               (let ((__tmp109834
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109830 'table))))
                 (if __tmp109834 __tmp109834 (error '"Unknown slot" 'table)))))
          (lambda (_self104645_)
            (let ((_h104648_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104645_
                      __table109832
                      __t109830
                      '#f)))
                  (_l104650_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104645_
                      __lock109831
                      __t109830
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l104650_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-copy _h104648_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l104650_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::copy102520_
       locked-hash-table::copy::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'copy
       _locked-hash-table::copy102520_
       '#f))
    (define _locked-hash-table::clear!102522_
      (lambda (_self104511_)
        (let ((_h104514_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104511_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l104516_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104511_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l104516_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h104514_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l104516_)))))))
    (define locked-hash-table::clear!::specialize
      (lambda (__t109835)
        (let ((__table109836
               (let ((__tmp109838
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109835 'table))))
                 (if __tmp109838 __tmp109838 (error '"Unknown slot" 'table))))
              (__lock109837
               (let ((__tmp109839
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109835 'lock))))
                 (if __tmp109839 __tmp109839 (error '"Unknown slot" 'lock)))))
          (lambda (_self104511_)
            (let ((_h104514_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104511_
                      __table109836
                      __t109835
                      '#f)))
                  (_l104516_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104511_
                      __lock109837
                      __t109835
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l104516_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-clear! _h104514_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l104516_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::clear!102522_
       locked-hash-table::clear!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!102522_
       '#f))
    (let ((__tmp109951 (macro-type-mutex)))
      (declare (not safe))
      (bind-method! __tmp109951 'begin-read! mutex-lock!))
    (let ((__tmp109952 (macro-type-mutex)))
      (declare (not safe))
      (bind-method! __tmp109952 'end-read! mutex-unlock!))
    (let ((__tmp109953 (macro-type-mutex)))
      (declare (not safe))
      (bind-method! __tmp109953 'begin-write! mutex-lock!))
    (let ((__tmp109954 (macro-type-mutex)))
      (declare (not safe))
      (bind-method! __tmp109954 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref102800_
      (lambda (_self104375_ _key104376_ _default104377_)
        (let ((_h104379_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104375_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?104381_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104375_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g104383104385_)
             (if (_g104383104385_ _key104376_)
                 '#!void
                 (error '"invalid argument" _key104376_)))
           _key?104381_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h104379_ _key104376_ _default104377_)))))
    (define checked-hash-table::ref::specialize
      (lambda (__t109840)
        (let ((__table109841
               (let ((__tmp109843
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109840 'table))))
                 (if __tmp109843 __tmp109843 (error '"Unknown slot" 'table))))
              (__key-check109842
               (let ((__tmp109844
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109840 'key-check))))
                 (if __tmp109844
                     __tmp109844
                     (error '"Unknown slot" 'key-check)))))
          (lambda (_self104375_ _key104376_ _default104377_)
            (let ((_h104379_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104375_
                      __table109841
                      __t109840
                      '#f)))
                  (_key?104381_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104375_
                      __key-check109842
                      __t109840
                      '#f))))
              ((lambda (_g104383104385_)
                 (if (_g104383104385_ _key104376_)
                     '#!void
                     (error '"invalid argument" _key104376_)))
               _key?104381_)
              (let ()
                (declare (not safe))
                (&HashTable-ref _h104379_ _key104376_ _default104377_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::ref102800_
       checked-hash-table::ref::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       checked-hash-table::t
       'ref
       _checked-hash-table::ref102800_
       '#f))
    (define _checked-hash-table::set!102802_
      (lambda (_self104239_ _key104240_ _value104241_)
        (let ((_h104243_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104239_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?104245_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104239_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g104247104249_)
             (if (_g104247104249_ _key104240_)
                 '#!void
                 (error '"invalid argument" _key104240_)))
           _key?104245_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h104243_ _key104240_ _value104241_)))))
    (define checked-hash-table::set!::specialize
      (lambda (__t109845)
        (let ((__table109846
               (let ((__tmp109848
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109845 'table))))
                 (if __tmp109848 __tmp109848 (error '"Unknown slot" 'table))))
              (__key-check109847
               (let ((__tmp109849
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109845 'key-check))))
                 (if __tmp109849
                     __tmp109849
                     (error '"Unknown slot" 'key-check)))))
          (lambda (_self104239_ _key104240_ _value104241_)
            (let ((_h104243_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104239_
                      __table109846
                      __t109845
                      '#f)))
                  (_key?104245_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104239_
                      __key-check109847
                      __t109845
                      '#f))))
              ((lambda (_g104247104249_)
                 (if (_g104247104249_ _key104240_)
                     '#!void
                     (error '"invalid argument" _key104240_)))
               _key?104245_)
              (let ()
                (declare (not safe))
                (&HashTable-set! _h104243_ _key104240_ _value104241_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::set!102802_
       checked-hash-table::set!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       checked-hash-table::t
       'set!
       _checked-hash-table::set!102802_
       '#f))
    (define _checked-hash-table::update!102804_
      (lambda (_self104104_ _key104105_ _update104106_ _default104107_)
        (let ((_h104109_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104104_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?104111_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104104_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?104114_)
             (if (_key?104114_ _key104105_)
                 '#!void
                 (error '"invalid argument" _key104105_))
             (if (let () (declare (not safe)) (procedure? _update104106_))
                 '#!void
                 (error '"invalid argument" _update104106_)))
           _key?104111_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h104109_
             _key104105_
             _update104106_
             _default104107_)))))
    (define checked-hash-table::update!::specialize
      (lambda (__t109850)
        (let ((__table109851
               (let ((__tmp109853
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109850 'table))))
                 (if __tmp109853 __tmp109853 (error '"Unknown slot" 'table))))
              (__key-check109852
               (let ((__tmp109854
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109850 'key-check))))
                 (if __tmp109854
                     __tmp109854
                     (error '"Unknown slot" 'key-check)))))
          (lambda (_self104104_ _key104105_ _update104106_ _default104107_)
            (let ((_h104109_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104104_
                      __table109851
                      __t109850
                      '#f)))
                  (_key?104111_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104104_
                      __key-check109852
                      __t109850
                      '#f))))
              ((lambda (_key?104114_)
                 (if (_key?104114_ _key104105_)
                     '#!void
                     (error '"invalid argument" _key104105_))
                 (if (let () (declare (not safe)) (procedure? _update104106_))
                     '#!void
                     (error '"invalid argument" _update104106_)))
               _key?104111_)
              (let ()
                (declare (not safe))
                (&HashTable-update!
                 _h104109_
                 _key104105_
                 _update104106_
                 _default104107_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::update!102804_
       checked-hash-table::update!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       checked-hash-table::t
       'update!
       _checked-hash-table::update!102804_
       '#f))
    (define _checked-hash-table::delete!102806_
      (lambda (_self103969_ _key103970_)
        (let ((_h103972_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103969_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?103974_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103969_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g103976103978_)
             (if (_g103976103978_ _key103970_)
                 '#!void
                 (error '"invalid argument" _key103970_)))
           _key?103974_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h103972_ _key103970_)))))
    (define checked-hash-table::delete!::specialize
      (lambda (__t109855)
        (let ((__key-check109856
               (let ((__tmp109858
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109855 'key-check))))
                 (if __tmp109858
                     __tmp109858
                     (error '"Unknown slot" 'key-check))))
              (__table109857
               (let ((__tmp109859
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109855 'table))))
                 (if __tmp109859 __tmp109859 (error '"Unknown slot" 'table)))))
          (lambda (_self103969_ _key103970_)
            (let ((_h103972_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103969_
                      __table109857
                      __t109855
                      '#f)))
                  (_key?103974_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103969_
                      __key-check109856
                      __t109855
                      '#f))))
              ((lambda (_g103976103978_)
                 (if (_g103976103978_ _key103970_)
                     '#!void
                     (error '"invalid argument" _key103970_)))
               _key?103974_)
              (let ()
                (declare (not safe))
                (&HashTable-delete! _h103972_ _key103970_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::delete!102806_
       checked-hash-table::delete!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!102806_
       '#f))
    (define _checked-hash-table::for-each102808_
      (lambda (_self103837_ _proc103838_)
        (let ((_h103840_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103837_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?103842_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103837_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g109955_)
             (if (let () (declare (not safe)) (procedure? _proc103838_))
                 '#!void
                 (error '"invalid argument" _proc103838_)))
           _key?103842_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h103840_ _proc103838_)))))
    (define checked-hash-table::for-each::specialize
      (lambda (__t109860)
        (let ((__table109861
               (let ((__tmp109863
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109860 'table))))
                 (if __tmp109863 __tmp109863 (error '"Unknown slot" 'table))))
              (__key-check109862
               (let ((__tmp109864
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109860 'key-check))))
                 (if __tmp109864
                     __tmp109864
                     (error '"Unknown slot" 'key-check)))))
          (lambda (_self103837_ _proc103838_)
            (let ((_h103840_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103837_
                      __table109861
                      __t109860
                      '#f)))
                  (_key?103842_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103837_
                      __key-check109862
                      __t109860
                      '#f))))
              ((lambda (_g109956_)
                 (if (let () (declare (not safe)) (procedure? _proc103838_))
                     '#!void
                     (error '"invalid argument" _proc103838_)))
               _key?103842_)
              (let ()
                (declare (not safe))
                (&HashTable-for-each _h103840_ _proc103838_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::for-each102808_
       checked-hash-table::for-each::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each102808_
       '#f))
    (define _checked-hash-table::length102810_
      (lambda (_self103707_)
        (let ((_h103709_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103707_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?103711_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103707_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h103709_)))))
    (define checked-hash-table::length::specialize
      (lambda (__t109865)
        (let ((__table109866
               (let ((__tmp109868
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109865 'table))))
                 (if __tmp109868 __tmp109868 (error '"Unknown slot" 'table))))
              (__key-check109867
               (let ((__tmp109869
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109865 'key-check))))
                 (if __tmp109869
                     __tmp109869
                     (error '"Unknown slot" 'key-check)))))
          (lambda (_self103707_)
            (let ((_h103709_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103707_
                      __table109866
                      __t109865
                      '#f)))
                  (_key?103711_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103707_
                      __key-check109867
                      __t109865
                      '#f))))
              (let () (declare (not safe)) (&HashTable-length _h103709_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::length102810_
       checked-hash-table::length::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       checked-hash-table::t
       'length
       _checked-hash-table::length102810_
       '#f))
    (define _checked-hash-table::copy102812_
      (lambda (_self103577_)
        (let ((_h103579_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103577_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?103581_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103577_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h103579_)))))
    (define checked-hash-table::copy::specialize
      (lambda (__t109870)
        (let ((__table109871
               (let ((__tmp109873
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109870 'table))))
                 (if __tmp109873 __tmp109873 (error '"Unknown slot" 'table))))
              (__key-check109872
               (let ((__tmp109874
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109870 'key-check))))
                 (if __tmp109874
                     __tmp109874
                     (error '"Unknown slot" 'key-check)))))
          (lambda (_self103577_)
            (let ((_h103579_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103577_
                      __table109871
                      __t109870
                      '#f)))
                  (_key?103581_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103577_
                      __key-check109872
                      __t109870
                      '#f))))
              (let () (declare (not safe)) (&HashTable-copy _h103579_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::copy102812_
       checked-hash-table::copy::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       checked-hash-table::t
       'copy
       _checked-hash-table::copy102812_
       '#f))
    (define _checked-hash-table::clear!102814_
      (lambda (_self103447_)
        (let ((_h103449_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103447_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?103451_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103447_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h103449_)))))
    (define checked-hash-table::clear!::specialize
      (lambda (__t109875)
        (let ((__key-check109876
               (let ((__tmp109878
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109875 'key-check))))
                 (if __tmp109878
                     __tmp109878
                     (error '"Unknown slot" 'key-check))))
              (__table109877
               (let ((__tmp109879
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109875 'table))))
                 (if __tmp109879 __tmp109879 (error '"Unknown slot" 'table)))))
          (lambda (_self103447_)
            (let ((_h103449_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103447_
                      __table109877
                      __t109875
                      '#f)))
                  (_key?103451_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103447_
                      __key-check109876
                      __t109875
                      '#f))))
              (let () (declare (not safe)) (&HashTable-clear! _h103449_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::clear!102814_
       checked-hash-table::clear!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!102814_
       '#f))
    (define make-generic-hash-table
      (lambda (_table103317_
               _count103318_
               _free103319_
               _hash103320_
               _test103321_
               _seed103322_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table103317_
           _count103318_
           _free103319_
           _hash103320_
           _test103321_
           _seed103322_))))
    (define make-hash-table__%
      (lambda (_g109957_
               _size-hint103180103190_
               _seed103181103192_
               _test103182103194_
               _hash103183103196_
               _lock103184103198_
               _check103185103200_
               _weak-keys103186103202_
               _weak-values103187103204_)
        (let* ((_size-hint103207_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint103180103190_ absent-value))
                    '#f
                    _size-hint103180103190_))
               (_seed103209_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed103181103192_ absent-value))
                    (random-integer (macro-max-fixnum32))
                    _seed103181103192_))
               (_test103211_
                (if (let ()
                      (declare (not safe))
                      (eq? _test103182103194_ absent-value))
                    equal?
                    _test103182103194_))
               (_hash103213_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash103183103196_ absent-value))
                    '#f
                    _hash103183103196_))
               (_lock103215_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock103184103198_ absent-value))
                    '#f
                    _lock103184103198_))
               (_check103217_
                (if (let ()
                      (declare (not safe))
                      (eq? _check103185103200_ absent-value))
                    '#f
                    _check103185103200_))
               (_weak-keys103219_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys103186103202_ absent-value))
                    '#f
                    _weak-keys103186103202_))
               (_weak-values103221_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values103187103204_ absent-value))
                    '#f
                    _weak-values103187103204_)))
          (letrec ((_wrap-lock103223_
                    (lambda (_ht103301_)
                      (if _lock103215_
                          (let ((__tmp109958
                                 (let ((__tmp109959
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock103215_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht103301_
                                    __tmp109959))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp109958))
                          _ht103301_)))
                   (_wrap-checked103224_
                    (lambda (_ht103298_ _implicit103299_)
                      (if _check103217_
                          (let ((__tmp109960
                                 (let ((__tmp109961
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check103217_))
                                            _check103217_
                                            _implicit103299_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht103298_
                                    __tmp109961))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp109960))
                          _ht103298_)))
                   (_make103225_
                    (lambda (_kons103286_
                             _key?103287_
                             _hash103288_
                             _test103289_)
                      (let* ((_size103291_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint103207_)))
                             (_table103293_
                              (make-vector _size103291_ (macro-unused-obj)))
                             (_ht103295_
                              (let ((__tmp109962
                                     (_kons103286_
                                      _table103293_
                                      '0
                                      (fxquotient _size103291_ '2)
                                      _hash103288_
                                      _test103289_
                                      _seed103209_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp109962))))
                        (let ((__tmp109963
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock103223_ _ht103295_))))
                          (declare (not safe))
                          (_wrap-checked103224_ __tmp109963 _key?103287_)))))
                   (_make-gambit-table103226_
                    (lambda ()
                      (let* ((_size103271_
                              (let ((_$e103268_ _size-hint103207_))
                                (if _$e103268_ _$e103268_ (macro-absent-obj))))
                             (_test103276_
                              (let ((_$e103273_ _test103211_))
                                (if _$e103273_ _$e103273_ equal?)))
                             (_hash103281_
                              (let ((_$e103278_ _hash103213_))
                                (if _$e103278_
                                    _$e103278_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test103276_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test103276_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht103283_
                              (let ((__tmp109964
                                     (make-table
                                      'size:
                                      _size103271_
                                      'test:
                                      _test103276_
                                      'hash:
                                      _hash103281_
                                      'weak-keys:
                                      _weak-keys103219_
                                      'weak-values:
                                      _weak-values103221_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp109964))))
                        (let ((__tmp109965
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock103223_ _ht103283_))))
                          (declare (not safe))
                          (_wrap-checked103224_ __tmp109965 true))))))
            (if (or _weak-keys103219_ _weak-values103221_)
                (let () (declare (not safe)) (_make-gambit-table103226_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test103211_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test103211_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash103213_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash103213_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash103213_ eq-hash))))
                    (let ()
                      (declare (not safe))
                      (_make103225_ make-eq-hash-table true eq-hash eq?))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test103211_ eqv?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test103211_ ##eqv?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash103213_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash103213_ eqv?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash103213_ eqv-hash))))
                        (let ()
                          (declare (not safe))
                          (_make103225_
                           make-eqv-hash-table
                           true
                           eqv-hash
                           eqv?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test103211_ eq?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test103211_ ##eq?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (eq? _hash103213_ symbolic-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash103213_ ##symbol-hash))))
                            (let ()
                              (declare (not safe))
                              (_make103225_
                               make-symbol-hash-table
                               symbolic?
                               symbolic-hash
                               eq?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test103211_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test103211_ ##equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test103211_ string=?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test103211_ ##string=?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash103213_ string-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash103213_
                                                ##string=?-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make103225_
                                   make-string-hash-table
                                   string?
                                   string-hash
                                   ##string=?))
                                (if (and (let ()
                                           (declare (not safe))
                                           (eq? _test103211_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (not _hash103213_)))
                                    (let ()
                                      (declare (not safe))
                                      (_make103225_
                                       make-generic-hash-table
                                       true
                                       equal?-hash
                                       equal?))
                                    (if (let ((__tmp109967
                                               (let ()
                                                 (declare (not safe))
                                                 (procedure? _test103211_))))
                                          (declare (not safe))
                                          (not __tmp109967))
                                        (error '"bad hash table test function; expected procedure"
                                               _test103211_)
                                        (if (let ((__tmp109966
                                                   (let ()
                                                     (declare (not safe))
                                                     (procedure?
                                                      _hash103213_))))
                                              (declare (not safe))
                                              (not __tmp109966))
                                            (error '"bad hash table hash function; expected procedure"
                                                   _hash103213_)
                                            (let ()
                                              (declare (not safe))
                                              (_make103225_
                                               make-generic-hash-table
                                               true
                                               _hash103213_
                                               _test103211_))))))))))))))
    (define make-hash-table__@
      (lambda (_keys103179103306_ . _args103308_)
        (apply make-hash-table__%
               _keys103179103306_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys103179103306_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys103179103306_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys103179103306_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys103179103306_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys103179103306_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys103179103306_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys103179103306_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys103179103306_
                  'weak-values:
                  absent-value))
               _args103308_)))
    (define make-hash-table
      (lambda _args103188103314_
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
               _args103188103314_)))
    (define make-hash-table-eq
      (lambda _args103176_ (apply make-hash-table 'test: eq? _args103176_)))
    (define make-hash-table-eqv
      (lambda _args103174_ (apply make-hash-table 'test: eqv? _args103174_)))
    (define make-hash-table-symbolic
      (lambda _args103172_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args103172_)))
    (define make-hash-table-string
      (lambda _args103170_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args103170_)))
    (define list->hash-table
      (lambda (_lst103167_ . _args103168_)
        (let ((__tmp109968
               (apply make-hash-table
                      'size:
                      (length _lst103167_)
                      _args103168_)))
          (declare (not safe))
          (list->hash-table! _lst103167_ __tmp109968))))
    (define list->hash-table-eq
      (lambda (_lst103164_ . _args103165_)
        (let ((__tmp109969
               (apply make-hash-table-eq
                      'size:
                      (length _lst103164_)
                      _args103165_)))
          (declare (not safe))
          (list->hash-table! _lst103164_ __tmp109969))))
    (define list->hash-table-eqv
      (lambda (_lst103161_ . _args103162_)
        (let ((__tmp109970
               (apply make-hash-table-eqv
                      'size:
                      (length _lst103161_)
                      _args103162_)))
          (declare (not safe))
          (list->hash-table! _lst103161_ __tmp109970))))
    (define list->hash-table-symbolic
      (lambda (_lst103158_ . _args103159_)
        (let ((__tmp109971
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst103158_)
                      _args103159_)))
          (declare (not safe))
          (list->hash-table! _lst103158_ __tmp109971))))
    (define list->hash-table-string
      (lambda (_lst103155_ . _args103156_)
        (let ((__tmp109972
               (apply make-hash-table-string
                      'size:
                      (length _lst103155_)
                      _args103156_)))
          (declare (not safe))
          (list->hash-table! _lst103155_ __tmp109972))))
    (define list->hash-table!
      (lambda (_lst103122_ _h103123_)
        (for-each
         (lambda (_el103125_)
           (let* ((_el103126103133_ _el103125_)
                  (_E103128103137_
                   (lambda () (error '"No clause matching" _el103126103133_)))
                  (_K103129103143_
                   (lambda (_v103140_ _k103141_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h103123_ _k103141_ _v103140_)))))
             (if (let () (declare (not safe)) (##pair? _el103126103133_))
                 (let ((_hd103130103146_
                        (let () (declare (not safe)) (##car _el103126103133_)))
                       (_tl103131103148_
                        (let ()
                          (declare (not safe))
                          (##cdr _el103126103133_))))
                   (let* ((_k103151_ _hd103130103146_)
                          (_v103153_ _tl103131103148_))
                     (declare (not safe))
                     (_K103129103143_ _v103153_ _k103151_)))
                 (let () (declare (not safe)) (_E103128103137_)))))
         _lst103122_)
        _h103123_))
    (define plist->hash-table
      (lambda (_lst103119_ . _args103120_)
        (let ((__tmp109973
               (apply make-hash-table
                      'size:
                      (length _lst103119_)
                      _args103120_)))
          (declare (not safe))
          (plist->hash-table! _lst103119_ __tmp109973))))
    (define plist->hash-table-eq
      (lambda (_lst103116_ . _args103117_)
        (let ((__tmp109974
               (apply make-hash-table-eq
                      'size:
                      (length _lst103116_)
                      _args103117_)))
          (declare (not safe))
          (plist->hash-table! _lst103116_ __tmp109974))))
    (define plist->hash-table-eqv
      (lambda (_lst103113_ . _args103114_)
        (let ((__tmp109975
               (apply make-hash-table-eqv
                      'size:
                      (length _lst103113_)
                      _args103114_)))
          (declare (not safe))
          (plist->hash-table! _lst103113_ __tmp109975))))
    (define plist->hash-table-symbolic
      (lambda (_lst103110_ . _args103111_)
        (let ((__tmp109976
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst103110_)
                      _args103111_)))
          (declare (not safe))
          (plist->hash-table! _lst103110_ __tmp109976))))
    (define plist->hash-table-string
      (lambda (_lst103107_ . _args103108_)
        (let ((__tmp109977
               (apply make-hash-table-string
                      'size:
                      (length _lst103107_)
                      _args103108_)))
          (declare (not safe))
          (plist->hash-table! _lst103107_ __tmp109977))))
    (define plist->hash-table!
      (lambda (_lst103047_ _h103048_)
        (let _loop103050_ ((_rest103052_ _lst103047_))
          (let* ((_rest103053103065_ _rest103052_)
                 (_else103056103073_
                  (lambda ()
                    (error '"bad property list -- uneven list" _lst103047_))))
            (let ((_K103059103088_
                   (lambda (_rest103084_ _val103085_ _key103086_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h103048_ _key103086_ _val103085_))
                     (let ()
                       (declare (not safe))
                       (_loop103050_ _rest103084_))))
                  (_K103058103078_ (lambda () _h103048_)))
              (let ((_try-match103055103081_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest103053103065_))
                           (let () (declare (not safe)) (_K103058103078_))
                           (let ()
                             (declare (not safe))
                             (_else103056103073_))))))
                (if (let () (declare (not safe)) (##pair? _rest103053103065_))
                    (let ((_tl103061103093_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest103053103065_)))
                          (_hd103060103091_
                           (let ()
                             (declare (not safe))
                             (##car _rest103053103065_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl103061103093_))
                          (let ((_tl103063103100_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl103061103093_)))
                                (_hd103062103098_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl103061103093_))))
                            (let ((_key103096_ _hd103060103091_)
                                  (_val103103_ _hd103062103098_)
                                  (_rest103105_ _tl103063103100_))
                              (let ()
                                (declare (not safe))
                                (_K103059103088_
                                 _rest103105_
                                 _val103103_
                                 _key103096_))))
                          (let () (declare (not safe)) (_else103056103073_))))
                    (let ()
                      (declare (not safe))
                      (_try-match103055103081_)))))))))
    (define hash-length
      (lambda (_h103043_)
        (let ((_h103045_
               (if (and (let () (declare (not safe)) (##structure? _h103043_))
                        (let ((__tmp109978
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h103043_))))
                          (declare (not safe))
                          (eq? __tmp109978 HashTable::t)))
                   _h103043_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h103043_)))))
          (declare (not safe))
          (&HashTable-length _h103045_))))
    (define &hash-length
      (lambda (_h103041_)
        (let () (declare (not safe)) (&HashTable-length _h103041_))))
    (define hash-ref__%
      (lambda (_h103023_ _key103024_ _default103025_)
        (let ((_h103027_
               (if (and (let () (declare (not safe)) (##structure? _h103023_))
                        (let ((__tmp109979
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h103023_))))
                          (declare (not safe))
                          (eq? __tmp109979 HashTable::t)))
                   _h103023_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h103023_)))))
          (declare (not safe))
          (&hash-ref__% _h103027_ _key103024_ _default103025_))))
    (define hash-ref__0
      (lambda (_h103032_ _key103033_)
        (let ((_default103035_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h103032_ _key103033_ _default103035_))))
    (define hash-ref
      (lambda _g109981_
        (let ((_g109980_ (let () (declare (not safe)) (##length _g109981_))))
          (cond ((let () (declare (not safe)) (##fx= _g109980_ 2))
                 (apply (lambda (_h103032_ _key103033_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h103032_ _key103033_)))
                        _g109981_))
                ((let () (declare (not safe)) (##fx= _g109980_ 3))
                 (apply (lambda (_h103037_ _key103038_ _default103039_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__%
                             _h103037_
                             _key103038_
                             _default103039_)))
                        _g109981_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g109981_))))))
    (define &hash-ref__%
      (lambda (_h103004_ _key103005_ _default103006_)
        (let ((_result103008_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h103004_ _key103005_ _default103006_))))
          (if (let ((__tmp109982 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result103008_ __tmp109982))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h103004_
                 'key:
                 _key103005_))
              _result103008_))))
    (define &hash-ref__0
      (lambda (_h103013_ _key103014_)
        (let ((_default103016_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h103013_ _key103014_ _default103016_))))
    (define &hash-ref
      (lambda _g109984_
        (let ((_g109983_ (let () (declare (not safe)) (##length _g109984_))))
          (cond ((let () (declare (not safe)) (##fx= _g109983_ 2))
                 (apply (lambda (_h103013_ _key103014_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h103013_ _key103014_)))
                        _g109984_))
                ((let () (declare (not safe)) (##fx= _g109983_ 3))
                 (apply (lambda (_h103018_ _key103019_ _default103020_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__%
                             _h103018_
                             _key103019_
                             _default103020_)))
                        _g109984_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g109984_))))))
    (define hash-get
      (lambda (_h102998_ _key102999_)
        (let ((_h103001_
               (if (and (let () (declare (not safe)) (##structure? _h102998_))
                        (let ((__tmp109985
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h102998_))))
                          (declare (not safe))
                          (eq? __tmp109985 HashTable::t)))
                   _h102998_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h102998_)))))
          (declare (not safe))
          (&hash-get _h103001_ _key102999_))))
    (define &hash-get
      (lambda (_h102995_ _key102996_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h102995_ _key102996_ '#f))))
    (define hash-put!
      (lambda (_h102989_ _key102990_ _value102991_)
        (let ((_h102993_
               (if (and (let () (declare (not safe)) (##structure? _h102989_))
                        (let ((__tmp109986
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h102989_))))
                          (declare (not safe))
                          (eq? __tmp109986 HashTable::t)))
                   _h102989_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h102989_)))))
          (declare (not safe))
          (&HashTable-set! _h102993_ _key102990_ _value102991_))))
    (define &hash-put!
      (lambda (_h102985_ _key102986_ _value102987_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h102985_ _key102986_ _value102987_))))
    (define hash-update!__%
      (lambda (_h102964_ _key102965_ _update102966_ _default102967_)
        (let ((_h102969_
               (if (and (let () (declare (not safe)) (##structure? _h102964_))
                        (let ((__tmp109987
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h102964_))))
                          (declare (not safe))
                          (eq? __tmp109987 HashTable::t)))
                   _h102964_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h102964_)))))
          (declare (not safe))
          (&HashTable-update!
           _h102969_
           _key102965_
           _update102966_
           _default102967_))))
    (define hash-update!__0
      (lambda (_h102974_ _key102975_ _update102976_)
        (let ((_default102978_ '#!void))
          (declare (not safe))
          (hash-update!__%
           _h102974_
           _key102975_
           _update102976_
           _default102978_))))
    (define hash-update!
      (lambda _g109989_
        (let ((_g109988_ (let () (declare (not safe)) (##length _g109989_))))
          (cond ((let () (declare (not safe)) (##fx= _g109988_ 3))
                 (apply (lambda (_h102974_ _key102975_ _update102976_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h102974_
                             _key102975_
                             _update102976_)))
                        _g109989_))
                ((let () (declare (not safe)) (##fx= _g109988_ 4))
                 (apply (lambda (_h102980_
                                 _key102981_
                                 _update102982_
                                 _default102983_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h102980_
                             _key102981_
                             _update102982_
                             _default102983_)))
                        _g109989_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g109989_))))))
    (define &hash-update!__%
      (lambda (_h102944_ _key102945_ _update102946_ _default102947_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h102944_
           _key102945_
           _update102946_
           _default102947_))))
    (define &hash-update!__0
      (lambda (_h102952_ _key102953_ _update102954_)
        (let ((_default102956_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h102952_
           _key102953_
           _update102954_
           _default102956_))))
    (define &hash-update!
      (lambda _g109991_
        (let ((_g109990_ (let () (declare (not safe)) (##length _g109991_))))
          (cond ((let () (declare (not safe)) (##fx= _g109990_ 3))
                 (apply (lambda (_h102952_ _key102953_ _update102954_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h102952_
                             _key102953_
                             _update102954_)))
                        _g109991_))
                ((let () (declare (not safe)) (##fx= _g109990_ 4))
                 (apply (lambda (_h102958_
                                 _key102959_
                                 _update102960_
                                 _default102961_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h102958_
                             _key102959_
                             _update102960_
                             _default102961_)))
                        _g109991_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g109991_))))))
    (define hash-remove!
      (lambda (_h102938_ _key102939_)
        (let ((_h102941_
               (if (and (let () (declare (not safe)) (##structure? _h102938_))
                        (let ((__tmp109992
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h102938_))))
                          (declare (not safe))
                          (eq? __tmp109992 HashTable::t)))
                   _h102938_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h102938_)))))
          (declare (not safe))
          (&HashTable-delete! _h102941_ _key102939_))))
    (define &hash-remove!
      (lambda (_h102935_ _key102936_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h102935_ _key102936_))))
    (define hash-key?
      (lambda (_h102930_ _k102931_)
        (let ((_h102933_
               (if (and (let () (declare (not safe)) (##structure? _h102930_))
                        (let ((__tmp109993
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h102930_))))
                          (declare (not safe))
                          (eq? __tmp109993 HashTable::t)))
                   _h102930_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h102930_)))))
          (declare (not safe))
          (&hash-key? _h102933_ _k102931_))))
    (define &hash-key?
      (lambda (_h102927_ _k102928_)
        (let ((__tmp109994
               (let ((__tmp109995
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h102927_ _k102928_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp109995 absent-value))))
          (declare (not safe))
          (not __tmp109994))))
    (define hash->list
      (lambda (_h102923_)
        (let ((_h102925_
               (if (and (let () (declare (not safe)) (##structure? _h102923_))
                        (let ((__tmp109996
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h102923_))))
                          (declare (not safe))
                          (eq? __tmp109996 HashTable::t)))
                   _h102923_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h102923_)))))
          (declare (not safe))
          (&hash->list _h102925_))))
    (define &hash->list
      (lambda (_h102916_)
        (let ((_lst102918_ '()))
          (let ((__tmp109997
                 (lambda (_k102920_ _v102921_)
                   (set! _lst102918_
                         (let ((__tmp109998
                                (let ()
                                  (declare (not safe))
                                  (cons _k102920_ _v102921_))))
                           (declare (not safe))
                           (cons __tmp109998 _lst102918_))))))
            (declare (not safe))
            (&HashTable-for-each _h102916_ __tmp109997))
          _lst102918_)))
    (define hash->plist
      (lambda (_h102912_)
        (let ((_h102914_
               (if (and (let () (declare (not safe)) (##structure? _h102912_))
                        (let ((__tmp109999
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h102912_))))
                          (declare (not safe))
                          (eq? __tmp109999 HashTable::t)))
                   _h102912_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h102912_)))))
          (declare (not safe))
          (&hash->plist _h102914_))))
    (define &hash->plist
      (lambda (_h102905_)
        (let ((_lst102907_ '()))
          (let ((__tmp110000
                 (lambda (_k102909_ _v102910_)
                   (set! _lst102907_
                         (let ((__tmp110001
                                (let ()
                                  (declare (not safe))
                                  (cons _v102910_ _lst102907_))))
                           (declare (not safe))
                           (cons _k102909_ __tmp110001))))))
            (declare (not safe))
            (&HashTable-for-each _h102905_ __tmp110000))
          _lst102907_)))
    (define hash-for-each
      (lambda (_proc102902_ _h102903_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h102903_ _proc102902_))))
    (define hash-map
      (lambda (_proc102894_ _h102895_)
        (let ((_result102897_ '()))
          (let ((__tmp110002
                 (lambda (_k102899_ _v102900_)
                   (set! _result102897_
                         (let ((__tmp110003
                                (_proc102894_ _k102899_ _v102900_)))
                           (declare (not safe))
                           (cons __tmp110003 _result102897_))))))
            (declare (not safe))
            (HashTable-for-each _h102895_ __tmp110002))
          _result102897_)))
    (define hash-fold
      (lambda (_proc102885_ _iv102886_ _h102887_)
        (let ((_result102889_ _iv102886_))
          (let ((__tmp110004
                 (lambda (_k102891_ _v102892_)
                   (set! _result102889_
                         (_proc102885_ _k102891_ _v102892_ _result102889_)))))
            (declare (not safe))
            (HashTable-for-each _h102887_ __tmp110004))
          _result102889_)))
    (define hash-find__%
      (lambda (_proc102861_ _h102862_ _default-value102863_)
        (call-with-current-continuation
         (lambda (_return102865_)
           (let ((__tmp110005
                  (lambda (_k102867_ _v102868_)
                    (let ((_$e102870_ (_proc102861_ _k102867_ _v102868_)))
                      (if _$e102870_ (_return102865_ _$e102870_) '#!void)))))
             (declare (not safe))
             (HashTable-for-each _h102862_ __tmp110005))
           _default-value102863_))))
    (define hash-find__0
      (lambda (_proc102876_ _h102877_)
        (let ((_default-value102879_ '#f))
          (declare (not safe))
          (hash-find__% _proc102876_ _h102877_ _default-value102879_))))
    (define hash-find
      (lambda _g110007_
        (let ((_g110006_ (let () (declare (not safe)) (##length _g110007_))))
          (cond ((let () (declare (not safe)) (##fx= _g110006_ 2))
                 (apply (lambda (_proc102876_ _h102877_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc102876_ _h102877_)))
                        _g110007_))
                ((let () (declare (not safe)) (##fx= _g110006_ 3))
                 (apply (lambda (_proc102881_ _h102882_ _default-value102883_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc102881_
                             _h102882_
                             _default-value102883_)))
                        _g110007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g110007_))))))
    (define hash-keys
      (lambda (_h102856_)
        (let ((_h102858_
               (if (and (let () (declare (not safe)) (##structure? _h102856_))
                        (let ((__tmp110008
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h102856_))))
                          (declare (not safe))
                          (eq? __tmp110008 HashTable::t)))
                   _h102856_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h102856_)))))
          (declare (not safe))
          (&hash-keys _h102858_))))
    (define &hash-keys
      (lambda (_h102849_)
        (let ((_result102851_ '()))
          (let ((__tmp110009
                 (lambda (_k102853_ _v102854_)
                   (set! _result102851_
                         (let ()
                           (declare (not safe))
                           (cons _k102853_ _result102851_))))))
            (declare (not safe))
            (&HashTable-for-each _h102849_ __tmp110009))
          _result102851_)))
    (define hash-values
      (lambda (_h102845_)
        (let ((_h102847_
               (if (and (let () (declare (not safe)) (##structure? _h102845_))
                        (let ((__tmp110010
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h102845_))))
                          (declare (not safe))
                          (eq? __tmp110010 HashTable::t)))
                   _h102845_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h102845_)))))
          (declare (not safe))
          (&hash-values _h102847_))))
    (define &hash-values
      (lambda (_h102838_)
        (let ((_result102840_ '()))
          (let ((__tmp110011
                 (lambda (_k102842_ _v102843_)
                   (set! _result102840_
                         (let ()
                           (declare (not safe))
                           (cons _v102843_ _result102840_))))))
            (declare (not safe))
            (&HashTable-for-each _h102838_ __tmp110011))
          _result102840_)))
    (define hash-copy
      (lambda (_h102834_)
        (let ((_h102836_
               (if (and (let () (declare (not safe)) (##structure? _h102834_))
                        (let ((__tmp110012
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h102834_))))
                          (declare (not safe))
                          (eq? __tmp110012 HashTable::t)))
                   _h102834_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h102834_)))))
          (declare (not safe))
          (&HashTable-copy _h102836_))))
    (define &hash-copy
      (lambda (_h102832_)
        (let () (declare (not safe)) (&HashTable-copy _h102832_))))
    (define hash-merge
      (lambda (_h102827_ . _rest102828_)
        (let ((_copy102830_
               (let () (declare (not safe)) (hash-copy _h102827_))))
          (apply hash-merge! _copy102830_ _rest102828_)
          _copy102830_)))
    (define hash-merge!
      (lambda (_h102817_ . _rest102818_)
        (let ((_h102820_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102817_))))
          (for-each
           (lambda (_hr102822_)
             (let ((__tmp110013
                    (lambda (_k102824_ _v102825_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h102820_ _k102824_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set!
                             _h102820_
                             _k102824_
                             _v102825_))))))
               (declare (not safe))
               (hash-for-each __tmp110013 _hr102822_)))
           _rest102818_)
          _h102820_)))))
