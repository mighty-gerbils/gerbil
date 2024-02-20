(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1708418154)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp71864 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp71864
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args71767_
        (apply make-instance UnboundKeyError::t _$args71767_)))
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
      (lambda (_where71641_ _message71642_ . _irritants71643_)
        (raise (let ((__obj71861
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj71861
                  _message71642_
                  'where:
                  _where71641_
                  'irritants:
                  _irritants71643_)
                 __obj71861))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp71869 (list interface-instance::t))
            (__tmp71865
             (let ((__tmp71868
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp71866
                    (let ((__tmp71867
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp71867 '()))))
               (declare (not safe))
               (cons __tmp71868 __tmp71866))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp71869
         '(ref set! update! delete! for-each length copy clear)
         __tmp71865
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
      (let ((__tmp71874 (list interface-instance::t))
            (__tmp71870
             (let ((__tmp71873
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp71871
                    (let ((__tmp71872
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp71872 '()))))
               (declare (not safe))
               (cons __tmp71873 __tmp71871))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp71874
         '(begin-read! end-read! begin-write! end-write!)
         __tmp71870
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
      (lambda (_table71634_ _key71635_ _update71636_ _default71637_)
        (let ((_result71639_
               (table-ref _table71634_ _key71635_ _default71637_)))
          (table-set!
           _table71634_
           _key71635_
           (_update71636_ _default71637_)))))
    (define gambit-table-for-each
      (lambda (_table71631_ _proc71632_)
        (table-for-each _proc71632_ _table71631_)))
    (define gambit-table-clear!
      (lambda (_table71629_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table71629_ '0 '5 '#f '#f))))
    (let ((__tmp71875 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71875 'ref table-ref))
    (let ((__tmp71876 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71876 'set! table-set!))
    (let ((__tmp71877 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71877 'update! gambit-table-update!))
    (let ((__tmp71878 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71878 'delete! table-set!))
    (let ((__tmp71879 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71879 'for-each gambit-table-for-each))
    (let ((__tmp71880 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71880 'length table-length))
    (let ((__tmp71881 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71881 'copy table-copy))
    (let ((__tmp71882 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp71882 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots71611_ '(table count free hash test seed))
             (_slot-vector71613_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots71611_))))
             (_slot-table71620_
              (let ((_slot-table71615_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot71617_ _field71618_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table71615_
                      _slot71617_
                      _field71618_))
                   (let ((__tmp71883 (symbol->keyword _slot71617_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table71615_
                      __tmp71883
                      _field71618_)))
                 _slots71611_
                 (let ((__tmp71884 (length _slots71611_)))
                   (declare (not safe))
                   (iota__1 __tmp71884 '1)))
                _slot-table71615_))
             (_flags71622_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields71624_ '#())
             (_properties71626_
              (let ((__tmp71887
                     (let ((__tmp71888
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots71611_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp71888)))
                    (__tmp71885
                     (let ((__tmp71886
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp71886 '()))))
                (declare (not safe))
                (cons __tmp71887 __tmp71885))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags71622_
           __table::t
           _fields71624_
           '()
           _slot-vector71613_
           _slot-table71620_
           _properties71626_
           '#f
           '#f))))
    (define locked-hash-table::t
      (let ((__tmp71893 (list))
            (__tmp71889
             (let ((__tmp71892
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp71890
                    (let ((__tmp71891
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp71891 '()))))
               (declare (not safe))
               (cons __tmp71892 __tmp71890))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp71893
         '(table lock)
         __tmp71889
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args71608_
        (apply make-instance locked-hash-table::t _$args71608_)))
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
      (let ((__tmp71898 (list))
            (__tmp71894
             (let ((__tmp71897
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp71895
                    (let ((__tmp71896
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp71896 '()))))
               (declare (not safe))
               (cons __tmp71897 __tmp71895))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp71898
         '(table key-check)
         __tmp71894
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args71605_
        (apply make-instance checked-hash-table::t _$args71605_)))
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
      (let ((__tmp71901 (list hash-table::t))
            (__tmp71899
             (let ((__tmp71900
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71900 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp71901
         '()
         __tmp71899
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args71602_
        (apply make-instance eq-hash-table::t _$args71602_)))
    (define eqv-hash-table::t
      (let ((__tmp71904 (list hash-table::t))
            (__tmp71902
             (let ((__tmp71903
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71903 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp71904
         '()
         __tmp71902
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args71599_
        (apply make-instance eqv-hash-table::t _$args71599_)))
    (define symbol-hash-table::t
      (let ((__tmp71907 (list hash-table::t))
            (__tmp71905
             (let ((__tmp71906
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71906 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp71907
         '()
         __tmp71905
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args71596_
        (apply make-instance symbol-hash-table::t _$args71596_)))
    (define string-hash-table::t
      (let ((__tmp71910 (list hash-table::t))
            (__tmp71908
             (let ((__tmp71909
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp71909 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp71910
         '()
         __tmp71908
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args71593_
        (apply make-instance string-hash-table::t _$args71593_)))
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
      (lambda (_obj71591_)
        (if (let () (declare (not safe)) (##structure? _obj71591_))
            (let ((__tmp71911
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj71591_))))
              (declare (not safe))
              (eq? __tmp71911 HashTable::t))
            '#f)))
    (define is-hash-table?
      (lambda (_obj71586_)
        (let ((_$e71588_
               (if (let () (declare (not safe)) (##structure? _obj71586_))
                   (let ((__tmp71912
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj71586_))))
                     (declare (not safe))
                     (eq? __tmp71912 HashTable::t))
                   '#f)))
          (if _$e71588_
              _$e71588_
              (let ()
                (declare (not safe))
                (satisfies? HashTable::interface _obj71586_))))))
    (define HashTable-ref
      (lambda (_h71580_ _key71581_ _default71582_)
        (let ((_h71584_
               (if (and (let () (declare (not safe)) (##structure? _h71580_))
                        (let ((__tmp71913
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71580_))))
                          (declare (not safe))
                          (eq? __tmp71913 HashTable::t)))
                   _h71580_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71580_)))))
          (declare (not safe))
          (&HashTable-ref _h71584_ _key71581_ _default71582_))))
    (define &HashTable-ref
      (lambda (_h71575_ _key71576_ _default71577_)
        (declare (not safe))
        ((##unchecked-structure-ref _h71575_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h71575_ '1 interface-instance::t '#f)
         _key71576_
         _default71577_)))
    (define HashTable-set!
      (lambda (_h71569_ _key71570_ _value71571_)
        (let ((_h71573_
               (if (and (let () (declare (not safe)) (##structure? _h71569_))
                        (let ((__tmp71914
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71569_))))
                          (declare (not safe))
                          (eq? __tmp71914 HashTable::t)))
                   _h71569_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71569_)))))
          (declare (not safe))
          (&HashTable-set! _h71573_ _key71570_ _value71571_))))
    (define &HashTable-set!
      (lambda (_h71564_ _key71565_ _value71566_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71564_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h71564_ '1 interface-instance::t '#f)
           _key71565_
           _value71566_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h71557_ _key71558_ _update71559_ _default71560_)
        (let ((_h71562_
               (if (and (let () (declare (not safe)) (##structure? _h71557_))
                        (let ((__tmp71915
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71557_))))
                          (declare (not safe))
                          (eq? __tmp71915 HashTable::t)))
                   _h71557_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71557_)))))
          (declare (not safe))
          (&HashTable-update!
           _h71562_
           _key71558_
           _update71559_
           _default71560_))))
    (define &HashTable-update!
      (lambda (_h71551_ _key71552_ _update71553_ _default71554_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71551_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h71551_ '1 interface-instance::t '#f)
           _key71552_
           _update71553_
           _default71554_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h71546_ _key71547_)
        (let ((_h71549_
               (if (and (let () (declare (not safe)) (##structure? _h71546_))
                        (let ((__tmp71916
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71546_))))
                          (declare (not safe))
                          (eq? __tmp71916 HashTable::t)))
                   _h71546_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71546_)))))
          (declare (not safe))
          (&HashTable-delete! _h71549_ _key71547_))))
    (define &HashTable-delete!
      (lambda (_h71542_ _key71543_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71542_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h71542_ '1 interface-instance::t '#f)
           _key71543_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h71537_ _proc71538_)
        (let ((_h71540_
               (if (and (let () (declare (not safe)) (##structure? _h71537_))
                        (let ((__tmp71917
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71537_))))
                          (declare (not safe))
                          (eq? __tmp71917 HashTable::t)))
                   _h71537_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71537_)))))
          (declare (not safe))
          (&HashTable-for-each _h71540_ _proc71538_))))
    (define &HashTable-for-each
      (lambda (_h71533_ _proc71534_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71533_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h71533_ '1 interface-instance::t '#f)
           _proc71534_)
          '#!void)))
    (define HashTable-length
      (lambda (_h71529_)
        (let ((_h71531_
               (if (and (let () (declare (not safe)) (##structure? _h71529_))
                        (let ((__tmp71918
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71529_))))
                          (declare (not safe))
                          (eq? __tmp71918 HashTable::t)))
                   _h71529_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71529_)))))
          (declare (not safe))
          (&HashTable-length _h71531_))))
    (define &HashTable-length
      (lambda (_h71526_)
        (declare (not safe))
        ((##unchecked-structure-ref _h71526_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h71526_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h71522_)
        (let ((_h71524_
               (if (and (let () (declare (not safe)) (##structure? _h71522_))
                        (let ((__tmp71919
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71522_))))
                          (declare (not safe))
                          (eq? __tmp71919 HashTable::t)))
                   _h71522_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71522_)))))
          (declare (not safe))
          (&HashTable-copy _h71524_))))
    (define &HashTable-copy
      (lambda (_h71519_)
        (declare (not safe))
        (cast HashTable::interface
              ((##unchecked-structure-ref _h71519_ '8 HashTable::t '#f)
               (##unchecked-structure-ref
                _h71519_
                '1
                interface-instance::t
                '#f)))))
    (define HashTable-clear!
      (lambda (_h71515_)
        (let ((_h71517_
               (if (and (let () (declare (not safe)) (##structure? _h71515_))
                        (let ((__tmp71920
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h71515_))))
                          (declare (not safe))
                          (eq? __tmp71920 HashTable::t)))
                   _h71515_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h71515_)))))
          (declare (not safe))
          (&HashTable-clear! _h71517_))))
    (define &HashTable-clear!
      (lambda (_h71512_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h71512_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h71512_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl71509_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl71509_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl71509_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl71506_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl71506_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl71506_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl71503_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl71503_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl71503_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl71500_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl71500_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl71500_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref68539_
      (lambda (_self71487_ _key71489_ _default71490_)
        (let ((_h71492_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71487_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71494_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71487_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l71494_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h71492_ _key71489_ _default71490_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l71494_)))))))
    (define locked-hash-table::ref::specialize
      (lambda (__t71769)
        (let ((__table71770
               (let ((__tmp71772
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71769 'table))))
                 (if __tmp71772
                     __tmp71772
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__lock71771
               (let ((__tmp71773
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71769 'lock))))
                 (if __tmp71773
                     __tmp71773
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock))))))
          (lambda (_self71487_ _key71489_ _default71490_)
            (let ((_h71492_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71487_
                      __table71770
                      __t71769
                      '#f)))
                  (_l71494_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71487_
                      __lock71771
                      __t71769
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l71494_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-ref _h71492_ _key71489_ _default71490_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l71494_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::ref68539_
       locked-hash-table::ref::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'ref
       _locked-hash-table::ref68539_
       '#f))
    (define _locked-hash-table::set!68541_
      (lambda (_self71351_ _key71353_ _value71354_)
        (let ((_h71356_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71351_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71358_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71351_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71358_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h71356_ _key71353_ _value71354_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71358_)))))))
    (define locked-hash-table::set!::specialize
      (lambda (__t71774)
        (let ((__table71775
               (let ((__tmp71777
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71774 'table))))
                 (if __tmp71777
                     __tmp71777
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__lock71776
               (let ((__tmp71778
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71774 'lock))))
                 (if __tmp71778
                     __tmp71778
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock))))))
          (lambda (_self71351_ _key71353_ _value71354_)
            (let ((_h71356_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71351_
                      __table71775
                      __t71774
                      '#f)))
                  (_l71358_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71351_
                      __lock71776
                      __t71774
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l71358_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-set! _h71356_ _key71353_ _value71354_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l71358_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::set!68541_
       locked-hash-table::set!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'set!
       _locked-hash-table::set!68541_
       '#f))
    (define _locked-hash-table::update!68543_
      (lambda (_self71214_ _key71216_ _update71217_ _default71218_)
        (let ((_h71220_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71214_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71222_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71214_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71222_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h71220_
                _key71216_
                _update71217_
                _default71218_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71222_)))))))
    (define locked-hash-table::update!::specialize
      (lambda (__t71779)
        (let ((__table71780
               (let ((__tmp71782
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71779 'table))))
                 (if __tmp71782
                     __tmp71782
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__lock71781
               (let ((__tmp71783
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71779 'lock))))
                 (if __tmp71783
                     __tmp71783
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock))))))
          (lambda (_self71214_ _key71216_ _update71217_ _default71218_)
            (let ((_h71220_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71214_
                      __table71780
                      __t71779
                      '#f)))
                  (_l71222_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71214_
                      __lock71781
                      __t71779
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l71222_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-update!
                    _h71220_
                    _key71216_
                    _update71217_
                    _default71218_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l71222_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::update!68543_
       locked-hash-table::update!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'update!
       _locked-hash-table::update!68543_
       '#f))
    (define _locked-hash-table::delete!68545_
      (lambda (_self71079_ _key71081_)
        (let ((_h71083_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71079_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l71085_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self71079_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l71085_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h71083_ _key71081_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l71085_)))))))
    (define locked-hash-table::delete!::specialize
      (lambda (__t71784)
        (let ((__table71785
               (let ((__tmp71787
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71784 'table))))
                 (if __tmp71787
                     __tmp71787
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__lock71786
               (let ((__tmp71788
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71784 'lock))))
                 (if __tmp71788
                     __tmp71788
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock))))))
          (lambda (_self71079_ _key71081_)
            (let ((_h71083_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71079_
                      __table71785
                      __t71784
                      '#f)))
                  (_l71085_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self71079_
                      __lock71786
                      __t71784
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l71085_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-delete! _h71083_ _key71081_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l71085_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::delete!68545_
       locked-hash-table::delete!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!68545_
       '#f))
    (define _locked-hash-table::for-each68547_
      (lambda (_self70944_ _proc70946_)
        (let ((_h70948_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70944_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70950_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70944_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l70950_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h70948_ _proc70946_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l70950_)))))))
    (define locked-hash-table::for-each::specialize
      (lambda (__t71789)
        (let ((__table71790
               (let ((__tmp71792
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71789 'table))))
                 (if __tmp71792
                     __tmp71792
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__lock71791
               (let ((__tmp71793
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71789 'lock))))
                 (if __tmp71793
                     __tmp71793
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock))))))
          (lambda (_self70944_ _proc70946_)
            (let ((_h70948_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70944_
                      __table71790
                      __t71789
                      '#f)))
                  (_l70950_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70944_
                      __lock71791
                      __t71789
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l70950_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-for-each _h70948_ _proc70946_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l70950_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::for-each68547_
       locked-hash-table::for-each::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each68547_
       '#f))
    (define _locked-hash-table::length68549_
      (lambda (_self70810_)
        (let ((_h70813_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70810_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70815_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70810_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l70815_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h70813_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l70815_)))))))
    (define locked-hash-table::length::specialize
      (lambda (__t71794)
        (let ((__lock71795
               (let ((__tmp71797
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71794 'lock))))
                 (if __tmp71797
                     __tmp71797
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock)))))
              (__table71796
               (let ((__tmp71798
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71794 'table))))
                 (if __tmp71798
                     __tmp71798
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self70810_)
            (let ((_h70813_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70810_
                      __table71796
                      __t71794
                      '#f)))
                  (_l70815_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70810_
                      __lock71795
                      __t71794
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l70815_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-length _h70813_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l70815_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::length68549_
       locked-hash-table::length::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'length
       _locked-hash-table::length68549_
       '#f))
    (define _locked-hash-table::copy68551_
      (lambda (_self70676_)
        (let ((_h70679_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70676_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70681_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70676_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l70681_)))
           (lambda () (let () (declare (not safe)) (&HashTable-copy _h70679_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l70681_)))))))
    (define locked-hash-table::copy::specialize
      (lambda (__t71799)
        (let ((__table71800
               (let ((__tmp71802
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71799 'table))))
                 (if __tmp71802
                     __tmp71802
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__lock71801
               (let ((__tmp71803
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71799 'lock))))
                 (if __tmp71803
                     __tmp71803
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock))))))
          (lambda (_self70676_)
            (let ((_h70679_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70676_
                      __table71800
                      __t71799
                      '#f)))
                  (_l70681_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70676_
                      __lock71801
                      __t71799
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l70681_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-copy _h70679_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l70681_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::copy68551_
       locked-hash-table::copy::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'copy
       _locked-hash-table::copy68551_
       '#f))
    (define _locked-hash-table::clear!68553_
      (lambda (_self70542_)
        (let ((_h70545_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70542_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l70547_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70542_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l70547_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h70545_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l70547_)))))))
    (define locked-hash-table::clear!::specialize
      (lambda (__t71804)
        (let ((__table71805
               (let ((__tmp71807
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71804 'table))))
                 (if __tmp71807
                     __tmp71807
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__lock71806
               (let ((__tmp71808
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71804 'lock))))
                 (if __tmp71808
                     __tmp71808
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'lock))))))
          (lambda (_self70542_)
            (let ((_h70545_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70542_
                      __table71805
                      __t71804
                      '#f)))
                  (_l70547_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70542_
                      __lock71806
                      __t71804
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l70547_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-clear! _h70545_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l70547_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::clear!68553_
       locked-hash-table::clear!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!68553_
       '#f))
    (let ((__tmp71921 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp71921 'begin-read! mutex-lock!))
    (let ((__tmp71922 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp71922 'end-read! mutex-unlock!))
    (let ((__tmp71923 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp71923 'begin-write! mutex-lock!))
    (let ((__tmp71924 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp71924 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref68831_
      (lambda (_self70406_ _key70407_ _default70408_)
        (let ((_h70410_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70406_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70412_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70406_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7041470416_)
             (if (_g7041470416_ _key70407_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key70407_))))
           _key?70412_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h70410_ _key70407_ _default70408_)))))
    (define checked-hash-table::ref::specialize
      (lambda (__t71809)
        (let ((__key-check71810
               (let ((__tmp71812
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71809 'key-check))))
                 (if __tmp71812
                     __tmp71812
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check)))))
              (__table71811
               (let ((__tmp71813
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71809 'table))))
                 (if __tmp71813
                     __tmp71813
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self70406_ _key70407_ _default70408_)
            (let ((_h70410_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70406_
                      __table71811
                      __t71809
                      '#f)))
                  (_key?70412_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70406_
                      __key-check71810
                      __t71809
                      '#f))))
              ((lambda (_g7041470416_)
                 (if (_g7041470416_ _key70407_)
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _key70407_))))
               _key?70412_)
              (let ()
                (declare (not safe))
                (&HashTable-ref _h70410_ _key70407_ _default70408_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::ref68831_
       checked-hash-table::ref::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'ref
       _checked-hash-table::ref68831_
       '#f))
    (define _checked-hash-table::set!68833_
      (lambda (_self70270_ _key70271_ _value70272_)
        (let ((_h70274_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70270_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70276_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70270_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7027870280_)
             (if (_g7027870280_ _key70271_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key70271_))))
           _key?70276_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h70274_ _key70271_ _value70272_)))))
    (define checked-hash-table::set!::specialize
      (lambda (__t71814)
        (let ((__key-check71815
               (let ((__tmp71817
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71814 'key-check))))
                 (if __tmp71817
                     __tmp71817
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check)))))
              (__table71816
               (let ((__tmp71818
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71814 'table))))
                 (if __tmp71818
                     __tmp71818
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self70270_ _key70271_ _value70272_)
            (let ((_h70274_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70270_
                      __table71816
                      __t71814
                      '#f)))
                  (_key?70276_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70270_
                      __key-check71815
                      __t71814
                      '#f))))
              ((lambda (_g7027870280_)
                 (if (_g7027870280_ _key70271_)
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _key70271_))))
               _key?70276_)
              (let ()
                (declare (not safe))
                (&HashTable-set! _h70274_ _key70271_ _value70272_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::set!68833_
       checked-hash-table::set!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'set!
       _checked-hash-table::set!68833_
       '#f))
    (define _checked-hash-table::update!68835_
      (lambda (_self70135_ _key70136_ _update70137_ _default70138_)
        (let ((_h70140_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70135_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70142_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70135_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?70145_)
             (if (_key?70145_ _key70136_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key70136_)))
             (if (let () (declare (not safe)) (procedure? _update70137_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _update70137_))))
           _key?70142_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h70140_
             _key70136_
             _update70137_
             _default70138_)))))
    (define checked-hash-table::update!::specialize
      (lambda (__t71819)
        (let ((__table71820
               (let ((__tmp71822
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71819 'table))))
                 (if __tmp71822
                     __tmp71822
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__key-check71821
               (let ((__tmp71823
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71819 'key-check))))
                 (if __tmp71823
                     __tmp71823
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check))))))
          (lambda (_self70135_ _key70136_ _update70137_ _default70138_)
            (let ((_h70140_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70135_
                      __table71820
                      __t71819
                      '#f)))
                  (_key?70142_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70135_
                      __key-check71821
                      __t71819
                      '#f))))
              ((lambda (_key?70145_)
                 (if (_key?70145_ _key70136_)
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _key70136_)))
                 (if (let () (declare (not safe)) (procedure? _update70137_))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _update70137_))))
               _key?70142_)
              (let ()
                (declare (not safe))
                (&HashTable-update!
                 _h70140_
                 _key70136_
                 _update70137_
                 _default70138_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::update!68835_
       checked-hash-table::update!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'update!
       _checked-hash-table::update!68835_
       '#f))
    (define _checked-hash-table::delete!68837_
      (lambda (_self70000_ _key70001_)
        (let ((_h70003_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70000_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?70005_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self70000_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g7000770009_)
             (if (_g7000770009_ _key70001_)
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _key70001_))))
           _key?70005_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h70003_ _key70001_)))))
    (define checked-hash-table::delete!::specialize
      (lambda (__t71824)
        (let ((__key-check71825
               (let ((__tmp71827
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71824 'key-check))))
                 (if __tmp71827
                     __tmp71827
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check)))))
              (__table71826
               (let ((__tmp71828
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71824 'table))))
                 (if __tmp71828
                     __tmp71828
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self70000_ _key70001_)
            (let ((_h70003_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70000_
                      __table71826
                      __t71824
                      '#f)))
                  (_key?70005_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self70000_
                      __key-check71825
                      __t71824
                      '#f))))
              ((lambda (_g7000770009_)
                 (if (_g7000770009_ _key70001_)
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _key70001_))))
               _key?70005_)
              (let ()
                (declare (not safe))
                (&HashTable-delete! _h70003_ _key70001_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::delete!68837_
       checked-hash-table::delete!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!68837_
       '#f))
    (define _checked-hash-table::for-each68839_
      (lambda (_self69868_ _proc69869_)
        (let ((_h69871_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69868_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69873_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69868_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g71925_)
             (if (let () (declare (not safe)) (procedure? _proc69869_))
                 '#!void
                 (let ()
                   (declare (not safe))
                   (error '"invalid argument" _proc69869_))))
           _key?69873_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h69871_ _proc69869_)))))
    (define checked-hash-table::for-each::specialize
      (lambda (__t71829)
        (let ((__table71830
               (let ((__tmp71832
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71829 'table))))
                 (if __tmp71832
                     __tmp71832
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__key-check71831
               (let ((__tmp71833
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71829 'key-check))))
                 (if __tmp71833
                     __tmp71833
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check))))))
          (lambda (_self69868_ _proc69869_)
            (let ((_h69871_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69868_
                      __table71830
                      __t71829
                      '#f)))
                  (_key?69873_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69868_
                      __key-check71831
                      __t71829
                      '#f))))
              ((lambda (_g71926_)
                 (if (let () (declare (not safe)) (procedure? _proc69869_))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (error '"invalid argument" _proc69869_))))
               _key?69873_)
              (let ()
                (declare (not safe))
                (&HashTable-for-each _h69871_ _proc69869_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::for-each68839_
       checked-hash-table::for-each::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each68839_
       '#f))
    (define _checked-hash-table::length68841_
      (lambda (_self69738_)
        (let ((_h69740_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69738_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69742_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69738_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h69740_)))))
    (define checked-hash-table::length::specialize
      (lambda (__t71834)
        (let ((__table71835
               (let ((__tmp71837
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71834 'table))))
                 (if __tmp71837
                     __tmp71837
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__key-check71836
               (let ((__tmp71838
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71834 'key-check))))
                 (if __tmp71838
                     __tmp71838
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check))))))
          (lambda (_self69738_)
            (let ((_h69740_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69738_
                      __table71835
                      __t71834
                      '#f)))
                  (_key?69742_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69738_
                      __key-check71836
                      __t71834
                      '#f))))
              (let () (declare (not safe)) (&HashTable-length _h69740_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::length68841_
       checked-hash-table::length::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'length
       _checked-hash-table::length68841_
       '#f))
    (define _checked-hash-table::copy68843_
      (lambda (_self69608_)
        (let ((_h69610_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69608_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69612_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69608_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h69610_)))))
    (define checked-hash-table::copy::specialize
      (lambda (__t71839)
        (let ((__table71840
               (let ((__tmp71842
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71839 'table))))
                 (if __tmp71842
                     __tmp71842
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table)))))
              (__key-check71841
               (let ((__tmp71843
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71839 'key-check))))
                 (if __tmp71843
                     __tmp71843
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check))))))
          (lambda (_self69608_)
            (let ((_h69610_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69608_
                      __table71840
                      __t71839
                      '#f)))
                  (_key?69612_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69608_
                      __key-check71841
                      __t71839
                      '#f))))
              (let () (declare (not safe)) (&HashTable-copy _h69610_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::copy68843_
       checked-hash-table::copy::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'copy
       _checked-hash-table::copy68843_
       '#f))
    (define _checked-hash-table::clear!68845_
      (lambda (_self69478_)
        (let ((_h69480_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69478_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?69482_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self69478_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h69480_)))))
    (define checked-hash-table::clear!::specialize
      (lambda (__t71844)
        (let ((__key-check71845
               (let ((__tmp71847
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71844 'key-check))))
                 (if __tmp71847
                     __tmp71847
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'key-check)))))
              (__table71846
               (let ((__tmp71848
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t71844 'table))))
                 (if __tmp71848
                     __tmp71848
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'table))))))
          (lambda (_self69478_)
            (let ((_h69480_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69478_
                      __table71846
                      __t71844
                      '#f)))
                  (_key?69482_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self69478_
                      __key-check71845
                      __t71844
                      '#f))))
              (let () (declare (not safe)) (&HashTable-clear! _h69480_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::clear!68845_
       checked-hash-table::clear!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!68845_
       '#f))
    (define make-generic-hash-table
      (lambda (_table69348_
               _count69349_
               _free69350_
               _hash69351_
               _test69352_
               _seed69353_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table69348_
           _count69349_
           _free69350_
           _hash69351_
           _test69352_
           _seed69353_))))
    (define make-hash-table__%
      (lambda (_g71927_
               _size-hint6921169221_
               _seed6921269223_
               _test6921369225_
               _hash6921469227_
               _lock6921569229_
               _check6921669231_
               _weak-keys6921769233_
               _weak-values6921869235_)
        (let* ((_size-hint69238_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint6921169221_ absent-value))
                    '#f
                    _size-hint6921169221_))
               (_seed69240_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed6921269223_ absent-value))
                    (random-integer (macro-max-fixnum32))
                    _seed6921269223_))
               (_test69242_
                (if (let ()
                      (declare (not safe))
                      (eq? _test6921369225_ absent-value))
                    equal?
                    _test6921369225_))
               (_hash69244_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash6921469227_ absent-value))
                    '#f
                    _hash6921469227_))
               (_lock69246_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock6921569229_ absent-value))
                    '#f
                    _lock6921569229_))
               (_check69248_
                (if (let ()
                      (declare (not safe))
                      (eq? _check6921669231_ absent-value))
                    '#f
                    _check6921669231_))
               (_weak-keys69250_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys6921769233_ absent-value))
                    '#f
                    _weak-keys6921769233_))
               (_weak-values69252_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values6921869235_ absent-value))
                    '#f
                    _weak-values6921869235_)))
          (letrec ((_wrap-lock69254_
                    (lambda (_ht69332_)
                      (if _lock69246_
                          (let ((__tmp71928
                                 (let ((__tmp71929
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock69246_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht69332_
                                    __tmp71929))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp71928))
                          _ht69332_)))
                   (_wrap-checked69255_
                    (lambda (_ht69329_ _implicit69330_)
                      (if _check69248_
                          (let ((__tmp71930
                                 (let ((__tmp71931
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check69248_))
                                            _check69248_
                                            _implicit69330_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht69329_
                                    __tmp71931))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp71930))
                          _ht69329_)))
                   (_make69256_
                    (lambda (_kons69317_ _key?69318_ _hash69319_ _test69320_)
                      (let* ((_size69322_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint69238_)))
                             (_table69324_
                              (make-vector _size69322_ (macro-unused-obj)))
                             (_ht69326_
                              (let ((__tmp71932
                                     (_kons69317_
                                      _table69324_
                                      '0
                                      (fxquotient _size69322_ '2)
                                      _hash69319_
                                      _test69320_
                                      _seed69240_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp71932))))
                        (let ((__tmp71933
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock69254_ _ht69326_))))
                          (declare (not safe))
                          (_wrap-checked69255_ __tmp71933 _key?69318_)))))
                   (_make-gambit-table69257_
                    (lambda ()
                      (let* ((_size69302_
                              (let ((_$e69299_ _size-hint69238_))
                                (if _$e69299_ _$e69299_ (macro-absent-obj))))
                             (_test69307_
                              (let ((_$e69304_ _test69242_))
                                (if _$e69304_ _$e69304_ equal?)))
                             (_hash69312_
                              (let ((_$e69309_ _hash69244_))
                                (if _$e69309_
                                    _$e69309_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test69307_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test69307_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht69314_
                              (let ((__tmp71934
                                     (make-table
                                      'size:
                                      _size69302_
                                      'test:
                                      _test69307_
                                      'hash:
                                      _hash69312_
                                      'weak-keys:
                                      _weak-keys69250_
                                      'weak-values:
                                      _weak-values69252_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp71934))))
                        (let ((__tmp71935
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock69254_ _ht69314_))))
                          (declare (not safe))
                          (_wrap-checked69255_ __tmp71935 true))))))
            (if (or _weak-keys69250_ _weak-values69252_)
                (let () (declare (not safe)) (_make-gambit-table69257_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test69242_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test69242_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash69244_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash69244_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash69244_ eq-hash))))
                    (let ()
                      (declare (not safe))
                      (_make69256_ make-eq-hash-table true eq-hash eq?))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test69242_ eqv?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test69242_ ##eqv?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash69244_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash69244_ eqv?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash69244_ eqv-hash))))
                        (let ()
                          (declare (not safe))
                          (_make69256_ make-eqv-hash-table true eqv-hash eqv?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test69242_ eq?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test69242_ ##eq?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (eq? _hash69244_ symbolic-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash69244_ ##symbol-hash))))
                            (let ()
                              (declare (not safe))
                              (_make69256_
                               make-symbol-hash-table
                               symbolic?
                               symbolic-hash
                               eq?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test69242_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test69242_ ##equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test69242_ string=?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test69242_ ##string=?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash69244_ string-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash69244_ ##string=?-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make69256_
                                   make-string-hash-table
                                   string?
                                   string-hash
                                   ##string=?))
                                (if (and (let ()
                                           (declare (not safe))
                                           (eq? _test69242_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (not _hash69244_)))
                                    (let ()
                                      (declare (not safe))
                                      (_make69256_
                                       make-generic-hash-table
                                       true
                                       equal?-hash
                                       equal?))
                                    (if (let ((__tmp71937
                                               (let ()
                                                 (declare (not safe))
                                                 (procedure? _test69242_))))
                                          (declare (not safe))
                                          (not __tmp71937))
                                        (let ()
                                          (declare (not safe))
                                          (error '"bad hash table test function; expected procedure"
                                                 _test69242_))
                                        (if (let ((__tmp71936
                                                   (let ()
                                                     (declare (not safe))
                                                     (procedure?
                                                      _hash69244_))))
                                              (declare (not safe))
                                              (not __tmp71936))
                                            (let ()
                                              (declare (not safe))
                                              (error '"bad hash table hash function; expected procedure"
                                                     _hash69244_))
                                            (let ()
                                              (declare (not safe))
                                              (_make69256_
                                               make-generic-hash-table
                                               true
                                               _hash69244_
                                               _test69242_))))))))))))))
    (define make-hash-table__@
      (lambda (_keys6921069337_ . _args69339_)
        (apply make-hash-table__%
               _keys6921069337_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6921069337_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6921069337_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6921069337_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6921069337_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6921069337_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6921069337_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6921069337_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6921069337_
                  'weak-values:
                  absent-value))
               _args69339_)))
    (define make-hash-table
      (lambda _args6921969345_
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
               _args6921969345_)))
    (define make-hash-table-eq
      (lambda _args69207_ (apply make-hash-table 'test: eq? _args69207_)))
    (define make-hash-table-eqv
      (lambda _args69205_ (apply make-hash-table 'test: eqv? _args69205_)))
    (define make-hash-table-symbolic
      (lambda _args69203_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args69203_)))
    (define make-hash-table-string
      (lambda _args69201_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args69201_)))
    (define list->hash-table
      (lambda (_lst69198_ . _args69199_)
        (let ((__tmp71938
               (apply make-hash-table 'size: (length _lst69198_) _args69199_)))
          (declare (not safe))
          (list->hash-table! _lst69198_ __tmp71938))))
    (define list->hash-table-eq
      (lambda (_lst69195_ . _args69196_)
        (let ((__tmp71939
               (apply make-hash-table-eq
                      'size:
                      (length _lst69195_)
                      _args69196_)))
          (declare (not safe))
          (list->hash-table! _lst69195_ __tmp71939))))
    (define list->hash-table-eqv
      (lambda (_lst69192_ . _args69193_)
        (let ((__tmp71940
               (apply make-hash-table-eqv
                      'size:
                      (length _lst69192_)
                      _args69193_)))
          (declare (not safe))
          (list->hash-table! _lst69192_ __tmp71940))))
    (define list->hash-table-symbolic
      (lambda (_lst69189_ . _args69190_)
        (let ((__tmp71941
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst69189_)
                      _args69190_)))
          (declare (not safe))
          (list->hash-table! _lst69189_ __tmp71941))))
    (define list->hash-table-string
      (lambda (_lst69186_ . _args69187_)
        (let ((__tmp71942
               (apply make-hash-table-string
                      'size:
                      (length _lst69186_)
                      _args69187_)))
          (declare (not safe))
          (list->hash-table! _lst69186_ __tmp71942))))
    (define list->hash-table!
      (lambda (_lst69153_ _h69154_)
        (for-each
         (lambda (_el69156_)
           (let* ((_el6915769164_ _el69156_)
                  (_E6915969168_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching" _el6915769164_))))
                  (_K6916069174_
                   (lambda (_v69171_ _k69172_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h69154_ _k69172_ _v69171_)))))
             (if (let () (declare (not safe)) (##pair? _el6915769164_))
                 (let ((_hd6916169177_
                        (let () (declare (not safe)) (##car _el6915769164_)))
                       (_tl6916269179_
                        (let () (declare (not safe)) (##cdr _el6915769164_))))
                   (let* ((_k69182_ _hd6916169177_) (_v69184_ _tl6916269179_))
                     (declare (not safe))
                     (_K6916069174_ _v69184_ _k69182_)))
                 (let () (declare (not safe)) (_E6915969168_)))))
         _lst69153_)
        _h69154_))
    (define plist->hash-table
      (lambda (_lst69150_ . _args69151_)
        (let ((__tmp71943
               (apply make-hash-table 'size: (length _lst69150_) _args69151_)))
          (declare (not safe))
          (plist->hash-table! _lst69150_ __tmp71943))))
    (define plist->hash-table-eq
      (lambda (_lst69147_ . _args69148_)
        (let ((__tmp71944
               (apply make-hash-table-eq
                      'size:
                      (length _lst69147_)
                      _args69148_)))
          (declare (not safe))
          (plist->hash-table! _lst69147_ __tmp71944))))
    (define plist->hash-table-eqv
      (lambda (_lst69144_ . _args69145_)
        (let ((__tmp71945
               (apply make-hash-table-eqv
                      'size:
                      (length _lst69144_)
                      _args69145_)))
          (declare (not safe))
          (plist->hash-table! _lst69144_ __tmp71945))))
    (define plist->hash-table-symbolic
      (lambda (_lst69141_ . _args69142_)
        (let ((__tmp71946
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst69141_)
                      _args69142_)))
          (declare (not safe))
          (plist->hash-table! _lst69141_ __tmp71946))))
    (define plist->hash-table-string
      (lambda (_lst69138_ . _args69139_)
        (let ((__tmp71947
               (apply make-hash-table-string
                      'size:
                      (length _lst69138_)
                      _args69139_)))
          (declare (not safe))
          (plist->hash-table! _lst69138_ __tmp71947))))
    (define plist->hash-table!
      (lambda (_lst69078_ _h69079_)
        (let _loop69081_ ((_rest69083_ _lst69078_))
          (let* ((_rest6908469096_ _rest69083_)
                 (_else6908769104_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _lst69078_)))))
            (let ((_K6909069119_
                   (lambda (_rest69115_ _val69116_ _key69117_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h69079_ _key69117_ _val69116_))
                     (let () (declare (not safe)) (_loop69081_ _rest69115_))))
                  (_K6908969109_ (lambda () _h69079_)))
              (let ((_try-match6908669112_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest6908469096_))
                           (let () (declare (not safe)) (_K6908969109_))
                           (let () (declare (not safe)) (_else6908769104_))))))
                (if (let () (declare (not safe)) (##pair? _rest6908469096_))
                    (let ((_tl6909269124_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest6908469096_)))
                          (_hd6909169122_
                           (let ()
                             (declare (not safe))
                             (##car _rest6908469096_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl6909269124_))
                          (let ((_tl6909469131_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl6909269124_)))
                                (_hd6909369129_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl6909269124_))))
                            (let ((_key69127_ _hd6909169122_)
                                  (_val69134_ _hd6909369129_)
                                  (_rest69136_ _tl6909469131_))
                              (let ()
                                (declare (not safe))
                                (_K6909069119_
                                 _rest69136_
                                 _val69134_
                                 _key69127_))))
                          (let () (declare (not safe)) (_else6908769104_))))
                    (let ()
                      (declare (not safe))
                      (_try-match6908669112_)))))))))
    (define hash-length
      (lambda (_h69074_)
        (let ((_h69076_
               (if (and (let () (declare (not safe)) (##structure? _h69074_))
                        (let ((__tmp71948
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69074_))))
                          (declare (not safe))
                          (eq? __tmp71948 HashTable::t)))
                   _h69074_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69074_)))))
          (declare (not safe))
          (&HashTable-length _h69076_))))
    (define &hash-length
      (lambda (_h69072_)
        (let () (declare (not safe)) (&HashTable-length _h69072_))))
    (define hash-ref__%
      (lambda (_h69054_ _key69055_ _default69056_)
        (let ((_h69058_
               (if (and (let () (declare (not safe)) (##structure? _h69054_))
                        (let ((__tmp71949
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69054_))))
                          (declare (not safe))
                          (eq? __tmp71949 HashTable::t)))
                   _h69054_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69054_)))))
          (declare (not safe))
          (&hash-ref__% _h69058_ _key69055_ _default69056_))))
    (define hash-ref__0
      (lambda (_h69063_ _key69064_)
        (let ((_default69066_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h69063_ _key69064_ _default69066_))))
    (define hash-ref
      (lambda _g71951_
        (let ((_g71950_ (let () (declare (not safe)) (##length _g71951_))))
          (cond ((let () (declare (not safe)) (##fx= _g71950_ 2))
                 (apply (lambda (_h69063_ _key69064_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h69063_ _key69064_)))
                        _g71951_))
                ((let () (declare (not safe)) (##fx= _g71950_ 3))
                 (apply (lambda (_h69068_ _key69069_ _default69070_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__% _h69068_ _key69069_ _default69070_)))
                        _g71951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g71951_))))))
    (define &hash-ref__%
      (lambda (_h69035_ _key69036_ _default69037_)
        (let ((_result69039_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h69035_ _key69036_ _default69037_))))
          (if (let ((__tmp71952 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result69039_ __tmp71952))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h69035_
                 'key:
                 _key69036_))
              _result69039_))))
    (define &hash-ref__0
      (lambda (_h69044_ _key69045_)
        (let ((_default69047_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h69044_ _key69045_ _default69047_))))
    (define &hash-ref
      (lambda _g71954_
        (let ((_g71953_ (let () (declare (not safe)) (##length _g71954_))))
          (cond ((let () (declare (not safe)) (##fx= _g71953_ 2))
                 (apply (lambda (_h69044_ _key69045_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h69044_ _key69045_)))
                        _g71954_))
                ((let () (declare (not safe)) (##fx= _g71953_ 3))
                 (apply (lambda (_h69049_ _key69050_ _default69051_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__% _h69049_ _key69050_ _default69051_)))
                        _g71954_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g71954_))))))
    (define hash-get
      (lambda (_h69029_ _key69030_)
        (let ((_h69032_
               (if (and (let () (declare (not safe)) (##structure? _h69029_))
                        (let ((__tmp71955
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69029_))))
                          (declare (not safe))
                          (eq? __tmp71955 HashTable::t)))
                   _h69029_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69029_)))))
          (declare (not safe))
          (&hash-get _h69032_ _key69030_))))
    (define &hash-get
      (lambda (_h69026_ _key69027_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h69026_ _key69027_ '#f))))
    (define hash-put!
      (lambda (_h69020_ _key69021_ _value69022_)
        (let ((_h69024_
               (if (and (let () (declare (not safe)) (##structure? _h69020_))
                        (let ((__tmp71956
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h69020_))))
                          (declare (not safe))
                          (eq? __tmp71956 HashTable::t)))
                   _h69020_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h69020_)))))
          (declare (not safe))
          (&HashTable-set! _h69024_ _key69021_ _value69022_))))
    (define &hash-put!
      (lambda (_h69016_ _key69017_ _value69018_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h69016_ _key69017_ _value69018_))))
    (define hash-update!__%
      (lambda (_h68995_ _key68996_ _update68997_ _default68998_)
        (let ((_h69000_
               (if (and (let () (declare (not safe)) (##structure? _h68995_))
                        (let ((__tmp71957
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68995_))))
                          (declare (not safe))
                          (eq? __tmp71957 HashTable::t)))
                   _h68995_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68995_)))))
          (declare (not safe))
          (&HashTable-update!
           _h69000_
           _key68996_
           _update68997_
           _default68998_))))
    (define hash-update!__0
      (lambda (_h69005_ _key69006_ _update69007_)
        (let ((_default69009_ '#!void))
          (declare (not safe))
          (hash-update!__% _h69005_ _key69006_ _update69007_ _default69009_))))
    (define hash-update!
      (lambda _g71959_
        (let ((_g71958_ (let () (declare (not safe)) (##length _g71959_))))
          (cond ((let () (declare (not safe)) (##fx= _g71958_ 3))
                 (apply (lambda (_h69005_ _key69006_ _update69007_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h69005_
                             _key69006_
                             _update69007_)))
                        _g71959_))
                ((let () (declare (not safe)) (##fx= _g71958_ 4))
                 (apply (lambda (_h69011_
                                 _key69012_
                                 _update69013_
                                 _default69014_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h69011_
                             _key69012_
                             _update69013_
                             _default69014_)))
                        _g71959_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g71959_))))))
    (define &hash-update!__%
      (lambda (_h68975_ _key68976_ _update68977_ _default68978_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h68975_
           _key68976_
           _update68977_
           _default68978_))))
    (define &hash-update!__0
      (lambda (_h68983_ _key68984_ _update68985_)
        (let ((_default68987_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h68983_
           _key68984_
           _update68985_
           _default68987_))))
    (define &hash-update!
      (lambda _g71961_
        (let ((_g71960_ (let () (declare (not safe)) (##length _g71961_))))
          (cond ((let () (declare (not safe)) (##fx= _g71960_ 3))
                 (apply (lambda (_h68983_ _key68984_ _update68985_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h68983_
                             _key68984_
                             _update68985_)))
                        _g71961_))
                ((let () (declare (not safe)) (##fx= _g71960_ 4))
                 (apply (lambda (_h68989_
                                 _key68990_
                                 _update68991_
                                 _default68992_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h68989_
                             _key68990_
                             _update68991_
                             _default68992_)))
                        _g71961_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g71961_))))))
    (define hash-remove!
      (lambda (_h68969_ _key68970_)
        (let ((_h68972_
               (if (and (let () (declare (not safe)) (##structure? _h68969_))
                        (let ((__tmp71962
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68969_))))
                          (declare (not safe))
                          (eq? __tmp71962 HashTable::t)))
                   _h68969_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68969_)))))
          (declare (not safe))
          (&HashTable-delete! _h68972_ _key68970_))))
    (define &hash-remove!
      (lambda (_h68966_ _key68967_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h68966_ _key68967_))))
    (define hash-key?
      (lambda (_h68961_ _k68962_)
        (let ((_h68964_
               (if (and (let () (declare (not safe)) (##structure? _h68961_))
                        (let ((__tmp71963
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68961_))))
                          (declare (not safe))
                          (eq? __tmp71963 HashTable::t)))
                   _h68961_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68961_)))))
          (declare (not safe))
          (&hash-key? _h68964_ _k68962_))))
    (define &hash-key?
      (lambda (_h68958_ _k68959_)
        (let ((__tmp71964
               (let ((__tmp71965
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h68958_ _k68959_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp71965 absent-value))))
          (declare (not safe))
          (not __tmp71964))))
    (define hash->list
      (lambda (_h68954_)
        (let ((_h68956_
               (if (and (let () (declare (not safe)) (##structure? _h68954_))
                        (let ((__tmp71966
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68954_))))
                          (declare (not safe))
                          (eq? __tmp71966 HashTable::t)))
                   _h68954_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68954_)))))
          (declare (not safe))
          (&hash->list _h68956_))))
    (define &hash->list
      (lambda (_h68947_)
        (let ((_lst68949_ '()))
          (let ((__tmp71967
                 (lambda (_k68951_ _v68952_)
                   (set! _lst68949_
                         (let ((__tmp71968
                                (let ()
                                  (declare (not safe))
                                  (cons _k68951_ _v68952_))))
                           (declare (not safe))
                           (cons __tmp71968 _lst68949_))))))
            (declare (not safe))
            (&HashTable-for-each _h68947_ __tmp71967))
          _lst68949_)))
    (define hash->plist
      (lambda (_h68943_)
        (let ((_h68945_
               (if (and (let () (declare (not safe)) (##structure? _h68943_))
                        (let ((__tmp71969
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68943_))))
                          (declare (not safe))
                          (eq? __tmp71969 HashTable::t)))
                   _h68943_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68943_)))))
          (declare (not safe))
          (&hash->plist _h68945_))))
    (define &hash->plist
      (lambda (_h68936_)
        (let ((_lst68938_ '()))
          (let ((__tmp71970
                 (lambda (_k68940_ _v68941_)
                   (set! _lst68938_
                         (let ((__tmp71971
                                (let ()
                                  (declare (not safe))
                                  (cons _v68941_ _lst68938_))))
                           (declare (not safe))
                           (cons _k68940_ __tmp71971))))))
            (declare (not safe))
            (&HashTable-for-each _h68936_ __tmp71970))
          _lst68938_)))
    (define hash-for-each
      (lambda (_proc68933_ _h68934_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h68934_ _proc68933_))))
    (define hash-map
      (lambda (_proc68925_ _h68926_)
        (let ((_result68928_ '()))
          (let ((__tmp71972
                 (lambda (_k68930_ _v68931_)
                   (set! _result68928_
                         (let ((__tmp71973 (_proc68925_ _k68930_ _v68931_)))
                           (declare (not safe))
                           (cons __tmp71973 _result68928_))))))
            (declare (not safe))
            (HashTable-for-each _h68926_ __tmp71972))
          _result68928_)))
    (define hash-fold
      (lambda (_proc68916_ _iv68917_ _h68918_)
        (let ((_result68920_ _iv68917_))
          (let ((__tmp71974
                 (lambda (_k68922_ _v68923_)
                   (set! _result68920_
                         (_proc68916_ _k68922_ _v68923_ _result68920_)))))
            (declare (not safe))
            (HashTable-for-each _h68918_ __tmp71974))
          _result68920_)))
    (define hash-find__%
      (lambda (_proc68892_ _h68893_ _default-value68894_)
        (call-with-current-continuation
         (lambda (_return68896_)
           (let ((__tmp71975
                  (lambda (_k68898_ _v68899_)
                    (let ((_$e68901_ (_proc68892_ _k68898_ _v68899_)))
                      (if _$e68901_ (_return68896_ _$e68901_) '#!void)))))
             (declare (not safe))
             (HashTable-for-each _h68893_ __tmp71975))
           _default-value68894_))))
    (define hash-find__0
      (lambda (_proc68907_ _h68908_)
        (let ((_default-value68910_ '#f))
          (declare (not safe))
          (hash-find__% _proc68907_ _h68908_ _default-value68910_))))
    (define hash-find
      (lambda _g71977_
        (let ((_g71976_ (let () (declare (not safe)) (##length _g71977_))))
          (cond ((let () (declare (not safe)) (##fx= _g71976_ 2))
                 (apply (lambda (_proc68907_ _h68908_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc68907_ _h68908_)))
                        _g71977_))
                ((let () (declare (not safe)) (##fx= _g71976_ 3))
                 (apply (lambda (_proc68912_ _h68913_ _default-value68914_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc68912_
                             _h68913_
                             _default-value68914_)))
                        _g71977_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g71977_))))))
    (define hash-keys
      (lambda (_h68887_)
        (let ((_h68889_
               (if (and (let () (declare (not safe)) (##structure? _h68887_))
                        (let ((__tmp71978
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68887_))))
                          (declare (not safe))
                          (eq? __tmp71978 HashTable::t)))
                   _h68887_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68887_)))))
          (declare (not safe))
          (&hash-keys _h68889_))))
    (define &hash-keys
      (lambda (_h68880_)
        (let ((_result68882_ '()))
          (let ((__tmp71979
                 (lambda (_k68884_ _v68885_)
                   (set! _result68882_
                         (let ()
                           (declare (not safe))
                           (cons _k68884_ _result68882_))))))
            (declare (not safe))
            (&HashTable-for-each _h68880_ __tmp71979))
          _result68882_)))
    (define hash-values
      (lambda (_h68876_)
        (let ((_h68878_
               (if (and (let () (declare (not safe)) (##structure? _h68876_))
                        (let ((__tmp71980
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68876_))))
                          (declare (not safe))
                          (eq? __tmp71980 HashTable::t)))
                   _h68876_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68876_)))))
          (declare (not safe))
          (&hash-values _h68878_))))
    (define &hash-values
      (lambda (_h68869_)
        (let ((_result68871_ '()))
          (let ((__tmp71981
                 (lambda (_k68873_ _v68874_)
                   (set! _result68871_
                         (let ()
                           (declare (not safe))
                           (cons _v68874_ _result68871_))))))
            (declare (not safe))
            (&HashTable-for-each _h68869_ __tmp71981))
          _result68871_)))
    (define hash-copy
      (lambda (_h68865_)
        (let ((_h68867_
               (if (and (let () (declare (not safe)) (##structure? _h68865_))
                        (let ((__tmp71982
                               (let ()
                                 (declare (not safe))
                                 (##structure-type _h68865_))))
                          (declare (not safe))
                          (eq? __tmp71982 HashTable::t)))
                   _h68865_
                   (let ()
                     (declare (not safe))
                     (cast HashTable::interface _h68865_)))))
          (declare (not safe))
          (&HashTable-copy _h68867_))))
    (define &hash-copy
      (lambda (_h68863_)
        (let () (declare (not safe)) (&HashTable-copy _h68863_))))
    (define hash-merge
      (lambda (_h68858_ . _rest68859_)
        (let ((_copy68861_ (let () (declare (not safe)) (hash-copy _h68858_))))
          (apply hash-merge! _copy68861_ _rest68859_)
          _copy68861_)))
    (define hash-merge!
      (lambda (_h68848_ . _rest68849_)
        (let ((_h68851_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h68848_))))
          (for-each
           (lambda (_hr68853_)
             (let ((__tmp71983
                    (lambda (_k68855_ _v68856_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h68851_ _k68855_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set! _h68851_ _k68855_ _v68856_))))))
               (declare (not safe))
               (hash-for-each __tmp71983 _hr68853_)))
           _rest68849_)
          _h68851_)))))
