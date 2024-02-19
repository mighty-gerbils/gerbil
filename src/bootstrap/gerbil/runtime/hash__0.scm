(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1708370113)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp71783 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp71783
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args71686_
        (apply make-instance UnboundKeyError::t _$args71686_)))
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
      (lambda (_where71560_ _message71561_ . _irritants71562_)
        (raise (let ((__obj71780
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj71780
                  _message71561_
                  'where:
                  _where71560_
                  'irritants:
                  _irritants71562_)
                 __obj71780))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp71788 (list interface-instance::t))
            (__tmp71784
             (let ((__tmp71787
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp71785
                    (let ((__tmp71786
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp71786 '()))))
               (declare (not safe))
               (cons __tmp71787 __tmp71785))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp71788
         '(ref set! update! delete! for-each length copy clear)
         __tmp71784
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
      (let ((__tmp71793 (list interface-instance::t))
            (__tmp71789
             (let ((__tmp71792
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp71790
                    (let ((__tmp71791
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp71791 '()))))
               (declare (not safe))
               (cons __tmp71792 __tmp71790))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp71793
         '(begin-read! end-read! begin-write! end-write!)
         __tmp71789
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
      (lambda (_table71553_ _key71554_ _update71555_ _default71556_)
        (let ((_result71558_
               (table-ref _table71553_ _key71554_ _default71556_)))
          (table-set!
           _table71553_
           _key71554_
           (_update71555_ _default71556_)))))
    (define gambit-table-for-each
      (lambda (_table71550_ _proc71551_)
        (table-for-each _proc71551_ _table71550_)))
    (define gambit-table-clear!
      (lambda (_table71548_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table71548_ '0 '5 '#f '#f))))
    (let ((__tmp71794 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71794 'ref table-ref))
    (let ((__tmp71795 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71795 'set! table-set!))
    (let ((__tmp71796 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71796 'update! gambit-table-update!))
    (let ((__tmp71797 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71797 'delete! table-set!))
    (let ((__tmp71798 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71798 'for-each gambit-table-for-each))
    (let ((__tmp71799 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71799 'length table-length))
    (let ((__tmp71800 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71800 'copy table-copy))
    (let ((__tmp71801 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71801 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots71530_ '(table count free hash test seed))
             (_slot-vector71532_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots71530_))))
             (_slot-table71539_
              (let ((_slot-table71534_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot71536_ _field71537_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table71534_
                      _slot71536_
                      _field71537_))
                   (let ((__tmp71802 (symbol->keyword _slot71536_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table71534_
                      __tmp71802
                      _field71537_)))
                 _slots71530_
                 (let ((__tmp71803 (length _slots71530_)))
                   (declare (not safe))
                   (iota__1 __tmp71803 '1)))
                _slot-table71534_))
             (_flags71541_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields71543_ '#())
             (_properties71545_
              (let ((__tmp71806
                     (let ((__tmp71807
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots71530_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp71807)))
                    (__tmp71804
                     (let ((__tmp71805
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp71805 '()))))
                (declare (not safe))
                (cons __tmp71806 __tmp71804))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags71541_
           __table::t
           _fields71543_
           '()
           _slot-vector71532_
           _slot-table71539_
           _properties71545_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp71812 (list))
            (__tmp71808
             (let ((__tmp71811
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp71809
                    (let ((__tmp71810
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp71810 '()))))
               (declare (not safe))
               (cons __tmp71811 __tmp71809))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp71812
         '(table lock)
         __tmp71808
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args71527_
        (apply make-instance locked-hash-table::t _$args71527_)))
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
      (let ((__tmp71817 (list))
            (__tmp71813
             (let ((__tmp71816
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp71814
                    (let ((__tmp71815
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp71815 '()))))
               (declare (not safe))
               (cons __tmp71816 __tmp71814))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp71817
         '(table key-check)
         __tmp71813
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args71524_
        (apply make-instance checked-hash-table::t _$args71524_)))
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
      (let ((__tmp71820 (list hash-table::t))
            (__tmp71818
             (let ((__tmp71819
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71819 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp71820
         '()
         __tmp71818
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args71521_
        (apply make-instance eq-hash-table::t _$args71521_)))
    (define eqv-hash-table::t
      (let ((__tmp71823 (list hash-table::t))
            (__tmp71821
             (let ((__tmp71822
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71822 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp71823
         '()
         __tmp71821
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args71518_
        (apply make-instance eqv-hash-table::t _$args71518_)))
    (define symbol-hash-table::t
      (let ((__tmp71826 (list hash-table::t))
            (__tmp71824
             (let ((__tmp71825
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71825 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp71826
         '()
         __tmp71824
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args71515_
        (apply make-instance symbol-hash-table::t _$args71515_)))
    (define string-hash-table::t
      (let ((__tmp71829 (list hash-table::t))
            (__tmp71827
             (let ((__tmp71828
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71828 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp71829
         '()
         __tmp71827
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args71512_
        (apply make-instance string-hash-table::t _$args71512_)))
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
      (lambda (_obj71510_)
        (if (let () (declare (not safe)) (##structure? _obj71510_))
            (let ((__tmp71830
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj71510_))))
              (declare (not safe))
              (eq? __tmp71830 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj71505_)
        (let ((_$e71507_
               (if (let () (declare (not safe)) (##structure? _obj71505_))
                   (let ((__tmp71831
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj71505_))))
                     (declare (not safe))
                     (eq? __tmp71831 HashTable::t))
                   '#f)))
          (if _$e71507_
              _$e71507_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj71505_))))))
    (define HashTable-ref
      (lambda (_h71499_ _key71500_ _default71501_)
        (let ((_h71503_
               (if (and (let () (declare (not safe)) (##structure? _h71499_))
                        (let ((__tmp71832
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71499_))))
                          (declare (not safe))
                          (eq? __tmp71832 HashTable::t)))
                   _h71499_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71499_)))))
          (declare (not safe))
          (&HashTable-ref _h71503_ _key71500_ _default71501_))))
    (define &HashTable-ref
      (lambda (_h71494_ _key71495_ _default71496_)
        (declare (not safe))
        ((##unchecked-structure-ref _h71494_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h71494_ '1 interface-instance::t '#f)
         _key71495_
         _default71496_)))
    (define HashTable-set!
      (lambda (_h71488_ _key71489_ _value71490_)
        (let ((_h71492_
               (if (and (let () (declare (not safe)) (##structure? _h71488_))
                        (let ((__tmp71833
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71488_))))
                          (declare (not safe))
                          (eq? __tmp71833 HashTable::t)))
                   _h71488_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71488_)))))
          (declare (not safe))
          (&HashTable-set! _h71492_ _key71489_ _value71490_))))
    (define &HashTable-set!
      (lambda (_h71483_ _key71484_ _value71485_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71483_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h71483_ '1 interface-instance::t '#f)
           _key71484_
           _value71485_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h71476_ _key71477_ _update71478_ _default71479_)
        (let ((_h71481_
               (if (and (let () (declare (not safe)) (##structure? _h71476_))
                        (let ((__tmp71834
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71476_))))
                          (declare (not safe))
                          (eq? __tmp71834 HashTable::t)))
                   _h71476_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71476_)))))
          (declare (not safe))
          (&HashTable-update!
           _h71481_
           _key71477_
           _update71478_
           _default71479_))))
    (define &HashTable-update!
      (lambda (_h71470_ _key71471_ _update71472_ _default71473_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71470_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h71470_ '1 interface-instance::t '#f)
           _key71471_
           _update71472_
           _default71473_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h71465_ _key71466_)
        (let ((_h71468_
               (if (and (let () (declare (not safe)) (##structure? _h71465_))
                        (let ((__tmp71835
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71465_))))
                          (declare (not safe))
                          (eq? __tmp71835 HashTable::t)))
                   _h71465_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71465_)))))
          (declare (not safe))
          (&HashTable-delete! _h71468_ _key71466_))))
    (define &HashTable-delete!
      (lambda (_h71461_ _key71462_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71461_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h71461_ '1 interface-instance::t '#f)
           _key71462_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h71456_ _proc71457_)
        (let ((_h71459_
               (if (and (let () (declare (not safe)) (##structure? _h71456_))
                        (let ((__tmp71836
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71456_))))
                          (declare (not safe))
                          (eq? __tmp71836 HashTable::t)))
                   _h71456_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71456_)))))
          (declare (not safe))
          (&HashTable-for-each _h71459_ _proc71457_))))
    (define &HashTable-for-each
      (lambda (_h71452_ _proc71453_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71452_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h71452_ '1 interface-instance::t '#f)
           _proc71453_)
          '#!void)))
    (define HashTable-length
      (lambda (_h71448_)
        (let ((_h71450_
               (if (and (let () (declare (not safe)) (##structure? _h71448_))
                        (let ((__tmp71837
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71448_))))
                          (declare (not safe))
                          (eq? __tmp71837 HashTable::t)))
                   _h71448_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71448_)))))
          (declare (not safe))
          (&HashTable-length _h71450_))))
    (define &HashTable-length
      (lambda (_h71445_)
        (declare (not safe))
        ((##unchecked-structure-ref _h71445_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h71445_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h71441_)
        (let ((_h71443_
               (if (and (let () (declare (not safe)) (##structure? _h71441_))
                        (let ((__tmp71838
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71441_))))
                          (declare (not safe))
                          (eq? __tmp71838 HashTable::t)))
                   _h71441_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71441_)))))
          (declare (not safe))
          (&HashTable-copy _h71443_))))
    (define &HashTable-copy
      (lambda (_h71438_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h71438_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h71438_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h71434_)
        (let ((_h71436_
               (if (and (let () (declare (not safe)) (##structure? _h71434_))
                        (let ((__tmp71839
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71434_))))
                          (declare (not safe))
                          (eq? __tmp71839 HashTable::t)))
                   _h71434_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71434_)))))
          (declare (not safe))
          (&HashTable-clear! _h71436_))))
    (define &HashTable-clear!
      (lambda (_h71431_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71431_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h71431_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl71428_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl71428_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl71428_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl71425_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl71425_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl71425_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl71422_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl71422_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl71422_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl71419_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl71419_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl71419_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref68458_
      (lambda (_self71406_ _key71408_ _default71409_)
        (let ((_h71411_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71406_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71413_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71406_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71413_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h71411_ _key71408_ _default71409_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71413_)))))))
    (define locked-hash-table::ref::specialize
      (lambda (__t71688)
        (let ((__lock71689
               (let ((__tmp71691
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71688 'lock))))
                 (if __tmp71691
                     __tmp71691
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock)))))
              (__table71690
               (let ((__tmp71692
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71688 'table))))
                 (if __tmp71692
                     __tmp71692
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self71406_ _key71408_ _default71409_)
            (let ((_h71411_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71406_
                      __table71690
                      __t71688
                      '#f)))
                  (_l71413_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71406_
                      __lock71689
                      __t71688
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l71413_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-ref _h71411_ _key71408_ _default71409_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l71413_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::ref68458_
       locked-hash-table::ref::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref68458_
       '#f))
    (define _locked-hash-table::set!68460_
      (lambda (_self71270_ _key71272_ _value71273_)
        (let ((_h71275_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71270_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71277_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71270_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71277_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h71275_ _key71272_ _value71273_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71277_)))))))
    (define locked-hash-table::set!::specialize
      (lambda (__t71693)
        (let ((__lock71694
               (let ((__tmp71696
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71693 'lock))))
                 (if __tmp71696
                     __tmp71696
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock)))))
              (__table71695
               (let ((__tmp71697
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71693 'table))))
                 (if __tmp71697
                     __tmp71697
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self71270_ _key71272_ _value71273_)
            (let ((_h71275_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71270_
                      __table71695
                      __t71693
                      '#f)))
                  (_l71277_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71270_
                      __lock71694
                      __t71693
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l71277_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-set! _h71275_ _key71272_ _value71273_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l71277_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::set!68460_
       locked-hash-table::set!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!68460_
       '#f))
    (define _locked-hash-table::update!68462_
      (lambda (_self71133_ _key71135_ _update71136_ _default71137_)
        (let ((_h71139_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71133_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71141_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71133_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71141_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h71139_
                _key71135_
                _update71136_
                _default71137_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71141_)))))))
    (define locked-hash-table::update!::specialize
      (lambda (__t71698)
        (let ((__table71699
               (let ((__tmp71701
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71698 'table))))
                 (if __tmp71701
                     __tmp71701
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__lock71700
               (let ((__tmp71702
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71698 'lock))))
                 (if __tmp71702
                     __tmp71702
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock))))))
          (lambda (_self71133_ _key71135_ _update71136_ _default71137_)
            (let ((_h71139_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71133_
                      __table71699
                      __t71698
                      '#f)))
                  (_l71141_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71133_
                      __lock71700
                      __t71698
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l71141_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-update!
                    _h71139_
                    _key71135_
                    _update71136_
                    _default71137_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l71141_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::update!68462_
       locked-hash-table::update!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!68462_
       '#f))
    (define _locked-hash-table::delete!68464_
      (lambda (_self70998_ _key71000_)
        (let ((_h71002_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70998_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71004_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70998_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71004_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h71002_ _key71000_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71004_)))))))
    (define locked-hash-table::delete!::specialize
      (lambda (__t71703)
        (let ((__lock71704
               (let ((__tmp71706
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71703 'lock))))
                 (if __tmp71706
                     __tmp71706
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock)))))
              (__table71705
               (let ((__tmp71707
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71703 'table))))
                 (if __tmp71707
                     __tmp71707
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self70998_ _key71000_)
            (let ((_h71002_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70998_
                      __table71705
                      __t71703
                      '#f)))
                  (_l71004_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70998_
                      __lock71704
                      __t71703
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l71004_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-delete! _h71002_ _key71000_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l71004_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::delete!68464_
       locked-hash-table::delete!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!68464_
       '#f))
    (define _locked-hash-table::for-each68466_
      (lambda (_self70863_ _proc70865_)
        (let ((_h70867_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70863_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70869_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70863_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l70869_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h70867_ _proc70865_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l70869_)))))))
    (define locked-hash-table::for-each::specialize
      (lambda (__t71708)
        (let ((__table71709
               (let ((__tmp71711
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71708 'table))))
                 (if __tmp71711
                     __tmp71711
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__lock71710
               (let ((__tmp71712
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71708 'lock))))
                 (if __tmp71712
                     __tmp71712
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock))))))
          (lambda (_self70863_ _proc70865_)
            (let ((_h70867_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70863_
                      __table71709
                      __t71708
                      '#f)))
                  (_l70869_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70863_
                      __lock71710
                      __t71708
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l70869_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-for-each _h70867_ _proc70865_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l70869_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::for-each68466_
       locked-hash-table::for-each::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each68466_
       '#f))
    (define _locked-hash-table::length68468_
      (lambda (_self70729_)
        (let ((_h70732_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70729_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70734_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70729_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l70734_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h70732_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l70734_)))))))
    (define locked-hash-table::length::specialize
      (lambda (__t71713)
        (let ((__lock71714
               (let ((__tmp71716
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71713 'lock))))
                 (if __tmp71716
                     __tmp71716
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock)))))
              (__table71715
               (let ((__tmp71717
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71713 'table))))
                 (if __tmp71717
                     __tmp71717
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self70729_)
            (let ((_h70732_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70729_
                      __table71715
                      __t71713
                      '#f)))
                  (_l70734_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70729_
                      __lock71714
                      __t71713
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l70734_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-length _h70732_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l70734_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::length68468_
       locked-hash-table::length::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length68468_
       '#f))
    (define _locked-hash-table::copy68470_
      (lambda (_self70595_)
        (let ((_h70598_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70595_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70600_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70595_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l70600_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h70598_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l70600_)))))))
    (define locked-hash-table::copy::specialize
      (lambda (__t71718)
        (let ((__table71719
               (let ((__tmp71721
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71718 'table))))
                 (if __tmp71721
                     __tmp71721
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__lock71720
               (let ((__tmp71722
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71718 'lock))))
                 (if __tmp71722
                     __tmp71722
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock))))))
          (lambda (_self70595_)
            (let ((_h70598_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70595_
                      __table71719
                      __t71718
                      '#f)))
                  (_l70600_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70595_
                      __lock71720
                      __t71718
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l70600_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-copy _h70598_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l70600_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::copy68470_
       locked-hash-table::copy::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy68470_
       '#f))
    (define _locked-hash-table::clear!68472_
      (lambda (_self70461_)
        (let ((_h70464_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70461_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70466_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70461_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l70466_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h70464_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l70466_)))))))
    (define locked-hash-table::clear!::specialize
      (lambda (__t71723)
        (let ((__table71724
               (let ((__tmp71726
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71723 'table))))
                 (if __tmp71726
                     __tmp71726
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__lock71725
               (let ((__tmp71727
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71723 'lock))))
                 (if __tmp71727
                     __tmp71727
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock))))))
          (lambda (_self70461_)
            (let ((_h70464_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70461_
                      __table71724
                      __t71723
                      '#f)))
                  (_l70466_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70461_
                      __lock71725
                      __t71723
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l70466_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-clear! _h70464_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l70466_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::clear!68472_
       locked-hash-table::clear!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!68472_
       '#f))
    (let ((__tmp71840 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp71840 'begin-read! mutex-lock!))
    (let ((__tmp71841 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp71841 'end-read! mutex-unlock!))
    (let ((__tmp71842 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp71842 'begin-write! mutex-lock!))
    (let ((__tmp71843 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp71843 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref68750_
      (lambda (_self70325_ _key70326_ _default70327_)
        (let ((_h70329_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70325_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70331_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70325_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7033370335_)
             (if (_g7033370335_ _key70326_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key70326_))))
           _key?70331_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h70329_ _key70326_ _default70327_)))))
    (define checked-hash-table::ref::specialize
      (lambda (__t71728)
        (let ((__key-check71729
               (let ((__tmp71731
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71728 'key-check))))
                 (if __tmp71731
                     __tmp71731
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check)))))
              (__table71730
               (let ((__tmp71732
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71728 'table))))
                 (if __tmp71732
                     __tmp71732
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self70325_ _key70326_ _default70327_)
            (let ((_h70329_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70325_
                      __table71730
                      __t71728
                      '#f)))
                  (_key?70331_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70325_
                      __key-check71729
                      __t71728
                      '#f))))
              ((lambda (_g7033370335_)
                 (if (_g7033370335_ _key70326_)
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _key70326_))))
               _key?70331_)
              (let ()
                (declare (not safe))
                (&HashTable-ref _h70329_ _key70326_ _default70327_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::ref68750_
       checked-hash-table::ref::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref68750_
       '#f))
    (define _checked-hash-table::set!68752_
      (lambda (_self70189_ _key70190_ _value70191_)
        (let ((_h70193_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70189_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70195_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70189_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7019770199_)
             (if (_g7019770199_ _key70190_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key70190_))))
           _key?70195_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h70193_ _key70190_ _value70191_)))))
    (define checked-hash-table::set!::specialize
      (lambda (__t71733)
        (let ((__key-check71734
               (let ((__tmp71736
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71733 'key-check))))
                 (if __tmp71736
                     __tmp71736
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check)))))
              (__table71735
               (let ((__tmp71737
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71733 'table))))
                 (if __tmp71737
                     __tmp71737
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self70189_ _key70190_ _value70191_)
            (let ((_h70193_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70189_
                      __table71735
                      __t71733
                      '#f)))
                  (_key?70195_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70189_
                      __key-check71734
                      __t71733
                      '#f))))
              ((lambda (_g7019770199_)
                 (if (_g7019770199_ _key70190_)
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _key70190_))))
               _key?70195_)
              (let ()
                (declare (not safe))
                (&HashTable-set! _h70193_ _key70190_ _value70191_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::set!68752_
       checked-hash-table::set!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!68752_
       '#f))
    (define _checked-hash-table::update!68754_
      (lambda (_self70054_ _key70055_ _update70056_ _default70057_)
        (let ((_h70059_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70054_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70061_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70054_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?70064_)
             (if (_key?70064_ _key70055_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key70055_)))
             (if (let () (declare (not safe)) (procedure? _update70056_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update70056_))))
           _key?70061_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h70059_
             _key70055_
             _update70056_
             _default70057_)))))
    (define checked-hash-table::update!::specialize
      (lambda (__t71738)
        (let ((__table71739
               (let ((__tmp71741
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71738 'table))))
                 (if __tmp71741
                     __tmp71741
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__key-check71740
               (let ((__tmp71742
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71738 'key-check))))
                 (if __tmp71742
                     __tmp71742
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check))))))
          (lambda (_self70054_ _key70055_ _update70056_ _default70057_)
            (let ((_h70059_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70054_
                      __table71739
                      __t71738
                      '#f)))
                  (_key?70061_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70054_
                      __key-check71740
                      __t71738
                      '#f))))
              ((lambda (_key?70064_)
                 (if (_key?70064_ _key70055_)
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _key70055_)))
                 (if (let () (declare (not safe)) (procedure? _update70056_))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _update70056_))))
               _key?70061_)
              (let ()
                (declare (not safe))
                (&HashTable-update!
                 _h70059_
                 _key70055_
                 _update70056_
                 _default70057_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::update!68754_
       checked-hash-table::update!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!68754_
       '#f))
    (define _checked-hash-table::delete!68756_
      (lambda (_self69919_ _key69920_)
        (let ((_h69922_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69919_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69924_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69919_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g6992669928_)
             (if (_g6992669928_ _key69920_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key69920_))))
           _key?69924_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h69922_ _key69920_)))))
    (define checked-hash-table::delete!::specialize
      (lambda (__t71743)
        (let ((__key-check71744
               (let ((__tmp71746
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71743 'key-check))))
                 (if __tmp71746
                     __tmp71746
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check)))))
              (__table71745
               (let ((__tmp71747
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71743 'table))))
                 (if __tmp71747
                     __tmp71747
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self69919_ _key69920_)
            (let ((_h69922_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69919_
                      __table71745
                      __t71743
                      '#f)))
                  (_key?69924_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69919_
                      __key-check71744
                      __t71743
                      '#f))))
              ((lambda (_g6992669928_)
                 (if (_g6992669928_ _key69920_)
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _key69920_))))
               _key?69924_)
              (let ()
                (declare (not safe))
                (&HashTable-delete! _h69922_ _key69920_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::delete!68756_
       checked-hash-table::delete!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!68756_
       '#f))
    (define _checked-hash-table::for-each68758_
      (lambda (_self69787_ _proc69788_)
        (let ((_h69790_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69787_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69792_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69787_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g71844_)
             (if (let () (declare (not safe)) (procedure? _proc69788_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc69788_))))
           _key?69792_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h69790_ _proc69788_)))))
    (define checked-hash-table::for-each::specialize
      (lambda (__t71748)
        (let ((__key-check71749
               (let ((__tmp71751
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71748 'key-check))))
                 (if __tmp71751
                     __tmp71751
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check)))))
              (__table71750
               (let ((__tmp71752
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71748 'table))))
                 (if __tmp71752
                     __tmp71752
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self69787_ _proc69788_)
            (let ((_h69790_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69787_
                      __table71750
                      __t71748
                      '#f)))
                  (_key?69792_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69787_
                      __key-check71749
                      __t71748
                      '#f))))
              ((lambda (_g71845_)
                 (if (let () (declare (not safe)) (procedure? _proc69788_))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _proc69788_))))
               _key?69792_)
              (let ()
                (declare (not safe))
                (&HashTable-for-each _h69790_ _proc69788_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::for-each68758_
       checked-hash-table::for-each::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each68758_
       '#f))
    (define _checked-hash-table::length68760_
      (lambda (_self69657_)
        (let ((_h69659_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69657_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69661_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69657_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h69659_)))))
    (define checked-hash-table::length::specialize
      (lambda (__t71753)
        (let ((__key-check71754
               (let ((__tmp71756
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71753 'key-check))))
                 (if __tmp71756
                     __tmp71756
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check)))))
              (__table71755
               (let ((__tmp71757
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71753 'table))))
                 (if __tmp71757
                     __tmp71757
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self69657_)
            (let ((_h69659_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69657_
                      __table71755
                      __t71753
                      '#f)))
                  (_key?69661_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69657_
                      __key-check71754
                      __t71753
                      '#f))))
              (let () (declare (not safe)) (&HashTable-length _h69659_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::length68760_
       checked-hash-table::length::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length68760_
       '#f))
    (define _checked-hash-table::copy68762_
      (lambda (_self69527_)
        (let ((_h69529_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69527_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69531_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69527_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h69529_)))))
    (define checked-hash-table::copy::specialize
      (lambda (__t71758)
        (let ((__table71759
               (let ((__tmp71761
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71758 'table))))
                 (if __tmp71761
                     __tmp71761
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__key-check71760
               (let ((__tmp71762
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71758 'key-check))))
                 (if __tmp71762
                     __tmp71762
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check))))))
          (lambda (_self69527_)
            (let ((_h69529_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69527_
                      __table71759
                      __t71758
                      '#f)))
                  (_key?69531_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69527_
                      __key-check71760
                      __t71758
                      '#f))))
              (let () (declare (not safe)) (&HashTable-copy _h69529_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::copy68762_
       checked-hash-table::copy::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy68762_
       '#f))
    (define _checked-hash-table::clear!68764_
      (lambda (_self69397_)
        (let ((_h69399_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69397_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69401_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69397_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h69399_)))))
    (define checked-hash-table::clear!::specialize
      (lambda (__t71763)
        (let ((__table71764
               (let ((__tmp71766
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71763 'table))))
                 (if __tmp71766
                     __tmp71766
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__key-check71765
               (let ((__tmp71767
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71763 'key-check))))
                 (if __tmp71767
                     __tmp71767
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check))))))
          (lambda (_self69397_)
            (let ((_h69399_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69397_
                      __table71764
                      __t71763
                      '#f)))
                  (_key?69401_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69397_
                      __key-check71765
                      __t71763
                      '#f))))
              (let () (declare (not safe)) (&HashTable-clear! _h69399_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::clear!68764_
       checked-hash-table::clear!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!68764_
       '#f))
    (define make-generic-hash-table
      (lambda (_table69267_
               _count69268_
               _free69269_
               _hash69270_
               _test69271_
               _seed69272_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table69267_
           _count69268_
           _free69269_
           _hash69270_
           _test69271_
           _seed69272_))))
    (define make-hash-table__%
      (lambda (_g71846_
               _size-hint6913069140_
               _seed6913169142_
               _test6913269144_
               _hash6913369146_
               _lock6913469148_
               _check6913569150_
               _weak-keys6913669152_
               _weak-values6913769154_)
        (let* ((_size-hint69157_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint6913069140_ absent-value))
                    '#f
                    _size-hint6913069140_))
               (_seed69159_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed6913169142_ absent-value))
                    (random-integer (macro-max-fixnum32))
                    _seed6913169142_))
               (_test69161_
                (if (let ()
                      (declare (not safe))
                      (eq? _test6913269144_ absent-value))
                    equal?
                    _test6913269144_))
               (_hash69163_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash6913369146_ absent-value))
                    '#f
                    _hash6913369146_))
               (_lock69165_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock6913469148_ absent-value))
                    '#f
                    _lock6913469148_))
               (_check69167_
                (if (let ()
                      (declare (not safe))
                      (eq? _check6913569150_ absent-value))
                    '#f
                    _check6913569150_))
               (_weak-keys69169_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys6913669152_ absent-value))
                    '#f
                    _weak-keys6913669152_))
               (_weak-values69171_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values6913769154_ absent-value))
                    '#f
                    _weak-values6913769154_)))
          (letrec ((_wrap-lock69173_
                    (lambda (_ht69251_)
                      (if _lock69165_
                          (let ((__tmp71847
                                 (let ((__tmp71848
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock69165_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht69251_
                                    __tmp71848))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp71847))
                          _ht69251_)))
                   (_wrap-checked69174_
                    (lambda (_ht69248_ _implicit69249_)
                      (if _check69167_
                          (let ((__tmp71849
                                 (let ((__tmp71850
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check69167_))
                                            _check69167_
                                            _implicit69249_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht69248_
                                    __tmp71850))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp71849))
                          _ht69248_)))
                   (_make69175_
                    (lambda (_kons69236_ _key?69237_ _hash69238_ _test69239_)
                      (let* ((_size69241_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint69157_)))
                             (_table69243_
                              (make-vector _size69241_ (macro-unused-obj)))
                             (_ht69245_
                              (let ((__tmp71851
                                     (_kons69236_
                                      _table69243_
                                      '0
                                      (fxquotient _size69241_ '2)
                                      _hash69238_
                                      _test69239_
                                      _seed69159_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp71851))))
                        (let ((__tmp71852
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock69173_ _ht69245_))))
                          (declare (not safe))
                          (_wrap-checked69174_ __tmp71852 _key?69237_)))))
                   (_make-gambit-table69176_
                    (lambda ()
                      (let* ((_size69221_
                              (let ((_$e69218_ _size-hint69157_))
                                (if _$e69218_ _$e69218_ (macro-absent-obj))))
                             (_test69226_
                              (let ((_$e69223_ _test69161_))
                                (if _$e69223_ _$e69223_ equal?)))
                             (_hash69231_
                              (let ((_$e69228_ _hash69163_))
                                (if _$e69228_
                                    _$e69228_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test69226_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test69226_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht69233_
                              (let ((__tmp71853
                                     (make-table
                                      'size:
                                      _size69221_
                                      'test:
                                      _test69226_
                                      'hash:
                                      _hash69231_
                                      'weak-keys:
                                      _weak-keys69169_
                                      'weak-values:
                                      _weak-values69171_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp71853))))
                        (let ((__tmp71854
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock69173_ _ht69233_))))
                          (declare (not safe))
                          (_wrap-checked69174_ __tmp71854 true))))))
            (if (or _weak-keys69169_ _weak-values69171_)
                (let () (declare (not safe)) (_make-gambit-table69176_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test69161_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test69161_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash69163_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash69163_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash69163_ eq-hash))))
                    (let ()
                      (declare (not safe))
                      (_make69175_ make-eq-hash-table true eq-hash eq?))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test69161_ eqv?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test69161_ ##eqv?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash69163_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash69163_ eqv?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash69163_ eqv-hash))))
                        (let ()
                          (declare (not safe))
                          (_make69175_ make-eqv-hash-table true eqv-hash eqv?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test69161_ eq?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test69161_ ##eq?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (eq? _hash69163_ symbolic-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash69163_ ##symbol-hash))))
                            (let ()
                              (declare (not safe))
                              (_make69175_
                               make-symbol-hash-table
                               symbolic?
                               symbolic-hash
                               eq?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test69161_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test69161_ ##equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test69161_ string=?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test69161_ ##string=?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash69163_ string-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash69163_ ##string=?-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make69175_
                                   make-string-hash-table
                                   string?
                                   string-hash
                                   ##string=?))
                                (if (and (let ()
                                           (declare (not safe))
                                           (eq? _test69161_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (not _hash69163_)))
                                    (let ()
                                      (declare (not safe))
                                      (_make69175_
                                       make-generic-hash-table
                                       true
                                       equal?-hash
                                       equal?))
                                    (if (let ((__tmp71856
                                               (let ()
                                                 (declare (not safe))
                                                 (procedure? _test69161_))))
                                          (declare (not safe))
                                          (not __tmp71856))
                                        (let ()
                                          (declare (not safe))
                                          (error '"bad hash table test function; expected procedure"
                                                 _test69161_))
                                        (if (let ((__tmp71855
                                                   (let ()
                                                     (declare (not safe))
                                                     (procedure?
                                                      _hash69163_))))
                                              (declare (not safe))
                                              (not __tmp71855))
                                            (let ()
                                              (declare (not safe))
                                              (error '"bad hash table hash function; expected procedure"
                                                     _hash69163_))
                                            (let ()
                                              (declare (not safe))
                                              (_make69175_
                                               make-generic-hash-table
                                               true
                                               _hash69163_
                                               _test69161_))))))))))))))
    (define make-hash-table__@
      (lambda (_keys6912969256_ . _args69258_)
        (apply make-hash-table__%
               _keys6912969256_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6912969256_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6912969256_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6912969256_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6912969256_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6912969256_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6912969256_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6912969256_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6912969256_
                  'weak-values:
                  absent-value))
               _args69258_)))
    (define make-hash-table
      (lambda _args6913869264_
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
               _args6913869264_)))
    (define make-hash-table-eq
      (lambda _args69126_ (apply make-hash-table 'test: eq? _args69126_)))
    (define make-hash-table-eqv
      (lambda _args69124_ (apply make-hash-table 'test: eqv? _args69124_)))
    (define make-hash-table-symbolic
      (lambda _args69122_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args69122_)))
    (define make-hash-table-string
      (lambda _args69120_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args69120_)))
    (define list->hash-table
      (lambda (_lst69117_ . _args69118_)
        (let ((__tmp71857
               (apply make-hash-table 'size: (length _lst69117_) _args69118_)))
          (declare (not safe))
          (list->hash-table! _lst69117_ __tmp71857))))
    (define list->hash-table-eq
      (lambda (_lst69114_ . _args69115_)
        (let ((__tmp71858
               (apply make-hash-table-eq
                      'size:
                      (length _lst69114_)
                      _args69115_)))
          (declare (not safe))
          (list->hash-table! _lst69114_ __tmp71858))))
    (define list->hash-table-eqv
      (lambda (_lst69111_ . _args69112_)
        (let ((__tmp71859
               (apply make-hash-table-eqv
                      'size:
                      (length _lst69111_)
                      _args69112_)))
          (declare (not safe))
          (list->hash-table! _lst69111_ __tmp71859))))
    (define list->hash-table-symbolic
      (lambda (_lst69108_ . _args69109_)
        (let ((__tmp71860
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst69108_)
                      _args69109_)))
          (declare (not safe))
          (list->hash-table! _lst69108_ __tmp71860))))
    (define list->hash-table-string
      (lambda (_lst69105_ . _args69106_)
        (let ((__tmp71861
               (apply make-hash-table-string
                      'size:
                      (length _lst69105_)
                      _args69106_)))
          (declare (not safe))
          (list->hash-table! _lst69105_ __tmp71861))))
    (define list->hash-table!
      (lambda (_lst69072_ _h69073_)
        (for-each
         (lambda (_el69075_)
           (let* ((_el6907669083_ _el69075_)
                  (_E6907869087_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el6907669083_))))
                  (_K6907969093_
                   (lambda (_v69090_ _k69091_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h69073_ _k69091_ _v69090_)))))
             (if (let () (declare (not safe)) (##pair? _el6907669083_))
                 (let ((_hd6908069096_
                        (let () (declare (not safe)) (##car _el6907669083_)))
                       (_tl6908169098_
                        (let () (declare (not safe)) (##cdr _el6907669083_))))
                   (let* ((_k69101_ _hd6908069096_) (_v69103_ _tl6908169098_))
                     (declare (not safe))
                     (_K6907969093_ _v69103_ _k69101_)))
                 (let () (declare (not safe)) (_E6907869087_)))))
         _lst69072_)
        _h69073_))
    (define plist->hash-table
      (lambda (_lst69069_ . _args69070_)
        (let ((__tmp71862
               (apply make-hash-table 'size: (length _lst69069_) _args69070_)))
          (declare (not safe))
          (plist->hash-table! _lst69069_ __tmp71862))))
    (define plist->hash-table-eq
      (lambda (_lst69066_ . _args69067_)
        (let ((__tmp71863
               (apply make-hash-table-eq
                      'size:
                      (length _lst69066_)
                      _args69067_)))
          (declare (not safe))
          (plist->hash-table! _lst69066_ __tmp71863))))
    (define plist->hash-table-eqv
      (lambda (_lst69063_ . _args69064_)
        (let ((__tmp71864
               (apply make-hash-table-eqv
                      'size:
                      (length _lst69063_)
                      _args69064_)))
          (declare (not safe))
          (plist->hash-table! _lst69063_ __tmp71864))))
    (define plist->hash-table-symbolic
      (lambda (_lst69060_ . _args69061_)
        (let ((__tmp71865
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst69060_)
                      _args69061_)))
          (declare (not safe))
          (plist->hash-table! _lst69060_ __tmp71865))))
    (define plist->hash-table-string
      (lambda (_lst69057_ . _args69058_)
        (let ((__tmp71866
               (apply make-hash-table-string
                      'size:
                      (length _lst69057_)
                      _args69058_)))
          (declare (not safe))
          (plist->hash-table! _lst69057_ __tmp71866))))
    (define plist->hash-table!
      (lambda (_lst68997_ _h68998_)
        (let _loop69000_ ((_rest69002_ _lst68997_))
          (let* ((_rest6900369015_ _rest69002_)
                 (_else6900669023_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst68997_)))))
            (let ((_K6900969038_
                   (lambda (_rest69034_ _val69035_ _key69036_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h68998_ _key69036_ _val69035_))
                     (let () (declare (not safe)) (_loop69000_ _rest69034_))))
                  (_K6900869028_ (lambda () _h68998_)))
              (let ((_try-match6900569031_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest6900369015_))
                           (let () (declare (not safe)) (_K6900869028_))
                           (let () (declare (not safe)) (_else6900669023_))))))
                (if (let () (declare (not safe)) (##pair? _rest6900369015_))
                    (let ((_tl6901169043_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest6900369015_)))
                          (_hd6901069041_
                           (let ()
                             (declare (not safe))
                             (##car _rest6900369015_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl6901169043_))
                          (let ((_tl6901369050_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl6901169043_)))
                                (_hd6901269048_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl6901169043_))))
                            (let ((_key69046_ _hd6901069041_)
                                  (_val69053_ _hd6901269048_)
                                  (_rest69055_ _tl6901369050_))
                              (let ()
                                (declare (not safe))
                                (_K6900969038_
                                 _rest69055_
                                 _val69053_
                                 _key69046_))))
                          (let () (declare (not safe)) (_else6900669023_))))
                    (let ()
                      (declare (not safe))
                      (_try-match6900569031_)))))))))
    (define hash-length
      (lambda (_h68993_)
        (let ((_h68995_
               (if (and (let () (declare (not safe)) (##structure? _h68993_))
                        (let ((__tmp71867
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68993_))))
                          (declare (not safe))
                          (eq? __tmp71867 HashTable::t)))
                   _h68993_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68993_)))))
          (declare (not safe))
          (&HashTable-length _h68995_))))
    (define &hash-length
      (lambda (_h68991_)
        (let () (declare (not safe)) (&HashTable-length _h68991_))))
    (define hash-ref__%
      (lambda (_h68973_ _key68974_ _default68975_)
        (let ((_h68977_
               (if (and (let () (declare (not safe)) (##structure? _h68973_))
                        (let ((__tmp71868
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68973_))))
                          (declare (not safe))
                          (eq? __tmp71868 HashTable::t)))
                   _h68973_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68973_)))))
          (declare (not safe))
          (&hash-ref__% _h68977_ _key68974_ _default68975_))))
    (define hash-ref__0
      (lambda (_h68982_ _key68983_)
        (let ((_default68985_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h68982_ _key68983_ _default68985_))))
    (define hash-ref
      (lambda _g71870_
        (let ((_g71869_ (let () (declare (not safe)) (##length _g71870_))))
          (cond ((let () (declare (not safe)) (##fx= _g71869_ 2))
                 (apply (lambda (_h68982_ _key68983_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h68982_ _key68983_)))
                        _g71870_))
                ((let () (declare (not safe)) (##fx= _g71869_ 3))
                 (apply (lambda (_h68987_ _key68988_ _default68989_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h68987_ _key68988_ _default68989_)))
                        _g71870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g71870_))))))
    (define &hash-ref__%
      (lambda (_h68954_ _key68955_ _default68956_)
        (let ((_result68958_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h68954_ _key68955_ _default68956_))))
          (if (let ((__tmp71871 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result68958_ __tmp71871))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h68954_
                 'key:
                 _key68955_))
              _result68958_))))
    (define &hash-ref__0
      (lambda (_h68963_ _key68964_)
        (let ((_default68966_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h68963_ _key68964_ _default68966_))))
    (define &hash-ref
      (lambda _g71873_
        (let ((_g71872_ (let () (declare (not safe)) (##length _g71873_))))
          (cond ((let () (declare (not safe)) (##fx= _g71872_ 2))
                 (apply (lambda (_h68963_ _key68964_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h68963_ _key68964_)))
                        _g71873_))
                ((let () (declare (not safe)) (##fx= _g71872_ 3))
                 (apply (lambda (_h68968_ _key68969_ _default68970_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h68968_ _key68969_ _default68970_)))
                        _g71873_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g71873_))))))
    (define hash-get
      (lambda (_h68948_ _key68949_)
        (let ((_h68951_
               (if (and (let () (declare (not safe)) (##structure? _h68948_))
                        (let ((__tmp71874
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68948_))))
                          (declare (not safe))
                          (eq? __tmp71874 HashTable::t)))
                   _h68948_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68948_)))))
          (declare (not safe))
          (&hash-get _h68951_ _key68949_))))
    (define &hash-get
      (lambda (_h68945_ _key68946_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h68945_ _key68946_ '#f))))
    (define hash-put!
      (lambda (_h68939_ _key68940_ _value68941_)
        (let ((_h68943_
               (if (and (let () (declare (not safe)) (##structure? _h68939_))
                        (let ((__tmp71875
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68939_))))
                          (declare (not safe))
                          (eq? __tmp71875 HashTable::t)))
                   _h68939_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68939_)))))
          (declare (not safe))
          (&HashTable-set! _h68943_ _key68940_ _value68941_))))
    (define &hash-put!
      (lambda (_h68935_ _key68936_ _value68937_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h68935_ _key68936_ _value68937_))))
    (define hash-update!__%
      (lambda (_h68914_ _key68915_ _update68916_ _default68917_)
        (let ((_h68919_
               (if (and (let () (declare (not safe)) (##structure? _h68914_))
                        (let ((__tmp71876
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68914_))))
                          (declare (not safe))
                          (eq? __tmp71876 HashTable::t)))
                   _h68914_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68914_)))))
          (declare (not safe))
          (&HashTable-update!
           _h68919_
           _key68915_
           _update68916_
           _default68917_))))
    (define hash-update!__0
      (lambda (_h68924_ _key68925_ _update68926_)
        (let ((_default68928_ '#!void))
          (declare (not safe))
          (hash-update!__% _h68924_ _key68925_ _update68926_ _default68928_))))
    (define hash-update!
      (lambda _g71878_
        (let ((_g71877_ (let () (declare (not safe)) (##length _g71878_))))
          (cond ((let () (declare (not safe)) (##fx= _g71877_ 3))
                 (apply (lambda (_h68924_ _key68925_ _update68926_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h68924_
                             _key68925_
                             _update68926_)))
                        _g71878_))
                ((let () (declare (not safe)) (##fx= _g71877_ 4))
                 (apply (lambda (_h68930_
                                 _key68931_
                                 _update68932_
                                 _default68933_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h68930_
                             _key68931_
                             _update68932_
                             _default68933_)))
                        _g71878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g71878_))))))
    (define &hash-update!__%
      (lambda (_h68894_ _key68895_ _update68896_ _default68897_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h68894_
           _key68895_
           _update68896_
           _default68897_))))
    (define &hash-update!__0
      (lambda (_h68902_ _key68903_ _update68904_)
        (let ((_default68906_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h68902_
           _key68903_
           _update68904_
           _default68906_))))
    (define &hash-update!
      (lambda _g71880_
        (let ((_g71879_ (let () (declare (not safe)) (##length _g71880_))))
          (cond ((let () (declare (not safe)) (##fx= _g71879_ 3))
                 (apply (lambda (_h68902_ _key68903_ _update68904_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h68902_
                             _key68903_
                             _update68904_)))
                        _g71880_))
                ((let () (declare (not safe)) (##fx= _g71879_ 4))
                 (apply (lambda (_h68908_
                                 _key68909_
                                 _update68910_
                                 _default68911_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h68908_
                             _key68909_
                             _update68910_
                             _default68911_)))
                        _g71880_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g71880_))))))
    (define hash-remove!
      (lambda (_h68888_ _key68889_)
        (let ((_h68891_
               (if (and (let () (declare (not safe)) (##structure? _h68888_))
                        (let ((__tmp71881
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68888_))))
                          (declare (not safe))
                          (eq? __tmp71881 HashTable::t)))
                   _h68888_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68888_)))))
          (declare (not safe))
          (&HashTable-delete! _h68891_ _key68889_))))
    (define &hash-remove!
      (lambda (_h68885_ _key68886_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h68885_ _key68886_))))
    (define hash-key?
      (lambda (_h68880_ _k68881_)
        (let ((_h68883_
               (if (and (let () (declare (not safe)) (##structure? _h68880_))
                        (let ((__tmp71882
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68880_))))
                          (declare (not safe))
                          (eq? __tmp71882 HashTable::t)))
                   _h68880_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68880_)))))
          (declare (not safe))
          (&hash-key? _h68883_ _k68881_))))
    (define &hash-key?
      (lambda (_h68877_ _k68878_)
        (let ((__tmp71883
               (let ((__tmp71884
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h68877_ _k68878_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp71884 absent-value))))
          (declare (not safe))
          (not __tmp71883))))
    (define hash->list
      (lambda (_h68873_)
        (let ((_h68875_
               (if (and (let () (declare (not safe)) (##structure? _h68873_))
                        (let ((__tmp71885
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68873_))))
                          (declare (not safe))
                          (eq? __tmp71885 HashTable::t)))
                   _h68873_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68873_)))))
          (declare (not safe))
          (&hash->list _h68875_))))
    (define &hash->list
      (lambda (_h68866_)
        (let ((_lst68868_ '()))
          (let ((__tmp71886
                 (lambda (_k68870_ _v68871_)
                   (set! _lst68868_
                         (let ((__tmp71887
                                (let ()
                                  (declare (not safe))
                                  (cons _k68870_ _v68871_))))
                           (declare (not safe))
                           (cons __tmp71887 _lst68868_))))))
            (declare (not safe))
            (&HashTable-for-each _h68866_ __tmp71886))
          _lst68868_)))
    (define hash->plist
      (lambda (_h68862_)
        (let ((_h68864_
               (if (and (let () (declare (not safe)) (##structure? _h68862_))
                        (let ((__tmp71888
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68862_))))
                          (declare (not safe))
                          (eq? __tmp71888 HashTable::t)))
                   _h68862_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68862_)))))
          (declare (not safe))
          (&hash->plist _h68864_))))
    (define &hash->plist
      (lambda (_h68855_)
        (let ((_lst68857_ '()))
          (let ((__tmp71889
                 (lambda (_k68859_ _v68860_)
                   (set! _lst68857_
                         (let ((__tmp71890
                                (let ()
                                  (declare (not safe))
                                  (cons _v68860_ _lst68857_))))
                           (declare (not safe))
                           (cons _k68859_ __tmp71890))))))
            (declare (not safe))
            (&HashTable-for-each _h68855_ __tmp71889))
          _lst68857_)))
    (define hash-for-each
      (lambda (_proc68852_ _h68853_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h68853_ _proc68852_))))
    (define hash-map
      (lambda (_proc68844_ _h68845_)
        (let ((_result68847_ '()))
          (let ((__tmp71891
                 (lambda (_k68849_ _v68850_)
                   (set! _result68847_
                         (let ((__tmp71892 (_proc68844_ _k68849_ _v68850_)))
                           (declare (not safe))
                           (cons __tmp71892 _result68847_))))))
            (declare (not safe))
            (HashTable-for-each _h68845_ __tmp71891))
          _result68847_)))
    (define hash-fold
      (lambda (_proc68835_ _iv68836_ _h68837_)
        (let ((_result68839_ _iv68836_))
          (let ((__tmp71893
                 (lambda (_k68841_ _v68842_)
                   (set! _result68839_
                         (_proc68835_ _k68841_ _v68842_ _result68839_)))))
            (declare (not safe))
            (HashTable-for-each _h68837_ __tmp71893))
          _result68839_)))
    (define hash-find__%
      (lambda (_proc68811_ _h68812_ _default-value68813_)
        (call-with-current-continuation
         (lambda (_return68815_)
           (let ((__tmp71894
                  (lambda (_k68817_ _v68818_)
                    (let ((_$e68820_ (_proc68811_ _k68817_ _v68818_)))
                      (if _$e68820_ (_return68815_ _$e68820_) '#!void)))))
             (declare (not safe))
             (HashTable-for-each _h68812_ __tmp71894))
           _default-value68813_))))
    (define hash-find__0
      (lambda (_proc68826_ _h68827_)
        (let ((_default-value68829_ '#f))
          (declare (not safe))
          (hash-find__% _proc68826_ _h68827_ _default-value68829_))))
    (define hash-find
      (lambda _g71896_
        (let ((_g71895_ (let () (declare (not safe)) (##length _g71896_))))
          (cond ((let () (declare (not safe)) (##fx= _g71895_ 2))
                 (apply (lambda (_proc68826_ _h68827_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc68826_ _h68827_)))
                        _g71896_))
                ((let () (declare (not safe)) (##fx= _g71895_ 3))
                 (apply (lambda (_proc68831_ _h68832_ _default-value68833_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc68831_
                             _h68832_
                             _default-value68833_)))
                        _g71896_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g71896_))))))
    (define hash-keys
      (lambda (_h68806_)
        (let ((_h68808_
               (if (and (let () (declare (not safe)) (##structure? _h68806_))
                        (let ((__tmp71897
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68806_))))
                          (declare (not safe))
                          (eq? __tmp71897 HashTable::t)))
                   _h68806_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68806_)))))
          (declare (not safe))
          (&hash-keys _h68808_))))
    (define &hash-keys
      (lambda (_h68799_)
        (let ((_result68801_ '()))
          (let ((__tmp71898
                 (lambda (_k68803_ _v68804_)
                   (set! _result68801_
                         (let ()
                           (declare (not safe))
                           (cons _k68803_ _result68801_))))))
            (declare (not safe))
            (&HashTable-for-each _h68799_ __tmp71898))
          _result68801_)))
    (define hash-values
      (lambda (_h68795_)
        (let ((_h68797_
               (if (and (let () (declare (not safe)) (##structure? _h68795_))
                        (let ((__tmp71899
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68795_))))
                          (declare (not safe))
                          (eq? __tmp71899 HashTable::t)))
                   _h68795_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68795_)))))
          (declare (not safe))
          (&hash-values _h68797_))))
    (define &hash-values
      (lambda (_h68788_)
        (let ((_result68790_ '()))
          (let ((__tmp71900
                 (lambda (_k68792_ _v68793_)
                   (set! _result68790_
                         (let ()
                           (declare (not safe))
                           (cons _v68793_ _result68790_))))))
            (declare (not safe))
            (&HashTable-for-each _h68788_ __tmp71900))
          _result68790_)))
    (define hash-copy
      (lambda (_h68784_)
        (let ((_h68786_
               (if (and (let () (declare (not safe)) (##structure? _h68784_))
                        (let ((__tmp71901
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68784_))))
                          (declare (not safe))
                          (eq? __tmp71901 HashTable::t)))
                   _h68784_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68784_)))))
          (declare (not safe))
          (&HashTable-copy _h68786_))))
    (define &hash-copy
      (lambda (_h68782_)
        (let () (declare (not safe)) (&HashTable-copy _h68782_))))
    (define hash-merge
      (lambda (_h68777_ . _rest68778_)
        (let ((_copy68780_ (let () (declare (not safe)) (hash-copy _h68777_))))
          (apply hash-merge! _copy68780_ _rest68778_)
          _copy68780_)))
    (define hash-merge!
      (lambda (_h68767_ . _rest68768_)
        (let ((_h68770_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h68767_))))
          (for-each
           (lambda (_hr68772_)
             (let ((__tmp71902
                    (lambda (_k68774_ _v68775_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h68770_ _k68774_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h68770_ _k68774_ _v68775_))))))
               (declare (not safe))
               (hash-for-each __tmp71902 _hr68772_)))
           _rest68768_)
          _h68770_)))))
