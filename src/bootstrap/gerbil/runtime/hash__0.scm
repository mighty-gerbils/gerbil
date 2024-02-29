(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1709213449)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp72852 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp72852
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args72835_
        (apply make-instance UnboundKeyError::t _$args72835_)))
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
      (lambda (_where72709_ _message72710_ . _irritants72711_)
        (raise (let ((__obj72849
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj72849
                  _message72710_
                  'where:
                  _where72709_
                  'irritants:
                  _irritants72711_)
                 __obj72849))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp72857 (list interface-instance::t))
            (__tmp72853
             (let ((__tmp72856
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72854
                    (let ((__tmp72855
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72855 '()))))
               (declare (not safe))
               (cons __tmp72856 __tmp72854))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp72857
         '(ref set! update! delete! for-each length copy clear)
         __tmp72853
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
      (let ((__tmp72862 (list interface-instance::t))
            (__tmp72858
             (let ((__tmp72861
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72859
                    (let ((__tmp72860
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72860 '()))))
               (declare (not safe))
               (cons __tmp72861 __tmp72859))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp72862
         '(begin-read! end-read! begin-write! end-write!)
         __tmp72858
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
      (lambda (_table72702_ _key72703_ _update72704_ _default72705_)
        (let ((_result72707_
               (table-ref _table72702_ _key72703_ _default72705_)))
          (table-set!
           _table72702_
           _key72703_
           (_update72704_ _default72705_)))))
    (define gambit-table-for-each
      (lambda (_table72699_ _proc72700_)
        (table-for-each _proc72700_ _table72699_)))
    (define gambit-table-clear!
      (lambda (_table72697_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table72697_ '0 '5 '#f '#f))))
    (let ((__tmp72863 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72863 'ref table-ref))
    (let ((__tmp72864 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72864 'set! table-set!))
    (let ((__tmp72865 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72865 'update! gambit-table-update!))
    (let ((__tmp72866 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72866 'delete! table-set!))
    (let ((__tmp72867 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72867 'for-each gambit-table-for-each))
    (let ((__tmp72868 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72868 'length table-length))
    (let ((__tmp72869 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72869 'copy table-copy))
    (let ((__tmp72870 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp72870 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots72679_ '(table count free hash test seed))
             (_slot-vector72681_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots72679_))))
             (_slot-table72688_
              (let ((_slot-table72683_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot72685_ _field72686_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72683_
                      _slot72685_
                      _field72686_))
                   (let ((__tmp72871 (symbol->keyword _slot72685_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72683_
                      __tmp72871
                      _field72686_)))
                 _slots72679_
                 (let ((__tmp72872 (length _slots72679_)))
                   (declare (not safe))
                   (iota__1 __tmp72872 '1)))
                _slot-table72683_))
             (_flags72690_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields72692_ '#())
             (_properties72694_
              (let ((__tmp72875
                     (let ((__tmp72876
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots72679_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp72876)))
                    (__tmp72873
                     (let ((__tmp72874
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp72874 '()))))
                (declare (not safe))
                (cons __tmp72875 __tmp72873))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags72690_
           __table::t
           _fields72692_
           '()
           _slot-vector72681_
           _slot-table72688_
           _properties72694_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_slots72661_ '(gcht immediate))
             (_slot-vector72663_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots72661_))))
             (_slot-table72670_
              (let ((_slot-table72665_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot72667_ _field72668_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72665_
                      _slot72667_
                      _field72668_))
                   (let ((__tmp72877 (symbol->keyword _slot72667_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table72665_
                      __tmp72877
                      _field72668_)))
                 _slots72661_
                 (let ((__tmp72878 (length _slots72661_)))
                   (declare (not safe))
                   (iota__1 __tmp72878 '1)))
                _slot-table72665_))
             (_flags72672_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields72674_ '#())
             (_properties72676_
              (let ((__tmp72881
                     (let ((__tmp72882
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots72661_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp72882)))
                    (__tmp72879
                     (let ((__tmp72880
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp72880 '()))))
                (declare (not safe))
                (cons __tmp72881 __tmp72879))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'gc-hash-table
           _flags72672_
           __gc-table::t
           _fields72674_
           '()
           _slot-vector72663_
           _slot-table72670_
           _properties72676_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp72887 (list))
            (__tmp72883
             (let ((__tmp72886
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72884
                    (let ((__tmp72885
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72885 '()))))
               (declare (not safe))
               (cons __tmp72886 __tmp72884))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp72887
         '(table lock)
         __tmp72883
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args72658_
        (apply make-instance locked-hash-table::t _$args72658_)))
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
      (let ((__tmp72892 (list))
            (__tmp72888
             (let ((__tmp72891
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp72889
                    (let ((__tmp72890
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp72890 '()))))
               (declare (not safe))
               (cons __tmp72891 __tmp72889))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp72892
         '(table key-check)
         __tmp72888
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args72655_
        (apply make-instance checked-hash-table::t _$args72655_)))
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
      (let ((__tmp72895 (list hash-table::t))
            (__tmp72893
             (let ((__tmp72894
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72894 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp72895
         '()
         __tmp72893
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args72652_
        (apply make-instance eq-hash-table::t _$args72652_)))
    (define eqv-hash-table::t
      (let ((__tmp72898 (list hash-table::t))
            (__tmp72896
             (let ((__tmp72897
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72897 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp72898
         '()
         __tmp72896
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args72649_
        (apply make-instance eqv-hash-table::t _$args72649_)))
    (define symbol-hash-table::t
      (let ((__tmp72901 (list hash-table::t))
            (__tmp72899
             (let ((__tmp72900
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72900 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp72901
         '()
         __tmp72899
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args72646_
        (apply make-instance symbol-hash-table::t _$args72646_)))
    (define string-hash-table::t
      (let ((__tmp72904 (list hash-table::t))
            (__tmp72902
             (let ((__tmp72903
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72903 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp72904
         '()
         __tmp72902
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args72643_
        (apply make-instance string-hash-table::t _$args72643_)))
    (define immediate-hash-table::t
      (let ((__tmp72907 (list hash-table::t))
            (__tmp72905
             (let ((__tmp72906
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp72906 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table
         'hash-table
         __tmp72907
         '()
         __tmp72905
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _$args72640_
        (apply make-instance immediate-hash-table::t _$args72640_)))
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
      (lambda (_obj72638_)
        (if (let () (declare (not safe)) (##structure? _obj72638_))
            (let ((__tmp72908
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj72638_))))
              (declare (not safe))
              (eq? __tmp72908 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj72633_)
        (let ((_$e72635_
               (if (let () (declare (not safe)) (##structure? _obj72633_))
                   (let ((__tmp72909
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj72633_))))
                     (declare (not safe))
                     (eq? __tmp72909 HashTable::t))
                   '#f)))
          (if _$e72635_
              _$e72635_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj72633_))))))
    (define HashTable-ref
      (lambda (_h72627_ _key72628_ _default72629_)
        (let ((_h72631_
               (if (and (let () (declare (not safe)) (##structure? _h72627_))
                        (let ((__tmp72910
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72627_))))
                          (declare (not safe))
                          (eq? __tmp72910 HashTable::t)))
                   _h72627_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72627_)))))
          (declare (not safe))
          (&HashTable-ref _h72631_ _key72628_ _default72629_))))
    (define &HashTable-ref
      (lambda (_h72622_ _key72623_ _default72624_)
        (declare (not safe))
        ((##unchecked-structure-ref _h72622_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h72622_ '1 interface-instance::t '#f)
         _key72623_
         _default72624_)))
    (define HashTable-set!
      (lambda (_h72616_ _key72617_ _value72618_)
        (let ((_h72620_
               (if (and (let () (declare (not safe)) (##structure? _h72616_))
                        (let ((__tmp72911
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72616_))))
                          (declare (not safe))
                          (eq? __tmp72911 HashTable::t)))
                   _h72616_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72616_)))))
          (declare (not safe))
          (&HashTable-set! _h72620_ _key72617_ _value72618_))))
    (define &HashTable-set!
      (lambda (_h72611_ _key72612_ _value72613_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72611_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h72611_ '1 interface-instance::t '#f)
           _key72612_
           _value72613_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h72604_ _key72605_ _update72606_ _default72607_)
        (let ((_h72609_
               (if (and (let () (declare (not safe)) (##structure? _h72604_))
                        (let ((__tmp72912
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72604_))))
                          (declare (not safe))
                          (eq? __tmp72912 HashTable::t)))
                   _h72604_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72604_)))))
          (declare (not safe))
          (&HashTable-update!
           _h72609_
           _key72605_
           _update72606_
           _default72607_))))
    (define &HashTable-update!
      (lambda (_h72598_ _key72599_ _update72600_ _default72601_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72598_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h72598_ '1 interface-instance::t '#f)
           _key72599_
           _update72600_
           _default72601_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h72593_ _key72594_)
        (let ((_h72596_
               (if (and (let () (declare (not safe)) (##structure? _h72593_))
                        (let ((__tmp72913
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72593_))))
                          (declare (not safe))
                          (eq? __tmp72913 HashTable::t)))
                   _h72593_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72593_)))))
          (declare (not safe))
          (&HashTable-delete! _h72596_ _key72594_))))
    (define &HashTable-delete!
      (lambda (_h72589_ _key72590_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72589_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h72589_ '1 interface-instance::t '#f)
           _key72590_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h72584_ _proc72585_)
        (let ((_h72587_
               (if (and (let () (declare (not safe)) (##structure? _h72584_))
                        (let ((__tmp72914
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72584_))))
                          (declare (not safe))
                          (eq? __tmp72914 HashTable::t)))
                   _h72584_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72584_)))))
          (declare (not safe))
          (&HashTable-for-each _h72587_ _proc72585_))))
    (define &HashTable-for-each
      (lambda (_h72580_ _proc72581_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72580_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h72580_ '1 interface-instance::t '#f)
           _proc72581_)
          '#!void)))
    (define HashTable-length
      (lambda (_h72576_)
        (let ((_h72578_
               (if (and (let () (declare (not safe)) (##structure? _h72576_))
                        (let ((__tmp72915
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72576_))))
                          (declare (not safe))
                          (eq? __tmp72915 HashTable::t)))
                   _h72576_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72576_)))))
          (declare (not safe))
          (&HashTable-length _h72578_))))
    (define &HashTable-length
      (lambda (_h72573_)
        (declare (not safe))
        ((##unchecked-structure-ref _h72573_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h72573_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h72569_)
        (let ((_h72571_
               (if (and (let () (declare (not safe)) (##structure? _h72569_))
                        (let ((__tmp72916
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72569_))))
                          (declare (not safe))
                          (eq? __tmp72916 HashTable::t)))
                   _h72569_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72569_)))))
          (declare (not safe))
          (&HashTable-copy _h72571_))))
    (define &HashTable-copy
      (lambda (_h72566_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h72566_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h72566_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h72562_)
        (let ((_h72564_
               (if (and (let () (declare (not safe)) (##structure? _h72562_))
                        (let ((__tmp72917
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h72562_))))
                          (declare (not safe))
                          (eq? __tmp72917 HashTable::t)))
                   _h72562_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h72562_)))))
          (declare (not safe))
          (&HashTable-clear! _h72564_))))
    (define &HashTable-clear!
      (lambda (_h72559_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h72559_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h72559_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl72556_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72556_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72556_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl72553_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72553_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72553_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl72550_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72550_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72550_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl72547_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl72547_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl72547_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref69566_
      (lambda (_self72534_ _key72536_ _default72537_)
        (let ((_h72539_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72534_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72541_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72534_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l72541_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h72539_ _key72536_ _default72537_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l72541_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref69566_
       '#f))
    (define _locked-hash-table::set!69568_
      (lambda (_self72398_ _key72400_ _value72401_)
        (let ((_h72403_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72398_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72405_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72398_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l72405_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h72403_ _key72400_ _value72401_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l72405_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!69568_
       '#f))
    (define _locked-hash-table::update!69570_
      (lambda (_self72261_ _key72263_ _update72264_ _default72265_)
        (let ((_h72267_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72261_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72269_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72261_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l72269_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h72267_
                _key72263_
                _update72264_
                _default72265_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l72269_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!69570_
       '#f))
    (define _locked-hash-table::delete!69572_
      (lambda (_self72126_ _key72128_)
        (let ((_h72130_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72126_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l72132_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self72126_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l72132_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h72130_ _key72128_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l72132_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!69572_
       '#f))
    (define _locked-hash-table::for-each69574_
      (lambda (_self71991_ _proc71993_)
        (let ((_h71995_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71991_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71997_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71991_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71997_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h71995_ _proc71993_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71997_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each69574_
       '#f))
    (define _locked-hash-table::length69576_
      (lambda (_self71857_)
        (let ((_h71860_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71857_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71862_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71857_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71862_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h71860_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71862_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length69576_
       '#f))
    (define _locked-hash-table::copy69578_
      (lambda (_self71723_)
        (let ((_h71726_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71723_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71728_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71723_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71728_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h71726_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71728_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy69578_
       '#f))
    (define _locked-hash-table::clear!69580_
      (lambda (_self71589_)
        (let ((_h71592_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71589_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71594_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71589_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71594_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h71592_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71594_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!69580_
       '#f))
    (let ((__tmp72918 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72918 'begin-read! mutex-lock!))
    (let ((__tmp72919 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72919 'end-read! mutex-unlock!))
    (let ((__tmp72920 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72920 'begin-write! mutex-lock!))
    (let ((__tmp72921 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp72921 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref69858_
      (lambda (_self71453_ _key71454_ _default71455_)
        (let ((_h71457_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71453_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71459_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71453_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7146171463_)
             (if (_g7146171463_ _key71454_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71454_))))
           _key?71459_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h71457_ _key71454_ _default71455_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref69858_
       '#f))
    (define _checked-hash-table::set!69860_
      (lambda (_self71317_ _key71318_ _value71319_)
        (let ((_h71321_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71317_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71323_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71317_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7132571327_)
             (if (_g7132571327_ _key71318_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71318_))))
           _key?71323_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h71321_ _key71318_ _value71319_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!69860_
       '#f))
    (define _checked-hash-table::update!69862_
      (lambda (_self71182_ _key71183_ _update71184_ _default71185_)
        (let ((_h71187_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71182_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71189_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71182_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?71192_)
             (if (_key?71192_ _key71183_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71183_)))
             (if (let () (declare (not safe)) (procedure? _update71184_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update71184_))))
           _key?71189_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h71187_
             _key71183_
             _update71184_
             _default71185_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!69862_
       '#f))
    (define _checked-hash-table::delete!69864_
      (lambda (_self71047_ _key71048_)
        (let ((_h71050_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71047_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?71052_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71047_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7105471056_)
             (if (_g7105471056_ _key71048_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key71048_))))
           _key?71052_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h71050_ _key71048_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!69864_
       '#f))
    (define _checked-hash-table::for-each69866_
      (lambda (_self70915_ _proc70916_)
        (let ((_h70918_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70915_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70920_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70915_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g72922_)
             (if (let () (declare (not safe)) (procedure? _proc70916_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc70916_))))
           _key?70920_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h70918_ _proc70916_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each69866_
       '#f))
    (define _checked-hash-table::length69868_
      (lambda (_self70785_)
        (let ((_h70787_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70785_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70789_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70785_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h70787_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length69868_
       '#f))
    (define _checked-hash-table::copy69870_
      (lambda (_self70655_)
        (let ((_h70657_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70655_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70659_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70655_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h70657_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy69870_
       '#f))
    (define _checked-hash-table::clear!69872_
      (lambda (_self70525_)
        (let ((_h70527_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70525_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70529_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70525_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h70527_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!69872_
       '#f))
    (define make-generic-hash-table
      (lambda (_table70395_
               _count70396_
               _free70397_
               _hash70398_
               _test70399_
               _seed70400_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table70395_
           _count70396_
           _free70397_
           _hash70398_
           _test70399_
           _seed70400_))))
    (define make-hash-table__%
      (lambda (_g72923_
               _size-hint7024070250_
               _seed7024170252_
               _test7024270254_
               _hash7024370256_
               _lock7024470258_
               _check7024570260_
               _weak-keys7024670262_
               _weak-values7024770264_)
        (let* ((_size-hint70267_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint7024070250_ absent-value))
                    '#f
                    _size-hint7024070250_))
               (_seed70269_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed7024170252_ absent-value))
                    '#f
                    _seed7024170252_))
               (_test70271_
                (if (let ()
                      (declare (not safe))
                      (eq? _test7024270254_ absent-value))
                    equal?
                    _test7024270254_))
               (_hash70273_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash7024370256_ absent-value))
                    '#f
                    _hash7024370256_))
               (_lock70275_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock7024470258_ absent-value))
                    '#f
                    _lock7024470258_))
               (_check70277_
                (if (let ()
                      (declare (not safe))
                      (eq? _check7024570260_ absent-value))
                    '#f
                    _check7024570260_))
               (_weak-keys70279_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys7024670262_ absent-value))
                    '#f
                    _weak-keys7024670262_))
               (_weak-values70281_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values7024770264_ absent-value))
                    '#f
                    _weak-values7024770264_)))
          (letrec ((_table-seed70283_
                    (lambda ()
                      (if (let () (declare (not safe)) (fixnum? _seed70269_))
                          _seed70269_
                          (random-integer (macro-max-fixnum32)))))
                   (_wrap-lock70284_
                    (lambda (_ht70378_)
                      (if _lock70275_
                          (let ((__tmp72924
                                 (let ((__tmp72925
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock70275_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht70378_
                                    __tmp72925))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp72924))
                          _ht70378_)))
                   (_wrap-checked70285_
                    (lambda (_ht70375_ _implicit70376_)
                      (if _check70277_
                          (let ((__tmp72926
                                 (let ((__tmp72927
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check70277_))
                                            _check70277_
                                            _implicit70376_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht70375_
                                    __tmp72927))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp72926))
                          _ht70375_)))
                   (_make70286_
                    (lambda (_kons70363_ _key?70364_ _hash70365_ _test70366_)
                      (let* ((_size70368_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint70267_)))
                             (_table70370_
                              (make-vector _size70368_ (macro-unused-obj)))
                             (_ht70372_
                              (let ((__tmp72928
                                     (_kons70363_
                                      _table70370_
                                      '0
                                      (fxquotient _size70368_ '2)
                                      _hash70365_
                                      _test70366_
                                      (let ()
                                        (declare (not safe))
                                        (_table-seed70283_)))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72928))))
                        (let ((__tmp72929
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock70284_ _ht70372_))))
                          (declare (not safe))
                          (_wrap-checked70285_ __tmp72929 _key?70364_)))))
                   (_make-gc-hash-table70287_
                    (lambda ()
                      (let* ((_ht70361_
                              (let ((__tmp72930
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _size-hint70267_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72930)))
                             (__tmp72931
                              (let ()
                                (declare (not safe))
                                (_wrap-lock70284_ _ht70361_))))
                        (declare (not safe))
                        (_wrap-checked70285_ __tmp72931 true))))
                   (_make-gambit-table70288_
                    (lambda ()
                      (let* ((_size70345_
                              (let ((_$e70342_ _size-hint70267_))
                                (if _$e70342_ _$e70342_ (macro-absent-obj))))
                             (_test70350_
                              (let ((_$e70347_ _test70271_))
                                (if _$e70347_ _$e70347_ equal?)))
                             (_hash70355_
                              (let ((_$e70352_ _hash70273_))
                                (if _$e70352_
                                    _$e70352_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test70350_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test70350_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht70357_
                              (let ((__tmp72932
                                     (make-table
                                      'size:
                                      _size70345_
                                      'test:
                                      _test70350_
                                      'hash:
                                      _hash70355_
                                      'weak-keys:
                                      _weak-keys70279_
                                      'weak-values:
                                      _weak-values70281_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp72932))))
                        (let ((__tmp72933
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock70284_ _ht70357_))))
                          (declare (not safe))
                          (_wrap-checked70285_ __tmp72933 true))))))
            (if (or _weak-keys70279_ _weak-values70281_)
                (let () (declare (not safe)) (_make-gambit-table70288_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test70271_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test70271_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash70273_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash70273_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash70273_ eq-hash)))
                         (let () (declare (not safe)) (not _seed70269_)))
                    (let () (declare (not safe)) (_make-gc-hash-table70287_))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test70271_ eq?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test70271_ ##eq?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash70273_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash70273_ eq?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash70273_ eq-hash))))
                        (let ()
                          (declare (not safe))
                          (_make70286_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test70271_ eqv?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test70271_ ##eqv?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _hash70273_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash70273_ eqv?-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash70273_ eqv-hash))))
                            (let ()
                              (declare (not safe))
                              (_make70286_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test70271_ eq?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test70271_ ##eq?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash70273_ symbolic-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash70273_ ##symbol-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make70286_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (let ()
                                               (declare (not safe))
                                               (eq? _test70271_ eq?))
                                             (let ()
                                               (declare (not safe))
                                               (eq? _test70271_ ##eq?)))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash70273_ immediate-hash)))
                                    (let ()
                                      (declare (not safe))
                                      (_make70286_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (let ()
                                                   (declare (not safe))
                                                   (eq? _test70271_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test70271_ ##equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test70271_ string=?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test70271_
                                                        ##string=?)))
                                             (or (let ()
                                                   (declare (not safe))
                                                   (eq? _hash70273_
                                                        string-hash))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _hash70273_
                                                        ##string=?-hash))))
                                        (let ()
                                          (declare (not safe))
                                          (_make70286_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (let ()
                                                   (declare (not safe))
                                                   (eq? _test70271_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _hash70273_)))
                                            (let ()
                                              (declare (not safe))
                                              (_make70286_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp72935
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _test70271_))))
                                                  (declare (not safe))
                                                  (not __tmp72935))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _test70271_))
                                                (if (let ((__tmp72934
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _hash70273_))))
                                                      (declare (not safe))
                                                      (not __tmp72934))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _hash70273_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make70286_
                                                       make-generic-hash-table
                                                       true
                                                       _hash70273_
                                                       _test70271_))))))))))))))))
    (define make-hash-table__@
      (lambda (_keys7023970384_ . _args70386_)
        (apply make-hash-table__%
               _keys7023970384_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7023970384_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7023970384_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7023970384_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7023970384_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7023970384_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7023970384_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7023970384_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7023970384_
                  'weak-values:
                  absent-value))
               _args70386_)))
    (define make-hash-table
      (lambda _args7024870392_
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
               _args7024870392_)))
    (define make-hash-table-eq
      (lambda _args70236_ (apply make-hash-table 'test: eq? _args70236_)))
    (define make-hash-table-eqv
      (lambda _args70234_ (apply make-hash-table 'test: eqv? _args70234_)))
    (define make-hash-table-symbolic
      (lambda _args70232_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args70232_)))
    (define make-hash-table-string
      (lambda _args70230_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args70230_)))
    (define make-hash-table-immediate
      (lambda _args70228_
        (apply make-hash-table 'test: eq? 'hash: immediate-hash _args70228_)))
    (define list->hash-table
      (lambda (_lst70225_ . _args70226_)
        (let ((__tmp72936
               (apply make-hash-table 'size: (length _lst70225_) _args70226_)))
          (declare (not safe))
          (list->hash-table! _lst70225_ __tmp72936))))
    (define list->hash-table-eq
      (lambda (_lst70222_ . _args70223_)
        (let ((__tmp72937
               (apply make-hash-table-eq
                      'size:
                      (length _lst70222_)
                      _args70223_)))
          (declare (not safe))
          (list->hash-table! _lst70222_ __tmp72937))))
    (define list->hash-table-eqv
      (lambda (_lst70219_ . _args70220_)
        (let ((__tmp72938
               (apply make-hash-table-eqv
                      'size:
                      (length _lst70219_)
                      _args70220_)))
          (declare (not safe))
          (list->hash-table! _lst70219_ __tmp72938))))
    (define list->hash-table-symbolic
      (lambda (_lst70216_ . _args70217_)
        (let ((__tmp72939
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst70216_)
                      _args70217_)))
          (declare (not safe))
          (list->hash-table! _lst70216_ __tmp72939))))
    (define list->hash-table-string
      (lambda (_lst70213_ . _args70214_)
        (let ((__tmp72940
               (apply make-hash-table-string
                      'size:
                      (length _lst70213_)
                      _args70214_)))
          (declare (not safe))
          (list->hash-table! _lst70213_ __tmp72940))))
    (define list->hash-table!
      (lambda (_lst70180_ _h70181_)
        (for-each
         (lambda (_el70183_)
           (let* ((_el7018470191_ _el70183_)
                  (_E7018670195_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el7018470191_))))
                  (_K7018770201_
                   (lambda (_v70198_ _k70199_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h70181_ _k70199_ _v70198_)))))
             (if (let () (declare (not safe)) (##pair? _el7018470191_))
                 (let ((_hd7018870204_
                        (let () (declare (not safe)) (##car _el7018470191_)))
                       (_tl7018970206_
                        (let () (declare (not safe)) (##cdr _el7018470191_))))
                   (let* ((_k70209_ _hd7018870204_) (_v70211_ _tl7018970206_))
                     (declare (not safe))
                     (_K7018770201_ _v70211_ _k70209_)))
                 (let () (declare (not safe)) (_E7018670195_)))))
         _lst70180_)
        _h70181_))
    (define plist->hash-table
      (lambda (_lst70177_ . _args70178_)
        (let ((__tmp72941
               (apply make-hash-table 'size: (length _lst70177_) _args70178_)))
          (declare (not safe))
          (plist->hash-table! _lst70177_ __tmp72941))))
    (define plist->hash-table-eq
      (lambda (_lst70174_ . _args70175_)
        (let ((__tmp72942
               (apply make-hash-table-eq
                      'size:
                      (length _lst70174_)
                      _args70175_)))
          (declare (not safe))
          (plist->hash-table! _lst70174_ __tmp72942))))
    (define plist->hash-table-eqv
      (lambda (_lst70171_ . _args70172_)
        (let ((__tmp72943
               (apply make-hash-table-eqv
                      'size:
                      (length _lst70171_)
                      _args70172_)))
          (declare (not safe))
          (plist->hash-table! _lst70171_ __tmp72943))))
    (define plist->hash-table-symbolic
      (lambda (_lst70168_ . _args70169_)
        (let ((__tmp72944
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst70168_)
                      _args70169_)))
          (declare (not safe))
          (plist->hash-table! _lst70168_ __tmp72944))))
    (define plist->hash-table-string
      (lambda (_lst70165_ . _args70166_)
        (let ((__tmp72945
               (apply make-hash-table-string
                      'size:
                      (length _lst70165_)
                      _args70166_)))
          (declare (not safe))
          (plist->hash-table! _lst70165_ __tmp72945))))
    (define plist->hash-table!
      (lambda (_lst70105_ _h70106_)
        (let _loop70108_ ((_rest70110_ _lst70105_))
          (let* ((_rest7011170123_ _rest70110_)
                 (_else7011470131_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst70105_)))))
            (let ((_K7011770146_
                   (lambda (_rest70142_ _val70143_ _key70144_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h70106_ _key70144_ _val70143_))
                     (let () (declare (not safe)) (_loop70108_ _rest70142_))))
                  (_K7011670136_ (lambda () _h70106_)))
              (let ((_try-match7011370139_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest7011170123_))
                           (let () (declare (not safe)) (_K7011670136_))
                           (let () (declare (not safe)) (_else7011470131_))))))
                (if (let () (declare (not safe)) (##pair? _rest7011170123_))
                    (let ((_tl7011970151_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest7011170123_)))
                          (_hd7011870149_
                           (let ()
                             (declare (not safe))
                             (##car _rest7011170123_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl7011970151_))
                          (let ((_tl7012170158_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl7011970151_)))
                                (_hd7012070156_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl7011970151_))))
                            (let ((_key70154_ _hd7011870149_)
                                  (_val70161_ _hd7012070156_)
                                  (_rest70163_ _tl7012170158_))
                              (let ()
                                (declare (not safe))
                                (_K7011770146_
                                 _rest70163_
                                 _val70161_
                                 _key70154_))))
                          (let () (declare (not safe)) (_else7011470131_))))
                    (let ()
                      (declare (not safe))
                      (_try-match7011370139_)))))))))
    (define hash-length
      (lambda (_h70101_)
        (let ((_h70103_
               (if (and (let () (declare (not safe)) (##structure? _h70101_))
                        (let ((__tmp72946
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70101_))))
                          (declare (not safe))
                          (eq? __tmp72946 HashTable::t)))
                   _h70101_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70101_)))))
          (declare (not safe))
          (&HashTable-length _h70103_))))
    (define &hash-length
      (lambda (_h70099_)
        (let () (declare (not safe)) (&HashTable-length _h70099_))))
    (define hash-ref__%
      (lambda (_h70081_ _key70082_ _default70083_)
        (let ((_h70085_
               (if (and (let () (declare (not safe)) (##structure? _h70081_))
                        (let ((__tmp72947
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70081_))))
                          (declare (not safe))
                          (eq? __tmp72947 HashTable::t)))
                   _h70081_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70081_)))))
          (declare (not safe))
          (&hash-ref__% _h70085_ _key70082_ _default70083_))))
    (define hash-ref__0
      (lambda (_h70090_ _key70091_)
        (let ((_default70093_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h70090_ _key70091_ _default70093_))))
    (define hash-ref
      (lambda _g72949_
        (let ((_g72948_ (let () (declare (not safe)) (##length _g72949_))))
          (cond ((let () (declare (not safe)) (##fx= _g72948_ 2))
                 (apply (lambda (_h70090_ _key70091_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h70090_ _key70091_)))
                        _g72949_))
                ((let () (declare (not safe)) (##fx= _g72948_ 3))
                 (apply (lambda (_h70095_ _key70096_ _default70097_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h70095_ _key70096_ _default70097_)))
                        _g72949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g72949_))))))
    (define &hash-ref__%
      (lambda (_h70062_ _key70063_ _default70064_)
        (let ((_result70066_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h70062_ _key70063_ _default70064_))))
          (if (let ((__tmp72950 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result70066_ __tmp72950))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h70062_
                 'key:
                 _key70063_))
              _result70066_))))
    (define &hash-ref__0
      (lambda (_h70071_ _key70072_)
        (let ((_default70074_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h70071_ _key70072_ _default70074_))))
    (define &hash-ref
      (lambda _g72952_
        (let ((_g72951_ (let () (declare (not safe)) (##length _g72952_))))
          (cond ((let () (declare (not safe)) (##fx= _g72951_ 2))
                 (apply (lambda (_h70071_ _key70072_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h70071_ _key70072_)))
                        _g72952_))
                ((let () (declare (not safe)) (##fx= _g72951_ 3))
                 (apply (lambda (_h70076_ _key70077_ _default70078_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h70076_ _key70077_ _default70078_)))
                        _g72952_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g72952_))))))
    (define hash-get
      (lambda (_h70056_ _key70057_)
        (let ((_h70059_
               (if (and (let () (declare (not safe)) (##structure? _h70056_))
                        (let ((__tmp72953
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70056_))))
                          (declare (not safe))
                          (eq? __tmp72953 HashTable::t)))
                   _h70056_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70056_)))))
          (declare (not safe))
          (&hash-get _h70059_ _key70057_))))
    (define &hash-get
      (lambda (_h70053_ _key70054_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h70053_ _key70054_ '#f))))
    (define hash-put!
      (lambda (_h70047_ _key70048_ _value70049_)
        (let ((_h70051_
               (if (and (let () (declare (not safe)) (##structure? _h70047_))
                        (let ((__tmp72954
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70047_))))
                          (declare (not safe))
                          (eq? __tmp72954 HashTable::t)))
                   _h70047_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70047_)))))
          (declare (not safe))
          (&HashTable-set! _h70051_ _key70048_ _value70049_))))
    (define &hash-put!
      (lambda (_h70043_ _key70044_ _value70045_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h70043_ _key70044_ _value70045_))))
    (define hash-update!__%
      (lambda (_h70022_ _key70023_ _update70024_ _default70025_)
        (let ((_h70027_
               (if (and (let () (declare (not safe)) (##structure? _h70022_))
                        (let ((__tmp72955
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h70022_))))
                          (declare (not safe))
                          (eq? __tmp72955 HashTable::t)))
                   _h70022_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h70022_)))))
          (declare (not safe))
          (&HashTable-update!
           _h70027_
           _key70023_
           _update70024_
           _default70025_))))
    (define hash-update!__0
      (lambda (_h70032_ _key70033_ _update70034_)
        (let ((_default70036_ '#!void))
          (declare (not safe))
          (hash-update!__% _h70032_ _key70033_ _update70034_ _default70036_))))
    (define hash-update!
      (lambda _g72957_
        (let ((_g72956_ (let () (declare (not safe)) (##length _g72957_))))
          (cond ((let () (declare (not safe)) (##fx= _g72956_ 3))
                 (apply (lambda (_h70032_ _key70033_ _update70034_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h70032_
                             _key70033_
                             _update70034_)))
                        _g72957_))
                ((let () (declare (not safe)) (##fx= _g72956_ 4))
                 (apply (lambda (_h70038_
                                 _key70039_
                                 _update70040_
                                 _default70041_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h70038_
                             _key70039_
                             _update70040_
                             _default70041_)))
                        _g72957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g72957_))))))
    (define &hash-update!__%
      (lambda (_h70002_ _key70003_ _update70004_ _default70005_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h70002_
           _key70003_
           _update70004_
           _default70005_))))
    (define &hash-update!__0
      (lambda (_h70010_ _key70011_ _update70012_)
        (let ((_default70014_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h70010_
           _key70011_
           _update70012_
           _default70014_))))
    (define &hash-update!
      (lambda _g72959_
        (let ((_g72958_ (let () (declare (not safe)) (##length _g72959_))))
          (cond ((let () (declare (not safe)) (##fx= _g72958_ 3))
                 (apply (lambda (_h70010_ _key70011_ _update70012_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h70010_
                             _key70011_
                             _update70012_)))
                        _g72959_))
                ((let () (declare (not safe)) (##fx= _g72958_ 4))
                 (apply (lambda (_h70016_
                                 _key70017_
                                 _update70018_
                                 _default70019_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h70016_
                             _key70017_
                             _update70018_
                             _default70019_)))
                        _g72959_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g72959_))))))
    (define hash-remove!
      (lambda (_h69996_ _key69997_)
        (let ((_h69999_
               (if (and (let () (declare (not safe)) (##structure? _h69996_))
                        (let ((__tmp72960
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69996_))))
                          (declare (not safe))
                          (eq? __tmp72960 HashTable::t)))
                   _h69996_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69996_)))))
          (declare (not safe))
          (&HashTable-delete! _h69999_ _key69997_))))
    (define &hash-remove!
      (lambda (_h69993_ _key69994_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h69993_ _key69994_))))
    (define hash-key?
      (lambda (_h69988_ _k69989_)
        (let ((_h69991_
               (if (and (let () (declare (not safe)) (##structure? _h69988_))
                        (let ((__tmp72961
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69988_))))
                          (declare (not safe))
                          (eq? __tmp72961 HashTable::t)))
                   _h69988_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69988_)))))
          (declare (not safe))
          (&hash-key? _h69991_ _k69989_))))
    (define &hash-key?
      (lambda (_h69985_ _k69986_)
        (let ((__tmp72962
               (let ((__tmp72963
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h69985_ _k69986_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp72963 absent-value))))
          (declare (not safe))
          (not __tmp72962))))
    (define hash->list
      (lambda (_h69981_)
        (let ((_h69983_
               (if (and (let () (declare (not safe)) (##structure? _h69981_))
                        (let ((__tmp72964
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69981_))))
                          (declare (not safe))
                          (eq? __tmp72964 HashTable::t)))
                   _h69981_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69981_)))))
          (declare (not safe))
          (&hash->list _h69983_))))
    (define &hash->list
      (lambda (_h69974_)
        (let ((_lst69976_ '()))
          (let ((__tmp72965
                 (lambda (_k69978_ _v69979_)
                   (set! _lst69976_
                         (let ((__tmp72966
                                (let ()
                                  (declare (not safe))
                                  (cons _k69978_ _v69979_))))
                           (declare (not safe))
                           (cons __tmp72966 _lst69976_))))))
            (declare (not safe))
            (&HashTable-for-each _h69974_ __tmp72965))
          _lst69976_)))
    (define hash->plist
      (lambda (_h69970_)
        (let ((_h69972_
               (if (and (let () (declare (not safe)) (##structure? _h69970_))
                        (let ((__tmp72967
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69970_))))
                          (declare (not safe))
                          (eq? __tmp72967 HashTable::t)))
                   _h69970_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69970_)))))
          (declare (not safe))
          (&hash->plist _h69972_))))
    (define &hash->plist
      (lambda (_h69963_)
        (let ((_lst69965_ '()))
          (let ((__tmp72968
                 (lambda (_k69967_ _v69968_)
                   (set! _lst69965_
                         (let ((__tmp72969
                                (let ()
                                  (declare (not safe))
                                  (cons _v69968_ _lst69965_))))
                           (declare (not safe))
                           (cons _k69967_ __tmp72969))))))
            (declare (not safe))
            (&HashTable-for-each _h69963_ __tmp72968))
          _lst69965_)))
    (define hash-for-each
      (lambda (_proc69960_ _h69961_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h69961_ _proc69960_))))
    (define hash-map
      (lambda (_proc69952_ _h69953_)
        (let ((_result69955_ '()))
          (let ((__tmp72970
                 (lambda (_k69957_ _v69958_)
                   (set! _result69955_
                         (let ((__tmp72971 (_proc69952_ _k69957_ _v69958_)))
                           (declare (not safe))
                           (cons __tmp72971 _result69955_))))))
            (declare (not safe))
            (HashTable-for-each _h69953_ __tmp72970))
          _result69955_)))
    (define hash-fold
      (lambda (_proc69943_ _iv69944_ _h69945_)
        (let ((_result69947_ _iv69944_))
          (let ((__tmp72972
                 (lambda (_k69949_ _v69950_)
                   (set! _result69947_
                         (_proc69943_ _k69949_ _v69950_ _result69947_)))))
            (declare (not safe))
            (HashTable-for-each _h69945_ __tmp72972))
          _result69947_)))
    (define hash-find__%
      (lambda (_proc69919_ _h69920_ _default-value69921_)
        (call-with-current-continuation
         (lambda (_return69923_)
           (let ((__tmp72973
                  (lambda (_k69925_ _v69926_)
                    (let ((_$e69928_ (_proc69919_ _k69925_ _v69926_)))
                      (if _$e69928_ (_return69923_ _$e69928_) '#!void)))))
             (declare (not safe))
             (HashTable-for-each _h69920_ __tmp72973))
           _default-value69921_))))
    (define hash-find__0
      (lambda (_proc69934_ _h69935_)
        (let ((_default-value69937_ '#f))
          (declare (not safe))
          (hash-find__% _proc69934_ _h69935_ _default-value69937_))))
    (define hash-find
      (lambda _g72975_
        (let ((_g72974_ (let () (declare (not safe)) (##length _g72975_))))
          (cond ((let () (declare (not safe)) (##fx= _g72974_ 2))
                 (apply (lambda (_proc69934_ _h69935_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc69934_ _h69935_)))
                        _g72975_))
                ((let () (declare (not safe)) (##fx= _g72974_ 3))
                 (apply (lambda (_proc69939_ _h69940_ _default-value69941_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc69939_
                             _h69940_
                             _default-value69941_)))
                        _g72975_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g72975_))))))
    (define hash-keys
      (lambda (_h69914_)
        (let ((_h69916_
               (if (and (let () (declare (not safe)) (##structure? _h69914_))
                        (let ((__tmp72976
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69914_))))
                          (declare (not safe))
                          (eq? __tmp72976 HashTable::t)))
                   _h69914_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69914_)))))
          (declare (not safe))
          (&hash-keys _h69916_))))
    (define &hash-keys
      (lambda (_h69907_)
        (let ((_result69909_ '()))
          (let ((__tmp72977
                 (lambda (_k69911_ _v69912_)
                   (set! _result69909_
                         (let ()
                           (declare (not safe))
                           (cons _k69911_ _result69909_))))))
            (declare (not safe))
            (&HashTable-for-each _h69907_ __tmp72977))
          _result69909_)))
    (define hash-values
      (lambda (_h69903_)
        (let ((_h69905_
               (if (and (let () (declare (not safe)) (##structure? _h69903_))
                        (let ((__tmp72978
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69903_))))
                          (declare (not safe))
                          (eq? __tmp72978 HashTable::t)))
                   _h69903_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69903_)))))
          (declare (not safe))
          (&hash-values _h69905_))))
    (define &hash-values
      (lambda (_h69896_)
        (let ((_result69898_ '()))
          (let ((__tmp72979
                 (lambda (_k69900_ _v69901_)
                   (set! _result69898_
                         (let ()
                           (declare (not safe))
                           (cons _v69901_ _result69898_))))))
            (declare (not safe))
            (&HashTable-for-each _h69896_ __tmp72979))
          _result69898_)))
    (define hash-copy
      (lambda (_h69892_)
        (let ((_h69894_
               (if (and (let () (declare (not safe)) (##structure? _h69892_))
                        (let ((__tmp72980
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69892_))))
                          (declare (not safe))
                          (eq? __tmp72980 HashTable::t)))
                   _h69892_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69892_)))))
          (declare (not safe))
          (&HashTable-copy _h69894_))))
    (define &hash-copy
      (lambda (_h69890_)
        (let () (declare (not safe)) (&HashTable-copy _h69890_))))
    (define hash-merge
      (lambda (_h69885_ . _rest69886_)
        (let ((_copy69888_ (let () (declare (not safe)) (hash-copy _h69885_))))
          (apply hash-merge! _copy69888_ _rest69886_)
          _copy69888_)))
    (define hash-merge!
      (lambda (_h69875_ . _rest69876_)
        (let ((_h69878_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h69875_))))
          (for-each
           (lambda (_hr69880_)
             (let ((__tmp72981
                    (lambda (_k69882_ _v69883_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h69878_ _k69882_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h69878_ _k69882_ _v69883_))))))
               (declare (not safe))
               (hash-for-each __tmp72981 _hr69880_)))
           _rest69876_)
          _h69878_)))))
