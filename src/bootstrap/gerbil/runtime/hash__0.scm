(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1709125254)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp72832 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp72832
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args72815_
        (apply make-instance UnboundKeyError::t _$args72815_)))
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
      (lambda (_where72689_ _message72690_ . _irritants72691_)
        (raise (let ((__obj72829
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj72829
                  _message72690_
                  'where:
                  _where72689_
                  'irritants:
                  _irritants72691_)
                 __obj72829))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp72837 (list interface-instance::t))
            (__tmp72833
             (let ((__tmp72836
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72834
                    (let ((__tmp72835
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72835 '()))))
               (declare (not safe))
               (cons __tmp72836 __tmp72834))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp72837
         '(ref set! update! delete! for-each length copy clear)
         __tmp72833
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
      (let ((__tmp72842 (list interface-instance::t))
            (__tmp72838
             (let ((__tmp72841
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72839
                    (let ((__tmp72840
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72840 '()))))
               (declare (not safe))
               (cons __tmp72841 __tmp72839))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp72842
         '(begin-read! end-read! begin-write! end-write!)
         __tmp72838
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
      (lambda (_table72682_ _key72683_ _update72684_ _default72685_)
        (let ((_result72687_
               (table-ref _table72682_ _key72683_ _default72685_)))
          (table-set!
           _table72682_
           _key72683_
           (_update72684_ _default72685_)))))
    (define gambit-table-for-each
      (lambda (_table72679_ _proc72680_)
        (table-for-each _proc72680_ _table72679_)))
    (define gambit-table-clear!
      (lambda (_table72677_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table72677_ '0 '5 '#f '#f))))
    (let ((__tmp72843 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72843 'ref table-ref))
    (let ((__tmp72844 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72844 'set! table-set!))
    (let ((__tmp72845 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72845 'update! gambit-table-update!))
    (let ((__tmp72846 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72846 'delete! table-set!))
    (let ((__tmp72847 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72847 'for-each gambit-table-for-each))
    (let ((__tmp72848 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72848 'length table-length))
    (let ((__tmp72849 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72849 'copy table-copy))
    (let ((__tmp72850 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72850 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots72659_ '(table count free hash test seed))
             (_slot-vector72661_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots72659_))))
             (_slot-table72668_
              (let ((_slot-table72663_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot72665_ _field72666_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72663_
                      _slot72665_
                      _field72666_))
                   (let ((__tmp72851 (symbol->keyword _slot72665_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72663_
                      __tmp72851
                      _field72666_)))
                 _slots72659_
                 (let ((__tmp72852 (length _slots72659_)))
                   (declare (not safe))
                   (iota__1 __tmp72852 '1)))
                _slot-table72663_))
             (_flags72670_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields72672_ '#())
             (_properties72674_
              (let ((__tmp72855
                     (let ((__tmp72856
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots72659_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp72856)))
                    (__tmp72853
                     (let ((__tmp72854
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp72854 '()))))
                (declare (not safe))
                (cons __tmp72855 __tmp72853))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags72670_
           __table::t
           _fields72672_
           '()
           _slot-vector72661_
           _slot-table72668_
           _properties72674_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_slots72641_ '(gcht immediaste))
             (_slot-vector72643_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots72641_))))
             (_slot-table72650_
              (let ((_slot-table72645_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot72647_ _field72648_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72645_
                      _slot72647_
                      _field72648_))
                   (let ((__tmp72857 (symbol->keyword _slot72647_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72645_
                      __tmp72857
                      _field72648_)))
                 _slots72641_
                 (let ((__tmp72858 (length _slots72641_)))
                   (declare (not safe))
                   (iota__1 __tmp72858 '1)))
                _slot-table72645_))
             (_flags72652_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields72654_ '#())
             (_properties72656_
              (let ((__tmp72861
                     (let ((__tmp72862
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots72641_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp72862)))
                    (__tmp72859
                     (let ((__tmp72860
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp72860 '()))))
                (declare (not safe))
                (cons __tmp72861 __tmp72859))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'gc-hash-table
           _flags72652_
           __gc-table::t
           _fields72654_
           '()
           _slot-vector72643_
           _slot-table72650_
           _properties72656_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp72867 (list))
            (__tmp72863
             (let ((__tmp72866
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72864
                    (let ((__tmp72865
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72865 '()))))
               (declare (not safe))
               (cons __tmp72866 __tmp72864))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp72867
         '(table lock)
         __tmp72863
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args72638_
        (apply make-instance locked-hash-table::t _$args72638_)))
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
      (let ((__tmp72872 (list))
            (__tmp72868
             (let ((__tmp72871
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72869
                    (let ((__tmp72870
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72870 '()))))
               (declare (not safe))
               (cons __tmp72871 __tmp72869))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp72872
         '(table key-check)
         __tmp72868
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args72635_
        (apply make-instance checked-hash-table::t _$args72635_)))
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
      (let ((__tmp72875 (list hash-table::t))
            (__tmp72873
             (let ((__tmp72874
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72874 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp72875
         '()
         __tmp72873
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args72632_
        (apply make-instance eq-hash-table::t _$args72632_)))
    (define eqv-hash-table::t
      (let ((__tmp72878 (list hash-table::t))
            (__tmp72876
             (let ((__tmp72877
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72877 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp72878
         '()
         __tmp72876
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args72629_
        (apply make-instance eqv-hash-table::t _$args72629_)))
    (define symbol-hash-table::t
      (let ((__tmp72881 (list hash-table::t))
            (__tmp72879
             (let ((__tmp72880
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72880 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp72881
         '()
         __tmp72879
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args72626_
        (apply make-instance symbol-hash-table::t _$args72626_)))
    (define string-hash-table::t
      (let ((__tmp72884 (list hash-table::t))
            (__tmp72882
             (let ((__tmp72883
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72883 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp72884
         '()
         __tmp72882
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args72623_
        (apply make-instance string-hash-table::t _$args72623_)))
    (define immediate-hash-table::t
      (let ((__tmp72887 (list hash-table::t))
            (__tmp72885
             (let ((__tmp72886
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72886 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table
         'hash-table
         __tmp72887
         '()
         __tmp72885
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _$args72620_
        (apply make-instance immediate-hash-table::t _$args72620_)))
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
      (lambda (_obj72618_)
        (if (let () (declare (not safe)) (##structure? _obj72618_))
            (let ((__tmp72888
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj72618_))))
              (declare (not safe))
              (eq? __tmp72888 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj72613_)
        (let ((_$e72615_
               (if (let () (declare (not safe)) (##structure? _obj72613_))
                   (let ((__tmp72889
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj72613_))))
                     (declare (not safe))
                     (eq? __tmp72889 HashTable::t))
                   '#f)))
          (if _$e72615_
              _$e72615_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj72613_))))))
    (define HashTable-ref
      (lambda (_h72607_ _key72608_ _default72609_)
        (let ((_h72611_
               (if (and (let () (declare (not safe)) (##structure? _h72607_))
                        (let ((__tmp72890
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72607_))))
                          (declare (not safe))
                          (eq? __tmp72890 HashTable::t)))
                   _h72607_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72607_)))))
          (declare (not safe))
          (&HashTable-ref _h72611_ _key72608_ _default72609_))))
    (define &HashTable-ref
      (lambda (_h72602_ _key72603_ _default72604_)
        (declare (not safe))
        ((##unchecked-structure-ref _h72602_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h72602_ '1 interface-instance::t '#f)
         _key72603_
         _default72604_)))
    (define HashTable-set!
      (lambda (_h72596_ _key72597_ _value72598_)
        (let ((_h72600_
               (if (and (let () (declare (not safe)) (##structure? _h72596_))
                        (let ((__tmp72891
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72596_))))
                          (declare (not safe))
                          (eq? __tmp72891 HashTable::t)))
                   _h72596_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72596_)))))
          (declare (not safe))
          (&HashTable-set! _h72600_ _key72597_ _value72598_))))
    (define &HashTable-set!
      (lambda (_h72591_ _key72592_ _value72593_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72591_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h72591_ '1 interface-instance::t '#f)
           _key72592_
           _value72593_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h72584_ _key72585_ _update72586_ _default72587_)
        (let ((_h72589_
               (if (and (let () (declare (not safe)) (##structure? _h72584_))
                        (let ((__tmp72892
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72584_))))
                          (declare (not safe))
                          (eq? __tmp72892 HashTable::t)))
                   _h72584_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72584_)))))
          (declare (not safe))
          (&HashTable-update!
           _h72589_
           _key72585_
           _update72586_
           _default72587_))))
    (define &HashTable-update!
      (lambda (_h72578_ _key72579_ _update72580_ _default72581_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72578_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h72578_ '1 interface-instance::t '#f)
           _key72579_
           _update72580_
           _default72581_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h72573_ _key72574_)
        (let ((_h72576_
               (if (and (let () (declare (not safe)) (##structure? _h72573_))
                        (let ((__tmp72893
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72573_))))
                          (declare (not safe))
                          (eq? __tmp72893 HashTable::t)))
                   _h72573_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72573_)))))
          (declare (not safe))
          (&HashTable-delete! _h72576_ _key72574_))))
    (define &HashTable-delete!
      (lambda (_h72569_ _key72570_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72569_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h72569_ '1 interface-instance::t '#f)
           _key72570_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h72564_ _proc72565_)
        (let ((_h72567_
               (if (and (let () (declare (not safe)) (##structure? _h72564_))
                        (let ((__tmp72894
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72564_))))
                          (declare (not safe))
                          (eq? __tmp72894 HashTable::t)))
                   _h72564_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72564_)))))
          (declare (not safe))
          (&HashTable-for-each _h72567_ _proc72565_))))
    (define &HashTable-for-each
      (lambda (_h72560_ _proc72561_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72560_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h72560_ '1 interface-instance::t '#f)
           _proc72561_)
          '#!void)))
    (define HashTable-length
      (lambda (_h72556_)
        (let ((_h72558_
               (if (and (let () (declare (not safe)) (##structure? _h72556_))
                        (let ((__tmp72895
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72556_))))
                          (declare (not safe))
                          (eq? __tmp72895 HashTable::t)))
                   _h72556_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72556_)))))
          (declare (not safe))
          (&HashTable-length _h72558_))))
    (define &HashTable-length
      (lambda (_h72553_)
        (declare (not safe))
        ((##unchecked-structure-ref _h72553_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h72553_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h72549_)
        (let ((_h72551_
               (if (and (let () (declare (not safe)) (##structure? _h72549_))
                        (let ((__tmp72896
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72549_))))
                          (declare (not safe))
                          (eq? __tmp72896 HashTable::t)))
                   _h72549_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72549_)))))
          (declare (not safe))
          (&HashTable-copy _h72551_))))
    (define &HashTable-copy
      (lambda (_h72546_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h72546_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h72546_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h72542_)
        (let ((_h72544_
               (if (and (let () (declare (not safe)) (##structure? _h72542_))
                        (let ((__tmp72897
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72542_))))
                          (declare (not safe))
                          (eq? __tmp72897 HashTable::t)))
                   _h72542_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72542_)))))
          (declare (not safe))
          (&HashTable-clear! _h72544_))))
    (define &HashTable-clear!
      (lambda (_h72539_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72539_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h72539_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl72536_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72536_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72536_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl72533_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72533_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72533_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl72530_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72530_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72530_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl72527_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72527_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72527_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref69546_
      (lambda (_self72514_ _key72516_ _default72517_)
        (let ((_h72519_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72514_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72521_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72514_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l72521_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h72519_ _key72516_ _default72517_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l72521_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref69546_
       '#f))
    (define _locked-hash-table::set!69548_
      (lambda (_self72378_ _key72380_ _value72381_)
        (let ((_h72383_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72378_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72385_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72378_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l72385_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h72383_ _key72380_ _value72381_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l72385_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!69548_
       '#f))
    (define _locked-hash-table::update!69550_
      (lambda (_self72241_ _key72243_ _update72244_ _default72245_)
        (let ((_h72247_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72241_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72249_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72241_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l72249_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h72247_
                _key72243_
                _update72244_
                _default72245_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l72249_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!69550_
       '#f))
    (define _locked-hash-table::delete!69552_
      (lambda (_self72106_ _key72108_)
        (let ((_h72110_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72106_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72112_
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
               (&HashTableLock-begin-write! _l72112_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h72110_ _key72108_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l72112_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!69552_
       '#f))
    (define _locked-hash-table::for-each69554_
      (lambda (_self71971_ _proc71973_)
        (let ((_h71975_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71971_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71977_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71971_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71977_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h71975_ _proc71973_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71977_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each69554_
       '#f))
    (define _locked-hash-table::length69556_
      (lambda (_self71837_)
        (let ((_h71840_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71837_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71842_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71837_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71842_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h71840_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71842_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length69556_
       '#f))
    (define _locked-hash-table::copy69558_
      (lambda (_self71703_)
        (let ((_h71706_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71703_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71708_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71703_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71708_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h71706_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71708_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy69558_
       '#f))
    (define _locked-hash-table::clear!69560_
      (lambda (_self71569_)
        (let ((_h71572_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71569_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71574_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71569_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71574_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h71572_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71574_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!69560_
       '#f))
    (let ((__tmp72898 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72898 'begin-read! mutex-lock!))
    (let ((__tmp72899 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72899 'end-read! mutex-unlock!))
    (let ((__tmp72900 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72900 'begin-write! mutex-lock!))
    (let ((__tmp72901 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72901 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref69838_
      (lambda (_self71433_ _key71434_ _default71435_)
        (let ((_h71437_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71433_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71439_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71433_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7144171443_)
             (if (_g7144171443_ _key71434_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71434_))))
           _key?71439_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h71437_ _key71434_ _default71435_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref69838_
       '#f))
    (define _checked-hash-table::set!69840_
      (lambda (_self71297_ _key71298_ _value71299_)
        (let ((_h71301_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71297_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71303_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71297_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7130571307_)
             (if (_g7130571307_ _key71298_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71298_))))
           _key?71303_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h71301_ _key71298_ _value71299_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!69840_
       '#f))
    (define _checked-hash-table::update!69842_
      (lambda (_self71162_ _key71163_ _update71164_ _default71165_)
        (let ((_h71167_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71162_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71169_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71162_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?71172_)
             (if (_key?71172_ _key71163_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71163_)))
             (if (let () (declare (not safe)) (procedure? _update71164_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update71164_))))
           _key?71169_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h71167_
             _key71163_
             _update71164_
             _default71165_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!69842_
       '#f))
    (define _checked-hash-table::delete!69844_
      (lambda (_self71027_ _key71028_)
        (let ((_h71030_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71027_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71032_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71027_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7103471036_)
             (if (_g7103471036_ _key71028_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71028_))))
           _key?71032_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h71030_ _key71028_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!69844_
       '#f))
    (define _checked-hash-table::for-each69846_
      (lambda (_self70895_ _proc70896_)
        (let ((_h70898_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70895_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70900_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70895_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g72902_)
             (if (let () (declare (not safe)) (procedure? _proc70896_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc70896_))))
           _key?70900_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h70898_ _proc70896_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each69846_
       '#f))
    (define _checked-hash-table::length69848_
      (lambda (_self70765_)
        (let ((_h70767_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70765_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70769_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70765_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h70767_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length69848_
       '#f))
    (define _checked-hash-table::copy69850_
      (lambda (_self70635_)
        (let ((_h70637_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70635_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70639_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70635_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h70637_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy69850_
       '#f))
    (define _checked-hash-table::clear!69852_
      (lambda (_self70505_)
        (let ((_h70507_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70505_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70509_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70505_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h70507_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!69852_
       '#f))
    (define make-generic-hash-table
      (lambda (_table70375_
               _count70376_
               _free70377_
               _hash70378_
               _test70379_
               _seed70380_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table70375_
           _count70376_
           _free70377_
           _hash70378_
           _test70379_
           _seed70380_))))
    (define make-hash-table__%
      (lambda (_g72903_
               _size-hint7022070230_
               _seed7022170232_
               _test7022270234_
               _hash7022370236_
               _lock7022470238_
               _check7022570240_
               _weak-keys7022670242_
               _weak-values7022770244_)
        (let* ((_size-hint70247_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint7022070230_ absent-value))
                    '#f
                    _size-hint7022070230_))
               (_seed70249_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed7022170232_ absent-value))
                    '#f
                    _seed7022170232_))
               (_test70251_
                (if (let ()
                      (declare (not safe))
                      (eq? _test7022270234_ absent-value))
                    equal?
                    _test7022270234_))
               (_hash70253_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash7022370236_ absent-value))
                    '#f
                    _hash7022370236_))
               (_lock70255_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock7022470238_ absent-value))
                    '#f
                    _lock7022470238_))
               (_check70257_
                (if (let ()
                      (declare (not safe))
                      (eq? _check7022570240_ absent-value))
                    '#f
                    _check7022570240_))
               (_weak-keys70259_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys7022670242_ absent-value))
                    '#f
                    _weak-keys7022670242_))
               (_weak-values70261_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values7022770244_ absent-value))
                    '#f
                    _weak-values7022770244_)))
          (letrec ((_table-seed70263_
                    (lambda ()
                      (if (let () (declare (not safe)) (fixnum? _seed70249_))
                          _seed70249_
                          (random-integer (macro-max-fixnum32)))))
                   (_wrap-lock70264_
                    (lambda (_ht70358_)
                      (if _lock70255_
                          (let ((__tmp72904
                                 (let ((__tmp72905
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock70255_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht70358_
                                    __tmp72905))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp72904))
                          _ht70358_)))
                   (_wrap-checked70265_
                    (lambda (_ht70355_ _implicit70356_)
                      (if _check70257_
                          (let ((__tmp72906
                                 (let ((__tmp72907
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check70257_))
                                            _check70257_
                                            _implicit70356_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht70355_
                                    __tmp72907))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp72906))
                          _ht70355_)))
                   (_make70266_
                    (lambda (_kons70343_ _key?70344_ _hash70345_ _test70346_)
                      (let* ((_size70348_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint70247_)))
                             (_table70350_
                              (make-vector _size70348_ (macro-unused-obj)))
                             (_ht70352_
                              (let ((__tmp72908
                                     (_kons70343_
                                      _table70350_
                                      '0
                                      (fxquotient _size70348_ '2)
                                      _hash70345_
                                      _test70346_
                                      (let ()
                                        (declare (not safe))
                                        (_table-seed70263_)))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72908))))
                        (let ((__tmp72909
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock70264_ _ht70352_))))
                          (declare (not safe))
                          (_wrap-checked70265_ __tmp72909 _key?70344_)))))
                   (_make-gc-hash-table70267_
                    (lambda ()
                      (let* ((_ht70341_
                              (let ((__tmp72910
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__%
                                        _size-hint70247_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72910)))
                             (__tmp72911
                              (let ()
                                (declare (not safe))
                                (_wrap-lock70264_ _ht70341_))))
                        (declare (not safe))
                        (_wrap-checked70265_ __tmp72911 true))))
                   (_make-gambit-table70268_
                    (lambda ()
                      (let* ((_size70325_
                              (let ((_$e70322_ _size-hint70247_))
                                (if _$e70322_ _$e70322_ (macro-absent-obj))))
                             (_test70330_
                              (let ((_$e70327_ _test70251_))
                                (if _$e70327_ _$e70327_ equal?)))
                             (_hash70335_
                              (let ((_$e70332_ _hash70253_))
                                (if _$e70332_
                                    _$e70332_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test70330_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test70330_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht70337_
                              (let ((__tmp72912
                                     (make-table
                                      'size:
                                      _size70325_
                                      'test:
                                      _test70330_
                                      'hash:
                                      _hash70335_
                                      'weak-keys:
                                      _weak-keys70259_
                                      'weak-values:
                                      _weak-values70261_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72912))))
                        (let ((__tmp72913
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock70264_ _ht70337_))))
                          (declare (not safe))
                          (_wrap-checked70265_ __tmp72913 true))))))
            (if (or _weak-keys70259_ _weak-values70261_)
                (let () (declare (not safe)) (_make-gambit-table70268_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test70251_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test70251_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash70253_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash70253_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash70253_ eq-hash)))
                         (let () (declare (not safe)) (not _seed70249_)))
                    (let () (declare (not safe)) (_make-gc-hash-table70267_))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test70251_ eq?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test70251_ ##eq?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash70253_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash70253_ eq?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash70253_ eq-hash))))
                        (let ()
                          (declare (not safe))
                          (_make70266_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test70251_ eqv?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test70251_ ##eqv?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _hash70253_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash70253_ eqv?-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash70253_ eqv-hash))))
                            (let ()
                              (declare (not safe))
                              (_make70266_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test70251_ eq?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test70251_ ##eq?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash70253_ symbolic-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash70253_ ##symbol-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make70266_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (let ()
                                               (declare (not safe))
                                               (eq? _test70251_ eq?))
                                             (let ()
                                               (declare (not safe))
                                               (eq? _test70251_ ##eq?)))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash70253_ immediate-hash)))
                                    (let ()
                                      (declare (not safe))
                                      (_make70266_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (let ()
                                                   (declare (not safe))
                                                   (eq? _test70251_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test70251_ ##equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test70251_ string=?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test70251_
                                                        ##string=?)))
                                             (or (let ()
                                                   (declare (not safe))
                                                   (eq? _hash70253_
                                                        string-hash))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _hash70253_
                                                        ##string=?-hash))))
                                        (let ()
                                          (declare (not safe))
                                          (_make70266_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (let ()
                                                   (declare (not safe))
                                                   (eq? _test70251_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _hash70253_)))
                                            (let ()
                                              (declare (not safe))
                                              (_make70266_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp72915
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _test70251_))))
                                                  (declare (not safe))
                                                  (not __tmp72915))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _test70251_))
                                                (if (let ((__tmp72914
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _hash70253_))))
                                                      (declare (not safe))
                                                      (not __tmp72914))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _hash70253_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make70266_
                                                       make-generic-hash-table
                                                       true
                                                       _hash70253_
                                                       _test70251_))))))))))))))))
    (define make-hash-table__@
      (lambda (_keys7021970364_ . _args70366_)
        (apply make-hash-table__%
               _keys7021970364_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7021970364_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7021970364_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7021970364_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7021970364_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7021970364_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7021970364_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7021970364_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7021970364_
                  'weak-values:
                  absent-value))
               _args70366_)))
    (define make-hash-table
      (lambda _args7022870372_
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
               _args7022870372_)))
    (define make-hash-table-eq
      (lambda _args70216_ (apply make-hash-table 'test: eq? _args70216_)))
    (define make-hash-table-eqv
      (lambda _args70214_ (apply make-hash-table 'test: eqv? _args70214_)))
    (define make-hash-table-symbolic
      (lambda _args70212_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args70212_)))
    (define make-hash-table-string
      (lambda _args70210_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args70210_)))
    (define make-hash-table-immediate
      (lambda _args70208_
        (apply make-hash-table 'test: eq? 'hash: immediate-hash _args70208_)))
    (define list->hash-table
      (lambda (_lst70205_ . _args70206_)
        (let ((__tmp72916
               (apply make-hash-table 'size: (length _lst70205_) _args70206_)))
          (declare (not safe))
          (list->hash-table! _lst70205_ __tmp72916))))
    (define list->hash-table-eq
      (lambda (_lst70202_ . _args70203_)
        (let ((__tmp72917
               (apply make-hash-table-eq
                      'size:
                      (length _lst70202_)
                      _args70203_)))
          (declare (not safe))
          (list->hash-table! _lst70202_ __tmp72917))))
    (define list->hash-table-eqv
      (lambda (_lst70199_ . _args70200_)
        (let ((__tmp72918
               (apply make-hash-table-eqv
                      'size:
                      (length _lst70199_)
                      _args70200_)))
          (declare (not safe))
          (list->hash-table! _lst70199_ __tmp72918))))
    (define list->hash-table-symbolic
      (lambda (_lst70196_ . _args70197_)
        (let ((__tmp72919
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst70196_)
                      _args70197_)))
          (declare (not safe))
          (list->hash-table! _lst70196_ __tmp72919))))
    (define list->hash-table-string
      (lambda (_lst70193_ . _args70194_)
        (let ((__tmp72920
               (apply make-hash-table-string
                      'size:
                      (length _lst70193_)
                      _args70194_)))
          (declare (not safe))
          (list->hash-table! _lst70193_ __tmp72920))))
    (define list->hash-table!
      (lambda (_lst70160_ _h70161_)
        (for-each
         (lambda (_el70163_)
           (let* ((_el7016470171_ _el70163_)
                  (_E7016670175_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el7016470171_))))
                  (_K7016770181_
                   (lambda (_v70178_ _k70179_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h70161_ _k70179_ _v70178_)))))
             (if (let () (declare (not safe)) (##pair? _el7016470171_))
                 (let ((_hd7016870184_
                        (let () (declare (not safe)) (##car _el7016470171_)))
                       (_tl7016970186_
                        (let () (declare (not safe)) (##cdr _el7016470171_))))
                   (let* ((_k70189_ _hd7016870184_) (_v70191_ _tl7016970186_))
                     (declare (not safe))
                     (_K7016770181_ _v70191_ _k70189_)))
                 (let () (declare (not safe)) (_E7016670175_)))))
         _lst70160_)
        _h70161_))
    (define plist->hash-table
      (lambda (_lst70157_ . _args70158_)
        (let ((__tmp72921
               (apply make-hash-table 'size: (length _lst70157_) _args70158_)))
          (declare (not safe))
          (plist->hash-table! _lst70157_ __tmp72921))))
    (define plist->hash-table-eq
      (lambda (_lst70154_ . _args70155_)
        (let ((__tmp72922
               (apply make-hash-table-eq
                      'size:
                      (length _lst70154_)
                      _args70155_)))
          (declare (not safe))
          (plist->hash-table! _lst70154_ __tmp72922))))
    (define plist->hash-table-eqv
      (lambda (_lst70151_ . _args70152_)
        (let ((__tmp72923
               (apply make-hash-table-eqv
                      'size:
                      (length _lst70151_)
                      _args70152_)))
          (declare (not safe))
          (plist->hash-table! _lst70151_ __tmp72923))))
    (define plist->hash-table-symbolic
      (lambda (_lst70148_ . _args70149_)
        (let ((__tmp72924
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst70148_)
                      _args70149_)))
          (declare (not safe))
          (plist->hash-table! _lst70148_ __tmp72924))))
    (define plist->hash-table-string
      (lambda (_lst70145_ . _args70146_)
        (let ((__tmp72925
               (apply make-hash-table-string
                      'size:
                      (length _lst70145_)
                      _args70146_)))
          (declare (not safe))
          (plist->hash-table! _lst70145_ __tmp72925))))
    (define plist->hash-table!
      (lambda (_lst70085_ _h70086_)
        (let _loop70088_ ((_rest70090_ _lst70085_))
          (let* ((_rest7009170103_ _rest70090_)
                 (_else7009470111_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst70085_)))))
            (let ((_K7009770126_
                   (lambda (_rest70122_ _val70123_ _key70124_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h70086_ _key70124_ _val70123_))
                     (let () (declare (not safe)) (_loop70088_ _rest70122_))))
                  (_K7009670116_ (lambda () _h70086_)))
              (let ((_try-match7009370119_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest7009170103_))
                           (let () (declare (not safe)) (_K7009670116_))
                           (let () (declare (not safe)) (_else7009470111_))))))
                (if (let () (declare (not safe)) (##pair? _rest7009170103_))
                    (let ((_tl7009970131_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest7009170103_)))
                          (_hd7009870129_
                           (let ()
                             (declare (not safe))
                             (##car _rest7009170103_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl7009970131_))
                          (let ((_tl7010170138_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl7009970131_)))
                                (_hd7010070136_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl7009970131_))))
                            (let ((_key70134_ _hd7009870129_)
                                  (_val70141_ _hd7010070136_)
                                  (_rest70143_ _tl7010170138_))
                              (let ()
                                (declare (not safe))
                                (_K7009770126_
                                 _rest70143_
                                 _val70141_
                                 _key70134_))))
                          (let () (declare (not safe)) (_else7009470111_))))
                    (let ()
                      (declare (not safe))
                      (_try-match7009370119_)))))))))
    (define hash-length
      (lambda (_h70081_)
        (let ((_h70083_
               (if (and (let () (declare (not safe)) (##structure? _h70081_))
                        (let ((__tmp72926
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70081_))))
                          (declare (not safe))
                          (eq? __tmp72926 HashTable::t)))
                   _h70081_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70081_)))))
          (declare (not safe))
          (&HashTable-length _h70083_))))
    (define &hash-length
      (lambda (_h70079_)
        (let () (declare (not safe)) (&HashTable-length _h70079_))))
    (define hash-ref__%
      (lambda (_h70061_ _key70062_ _default70063_)
        (let ((_h70065_
               (if (and (let () (declare (not safe)) (##structure? _h70061_))
                        (let ((__tmp72927
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70061_))))
                          (declare (not safe))
                          (eq? __tmp72927 HashTable::t)))
                   _h70061_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70061_)))))
          (declare (not safe))
          (&hash-ref__% _h70065_ _key70062_ _default70063_))))
    (define hash-ref__0
      (lambda (_h70070_ _key70071_)
        (let ((_default70073_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h70070_ _key70071_ _default70073_))))
    (define hash-ref
      (lambda _g72929_
        (let ((_g72928_ (let () (declare (not safe)) (##length _g72929_))))
          (cond ((let () (declare (not safe)) (##fx= _g72928_ 2))
                 (apply (lambda (_h70070_ _key70071_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h70070_ _key70071_)))
                        _g72929_))
                ((let () (declare (not safe)) (##fx= _g72928_ 3))
                 (apply (lambda (_h70075_ _key70076_ _default70077_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h70075_ _key70076_ _default70077_)))
                        _g72929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g72929_))))))
    (define &hash-ref__%
      (lambda (_h70042_ _key70043_ _default70044_)
        (let ((_result70046_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h70042_ _key70043_ _default70044_))))
          (if (let ((__tmp72930 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result70046_ __tmp72930))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h70042_
                 'key:
                 _key70043_))
              _result70046_))))
    (define &hash-ref__0
      (lambda (_h70051_ _key70052_)
        (let ((_default70054_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h70051_ _key70052_ _default70054_))))
    (define &hash-ref
      (lambda _g72932_
        (let ((_g72931_ (let () (declare (not safe)) (##length _g72932_))))
          (cond ((let () (declare (not safe)) (##fx= _g72931_ 2))
                 (apply (lambda (_h70051_ _key70052_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h70051_ _key70052_)))
                        _g72932_))
                ((let () (declare (not safe)) (##fx= _g72931_ 3))
                 (apply (lambda (_h70056_ _key70057_ _default70058_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h70056_ _key70057_ _default70058_)))
                        _g72932_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g72932_))))))
    (define hash-get
      (lambda (_h70036_ _key70037_)
        (let ((_h70039_
               (if (and (let () (declare (not safe)) (##structure? _h70036_))
                        (let ((__tmp72933
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70036_))))
                          (declare (not safe))
                          (eq? __tmp72933 HashTable::t)))
                   _h70036_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70036_)))))
          (declare (not safe))
          (&hash-get _h70039_ _key70037_))))
    (define &hash-get
      (lambda (_h70033_ _key70034_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h70033_ _key70034_ '#f))))
    (define hash-put!
      (lambda (_h70027_ _key70028_ _value70029_)
        (let ((_h70031_
               (if (and (let () (declare (not safe)) (##structure? _h70027_))
                        (let ((__tmp72934
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70027_))))
                          (declare (not safe))
                          (eq? __tmp72934 HashTable::t)))
                   _h70027_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70027_)))))
          (declare (not safe))
          (&HashTable-set! _h70031_ _key70028_ _value70029_))))
    (define &hash-put!
      (lambda (_h70023_ _key70024_ _value70025_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h70023_ _key70024_ _value70025_))))
    (define hash-update!__%
      (lambda (_h70002_ _key70003_ _update70004_ _default70005_)
        (let ((_h70007_
               (if (and (let () (declare (not safe)) (##structure? _h70002_))
                        (let ((__tmp72935
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70002_))))
                          (declare (not safe))
                          (eq? __tmp72935 HashTable::t)))
                   _h70002_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70002_)))))
          (declare (not safe))
          (&HashTable-update!
           _h70007_
           _key70003_
           _update70004_
           _default70005_))))
    (define hash-update!__0
      (lambda (_h70012_ _key70013_ _update70014_)
        (let ((_default70016_ '#!void))
          (declare (not safe))
          (hash-update!__% _h70012_ _key70013_ _update70014_ _default70016_))))
    (define hash-update!
      (lambda _g72937_
        (let ((_g72936_ (let () (declare (not safe)) (##length _g72937_))))
          (cond ((let () (declare (not safe)) (##fx= _g72936_ 3))
                 (apply (lambda (_h70012_ _key70013_ _update70014_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h70012_
                             _key70013_
                             _update70014_)))
                        _g72937_))
                ((let () (declare (not safe)) (##fx= _g72936_ 4))
                 (apply (lambda (_h70018_
                                 _key70019_
                                 _update70020_
                                 _default70021_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h70018_
                             _key70019_
                             _update70020_
                             _default70021_)))
                        _g72937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g72937_))))))
    (define &hash-update!__%
      (lambda (_h69982_ _key69983_ _update69984_ _default69985_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h69982_
           _key69983_
           _update69984_
           _default69985_))))
    (define &hash-update!__0
      (lambda (_h69990_ _key69991_ _update69992_)
        (let ((_default69994_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h69990_
           _key69991_
           _update69992_
           _default69994_))))
    (define &hash-update!
      (lambda _g72939_
        (let ((_g72938_ (let () (declare (not safe)) (##length _g72939_))))
          (cond ((let () (declare (not safe)) (##fx= _g72938_ 3))
                 (apply (lambda (_h69990_ _key69991_ _update69992_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h69990_
                             _key69991_
                             _update69992_)))
                        _g72939_))
                ((let () (declare (not safe)) (##fx= _g72938_ 4))
                 (apply (lambda (_h69996_
                                 _key69997_
                                 _update69998_
                                 _default69999_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h69996_
                             _key69997_
                             _update69998_
                             _default69999_)))
                        _g72939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g72939_))))))
    (define hash-remove!
      (lambda (_h69976_ _key69977_)
        (let ((_h69979_
               (if (and (let () (declare (not safe)) (##structure? _h69976_))
                        (let ((__tmp72940
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69976_))))
                          (declare (not safe))
                          (eq? __tmp72940 HashTable::t)))
                   _h69976_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69976_)))))
          (declare (not safe))
          (&HashTable-delete! _h69979_ _key69977_))))
    (define &hash-remove!
      (lambda (_h69973_ _key69974_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h69973_ _key69974_))))
    (define hash-key?
      (lambda (_h69968_ _k69969_)
        (let ((_h69971_
               (if (and (let () (declare (not safe)) (##structure? _h69968_))
                        (let ((__tmp72941
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69968_))))
                          (declare (not safe))
                          (eq? __tmp72941 HashTable::t)))
                   _h69968_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69968_)))))
          (declare (not safe))
          (&hash-key? _h69971_ _k69969_))))
    (define &hash-key?
      (lambda (_h69965_ _k69966_)
        (let ((__tmp72942
               (let ((__tmp72943
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h69965_ _k69966_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp72943 absent-value))))
          (declare (not safe))
          (not __tmp72942))))
    (define hash->list
      (lambda (_h69961_)
        (let ((_h69963_
               (if (and (let () (declare (not safe)) (##structure? _h69961_))
                        (let ((__tmp72944
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69961_))))
                          (declare (not safe))
                          (eq? __tmp72944 HashTable::t)))
                   _h69961_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69961_)))))
          (declare (not safe))
          (&hash->list _h69963_))))
    (define &hash->list
      (lambda (_h69954_)
        (let ((_lst69956_ '()))
          (let ((__tmp72945
                 (lambda (_k69958_ _v69959_)
                   (set! _lst69956_
                         (let ((__tmp72946
                                (let ()
                                  (declare (not safe))
                                  (cons _k69958_ _v69959_))))
                           (declare (not safe))
                           (cons __tmp72946 _lst69956_))))))
            (declare (not safe))
            (&HashTable-for-each _h69954_ __tmp72945))
          _lst69956_)))
    (define hash->plist
      (lambda (_h69950_)
        (let ((_h69952_
               (if (and (let () (declare (not safe)) (##structure? _h69950_))
                        (let ((__tmp72947
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69950_))))
                          (declare (not safe))
                          (eq? __tmp72947 HashTable::t)))
                   _h69950_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69950_)))))
          (declare (not safe))
          (&hash->plist _h69952_))))
    (define &hash->plist
      (lambda (_h69943_)
        (let ((_lst69945_ '()))
          (let ((__tmp72948
                 (lambda (_k69947_ _v69948_)
                   (set! _lst69945_
                         (let ((__tmp72949
                                (let ()
                                  (declare (not safe))
                                  (cons _v69948_ _lst69945_))))
                           (declare (not safe))
                           (cons _k69947_ __tmp72949))))))
            (declare (not safe))
            (&HashTable-for-each _h69943_ __tmp72948))
          _lst69945_)))
    (define hash-for-each
      (lambda (_proc69940_ _h69941_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h69941_ _proc69940_))))
    (define hash-map
      (lambda (_proc69932_ _h69933_)
        (let ((_result69935_ '()))
          (let ((__tmp72950
                 (lambda (_k69937_ _v69938_)
                   (set! _result69935_
                         (let ((__tmp72951 (_proc69932_ _k69937_ _v69938_)))
                           (declare (not safe))
                           (cons __tmp72951 _result69935_))))))
            (declare (not safe))
            (HashTable-for-each _h69933_ __tmp72950))
          _result69935_)))
    (define hash-fold
      (lambda (_proc69923_ _iv69924_ _h69925_)
        (let ((_result69927_ _iv69924_))
          (let ((__tmp72952
                 (lambda (_k69929_ _v69930_)
                   (set! _result69927_
                         (_proc69923_ _k69929_ _v69930_ _result69927_)))))
            (declare (not safe))
            (HashTable-for-each _h69925_ __tmp72952))
          _result69927_)))
    (define hash-find__%
      (lambda (_proc69899_ _h69900_ _default-value69901_)
        (call-with-current-continuation
         (lambda (_return69903_)
           (let ((__tmp72953
                  (lambda (_k69905_ _v69906_)
                    (let ((_$e69908_ (_proc69899_ _k69905_ _v69906_)))
                      (if _$e69908_ (_return69903_ _$e69908_) '#!void)))))
             (declare (not safe))
             (HashTable-for-each _h69900_ __tmp72953))
           _default-value69901_))))
    (define hash-find__0
      (lambda (_proc69914_ _h69915_)
        (let ((_default-value69917_ '#f))
          (declare (not safe))
          (hash-find__% _proc69914_ _h69915_ _default-value69917_))))
    (define hash-find
      (lambda _g72955_
        (let ((_g72954_ (let () (declare (not safe)) (##length _g72955_))))
          (cond ((let () (declare (not safe)) (##fx= _g72954_ 2))
                 (apply (lambda (_proc69914_ _h69915_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc69914_ _h69915_)))
                        _g72955_))
                ((let () (declare (not safe)) (##fx= _g72954_ 3))
                 (apply (lambda (_proc69919_ _h69920_ _default-value69921_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc69919_
                             _h69920_
                             _default-value69921_)))
                        _g72955_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g72955_))))))
    (define hash-keys
      (lambda (_h69894_)
        (let ((_h69896_
               (if (and (let () (declare (not safe)) (##structure? _h69894_))
                        (let ((__tmp72956
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69894_))))
                          (declare (not safe))
                          (eq? __tmp72956 HashTable::t)))
                   _h69894_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69894_)))))
          (declare (not safe))
          (&hash-keys _h69896_))))
    (define &hash-keys
      (lambda (_h69887_)
        (let ((_result69889_ '()))
          (let ((__tmp72957
                 (lambda (_k69891_ _v69892_)
                   (set! _result69889_
                         (let ()
                           (declare (not safe))
                           (cons _k69891_ _result69889_))))))
            (declare (not safe))
            (&HashTable-for-each _h69887_ __tmp72957))
          _result69889_)))
    (define hash-values
      (lambda (_h69883_)
        (let ((_h69885_
               (if (and (let () (declare (not safe)) (##structure? _h69883_))
                        (let ((__tmp72958
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69883_))))
                          (declare (not safe))
                          (eq? __tmp72958 HashTable::t)))
                   _h69883_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69883_)))))
          (declare (not safe))
          (&hash-values _h69885_))))
    (define &hash-values
      (lambda (_h69876_)
        (let ((_result69878_ '()))
          (let ((__tmp72959
                 (lambda (_k69880_ _v69881_)
                   (set! _result69878_
                         (let ()
                           (declare (not safe))
                           (cons _v69881_ _result69878_))))))
            (declare (not safe))
            (&HashTable-for-each _h69876_ __tmp72959))
          _result69878_)))
    (define hash-copy
      (lambda (_h69872_)
        (let ((_h69874_
               (if (and (let () (declare (not safe)) (##structure? _h69872_))
                        (let ((__tmp72960
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69872_))))
                          (declare (not safe))
                          (eq? __tmp72960 HashTable::t)))
                   _h69872_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69872_)))))
          (declare (not safe))
          (&HashTable-copy _h69874_))))
    (define &hash-copy
      (lambda (_h69870_)
        (let () (declare (not safe)) (&HashTable-copy _h69870_))))
    (define hash-merge
      (lambda (_h69865_ . _rest69866_)
        (let ((_copy69868_ (let () (declare (not safe)) (hash-copy _h69865_))))
          (apply hash-merge! _copy69868_ _rest69866_)
          _copy69868_)))
    (define hash-merge!
      (lambda (_h69855_ . _rest69856_)
        (let ((_h69858_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h69855_))))
          (for-each
           (lambda (_hr69860_)
             (let ((__tmp72961
                    (lambda (_k69862_ _v69863_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h69858_ _k69862_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h69858_ _k69862_ _v69863_))))))
               (declare (not safe))
               (hash-for-each __tmp72961 _hr69860_)))
           _rest69856_)
          _h69858_)))))
