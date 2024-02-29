(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1709229969)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp72839 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp72839
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args72822_
        (apply make-instance UnboundKeyError::t _$args72822_)))
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
      (lambda (_where72696_ _message72697_ . _irritants72698_)
        (raise (let ((__obj72836
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj72836
                  _message72697_
                  'where:
                  _where72696_
                  'irritants:
                  _irritants72698_)
                 __obj72836))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp72844 (list interface-instance::t))
            (__tmp72840
             (let ((__tmp72843
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72841
                    (let ((__tmp72842
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72842 '()))))
               (declare (not safe))
               (cons __tmp72843 __tmp72841))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp72844
         '(ref set! update! delete! for-each length copy clear)
         __tmp72840
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
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp72849
         '(begin-read! end-read! begin-write! end-write!)
         __tmp72845
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
      (lambda (_table72689_ _key72690_ _update72691_ _default72692_)
        (let ((_result72694_
               (table-ref _table72689_ _key72690_ _default72692_)))
          (table-set!
           _table72689_
           _key72690_
           (_update72691_ _default72692_)))))
    (define gambit-table-for-each
      (lambda (_table72686_ _proc72687_)
        (table-for-each _proc72687_ _table72686_)))
    (define gambit-table-clear!
      (lambda (_table72684_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table72684_ '0 '5 '#f '#f))))
    (let ((__tmp72850 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72850 'ref table-ref))
    (let ((__tmp72851 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72851 'set! table-set!))
    (let ((__tmp72852 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72852 'update! gambit-table-update!))
    (let ((__tmp72853 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72853 'delete! table-set!))
    (let ((__tmp72854 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72854 'for-each gambit-table-for-each))
    (let ((__tmp72855 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72855 'length table-length))
    (let ((__tmp72856 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72856 'copy table-copy))
    (let ((__tmp72857 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72857 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots72666_ '(table count free hash test seed))
             (_slot-vector72668_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots72666_))))
             (_slot-table72675_
              (let ((_slot-table72670_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot72672_ _field72673_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72670_
                      _slot72672_
                      _field72673_))
                   (let ((__tmp72858 (symbol->keyword _slot72672_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72670_
                      __tmp72858
                      _field72673_)))
                 _slots72666_
                 (let ((__tmp72859 (length _slots72666_)))
                   (declare (not safe))
                   (iota__1 __tmp72859 '1)))
                _slot-table72670_))
             (_flags72677_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields72679_ '#())
             (_properties72681_
              (let ((__tmp72862
                     (let ((__tmp72863
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots72666_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp72863)))
                    (__tmp72860
                     (let ((__tmp72861
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp72861 '()))))
                (declare (not safe))
                (cons __tmp72862 __tmp72860))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags72677_
           __table::t
           _fields72679_
           '()
           _slot-vector72668_
           _slot-table72675_
           _properties72681_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_slots72648_ '(gcht immediate))
             (_slot-vector72650_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots72648_))))
             (_slot-table72657_
              (let ((_slot-table72652_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot72654_ _field72655_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72652_
                      _slot72654_
                      _field72655_))
                   (let ((__tmp72864 (symbol->keyword _slot72654_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72652_
                      __tmp72864
                      _field72655_)))
                 _slots72648_
                 (let ((__tmp72865 (length _slots72648_)))
                   (declare (not safe))
                   (iota__1 __tmp72865 '1)))
                _slot-table72652_))
             (_flags72659_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields72661_ '#())
             (_properties72663_
              (let ((__tmp72868
                     (let ((__tmp72869
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots72648_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp72869)))
                    (__tmp72866
                     (let ((__tmp72867
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp72867 '()))))
                (declare (not safe))
                (cons __tmp72868 __tmp72866))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'gc-hash-table
           _flags72659_
           __gc-table::t
           _fields72661_
           '()
           _slot-vector72650_
           _slot-table72657_
           _properties72663_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp72874 (list))
            (__tmp72870
             (let ((__tmp72873
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72871
                    (let ((__tmp72872
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72872 '()))))
               (declare (not safe))
               (cons __tmp72873 __tmp72871))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp72874
         '(table lock)
         __tmp72870
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args72645_
        (apply make-instance locked-hash-table::t _$args72645_)))
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
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp72879
         '(table key-check)
         __tmp72875
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args72642_
        (apply make-instance checked-hash-table::t _$args72642_)))
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
      (let ((__tmp72882 (list hash-table::t))
            (__tmp72880
             (let ((__tmp72881
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72881 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp72882
         '()
         __tmp72880
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args72639_
        (apply make-instance eq-hash-table::t _$args72639_)))
    (define eqv-hash-table::t
      (let ((__tmp72885 (list hash-table::t))
            (__tmp72883
             (let ((__tmp72884
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72884 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp72885
         '()
         __tmp72883
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args72636_
        (apply make-instance eqv-hash-table::t _$args72636_)))
    (define symbol-hash-table::t
      (let ((__tmp72888 (list hash-table::t))
            (__tmp72886
             (let ((__tmp72887
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72887 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp72888
         '()
         __tmp72886
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args72633_
        (apply make-instance symbol-hash-table::t _$args72633_)))
    (define string-hash-table::t
      (let ((__tmp72891 (list hash-table::t))
            (__tmp72889
             (let ((__tmp72890
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72890 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp72891
         '()
         __tmp72889
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args72630_
        (apply make-instance string-hash-table::t _$args72630_)))
    (define immediate-hash-table::t
      (let ((__tmp72894 (list hash-table::t))
            (__tmp72892
             (let ((__tmp72893
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72893 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table
         'hash-table
         __tmp72894
         '()
         __tmp72892
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _$args72627_
        (apply make-instance immediate-hash-table::t _$args72627_)))
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
      (lambda (_obj72625_)
        (if (let () (declare (not safe)) (##structure? _obj72625_))
            (let ((__tmp72895
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj72625_))))
              (declare (not safe))
              (eq? __tmp72895 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj72620_)
        (let ((_$e72622_
               (if (let () (declare (not safe)) (##structure? _obj72620_))
                   (let ((__tmp72896
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj72620_))))
                     (declare (not safe))
                     (eq? __tmp72896 HashTable::t))
                   '#f)))
          (if _$e72622_
              _$e72622_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj72620_))))))
    (define HashTable-ref
      (lambda (_h72614_ _key72615_ _default72616_)
        (let ((_h72618_
               (if (and (let () (declare (not safe)) (##structure? _h72614_))
                        (let ((__tmp72897
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72614_))))
                          (declare (not safe))
                          (eq? __tmp72897 HashTable::t)))
                   _h72614_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72614_)))))
          (declare (not safe))
          (&HashTable-ref _h72618_ _key72615_ _default72616_))))
    (define &HashTable-ref
      (lambda (_h72609_ _key72610_ _default72611_)
        (declare (not safe))
        ((##unchecked-structure-ref _h72609_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h72609_ '1 interface-instance::t '#f)
         _key72610_
         _default72611_)))
    (define HashTable-set!
      (lambda (_h72603_ _key72604_ _value72605_)
        (let ((_h72607_
               (if (and (let () (declare (not safe)) (##structure? _h72603_))
                        (let ((__tmp72898
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72603_))))
                          (declare (not safe))
                          (eq? __tmp72898 HashTable::t)))
                   _h72603_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72603_)))))
          (declare (not safe))
          (&HashTable-set! _h72607_ _key72604_ _value72605_))))
    (define &HashTable-set!
      (lambda (_h72598_ _key72599_ _value72600_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72598_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h72598_ '1 interface-instance::t '#f)
           _key72599_
           _value72600_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h72591_ _key72592_ _update72593_ _default72594_)
        (let ((_h72596_
               (if (and (let () (declare (not safe)) (##structure? _h72591_))
                        (let ((__tmp72899
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72591_))))
                          (declare (not safe))
                          (eq? __tmp72899 HashTable::t)))
                   _h72591_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72591_)))))
          (declare (not safe))
          (&HashTable-update!
           _h72596_
           _key72592_
           _update72593_
           _default72594_))))
    (define &HashTable-update!
      (lambda (_h72585_ _key72586_ _update72587_ _default72588_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72585_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h72585_ '1 interface-instance::t '#f)
           _key72586_
           _update72587_
           _default72588_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h72580_ _key72581_)
        (let ((_h72583_
               (if (and (let () (declare (not safe)) (##structure? _h72580_))
                        (let ((__tmp72900
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72580_))))
                          (declare (not safe))
                          (eq? __tmp72900 HashTable::t)))
                   _h72580_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72580_)))))
          (declare (not safe))
          (&HashTable-delete! _h72583_ _key72581_))))
    (define &HashTable-delete!
      (lambda (_h72576_ _key72577_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72576_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h72576_ '1 interface-instance::t '#f)
           _key72577_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h72571_ _proc72572_)
        (let ((_h72574_
               (if (and (let () (declare (not safe)) (##structure? _h72571_))
                        (let ((__tmp72901
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72571_))))
                          (declare (not safe))
                          (eq? __tmp72901 HashTable::t)))
                   _h72571_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72571_)))))
          (declare (not safe))
          (&HashTable-for-each _h72574_ _proc72572_))))
    (define &HashTable-for-each
      (lambda (_h72567_ _proc72568_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72567_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h72567_ '1 interface-instance::t '#f)
           _proc72568_)
          '#!void)))
    (define HashTable-length
      (lambda (_h72563_)
        (let ((_h72565_
               (if (and (let () (declare (not safe)) (##structure? _h72563_))
                        (let ((__tmp72902
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72563_))))
                          (declare (not safe))
                          (eq? __tmp72902 HashTable::t)))
                   _h72563_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72563_)))))
          (declare (not safe))
          (&HashTable-length _h72565_))))
    (define &HashTable-length
      (lambda (_h72560_)
        (declare (not safe))
        ((##unchecked-structure-ref _h72560_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h72560_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h72556_)
        (let ((_h72558_
               (if (and (let () (declare (not safe)) (##structure? _h72556_))
                        (let ((__tmp72903
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72556_))))
                          (declare (not safe))
                          (eq? __tmp72903 HashTable::t)))
                   _h72556_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72556_)))))
          (declare (not safe))
          (&HashTable-copy _h72558_))))
    (define &HashTable-copy
      (lambda (_h72553_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h72553_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h72553_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h72549_)
        (let ((_h72551_
               (if (and (let () (declare (not safe)) (##structure? _h72549_))
                        (let ((__tmp72904
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72549_))))
                          (declare (not safe))
                          (eq? __tmp72904 HashTable::t)))
                   _h72549_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72549_)))))
          (declare (not safe))
          (&HashTable-clear! _h72551_))))
    (define &HashTable-clear!
      (lambda (_h72546_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72546_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h72546_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl72543_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72543_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72543_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl72540_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72540_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72540_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl72537_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72537_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72537_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl72534_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72534_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72534_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref69553_
      (lambda (_self72521_ _key72523_ _default72524_)
        (let ((_h72526_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72521_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72528_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72521_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l72528_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h72526_ _key72523_ _default72524_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l72528_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref69553_
       '#f))
    (define _locked-hash-table::set!69555_
      (lambda (_self72385_ _key72387_ _value72388_)
        (let ((_h72390_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72385_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72392_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72385_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l72392_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h72390_ _key72387_ _value72388_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l72392_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!69555_
       '#f))
    (define _locked-hash-table::update!69557_
      (lambda (_self72248_ _key72250_ _update72251_ _default72252_)
        (let ((_h72254_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72248_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72256_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72248_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l72256_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h72254_
                _key72250_
                _update72251_
                _default72252_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l72256_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!69557_
       '#f))
    (define _locked-hash-table::delete!69559_
      (lambda (_self72113_ _key72115_)
        (let ((_h72117_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72113_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72119_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72113_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l72119_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h72117_ _key72115_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l72119_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!69559_
       '#f))
    (define _locked-hash-table::for-each69561_
      (lambda (_self71978_ _proc71980_)
        (let ((_h71982_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71978_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71984_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71978_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71984_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h71982_ _proc71980_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71984_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each69561_
       '#f))
    (define _locked-hash-table::length69563_
      (lambda (_self71844_)
        (let ((_h71847_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71844_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71849_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71844_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71849_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h71847_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71849_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length69563_
       '#f))
    (define _locked-hash-table::copy69565_
      (lambda (_self71710_)
        (let ((_h71713_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71710_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71715_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71710_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71715_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h71713_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71715_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy69565_
       '#f))
    (define _locked-hash-table::clear!69567_
      (lambda (_self71576_)
        (let ((_h71579_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71576_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71581_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71576_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71581_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h71579_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71581_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!69567_
       '#f))
    (let ((__tmp72905 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72905 'begin-read! mutex-lock!))
    (let ((__tmp72906 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72906 'end-read! mutex-unlock!))
    (let ((__tmp72907 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72907 'begin-write! mutex-lock!))
    (let ((__tmp72908 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72908 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref69845_
      (lambda (_self71440_ _key71441_ _default71442_)
        (let ((_h71444_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71440_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71446_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71440_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7144871450_)
             (if (_g7144871450_ _key71441_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71441_))))
           _key?71446_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h71444_ _key71441_ _default71442_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref69845_
       '#f))
    (define _checked-hash-table::set!69847_
      (lambda (_self71304_ _key71305_ _value71306_)
        (let ((_h71308_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71304_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71310_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71304_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7131271314_)
             (if (_g7131271314_ _key71305_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71305_))))
           _key?71310_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h71308_ _key71305_ _value71306_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!69847_
       '#f))
    (define _checked-hash-table::update!69849_
      (lambda (_self71169_ _key71170_ _update71171_ _default71172_)
        (let ((_h71174_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71169_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71176_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71169_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?71179_)
             (if (_key?71179_ _key71170_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71170_)))
             (if (let () (declare (not safe)) (procedure? _update71171_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update71171_))))
           _key?71176_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h71174_
             _key71170_
             _update71171_
             _default71172_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!69849_
       '#f))
    (define _checked-hash-table::delete!69851_
      (lambda (_self71034_ _key71035_)
        (let ((_h71037_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71034_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71039_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71034_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7104171043_)
             (if (_g7104171043_ _key71035_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71035_))))
           _key?71039_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h71037_ _key71035_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!69851_
       '#f))
    (define _checked-hash-table::for-each69853_
      (lambda (_self70902_ _proc70903_)
        (let ((_h70905_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70902_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70907_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70902_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g72909_)
             (if (let () (declare (not safe)) (procedure? _proc70903_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc70903_))))
           _key?70907_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h70905_ _proc70903_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each69853_
       '#f))
    (define _checked-hash-table::length69855_
      (lambda (_self70772_)
        (let ((_h70774_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70772_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70776_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70772_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h70774_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length69855_
       '#f))
    (define _checked-hash-table::copy69857_
      (lambda (_self70642_)
        (let ((_h70644_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70642_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70646_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70642_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h70644_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy69857_
       '#f))
    (define _checked-hash-table::clear!69859_
      (lambda (_self70512_)
        (let ((_h70514_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70512_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70516_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70512_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h70514_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!69859_
       '#f))
    (define make-generic-hash-table
      (lambda (_table70382_
               _count70383_
               _free70384_
               _hash70385_
               _test70386_
               _seed70387_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table70382_
           _count70383_
           _free70384_
           _hash70385_
           _test70386_
           _seed70387_))))
    (define make-hash-table__%
      (lambda (_g72910_
               _size-hint7022770237_
               _seed7022870239_
               _test7022970241_
               _hash7023070243_
               _lock7023170245_
               _check7023270247_
               _weak-keys7023370249_
               _weak-values7023470251_)
        (let* ((_size-hint70254_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint7022770237_ absent-value))
                    '#f
                    _size-hint7022770237_))
               (_seed70256_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed7022870239_ absent-value))
                    '#f
                    _seed7022870239_))
               (_test70258_
                (if (let ()
                      (declare (not safe))
                      (eq? _test7022970241_ absent-value))
                    equal?
                    _test7022970241_))
               (_hash70260_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash7023070243_ absent-value))
                    '#f
                    _hash7023070243_))
               (_lock70262_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock7023170245_ absent-value))
                    '#f
                    _lock7023170245_))
               (_check70264_
                (if (let ()
                      (declare (not safe))
                      (eq? _check7023270247_ absent-value))
                    '#f
                    _check7023270247_))
               (_weak-keys70266_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys7023370249_ absent-value))
                    '#f
                    _weak-keys7023370249_))
               (_weak-values70268_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values7023470251_ absent-value))
                    '#f
                    _weak-values7023470251_)))
          (letrec ((_table-seed70270_
                    (lambda ()
                      (if (let () (declare (not safe)) (fixnum? _seed70256_))
                          _seed70256_
                          (random-integer (macro-max-fixnum32)))))
                   (_wrap-lock70271_
                    (lambda (_ht70365_)
                      (if _lock70262_
                          (let ((__tmp72911
                                 (let ((__tmp72912
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock70262_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht70365_
                                    __tmp72912))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp72911))
                          _ht70365_)))
                   (_wrap-checked70272_
                    (lambda (_ht70362_ _implicit70363_)
                      (if _check70264_
                          (let ((__tmp72913
                                 (let ((__tmp72914
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check70264_))
                                            _check70264_
                                            _implicit70363_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht70362_
                                    __tmp72914))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp72913))
                          _ht70362_)))
                   (_make70273_
                    (lambda (_kons70350_ _key?70351_ _hash70352_ _test70353_)
                      (let* ((_size70355_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint70254_)))
                             (_table70357_
                              (make-vector _size70355_ (macro-unused-obj)))
                             (_ht70359_
                              (let ((__tmp72915
                                     (_kons70350_
                                      _table70357_
                                      '0
                                      (fxquotient _size70355_ '2)
                                      _hash70352_
                                      _test70353_
                                      (let ()
                                        (declare (not safe))
                                        (_table-seed70270_)))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72915))))
                        (let ((__tmp72916
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock70271_ _ht70359_))))
                          (declare (not safe))
                          (_wrap-checked70272_ __tmp72916 _key?70351_)))))
                   (_make-gc-hash-table70274_
                    (lambda ()
                      (let* ((_ht70348_
                              (let ((__tmp72917
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _size-hint70254_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72917)))
                             (__tmp72918
                              (let ()
                                (declare (not safe))
                                (_wrap-lock70271_ _ht70348_))))
                        (declare (not safe))
                        (_wrap-checked70272_ __tmp72918 true))))
                   (_make-gambit-table70275_
                    (lambda ()
                      (let* ((_size70332_
                              (let ((_$e70329_ _size-hint70254_))
                                (if _$e70329_ _$e70329_ (macro-absent-obj))))
                             (_test70337_
                              (let ((_$e70334_ _test70258_))
                                (if _$e70334_ _$e70334_ equal?)))
                             (_hash70342_
                              (let ((_$e70339_ _hash70260_))
                                (if _$e70339_
                                    _$e70339_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test70337_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test70337_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht70344_
                              (let ((__tmp72919
                                     (make-table
                                      'size:
                                      _size70332_
                                      'test:
                                      _test70337_
                                      'hash:
                                      _hash70342_
                                      'weak-keys:
                                      _weak-keys70266_
                                      'weak-values:
                                      _weak-values70268_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72919))))
                        (let ((__tmp72920
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock70271_ _ht70344_))))
                          (declare (not safe))
                          (_wrap-checked70272_ __tmp72920 true))))))
            (if (or _weak-keys70266_ _weak-values70268_)
                (let () (declare (not safe)) (_make-gambit-table70275_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test70258_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test70258_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash70260_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash70260_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash70260_ eq-hash)))
                         (let () (declare (not safe)) (not _seed70256_)))
                    (let () (declare (not safe)) (_make-gc-hash-table70274_))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test70258_ eq?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test70258_ ##eq?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash70260_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash70260_ eq?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash70260_ eq-hash))))
                        (let ()
                          (declare (not safe))
                          (_make70273_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test70258_ eqv?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test70258_ ##eqv?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _hash70260_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash70260_ eqv?-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash70260_ eqv-hash))))
                            (let ()
                              (declare (not safe))
                              (_make70273_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test70258_ eq?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test70258_ ##eq?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash70260_ symbolic-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash70260_ ##symbol-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make70273_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (let ()
                                               (declare (not safe))
                                               (eq? _test70258_ eq?))
                                             (let ()
                                               (declare (not safe))
                                               (eq? _test70258_ ##eq?)))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash70260_ immediate-hash)))
                                    (let ()
                                      (declare (not safe))
                                      (_make70273_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (let ()
                                                   (declare (not safe))
                                                   (eq? _test70258_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test70258_ ##equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test70258_ string=?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test70258_
                                                        ##string=?)))
                                             (or (let ()
                                                   (declare (not safe))
                                                   (eq? _hash70260_
                                                        string-hash))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _hash70260_
                                                        ##string=?-hash))))
                                        (let ()
                                          (declare (not safe))
                                          (_make70273_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (let ()
                                                   (declare (not safe))
                                                   (eq? _test70258_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _hash70260_)))
                                            (let ()
                                              (declare (not safe))
                                              (_make70273_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp72922
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _test70258_))))
                                                  (declare (not safe))
                                                  (not __tmp72922))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _test70258_))
                                                (if (let ((__tmp72921
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _hash70260_))))
                                                      (declare (not safe))
                                                      (not __tmp72921))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _hash70260_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make70273_
                                                       make-generic-hash-table
                                                       true
                                                       _hash70260_
                                                       _test70258_))))))))))))))))
    (define make-hash-table__@
      (lambda (_keys7022670371_ . _args70373_)
        (apply make-hash-table__%
               _keys7022670371_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7022670371_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7022670371_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7022670371_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7022670371_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7022670371_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7022670371_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7022670371_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7022670371_
                  'weak-values:
                  absent-value))
               _args70373_)))
    (define make-hash-table
      (lambda _args7023570379_
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
               _args7023570379_)))
    (define make-hash-table-eq
      (lambda _args70223_ (apply make-hash-table 'test: eq? _args70223_)))
    (define make-hash-table-eqv
      (lambda _args70221_ (apply make-hash-table 'test: eqv? _args70221_)))
    (define make-hash-table-symbolic
      (lambda _args70219_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args70219_)))
    (define make-hash-table-string
      (lambda _args70217_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args70217_)))
    (define make-hash-table-immediate
      (lambda _args70215_
        (apply make-hash-table 'test: eq? 'hash: immediate-hash _args70215_)))
    (define list->hash-table
      (lambda (_lst70212_ . _args70213_)
        (let ((__tmp72923
               (apply make-hash-table 'size: (length _lst70212_) _args70213_)))
          (declare (not safe))
          (list->hash-table! _lst70212_ __tmp72923))))
    (define list->hash-table-eq
      (lambda (_lst70209_ . _args70210_)
        (let ((__tmp72924
               (apply make-hash-table-eq
                      'size:
                      (length _lst70209_)
                      _args70210_)))
          (declare (not safe))
          (list->hash-table! _lst70209_ __tmp72924))))
    (define list->hash-table-eqv
      (lambda (_lst70206_ . _args70207_)
        (let ((__tmp72925
               (apply make-hash-table-eqv
                      'size:
                      (length _lst70206_)
                      _args70207_)))
          (declare (not safe))
          (list->hash-table! _lst70206_ __tmp72925))))
    (define list->hash-table-symbolic
      (lambda (_lst70203_ . _args70204_)
        (let ((__tmp72926
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst70203_)
                      _args70204_)))
          (declare (not safe))
          (list->hash-table! _lst70203_ __tmp72926))))
    (define list->hash-table-string
      (lambda (_lst70200_ . _args70201_)
        (let ((__tmp72927
               (apply make-hash-table-string
                      'size:
                      (length _lst70200_)
                      _args70201_)))
          (declare (not safe))
          (list->hash-table! _lst70200_ __tmp72927))))
    (define list->hash-table!
      (lambda (_lst70167_ _h70168_)
        (for-each
         (lambda (_el70170_)
           (let* ((_el7017170178_ _el70170_)
                  (_E7017370182_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el7017170178_))))
                  (_K7017470188_
                   (lambda (_v70185_ _k70186_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h70168_ _k70186_ _v70185_)))))
             (if (let () (declare (not safe)) (##pair? _el7017170178_))
                 (let ((_hd7017570191_
                        (let () (declare (not safe)) (##car _el7017170178_)))
                       (_tl7017670193_
                        (let () (declare (not safe)) (##cdr _el7017170178_))))
                   (let* ((_k70196_ _hd7017570191_) (_v70198_ _tl7017670193_))
                     (declare (not safe))
                     (_K7017470188_ _v70198_ _k70196_)))
                 (let () (declare (not safe)) (_E7017370182_)))))
         _lst70167_)
        _h70168_))
    (define plist->hash-table
      (lambda (_lst70164_ . _args70165_)
        (let ((__tmp72928
               (apply make-hash-table 'size: (length _lst70164_) _args70165_)))
          (declare (not safe))
          (plist->hash-table! _lst70164_ __tmp72928))))
    (define plist->hash-table-eq
      (lambda (_lst70161_ . _args70162_)
        (let ((__tmp72929
               (apply make-hash-table-eq
                      'size:
                      (length _lst70161_)
                      _args70162_)))
          (declare (not safe))
          (plist->hash-table! _lst70161_ __tmp72929))))
    (define plist->hash-table-eqv
      (lambda (_lst70158_ . _args70159_)
        (let ((__tmp72930
               (apply make-hash-table-eqv
                      'size:
                      (length _lst70158_)
                      _args70159_)))
          (declare (not safe))
          (plist->hash-table! _lst70158_ __tmp72930))))
    (define plist->hash-table-symbolic
      (lambda (_lst70155_ . _args70156_)
        (let ((__tmp72931
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst70155_)
                      _args70156_)))
          (declare (not safe))
          (plist->hash-table! _lst70155_ __tmp72931))))
    (define plist->hash-table-string
      (lambda (_lst70152_ . _args70153_)
        (let ((__tmp72932
               (apply make-hash-table-string
                      'size:
                      (length _lst70152_)
                      _args70153_)))
          (declare (not safe))
          (plist->hash-table! _lst70152_ __tmp72932))))
    (define plist->hash-table!
      (lambda (_lst70092_ _h70093_)
        (let _loop70095_ ((_rest70097_ _lst70092_))
          (let* ((_rest7009870110_ _rest70097_)
                 (_else7010170118_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst70092_)))))
            (let ((_K7010470133_
                   (lambda (_rest70129_ _val70130_ _key70131_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h70093_ _key70131_ _val70130_))
                     (let () (declare (not safe)) (_loop70095_ _rest70129_))))
                  (_K7010370123_ (lambda () _h70093_)))
              (let ((_try-match7010070126_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest7009870110_))
                           (let () (declare (not safe)) (_K7010370123_))
                           (let () (declare (not safe)) (_else7010170118_))))))
                (if (let () (declare (not safe)) (##pair? _rest7009870110_))
                    (let ((_tl7010670138_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest7009870110_)))
                          (_hd7010570136_
                           (let ()
                             (declare (not safe))
                             (##car _rest7009870110_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl7010670138_))
                          (let ((_tl7010870145_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl7010670138_)))
                                (_hd7010770143_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl7010670138_))))
                            (let ((_key70141_ _hd7010570136_)
                                  (_val70148_ _hd7010770143_)
                                  (_rest70150_ _tl7010870145_))
                              (let ()
                                (declare (not safe))
                                (_K7010470133_
                                 _rest70150_
                                 _val70148_
                                 _key70141_))))
                          (let () (declare (not safe)) (_else7010170118_))))
                    (let ()
                      (declare (not safe))
                      (_try-match7010070126_)))))))))
    (define hash-length
      (lambda (_h70088_)
        (let ((_h70090_
               (if (and (let () (declare (not safe)) (##structure? _h70088_))
                        (let ((__tmp72933
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70088_))))
                          (declare (not safe))
                          (eq? __tmp72933 HashTable::t)))
                   _h70088_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70088_)))))
          (declare (not safe))
          (&HashTable-length _h70090_))))
    (define &hash-length
      (lambda (_h70086_)
        (let () (declare (not safe)) (&HashTable-length _h70086_))))
    (define hash-ref__%
      (lambda (_h70068_ _key70069_ _default70070_)
        (let ((_h70072_
               (if (and (let () (declare (not safe)) (##structure? _h70068_))
                        (let ((__tmp72934
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70068_))))
                          (declare (not safe))
                          (eq? __tmp72934 HashTable::t)))
                   _h70068_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70068_)))))
          (declare (not safe))
          (&hash-ref__% _h70072_ _key70069_ _default70070_))))
    (define hash-ref__0
      (lambda (_h70077_ _key70078_)
        (let ((_default70080_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h70077_ _key70078_ _default70080_))))
    (define hash-ref
      (lambda _g72936_
        (let ((_g72935_ (let () (declare (not safe)) (##length _g72936_))))
          (cond ((let () (declare (not safe)) (##fx= _g72935_ 2))
                 (apply (lambda (_h70077_ _key70078_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h70077_ _key70078_)))
                        _g72936_))
                ((let () (declare (not safe)) (##fx= _g72935_ 3))
                 (apply (lambda (_h70082_ _key70083_ _default70084_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h70082_ _key70083_ _default70084_)))
                        _g72936_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g72936_))))))
    (define &hash-ref__%
      (lambda (_h70049_ _key70050_ _default70051_)
        (let ((_result70053_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h70049_ _key70050_ _default70051_))))
          (if (let ((__tmp72937 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result70053_ __tmp72937))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h70049_
                 'key:
                 _key70050_))
              _result70053_))))
    (define &hash-ref__0
      (lambda (_h70058_ _key70059_)
        (let ((_default70061_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h70058_ _key70059_ _default70061_))))
    (define &hash-ref
      (lambda _g72939_
        (let ((_g72938_ (let () (declare (not safe)) (##length _g72939_))))
          (cond ((let () (declare (not safe)) (##fx= _g72938_ 2))
                 (apply (lambda (_h70058_ _key70059_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h70058_ _key70059_)))
                        _g72939_))
                ((let () (declare (not safe)) (##fx= _g72938_ 3))
                 (apply (lambda (_h70063_ _key70064_ _default70065_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h70063_ _key70064_ _default70065_)))
                        _g72939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g72939_))))))
    (define hash-get
      (lambda (_h70043_ _key70044_)
        (let ((_h70046_
               (if (and (let () (declare (not safe)) (##structure? _h70043_))
                        (let ((__tmp72940
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70043_))))
                          (declare (not safe))
                          (eq? __tmp72940 HashTable::t)))
                   _h70043_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70043_)))))
          (declare (not safe))
          (&hash-get _h70046_ _key70044_))))
    (define &hash-get
      (lambda (_h70040_ _key70041_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h70040_ _key70041_ '#f))))
    (define hash-put!
      (lambda (_h70034_ _key70035_ _value70036_)
        (let ((_h70038_
               (if (and (let () (declare (not safe)) (##structure? _h70034_))
                        (let ((__tmp72941
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70034_))))
                          (declare (not safe))
                          (eq? __tmp72941 HashTable::t)))
                   _h70034_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70034_)))))
          (declare (not safe))
          (&HashTable-set! _h70038_ _key70035_ _value70036_))))
    (define &hash-put!
      (lambda (_h70030_ _key70031_ _value70032_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h70030_ _key70031_ _value70032_))))
    (define hash-update!__%
      (lambda (_h70009_ _key70010_ _update70011_ _default70012_)
        (let ((_h70014_
               (if (and (let () (declare (not safe)) (##structure? _h70009_))
                        (let ((__tmp72942
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70009_))))
                          (declare (not safe))
                          (eq? __tmp72942 HashTable::t)))
                   _h70009_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70009_)))))
          (declare (not safe))
          (&HashTable-update!
           _h70014_
           _key70010_
           _update70011_
           _default70012_))))
    (define hash-update!__0
      (lambda (_h70019_ _key70020_ _update70021_)
        (let ((_default70023_ '#!void))
          (declare (not safe))
          (hash-update!__% _h70019_ _key70020_ _update70021_ _default70023_))))
    (define hash-update!
      (lambda _g72944_
        (let ((_g72943_ (let () (declare (not safe)) (##length _g72944_))))
          (cond ((let () (declare (not safe)) (##fx= _g72943_ 3))
                 (apply (lambda (_h70019_ _key70020_ _update70021_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h70019_
                             _key70020_
                             _update70021_)))
                        _g72944_))
                ((let () (declare (not safe)) (##fx= _g72943_ 4))
                 (apply (lambda (_h70025_
                                 _key70026_
                                 _update70027_
                                 _default70028_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h70025_
                             _key70026_
                             _update70027_
                             _default70028_)))
                        _g72944_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g72944_))))))
    (define &hash-update!__%
      (lambda (_h69989_ _key69990_ _update69991_ _default69992_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h69989_
           _key69990_
           _update69991_
           _default69992_))))
    (define &hash-update!__0
      (lambda (_h69997_ _key69998_ _update69999_)
        (let ((_default70001_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h69997_
           _key69998_
           _update69999_
           _default70001_))))
    (define &hash-update!
      (lambda _g72946_
        (let ((_g72945_ (let () (declare (not safe)) (##length _g72946_))))
          (cond ((let () (declare (not safe)) (##fx= _g72945_ 3))
                 (apply (lambda (_h69997_ _key69998_ _update69999_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h69997_
                             _key69998_
                             _update69999_)))
                        _g72946_))
                ((let () (declare (not safe)) (##fx= _g72945_ 4))
                 (apply (lambda (_h70003_
                                 _key70004_
                                 _update70005_
                                 _default70006_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h70003_
                             _key70004_
                             _update70005_
                             _default70006_)))
                        _g72946_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g72946_))))))
    (define hash-remove!
      (lambda (_h69983_ _key69984_)
        (let ((_h69986_
               (if (and (let () (declare (not safe)) (##structure? _h69983_))
                        (let ((__tmp72947
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69983_))))
                          (declare (not safe))
                          (eq? __tmp72947 HashTable::t)))
                   _h69983_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69983_)))))
          (declare (not safe))
          (&HashTable-delete! _h69986_ _key69984_))))
    (define &hash-remove!
      (lambda (_h69980_ _key69981_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h69980_ _key69981_))))
    (define hash-key?
      (lambda (_h69975_ _k69976_)
        (let ((_h69978_
               (if (and (let () (declare (not safe)) (##structure? _h69975_))
                        (let ((__tmp72948
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69975_))))
                          (declare (not safe))
                          (eq? __tmp72948 HashTable::t)))
                   _h69975_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69975_)))))
          (declare (not safe))
          (&hash-key? _h69978_ _k69976_))))
    (define &hash-key?
      (lambda (_h69972_ _k69973_)
        (let ((__tmp72949
               (let ((__tmp72950
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h69972_ _k69973_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp72950 absent-value))))
          (declare (not safe))
          (not __tmp72949))))
    (define hash->list
      (lambda (_h69968_)
        (let ((_h69970_
               (if (and (let () (declare (not safe)) (##structure? _h69968_))
                        (let ((__tmp72951
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69968_))))
                          (declare (not safe))
                          (eq? __tmp72951 HashTable::t)))
                   _h69968_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69968_)))))
          (declare (not safe))
          (&hash->list _h69970_))))
    (define &hash->list
      (lambda (_h69961_)
        (let ((_lst69963_ '()))
          (let ((__tmp72952
                 (lambda (_k69965_ _v69966_)
                   (set! _lst69963_
                         (let ((__tmp72953
                                (let ()
                                  (declare (not safe))
                                  (cons _k69965_ _v69966_))))
                           (declare (not safe))
                           (cons __tmp72953 _lst69963_))))))
            (declare (not safe))
            (&HashTable-for-each _h69961_ __tmp72952))
          _lst69963_)))
    (define hash->plist
      (lambda (_h69957_)
        (let ((_h69959_
               (if (and (let () (declare (not safe)) (##structure? _h69957_))
                        (let ((__tmp72954
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69957_))))
                          (declare (not safe))
                          (eq? __tmp72954 HashTable::t)))
                   _h69957_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69957_)))))
          (declare (not safe))
          (&hash->plist _h69959_))))
    (define &hash->plist
      (lambda (_h69950_)
        (let ((_lst69952_ '()))
          (let ((__tmp72955
                 (lambda (_k69954_ _v69955_)
                   (set! _lst69952_
                         (let ((__tmp72956
                                (let ()
                                  (declare (not safe))
                                  (cons _v69955_ _lst69952_))))
                           (declare (not safe))
                           (cons _k69954_ __tmp72956))))))
            (declare (not safe))
            (&HashTable-for-each _h69950_ __tmp72955))
          _lst69952_)))
    (define hash-for-each
      (lambda (_proc69947_ _h69948_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h69948_ _proc69947_))))
    (define hash-map
      (lambda (_proc69939_ _h69940_)
        (let ((_result69942_ '()))
          (let ((__tmp72957
                 (lambda (_k69944_ _v69945_)
                   (set! _result69942_
                         (let ((__tmp72958 (_proc69939_ _k69944_ _v69945_)))
                           (declare (not safe))
                           (cons __tmp72958 _result69942_))))))
            (declare (not safe))
            (HashTable-for-each _h69940_ __tmp72957))
          _result69942_)))
    (define hash-fold
      (lambda (_proc69930_ _iv69931_ _h69932_)
        (let ((_result69934_ _iv69931_))
          (let ((__tmp72959
                 (lambda (_k69936_ _v69937_)
                   (set! _result69934_
                         (_proc69930_ _k69936_ _v69937_ _result69934_)))))
            (declare (not safe))
            (HashTable-for-each _h69932_ __tmp72959))
          _result69934_)))
    (define hash-find__%
      (lambda (_proc69906_ _h69907_ _default-value69908_)
        (call-with-current-continuation
         (lambda (_return69910_)
           (let ((__tmp72960
                  (lambda (_k69912_ _v69913_)
                    (let ((_$e69915_ (_proc69906_ _k69912_ _v69913_)))
                      (if _$e69915_ (_return69910_ _$e69915_) '#!void)))))
             (declare (not safe))
             (HashTable-for-each _h69907_ __tmp72960))
           _default-value69908_))))
    (define hash-find__0
      (lambda (_proc69921_ _h69922_)
        (let ((_default-value69924_ '#f))
          (declare (not safe))
          (hash-find__% _proc69921_ _h69922_ _default-value69924_))))
    (define hash-find
      (lambda _g72962_
        (let ((_g72961_ (let () (declare (not safe)) (##length _g72962_))))
          (cond ((let () (declare (not safe)) (##fx= _g72961_ 2))
                 (apply (lambda (_proc69921_ _h69922_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc69921_ _h69922_)))
                        _g72962_))
                ((let () (declare (not safe)) (##fx= _g72961_ 3))
                 (apply (lambda (_proc69926_ _h69927_ _default-value69928_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc69926_
                             _h69927_
                             _default-value69928_)))
                        _g72962_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g72962_))))))
    (define hash-keys
      (lambda (_h69901_)
        (let ((_h69903_
               (if (and (let () (declare (not safe)) (##structure? _h69901_))
                        (let ((__tmp72963
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69901_))))
                          (declare (not safe))
                          (eq? __tmp72963 HashTable::t)))
                   _h69901_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69901_)))))
          (declare (not safe))
          (&hash-keys _h69903_))))
    (define &hash-keys
      (lambda (_h69894_)
        (let ((_result69896_ '()))
          (let ((__tmp72964
                 (lambda (_k69898_ _v69899_)
                   (set! _result69896_
                         (let ()
                           (declare (not safe))
                           (cons _k69898_ _result69896_))))))
            (declare (not safe))
            (&HashTable-for-each _h69894_ __tmp72964))
          _result69896_)))
    (define hash-values
      (lambda (_h69890_)
        (let ((_h69892_
               (if (and (let () (declare (not safe)) (##structure? _h69890_))
                        (let ((__tmp72965
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69890_))))
                          (declare (not safe))
                          (eq? __tmp72965 HashTable::t)))
                   _h69890_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69890_)))))
          (declare (not safe))
          (&hash-values _h69892_))))
    (define &hash-values
      (lambda (_h69883_)
        (let ((_result69885_ '()))
          (let ((__tmp72966
                 (lambda (_k69887_ _v69888_)
                   (set! _result69885_
                         (let ()
                           (declare (not safe))
                           (cons _v69888_ _result69885_))))))
            (declare (not safe))
            (&HashTable-for-each _h69883_ __tmp72966))
          _result69885_)))
    (define hash-copy
      (lambda (_h69879_)
        (let ((_h69881_
               (if (and (let () (declare (not safe)) (##structure? _h69879_))
                        (let ((__tmp72967
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69879_))))
                          (declare (not safe))
                          (eq? __tmp72967 HashTable::t)))
                   _h69879_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69879_)))))
          (declare (not safe))
          (&HashTable-copy _h69881_))))
    (define &hash-copy
      (lambda (_h69877_)
        (let () (declare (not safe)) (&HashTable-copy _h69877_))))
    (define hash-merge
      (lambda (_h69872_ . _rest69873_)
        (let ((_copy69875_ (let () (declare (not safe)) (hash-copy _h69872_))))
          (apply hash-merge! _copy69875_ _rest69873_)
          _copy69875_)))
    (define hash-merge!
      (lambda (_h69862_ . _rest69863_)
        (let ((_h69865_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h69862_))))
          (for-each
           (lambda (_hr69867_)
             (let ((__tmp72968
                    (lambda (_k69869_ _v69870_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h69865_ _k69869_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h69865_ _k69869_ _v69870_))))))
               (declare (not safe))
               (hash-for-each __tmp72968 _hr69867_)))
           _rest69863_)
          _h69865_)))))
