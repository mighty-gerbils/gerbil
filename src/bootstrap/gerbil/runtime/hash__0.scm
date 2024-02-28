(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1709127356)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp72842 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp72842
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args72825_
        (apply make-instance UnboundKeyError::t _$args72825_)))
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
      (lambda (_where72699_ _message72700_ . _irritants72701_)
        (raise (let ((__obj72839
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj72839
                  _message72700_
                  'where:
                  _where72699_
                  'irritants:
                  _irritants72701_)
                 __obj72839))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp72847 (list interface-instance::t))
            (__tmp72843
             (let ((__tmp72846
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72844
                    (let ((__tmp72845
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72845 '()))))
               (declare (not safe))
               (cons __tmp72846 __tmp72844))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp72847
         '(ref set! update! delete! for-each length copy clear)
         __tmp72843
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
      (let ((__tmp72852 (list interface-instance::t))
            (__tmp72848
             (let ((__tmp72851
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72849
                    (let ((__tmp72850
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72850 '()))))
               (declare (not safe))
               (cons __tmp72851 __tmp72849))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp72852
         '(begin-read! end-read! begin-write! end-write!)
         __tmp72848
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
      (lambda (_table72692_ _key72693_ _update72694_ _default72695_)
        (let ((_result72697_
               (table-ref _table72692_ _key72693_ _default72695_)))
          (table-set!
           _table72692_
           _key72693_
           (_update72694_ _default72695_)))))
    (define gambit-table-for-each
      (lambda (_table72689_ _proc72690_)
        (table-for-each _proc72690_ _table72689_)))
    (define gambit-table-clear!
      (lambda (_table72687_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table72687_ '0 '5 '#f '#f))))
    (let ((__tmp72853 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72853 'ref table-ref))
    (let ((__tmp72854 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72854 'set! table-set!))
    (let ((__tmp72855 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72855 'update! gambit-table-update!))
    (let ((__tmp72856 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72856 'delete! table-set!))
    (let ((__tmp72857 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72857 'for-each gambit-table-for-each))
    (let ((__tmp72858 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72858 'length table-length))
    (let ((__tmp72859 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72859 'copy table-copy))
    (let ((__tmp72860 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72860 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots72669_ '(table count free hash test seed))
             (_slot-vector72671_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots72669_))))
             (_slot-table72678_
              (let ((_slot-table72673_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot72675_ _field72676_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72673_
                      _slot72675_
                      _field72676_))
                   (let ((__tmp72861 (symbol->keyword _slot72675_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72673_
                      __tmp72861
                      _field72676_)))
                 _slots72669_
                 (let ((__tmp72862 (length _slots72669_)))
                   (declare (not safe))
                   (iota__1 __tmp72862 '1)))
                _slot-table72673_))
             (_flags72680_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields72682_ '#())
             (_properties72684_
              (let ((__tmp72865
                     (let ((__tmp72866
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots72669_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp72866)))
                    (__tmp72863
                     (let ((__tmp72864
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp72864 '()))))
                (declare (not safe))
                (cons __tmp72865 __tmp72863))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags72680_
           __table::t
           _fields72682_
           '()
           _slot-vector72671_
           _slot-table72678_
           _properties72684_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_slots72651_ '(gcht immediaste))
             (_slot-vector72653_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots72651_))))
             (_slot-table72660_
              (let ((_slot-table72655_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot72657_ _field72658_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72655_
                      _slot72657_
                      _field72658_))
                   (let ((__tmp72867 (symbol->keyword _slot72657_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72655_
                      __tmp72867
                      _field72658_)))
                 _slots72651_
                 (let ((__tmp72868 (length _slots72651_)))
                   (declare (not safe))
                   (iota__1 __tmp72868 '1)))
                _slot-table72655_))
             (_flags72662_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields72664_ '#())
             (_properties72666_
              (let ((__tmp72871
                     (let ((__tmp72872
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots72651_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp72872)))
                    (__tmp72869
                     (let ((__tmp72870
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp72870 '()))))
                (declare (not safe))
                (cons __tmp72871 __tmp72869))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'gc-hash-table
           _flags72662_
           __gc-table::t
           _fields72664_
           '()
           _slot-vector72653_
           _slot-table72660_
           _properties72666_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp72877 (list))
            (__tmp72873
             (let ((__tmp72876
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72874
                    (let ((__tmp72875
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72875 '()))))
               (declare (not safe))
               (cons __tmp72876 __tmp72874))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp72877
         '(table lock)
         __tmp72873
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args72648_
        (apply make-instance locked-hash-table::t _$args72648_)))
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
      (let ((__tmp72882 (list))
            (__tmp72878
             (let ((__tmp72881
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72879
                    (let ((__tmp72880
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72880 '()))))
               (declare (not safe))
               (cons __tmp72881 __tmp72879))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp72882
         '(table key-check)
         __tmp72878
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args72645_
        (apply make-instance checked-hash-table::t _$args72645_)))
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
      (let ((__tmp72885 (list hash-table::t))
            (__tmp72883
             (let ((__tmp72884
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72884 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp72885
         '()
         __tmp72883
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args72642_
        (apply make-instance eq-hash-table::t _$args72642_)))
    (define eqv-hash-table::t
      (let ((__tmp72888 (list hash-table::t))
            (__tmp72886
             (let ((__tmp72887
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72887 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp72888
         '()
         __tmp72886
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args72639_
        (apply make-instance eqv-hash-table::t _$args72639_)))
    (define symbol-hash-table::t
      (let ((__tmp72891 (list hash-table::t))
            (__tmp72889
             (let ((__tmp72890
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72890 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp72891
         '()
         __tmp72889
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args72636_
        (apply make-instance symbol-hash-table::t _$args72636_)))
    (define string-hash-table::t
      (let ((__tmp72894 (list hash-table::t))
            (__tmp72892
             (let ((__tmp72893
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72893 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp72894
         '()
         __tmp72892
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args72633_
        (apply make-instance string-hash-table::t _$args72633_)))
    (define immediate-hash-table::t
      (let ((__tmp72897 (list hash-table::t))
            (__tmp72895
             (let ((__tmp72896
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72896 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table
         'hash-table
         __tmp72897
         '()
         __tmp72895
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _$args72630_
        (apply make-instance immediate-hash-table::t _$args72630_)))
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
      (lambda (_obj72628_)
        (if (let () (declare (not safe)) (##structure? _obj72628_))
            (let ((__tmp72898
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj72628_))))
              (declare (not safe))
              (eq? __tmp72898 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj72623_)
        (let ((_$e72625_
               (if (let () (declare (not safe)) (##structure? _obj72623_))
                   (let ((__tmp72899
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj72623_))))
                     (declare (not safe))
                     (eq? __tmp72899 HashTable::t))
                   '#f)))
          (if _$e72625_
              _$e72625_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj72623_))))))
    (define HashTable-ref
      (lambda (_h72617_ _key72618_ _default72619_)
        (let ((_h72621_
               (if (and (let () (declare (not safe)) (##structure? _h72617_))
                        (let ((__tmp72900
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72617_))))
                          (declare (not safe))
                          (eq? __tmp72900 HashTable::t)))
                   _h72617_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72617_)))))
          (declare (not safe))
          (&HashTable-ref _h72621_ _key72618_ _default72619_))))
    (define &HashTable-ref
      (lambda (_h72612_ _key72613_ _default72614_)
        (declare (not safe))
        ((##unchecked-structure-ref _h72612_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h72612_ '1 interface-instance::t '#f)
         _key72613_
         _default72614_)))
    (define HashTable-set!
      (lambda (_h72606_ _key72607_ _value72608_)
        (let ((_h72610_
               (if (and (let () (declare (not safe)) (##structure? _h72606_))
                        (let ((__tmp72901
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72606_))))
                          (declare (not safe))
                          (eq? __tmp72901 HashTable::t)))
                   _h72606_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72606_)))))
          (declare (not safe))
          (&HashTable-set! _h72610_ _key72607_ _value72608_))))
    (define &HashTable-set!
      (lambda (_h72601_ _key72602_ _value72603_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72601_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h72601_ '1 interface-instance::t '#f)
           _key72602_
           _value72603_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h72594_ _key72595_ _update72596_ _default72597_)
        (let ((_h72599_
               (if (and (let () (declare (not safe)) (##structure? _h72594_))
                        (let ((__tmp72902
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72594_))))
                          (declare (not safe))
                          (eq? __tmp72902 HashTable::t)))
                   _h72594_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72594_)))))
          (declare (not safe))
          (&HashTable-update!
           _h72599_
           _key72595_
           _update72596_
           _default72597_))))
    (define &HashTable-update!
      (lambda (_h72588_ _key72589_ _update72590_ _default72591_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72588_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h72588_ '1 interface-instance::t '#f)
           _key72589_
           _update72590_
           _default72591_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h72583_ _key72584_)
        (let ((_h72586_
               (if (and (let () (declare (not safe)) (##structure? _h72583_))
                        (let ((__tmp72903
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72583_))))
                          (declare (not safe))
                          (eq? __tmp72903 HashTable::t)))
                   _h72583_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72583_)))))
          (declare (not safe))
          (&HashTable-delete! _h72586_ _key72584_))))
    (define &HashTable-delete!
      (lambda (_h72579_ _key72580_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72579_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h72579_ '1 interface-instance::t '#f)
           _key72580_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h72574_ _proc72575_)
        (let ((_h72577_
               (if (and (let () (declare (not safe)) (##structure? _h72574_))
                        (let ((__tmp72904
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72574_))))
                          (declare (not safe))
                          (eq? __tmp72904 HashTable::t)))
                   _h72574_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72574_)))))
          (declare (not safe))
          (&HashTable-for-each _h72577_ _proc72575_))))
    (define &HashTable-for-each
      (lambda (_h72570_ _proc72571_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72570_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h72570_ '1 interface-instance::t '#f)
           _proc72571_)
          '#!void)))
    (define HashTable-length
      (lambda (_h72566_)
        (let ((_h72568_
               (if (and (let () (declare (not safe)) (##structure? _h72566_))
                        (let ((__tmp72905
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72566_))))
                          (declare (not safe))
                          (eq? __tmp72905 HashTable::t)))
                   _h72566_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72566_)))))
          (declare (not safe))
          (&HashTable-length _h72568_))))
    (define &HashTable-length
      (lambda (_h72563_)
        (declare (not safe))
        ((##unchecked-structure-ref _h72563_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h72563_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h72559_)
        (let ((_h72561_
               (if (and (let () (declare (not safe)) (##structure? _h72559_))
                        (let ((__tmp72906
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72559_))))
                          (declare (not safe))
                          (eq? __tmp72906 HashTable::t)))
                   _h72559_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72559_)))))
          (declare (not safe))
          (&HashTable-copy _h72561_))))
    (define &HashTable-copy
      (lambda (_h72556_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h72556_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h72556_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h72552_)
        (let ((_h72554_
               (if (and (let () (declare (not safe)) (##structure? _h72552_))
                        (let ((__tmp72907
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72552_))))
                          (declare (not safe))
                          (eq? __tmp72907 HashTable::t)))
                   _h72552_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72552_)))))
          (declare (not safe))
          (&HashTable-clear! _h72554_))))
    (define &HashTable-clear!
      (lambda (_h72549_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72549_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h72549_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl72546_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72546_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72546_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl72543_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72543_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72543_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl72540_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72540_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72540_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl72537_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72537_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72537_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref69556_
      (lambda (_self72524_ _key72526_ _default72527_)
        (let ((_h72529_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72524_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72531_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72524_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l72531_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h72529_ _key72526_ _default72527_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l72531_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref69556_
       '#f))
    (define _locked-hash-table::set!69558_
      (lambda (_self72388_ _key72390_ _value72391_)
        (let ((_h72393_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72388_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72395_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72388_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l72395_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h72393_ _key72390_ _value72391_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l72395_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!69558_
       '#f))
    (define _locked-hash-table::update!69560_
      (lambda (_self72251_ _key72253_ _update72254_ _default72255_)
        (let ((_h72257_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72251_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72259_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72251_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l72259_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h72257_
                _key72253_
                _update72254_
                _default72255_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l72259_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!69560_
       '#f))
    (define _locked-hash-table::delete!69562_
      (lambda (_self72116_ _key72118_)
        (let ((_h72120_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72116_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72122_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72116_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l72122_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h72120_ _key72118_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l72122_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!69562_
       '#f))
    (define _locked-hash-table::for-each69564_
      (lambda (_self71981_ _proc71983_)
        (let ((_h71985_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71981_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71987_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71981_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71987_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h71985_ _proc71983_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71987_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each69564_
       '#f))
    (define _locked-hash-table::length69566_
      (lambda (_self71847_)
        (let ((_h71850_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71847_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71852_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71847_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71852_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h71850_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71852_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length69566_
       '#f))
    (define _locked-hash-table::copy69568_
      (lambda (_self71713_)
        (let ((_h71716_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71713_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71718_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71713_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71718_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h71716_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71718_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy69568_
       '#f))
    (define _locked-hash-table::clear!69570_
      (lambda (_self71579_)
        (let ((_h71582_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71579_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71584_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71579_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71584_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h71582_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71584_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!69570_
       '#f))
    (let ((__tmp72908 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72908 'begin-read! mutex-lock!))
    (let ((__tmp72909 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72909 'end-read! mutex-unlock!))
    (let ((__tmp72910 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72910 'begin-write! mutex-lock!))
    (let ((__tmp72911 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72911 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref69848_
      (lambda (_self71443_ _key71444_ _default71445_)
        (let ((_h71447_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71443_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71449_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71443_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7145171453_)
             (if (_g7145171453_ _key71444_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71444_))))
           _key?71449_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h71447_ _key71444_ _default71445_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref69848_
       '#f))
    (define _checked-hash-table::set!69850_
      (lambda (_self71307_ _key71308_ _value71309_)
        (let ((_h71311_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71307_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71313_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71307_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7131571317_)
             (if (_g7131571317_ _key71308_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71308_))))
           _key?71313_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h71311_ _key71308_ _value71309_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!69850_
       '#f))
    (define _checked-hash-table::update!69852_
      (lambda (_self71172_ _key71173_ _update71174_ _default71175_)
        (let ((_h71177_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71172_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71179_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71172_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?71182_)
             (if (_key?71182_ _key71173_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71173_)))
             (if (let () (declare (not safe)) (procedure? _update71174_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update71174_))))
           _key?71179_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h71177_
             _key71173_
             _update71174_
             _default71175_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!69852_
       '#f))
    (define _checked-hash-table::delete!69854_
      (lambda (_self71037_ _key71038_)
        (let ((_h71040_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71037_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71042_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71037_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7104471046_)
             (if (_g7104471046_ _key71038_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71038_))))
           _key?71042_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h71040_ _key71038_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!69854_
       '#f))
    (define _checked-hash-table::for-each69856_
      (lambda (_self70905_ _proc70906_)
        (let ((_h70908_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70905_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70910_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70905_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g72912_)
             (if (let () (declare (not safe)) (procedure? _proc70906_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc70906_))))
           _key?70910_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h70908_ _proc70906_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each69856_
       '#f))
    (define _checked-hash-table::length69858_
      (lambda (_self70775_)
        (let ((_h70777_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70775_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70779_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70775_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h70777_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length69858_
       '#f))
    (define _checked-hash-table::copy69860_
      (lambda (_self70645_)
        (let ((_h70647_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70645_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70649_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70645_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h70647_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy69860_
       '#f))
    (define _checked-hash-table::clear!69862_
      (lambda (_self70515_)
        (let ((_h70517_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70515_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70519_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70515_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h70517_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!69862_
       '#f))
    (define make-generic-hash-table
      (lambda (_table70385_
               _count70386_
               _free70387_
               _hash70388_
               _test70389_
               _seed70390_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table70385_
           _count70386_
           _free70387_
           _hash70388_
           _test70389_
           _seed70390_))))
    (define make-hash-table__%
      (lambda (_g72913_
               _size-hint7023070240_
               _seed7023170242_
               _test7023270244_
               _hash7023370246_
               _lock7023470248_
               _check7023570250_
               _weak-keys7023670252_
               _weak-values7023770254_)
        (let* ((_size-hint70257_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint7023070240_ absent-value))
                    '#f
                    _size-hint7023070240_))
               (_seed70259_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed7023170242_ absent-value))
                    '#f
                    _seed7023170242_))
               (_test70261_
                (if (let ()
                      (declare (not safe))
                      (eq? _test7023270244_ absent-value))
                    equal?
                    _test7023270244_))
               (_hash70263_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash7023370246_ absent-value))
                    '#f
                    _hash7023370246_))
               (_lock70265_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock7023470248_ absent-value))
                    '#f
                    _lock7023470248_))
               (_check70267_
                (if (let ()
                      (declare (not safe))
                      (eq? _check7023570250_ absent-value))
                    '#f
                    _check7023570250_))
               (_weak-keys70269_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys7023670252_ absent-value))
                    '#f
                    _weak-keys7023670252_))
               (_weak-values70271_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values7023770254_ absent-value))
                    '#f
                    _weak-values7023770254_)))
          (letrec ((_table-seed70273_
                    (lambda ()
                      (if (let () (declare (not safe)) (fixnum? _seed70259_))
                          _seed70259_
                          (random-integer (macro-max-fixnum32)))))
                   (_wrap-lock70274_
                    (lambda (_ht70368_)
                      (if _lock70265_
                          (let ((__tmp72914
                                 (let ((__tmp72915
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock70265_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht70368_
                                    __tmp72915))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp72914))
                          _ht70368_)))
                   (_wrap-checked70275_
                    (lambda (_ht70365_ _implicit70366_)
                      (if _check70267_
                          (let ((__tmp72916
                                 (let ((__tmp72917
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check70267_))
                                            _check70267_
                                            _implicit70366_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht70365_
                                    __tmp72917))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp72916))
                          _ht70365_)))
                   (_make70276_
                    (lambda (_kons70353_ _key?70354_ _hash70355_ _test70356_)
                      (let* ((_size70358_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint70257_)))
                             (_table70360_
                              (make-vector _size70358_ (macro-unused-obj)))
                             (_ht70362_
                              (let ((__tmp72918
                                     (_kons70353_
                                      _table70360_
                                      '0
                                      (fxquotient _size70358_ '2)
                                      _hash70355_
                                      _test70356_
                                      (let ()
                                        (declare (not safe))
                                        (_table-seed70273_)))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72918))))
                        (let ((__tmp72919
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock70274_ _ht70362_))))
                          (declare (not safe))
                          (_wrap-checked70275_ __tmp72919 _key?70354_)))))
                   (_make-gc-hash-table70277_
                    (lambda ()
                      (let* ((_ht70351_
                              (let ((__tmp72920
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _size-hint70257_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72920)))
                             (__tmp72921
                              (let ()
                                (declare (not safe))
                                (_wrap-lock70274_ _ht70351_))))
                        (declare (not safe))
                        (_wrap-checked70275_ __tmp72921 true))))
                   (_make-gambit-table70278_
                    (lambda ()
                      (let* ((_size70335_
                              (let ((_$e70332_ _size-hint70257_))
                                (if _$e70332_ _$e70332_ (macro-absent-obj))))
                             (_test70340_
                              (let ((_$e70337_ _test70261_))
                                (if _$e70337_ _$e70337_ equal?)))
                             (_hash70345_
                              (let ((_$e70342_ _hash70263_))
                                (if _$e70342_
                                    _$e70342_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test70340_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test70340_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht70347_
                              (let ((__tmp72922
                                     (make-table
                                      'size:
                                      _size70335_
                                      'test:
                                      _test70340_
                                      'hash:
                                      _hash70345_
                                      'weak-keys:
                                      _weak-keys70269_
                                      'weak-values:
                                      _weak-values70271_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72922))))
                        (let ((__tmp72923
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock70274_ _ht70347_))))
                          (declare (not safe))
                          (_wrap-checked70275_ __tmp72923 true))))))
            (if (or _weak-keys70269_ _weak-values70271_)
                (let () (declare (not safe)) (_make-gambit-table70278_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test70261_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test70261_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash70263_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash70263_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash70263_ eq-hash)))
                         (let () (declare (not safe)) (not _seed70259_)))
                    (let () (declare (not safe)) (_make-gc-hash-table70277_))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test70261_ eq?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test70261_ ##eq?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash70263_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash70263_ eq?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash70263_ eq-hash))))
                        (let ()
                          (declare (not safe))
                          (_make70276_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test70261_ eqv?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test70261_ ##eqv?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _hash70263_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash70263_ eqv?-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash70263_ eqv-hash))))
                            (let ()
                              (declare (not safe))
                              (_make70276_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test70261_ eq?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test70261_ ##eq?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash70263_ symbolic-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash70263_ ##symbol-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make70276_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (let ()
                                               (declare (not safe))
                                               (eq? _test70261_ eq?))
                                             (let ()
                                               (declare (not safe))
                                               (eq? _test70261_ ##eq?)))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash70263_ immediate-hash)))
                                    (let ()
                                      (declare (not safe))
                                      (_make70276_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (let ()
                                                   (declare (not safe))
                                                   (eq? _test70261_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test70261_ ##equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test70261_ string=?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test70261_
                                                        ##string=?)))
                                             (or (let ()
                                                   (declare (not safe))
                                                   (eq? _hash70263_
                                                        string-hash))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _hash70263_
                                                        ##string=?-hash))))
                                        (let ()
                                          (declare (not safe))
                                          (_make70276_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (let ()
                                                   (declare (not safe))
                                                   (eq? _test70261_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _hash70263_)))
                                            (let ()
                                              (declare (not safe))
                                              (_make70276_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp72925
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _test70261_))))
                                                  (declare (not safe))
                                                  (not __tmp72925))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _test70261_))
                                                (if (let ((__tmp72924
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _hash70263_))))
                                                      (declare (not safe))
                                                      (not __tmp72924))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _hash70263_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make70276_
                                                       make-generic-hash-table
                                                       true
                                                       _hash70263_
                                                       _test70261_))))))))))))))))
    (define make-hash-table__@
      (lambda (_keys7022970374_ . _args70376_)
        (apply make-hash-table__%
               _keys7022970374_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7022970374_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7022970374_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7022970374_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7022970374_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7022970374_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7022970374_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7022970374_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7022970374_
                  'weak-values:
                  absent-value))
               _args70376_)))
    (define make-hash-table
      (lambda _args7023870382_
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
               _args7023870382_)))
    (define make-hash-table-eq
      (lambda _args70226_ (apply make-hash-table 'test: eq? _args70226_)))
    (define make-hash-table-eqv
      (lambda _args70224_ (apply make-hash-table 'test: eqv? _args70224_)))
    (define make-hash-table-symbolic
      (lambda _args70222_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args70222_)))
    (define make-hash-table-string
      (lambda _args70220_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args70220_)))
    (define make-hash-table-immediate
      (lambda _args70218_
        (apply make-hash-table 'test: eq? 'hash: immediate-hash _args70218_)))
    (define list->hash-table
      (lambda (_lst70215_ . _args70216_)
        (let ((__tmp72926
               (apply make-hash-table 'size: (length _lst70215_) _args70216_)))
          (declare (not safe))
          (list->hash-table! _lst70215_ __tmp72926))))
    (define list->hash-table-eq
      (lambda (_lst70212_ . _args70213_)
        (let ((__tmp72927
               (apply make-hash-table-eq
                      'size:
                      (length _lst70212_)
                      _args70213_)))
          (declare (not safe))
          (list->hash-table! _lst70212_ __tmp72927))))
    (define list->hash-table-eqv
      (lambda (_lst70209_ . _args70210_)
        (let ((__tmp72928
               (apply make-hash-table-eqv
                      'size:
                      (length _lst70209_)
                      _args70210_)))
          (declare (not safe))
          (list->hash-table! _lst70209_ __tmp72928))))
    (define list->hash-table-symbolic
      (lambda (_lst70206_ . _args70207_)
        (let ((__tmp72929
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst70206_)
                      _args70207_)))
          (declare (not safe))
          (list->hash-table! _lst70206_ __tmp72929))))
    (define list->hash-table-string
      (lambda (_lst70203_ . _args70204_)
        (let ((__tmp72930
               (apply make-hash-table-string
                      'size:
                      (length _lst70203_)
                      _args70204_)))
          (declare (not safe))
          (list->hash-table! _lst70203_ __tmp72930))))
    (define list->hash-table!
      (lambda (_lst70170_ _h70171_)
        (for-each
         (lambda (_el70173_)
           (let* ((_el7017470181_ _el70173_)
                  (_E7017670185_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el7017470181_))))
                  (_K7017770191_
                   (lambda (_v70188_ _k70189_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h70171_ _k70189_ _v70188_)))))
             (if (let () (declare (not safe)) (##pair? _el7017470181_))
                 (let ((_hd7017870194_
                        (let () (declare (not safe)) (##car _el7017470181_)))
                       (_tl7017970196_
                        (let () (declare (not safe)) (##cdr _el7017470181_))))
                   (let* ((_k70199_ _hd7017870194_) (_v70201_ _tl7017970196_))
                     (declare (not safe))
                     (_K7017770191_ _v70201_ _k70199_)))
                 (let () (declare (not safe)) (_E7017670185_)))))
         _lst70170_)
        _h70171_))
    (define plist->hash-table
      (lambda (_lst70167_ . _args70168_)
        (let ((__tmp72931
               (apply make-hash-table 'size: (length _lst70167_) _args70168_)))
          (declare (not safe))
          (plist->hash-table! _lst70167_ __tmp72931))))
    (define plist->hash-table-eq
      (lambda (_lst70164_ . _args70165_)
        (let ((__tmp72932
               (apply make-hash-table-eq
                      'size:
                      (length _lst70164_)
                      _args70165_)))
          (declare (not safe))
          (plist->hash-table! _lst70164_ __tmp72932))))
    (define plist->hash-table-eqv
      (lambda (_lst70161_ . _args70162_)
        (let ((__tmp72933
               (apply make-hash-table-eqv
                      'size:
                      (length _lst70161_)
                      _args70162_)))
          (declare (not safe))
          (plist->hash-table! _lst70161_ __tmp72933))))
    (define plist->hash-table-symbolic
      (lambda (_lst70158_ . _args70159_)
        (let ((__tmp72934
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst70158_)
                      _args70159_)))
          (declare (not safe))
          (plist->hash-table! _lst70158_ __tmp72934))))
    (define plist->hash-table-string
      (lambda (_lst70155_ . _args70156_)
        (let ((__tmp72935
               (apply make-hash-table-string
                      'size:
                      (length _lst70155_)
                      _args70156_)))
          (declare (not safe))
          (plist->hash-table! _lst70155_ __tmp72935))))
    (define plist->hash-table!
      (lambda (_lst70095_ _h70096_)
        (let _loop70098_ ((_rest70100_ _lst70095_))
          (let* ((_rest7010170113_ _rest70100_)
                 (_else7010470121_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst70095_)))))
            (let ((_K7010770136_
                   (lambda (_rest70132_ _val70133_ _key70134_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h70096_ _key70134_ _val70133_))
                     (let () (declare (not safe)) (_loop70098_ _rest70132_))))
                  (_K7010670126_ (lambda () _h70096_)))
              (let ((_try-match7010370129_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest7010170113_))
                           (let () (declare (not safe)) (_K7010670126_))
                           (let () (declare (not safe)) (_else7010470121_))))))
                (if (let () (declare (not safe)) (##pair? _rest7010170113_))
                    (let ((_tl7010970141_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest7010170113_)))
                          (_hd7010870139_
                           (let ()
                             (declare (not safe))
                             (##car _rest7010170113_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl7010970141_))
                          (let ((_tl7011170148_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl7010970141_)))
                                (_hd7011070146_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl7010970141_))))
                            (let ((_key70144_ _hd7010870139_)
                                  (_val70151_ _hd7011070146_)
                                  (_rest70153_ _tl7011170148_))
                              (let ()
                                (declare (not safe))
                                (_K7010770136_
                                 _rest70153_
                                 _val70151_
                                 _key70144_))))
                          (let () (declare (not safe)) (_else7010470121_))))
                    (let ()
                      (declare (not safe))
                      (_try-match7010370129_)))))))))
    (define hash-length
      (lambda (_h70091_)
        (let ((_h70093_
               (if (and (let () (declare (not safe)) (##structure? _h70091_))
                        (let ((__tmp72936
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70091_))))
                          (declare (not safe))
                          (eq? __tmp72936 HashTable::t)))
                   _h70091_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70091_)))))
          (declare (not safe))
          (&HashTable-length _h70093_))))
    (define &hash-length
      (lambda (_h70089_)
        (let () (declare (not safe)) (&HashTable-length _h70089_))))
    (define hash-ref__%
      (lambda (_h70071_ _key70072_ _default70073_)
        (let ((_h70075_
               (if (and (let () (declare (not safe)) (##structure? _h70071_))
                        (let ((__tmp72937
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70071_))))
                          (declare (not safe))
                          (eq? __tmp72937 HashTable::t)))
                   _h70071_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70071_)))))
          (declare (not safe))
          (&hash-ref__% _h70075_ _key70072_ _default70073_))))
    (define hash-ref__0
      (lambda (_h70080_ _key70081_)
        (let ((_default70083_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h70080_ _key70081_ _default70083_))))
    (define hash-ref
      (lambda _g72939_
        (let ((_g72938_ (let () (declare (not safe)) (##length _g72939_))))
          (cond ((let () (declare (not safe)) (##fx= _g72938_ 2))
                 (apply (lambda (_h70080_ _key70081_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h70080_ _key70081_)))
                        _g72939_))
                ((let () (declare (not safe)) (##fx= _g72938_ 3))
                 (apply (lambda (_h70085_ _key70086_ _default70087_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h70085_ _key70086_ _default70087_)))
                        _g72939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g72939_))))))
    (define &hash-ref__%
      (lambda (_h70052_ _key70053_ _default70054_)
        (let ((_result70056_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h70052_ _key70053_ _default70054_))))
          (if (let ((__tmp72940 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result70056_ __tmp72940))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h70052_
                 'key:
                 _key70053_))
              _result70056_))))
    (define &hash-ref__0
      (lambda (_h70061_ _key70062_)
        (let ((_default70064_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h70061_ _key70062_ _default70064_))))
    (define &hash-ref
      (lambda _g72942_
        (let ((_g72941_ (let () (declare (not safe)) (##length _g72942_))))
          (cond ((let () (declare (not safe)) (##fx= _g72941_ 2))
                 (apply (lambda (_h70061_ _key70062_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h70061_ _key70062_)))
                        _g72942_))
                ((let () (declare (not safe)) (##fx= _g72941_ 3))
                 (apply (lambda (_h70066_ _key70067_ _default70068_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h70066_ _key70067_ _default70068_)))
                        _g72942_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g72942_))))))
    (define hash-get
      (lambda (_h70046_ _key70047_)
        (let ((_h70049_
               (if (and (let () (declare (not safe)) (##structure? _h70046_))
                        (let ((__tmp72943
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70046_))))
                          (declare (not safe))
                          (eq? __tmp72943 HashTable::t)))
                   _h70046_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70046_)))))
          (declare (not safe))
          (&hash-get _h70049_ _key70047_))))
    (define &hash-get
      (lambda (_h70043_ _key70044_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h70043_ _key70044_ '#f))))
    (define hash-put!
      (lambda (_h70037_ _key70038_ _value70039_)
        (let ((_h70041_
               (if (and (let () (declare (not safe)) (##structure? _h70037_))
                        (let ((__tmp72944
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70037_))))
                          (declare (not safe))
                          (eq? __tmp72944 HashTable::t)))
                   _h70037_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70037_)))))
          (declare (not safe))
          (&HashTable-set! _h70041_ _key70038_ _value70039_))))
    (define &hash-put!
      (lambda (_h70033_ _key70034_ _value70035_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h70033_ _key70034_ _value70035_))))
    (define hash-update!__%
      (lambda (_h70012_ _key70013_ _update70014_ _default70015_)
        (let ((_h70017_
               (if (and (let () (declare (not safe)) (##structure? _h70012_))
                        (let ((__tmp72945
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70012_))))
                          (declare (not safe))
                          (eq? __tmp72945 HashTable::t)))
                   _h70012_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70012_)))))
          (declare (not safe))
          (&HashTable-update!
           _h70017_
           _key70013_
           _update70014_
           _default70015_))))
    (define hash-update!__0
      (lambda (_h70022_ _key70023_ _update70024_)
        (let ((_default70026_ '#!void))
          (declare (not safe))
          (hash-update!__% _h70022_ _key70023_ _update70024_ _default70026_))))
    (define hash-update!
      (lambda _g72947_
        (let ((_g72946_ (let () (declare (not safe)) (##length _g72947_))))
          (cond ((let () (declare (not safe)) (##fx= _g72946_ 3))
                 (apply (lambda (_h70022_ _key70023_ _update70024_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h70022_
                             _key70023_
                             _update70024_)))
                        _g72947_))
                ((let () (declare (not safe)) (##fx= _g72946_ 4))
                 (apply (lambda (_h70028_
                                 _key70029_
                                 _update70030_
                                 _default70031_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h70028_
                             _key70029_
                             _update70030_
                             _default70031_)))
                        _g72947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g72947_))))))
    (define &hash-update!__%
      (lambda (_h69992_ _key69993_ _update69994_ _default69995_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h69992_
           _key69993_
           _update69994_
           _default69995_))))
    (define &hash-update!__0
      (lambda (_h70000_ _key70001_ _update70002_)
        (let ((_default70004_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h70000_
           _key70001_
           _update70002_
           _default70004_))))
    (define &hash-update!
      (lambda _g72949_
        (let ((_g72948_ (let () (declare (not safe)) (##length _g72949_))))
          (cond ((let () (declare (not safe)) (##fx= _g72948_ 3))
                 (apply (lambda (_h70000_ _key70001_ _update70002_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h70000_
                             _key70001_
                             _update70002_)))
                        _g72949_))
                ((let () (declare (not safe)) (##fx= _g72948_ 4))
                 (apply (lambda (_h70006_
                                 _key70007_
                                 _update70008_
                                 _default70009_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h70006_
                             _key70007_
                             _update70008_
                             _default70009_)))
                        _g72949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g72949_))))))
    (define hash-remove!
      (lambda (_h69986_ _key69987_)
        (let ((_h69989_
               (if (and (let () (declare (not safe)) (##structure? _h69986_))
                        (let ((__tmp72950
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69986_))))
                          (declare (not safe))
                          (eq? __tmp72950 HashTable::t)))
                   _h69986_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69986_)))))
          (declare (not safe))
          (&HashTable-delete! _h69989_ _key69987_))))
    (define &hash-remove!
      (lambda (_h69983_ _key69984_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h69983_ _key69984_))))
    (define hash-key?
      (lambda (_h69978_ _k69979_)
        (let ((_h69981_
               (if (and (let () (declare (not safe)) (##structure? _h69978_))
                        (let ((__tmp72951
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69978_))))
                          (declare (not safe))
                          (eq? __tmp72951 HashTable::t)))
                   _h69978_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69978_)))))
          (declare (not safe))
          (&hash-key? _h69981_ _k69979_))))
    (define &hash-key?
      (lambda (_h69975_ _k69976_)
        (let ((__tmp72952
               (let ((__tmp72953
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h69975_ _k69976_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp72953 absent-value))))
          (declare (not safe))
          (not __tmp72952))))
    (define hash->list
      (lambda (_h69971_)
        (let ((_h69973_
               (if (and (let () (declare (not safe)) (##structure? _h69971_))
                        (let ((__tmp72954
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69971_))))
                          (declare (not safe))
                          (eq? __tmp72954 HashTable::t)))
                   _h69971_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69971_)))))
          (declare (not safe))
          (&hash->list _h69973_))))
    (define &hash->list
      (lambda (_h69964_)
        (let ((_lst69966_ '()))
          (let ((__tmp72955
                 (lambda (_k69968_ _v69969_)
                   (set! _lst69966_
                         (let ((__tmp72956
                                (let ()
                                  (declare (not safe))
                                  (cons _k69968_ _v69969_))))
                           (declare (not safe))
                           (cons __tmp72956 _lst69966_))))))
            (declare (not safe))
            (&HashTable-for-each _h69964_ __tmp72955))
          _lst69966_)))
    (define hash->plist
      (lambda (_h69960_)
        (let ((_h69962_
               (if (and (let () (declare (not safe)) (##structure? _h69960_))
                        (let ((__tmp72957
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69960_))))
                          (declare (not safe))
                          (eq? __tmp72957 HashTable::t)))
                   _h69960_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69960_)))))
          (declare (not safe))
          (&hash->plist _h69962_))))
    (define &hash->plist
      (lambda (_h69953_)
        (let ((_lst69955_ '()))
          (let ((__tmp72958
                 (lambda (_k69957_ _v69958_)
                   (set! _lst69955_
                         (let ((__tmp72959
                                (let ()
                                  (declare (not safe))
                                  (cons _v69958_ _lst69955_))))
                           (declare (not safe))
                           (cons _k69957_ __tmp72959))))))
            (declare (not safe))
            (&HashTable-for-each _h69953_ __tmp72958))
          _lst69955_)))
    (define hash-for-each
      (lambda (_proc69950_ _h69951_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h69951_ _proc69950_))))
    (define hash-map
      (lambda (_proc69942_ _h69943_)
        (let ((_result69945_ '()))
          (let ((__tmp72960
                 (lambda (_k69947_ _v69948_)
                   (set! _result69945_
                         (let ((__tmp72961 (_proc69942_ _k69947_ _v69948_)))
                           (declare (not safe))
                           (cons __tmp72961 _result69945_))))))
            (declare (not safe))
            (HashTable-for-each _h69943_ __tmp72960))
          _result69945_)))
    (define hash-fold
      (lambda (_proc69933_ _iv69934_ _h69935_)
        (let ((_result69937_ _iv69934_))
          (let ((__tmp72962
                 (lambda (_k69939_ _v69940_)
                   (set! _result69937_
                         (_proc69933_ _k69939_ _v69940_ _result69937_)))))
            (declare (not safe))
            (HashTable-for-each _h69935_ __tmp72962))
          _result69937_)))
    (define hash-find__%
      (lambda (_proc69909_ _h69910_ _default-value69911_)
        (call-with-current-continuation
         (lambda (_return69913_)
           (let ((__tmp72963
                  (lambda (_k69915_ _v69916_)
                    (let ((_$e69918_ (_proc69909_ _k69915_ _v69916_)))
                      (if _$e69918_ (_return69913_ _$e69918_) '#!void)))))
             (declare (not safe))
             (HashTable-for-each _h69910_ __tmp72963))
           _default-value69911_))))
    (define hash-find__0
      (lambda (_proc69924_ _h69925_)
        (let ((_default-value69927_ '#f))
          (declare (not safe))
          (hash-find__% _proc69924_ _h69925_ _default-value69927_))))
    (define hash-find
      (lambda _g72965_
        (let ((_g72964_ (let () (declare (not safe)) (##length _g72965_))))
          (cond ((let () (declare (not safe)) (##fx= _g72964_ 2))
                 (apply (lambda (_proc69924_ _h69925_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc69924_ _h69925_)))
                        _g72965_))
                ((let () (declare (not safe)) (##fx= _g72964_ 3))
                 (apply (lambda (_proc69929_ _h69930_ _default-value69931_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc69929_
                             _h69930_
                             _default-value69931_)))
                        _g72965_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g72965_))))))
    (define hash-keys
      (lambda (_h69904_)
        (let ((_h69906_
               (if (and (let () (declare (not safe)) (##structure? _h69904_))
                        (let ((__tmp72966
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69904_))))
                          (declare (not safe))
                          (eq? __tmp72966 HashTable::t)))
                   _h69904_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69904_)))))
          (declare (not safe))
          (&hash-keys _h69906_))))
    (define &hash-keys
      (lambda (_h69897_)
        (let ((_result69899_ '()))
          (let ((__tmp72967
                 (lambda (_k69901_ _v69902_)
                   (set! _result69899_
                         (let ()
                           (declare (not safe))
                           (cons _k69901_ _result69899_))))))
            (declare (not safe))
            (&HashTable-for-each _h69897_ __tmp72967))
          _result69899_)))
    (define hash-values
      (lambda (_h69893_)
        (let ((_h69895_
               (if (and (let () (declare (not safe)) (##structure? _h69893_))
                        (let ((__tmp72968
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69893_))))
                          (declare (not safe))
                          (eq? __tmp72968 HashTable::t)))
                   _h69893_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69893_)))))
          (declare (not safe))
          (&hash-values _h69895_))))
    (define &hash-values
      (lambda (_h69886_)
        (let ((_result69888_ '()))
          (let ((__tmp72969
                 (lambda (_k69890_ _v69891_)
                   (set! _result69888_
                         (let ()
                           (declare (not safe))
                           (cons _v69891_ _result69888_))))))
            (declare (not safe))
            (&HashTable-for-each _h69886_ __tmp72969))
          _result69888_)))
    (define hash-copy
      (lambda (_h69882_)
        (let ((_h69884_
               (if (and (let () (declare (not safe)) (##structure? _h69882_))
                        (let ((__tmp72970
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69882_))))
                          (declare (not safe))
                          (eq? __tmp72970 HashTable::t)))
                   _h69882_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69882_)))))
          (declare (not safe))
          (&HashTable-copy _h69884_))))
    (define &hash-copy
      (lambda (_h69880_)
        (let () (declare (not safe)) (&HashTable-copy _h69880_))))
    (define hash-merge
      (lambda (_h69875_ . _rest69876_)
        (let ((_copy69878_ (let () (declare (not safe)) (hash-copy _h69875_))))
          (apply hash-merge! _copy69878_ _rest69876_)
          _copy69878_)))
    (define hash-merge!
      (lambda (_h69865_ . _rest69866_)
        (let ((_h69868_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h69865_))))
          (for-each
           (lambda (_hr69870_)
             (let ((__tmp72971
                    (lambda (_k69872_ _v69873_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h69868_ _k69872_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h69868_ _k69872_ _v69873_))))))
               (declare (not safe))
               (hash-for-each __tmp72971 _hr69870_)))
           _rest69866_)
          _h69868_)))))
