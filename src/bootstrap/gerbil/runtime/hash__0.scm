(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1708387687)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp71795 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp71795
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args71698_
        (apply make-instance UnboundKeyError::t _$args71698_)))
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
      (lambda (_where71572_ _message71573_ . _irritants71574_)
        (raise (let ((__obj71792
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj71792
                  _message71573_
                  'where:
                  _where71572_
                  'irritants:
                  _irritants71574_)
                 __obj71792))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp71800 (list interface-instance::t))
            (__tmp71796
             (let ((__tmp71799
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp71797
                    (let ((__tmp71798
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp71798 '()))))
               (declare (not safe))
               (cons __tmp71799 __tmp71797))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp71800
         '(ref set! update! delete! for-each length copy clear)
         __tmp71796
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
      (let ((__tmp71805 (list interface-instance::t))
            (__tmp71801
             (let ((__tmp71804
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp71802
                    (let ((__tmp71803
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp71803 '()))))
               (declare (not safe))
               (cons __tmp71804 __tmp71802))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp71805
         '(begin-read! end-read! begin-write! end-write!)
         __tmp71801
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
    (define gambit-table-update!
      (lambda (_table71565_ _key71566_ _update71567_ _default71568_)
        (let ((_result71570_
               (table-ref _table71565_ _key71566_ _default71568_)))
          (table-set!
           _table71565_
           _key71566_
           (_update71567_ _default71568_)))))
    (define gambit-table-for-each
      (lambda (_table71562_ _proc71563_)
        (table-for-each _proc71563_ _table71562_)))
    (define gambit-table-clear!
      (lambda (_table71560_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table71560_ '0 '5 '#f '#f))))
    (let ((__tmp71806 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71806 'ref table-ref))
    (let ((__tmp71807 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71807 'set! table-set!))
    (let ((__tmp71808 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71808 'update! gambit-table-update!))
    (let ((__tmp71809 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71809 'delete! table-set!))
    (let ((__tmp71810 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71810 'for-each gambit-table-for-each))
    (let ((__tmp71811 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71811 'length table-length))
    (let ((__tmp71812 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71812 'copy table-copy))
    (let ((__tmp71813 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71813 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots71542_ '(table count free hash test seed))
             (_slot-vector71544_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots71542_))))
             (_slot-table71551_
              (let ((_slot-table71546_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot71548_ _field71549_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table71546_
                      _slot71548_
                      _field71549_))
                   (let ((__tmp71814 (symbol->keyword _slot71548_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table71546_
                      __tmp71814
                      _field71549_)))
                 _slots71542_
                 (let ((__tmp71815 (length _slots71542_)))
                   (declare (not safe))
                   (iota__1 __tmp71815 '1)))
                _slot-table71546_))
             (_flags71553_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields71555_ '#())
             (_properties71557_
              (let ((__tmp71818
                     (let ((__tmp71819
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots71542_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp71819)))
                    (__tmp71816
                     (let ((__tmp71817
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp71817 '()))))
                (declare (not safe))
                (cons __tmp71818 __tmp71816))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags71553_
           __table::t
           _fields71555_
           '()
           _slot-vector71544_
           _slot-table71551_
           _properties71557_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp71824 (list))
            (__tmp71820
             (let ((__tmp71823
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp71821
                    (let ((__tmp71822
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp71822 '()))))
               (declare (not safe))
               (cons __tmp71823 __tmp71821))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp71824
         '(table lock)
         __tmp71820
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args71539_
        (apply make-instance locked-hash-table::t _$args71539_)))
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
      (let ((__tmp71829 (list))
            (__tmp71825
             (let ((__tmp71828
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp71826
                    (let ((__tmp71827
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp71827 '()))))
               (declare (not safe))
               (cons __tmp71828 __tmp71826))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp71829
         '(table key-check)
         __tmp71825
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args71536_
        (apply make-instance checked-hash-table::t _$args71536_)))
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
      (let ((__tmp71832 (list hash-table::t))
            (__tmp71830
             (let ((__tmp71831
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71831 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp71832
         '()
         __tmp71830
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args71533_
        (apply make-instance eq-hash-table::t _$args71533_)))
    (define eqv-hash-table::t
      (let ((__tmp71835 (list hash-table::t))
            (__tmp71833
             (let ((__tmp71834
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71834 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp71835
         '()
         __tmp71833
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args71530_
        (apply make-instance eqv-hash-table::t _$args71530_)))
    (define symbol-hash-table::t
      (let ((__tmp71838 (list hash-table::t))
            (__tmp71836
             (let ((__tmp71837
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71837 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp71838
         '()
         __tmp71836
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args71527_
        (apply make-instance symbol-hash-table::t _$args71527_)))
    (define string-hash-table::t
      (let ((__tmp71841 (list hash-table::t))
            (__tmp71839
             (let ((__tmp71840
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71840 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp71841
         '()
         __tmp71839
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args71524_
        (apply make-instance string-hash-table::t _$args71524_)))
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
    (define hash-table?
      (lambda (_obj71522_)
        (if (let () (declare (not safe)) (##structure? _obj71522_))
            (let ((__tmp71842
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj71522_))))
              (declare (not safe))
              (eq? __tmp71842 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj71517_)
        (let ((_$e71519_
               (if (let () (declare (not safe)) (##structure? _obj71517_))
                   (let ((__tmp71843
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj71517_))))
                     (declare (not safe))
                     (eq? __tmp71843 HashTable::t))
                   '#f)))
          (if _$e71519_
              _$e71519_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj71517_))))))
    (define HashTable-ref
      (lambda (_h71511_ _key71512_ _default71513_)
        (let ((_h71515_
               (if (and (let () (declare (not safe)) (##structure? _h71511_))
                        (let ((__tmp71844
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71511_))))
                          (declare (not safe))
                          (eq? __tmp71844 HashTable::t)))
                   _h71511_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71511_)))))
          (declare (not safe))
          (&HashTable-ref _h71515_ _key71512_ _default71513_))))
    (define &HashTable-ref
      (lambda (_h71506_ _key71507_ _default71508_)
        (declare (not safe))
        ((##unchecked-structure-ref _h71506_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h71506_ '1 interface-instance::t '#f)
         _key71507_
         _default71508_)))
    (define HashTable-set!
      (lambda (_h71500_ _key71501_ _value71502_)
        (let ((_h71504_
               (if (and (let () (declare (not safe)) (##structure? _h71500_))
                        (let ((__tmp71845
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71500_))))
                          (declare (not safe))
                          (eq? __tmp71845 HashTable::t)))
                   _h71500_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71500_)))))
          (declare (not safe))
          (&HashTable-set! _h71504_ _key71501_ _value71502_))))
    (define &HashTable-set!
      (lambda (_h71495_ _key71496_ _value71497_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71495_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h71495_ '1 interface-instance::t '#f)
           _key71496_
           _value71497_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h71488_ _key71489_ _update71490_ _default71491_)
        (let ((_h71493_
               (if (and (let () (declare (not safe)) (##structure? _h71488_))
                        (let ((__tmp71846
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71488_))))
                          (declare (not safe))
                          (eq? __tmp71846 HashTable::t)))
                   _h71488_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71488_)))))
          (declare (not safe))
          (&HashTable-update!
           _h71493_
           _key71489_
           _update71490_
           _default71491_))))
    (define &HashTable-update!
      (lambda (_h71482_ _key71483_ _update71484_ _default71485_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71482_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h71482_ '1 interface-instance::t '#f)
           _key71483_
           _update71484_
           _default71485_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h71477_ _key71478_)
        (let ((_h71480_
               (if (and (let () (declare (not safe)) (##structure? _h71477_))
                        (let ((__tmp71847
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71477_))))
                          (declare (not safe))
                          (eq? __tmp71847 HashTable::t)))
                   _h71477_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71477_)))))
          (declare (not safe))
          (&HashTable-delete! _h71480_ _key71478_))))
    (define &HashTable-delete!
      (lambda (_h71473_ _key71474_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71473_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h71473_ '1 interface-instance::t '#f)
           _key71474_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h71468_ _proc71469_)
        (let ((_h71471_
               (if (and (let () (declare (not safe)) (##structure? _h71468_))
                        (let ((__tmp71848
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71468_))))
                          (declare (not safe))
                          (eq? __tmp71848 HashTable::t)))
                   _h71468_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71468_)))))
          (declare (not safe))
          (&HashTable-for-each _h71471_ _proc71469_))))
    (define &HashTable-for-each
      (lambda (_h71464_ _proc71465_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71464_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h71464_ '1 interface-instance::t '#f)
           _proc71465_)
          '#!void)))
    (define HashTable-length
      (lambda (_h71460_)
        (let ((_h71462_
               (if (and (let () (declare (not safe)) (##structure? _h71460_))
                        (let ((__tmp71849
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71460_))))
                          (declare (not safe))
                          (eq? __tmp71849 HashTable::t)))
                   _h71460_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71460_)))))
          (declare (not safe))
          (&HashTable-length _h71462_))))
    (define &HashTable-length
      (lambda (_h71457_)
        (declare (not safe))
        ((##unchecked-structure-ref _h71457_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h71457_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h71453_)
        (let ((_h71455_
               (if (and (let () (declare (not safe)) (##structure? _h71453_))
                        (let ((__tmp71850
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71453_))))
                          (declare (not safe))
                          (eq? __tmp71850 HashTable::t)))
                   _h71453_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71453_)))))
          (declare (not safe))
          (&HashTable-copy _h71455_))))
    (define &HashTable-copy
      (lambda (_h71450_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h71450_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h71450_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h71446_)
        (let ((_h71448_
               (if (and (let () (declare (not safe)) (##structure? _h71446_))
                        (let ((__tmp71851
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71446_))))
                          (declare (not safe))
                          (eq? __tmp71851 HashTable::t)))
                   _h71446_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71446_)))))
          (declare (not safe))
          (&HashTable-clear! _h71448_))))
    (define &HashTable-clear!
      (lambda (_h71443_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71443_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h71443_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl71440_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl71440_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl71440_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl71437_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl71437_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl71437_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl71434_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl71434_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl71434_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl71431_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl71431_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl71431_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref68470_
      (lambda (_self71418_ _key71420_ _default71421_)
        (let ((_h71423_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71418_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71425_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71418_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71425_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h71423_ _key71420_ _default71421_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71425_)))))))
    (define locked-hash-table::ref::specialize
      (lambda (__t71700)
        (let ((__lock71701
               (let ((__tmp71703
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71700 'lock))))
                 (if __tmp71703
                     __tmp71703
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock)))))
              (__table71702
               (let ((__tmp71704
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71700 'table))))
                 (if __tmp71704
                     __tmp71704
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self71418_ _key71420_ _default71421_)
            (let ((_h71423_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71418_
                      __table71702
                      __t71700
                      '#f)))
                  (_l71425_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71418_
                      __lock71701
                      __t71700
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l71425_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-ref _h71423_ _key71420_ _default71421_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l71425_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::ref68470_
       locked-hash-table::ref::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref68470_
       '#f))
    (define _locked-hash-table::set!68472_
      (lambda (_self71282_ _key71284_ _value71285_)
        (let ((_h71287_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71282_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71289_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71282_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71289_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h71287_ _key71284_ _value71285_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71289_)))))))
    (define locked-hash-table::set!::specialize
      (lambda (__t71705)
        (let ((__table71706
               (let ((__tmp71708
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71705 'table))))
                 (if __tmp71708
                     __tmp71708
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__lock71707
               (let ((__tmp71709
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71705 'lock))))
                 (if __tmp71709
                     __tmp71709
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock))))))
          (lambda (_self71282_ _key71284_ _value71285_)
            (let ((_h71287_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71282_
                      __table71706
                      __t71705
                      '#f)))
                  (_l71289_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71282_
                      __lock71707
                      __t71705
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l71289_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-set! _h71287_ _key71284_ _value71285_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l71289_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::set!68472_
       locked-hash-table::set!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!68472_
       '#f))
    (define _locked-hash-table::update!68474_
      (lambda (_self71145_ _key71147_ _update71148_ _default71149_)
        (let ((_h71151_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71145_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71153_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71145_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71153_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h71151_
                _key71147_
                _update71148_
                _default71149_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71153_)))))))
    (define locked-hash-table::update!::specialize
      (lambda (__t71710)
        (let ((__table71711
               (let ((__tmp71713
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71710 'table))))
                 (if __tmp71713
                     __tmp71713
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__lock71712
               (let ((__tmp71714
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71710 'lock))))
                 (if __tmp71714
                     __tmp71714
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock))))))
          (lambda (_self71145_ _key71147_ _update71148_ _default71149_)
            (let ((_h71151_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71145_
                      __table71711
                      __t71710
                      '#f)))
                  (_l71153_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71145_
                      __lock71712
                      __t71710
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l71153_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-update!
                    _h71151_
                    _key71147_
                    _update71148_
                    _default71149_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l71153_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::update!68474_
       locked-hash-table::update!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!68474_
       '#f))
    (define _locked-hash-table::delete!68476_
      (lambda (_self71010_ _key71012_)
        (let ((_h71014_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71010_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71016_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71010_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71016_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h71014_ _key71012_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71016_)))))))
    (define locked-hash-table::delete!::specialize
      (lambda (__t71715)
        (let ((__table71716
               (let ((__tmp71718
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71715 'table))))
                 (if __tmp71718
                     __tmp71718
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__lock71717
               (let ((__tmp71719
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71715 'lock))))
                 (if __tmp71719
                     __tmp71719
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock))))))
          (lambda (_self71010_ _key71012_)
            (let ((_h71014_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71010_
                      __table71716
                      __t71715
                      '#f)))
                  (_l71016_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71010_
                      __lock71717
                      __t71715
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l71016_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-delete! _h71014_ _key71012_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l71016_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::delete!68476_
       locked-hash-table::delete!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!68476_
       '#f))
    (define _locked-hash-table::for-each68478_
      (lambda (_self70875_ _proc70877_)
        (let ((_h70879_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70875_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70881_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70875_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l70881_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h70879_ _proc70877_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l70881_)))))))
    (define locked-hash-table::for-each::specialize
      (lambda (__t71720)
        (let ((__lock71721
               (let ((__tmp71723
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71720 'lock))))
                 (if __tmp71723
                     __tmp71723
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock)))))
              (__table71722
               (let ((__tmp71724
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71720 'table))))
                 (if __tmp71724
                     __tmp71724
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self70875_ _proc70877_)
            (let ((_h70879_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70875_
                      __table71722
                      __t71720
                      '#f)))
                  (_l70881_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70875_
                      __lock71721
                      __t71720
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l70881_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-for-each _h70879_ _proc70877_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l70881_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::for-each68478_
       locked-hash-table::for-each::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each68478_
       '#f))
    (define _locked-hash-table::length68480_
      (lambda (_self70741_)
        (let ((_h70744_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70741_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70746_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70741_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l70746_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h70744_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l70746_)))))))
    (define locked-hash-table::length::specialize
      (lambda (__t71725)
        (let ((__lock71726
               (let ((__tmp71728
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71725 'lock))))
                 (if __tmp71728
                     __tmp71728
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock)))))
              (__table71727
               (let ((__tmp71729
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71725 'table))))
                 (if __tmp71729
                     __tmp71729
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self70741_)
            (let ((_h70744_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70741_
                      __table71727
                      __t71725
                      '#f)))
                  (_l70746_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70741_
                      __lock71726
                      __t71725
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l70746_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-length _h70744_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l70746_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::length68480_
       locked-hash-table::length::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length68480_
       '#f))
    (define _locked-hash-table::copy68482_
      (lambda (_self70607_)
        (let ((_h70610_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70607_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70612_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70607_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l70612_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h70610_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l70612_)))))))
    (define locked-hash-table::copy::specialize
      (lambda (__t71730)
        (let ((__table71731
               (let ((__tmp71733
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71730 'table))))
                 (if __tmp71733
                     __tmp71733
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__lock71732
               (let ((__tmp71734
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71730 'lock))))
                 (if __tmp71734
                     __tmp71734
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock))))))
          (lambda (_self70607_)
            (let ((_h70610_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70607_
                      __table71731
                      __t71730
                      '#f)))
                  (_l70612_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70607_
                      __lock71732
                      __t71730
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l70612_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-copy _h70610_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l70612_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::copy68482_
       locked-hash-table::copy::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy68482_
       '#f))
    (define _locked-hash-table::clear!68484_
      (lambda (_self70473_)
        (let ((_h70476_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70473_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70478_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70473_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l70478_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h70476_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l70478_)))))))
    (define locked-hash-table::clear!::specialize
      (lambda (__t71735)
        (let ((__table71736
               (let ((__tmp71738
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71735 'table))))
                 (if __tmp71738
                     __tmp71738
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__lock71737
               (let ((__tmp71739
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71735 'lock))))
                 (if __tmp71739
                     __tmp71739
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock))))))
          (lambda (_self70473_)
            (let ((_h70476_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70473_
                      __table71736
                      __t71735
                      '#f)))
                  (_l70478_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70473_
                      __lock71737
                      __t71735
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l70478_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-clear! _h70476_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l70478_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::clear!68484_
       locked-hash-table::clear!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!68484_
       '#f))
    (let ((__tmp71852 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp71852 'begin-read! mutex-lock!))
    (let ((__tmp71853 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp71853 'end-read! mutex-unlock!))
    (let ((__tmp71854 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp71854 'begin-write! mutex-lock!))
    (let ((__tmp71855 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp71855 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref68762_
      (lambda (_self70337_ _key70338_ _default70339_)
        (let ((_h70341_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70337_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70343_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70337_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7034570347_)
             (if (_g7034570347_ _key70338_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key70338_))))
           _key?70343_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h70341_ _key70338_ _default70339_)))))
    (define checked-hash-table::ref::specialize
      (lambda (__t71740)
        (let ((__table71741
               (let ((__tmp71743
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71740 'table))))
                 (if __tmp71743
                     __tmp71743
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__key-check71742
               (let ((__tmp71744
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71740 'key-check))))
                 (if __tmp71744
                     __tmp71744
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check))))))
          (lambda (_self70337_ _key70338_ _default70339_)
            (let ((_h70341_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70337_
                      __table71741
                      __t71740
                      '#f)))
                  (_key?70343_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70337_
                      __key-check71742
                      __t71740
                      '#f))))
              ((lambda (_g7034570347_)
                 (if (_g7034570347_ _key70338_)
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _key70338_))))
               _key?70343_)
              (let ()
                (declare (not safe))
                (&HashTable-ref _h70341_ _key70338_ _default70339_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::ref68762_
       checked-hash-table::ref::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref68762_
       '#f))
    (define _checked-hash-table::set!68764_
      (lambda (_self70201_ _key70202_ _value70203_)
        (let ((_h70205_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70201_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70207_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70201_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7020970211_)
             (if (_g7020970211_ _key70202_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key70202_))))
           _key?70207_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h70205_ _key70202_ _value70203_)))))
    (define checked-hash-table::set!::specialize
      (lambda (__t71745)
        (let ((__key-check71746
               (let ((__tmp71748
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71745 'key-check))))
                 (if __tmp71748
                     __tmp71748
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check)))))
              (__table71747
               (let ((__tmp71749
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71745 'table))))
                 (if __tmp71749
                     __tmp71749
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self70201_ _key70202_ _value70203_)
            (let ((_h70205_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70201_
                      __table71747
                      __t71745
                      '#f)))
                  (_key?70207_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70201_
                      __key-check71746
                      __t71745
                      '#f))))
              ((lambda (_g7020970211_)
                 (if (_g7020970211_ _key70202_)
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _key70202_))))
               _key?70207_)
              (let ()
                (declare (not safe))
                (&HashTable-set! _h70205_ _key70202_ _value70203_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::set!68764_
       checked-hash-table::set!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!68764_
       '#f))
    (define _checked-hash-table::update!68766_
      (lambda (_self70066_ _key70067_ _update70068_ _default70069_)
        (let ((_h70071_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70066_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70073_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70066_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?70076_)
             (if (_key?70076_ _key70067_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key70067_)))
             (if (let () (declare (not safe)) (procedure? _update70068_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update70068_))))
           _key?70073_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h70071_
             _key70067_
             _update70068_
             _default70069_)))))
    (define checked-hash-table::update!::specialize
      (lambda (__t71750)
        (let ((__key-check71751
               (let ((__tmp71753
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71750 'key-check))))
                 (if __tmp71753
                     __tmp71753
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check)))))
              (__table71752
               (let ((__tmp71754
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71750 'table))))
                 (if __tmp71754
                     __tmp71754
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self70066_ _key70067_ _update70068_ _default70069_)
            (let ((_h70071_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70066_
                      __table71752
                      __t71750
                      '#f)))
                  (_key?70073_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70066_
                      __key-check71751
                      __t71750
                      '#f))))
              ((lambda (_key?70076_)
                 (if (_key?70076_ _key70067_)
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _key70067_)))
                 (if (let () (declare (not safe)) (procedure? _update70068_))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _update70068_))))
               _key?70073_)
              (let ()
                (declare (not safe))
                (&HashTable-update!
                 _h70071_
                 _key70067_
                 _update70068_
                 _default70069_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::update!68766_
       checked-hash-table::update!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!68766_
       '#f))
    (define _checked-hash-table::delete!68768_
      (lambda (_self69931_ _key69932_)
        (let ((_h69934_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69931_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69936_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69931_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g6993869940_)
             (if (_g6993869940_ _key69932_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key69932_))))
           _key?69936_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h69934_ _key69932_)))))
    (define checked-hash-table::delete!::specialize
      (lambda (__t71755)
        (let ((__table71756
               (let ((__tmp71758
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71755 'table))))
                 (if __tmp71758
                     __tmp71758
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__key-check71757
               (let ((__tmp71759
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71755 'key-check))))
                 (if __tmp71759
                     __tmp71759
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check))))))
          (lambda (_self69931_ _key69932_)
            (let ((_h69934_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69931_
                      __table71756
                      __t71755
                      '#f)))
                  (_key?69936_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69931_
                      __key-check71757
                      __t71755
                      '#f))))
              ((lambda (_g6993869940_)
                 (if (_g6993869940_ _key69932_)
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _key69932_))))
               _key?69936_)
              (let ()
                (declare (not safe))
                (&HashTable-delete! _h69934_ _key69932_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::delete!68768_
       checked-hash-table::delete!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!68768_
       '#f))
    (define _checked-hash-table::for-each68770_
      (lambda (_self69799_ _proc69800_)
        (let ((_h69802_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69799_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69804_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69799_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g71856_)
             (if (let () (declare (not safe)) (procedure? _proc69800_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc69800_))))
           _key?69804_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h69802_ _proc69800_)))))
    (define checked-hash-table::for-each::specialize
      (lambda (__t71760)
        (let ((__table71761
               (let ((__tmp71763
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71760 'table))))
                 (if __tmp71763
                     __tmp71763
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__key-check71762
               (let ((__tmp71764
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71760 'key-check))))
                 (if __tmp71764
                     __tmp71764
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check))))))
          (lambda (_self69799_ _proc69800_)
            (let ((_h69802_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69799_
                      __table71761
                      __t71760
                      '#f)))
                  (_key?69804_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69799_
                      __key-check71762
                      __t71760
                      '#f))))
              ((lambda (_g71857_)
                 (if (let () (declare (not safe)) (procedure? _proc69800_))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _proc69800_))))
               _key?69804_)
              (let ()
                (declare (not safe))
                (&HashTable-for-each _h69802_ _proc69800_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::for-each68770_
       checked-hash-table::for-each::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each68770_
       '#f))
    (define _checked-hash-table::length68772_
      (lambda (_self69669_)
        (let ((_h69671_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69669_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69673_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69669_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h69671_)))))
    (define checked-hash-table::length::specialize
      (lambda (__t71765)
        (let ((__table71766
               (let ((__tmp71768
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71765 'table))))
                 (if __tmp71768
                     __tmp71768
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__key-check71767
               (let ((__tmp71769
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71765 'key-check))))
                 (if __tmp71769
                     __tmp71769
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check))))))
          (lambda (_self69669_)
            (let ((_h69671_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69669_
                      __table71766
                      __t71765
                      '#f)))
                  (_key?69673_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69669_
                      __key-check71767
                      __t71765
                      '#f))))
              (let () (declare (not safe)) (&HashTable-length _h69671_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::length68772_
       checked-hash-table::length::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length68772_
       '#f))
    (define _checked-hash-table::copy68774_
      (lambda (_self69539_)
        (let ((_h69541_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69539_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69543_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69539_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h69541_)))))
    (define checked-hash-table::copy::specialize
      (lambda (__t71770)
        (let ((__table71771
               (let ((__tmp71773
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71770 'table))))
                 (if __tmp71773
                     __tmp71773
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__key-check71772
               (let ((__tmp71774
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71770 'key-check))))
                 (if __tmp71774
                     __tmp71774
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check))))))
          (lambda (_self69539_)
            (let ((_h69541_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69539_
                      __table71771
                      __t71770
                      '#f)))
                  (_key?69543_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69539_
                      __key-check71772
                      __t71770
                      '#f))))
              (let () (declare (not safe)) (&HashTable-copy _h69541_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::copy68774_
       checked-hash-table::copy::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy68774_
       '#f))
    (define _checked-hash-table::clear!68776_
      (lambda (_self69409_)
        (let ((_h69411_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69409_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69413_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69409_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h69411_)))))
    (define checked-hash-table::clear!::specialize
      (lambda (__t71775)
        (let ((__key-check71776
               (let ((__tmp71778
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71775 'key-check))))
                 (if __tmp71778
                     __tmp71778
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check)))))
              (__table71777
               (let ((__tmp71779
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71775 'table))))
                 (if __tmp71779
                     __tmp71779
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self69409_)
            (let ((_h69411_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69409_
                      __table71777
                      __t71775
                      '#f)))
                  (_key?69413_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69409_
                      __key-check71776
                      __t71775
                      '#f))))
              (let () (declare (not safe)) (&HashTable-clear! _h69411_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::clear!68776_
       checked-hash-table::clear!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!68776_
       '#f))
    (define make-generic-hash-table
      (lambda (_table69279_
               _count69280_
               _free69281_
               _hash69282_
               _test69283_
               _seed69284_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table69279_
           _count69280_
           _free69281_
           _hash69282_
           _test69283_
           _seed69284_))))
    (define make-hash-table__%
      (lambda (_g71858_
               _size-hint6914269152_
               _seed6914369154_
               _test6914469156_
               _hash6914569158_
               _lock6914669160_
               _check6914769162_
               _weak-keys6914869164_
               _weak-values6914969166_)
        (let* ((_size-hint69169_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint6914269152_ absent-value))
                    '#f
                    _size-hint6914269152_))
               (_seed69171_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed6914369154_ absent-value))
                    (random-integer (macro-max-fixnum32))
                    _seed6914369154_))
               (_test69173_
                (if (let ()
                      (declare (not safe))
                      (eq? _test6914469156_ absent-value))
                    equal?
                    _test6914469156_))
               (_hash69175_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash6914569158_ absent-value))
                    '#f
                    _hash6914569158_))
               (_lock69177_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock6914669160_ absent-value))
                    '#f
                    _lock6914669160_))
               (_check69179_
                (if (let ()
                      (declare (not safe))
                      (eq? _check6914769162_ absent-value))
                    '#f
                    _check6914769162_))
               (_weak-keys69181_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys6914869164_ absent-value))
                    '#f
                    _weak-keys6914869164_))
               (_weak-values69183_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values6914969166_ absent-value))
                    '#f
                    _weak-values6914969166_)))
          (letrec ((_wrap-lock69185_
                    (lambda (_ht69263_)
                      (if _lock69177_
                          (let ((__tmp71859
                                 (let ((__tmp71860
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock69177_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht69263_
                                    __tmp71860))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp71859))
                          _ht69263_)))
                   (_wrap-checked69186_
                    (lambda (_ht69260_ _implicit69261_)
                      (if _check69179_
                          (let ((__tmp71861
                                 (let ((__tmp71862
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check69179_))
                                            _check69179_
                                            _implicit69261_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht69260_
                                    __tmp71862))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp71861))
                          _ht69260_)))
                   (_make69187_
                    (lambda (_kons69248_ _key?69249_ _hash69250_ _test69251_)
                      (let* ((_size69253_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint69169_)))
                             (_table69255_
                              (make-vector _size69253_ (macro-unused-obj)))
                             (_ht69257_
                              (let ((__tmp71863
                                     (_kons69248_
                                      _table69255_
                                      '0
                                      (fxquotient _size69253_ '2)
                                      _hash69250_
                                      _test69251_
                                      _seed69171_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp71863))))
                        (let ((__tmp71864
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock69185_ _ht69257_))))
                          (declare (not safe))
                          (_wrap-checked69186_ __tmp71864 _key?69249_)))))
                   (_make-gambit-table69188_
                    (lambda ()
                      (let* ((_size69233_
                              (let ((_$e69230_ _size-hint69169_))
                                (if _$e69230_ _$e69230_ (macro-absent-obj))))
                             (_test69238_
                              (let ((_$e69235_ _test69173_))
                                (if _$e69235_ _$e69235_ equal?)))
                             (_hash69243_
                              (let ((_$e69240_ _hash69175_))
                                (if _$e69240_
                                    _$e69240_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test69238_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test69238_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht69245_
                              (let ((__tmp71865
                                     (make-table
                                      'size:
                                      _size69233_
                                      'test:
                                      _test69238_
                                      'hash:
                                      _hash69243_
                                      'weak-keys:
                                      _weak-keys69181_
                                      'weak-values:
                                      _weak-values69183_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp71865))))
                        (let ((__tmp71866
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock69185_ _ht69245_))))
                          (declare (not safe))
                          (_wrap-checked69186_ __tmp71866 true))))))
            (if (or _weak-keys69181_ _weak-values69183_)
                (let () (declare (not safe)) (_make-gambit-table69188_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test69173_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test69173_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash69175_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash69175_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash69175_ eq-hash))))
                    (let ()
                      (declare (not safe))
                      (_make69187_ make-eq-hash-table true eq-hash eq?))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test69173_ eqv?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test69173_ ##eqv?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash69175_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash69175_ eqv?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash69175_ eqv-hash))))
                        (let ()
                          (declare (not safe))
                          (_make69187_ make-eqv-hash-table true eqv-hash eqv?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test69173_ eq?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test69173_ ##eq?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (eq? _hash69175_ symbolic-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash69175_ ##symbol-hash))))
                            (let ()
                              (declare (not safe))
                              (_make69187_
                               make-symbol-hash-table
                               symbolic?
                               symbolic-hash
                               eq?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test69173_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test69173_ ##equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test69173_ string=?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test69173_ ##string=?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash69175_ string-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash69175_ ##string=?-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make69187_
                                   make-string-hash-table
                                   string?
                                   string-hash
                                   ##string=?))
                                (if (and (let ()
                                           (declare (not safe))
                                           (eq? _test69173_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (not _hash69175_)))
                                    (let ()
                                      (declare (not safe))
                                      (_make69187_
                                       make-generic-hash-table
                                       true
                                       equal?-hash
                                       equal?))
                                    (if (let ((__tmp71868
                                               (let ()
                                                 (declare (not safe))
                                                 (procedure? _test69173_))))
                                          (declare (not safe))
                                          (not __tmp71868))
                                        (let ()
                                          (declare (not safe))
                                          (error '"bad hash table test function; expected procedure"
                                                 _test69173_))
                                        (if (let ((__tmp71867
                                                   (let ()
                                                     (declare (not safe))
                                                     (procedure?
                                                      _hash69175_))))
                                              (declare (not safe))
                                              (not __tmp71867))
                                            (let ()
                                              (declare (not safe))
                                              (error '"bad hash table hash function; expected procedure"
                                                     _hash69175_))
                                            (let ()
                                              (declare (not safe))
                                              (_make69187_
                                               make-generic-hash-table
                                               true
                                               _hash69175_
                                               _test69173_))))))))))))))
    (define make-hash-table__@
      (lambda (_keys6914169268_ . _args69270_)
        (apply make-hash-table__%
               _keys6914169268_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6914169268_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6914169268_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6914169268_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6914169268_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6914169268_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6914169268_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6914169268_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6914169268_
                  'weak-values:
                  absent-value))
               _args69270_)))
    (define make-hash-table
      (lambda _args6915069276_
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
               _args6915069276_)))
    (define make-hash-table-eq
      (lambda _args69138_ (apply make-hash-table 'test: eq? _args69138_)))
    (define make-hash-table-eqv
      (lambda _args69136_ (apply make-hash-table 'test: eqv? _args69136_)))
    (define make-hash-table-symbolic
      (lambda _args69134_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args69134_)))
    (define make-hash-table-string
      (lambda _args69132_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args69132_)))
    (define list->hash-table
      (lambda (_lst69129_ . _args69130_)
        (let ((__tmp71869
               (apply make-hash-table 'size: (length _lst69129_) _args69130_)))
          (declare (not safe))
          (list->hash-table! _lst69129_ __tmp71869))))
    (define list->hash-table-eq
      (lambda (_lst69126_ . _args69127_)
        (let ((__tmp71870
               (apply make-hash-table-eq
                      'size:
                      (length _lst69126_)
                      _args69127_)))
          (declare (not safe))
          (list->hash-table! _lst69126_ __tmp71870))))
    (define list->hash-table-eqv
      (lambda (_lst69123_ . _args69124_)
        (let ((__tmp71871
               (apply make-hash-table-eqv
                      'size:
                      (length _lst69123_)
                      _args69124_)))
          (declare (not safe))
          (list->hash-table! _lst69123_ __tmp71871))))
    (define list->hash-table-symbolic
      (lambda (_lst69120_ . _args69121_)
        (let ((__tmp71872
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst69120_)
                      _args69121_)))
          (declare (not safe))
          (list->hash-table! _lst69120_ __tmp71872))))
    (define list->hash-table-string
      (lambda (_lst69117_ . _args69118_)
        (let ((__tmp71873
               (apply make-hash-table-string
                      'size:
                      (length _lst69117_)
                      _args69118_)))
          (declare (not safe))
          (list->hash-table! _lst69117_ __tmp71873))))
    (define list->hash-table!
      (lambda (_lst69084_ _h69085_)
        (for-each
         (lambda (_el69087_)
           (let* ((_el6908869095_ _el69087_)
                  (_E6909069099_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el6908869095_))))
                  (_K6909169105_
                   (lambda (_v69102_ _k69103_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h69085_ _k69103_ _v69102_)))))
             (if (let () (declare (not safe)) (##pair? _el6908869095_))
                 (let ((_hd6909269108_
                        (let () (declare (not safe)) (##car _el6908869095_)))
                       (_tl6909369110_
                        (let () (declare (not safe)) (##cdr _el6908869095_))))
                   (let* ((_k69113_ _hd6909269108_) (_v69115_ _tl6909369110_))
                     (declare (not safe))
                     (_K6909169105_ _v69115_ _k69113_)))
                 (let () (declare (not safe)) (_E6909069099_)))))
         _lst69084_)
        _h69085_))
    (define plist->hash-table
      (lambda (_lst69081_ . _args69082_)
        (let ((__tmp71874
               (apply make-hash-table 'size: (length _lst69081_) _args69082_)))
          (declare (not safe))
          (plist->hash-table! _lst69081_ __tmp71874))))
    (define plist->hash-table-eq
      (lambda (_lst69078_ . _args69079_)
        (let ((__tmp71875
               (apply make-hash-table-eq
                      'size:
                      (length _lst69078_)
                      _args69079_)))
          (declare (not safe))
          (plist->hash-table! _lst69078_ __tmp71875))))
    (define plist->hash-table-eqv
      (lambda (_lst69075_ . _args69076_)
        (let ((__tmp71876
               (apply make-hash-table-eqv
                      'size:
                      (length _lst69075_)
                      _args69076_)))
          (declare (not safe))
          (plist->hash-table! _lst69075_ __tmp71876))))
    (define plist->hash-table-symbolic
      (lambda (_lst69072_ . _args69073_)
        (let ((__tmp71877
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst69072_)
                      _args69073_)))
          (declare (not safe))
          (plist->hash-table! _lst69072_ __tmp71877))))
    (define plist->hash-table-string
      (lambda (_lst69069_ . _args69070_)
        (let ((__tmp71878
               (apply make-hash-table-string
                      'size:
                      (length _lst69069_)
                      _args69070_)))
          (declare (not safe))
          (plist->hash-table! _lst69069_ __tmp71878))))
    (define plist->hash-table!
      (lambda (_lst69009_ _h69010_)
        (let _loop69012_ ((_rest69014_ _lst69009_))
          (let* ((_rest6901569027_ _rest69014_)
                 (_else6901869035_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst69009_)))))
            (let ((_K6902169050_
                   (lambda (_rest69046_ _val69047_ _key69048_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h69010_ _key69048_ _val69047_))
                     (let () (declare (not safe)) (_loop69012_ _rest69046_))))
                  (_K6902069040_ (lambda () _h69010_)))
              (let ((_try-match6901769043_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest6901569027_))
                           (let () (declare (not safe)) (_K6902069040_))
                           (let () (declare (not safe)) (_else6901869035_))))))
                (if (let () (declare (not safe)) (##pair? _rest6901569027_))
                    (let ((_tl6902369055_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest6901569027_)))
                          (_hd6902269053_
                           (let ()
                             (declare (not safe))
                             (##car _rest6901569027_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl6902369055_))
                          (let ((_tl6902569062_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl6902369055_)))
                                (_hd6902469060_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl6902369055_))))
                            (let ((_key69058_ _hd6902269053_)
                                  (_val69065_ _hd6902469060_)
                                  (_rest69067_ _tl6902569062_))
                              (let ()
                                (declare (not safe))
                                (_K6902169050_
                                 _rest69067_
                                 _val69065_
                                 _key69058_))))
                          (let () (declare (not safe)) (_else6901869035_))))
                    (let ()
                      (declare (not safe))
                      (_try-match6901769043_)))))))))
    (define hash-length
      (lambda (_h69005_)
        (let ((_h69007_
               (if (and (let () (declare (not safe)) (##structure? _h69005_))
                        (let ((__tmp71879
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69005_))))
                          (declare (not safe))
                          (eq? __tmp71879 HashTable::t)))
                   _h69005_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69005_)))))
          (declare (not safe))
          (&HashTable-length _h69007_))))
    (define &hash-length
      (lambda (_h69003_)
        (let () (declare (not safe)) (&HashTable-length _h69003_))))
    (define hash-ref__%
      (lambda (_h68985_ _key68986_ _default68987_)
        (let ((_h68989_
               (if (and (let () (declare (not safe)) (##structure? _h68985_))
                        (let ((__tmp71880
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68985_))))
                          (declare (not safe))
                          (eq? __tmp71880 HashTable::t)))
                   _h68985_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68985_)))))
          (declare (not safe))
          (&hash-ref__% _h68989_ _key68986_ _default68987_))))
    (define hash-ref__0
      (lambda (_h68994_ _key68995_)
        (let ((_default68997_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h68994_ _key68995_ _default68997_))))
    (define hash-ref
      (lambda _g71882_
        (let ((_g71881_ (let () (declare (not safe)) (##length _g71882_))))
          (cond ((let () (declare (not safe)) (##fx= _g71881_ 2))
                 (apply (lambda (_h68994_ _key68995_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h68994_ _key68995_)))
                        _g71882_))
                ((let () (declare (not safe)) (##fx= _g71881_ 3))
                 (apply (lambda (_h68999_ _key69000_ _default69001_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h68999_ _key69000_ _default69001_)))
                        _g71882_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g71882_))))))
    (define &hash-ref__%
      (lambda (_h68966_ _key68967_ _default68968_)
        (let ((_result68970_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h68966_ _key68967_ _default68968_))))
          (if (let ((__tmp71883 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result68970_ __tmp71883))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h68966_
                 'key:
                 _key68967_))
              _result68970_))))
    (define &hash-ref__0
      (lambda (_h68975_ _key68976_)
        (let ((_default68978_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h68975_ _key68976_ _default68978_))))
    (define &hash-ref
      (lambda _g71885_
        (let ((_g71884_ (let () (declare (not safe)) (##length _g71885_))))
          (cond ((let () (declare (not safe)) (##fx= _g71884_ 2))
                 (apply (lambda (_h68975_ _key68976_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h68975_ _key68976_)))
                        _g71885_))
                ((let () (declare (not safe)) (##fx= _g71884_ 3))
                 (apply (lambda (_h68980_ _key68981_ _default68982_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h68980_ _key68981_ _default68982_)))
                        _g71885_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g71885_))))))
    (define hash-get
      (lambda (_h68960_ _key68961_)
        (let ((_h68963_
               (if (and (let () (declare (not safe)) (##structure? _h68960_))
                        (let ((__tmp71886
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68960_))))
                          (declare (not safe))
                          (eq? __tmp71886 HashTable::t)))
                   _h68960_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68960_)))))
          (declare (not safe))
          (&hash-get _h68963_ _key68961_))))
    (define &hash-get
      (lambda (_h68957_ _key68958_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h68957_ _key68958_ '#f))))
    (define hash-put!
      (lambda (_h68951_ _key68952_ _value68953_)
        (let ((_h68955_
               (if (and (let () (declare (not safe)) (##structure? _h68951_))
                        (let ((__tmp71887
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68951_))))
                          (declare (not safe))
                          (eq? __tmp71887 HashTable::t)))
                   _h68951_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68951_)))))
          (declare (not safe))
          (&HashTable-set! _h68955_ _key68952_ _value68953_))))
    (define &hash-put!
      (lambda (_h68947_ _key68948_ _value68949_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h68947_ _key68948_ _value68949_))))
    (define hash-update!__%
      (lambda (_h68926_ _key68927_ _update68928_ _default68929_)
        (let ((_h68931_
               (if (and (let () (declare (not safe)) (##structure? _h68926_))
                        (let ((__tmp71888
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68926_))))
                          (declare (not safe))
                          (eq? __tmp71888 HashTable::t)))
                   _h68926_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68926_)))))
          (declare (not safe))
          (&HashTable-update!
           _h68931_
           _key68927_
           _update68928_
           _default68929_))))
    (define hash-update!__0
      (lambda (_h68936_ _key68937_ _update68938_)
        (let ((_default68940_ '#!void))
          (declare (not safe))
          (hash-update!__% _h68936_ _key68937_ _update68938_ _default68940_))))
    (define hash-update!
      (lambda _g71890_
        (let ((_g71889_ (let () (declare (not safe)) (##length _g71890_))))
          (cond ((let () (declare (not safe)) (##fx= _g71889_ 3))
                 (apply (lambda (_h68936_ _key68937_ _update68938_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h68936_
                             _key68937_
                             _update68938_)))
                        _g71890_))
                ((let () (declare (not safe)) (##fx= _g71889_ 4))
                 (apply (lambda (_h68942_
                                 _key68943_
                                 _update68944_
                                 _default68945_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h68942_
                             _key68943_
                             _update68944_
                             _default68945_)))
                        _g71890_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g71890_))))))
    (define &hash-update!__%
      (lambda (_h68906_ _key68907_ _update68908_ _default68909_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h68906_
           _key68907_
           _update68908_
           _default68909_))))
    (define &hash-update!__0
      (lambda (_h68914_ _key68915_ _update68916_)
        (let ((_default68918_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h68914_
           _key68915_
           _update68916_
           _default68918_))))
    (define &hash-update!
      (lambda _g71892_
        (let ((_g71891_ (let () (declare (not safe)) (##length _g71892_))))
          (cond ((let () (declare (not safe)) (##fx= _g71891_ 3))
                 (apply (lambda (_h68914_ _key68915_ _update68916_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h68914_
                             _key68915_
                             _update68916_)))
                        _g71892_))
                ((let () (declare (not safe)) (##fx= _g71891_ 4))
                 (apply (lambda (_h68920_
                                 _key68921_
                                 _update68922_
                                 _default68923_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h68920_
                             _key68921_
                             _update68922_
                             _default68923_)))
                        _g71892_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g71892_))))))
    (define hash-remove!
      (lambda (_h68900_ _key68901_)
        (let ((_h68903_
               (if (and (let () (declare (not safe)) (##structure? _h68900_))
                        (let ((__tmp71893
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68900_))))
                          (declare (not safe))
                          (eq? __tmp71893 HashTable::t)))
                   _h68900_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68900_)))))
          (declare (not safe))
          (&HashTable-delete! _h68903_ _key68901_))))
    (define &hash-remove!
      (lambda (_h68897_ _key68898_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h68897_ _key68898_))))
    (define hash-key?
      (lambda (_h68892_ _k68893_)
        (let ((_h68895_
               (if (and (let () (declare (not safe)) (##structure? _h68892_))
                        (let ((__tmp71894
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68892_))))
                          (declare (not safe))
                          (eq? __tmp71894 HashTable::t)))
                   _h68892_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68892_)))))
          (declare (not safe))
          (&hash-key? _h68895_ _k68893_))))
    (define &hash-key?
      (lambda (_h68889_ _k68890_)
        (let ((__tmp71895
               (let ((__tmp71896
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h68889_ _k68890_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp71896 absent-value))))
          (declare (not safe))
          (not __tmp71895))))
    (define hash->list
      (lambda (_h68885_)
        (let ((_h68887_
               (if (and (let () (declare (not safe)) (##structure? _h68885_))
                        (let ((__tmp71897
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68885_))))
                          (declare (not safe))
                          (eq? __tmp71897 HashTable::t)))
                   _h68885_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68885_)))))
          (declare (not safe))
          (&hash->list _h68887_))))
    (define &hash->list
      (lambda (_h68878_)
        (let ((_lst68880_ '()))
          (let ((__tmp71898
                 (lambda (_k68882_ _v68883_)
                   (set! _lst68880_
                         (let ((__tmp71899
                                (let ()
                                  (declare (not safe))
                                  (cons _k68882_ _v68883_))))
                           (declare (not safe))
                           (cons __tmp71899 _lst68880_))))))
            (declare (not safe))
            (&HashTable-for-each _h68878_ __tmp71898))
          _lst68880_)))
    (define hash->plist
      (lambda (_h68874_)
        (let ((_h68876_
               (if (and (let () (declare (not safe)) (##structure? _h68874_))
                        (let ((__tmp71900
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68874_))))
                          (declare (not safe))
                          (eq? __tmp71900 HashTable::t)))
                   _h68874_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68874_)))))
          (declare (not safe))
          (&hash->plist _h68876_))))
    (define &hash->plist
      (lambda (_h68867_)
        (let ((_lst68869_ '()))
          (let ((__tmp71901
                 (lambda (_k68871_ _v68872_)
                   (set! _lst68869_
                         (let ((__tmp71902
                                (let ()
                                  (declare (not safe))
                                  (cons _v68872_ _lst68869_))))
                           (declare (not safe))
                           (cons _k68871_ __tmp71902))))))
            (declare (not safe))
            (&HashTable-for-each _h68867_ __tmp71901))
          _lst68869_)))
    (define hash-for-each
      (lambda (_proc68864_ _h68865_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h68865_ _proc68864_))))
    (define hash-map
      (lambda (_proc68856_ _h68857_)
        (let ((_result68859_ '()))
          (let ((__tmp71903
                 (lambda (_k68861_ _v68862_)
                   (set! _result68859_
                         (let ((__tmp71904 (_proc68856_ _k68861_ _v68862_)))
                           (declare (not safe))
                           (cons __tmp71904 _result68859_))))))
            (declare (not safe))
            (HashTable-for-each _h68857_ __tmp71903))
          _result68859_)))
    (define hash-fold
      (lambda (_proc68847_ _iv68848_ _h68849_)
        (let ((_result68851_ _iv68848_))
          (let ((__tmp71905
                 (lambda (_k68853_ _v68854_)
                   (set! _result68851_
                         (_proc68847_ _k68853_ _v68854_ _result68851_)))))
            (declare (not safe))
            (HashTable-for-each _h68849_ __tmp71905))
          _result68851_)))
    (define hash-find__%
      (lambda (_proc68823_ _h68824_ _default-value68825_)
        (call-with-current-continuation
         (lambda (_return68827_)
           (let ((__tmp71906
                  (lambda (_k68829_ _v68830_)
                    (let ((_$e68832_ (_proc68823_ _k68829_ _v68830_)))
                      (if _$e68832_ (_return68827_ _$e68832_) '#!void)))))
             (declare (not safe))
             (HashTable-for-each _h68824_ __tmp71906))
           _default-value68825_))))
    (define hash-find__0
      (lambda (_proc68838_ _h68839_)
        (let ((_default-value68841_ '#f))
          (declare (not safe))
          (hash-find__% _proc68838_ _h68839_ _default-value68841_))))
    (define hash-find
      (lambda _g71908_
        (let ((_g71907_ (let () (declare (not safe)) (##length _g71908_))))
          (cond ((let () (declare (not safe)) (##fx= _g71907_ 2))
                 (apply (lambda (_proc68838_ _h68839_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc68838_ _h68839_)))
                        _g71908_))
                ((let () (declare (not safe)) (##fx= _g71907_ 3))
                 (apply (lambda (_proc68843_ _h68844_ _default-value68845_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc68843_
                             _h68844_
                             _default-value68845_)))
                        _g71908_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g71908_))))))
    (define hash-keys
      (lambda (_h68818_)
        (let ((_h68820_
               (if (and (let () (declare (not safe)) (##structure? _h68818_))
                        (let ((__tmp71909
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68818_))))
                          (declare (not safe))
                          (eq? __tmp71909 HashTable::t)))
                   _h68818_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68818_)))))
          (declare (not safe))
          (&hash-keys _h68820_))))
    (define &hash-keys
      (lambda (_h68811_)
        (let ((_result68813_ '()))
          (let ((__tmp71910
                 (lambda (_k68815_ _v68816_)
                   (set! _result68813_
                         (let ()
                           (declare (not safe))
                           (cons _k68815_ _result68813_))))))
            (declare (not safe))
            (&HashTable-for-each _h68811_ __tmp71910))
          _result68813_)))
    (define hash-values
      (lambda (_h68807_)
        (let ((_h68809_
               (if (and (let () (declare (not safe)) (##structure? _h68807_))
                        (let ((__tmp71911
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68807_))))
                          (declare (not safe))
                          (eq? __tmp71911 HashTable::t)))
                   _h68807_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68807_)))))
          (declare (not safe))
          (&hash-values _h68809_))))
    (define &hash-values
      (lambda (_h68800_)
        (let ((_result68802_ '()))
          (let ((__tmp71912
                 (lambda (_k68804_ _v68805_)
                   (set! _result68802_
                         (let ()
                           (declare (not safe))
                           (cons _v68805_ _result68802_))))))
            (declare (not safe))
            (&HashTable-for-each _h68800_ __tmp71912))
          _result68802_)))
    (define hash-copy
      (lambda (_h68796_)
        (let ((_h68798_
               (if (and (let () (declare (not safe)) (##structure? _h68796_))
                        (let ((__tmp71913
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68796_))))
                          (declare (not safe))
                          (eq? __tmp71913 HashTable::t)))
                   _h68796_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68796_)))))
          (declare (not safe))
          (&HashTable-copy _h68798_))))
    (define &hash-copy
      (lambda (_h68794_)
        (let () (declare (not safe)) (&HashTable-copy _h68794_))))
    (define hash-merge
      (lambda (_h68789_ . _rest68790_)
        (let ((_copy68792_ (let () (declare (not safe)) (hash-copy _h68789_))))
          (apply hash-merge! _copy68792_ _rest68790_)
          _copy68792_)))
    (define hash-merge!
      (lambda (_h68779_ . _rest68780_)
        (let ((_h68782_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h68779_))))
          (for-each
           (lambda (_hr68784_)
             (let ((__tmp71914
                    (lambda (_k68786_ _v68787_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h68782_ _k68786_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h68782_ _k68786_ _v68787_))))))
               (declare (not safe))
               (hash-for-each __tmp71914 _hr68784_)))
           _rest68780_)
          _h68782_)))))
