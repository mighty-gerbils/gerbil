(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1709159706)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp72844 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp72844
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args72827_
        (apply make-instance UnboundKeyError::t _$args72827_)))
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
      (lambda (_where72701_ _message72702_ . _irritants72703_)
        (raise (let ((__obj72841
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj72841
                  _message72702_
                  'where:
                  _where72701_
                  'irritants:
                  _irritants72703_)
                 __obj72841))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp72849 (list interface-instance::t))
            (__tmp72845
             (let ((__tmp72848
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72846
                    (let ((__tmp72847
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72847 '()))))
               (declare (not safe))
               (cons __tmp72848 __tmp72846))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp72849
         '(ref set! update! delete! for-each length copy clear)
         __tmp72845
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
      (let ((__tmp72854 (list interface-instance::t))
            (__tmp72850
             (let ((__tmp72853
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72851
                    (let ((__tmp72852
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72852 '()))))
               (declare (not safe))
               (cons __tmp72853 __tmp72851))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp72854
         '(begin-read! end-read! begin-write! end-write!)
         __tmp72850
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
      (lambda (_table72694_ _key72695_ _update72696_ _default72697_)
        (let ((_result72699_
               (table-ref _table72694_ _key72695_ _default72697_)))
          (table-set!
           _table72694_
           _key72695_
           (_update72696_ _default72697_)))))
    (define gambit-table-for-each
      (lambda (_table72691_ _proc72692_)
        (table-for-each _proc72692_ _table72691_)))
    (define gambit-table-clear!
      (lambda (_table72689_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table72689_ '0 '5 '#f '#f))))
    (let ((__tmp72855 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72855 'ref table-ref))
    (let ((__tmp72856 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72856 'set! table-set!))
    (let ((__tmp72857 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72857 'update! gambit-table-update!))
    (let ((__tmp72858 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72858 'delete! table-set!))
    (let ((__tmp72859 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72859 'for-each gambit-table-for-each))
    (let ((__tmp72860 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72860 'length table-length))
    (let ((__tmp72861 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72861 'copy table-copy))
    (let ((__tmp72862 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72862 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots72671_ '(table count free hash test seed))
             (_slot-vector72673_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots72671_))))
             (_slot-table72680_
              (let ((_slot-table72675_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot72677_ _field72678_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72675_
                      _slot72677_
                      _field72678_))
                   (let ((__tmp72863 (symbol->keyword _slot72677_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72675_
                      __tmp72863
                      _field72678_)))
                 _slots72671_
                 (let ((__tmp72864 (length _slots72671_)))
                   (declare (not safe))
                   (iota__1 __tmp72864 '1)))
                _slot-table72675_))
             (_flags72682_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields72684_ '#())
             (_properties72686_
              (let ((__tmp72867
                     (let ((__tmp72868
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots72671_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp72868)))
                    (__tmp72865
                     (let ((__tmp72866
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp72866 '()))))
                (declare (not safe))
                (cons __tmp72867 __tmp72865))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags72682_
           __table::t
           _fields72684_
           '()
           _slot-vector72673_
           _slot-table72680_
           _properties72686_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_slots72653_ '(gcht immediate))
             (_slot-vector72655_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots72653_))))
             (_slot-table72662_
              (let ((_slot-table72657_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot72659_ _field72660_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72657_
                      _slot72659_
                      _field72660_))
                   (let ((__tmp72869 (symbol->keyword _slot72659_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72657_
                      __tmp72869
                      _field72660_)))
                 _slots72653_
                 (let ((__tmp72870 (length _slots72653_)))
                   (declare (not safe))
                   (iota__1 __tmp72870 '1)))
                _slot-table72657_))
             (_flags72664_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields72666_ '#())
             (_properties72668_
              (let ((__tmp72873
                     (let ((__tmp72874
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots72653_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp72874)))
                    (__tmp72871
                     (let ((__tmp72872
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp72872 '()))))
                (declare (not safe))
                (cons __tmp72873 __tmp72871))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'gc-hash-table
           _flags72664_
           __gc-table::t
           _fields72666_
           '()
           _slot-vector72655_
           _slot-table72662_
           _properties72668_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp72879 (list))
            (__tmp72875
             (let ((__tmp72878
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72876
                    (let ((__tmp72877
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72877 '()))))
               (declare (not safe))
               (cons __tmp72878 __tmp72876))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp72879
         '(table lock)
         __tmp72875
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args72650_
        (apply make-instance locked-hash-table::t _$args72650_)))
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
      (let ((__tmp72884 (list))
            (__tmp72880
             (let ((__tmp72883
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72881
                    (let ((__tmp72882
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72882 '()))))
               (declare (not safe))
               (cons __tmp72883 __tmp72881))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp72884
         '(table key-check)
         __tmp72880
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args72647_
        (apply make-instance checked-hash-table::t _$args72647_)))
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
      (let ((__tmp72887 (list hash-table::t))
            (__tmp72885
             (let ((__tmp72886
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72886 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp72887
         '()
         __tmp72885
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args72644_
        (apply make-instance eq-hash-table::t _$args72644_)))
    (define eqv-hash-table::t
      (let ((__tmp72890 (list hash-table::t))
            (__tmp72888
             (let ((__tmp72889
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72889 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp72890
         '()
         __tmp72888
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args72641_
        (apply make-instance eqv-hash-table::t _$args72641_)))
    (define symbol-hash-table::t
      (let ((__tmp72893 (list hash-table::t))
            (__tmp72891
             (let ((__tmp72892
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72892 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp72893
         '()
         __tmp72891
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args72638_
        (apply make-instance symbol-hash-table::t _$args72638_)))
    (define string-hash-table::t
      (let ((__tmp72896 (list hash-table::t))
            (__tmp72894
             (let ((__tmp72895
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72895 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp72896
         '()
         __tmp72894
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args72635_
        (apply make-instance string-hash-table::t _$args72635_)))
    (define immediate-hash-table::t
      (let ((__tmp72899 (list hash-table::t))
            (__tmp72897
             (let ((__tmp72898
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72898 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table
         'hash-table
         __tmp72899
         '()
         __tmp72897
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _$args72632_
        (apply make-instance immediate-hash-table::t _$args72632_)))
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
      (lambda (_obj72630_)
        (if (let () (declare (not safe)) (##structure? _obj72630_))
            (let ((__tmp72900
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj72630_))))
              (declare (not safe))
              (eq? __tmp72900 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj72625_)
        (let ((_$e72627_
               (if (let () (declare (not safe)) (##structure? _obj72625_))
                   (let ((__tmp72901
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj72625_))))
                     (declare (not safe))
                     (eq? __tmp72901 HashTable::t))
                   '#f)))
          (if _$e72627_
              _$e72627_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj72625_))))))
    (define HashTable-ref
      (lambda (_h72619_ _key72620_ _default72621_)
        (let ((_h72623_
               (if (and (let () (declare (not safe)) (##structure? _h72619_))
                        (let ((__tmp72902
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72619_))))
                          (declare (not safe))
                          (eq? __tmp72902 HashTable::t)))
                   _h72619_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72619_)))))
          (declare (not safe))
          (&HashTable-ref _h72623_ _key72620_ _default72621_))))
    (define &HashTable-ref
      (lambda (_h72614_ _key72615_ _default72616_)
        (declare (not safe))
        ((##unchecked-structure-ref _h72614_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h72614_ '1 interface-instance::t '#f)
         _key72615_
         _default72616_)))
    (define HashTable-set!
      (lambda (_h72608_ _key72609_ _value72610_)
        (let ((_h72612_
               (if (and (let () (declare (not safe)) (##structure? _h72608_))
                        (let ((__tmp72903
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72608_))))
                          (declare (not safe))
                          (eq? __tmp72903 HashTable::t)))
                   _h72608_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72608_)))))
          (declare (not safe))
          (&HashTable-set! _h72612_ _key72609_ _value72610_))))
    (define &HashTable-set!
      (lambda (_h72603_ _key72604_ _value72605_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72603_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h72603_ '1 interface-instance::t '#f)
           _key72604_
           _value72605_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h72596_ _key72597_ _update72598_ _default72599_)
        (let ((_h72601_
               (if (and (let () (declare (not safe)) (##structure? _h72596_))
                        (let ((__tmp72904
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72596_))))
                          (declare (not safe))
                          (eq? __tmp72904 HashTable::t)))
                   _h72596_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72596_)))))
          (declare (not safe))
          (&HashTable-update!
           _h72601_
           _key72597_
           _update72598_
           _default72599_))))
    (define &HashTable-update!
      (lambda (_h72590_ _key72591_ _update72592_ _default72593_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72590_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h72590_ '1 interface-instance::t '#f)
           _key72591_
           _update72592_
           _default72593_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h72585_ _key72586_)
        (let ((_h72588_
               (if (and (let () (declare (not safe)) (##structure? _h72585_))
                        (let ((__tmp72905
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72585_))))
                          (declare (not safe))
                          (eq? __tmp72905 HashTable::t)))
                   _h72585_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72585_)))))
          (declare (not safe))
          (&HashTable-delete! _h72588_ _key72586_))))
    (define &HashTable-delete!
      (lambda (_h72581_ _key72582_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72581_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h72581_ '1 interface-instance::t '#f)
           _key72582_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h72576_ _proc72577_)
        (let ((_h72579_
               (if (and (let () (declare (not safe)) (##structure? _h72576_))
                        (let ((__tmp72906
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72576_))))
                          (declare (not safe))
                          (eq? __tmp72906 HashTable::t)))
                   _h72576_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72576_)))))
          (declare (not safe))
          (&HashTable-for-each _h72579_ _proc72577_))))
    (define &HashTable-for-each
      (lambda (_h72572_ _proc72573_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72572_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h72572_ '1 interface-instance::t '#f)
           _proc72573_)
          '#!void)))
    (define HashTable-length
      (lambda (_h72568_)
        (let ((_h72570_
               (if (and (let () (declare (not safe)) (##structure? _h72568_))
                        (let ((__tmp72907
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72568_))))
                          (declare (not safe))
                          (eq? __tmp72907 HashTable::t)))
                   _h72568_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72568_)))))
          (declare (not safe))
          (&HashTable-length _h72570_))))
    (define &HashTable-length
      (lambda (_h72565_)
        (declare (not safe))
        ((##unchecked-structure-ref _h72565_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h72565_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h72561_)
        (let ((_h72563_
               (if (and (let () (declare (not safe)) (##structure? _h72561_))
                        (let ((__tmp72908
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72561_))))
                          (declare (not safe))
                          (eq? __tmp72908 HashTable::t)))
                   _h72561_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72561_)))))
          (declare (not safe))
          (&HashTable-copy _h72563_))))
    (define &HashTable-copy
      (lambda (_h72558_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h72558_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h72558_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h72554_)
        (let ((_h72556_
               (if (and (let () (declare (not safe)) (##structure? _h72554_))
                        (let ((__tmp72909
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72554_))))
                          (declare (not safe))
                          (eq? __tmp72909 HashTable::t)))
                   _h72554_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72554_)))))
          (declare (not safe))
          (&HashTable-clear! _h72556_))))
    (define &HashTable-clear!
      (lambda (_h72551_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72551_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h72551_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl72548_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72548_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72548_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl72545_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72545_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72545_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl72542_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72542_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72542_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl72539_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72539_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72539_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref69558_
      (lambda (_self72526_ _key72528_ _default72529_)
        (let ((_h72531_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72526_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72533_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72526_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l72533_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h72531_ _key72528_ _default72529_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l72533_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref69558_
       '#f))
    (define _locked-hash-table::set!69560_
      (lambda (_self72390_ _key72392_ _value72393_)
        (let ((_h72395_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72390_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72397_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72390_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l72397_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h72395_ _key72392_ _value72393_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l72397_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!69560_
       '#f))
    (define _locked-hash-table::update!69562_
      (lambda (_self72253_ _key72255_ _update72256_ _default72257_)
        (let ((_h72259_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72253_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72261_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72253_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l72261_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h72259_
                _key72255_
                _update72256_
                _default72257_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l72261_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!69562_
       '#f))
    (define _locked-hash-table::delete!69564_
      (lambda (_self72118_ _key72120_)
        (let ((_h72122_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72118_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72124_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72118_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l72124_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h72122_ _key72120_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l72124_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!69564_
       '#f))
    (define _locked-hash-table::for-each69566_
      (lambda (_self71983_ _proc71985_)
        (let ((_h71987_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71983_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71989_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71983_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71989_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h71987_ _proc71985_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71989_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each69566_
       '#f))
    (define _locked-hash-table::length69568_
      (lambda (_self71849_)
        (let ((_h71852_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71849_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71854_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71849_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71854_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h71852_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71854_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length69568_
       '#f))
    (define _locked-hash-table::copy69570_
      (lambda (_self71715_)
        (let ((_h71718_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71715_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71720_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71715_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71720_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h71718_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71720_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy69570_
       '#f))
    (define _locked-hash-table::clear!69572_
      (lambda (_self71581_)
        (let ((_h71584_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71581_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71586_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71581_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71586_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h71584_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71586_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!69572_
       '#f))
    (let ((__tmp72910 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72910 'begin-read! mutex-lock!))
    (let ((__tmp72911 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72911 'end-read! mutex-unlock!))
    (let ((__tmp72912 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72912 'begin-write! mutex-lock!))
    (let ((__tmp72913 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72913 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref69850_
      (lambda (_self71445_ _key71446_ _default71447_)
        (let ((_h71449_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71445_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71451_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71445_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7145371455_)
             (if (_g7145371455_ _key71446_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71446_))))
           _key?71451_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h71449_ _key71446_ _default71447_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref69850_
       '#f))
    (define _checked-hash-table::set!69852_
      (lambda (_self71309_ _key71310_ _value71311_)
        (let ((_h71313_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71309_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71315_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71309_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7131771319_)
             (if (_g7131771319_ _key71310_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71310_))))
           _key?71315_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h71313_ _key71310_ _value71311_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!69852_
       '#f))
    (define _checked-hash-table::update!69854_
      (lambda (_self71174_ _key71175_ _update71176_ _default71177_)
        (let ((_h71179_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71174_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71181_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71174_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?71184_)
             (if (_key?71184_ _key71175_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71175_)))
             (if (let () (declare (not safe)) (procedure? _update71176_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update71176_))))
           _key?71181_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h71179_
             _key71175_
             _update71176_
             _default71177_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!69854_
       '#f))
    (define _checked-hash-table::delete!69856_
      (lambda (_self71039_ _key71040_)
        (let ((_h71042_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71039_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71044_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71039_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7104671048_)
             (if (_g7104671048_ _key71040_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71040_))))
           _key?71044_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h71042_ _key71040_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!69856_
       '#f))
    (define _checked-hash-table::for-each69858_
      (lambda (_self70907_ _proc70908_)
        (let ((_h70910_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70907_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70912_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70907_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g72914_)
             (if (let () (declare (not safe)) (procedure? _proc70908_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc70908_))))
           _key?70912_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h70910_ _proc70908_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each69858_
       '#f))
    (define _checked-hash-table::length69860_
      (lambda (_self70777_)
        (let ((_h70779_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70777_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70781_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70777_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h70779_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length69860_
       '#f))
    (define _checked-hash-table::copy69862_
      (lambda (_self70647_)
        (let ((_h70649_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70647_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70651_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70647_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h70649_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy69862_
       '#f))
    (define _checked-hash-table::clear!69864_
      (lambda (_self70517_)
        (let ((_h70519_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70517_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70521_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70517_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h70519_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!69864_
       '#f))
    (define make-generic-hash-table
      (lambda (_table70387_
               _count70388_
               _free70389_
               _hash70390_
               _test70391_
               _seed70392_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table70387_
           _count70388_
           _free70389_
           _hash70390_
           _test70391_
           _seed70392_))))
    (define make-hash-table__%
      (lambda (_g72915_
               _size-hint7023270242_
               _seed7023370244_
               _test7023470246_
               _hash7023570248_
               _lock7023670250_
               _check7023770252_
               _weak-keys7023870254_
               _weak-values7023970256_)
        (let* ((_size-hint70259_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint7023270242_ absent-value))
                    '#f
                    _size-hint7023270242_))
               (_seed70261_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed7023370244_ absent-value))
                    '#f
                    _seed7023370244_))
               (_test70263_
                (if (let ()
                      (declare (not safe))
                      (eq? _test7023470246_ absent-value))
                    equal?
                    _test7023470246_))
               (_hash70265_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash7023570248_ absent-value))
                    '#f
                    _hash7023570248_))
               (_lock70267_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock7023670250_ absent-value))
                    '#f
                    _lock7023670250_))
               (_check70269_
                (if (let ()
                      (declare (not safe))
                      (eq? _check7023770252_ absent-value))
                    '#f
                    _check7023770252_))
               (_weak-keys70271_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys7023870254_ absent-value))
                    '#f
                    _weak-keys7023870254_))
               (_weak-values70273_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values7023970256_ absent-value))
                    '#f
                    _weak-values7023970256_)))
          (letrec ((_table-seed70275_
                    (lambda ()
                      (if (let () (declare (not safe)) (fixnum? _seed70261_))
                          _seed70261_
                          (random-integer (macro-max-fixnum32)))))
                   (_wrap-lock70276_
                    (lambda (_ht70370_)
                      (if _lock70267_
                          (let ((__tmp72916
                                 (let ((__tmp72917
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock70267_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht70370_
                                    __tmp72917))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp72916))
                          _ht70370_)))
                   (_wrap-checked70277_
                    (lambda (_ht70367_ _implicit70368_)
                      (if _check70269_
                          (let ((__tmp72918
                                 (let ((__tmp72919
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check70269_))
                                            _check70269_
                                            _implicit70368_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht70367_
                                    __tmp72919))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp72918))
                          _ht70367_)))
                   (_make70278_
                    (lambda (_kons70355_ _key?70356_ _hash70357_ _test70358_)
                      (let* ((_size70360_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint70259_)))
                             (_table70362_
                              (make-vector _size70360_ (macro-unused-obj)))
                             (_ht70364_
                              (let ((__tmp72920
                                     (_kons70355_
                                      _table70362_
                                      '0
                                      (fxquotient _size70360_ '2)
                                      _hash70357_
                                      _test70358_
                                      (let ()
                                        (declare (not safe))
                                        (_table-seed70275_)))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72920))))
                        (let ((__tmp72921
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock70276_ _ht70364_))))
                          (declare (not safe))
                          (_wrap-checked70277_ __tmp72921 _key?70356_)))))
                   (_make-gc-hash-table70279_
                    (lambda ()
                      (let* ((_ht70353_
                              (let ((__tmp72922
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _size-hint70259_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72922)))
                             (__tmp72923
                              (let ()
                                (declare (not safe))
                                (_wrap-lock70276_ _ht70353_))))
                        (declare (not safe))
                        (_wrap-checked70277_ __tmp72923 true))))
                   (_make-gambit-table70280_
                    (lambda ()
                      (let* ((_size70337_
                              (let ((_$e70334_ _size-hint70259_))
                                (if _$e70334_ _$e70334_ (macro-absent-obj))))
                             (_test70342_
                              (let ((_$e70339_ _test70263_))
                                (if _$e70339_ _$e70339_ equal?)))
                             (_hash70347_
                              (let ((_$e70344_ _hash70265_))
                                (if _$e70344_
                                    _$e70344_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test70342_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test70342_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht70349_
                              (let ((__tmp72924
                                     (make-table
                                      'size:
                                      _size70337_
                                      'test:
                                      _test70342_
                                      'hash:
                                      _hash70347_
                                      'weak-keys:
                                      _weak-keys70271_
                                      'weak-values:
                                      _weak-values70273_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72924))))
                        (let ((__tmp72925
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock70276_ _ht70349_))))
                          (declare (not safe))
                          (_wrap-checked70277_ __tmp72925 true))))))
            (if (or _weak-keys70271_ _weak-values70273_)
                (let () (declare (not safe)) (_make-gambit-table70280_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test70263_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test70263_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash70265_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash70265_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash70265_ eq-hash)))
                         (let () (declare (not safe)) (not _seed70261_)))
                    (let () (declare (not safe)) (_make-gc-hash-table70279_))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test70263_ eq?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test70263_ ##eq?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash70265_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash70265_ eq?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash70265_ eq-hash))))
                        (let ()
                          (declare (not safe))
                          (_make70278_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test70263_ eqv?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test70263_ ##eqv?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _hash70265_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash70265_ eqv?-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash70265_ eqv-hash))))
                            (let ()
                              (declare (not safe))
                              (_make70278_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test70263_ eq?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test70263_ ##eq?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash70265_ symbolic-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash70265_ ##symbol-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make70278_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (let ()
                                               (declare (not safe))
                                               (eq? _test70263_ eq?))
                                             (let ()
                                               (declare (not safe))
                                               (eq? _test70263_ ##eq?)))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash70265_ immediate-hash)))
                                    (let ()
                                      (declare (not safe))
                                      (_make70278_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (let ()
                                                   (declare (not safe))
                                                   (eq? _test70263_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test70263_ ##equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test70263_ string=?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test70263_
                                                        ##string=?)))
                                             (or (let ()
                                                   (declare (not safe))
                                                   (eq? _hash70265_
                                                        string-hash))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _hash70265_
                                                        ##string=?-hash))))
                                        (let ()
                                          (declare (not safe))
                                          (_make70278_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (let ()
                                                   (declare (not safe))
                                                   (eq? _test70263_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _hash70265_)))
                                            (let ()
                                              (declare (not safe))
                                              (_make70278_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp72927
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _test70263_))))
                                                  (declare (not safe))
                                                  (not __tmp72927))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _test70263_))
                                                (if (let ((__tmp72926
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _hash70265_))))
                                                      (declare (not safe))
                                                      (not __tmp72926))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _hash70265_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make70278_
                                                       make-generic-hash-table
                                                       true
                                                       _hash70265_
                                                       _test70263_))))))))))))))))
    (define make-hash-table__@
      (lambda (_keys7023170376_ . _args70378_)
        (apply make-hash-table__%
               _keys7023170376_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7023170376_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7023170376_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7023170376_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7023170376_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7023170376_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7023170376_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7023170376_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7023170376_
                  'weak-values:
                  absent-value))
               _args70378_)))
    (define make-hash-table
      (lambda _args7024070384_
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
               _args7024070384_)))
    (define make-hash-table-eq
      (lambda _args70228_ (apply make-hash-table 'test: eq? _args70228_)))
    (define make-hash-table-eqv
      (lambda _args70226_ (apply make-hash-table 'test: eqv? _args70226_)))
    (define make-hash-table-symbolic
      (lambda _args70224_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args70224_)))
    (define make-hash-table-string
      (lambda _args70222_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args70222_)))
    (define make-hash-table-immediate
      (lambda _args70220_
        (apply make-hash-table 'test: eq? 'hash: immediate-hash _args70220_)))
    (define list->hash-table
      (lambda (_lst70217_ . _args70218_)
        (let ((__tmp72928
               (apply make-hash-table 'size: (length _lst70217_) _args70218_)))
          (declare (not safe))
          (list->hash-table! _lst70217_ __tmp72928))))
    (define list->hash-table-eq
      (lambda (_lst70214_ . _args70215_)
        (let ((__tmp72929
               (apply make-hash-table-eq
                      'size:
                      (length _lst70214_)
                      _args70215_)))
          (declare (not safe))
          (list->hash-table! _lst70214_ __tmp72929))))
    (define list->hash-table-eqv
      (lambda (_lst70211_ . _args70212_)
        (let ((__tmp72930
               (apply make-hash-table-eqv
                      'size:
                      (length _lst70211_)
                      _args70212_)))
          (declare (not safe))
          (list->hash-table! _lst70211_ __tmp72930))))
    (define list->hash-table-symbolic
      (lambda (_lst70208_ . _args70209_)
        (let ((__tmp72931
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst70208_)
                      _args70209_)))
          (declare (not safe))
          (list->hash-table! _lst70208_ __tmp72931))))
    (define list->hash-table-string
      (lambda (_lst70205_ . _args70206_)
        (let ((__tmp72932
               (apply make-hash-table-string
                      'size:
                      (length _lst70205_)
                      _args70206_)))
          (declare (not safe))
          (list->hash-table! _lst70205_ __tmp72932))))
    (define list->hash-table!
      (lambda (_lst70172_ _h70173_)
        (for-each
         (lambda (_el70175_)
           (let* ((_el7017670183_ _el70175_)
                  (_E7017870187_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el7017670183_))))
                  (_K7017970193_
                   (lambda (_v70190_ _k70191_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h70173_ _k70191_ _v70190_)))))
             (if (let () (declare (not safe)) (##pair? _el7017670183_))
                 (let ((_hd7018070196_
                        (let () (declare (not safe)) (##car _el7017670183_)))
                       (_tl7018170198_
                        (let () (declare (not safe)) (##cdr _el7017670183_))))
                   (let* ((_k70201_ _hd7018070196_) (_v70203_ _tl7018170198_))
                     (declare (not safe))
                     (_K7017970193_ _v70203_ _k70201_)))
                 (let () (declare (not safe)) (_E7017870187_)))))
         _lst70172_)
        _h70173_))
    (define plist->hash-table
      (lambda (_lst70169_ . _args70170_)
        (let ((__tmp72933
               (apply make-hash-table 'size: (length _lst70169_) _args70170_)))
          (declare (not safe))
          (plist->hash-table! _lst70169_ __tmp72933))))
    (define plist->hash-table-eq
      (lambda (_lst70166_ . _args70167_)
        (let ((__tmp72934
               (apply make-hash-table-eq
                      'size:
                      (length _lst70166_)
                      _args70167_)))
          (declare (not safe))
          (plist->hash-table! _lst70166_ __tmp72934))))
    (define plist->hash-table-eqv
      (lambda (_lst70163_ . _args70164_)
        (let ((__tmp72935
               (apply make-hash-table-eqv
                      'size:
                      (length _lst70163_)
                      _args70164_)))
          (declare (not safe))
          (plist->hash-table! _lst70163_ __tmp72935))))
    (define plist->hash-table-symbolic
      (lambda (_lst70160_ . _args70161_)
        (let ((__tmp72936
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst70160_)
                      _args70161_)))
          (declare (not safe))
          (plist->hash-table! _lst70160_ __tmp72936))))
    (define plist->hash-table-string
      (lambda (_lst70157_ . _args70158_)
        (let ((__tmp72937
               (apply make-hash-table-string
                      'size:
                      (length _lst70157_)
                      _args70158_)))
          (declare (not safe))
          (plist->hash-table! _lst70157_ __tmp72937))))
    (define plist->hash-table!
      (lambda (_lst70097_ _h70098_)
        (let _loop70100_ ((_rest70102_ _lst70097_))
          (let* ((_rest7010370115_ _rest70102_)
                 (_else7010670123_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst70097_)))))
            (let ((_K7010970138_
                   (lambda (_rest70134_ _val70135_ _key70136_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h70098_ _key70136_ _val70135_))
                     (let () (declare (not safe)) (_loop70100_ _rest70134_))))
                  (_K7010870128_ (lambda () _h70098_)))
              (let ((_try-match7010570131_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest7010370115_))
                           (let () (declare (not safe)) (_K7010870128_))
                           (let () (declare (not safe)) (_else7010670123_))))))
                (if (let () (declare (not safe)) (##pair? _rest7010370115_))
                    (let ((_tl7011170143_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest7010370115_)))
                          (_hd7011070141_
                           (let ()
                             (declare (not safe))
                             (##car _rest7010370115_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl7011170143_))
                          (let ((_tl7011370150_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl7011170143_)))
                                (_hd7011270148_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl7011170143_))))
                            (let ((_key70146_ _hd7011070141_)
                                  (_val70153_ _hd7011270148_)
                                  (_rest70155_ _tl7011370150_))
                              (let ()
                                (declare (not safe))
                                (_K7010970138_
                                 _rest70155_
                                 _val70153_
                                 _key70146_))))
                          (let () (declare (not safe)) (_else7010670123_))))
                    (let ()
                      (declare (not safe))
                      (_try-match7010570131_)))))))))
    (define hash-length
      (lambda (_h70093_)
        (let ((_h70095_
               (if (and (let () (declare (not safe)) (##structure? _h70093_))
                        (let ((__tmp72938
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70093_))))
                          (declare (not safe))
                          (eq? __tmp72938 HashTable::t)))
                   _h70093_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70093_)))))
          (declare (not safe))
          (&HashTable-length _h70095_))))
    (define &hash-length
      (lambda (_h70091_)
        (let () (declare (not safe)) (&HashTable-length _h70091_))))
    (define hash-ref__%
      (lambda (_h70073_ _key70074_ _default70075_)
        (let ((_h70077_
               (if (and (let () (declare (not safe)) (##structure? _h70073_))
                        (let ((__tmp72939
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70073_))))
                          (declare (not safe))
                          (eq? __tmp72939 HashTable::t)))
                   _h70073_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70073_)))))
          (declare (not safe))
          (&hash-ref__% _h70077_ _key70074_ _default70075_))))
    (define hash-ref__0
      (lambda (_h70082_ _key70083_)
        (let ((_default70085_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h70082_ _key70083_ _default70085_))))
    (define hash-ref
      (lambda _g72941_
        (let ((_g72940_ (let () (declare (not safe)) (##length _g72941_))))
          (cond ((let () (declare (not safe)) (##fx= _g72940_ 2))
                 (apply (lambda (_h70082_ _key70083_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h70082_ _key70083_)))
                        _g72941_))
                ((let () (declare (not safe)) (##fx= _g72940_ 3))
                 (apply (lambda (_h70087_ _key70088_ _default70089_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h70087_ _key70088_ _default70089_)))
                        _g72941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g72941_))))))
    (define &hash-ref__%
      (lambda (_h70054_ _key70055_ _default70056_)
        (let ((_result70058_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h70054_ _key70055_ _default70056_))))
          (if (let ((__tmp72942 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result70058_ __tmp72942))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h70054_
                 'key:
                 _key70055_))
              _result70058_))))
    (define &hash-ref__0
      (lambda (_h70063_ _key70064_)
        (let ((_default70066_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h70063_ _key70064_ _default70066_))))
    (define &hash-ref
      (lambda _g72944_
        (let ((_g72943_ (let () (declare (not safe)) (##length _g72944_))))
          (cond ((let () (declare (not safe)) (##fx= _g72943_ 2))
                 (apply (lambda (_h70063_ _key70064_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h70063_ _key70064_)))
                        _g72944_))
                ((let () (declare (not safe)) (##fx= _g72943_ 3))
                 (apply (lambda (_h70068_ _key70069_ _default70070_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h70068_ _key70069_ _default70070_)))
                        _g72944_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g72944_))))))
    (define hash-get
      (lambda (_h70048_ _key70049_)
        (let ((_h70051_
               (if (and (let () (declare (not safe)) (##structure? _h70048_))
                        (let ((__tmp72945
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70048_))))
                          (declare (not safe))
                          (eq? __tmp72945 HashTable::t)))
                   _h70048_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70048_)))))
          (declare (not safe))
          (&hash-get _h70051_ _key70049_))))
    (define &hash-get
      (lambda (_h70045_ _key70046_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h70045_ _key70046_ '#f))))
    (define hash-put!
      (lambda (_h70039_ _key70040_ _value70041_)
        (let ((_h70043_
               (if (and (let () (declare (not safe)) (##structure? _h70039_))
                        (let ((__tmp72946
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70039_))))
                          (declare (not safe))
                          (eq? __tmp72946 HashTable::t)))
                   _h70039_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70039_)))))
          (declare (not safe))
          (&HashTable-set! _h70043_ _key70040_ _value70041_))))
    (define &hash-put!
      (lambda (_h70035_ _key70036_ _value70037_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h70035_ _key70036_ _value70037_))))
    (define hash-update!__%
      (lambda (_h70014_ _key70015_ _update70016_ _default70017_)
        (let ((_h70019_
               (if (and (let () (declare (not safe)) (##structure? _h70014_))
                        (let ((__tmp72947
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70014_))))
                          (declare (not safe))
                          (eq? __tmp72947 HashTable::t)))
                   _h70014_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70014_)))))
          (declare (not safe))
          (&HashTable-update!
           _h70019_
           _key70015_
           _update70016_
           _default70017_))))
    (define hash-update!__0
      (lambda (_h70024_ _key70025_ _update70026_)
        (let ((_default70028_ '#!void))
          (declare (not safe))
          (hash-update!__% _h70024_ _key70025_ _update70026_ _default70028_))))
    (define hash-update!
      (lambda _g72949_
        (let ((_g72948_ (let () (declare (not safe)) (##length _g72949_))))
          (cond ((let () (declare (not safe)) (##fx= _g72948_ 3))
                 (apply (lambda (_h70024_ _key70025_ _update70026_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h70024_
                             _key70025_
                             _update70026_)))
                        _g72949_))
                ((let () (declare (not safe)) (##fx= _g72948_ 4))
                 (apply (lambda (_h70030_
                                 _key70031_
                                 _update70032_
                                 _default70033_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h70030_
                             _key70031_
                             _update70032_
                             _default70033_)))
                        _g72949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g72949_))))))
    (define &hash-update!__%
      (lambda (_h69994_ _key69995_ _update69996_ _default69997_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h69994_
           _key69995_
           _update69996_
           _default69997_))))
    (define &hash-update!__0
      (lambda (_h70002_ _key70003_ _update70004_)
        (let ((_default70006_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h70002_
           _key70003_
           _update70004_
           _default70006_))))
    (define &hash-update!
      (lambda _g72951_
        (let ((_g72950_ (let () (declare (not safe)) (##length _g72951_))))
          (cond ((let () (declare (not safe)) (##fx= _g72950_ 3))
                 (apply (lambda (_h70002_ _key70003_ _update70004_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h70002_
                             _key70003_
                             _update70004_)))
                        _g72951_))
                ((let () (declare (not safe)) (##fx= _g72950_ 4))
                 (apply (lambda (_h70008_
                                 _key70009_
                                 _update70010_
                                 _default70011_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h70008_
                             _key70009_
                             _update70010_
                             _default70011_)))
                        _g72951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g72951_))))))
    (define hash-remove!
      (lambda (_h69988_ _key69989_)
        (let ((_h69991_
               (if (and (let () (declare (not safe)) (##structure? _h69988_))
                        (let ((__tmp72952
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69988_))))
                          (declare (not safe))
                          (eq? __tmp72952 HashTable::t)))
                   _h69988_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69988_)))))
          (declare (not safe))
          (&HashTable-delete! _h69991_ _key69989_))))
    (define &hash-remove!
      (lambda (_h69985_ _key69986_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h69985_ _key69986_))))
    (define hash-key?
      (lambda (_h69980_ _k69981_)
        (let ((_h69983_
               (if (and (let () (declare (not safe)) (##structure? _h69980_))
                        (let ((__tmp72953
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69980_))))
                          (declare (not safe))
                          (eq? __tmp72953 HashTable::t)))
                   _h69980_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69980_)))))
          (declare (not safe))
          (&hash-key? _h69983_ _k69981_))))
    (define &hash-key?
      (lambda (_h69977_ _k69978_)
        (let ((__tmp72954
               (let ((__tmp72955
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h69977_ _k69978_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp72955 absent-value))))
          (declare (not safe))
          (not __tmp72954))))
    (define hash->list
      (lambda (_h69973_)
        (let ((_h69975_
               (if (and (let () (declare (not safe)) (##structure? _h69973_))
                        (let ((__tmp72956
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69973_))))
                          (declare (not safe))
                          (eq? __tmp72956 HashTable::t)))
                   _h69973_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69973_)))))
          (declare (not safe))
          (&hash->list _h69975_))))
    (define &hash->list
      (lambda (_h69966_)
        (let ((_lst69968_ '()))
          (let ((__tmp72957
                 (lambda (_k69970_ _v69971_)
                   (set! _lst69968_
                         (let ((__tmp72958
                                (let ()
                                  (declare (not safe))
                                  (cons _k69970_ _v69971_))))
                           (declare (not safe))
                           (cons __tmp72958 _lst69968_))))))
            (declare (not safe))
            (&HashTable-for-each _h69966_ __tmp72957))
          _lst69968_)))
    (define hash->plist
      (lambda (_h69962_)
        (let ((_h69964_
               (if (and (let () (declare (not safe)) (##structure? _h69962_))
                        (let ((__tmp72959
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69962_))))
                          (declare (not safe))
                          (eq? __tmp72959 HashTable::t)))
                   _h69962_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69962_)))))
          (declare (not safe))
          (&hash->plist _h69964_))))
    (define &hash->plist
      (lambda (_h69955_)
        (let ((_lst69957_ '()))
          (let ((__tmp72960
                 (lambda (_k69959_ _v69960_)
                   (set! _lst69957_
                         (let ((__tmp72961
                                (let ()
                                  (declare (not safe))
                                  (cons _v69960_ _lst69957_))))
                           (declare (not safe))
                           (cons _k69959_ __tmp72961))))))
            (declare (not safe))
            (&HashTable-for-each _h69955_ __tmp72960))
          _lst69957_)))
    (define hash-for-each
      (lambda (_proc69952_ _h69953_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h69953_ _proc69952_))))
    (define hash-map
      (lambda (_proc69944_ _h69945_)
        (let ((_result69947_ '()))
          (let ((__tmp72962
                 (lambda (_k69949_ _v69950_)
                   (set! _result69947_
                         (let ((__tmp72963 (_proc69944_ _k69949_ _v69950_)))
                           (declare (not safe))
                           (cons __tmp72963 _result69947_))))))
            (declare (not safe))
            (HashTable-for-each _h69945_ __tmp72962))
          _result69947_)))
    (define hash-fold
      (lambda (_proc69935_ _iv69936_ _h69937_)
        (let ((_result69939_ _iv69936_))
          (let ((__tmp72964
                 (lambda (_k69941_ _v69942_)
                   (set! _result69939_
                         (_proc69935_ _k69941_ _v69942_ _result69939_)))))
            (declare (not safe))
            (HashTable-for-each _h69937_ __tmp72964))
          _result69939_)))
    (define hash-find__%
      (lambda (_proc69911_ _h69912_ _default-value69913_)
        (call-with-current-continuation
         (lambda (_return69915_)
           (let ((__tmp72965
                  (lambda (_k69917_ _v69918_)
                    (let ((_$e69920_ (_proc69911_ _k69917_ _v69918_)))
                      (if _$e69920_ (_return69915_ _$e69920_) '#!void)))))
             (declare (not safe))
             (HashTable-for-each _h69912_ __tmp72965))
           _default-value69913_))))
    (define hash-find__0
      (lambda (_proc69926_ _h69927_)
        (let ((_default-value69929_ '#f))
          (declare (not safe))
          (hash-find__% _proc69926_ _h69927_ _default-value69929_))))
    (define hash-find
      (lambda _g72967_
        (let ((_g72966_ (let () (declare (not safe)) (##length _g72967_))))
          (cond ((let () (declare (not safe)) (##fx= _g72966_ 2))
                 (apply (lambda (_proc69926_ _h69927_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc69926_ _h69927_)))
                        _g72967_))
                ((let () (declare (not safe)) (##fx= _g72966_ 3))
                 (apply (lambda (_proc69931_ _h69932_ _default-value69933_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc69931_
                             _h69932_
                             _default-value69933_)))
                        _g72967_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g72967_))))))
    (define hash-keys
      (lambda (_h69906_)
        (let ((_h69908_
               (if (and (let () (declare (not safe)) (##structure? _h69906_))
                        (let ((__tmp72968
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69906_))))
                          (declare (not safe))
                          (eq? __tmp72968 HashTable::t)))
                   _h69906_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69906_)))))
          (declare (not safe))
          (&hash-keys _h69908_))))
    (define &hash-keys
      (lambda (_h69899_)
        (let ((_result69901_ '()))
          (let ((__tmp72969
                 (lambda (_k69903_ _v69904_)
                   (set! _result69901_
                         (let ()
                           (declare (not safe))
                           (cons _k69903_ _result69901_))))))
            (declare (not safe))
            (&HashTable-for-each _h69899_ __tmp72969))
          _result69901_)))
    (define hash-values
      (lambda (_h69895_)
        (let ((_h69897_
               (if (and (let () (declare (not safe)) (##structure? _h69895_))
                        (let ((__tmp72970
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69895_))))
                          (declare (not safe))
                          (eq? __tmp72970 HashTable::t)))
                   _h69895_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69895_)))))
          (declare (not safe))
          (&hash-values _h69897_))))
    (define &hash-values
      (lambda (_h69888_)
        (let ((_result69890_ '()))
          (let ((__tmp72971
                 (lambda (_k69892_ _v69893_)
                   (set! _result69890_
                         (let ()
                           (declare (not safe))
                           (cons _v69893_ _result69890_))))))
            (declare (not safe))
            (&HashTable-for-each _h69888_ __tmp72971))
          _result69890_)))
    (define hash-copy
      (lambda (_h69884_)
        (let ((_h69886_
               (if (and (let () (declare (not safe)) (##structure? _h69884_))
                        (let ((__tmp72972
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69884_))))
                          (declare (not safe))
                          (eq? __tmp72972 HashTable::t)))
                   _h69884_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69884_)))))
          (declare (not safe))
          (&HashTable-copy _h69886_))))
    (define &hash-copy
      (lambda (_h69882_)
        (let () (declare (not safe)) (&HashTable-copy _h69882_))))
    (define hash-merge
      (lambda (_h69877_ . _rest69878_)
        (let ((_copy69880_ (let () (declare (not safe)) (hash-copy _h69877_))))
          (apply hash-merge! _copy69880_ _rest69878_)
          _copy69880_)))
    (define hash-merge!
      (lambda (_h69867_ . _rest69868_)
        (let ((_h69870_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h69867_))))
          (for-each
           (lambda (_hr69872_)
             (let ((__tmp72973
                    (lambda (_k69874_ _v69875_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h69870_ _k69874_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h69870_ _k69874_ _v69875_))))))
               (declare (not safe))
               (hash-for-each __tmp72973 _hr69872_)))
           _rest69868_)
          _h69870_)))))
