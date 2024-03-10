(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1710064746)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp69802 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp69802
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args69785_
        (apply make-instance UnboundKeyError::t _$args69785_)))
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
      (lambda (_where69659_ _message69660_ . _irritants69661_)
        (raise (let ((__obj69799
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj69799
                  _message69660_
                  'where:
                  _where69659_
                  'irritants:
                  _irritants69661_)
                 __obj69799))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp69807 (list interface-instance::t))
            (__tmp69803
             (let ((__tmp69806
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp69804
                    (let ((__tmp69805
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp69805 '()))))
               (declare (not safe))
               (cons __tmp69806 __tmp69804))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp69807
         '(ref set! update! delete! for-each length copy clear)
         __tmp69803
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
      (let ((__tmp69812 (list interface-instance::t))
            (__tmp69808
             (let ((__tmp69811
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp69809
                    (let ((__tmp69810
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp69810 '()))))
               (declare (not safe))
               (cons __tmp69811 __tmp69809))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp69812
         '(begin-read! end-read! begin-write! end-write!)
         __tmp69808
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
      (lambda (_table69652_ _key69653_ _update69654_ _default69655_)
        (let ((_result69657_
               (table-ref _table69652_ _key69653_ _default69655_)))
          (table-set!
           _table69652_
           _key69653_
           (_update69654_ _default69655_)))))
    (define gambit-table-for-each
      (lambda (_table69649_ _proc69650_)
        (table-for-each _proc69650_ _table69649_)))
    (define gambit-table-clear!
      (lambda (_table69647_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table69647_ '0 '5 '#f '#f))))
    (let ((__tmp69813 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp69813 'ref table-ref))
    (let ((__tmp69814 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp69814 'set! table-set!))
    (let ((__tmp69815 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp69815 'update! gambit-table-update!))
    (let ((__tmp69816 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp69816 'delete! table-set!))
    (let ((__tmp69817 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp69817 'for-each gambit-table-for-each))
    (let ((__tmp69818 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp69818 'length table-length))
    (let ((__tmp69819 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp69819 'copy table-copy))
    (let ((__tmp69820 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp69820 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots69629_ '(table count free hash test seed))
             (_slot-vector69631_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots69629_))))
             (_slot-table69638_
              (let ((_slot-table69633_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot69635_ _field69636_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table69633_
                      _slot69635_
                      _field69636_))
                   (let ((__tmp69821 (symbol->keyword _slot69635_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table69633_
                      __tmp69821
                      _field69636_)))
                 _slots69629_
                 (iota (length _slots69629_) '1))
                _slot-table69633_))
             (_flags69640_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields69642_ '#())
             (_properties69644_
              (let ((__tmp69824
                     (let ((__tmp69825
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots69629_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp69825)))
                    (__tmp69822
                     (let ((__tmp69823
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp69823 '()))))
                (declare (not safe))
                (cons __tmp69824 __tmp69822))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags69640_
           __table::t
           _fields69642_
           '()
           _slot-vector69631_
           _slot-table69638_
           _properties69644_
           '#f
           '#f))))
    (define gc-hash-table::t
      (let* ((_slots69611_ '(gcht immediate))
             (_slot-vector69613_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots69611_))))
             (_slot-table69620_
              (let ((_slot-table69615_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot69617_ _field69618_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table69615_
                      _slot69617_
                      _field69618_))
                   (let ((__tmp69826 (symbol->keyword _slot69617_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table69615_
                      __tmp69826
                      _field69618_)))
                 _slots69611_
                 (iota (length _slots69611_) '1))
                _slot-table69615_))
             (_flags69622_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields69624_ '#())
             (_properties69626_
              (let ((__tmp69829
                     (let ((__tmp69830
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots69611_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp69830)))
                    (__tmp69827
                     (let ((__tmp69828
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp69828 '()))))
                (declare (not safe))
                (cons __tmp69829 __tmp69827))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#gc-hash-table::t
           'gc-hash-table
           _flags69622_
           __gc-table::t
           _fields69624_
           '()
           _slot-vector69613_
           _slot-table69620_
           _properties69626_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp69835 (list))
            (__tmp69831
             (let ((__tmp69834
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp69832
                    (let ((__tmp69833
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp69833 '()))))
               (declare (not safe))
               (cons __tmp69834 __tmp69832))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp69835
         '(table lock)
         __tmp69831
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args69608_
        (apply make-instance locked-hash-table::t _$args69608_)))
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
      (let ((__tmp69840 (list))
            (__tmp69836
             (let ((__tmp69839
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp69837
                    (let ((__tmp69838
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp69838 '()))))
               (declare (not safe))
               (cons __tmp69839 __tmp69837))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp69840
         '(table key-check)
         __tmp69836
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args69605_
        (apply make-instance checked-hash-table::t _$args69605_)))
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
      (let ((__tmp69843 (list hash-table::t))
            (__tmp69841
             (let ((__tmp69842
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp69842 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp69843
         '()
         __tmp69841
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args69602_
        (apply make-instance eq-hash-table::t _$args69602_)))
    (define eqv-hash-table::t
      (let ((__tmp69846 (list hash-table::t))
            (__tmp69844
             (let ((__tmp69845
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp69845 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp69846
         '()
         __tmp69844
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args69599_
        (apply make-instance eqv-hash-table::t _$args69599_)))
    (define symbol-hash-table::t
      (let ((__tmp69849 (list hash-table::t))
            (__tmp69847
             (let ((__tmp69848
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp69848 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp69849
         '()
         __tmp69847
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args69596_
        (apply make-instance symbol-hash-table::t _$args69596_)))
    (define string-hash-table::t
      (let ((__tmp69852 (list hash-table::t))
            (__tmp69850
             (let ((__tmp69851
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp69851 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp69852
         '()
         __tmp69850
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args69593_
        (apply make-instance string-hash-table::t _$args69593_)))
    (define immediate-hash-table::t
      (let ((__tmp69855 (list hash-table::t))
            (__tmp69853
             (let ((__tmp69854
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp69854 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#immediate-hash-table
         'hash-table
         __tmp69855
         '()
         __tmp69853
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _$args69590_
        (apply make-instance immediate-hash-table::t _$args69590_)))
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
      (lambda (_obj69588_)
        (if (let () (declare (not safe)) (##structure? _obj69588_))
            (let ((__tmp69856
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj69588_))))
              (declare (not safe))
              (eq? __tmp69856 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj69583_)
        (let ((_$e69585_
               (if (let () (declare (not safe)) (##structure? _obj69583_))
                   (let ((__tmp69857
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj69583_))))
                     (declare (not safe))
                     (eq? __tmp69857 HashTable::t))
                   '#f)))
          (if _$e69585_
              _$e69585_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj69583_))))))
    (define HashTable-ref
      (lambda (_h69577_ _key69578_ _default69579_)
        (let ((_h69581_
               (if (and (let () (declare (not safe)) (##structure? _h69577_))
                        (let ((__tmp69858
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69577_))))
                          (declare (not safe))
                          (eq? __tmp69858 HashTable::t)))
                   _h69577_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69577_)))))
          (declare (not safe))
          (&HashTable-ref _h69581_ _key69578_ _default69579_))))
    (define &HashTable-ref
      (lambda (_h69572_ _key69573_ _default69574_)
        (declare (not safe))
        ((##unchecked-structure-ref _h69572_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h69572_ '1 interface-instance::t '#f)
         _key69573_
         _default69574_)))
    (define HashTable-set!
      (lambda (_h69566_ _key69567_ _value69568_)
        (let ((_h69570_
               (if (and (let () (declare (not safe)) (##structure? _h69566_))
                        (let ((__tmp69859
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69566_))))
                          (declare (not safe))
                          (eq? __tmp69859 HashTable::t)))
                   _h69566_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69566_)))))
          (declare (not safe))
          (&HashTable-set! _h69570_ _key69567_ _value69568_))))
    (define &HashTable-set!
      (lambda (_h69561_ _key69562_ _value69563_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h69561_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h69561_ '1 interface-instance::t '#f)
           _key69562_
           _value69563_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h69554_ _key69555_ _update69556_ _default69557_)
        (let ((_h69559_
               (if (and (let () (declare (not safe)) (##structure? _h69554_))
                        (let ((__tmp69860
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69554_))))
                          (declare (not safe))
                          (eq? __tmp69860 HashTable::t)))
                   _h69554_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69554_)))))
          (declare (not safe))
          (&HashTable-update!
           _h69559_
           _key69555_
           _update69556_
           _default69557_))))
    (define &HashTable-update!
      (lambda (_h69548_ _key69549_ _update69550_ _default69551_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h69548_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h69548_ '1 interface-instance::t '#f)
           _key69549_
           _update69550_
           _default69551_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h69543_ _key69544_)
        (let ((_h69546_
               (if (and (let () (declare (not safe)) (##structure? _h69543_))
                        (let ((__tmp69861
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69543_))))
                          (declare (not safe))
                          (eq? __tmp69861 HashTable::t)))
                   _h69543_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69543_)))))
          (declare (not safe))
          (&HashTable-delete! _h69546_ _key69544_))))
    (define &HashTable-delete!
      (lambda (_h69539_ _key69540_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h69539_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h69539_ '1 interface-instance::t '#f)
           _key69540_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h69534_ _proc69535_)
        (let ((_h69537_
               (if (and (let () (declare (not safe)) (##structure? _h69534_))
                        (let ((__tmp69862
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69534_))))
                          (declare (not safe))
                          (eq? __tmp69862 HashTable::t)))
                   _h69534_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69534_)))))
          (declare (not safe))
          (&HashTable-for-each _h69537_ _proc69535_))))
    (define &HashTable-for-each
      (lambda (_h69530_ _proc69531_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h69530_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h69530_ '1 interface-instance::t '#f)
           _proc69531_)
          '#!void)))
    (define HashTable-length
      (lambda (_h69526_)
        (let ((_h69528_
               (if (and (let () (declare (not safe)) (##structure? _h69526_))
                        (let ((__tmp69863
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69526_))))
                          (declare (not safe))
                          (eq? __tmp69863 HashTable::t)))
                   _h69526_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69526_)))))
          (declare (not safe))
          (&HashTable-length _h69528_))))
    (define &HashTable-length
      (lambda (_h69523_)
        (declare (not safe))
        ((##unchecked-structure-ref _h69523_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h69523_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h69519_)
        (let ((_h69521_
               (if (and (let () (declare (not safe)) (##structure? _h69519_))
                        (let ((__tmp69864
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69519_))))
                          (declare (not safe))
                          (eq? __tmp69864 HashTable::t)))
                   _h69519_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69519_)))))
          (declare (not safe))
          (&HashTable-copy _h69521_))))
    (define &HashTable-copy
      (lambda (_h69516_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h69516_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h69516_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h69512_)
        (let ((_h69514_
               (if (and (let () (declare (not safe)) (##structure? _h69512_))
                        (let ((__tmp69865
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69512_))))
                          (declare (not safe))
                          (eq? __tmp69865 HashTable::t)))
                   _h69512_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69512_)))))
          (declare (not safe))
          (&HashTable-clear! _h69514_))))
    (define &HashTable-clear!
      (lambda (_h69509_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h69509_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h69509_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl69506_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl69506_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl69506_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl69503_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl69503_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl69503_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl69500_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl69500_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl69500_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl69497_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl69497_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl69497_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref66510_
      (lambda (_self69484_ _key69486_ _default69487_)
        (let ((_h69489_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69484_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l69491_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69484_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l69491_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h69489_ _key69486_ _default69487_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l69491_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref66510_
       '#f))
    (define _locked-hash-table::set!66512_
      (lambda (_self69348_ _key69350_ _value69351_)
        (let ((_h69353_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69348_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l69355_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69348_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l69355_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h69353_ _key69350_ _value69351_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l69355_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!66512_
       '#f))
    (define _locked-hash-table::update!66514_
      (lambda (_self69211_ _key69213_ _update69214_ _default69215_)
        (let ((_h69217_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69211_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l69219_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69211_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l69219_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h69217_
                _key69213_
                _update69214_
                _default69215_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l69219_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!66514_
       '#f))
    (define _locked-hash-table::delete!66516_
      (lambda (_self69076_ _key69078_)
        (let ((_h69080_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69076_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l69082_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69076_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l69082_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h69080_ _key69078_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l69082_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!66516_
       '#f))
    (define _locked-hash-table::for-each66518_
      (lambda (_self68941_ _proc68943_)
        (let ((_h68945_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68941_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l68947_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68941_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l68947_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h68945_ _proc68943_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l68947_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each66518_
       '#f))
    (define _locked-hash-table::length66520_
      (lambda (_self68807_)
        (let ((_h68810_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68807_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l68812_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68807_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l68812_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h68810_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l68812_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length66520_
       '#f))
    (define _locked-hash-table::copy66522_
      (lambda (_self68673_)
        (let ((_h68676_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68673_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l68678_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68673_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l68678_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h68676_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l68678_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy66522_
       '#f))
    (define _locked-hash-table::clear!66524_
      (lambda (_self68539_)
        (let ((_h68542_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68539_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l68544_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68539_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l68544_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h68542_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l68544_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!66524_
       '#f))
    (let ((__tmp69866 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp69866 'begin-read! mutex-lock!))
    (let ((__tmp69867 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp69867 'end-read! mutex-unlock!))
    (let ((__tmp69868 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp69868 'begin-write! mutex-lock!))
    (let ((__tmp69869 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp69869 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref66802_
      (lambda (_self68403_ _key68404_ _default68405_)
        (let ((_h68407_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68403_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?68409_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68403_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g6841168413_)
             (if (_g6841168413_ _key68404_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key68404_))))
           _key?68409_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h68407_ _key68404_ _default68405_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref66802_
       '#f))
    (define _checked-hash-table::set!66804_
      (lambda (_self68267_ _key68268_ _value68269_)
        (let ((_h68271_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68267_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?68273_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68267_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g6827568277_)
             (if (_g6827568277_ _key68268_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key68268_))))
           _key?68273_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h68271_ _key68268_ _value68269_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!66804_
       '#f))
    (define _checked-hash-table::update!66806_
      (lambda (_self68132_ _key68133_ _update68134_ _default68135_)
        (let ((_h68137_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68132_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?68139_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self68132_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?68142_)
             (if (_key?68142_ _key68133_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key68133_)))
             (if (let () (declare (not safe)) (procedure? _update68134_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update68134_))))
           _key?68139_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h68137_
             _key68133_
             _update68134_
             _default68135_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!66806_
       '#f))
    (define _checked-hash-table::delete!66808_
      (lambda (_self67997_ _key67998_)
        (let ((_h68000_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67997_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?68002_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67997_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g6800468006_)
             (if (_g6800468006_ _key67998_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key67998_))))
           _key?68002_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h68000_ _key67998_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!66808_
       '#f))
    (define _checked-hash-table::for-each66810_
      (lambda (_self67865_ _proc67866_)
        (let ((_h67868_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67865_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?67870_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67865_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g69870_)
             (if (let () (declare (not safe)) (procedure? _proc67866_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc67866_))))
           _key?67870_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h67868_ _proc67866_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each66810_
       '#f))
    (define _checked-hash-table::length66812_
      (lambda (_self67735_)
        (let ((_h67737_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67735_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?67739_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67735_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h67737_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length66812_
       '#f))
    (define _checked-hash-table::copy66814_
      (lambda (_self67605_)
        (let ((_h67607_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67605_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?67609_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67605_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h67607_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy66814_
       '#f))
    (define _checked-hash-table::clear!66816_
      (lambda (_self67475_)
        (let ((_h67477_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67475_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?67479_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self67475_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h67477_)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!66816_
       '#f))
    (define make-generic-hash-table
      (lambda (_table67345_
               _count67346_
               _free67347_
               _hash67348_
               _test67349_
               _seed67350_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table67345_
           _count67346_
           _free67347_
           _hash67348_
           _test67349_
           _seed67350_))))
    (define make-hash-table__%
      (lambda (_g69871_
               _size-hint6719067200_
               _seed6719167202_
               _test6719267204_
               _hash6719367206_
               _lock6719467208_
               _check6719567210_
               _weak-keys6719667212_
               _weak-values6719767214_)
        (let* ((_size-hint67217_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint6719067200_ absent-value))
                    '#f
                    _size-hint6719067200_))
               (_seed67219_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed6719167202_ absent-value))
                    '#f
                    _seed6719167202_))
               (_test67221_
                (if (let ()
                      (declare (not safe))
                      (eq? _test6719267204_ absent-value))
                    equal?
                    _test6719267204_))
               (_hash67223_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash6719367206_ absent-value))
                    '#f
                    _hash6719367206_))
               (_lock67225_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock6719467208_ absent-value))
                    '#f
                    _lock6719467208_))
               (_check67227_
                (if (let ()
                      (declare (not safe))
                      (eq? _check6719567210_ absent-value))
                    '#f
                    _check6719567210_))
               (_weak-keys67229_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys6719667212_ absent-value))
                    '#f
                    _weak-keys6719667212_))
               (_weak-values67231_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values6719767214_ absent-value))
                    '#f
                    _weak-values6719767214_)))
          (letrec ((_table-seed67233_
                    (lambda ()
                      (if (let () (declare (not safe)) (fixnum? _seed67219_))
                          _seed67219_
                          (random-integer (macro-max-fixnum32)))))
                   (_wrap-lock67234_
                    (lambda (_ht67328_)
                      (if _lock67225_
                          (let ((__tmp69872
                                 (let ((__tmp69873
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock67225_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht67328_
                                    __tmp69873))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp69872))
                          _ht67328_)))
                   (_wrap-checked67235_
                    (lambda (_ht67325_ _implicit67326_)
                      (if _check67227_
                          (let ((__tmp69874
                                 (let ((__tmp69875
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check67227_))
                                            _check67227_
                                            _implicit67326_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht67325_
                                    __tmp69875))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp69874))
                          _ht67325_)))
                   (_make67236_
                    (lambda (_kons67313_ _key?67314_ _hash67315_ _test67316_)
                      (let* ((_size67318_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint67217_)))
                             (_table67320_
                              (make-vector _size67318_ (macro-unused-obj)))
                             (_ht67322_
                              (let ((__tmp69876
                                     (_kons67313_
                                      _table67320_
                                      '0
                                      (fxquotient _size67318_ '2)
                                      _hash67315_
                                      _test67316_
                                      (let ()
                                        (declare (not safe))
                                        (_table-seed67233_)))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp69876))))
                        (let ((__tmp69877
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock67234_ _ht67322_))))
                          (declare (not safe))
                          (_wrap-checked67235_ __tmp69877 _key?67314_)))))
                   (_make-gc-hash-table67237_
                    (lambda ()
                      (let* ((_ht67311_
                              (let ((__tmp69878
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _size-hint67217_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp69878)))
                             (__tmp69879
                              (let ()
                                (declare (not safe))
                                (_wrap-lock67234_ _ht67311_))))
                        (declare (not safe))
                        (_wrap-checked67235_ __tmp69879 true))))
                   (_make-gambit-table67238_
                    (lambda ()
                      (let* ((_size67295_
                              (let ((_$e67292_ _size-hint67217_))
                                (if _$e67292_ _$e67292_ (macro-absent-obj))))
                             (_test67300_
                              (let ((_$e67297_ _test67221_))
                                (if _$e67297_ _$e67297_ equal?)))
                             (_hash67305_
                              (let ((_$e67302_ _hash67223_))
                                (if _$e67302_
                                    _$e67302_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test67300_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test67300_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht67307_
                              (let ((__tmp69880
                                     (make-table
                                      'size:
                                      _size67295_
                                      'test:
                                      _test67300_
                                      'hash:
                                      _hash67305_
                                      'weak-keys:
                                      _weak-keys67229_
                                      'weak-values:
                                      _weak-values67231_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp69880))))
                        (let ((__tmp69881
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock67234_ _ht67307_))))
                          (declare (not safe))
                          (_wrap-checked67235_ __tmp69881 true))))))
            (if (or _weak-keys67229_ _weak-values67231_)
                (let () (declare (not safe)) (_make-gambit-table67238_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test67221_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test67221_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash67223_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash67223_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash67223_ eq-hash)))
                         (let () (declare (not safe)) (not _seed67219_)))
                    (let () (declare (not safe)) (_make-gc-hash-table67237_))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test67221_ eq?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test67221_ ##eq?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash67223_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash67223_ eq?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash67223_ eq-hash))))
                        (let ()
                          (declare (not safe))
                          (_make67236_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test67221_ eqv?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test67221_ ##eqv?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _hash67223_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash67223_ eqv?-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash67223_ eqv-hash))))
                            (let ()
                              (declare (not safe))
                              (_make67236_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test67221_ eq?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test67221_ ##eq?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash67223_ symbolic-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash67223_ ##symbol-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make67236_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (let ()
                                               (declare (not safe))
                                               (eq? _test67221_ eq?))
                                             (let ()
                                               (declare (not safe))
                                               (eq? _test67221_ ##eq?)))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash67223_ immediate-hash)))
                                    (let ()
                                      (declare (not safe))
                                      (_make67236_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (let ()
                                                   (declare (not safe))
                                                   (eq? _test67221_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test67221_ ##equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test67221_ string=?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _test67221_
                                                        ##string=?)))
                                             (or (let ()
                                                   (declare (not safe))
                                                   (eq? _hash67223_
                                                        string-hash))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _hash67223_
                                                        ##string=?-hash))))
                                        (let ()
                                          (declare (not safe))
                                          (_make67236_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (let ()
                                                   (declare (not safe))
                                                   (eq? _test67221_ equal?))
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _hash67223_)))
                                            (let ()
                                              (declare (not safe))
                                              (_make67236_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp69882
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _test67221_))))
                                                  (declare (not safe))
                                                  (not __tmp69882))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _test67221_))
                                                (if (let ((__tmp69883
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _hash67223_))))
                                                      (declare (not safe))
                                                      (not __tmp69883))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _hash67223_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make67236_
                                                       make-generic-hash-table
                                                       true
                                                       _hash67223_
                                                       _test67221_))))))))))))))))
    (define make-hash-table__@
      (lambda (_keys6718967334_ . _args67336_)
        (apply make-hash-table__%
               _keys6718967334_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6718967334_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6718967334_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6718967334_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6718967334_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6718967334_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6718967334_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6718967334_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6718967334_
                  'weak-values:
                  absent-value))
               _args67336_)))
    (define make-hash-table
      (lambda _args6719867342_
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
               _args6719867342_)))
    (define make-hash-table-eq
      (lambda _args67186_ (apply make-hash-table 'test: eq? _args67186_)))
    (define make-hash-table-eqv
      (lambda _args67184_ (apply make-hash-table 'test: eqv? _args67184_)))
    (define make-hash-table-symbolic
      (lambda _args67182_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args67182_)))
    (define make-hash-table-string
      (lambda _args67180_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args67180_)))
    (define make-hash-table-immediate
      (lambda _args67178_
        (apply make-hash-table 'test: eq? 'hash: immediate-hash _args67178_)))
    (define list->hash-table
      (lambda (_lst67175_ . _args67176_)
        (let ((__tmp69884
               (apply make-hash-table 'size: (length _lst67175_) _args67176_)))
          (declare (not safe))
          (list->hash-table! _lst67175_ __tmp69884))))
    (define list->hash-table-eq
      (lambda (_lst67172_ . _args67173_)
        (let ((__tmp69885
               (apply make-hash-table-eq
                      'size:
                      (length _lst67172_)
                      _args67173_)))
          (declare (not safe))
          (list->hash-table! _lst67172_ __tmp69885))))
    (define list->hash-table-eqv
      (lambda (_lst67169_ . _args67170_)
        (let ((__tmp69886
               (apply make-hash-table-eqv
                      'size:
                      (length _lst67169_)
                      _args67170_)))
          (declare (not safe))
          (list->hash-table! _lst67169_ __tmp69886))))
    (define list->hash-table-symbolic
      (lambda (_lst67166_ . _args67167_)
        (let ((__tmp69887
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst67166_)
                      _args67167_)))
          (declare (not safe))
          (list->hash-table! _lst67166_ __tmp69887))))
    (define list->hash-table-string
      (lambda (_lst67163_ . _args67164_)
        (let ((__tmp69888
               (apply make-hash-table-string
                      'size:
                      (length _lst67163_)
                      _args67164_)))
          (declare (not safe))
          (list->hash-table! _lst67163_ __tmp69888))))
    (define list->hash-table-immediate
      (lambda (_lst67160_ . _args67161_)
        (let ((__tmp69889
               (apply make-hash-table-immediate
                      'size:
                      (length _lst67160_)
                      _args67161_)))
          (declare (not safe))
          (list->hash-table! _lst67160_ __tmp69889))))
    (define list->hash-table!
      (lambda (_lst67127_ _h67128_)
        (for-each
         (lambda (_el67130_)
           (let* ((_el6713167138_ _el67130_)
                  (_E6713367142_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el6713167138_))))
                  (_K6713467148_
                   (lambda (_v67145_ _k67146_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h67128_ _k67146_ _v67145_)))))
             (if (let () (declare (not safe)) (##pair? _el6713167138_))
                 (let ((_hd6713567151_
                        (let () (declare (not safe)) (##car _el6713167138_)))
                       (_tl6713667153_
                        (let () (declare (not safe)) (##cdr _el6713167138_))))
                   (let* ((_k67156_ _hd6713567151_) (_v67158_ _tl6713667153_))
                     (declare (not safe))
                     (_K6713467148_ _v67158_ _k67156_)))
                 (let () (declare (not safe)) (_E6713367142_)))))
         _lst67127_)
        _h67128_))
    (define plist->hash-table
      (lambda (_lst67124_ . _args67125_)
        (let ((__tmp69890
               (apply make-hash-table 'size: (length _lst67124_) _args67125_)))
          (declare (not safe))
          (plist->hash-table! _lst67124_ __tmp69890))))
    (define plist->hash-table-eq
      (lambda (_lst67121_ . _args67122_)
        (let ((__tmp69891
               (apply make-hash-table-eq
                      'size:
                      (length _lst67121_)
                      _args67122_)))
          (declare (not safe))
          (plist->hash-table! _lst67121_ __tmp69891))))
    (define plist->hash-table-eqv
      (lambda (_lst67118_ . _args67119_)
        (let ((__tmp69892
               (apply make-hash-table-eqv
                      'size:
                      (length _lst67118_)
                      _args67119_)))
          (declare (not safe))
          (plist->hash-table! _lst67118_ __tmp69892))))
    (define plist->hash-table-symbolic
      (lambda (_lst67115_ . _args67116_)
        (let ((__tmp69893
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst67115_)
                      _args67116_)))
          (declare (not safe))
          (plist->hash-table! _lst67115_ __tmp69893))))
    (define plist->hash-table-string
      (lambda (_lst67112_ . _args67113_)
        (let ((__tmp69894
               (apply make-hash-table-string
                      'size:
                      (length _lst67112_)
                      _args67113_)))
          (declare (not safe))
          (plist->hash-table! _lst67112_ __tmp69894))))
    (define plist->hash-table-immediate
      (lambda (_lst67109_ . _args67110_)
        (let ((__tmp69895
               (apply make-hash-table-immediate
                      'size:
                      (length _lst67109_)
                      _args67110_)))
          (declare (not safe))
          (plist->hash-table! _lst67109_ __tmp69895))))
    (define plist->hash-table!
      (lambda (_lst67049_ _h67050_)
        (let _loop67052_ ((_rest67054_ _lst67049_))
          (let* ((_rest6705567067_ _rest67054_)
                 (_else6705867075_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst67049_)))))
            (let ((_K6706167090_
                   (lambda (_rest67086_ _val67087_ _key67088_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h67050_ _key67088_ _val67087_))
                     (let () (declare (not safe)) (_loop67052_ _rest67086_))))
                  (_K6706067080_ (lambda () _h67050_)))
              (let ((_try-match6705767083_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest6705567067_))
                           (let () (declare (not safe)) (_K6706067080_))
                           (let () (declare (not safe)) (_else6705867075_))))))
                (if (let () (declare (not safe)) (##pair? _rest6705567067_))
                    (let ((_tl6706367095_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest6705567067_)))
                          (_hd6706267093_
                           (let ()
                             (declare (not safe))
                             (##car _rest6705567067_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl6706367095_))
                          (let ((_tl6706567102_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl6706367095_)))
                                (_hd6706467100_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl6706367095_))))
                            (let ((_key67098_ _hd6706267093_)
                                  (_val67105_ _hd6706467100_)
                                  (_rest67107_ _tl6706567102_))
                              (let ()
                                (declare (not safe))
                                (_K6706167090_
                                 _rest67107_
                                 _val67105_
                                 _key67098_))))
                          (let () (declare (not safe)) (_else6705867075_))))
                    (let ()
                      (declare (not safe))
                      (_try-match6705767083_)))))))))
    (define hash-length
      (lambda (_h67045_)
        (let ((_h67047_
               (if (and (let () (declare (not safe)) (##structure? _h67045_))
                        (let ((__tmp69896
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h67045_))))
                          (declare (not safe))
                          (eq? __tmp69896 HashTable::t)))
                   _h67045_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h67045_)))))
          (declare (not safe))
          (&HashTable-length _h67047_))))
    (define &hash-length
      (lambda (_h67043_)
        (let () (declare (not safe)) (&HashTable-length _h67043_))))
    (define hash-ref__%
      (lambda (_h67025_ _key67026_ _default67027_)
        (let ((_h67029_
               (if (and (let () (declare (not safe)) (##structure? _h67025_))
                        (let ((__tmp69897
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h67025_))))
                          (declare (not safe))
                          (eq? __tmp69897 HashTable::t)))
                   _h67025_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h67025_)))))
          (declare (not safe))
          (&hash-ref__% _h67029_ _key67026_ _default67027_))))
    (define hash-ref__0
      (lambda (_h67034_ _key67035_)
        (let ((_default67037_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h67034_ _key67035_ _default67037_))))
    (define hash-ref
      (lambda _g69899_
        (let ((_g69898_ (let () (declare (not safe)) (##length _g69899_))))
          (cond ((let () (declare (not safe)) (##fx= _g69898_ 2))
                 (apply (lambda (_h67034_ _key67035_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h67034_ _key67035_)))
                        _g69899_))
                ((let () (declare (not safe)) (##fx= _g69898_ 3))
                 (apply (lambda (_h67039_ _key67040_ _default67041_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h67039_ _key67040_ _default67041_)))
                        _g69899_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g69899_))))))
    (define &hash-ref__%
      (lambda (_h67006_ _key67007_ _default67008_)
        (let ((_result67010_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h67006_ _key67007_ _default67008_))))
          (if (let ((__tmp69900 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result67010_ __tmp69900))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h67006_
                 'key:
                 _key67007_))
              _result67010_))))
    (define &hash-ref__0
      (lambda (_h67015_ _key67016_)
        (let ((_default67018_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h67015_ _key67016_ _default67018_))))
    (define &hash-ref
      (lambda _g69902_
        (let ((_g69901_ (let () (declare (not safe)) (##length _g69902_))))
          (cond ((let () (declare (not safe)) (##fx= _g69901_ 2))
                 (apply (lambda (_h67015_ _key67016_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h67015_ _key67016_)))
                        _g69902_))
                ((let () (declare (not safe)) (##fx= _g69901_ 3))
                 (apply (lambda (_h67020_ _key67021_ _default67022_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h67020_ _key67021_ _default67022_)))
                        _g69902_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g69902_))))))
    (define hash-get
      (lambda (_h67000_ _key67001_)
        (let ((_h67003_
               (if (and (let () (declare (not safe)) (##structure? _h67000_))
                        (let ((__tmp69903
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h67000_))))
                          (declare (not safe))
                          (eq? __tmp69903 HashTable::t)))
                   _h67000_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h67000_)))))
          (declare (not safe))
          (&hash-get _h67003_ _key67001_))))
    (define &hash-get
      (lambda (_h66997_ _key66998_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h66997_ _key66998_ '#f))))
    (define hash-put!
      (lambda (_h66991_ _key66992_ _value66993_)
        (let ((_h66995_
               (if (and (let () (declare (not safe)) (##structure? _h66991_))
                        (let ((__tmp69904
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h66991_))))
                          (declare (not safe))
                          (eq? __tmp69904 HashTable::t)))
                   _h66991_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h66991_)))))
          (declare (not safe))
          (&HashTable-set! _h66995_ _key66992_ _value66993_))))
    (define &hash-put!
      (lambda (_h66987_ _key66988_ _value66989_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h66987_ _key66988_ _value66989_))))
    (define hash-update!__%
      (lambda (_h66966_ _key66967_ _update66968_ _default66969_)
        (let ((_h66971_
               (if (and (let () (declare (not safe)) (##structure? _h66966_))
                        (let ((__tmp69905
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h66966_))))
                          (declare (not safe))
                          (eq? __tmp69905 HashTable::t)))
                   _h66966_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h66966_)))))
          (declare (not safe))
          (&HashTable-update!
           _h66971_
           _key66967_
           _update66968_
           _default66969_))))
    (define hash-update!__0
      (lambda (_h66976_ _key66977_ _update66978_)
        (let ((_default66980_ '#!void))
          (declare (not safe))
          (hash-update!__% _h66976_ _key66977_ _update66978_ _default66980_))))
    (define hash-update!
      (lambda _g69907_
        (let ((_g69906_ (let () (declare (not safe)) (##length _g69907_))))
          (cond ((let () (declare (not safe)) (##fx= _g69906_ 3))
                 (apply (lambda (_h66976_ _key66977_ _update66978_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h66976_
                             _key66977_
                             _update66978_)))
                        _g69907_))
                ((let () (declare (not safe)) (##fx= _g69906_ 4))
                 (apply (lambda (_h66982_
                                 _key66983_
                                 _update66984_
                                 _default66985_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h66982_
                             _key66983_
                             _update66984_
                             _default66985_)))
                        _g69907_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g69907_))))))
    (define &hash-update!__%
      (lambda (_h66946_ _key66947_ _update66948_ _default66949_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h66946_
           _key66947_
           _update66948_
           _default66949_))))
    (define &hash-update!__0
      (lambda (_h66954_ _key66955_ _update66956_)
        (let ((_default66958_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h66954_
           _key66955_
           _update66956_
           _default66958_))))
    (define &hash-update!
      (lambda _g69909_
        (let ((_g69908_ (let () (declare (not safe)) (##length _g69909_))))
          (cond ((let () (declare (not safe)) (##fx= _g69908_ 3))
                 (apply (lambda (_h66954_ _key66955_ _update66956_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h66954_
                             _key66955_
                             _update66956_)))
                        _g69909_))
                ((let () (declare (not safe)) (##fx= _g69908_ 4))
                 (apply (lambda (_h66960_
                                 _key66961_
                                 _update66962_
                                 _default66963_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h66960_
                             _key66961_
                             _update66962_
                             _default66963_)))
                        _g69909_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g69909_))))))
    (define hash-remove!
      (lambda (_h66940_ _key66941_)
        (let ((_h66943_
               (if (and (let () (declare (not safe)) (##structure? _h66940_))
                        (let ((__tmp69910
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h66940_))))
                          (declare (not safe))
                          (eq? __tmp69910 HashTable::t)))
                   _h66940_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h66940_)))))
          (declare (not safe))
          (&HashTable-delete! _h66943_ _key66941_))))
    (define &hash-remove!
      (lambda (_h66937_ _key66938_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h66937_ _key66938_))))
    (define hash-key?
      (lambda (_h66932_ _k66933_)
        (let ((_h66935_
               (if (and (let () (declare (not safe)) (##structure? _h66932_))
                        (let ((__tmp69911
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h66932_))))
                          (declare (not safe))
                          (eq? __tmp69911 HashTable::t)))
                   _h66932_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h66932_)))))
          (declare (not safe))
          (&hash-key? _h66935_ _k66933_))))
    (define &hash-key?
      (lambda (_h66929_ _k66930_)
        (let ((__tmp69912
               (let ((__tmp69913
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h66929_ _k66930_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp69913 absent-value))))
          (declare (not safe))
          (not __tmp69912))))
    (define hash->list
      (lambda (_h66925_)
        (let ((_h66927_
               (if (and (let () (declare (not safe)) (##structure? _h66925_))
                        (let ((__tmp69914
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h66925_))))
                          (declare (not safe))
                          (eq? __tmp69914 HashTable::t)))
                   _h66925_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h66925_)))))
          (declare (not safe))
          (&hash->list _h66927_))))
    (define &hash->list
      (lambda (_h66918_)
        (let ((_lst66920_ '()))
          (let ((__tmp69915
                 (lambda (_k66922_ _v66923_)
                   (set! _lst66920_
                         (let ((__tmp69916
                                (let ()
                                  (declare (not safe))
                                  (cons _k66922_ _v66923_))))
                           (declare (not safe))
                           (cons __tmp69916 _lst66920_))))))
            (declare (not safe))
            (&HashTable-for-each _h66918_ __tmp69915))
          _lst66920_)))
    (define hash->plist
      (lambda (_h66914_)
        (let ((_h66916_
               (if (and (let () (declare (not safe)) (##structure? _h66914_))
                        (let ((__tmp69917
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h66914_))))
                          (declare (not safe))
                          (eq? __tmp69917 HashTable::t)))
                   _h66914_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h66914_)))))
          (declare (not safe))
          (&hash->plist _h66916_))))
    (define &hash->plist
      (lambda (_h66907_)
        (let ((_lst66909_ '()))
          (let ((__tmp69918
                 (lambda (_k66911_ _v66912_)
                   (set! _lst66909_
                         (let ((__tmp69919
                                (let ()
                                  (declare (not safe))
                                  (cons _v66912_ _lst66909_))))
                           (declare (not safe))
                           (cons _k66911_ __tmp69919))))))
            (declare (not safe))
            (&HashTable-for-each _h66907_ __tmp69918))
          _lst66909_)))
    (define hash-for-each
      (lambda (_proc66904_ _h66905_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h66905_ _proc66904_))))
    (define hash-map
      (lambda (_proc66896_ _h66897_)
        (let ((_result66899_ '()))
          (let ((__tmp69920
                 (lambda (_k66901_ _v66902_)
                   (set! _result66899_
                         (let ((__tmp69921 (_proc66896_ _k66901_ _v66902_)))
                           (declare (not safe))
                           (cons __tmp69921 _result66899_))))))
            (declare (not safe))
            (HashTable-for-each _h66897_ __tmp69920))
          _result66899_)))
    (define hash-fold
      (lambda (_proc66887_ _iv66888_ _h66889_)
        (let ((_result66891_ _iv66888_))
          (let ((__tmp69922
                 (lambda (_k66893_ _v66894_)
                   (set! _result66891_
                         (_proc66887_ _k66893_ _v66894_ _result66891_)))))
            (declare (not safe))
            (HashTable-for-each _h66889_ __tmp69922))
          _result66891_)))
    (define hash-find__%
      (lambda (_proc66863_ _h66864_ _default-value66865_)
        (call/cc (lambda (_return66867_)
                   (let ((__tmp69923
                          (lambda (_k66869_ _v66870_)
                            (let ((_$e66872_ (_proc66863_ _k66869_ _v66870_)))
                              (if _$e66872_
                                  (_return66867_ _$e66872_)
                                  '#!void)))))
                     (declare (not safe))
                     (HashTable-for-each _h66864_ __tmp69923))
                   _default-value66865_))))
    (define hash-find__0
      (lambda (_proc66878_ _h66879_)
        (let ((_default-value66881_ '#f))
          (declare (not safe))
          (hash-find__% _proc66878_ _h66879_ _default-value66881_))))
    (define hash-find
      (lambda _g69925_
        (let ((_g69924_ (let () (declare (not safe)) (##length _g69925_))))
          (cond ((let () (declare (not safe)) (##fx= _g69924_ 2))
                 (apply (lambda (_proc66878_ _h66879_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc66878_ _h66879_)))
                        _g69925_))
                ((let () (declare (not safe)) (##fx= _g69924_ 3))
                 (apply (lambda (_proc66883_ _h66884_ _default-value66885_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc66883_
                             _h66884_
                             _default-value66885_)))
                        _g69925_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g69925_))))))
    (define hash-keys
      (lambda (_h66858_)
        (let ((_h66860_
               (if (and (let () (declare (not safe)) (##structure? _h66858_))
                        (let ((__tmp69926
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h66858_))))
                          (declare (not safe))
                          (eq? __tmp69926 HashTable::t)))
                   _h66858_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h66858_)))))
          (declare (not safe))
          (&hash-keys _h66860_))))
    (define &hash-keys
      (lambda (_h66851_)
        (let ((_result66853_ '()))
          (let ((__tmp69927
                 (lambda (_k66855_ _v66856_)
                   (set! _result66853_
                         (let ()
                           (declare (not safe))
                           (cons _k66855_ _result66853_))))))
            (declare (not safe))
            (&HashTable-for-each _h66851_ __tmp69927))
          _result66853_)))
    (define hash-values
      (lambda (_h66847_)
        (let ((_h66849_
               (if (and (let () (declare (not safe)) (##structure? _h66847_))
                        (let ((__tmp69928
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h66847_))))
                          (declare (not safe))
                          (eq? __tmp69928 HashTable::t)))
                   _h66847_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h66847_)))))
          (declare (not safe))
          (&hash-values _h66849_))))
    (define &hash-values
      (lambda (_h66840_)
        (let ((_result66842_ '()))
          (let ((__tmp69929
                 (lambda (_k66844_ _v66845_)
                   (set! _result66842_
                         (let ()
                           (declare (not safe))
                           (cons _v66845_ _result66842_))))))
            (declare (not safe))
            (&HashTable-for-each _h66840_ __tmp69929))
          _result66842_)))
    (define hash-copy
      (lambda (_h66836_)
        (let ((_h66838_
               (if (and (let () (declare (not safe)) (##structure? _h66836_))
                        (let ((__tmp69930
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h66836_))))
                          (declare (not safe))
                          (eq? __tmp69930 HashTable::t)))
                   _h66836_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h66836_)))))
          (declare (not safe))
          (&HashTable-copy _h66838_))))
    (define &hash-copy
      (lambda (_h66834_)
        (let () (declare (not safe)) (&HashTable-copy _h66834_))))
    (define hash-merge
      (lambda (_h66829_ . _rest66830_)
        (let ((_copy66832_ (let () (declare (not safe)) (hash-copy _h66829_))))
          (apply hash-merge! _copy66832_ _rest66830_)
          _copy66832_)))
    (define hash-merge!
      (lambda (_h66819_ . _rest66820_)
        (let ((_h66822_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h66819_))))
          (for-each
           (lambda (_hr66824_)
             (let ((__tmp69931
                    (lambda (_k66826_ _v66827_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h66822_ _k66826_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h66822_ _k66826_ _v66827_))))))
               (declare (not safe))
               (hash-for-each __tmp69931 _hr66824_)))
           _rest66820_)
          _h66822_)))))
