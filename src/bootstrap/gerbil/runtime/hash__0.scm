(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1708289479)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp109761 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp109761
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let () (declare (not safe)) (make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _$args105597_
        (apply make-instance UnboundKeyError::t _$args105597_)))
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
      (lambda (_where105471_ _message105472_ . _irritants105473_)
        (raise (let ((__obj109758
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj109758
                  _message105472_
                  'where:
                  _where105471_
                  'irritants:
                  _irritants105473_)
                 __obj109758))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp109764 (list interface-instance::t))
            (__tmp109762
             (let ((__tmp109763
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp109763 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTable::t
         'HashTable
         __tmp109764
         '(ref set update del each length copy clear)
         __tmp109762
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
      (let ((__tmp109767 (list interface-instance::t))
            (__tmp109765
             (let ((__tmp109766
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp109766 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#HashTableLock::t
         'HashTableLock
         __tmp109767
         '(begin-read end-read begin-write end-write)
         __tmp109765
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
      (lambda (_table105464_ _key105465_ _update105466_ _default105467_)
        (let ((_result105469_
               (table-ref _table105464_ _key105465_ _default105467_)))
          (table-set!
           _table105464_
           _key105465_
           (_update105466_ _default105467_)))))
    (define gambit-table-for-each
      (lambda (_table105461_ _proc105462_)
        (table-for-each _proc105462_ _table105461_)))
    (define gambit-table-clear!
      (lambda (_table105459_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _table105459_ '0 '5 '#f '#f))))
    (let ((__tmp109768 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp109768 'ref table-ref))
    (let ((__tmp109769 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp109769 'set! table-set!))
    (let ((__tmp109770 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp109770 'update! gambit-table-update!))
    (let ((__tmp109771 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp109771 'delete! table-set!))
    (let ((__tmp109772 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp109772 'for-each gambit-table-for-each))
    (let ((__tmp109773 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp109773 'length table-length))
    (let ((__tmp109774 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp109774 'copy table-copy))
    (let ((__tmp109775 (macro-type-table)))
      (declare (not safe))
      (bind-method! __tmp109775 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_slots105441_ '(table count free hash test seed))
             (_slot-vector105443_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots105441_))))
             (_slot-table105450_
              (let ((_slot-table105445_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table '#f '0))))
                (for-each
                 (lambda (_slot105447_ _field105448_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table105445_
                      _slot105447_
                      _field105448_))
                   (let ((__tmp109776 (symbol->keyword _slot105447_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table105445_
                      __tmp109776
                      _field105448_)))
                 _slots105441_
                 (let ((__tmp109777 (length _slots105441_)))
                   (declare (not safe))
                   (iota __tmp109777 '1)))
                _slot-table105445_))
             (_flags105452_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields105454_ '#())
             (_properties105456_
              (let ((__tmp109780
                     (let ((__tmp109781
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots105441_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp109781)))
                    (__tmp109778
                     (let ((__tmp109779
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp109779 '()))))
                (declare (not safe))
                (cons __tmp109780 __tmp109778))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           'gerbil#hash-table::t
           'hash-table
           _flags105452_
           __table::t
           _fields105454_
           '()
           _slot-vector105443_
           _slot-table105450_
           _properties105456_
           '#f
           '#f))))
    (define hash-table?
      (lambda (_obj105439_)
        (let ((__tmp109782
               (let () (declare (not safe)) (##type-id hash-table::t))))
          (declare (not safe))
          (##structure-instance-of? _obj105439_ __tmp109782))))
    (define locked-hash-table::t
      (let ((__tmp109787 (list))
            (__tmp109783
             (let ((__tmp109786
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp109784
                    (let ((__tmp109785
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp109785 '()))))
               (declare (not safe))
               (cons __tmp109786 __tmp109784))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp109787
         '(table lock)
         __tmp109783
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _$args105436_
        (apply make-instance locked-hash-table::t _$args105436_)))
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
      (let ((__tmp109792 (list))
            (__tmp109788
             (let ((__tmp109791
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp109789
                    (let ((__tmp109790
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp109790 '()))))
               (declare (not safe))
               (cons __tmp109791 __tmp109789))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp109792
         '(table key-check)
         __tmp109788
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _$args105433_
        (apply make-instance checked-hash-table::t _$args105433_)))
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
      (let ((__tmp109795 (list hash-table::t))
            (__tmp109793
             (let ((__tmp109794
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp109794 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp109795
         '()
         __tmp109793
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _$args105430_
        (apply make-instance eq-hash-table::t _$args105430_)))
    (define eqv-hash-table::t
      (let ((__tmp109798 (list hash-table::t))
            (__tmp109796
             (let ((__tmp109797
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp109797 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp109798
         '()
         __tmp109796
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _$args105427_
        (apply make-instance eqv-hash-table::t _$args105427_)))
    (define symbol-hash-table::t
      (let ((__tmp109801 (list hash-table::t))
            (__tmp109799
             (let ((__tmp109800
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp109800 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp109801
         '()
         __tmp109799
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _$args105424_
        (apply make-instance symbol-hash-table::t _$args105424_)))
    (define string-hash-table::t
      (let ((__tmp109804 (list hash-table::t))
            (__tmp109802
             (let ((__tmp109803
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp109803 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp109804
         '()
         __tmp109802
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _$args105421_
        (apply make-instance string-hash-table::t _$args105421_)))
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
      (lambda (_h105417_ _key105418_ _default105419_)
        (let ((__tmp109805
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h105417_))))
          (declare (not safe))
          (&HashTable-ref __tmp109805 _key105418_ _default105419_))))
    (define &HashTable-ref
      (lambda (_h105412_ _key105413_ _default105414_)
        (declare (not safe))
        ((##unchecked-structure-ref _h105412_ '2 HashTable::t '#f)
         (##unchecked-structure-ref _h105412_ '1 interface-instance::t '#f)
         _key105413_
         _default105414_)))
    (define HashTable-set!
      (lambda (_h105408_ _key105409_ _value105410_)
        (let ((__tmp109806
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h105408_))))
          (declare (not safe))
          (&HashTable-set! __tmp109806 _key105409_ _value105410_))))
    (define &HashTable-set!
      (lambda (_h105403_ _key105404_ _value105405_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h105403_ '3 HashTable::t '#f)
           (##unchecked-structure-ref _h105403_ '1 interface-instance::t '#f)
           _key105404_
           _value105405_)
          '#!void)))
    (define HashTable-update!
      (lambda (_h105398_ _key105399_ _update105400_ _default105401_)
        (let ((__tmp109807
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h105398_))))
          (declare (not safe))
          (&HashTable-update!
           __tmp109807
           _key105399_
           _update105400_
           _default105401_))))
    (define &HashTable-update!
      (lambda (_h105392_ _key105393_ _update105394_ _default105395_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h105392_ '4 HashTable::t '#f)
           (##unchecked-structure-ref _h105392_ '1 interface-instance::t '#f)
           _key105393_
           _update105394_
           _default105395_)
          '#!void)))
    (define HashTable-delete!
      (lambda (_h105389_ _key105390_)
        (let ((__tmp109808
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h105389_))))
          (declare (not safe))
          (&HashTable-delete! __tmp109808 _key105390_))))
    (define &HashTable-delete!
      (lambda (_h105385_ _key105386_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h105385_ '5 HashTable::t '#f)
           (##unchecked-structure-ref _h105385_ '1 interface-instance::t '#f)
           _key105386_)
          '#!void)))
    (define HashTable-for-each
      (lambda (_h105382_ _proc105383_)
        (let ((__tmp109809
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h105382_))))
          (declare (not safe))
          (&HashTable-for-each __tmp109809 _proc105383_))))
    (define &HashTable-for-each
      (lambda (_h105378_ _proc105379_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h105378_ '6 HashTable::t '#f)
           (##unchecked-structure-ref _h105378_ '1 interface-instance::t '#f)
           _proc105379_)
          '#!void)))
    (define HashTable-length
      (lambda (_h105376_)
        (let ((__tmp109810
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h105376_))))
          (declare (not safe))
          (&HashTable-length __tmp109810))))
    (define &HashTable-length
      (lambda (_h105373_)
        (declare (not safe))
        ((##unchecked-structure-ref _h105373_ '7 HashTable::t '#f)
         (##unchecked-structure-ref _h105373_ '1 interface-instance::t '#f))))
    (define HashTable-copy
      (lambda (_h105371_)
        (let ((__tmp109811
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h105371_))))
          (declare (not safe))
          (&HashTable-copy __tmp109811))))
    (define &HashTable-copy
      (lambda (_h105368_)
        (declare (not safe))
        ((##unchecked-structure-ref _h105368_ '8 HashTable::t '#f)
         (##unchecked-structure-ref _h105368_ '1 interface-instance::t '#f))))
    (define HashTable-clear!
      (lambda (_h105366_)
        (let ((__tmp109812
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h105366_))))
          (declare (not safe))
          (&HashTable-clear! __tmp109812))))
    (define &HashTable-clear!
      (lambda (_h105363_)
        (declare (not safe))
        (begin
          ((##unchecked-structure-ref _h105363_ '9 HashTable::t '#f)
           (##unchecked-structure-ref _h105363_ '1 interface-instance::t '#f))
          '#!void)))
    (define &HashTableLock-begin-read!
      (lambda (_hl105360_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl105360_ '2 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl105360_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-read!
      (lambda (_hl105357_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl105357_ '3 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl105357_ '1 interface-instance::t '#f))))
    (define &HashTableLock-begin-write!
      (lambda (_hl105354_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl105354_ '4 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl105354_ '1 interface-instance::t '#f))))
    (define &HashTableLock-end-write!
      (lambda (_hl105351_)
        (declare (not safe))
        ((##unchecked-structure-ref _hl105351_ '5 HashTableLock::t '#f)
         (##unchecked-structure-ref _hl105351_ '1 interface-instance::t '#f))))
    (define _locked-hash-table::ref102414_
      (lambda (_self105338_ _key105340_ _default105341_)
        (let ((_h105343_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self105338_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l105345_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self105338_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l105345_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-ref _h105343_ _key105340_ _default105341_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l105345_)))))))
    (define locked-hash-table::ref::specialize
      (lambda (__t109666)
        (let ((__table109667
               (let ((__tmp109669
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109666 'table))))
                 (if __tmp109669 __tmp109669 (error '"Unknown slot" 'table))))
              (__lock109668
               (let ((__tmp109670
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109666 'lock))))
                 (if __tmp109670 __tmp109670 (error '"Unknown slot" 'lock)))))
          (lambda (_self105338_ _key105340_ _default105341_)
            (let ((_h105343_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self105338_
                      __table109667
                      __t109666
                      '#f)))
                  (_l105345_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self105338_
                      __lock109668
                      __t109666
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l105345_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-ref _h105343_ _key105340_ _default105341_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l105345_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::ref102414_
       locked-hash-table::ref::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'ref
       _locked-hash-table::ref102414_
       '#f))
    (define _locked-hash-table::set!102416_
      (lambda (_self105202_ _key105204_ _value105205_)
        (let ((_h105207_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self105202_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l105209_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self105202_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l105209_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-set! _h105207_ _key105204_ _value105205_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l105209_)))))))
    (define locked-hash-table::set!::specialize
      (lambda (__t109671)
        (let ((__table109672
               (let ((__tmp109674
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109671 'table))))
                 (if __tmp109674 __tmp109674 (error '"Unknown slot" 'table))))
              (__lock109673
               (let ((__tmp109675
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109671 'lock))))
                 (if __tmp109675 __tmp109675 (error '"Unknown slot" 'lock)))))
          (lambda (_self105202_ _key105204_ _value105205_)
            (let ((_h105207_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self105202_
                      __table109672
                      __t109671
                      '#f)))
                  (_l105209_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self105202_
                      __lock109673
                      __t109671
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l105209_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-set! _h105207_ _key105204_ _value105205_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l105209_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::set!102416_
       locked-hash-table::set!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'set!
       _locked-hash-table::set!102416_
       '#f))
    (define _locked-hash-table::update!102418_
      (lambda (_self105065_ _key105067_ _update105068_ _default105069_)
        (let ((_h105071_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self105065_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l105073_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self105065_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l105073_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-update!
                _h105071_
                _key105067_
                _update105068_
                _default105069_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l105073_)))))))
    (define locked-hash-table::update!::specialize
      (lambda (__t109676)
        (let ((__table109677
               (let ((__tmp109679
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109676 'table))))
                 (if __tmp109679 __tmp109679 (error '"Unknown slot" 'table))))
              (__lock109678
               (let ((__tmp109680
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109676 'lock))))
                 (if __tmp109680 __tmp109680 (error '"Unknown slot" 'lock)))))
          (lambda (_self105065_ _key105067_ _update105068_ _default105069_)
            (let ((_h105071_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self105065_
                      __table109677
                      __t109676
                      '#f)))
                  (_l105073_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self105065_
                      __lock109678
                      __t109676
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l105073_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-update!
                    _h105071_
                    _key105067_
                    _update105068_
                    _default105069_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l105073_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::update!102418_
       locked-hash-table::update!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'update!
       _locked-hash-table::update!102418_
       '#f))
    (define _locked-hash-table::delete!102420_
      (lambda (_self104930_ _key104932_)
        (let ((_h104934_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104930_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l104936_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104930_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l104936_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-delete! _h104934_ _key104932_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l104936_)))))))
    (define locked-hash-table::delete!::specialize
      (lambda (__t109681)
        (let ((__table109682
               (let ((__tmp109684
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109681 'table))))
                 (if __tmp109684 __tmp109684 (error '"Unknown slot" 'table))))
              (__lock109683
               (let ((__tmp109685
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109681 'lock))))
                 (if __tmp109685 __tmp109685 (error '"Unknown slot" 'lock)))))
          (lambda (_self104930_ _key104932_)
            (let ((_h104934_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104930_
                      __table109682
                      __t109681
                      '#f)))
                  (_l104936_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104930_
                      __lock109683
                      __t109681
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l104936_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-delete! _h104934_ _key104932_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l104936_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::delete!102420_
       locked-hash-table::delete!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'delete!
       _locked-hash-table::delete!102420_
       '#f))
    (define _locked-hash-table::for-each102422_
      (lambda (_self104795_ _proc104797_)
        (let ((_h104799_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104795_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l104801_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104795_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l104801_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTable-for-each _h104799_ _proc104797_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l104801_)))))))
    (define locked-hash-table::for-each::specialize
      (lambda (__t109686)
        (let ((__lock109687
               (let ((__tmp109689
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109686 'lock))))
                 (if __tmp109689 __tmp109689 (error '"Unknown slot" 'lock))))
              (__table109688
               (let ((__tmp109690
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109686 'table))))
                 (if __tmp109690 __tmp109690 (error '"Unknown slot" 'table)))))
          (lambda (_self104795_ _proc104797_)
            (let ((_h104799_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104795_
                      __table109688
                      __t109686
                      '#f)))
                  (_l104801_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104795_
                      __lock109687
                      __t109686
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l104801_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTable-for-each _h104799_ _proc104797_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l104801_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::for-each102422_
       locked-hash-table::for-each::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'for-each
       _locked-hash-table::for-each102422_
       '#f))
    (define _locked-hash-table::length102424_
      (lambda (_self104661_)
        (let ((_h104664_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104661_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l104666_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104661_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l104666_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-length _h104664_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l104666_)))))))
    (define locked-hash-table::length::specialize
      (lambda (__t109691)
        (let ((__table109692
               (let ((__tmp109694
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109691 'table))))
                 (if __tmp109694 __tmp109694 (error '"Unknown slot" 'table))))
              (__lock109693
               (let ((__tmp109695
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109691 'lock))))
                 (if __tmp109695 __tmp109695 (error '"Unknown slot" 'lock)))))
          (lambda (_self104661_)
            (let ((_h104664_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104661_
                      __table109692
                      __t109691
                      '#f)))
                  (_l104666_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104661_
                      __lock109693
                      __t109691
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l104666_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-length _h104664_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l104666_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::length102424_
       locked-hash-table::length::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'length
       _locked-hash-table::length102424_
       '#f))
    (define _locked-hash-table::copy102426_
      (lambda (_self104527_)
        (let ((_h104530_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104527_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l104532_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104527_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-read! _l104532_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-copy _h104530_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-read! _l104532_)))))))
    (define locked-hash-table::copy::specialize
      (lambda (__t109696)
        (let ((__lock109697
               (let ((__tmp109699
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109696 'lock))))
                 (if __tmp109699 __tmp109699 (error '"Unknown slot" 'lock))))
              (__table109698
               (let ((__tmp109700
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109696 'table))))
                 (if __tmp109700 __tmp109700 (error '"Unknown slot" 'table)))))
          (lambda (_self104527_)
            (let ((_h104530_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104527_
                      __table109698
                      __t109696
                      '#f)))
                  (_l104532_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104527_
                      __lock109697
                      __t109696
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-read! _l104532_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-copy _h104530_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-read! _l104532_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::copy102426_
       locked-hash-table::copy::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'copy
       _locked-hash-table::copy102426_
       '#f))
    (define _locked-hash-table::clear!102428_
      (lambda (_self104393_)
        (let ((_h104396_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104393_
                  '1
                  locked-hash-table::t
                  '#f)))
              (_l104398_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104393_
                  '2
                  locked-hash-table::t
                  '#f))))
          (dynamic-wind
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-begin-write! _l104398_)))
           (lambda ()
             (let () (declare (not safe)) (&HashTable-clear! _h104396_)))
           (lambda ()
             (let ()
               (declare (not safe))
               (&HashTableLock-end-write! _l104398_)))))))
    (define locked-hash-table::clear!::specialize
      (lambda (__t109701)
        (let ((__table109702
               (let ((__tmp109704
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109701 'table))))
                 (if __tmp109704 __tmp109704 (error '"Unknown slot" 'table))))
              (__lock109703
               (let ((__tmp109705
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109701 'lock))))
                 (if __tmp109705 __tmp109705 (error '"Unknown slot" 'lock)))))
          (lambda (_self104393_)
            (let ((_h104396_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104393_
                      __table109702
                      __t109701
                      '#f)))
                  (_l104398_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104393_
                      __lock109703
                      __t109701
                      '#f))))
              (dynamic-wind
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-begin-write! _l104398_)))
               (lambda ()
                 (let () (declare (not safe)) (&HashTable-clear! _h104396_)))
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (&HashTableLock-end-write! _l104398_)))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _locked-hash-table::clear!102428_
       locked-hash-table::clear!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       locked-hash-table::t
       'clear!
       _locked-hash-table::clear!102428_
       '#f))
    (let ((__tmp109813 (macro-type-mutex)))
      (declare (not safe))
      (bind-method! __tmp109813 'begin-read! mutex-lock!))
    (let ((__tmp109814 (macro-type-mutex)))
      (declare (not safe))
      (bind-method! __tmp109814 'end-read! mutex-unlock!))
    (let ((__tmp109815 (macro-type-mutex)))
      (declare (not safe))
      (bind-method! __tmp109815 'begin-write! mutex-lock!))
    (let ((__tmp109816 (macro-type-mutex)))
      (declare (not safe))
      (bind-method! __tmp109816 'end-write! mutex-unlock!))
    (define _checked-hash-table::ref102706_
      (lambda (_self104257_ _key104258_ _default104259_)
        (let ((_h104261_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104257_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?104263_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104257_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g104265104267_)
             (if (_g104265104267_ _key104258_)
                 '#!void
                 (error '"invalid argument" _key104258_)))
           _key?104263_)
          (let ()
            (declare (not safe))
            (&HashTable-ref _h104261_ _key104258_ _default104259_)))))
    (define checked-hash-table::ref::specialize
      (lambda (__t109706)
        (let ((__table109707
               (let ((__tmp109709
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109706 'table))))
                 (if __tmp109709 __tmp109709 (error '"Unknown slot" 'table))))
              (__key-check109708
               (let ((__tmp109710
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109706 'key-check))))
                 (if __tmp109710
                     __tmp109710
                     (error '"Unknown slot" 'key-check)))))
          (lambda (_self104257_ _key104258_ _default104259_)
            (let ((_h104261_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104257_
                      __table109707
                      __t109706
                      '#f)))
                  (_key?104263_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104257_
                      __key-check109708
                      __t109706
                      '#f))))
              ((lambda (_g104265104267_)
                 (if (_g104265104267_ _key104258_)
                     '#!void
                     (error '"invalid argument" _key104258_)))
               _key?104263_)
              (let ()
                (declare (not safe))
                (&HashTable-ref _h104261_ _key104258_ _default104259_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::ref102706_
       checked-hash-table::ref::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       checked-hash-table::t
       'ref
       _checked-hash-table::ref102706_
       '#f))
    (define _checked-hash-table::set!102708_
      (lambda (_self104121_ _key104122_ _value104123_)
        (let ((_h104125_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104121_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?104127_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self104121_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g104129104131_)
             (if (_g104129104131_ _key104122_)
                 '#!void
                 (error '"invalid argument" _key104122_)))
           _key?104127_)
          (let ()
            (declare (not safe))
            (&HashTable-set! _h104125_ _key104122_ _value104123_)))))
    (define checked-hash-table::set!::specialize
      (lambda (__t109711)
        (let ((__table109712
               (let ((__tmp109714
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109711 'table))))
                 (if __tmp109714 __tmp109714 (error '"Unknown slot" 'table))))
              (__key-check109713
               (let ((__tmp109715
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109711 'key-check))))
                 (if __tmp109715
                     __tmp109715
                     (error '"Unknown slot" 'key-check)))))
          (lambda (_self104121_ _key104122_ _value104123_)
            (let ((_h104125_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104121_
                      __table109712
                      __t109711
                      '#f)))
                  (_key?104127_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self104121_
                      __key-check109713
                      __t109711
                      '#f))))
              ((lambda (_g104129104131_)
                 (if (_g104129104131_ _key104122_)
                     '#!void
                     (error '"invalid argument" _key104122_)))
               _key?104127_)
              (let ()
                (declare (not safe))
                (&HashTable-set! _h104125_ _key104122_ _value104123_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::set!102708_
       checked-hash-table::set!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       checked-hash-table::t
       'set!
       _checked-hash-table::set!102708_
       '#f))
    (define _checked-hash-table::update!102710_
      (lambda (_self103986_ _key103987_ _update103988_ _default103989_)
        (let ((_h103991_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103986_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?103993_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103986_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_key?103996_)
             (if (_key?103996_ _key103987_)
                 '#!void
                 (error '"invalid argument" _key103987_))
             (if (let () (declare (not safe)) (procedure? _update103988_))
                 '#!void
                 (error '"invalid argument" _update103988_)))
           _key?103993_)
          (let ()
            (declare (not safe))
            (&HashTable-update!
             _h103991_
             _key103987_
             _update103988_
             _default103989_)))))
    (define checked-hash-table::update!::specialize
      (lambda (__t109716)
        (let ((__key-check109717
               (let ((__tmp109719
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109716 'key-check))))
                 (if __tmp109719
                     __tmp109719
                     (error '"Unknown slot" 'key-check))))
              (__table109718
               (let ((__tmp109720
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109716 'table))))
                 (if __tmp109720 __tmp109720 (error '"Unknown slot" 'table)))))
          (lambda (_self103986_ _key103987_ _update103988_ _default103989_)
            (let ((_h103991_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103986_
                      __table109718
                      __t109716
                      '#f)))
                  (_key?103993_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103986_
                      __key-check109717
                      __t109716
                      '#f))))
              ((lambda (_key?103996_)
                 (if (_key?103996_ _key103987_)
                     '#!void
                     (error '"invalid argument" _key103987_))
                 (if (let () (declare (not safe)) (procedure? _update103988_))
                     '#!void
                     (error '"invalid argument" _update103988_)))
               _key?103993_)
              (let ()
                (declare (not safe))
                (&HashTable-update!
                 _h103991_
                 _key103987_
                 _update103988_
                 _default103989_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::update!102710_
       checked-hash-table::update!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       checked-hash-table::t
       'update!
       _checked-hash-table::update!102710_
       '#f))
    (define _checked-hash-table::delete!102712_
      (lambda (_self103851_ _key103852_)
        (let ((_h103854_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103851_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?103856_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103851_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g103858103860_)
             (if (_g103858103860_ _key103852_)
                 '#!void
                 (error '"invalid argument" _key103852_)))
           _key?103856_)
          (let ()
            (declare (not safe))
            (&HashTable-delete! _h103854_ _key103852_)))))
    (define checked-hash-table::delete!::specialize
      (lambda (__t109721)
        (let ((__table109722
               (let ((__tmp109724
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109721 'table))))
                 (if __tmp109724 __tmp109724 (error '"Unknown slot" 'table))))
              (__key-check109723
               (let ((__tmp109725
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109721 'key-check))))
                 (if __tmp109725
                     __tmp109725
                     (error '"Unknown slot" 'key-check)))))
          (lambda (_self103851_ _key103852_)
            (let ((_h103854_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103851_
                      __table109722
                      __t109721
                      '#f)))
                  (_key?103856_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103851_
                      __key-check109723
                      __t109721
                      '#f))))
              ((lambda (_g103858103860_)
                 (if (_g103858103860_ _key103852_)
                     '#!void
                     (error '"invalid argument" _key103852_)))
               _key?103856_)
              (let ()
                (declare (not safe))
                (&HashTable-delete! _h103854_ _key103852_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::delete!102712_
       checked-hash-table::delete!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       checked-hash-table::t
       'delete!
       _checked-hash-table::delete!102712_
       '#f))
    (define _checked-hash-table::for-each102714_
      (lambda (_self103719_ _proc103720_)
        (let ((_h103722_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103719_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?103724_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103719_
                  '2
                  checked-hash-table::t
                  '#f))))
          ((lambda (_g109817_)
             (if (let () (declare (not safe)) (procedure? _proc103720_))
                 '#!void
                 (error '"invalid argument" _proc103720_)))
           _key?103724_)
          (let ()
            (declare (not safe))
            (&HashTable-for-each _h103722_ _proc103720_)))))
    (define checked-hash-table::for-each::specialize
      (lambda (__t109726)
        (let ((__key-check109727
               (let ((__tmp109729
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109726 'key-check))))
                 (if __tmp109729
                     __tmp109729
                     (error '"Unknown slot" 'key-check))))
              (__table109728
               (let ((__tmp109730
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109726 'table))))
                 (if __tmp109730 __tmp109730 (error '"Unknown slot" 'table)))))
          (lambda (_self103719_ _proc103720_)
            (let ((_h103722_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103719_
                      __table109728
                      __t109726
                      '#f)))
                  (_key?103724_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103719_
                      __key-check109727
                      __t109726
                      '#f))))
              ((lambda (_g109818_)
                 (if (let () (declare (not safe)) (procedure? _proc103720_))
                     '#!void
                     (error '"invalid argument" _proc103720_)))
               _key?103724_)
              (let ()
                (declare (not safe))
                (&HashTable-for-each _h103722_ _proc103720_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::for-each102714_
       checked-hash-table::for-each::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       checked-hash-table::t
       'for-each
       _checked-hash-table::for-each102714_
       '#f))
    (define _checked-hash-table::length102716_
      (lambda (_self103589_)
        (let ((_h103591_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103589_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?103593_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103589_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-length _h103591_)))))
    (define checked-hash-table::length::specialize
      (lambda (__t109731)
        (let ((__table109732
               (let ((__tmp109734
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109731 'table))))
                 (if __tmp109734 __tmp109734 (error '"Unknown slot" 'table))))
              (__key-check109733
               (let ((__tmp109735
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109731 'key-check))))
                 (if __tmp109735
                     __tmp109735
                     (error '"Unknown slot" 'key-check)))))
          (lambda (_self103589_)
            (let ((_h103591_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103589_
                      __table109732
                      __t109731
                      '#f)))
                  (_key?103593_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103589_
                      __key-check109733
                      __t109731
                      '#f))))
              (let () (declare (not safe)) (&HashTable-length _h103591_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::length102716_
       checked-hash-table::length::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       checked-hash-table::t
       'length
       _checked-hash-table::length102716_
       '#f))
    (define _checked-hash-table::copy102718_
      (lambda (_self103459_)
        (let ((_h103461_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103459_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?103463_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103459_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-copy _h103461_)))))
    (define checked-hash-table::copy::specialize
      (lambda (__t109736)
        (let ((__table109737
               (let ((__tmp109739
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109736 'table))))
                 (if __tmp109739 __tmp109739 (error '"Unknown slot" 'table))))
              (__key-check109738
               (let ((__tmp109740
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109736 'key-check))))
                 (if __tmp109740
                     __tmp109740
                     (error '"Unknown slot" 'key-check)))))
          (lambda (_self103459_)
            (let ((_h103461_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103459_
                      __table109737
                      __t109736
                      '#f)))
                  (_key?103463_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103459_
                      __key-check109738
                      __t109736
                      '#f))))
              (let () (declare (not safe)) (&HashTable-copy _h103461_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::copy102718_
       checked-hash-table::copy::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       checked-hash-table::t
       'copy
       _checked-hash-table::copy102718_
       '#f))
    (define _checked-hash-table::clear!102720_
      (lambda (_self103329_)
        (let ((_h103331_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103329_
                  '1
                  checked-hash-table::t
                  '#f)))
              (_key?103333_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  _self103329_
                  '2
                  checked-hash-table::t
                  '#f))))
          (let () (declare (not safe)) (&HashTable-clear! _h103331_)))))
    (define checked-hash-table::clear!::specialize
      (lambda (__t109741)
        (let ((__table109742
               (let ((__tmp109744
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109741 'table))))
                 (if __tmp109744 __tmp109744 (error '"Unknown slot" 'table))))
              (__key-check109743
               (let ((__tmp109745
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t109741 'key-check))))
                 (if __tmp109745
                     __tmp109745
                     (error '"Unknown slot" 'key-check)))))
          (lambda (_self103329_)
            (let ((_h103331_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103329_
                      __table109742
                      __t109741
                      '#f)))
                  (_key?103333_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _self103329_
                      __key-check109743
                      __t109741
                      '#f))))
              (let () (declare (not safe)) (&HashTable-clear! _h103331_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       _checked-hash-table::clear!102720_
       checked-hash-table::clear!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       checked-hash-table::t
       'clear!
       _checked-hash-table::clear!102720_
       '#f))
    (define make-generic-hash-table
      (lambda (_table103199_
               _count103200_
               _free103201_
               _hash103202_
               _test103203_
               _seed103204_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _table103199_
           _count103200_
           _free103201_
           _hash103202_
           _test103203_
           _seed103204_))))
    (define make-hash-table__%
      (lambda (_g109819_
               _size-hint103062103072_
               _seed103063103074_
               _test103064103076_
               _hash103065103078_
               _lock103066103080_
               _check103067103082_
               _weak-keys103068103084_
               _weak-values103069103086_)
        (let* ((_size-hint103089_
                (if (let ()
                      (declare (not safe))
                      (eq? _size-hint103062103072_ absent-value))
                    '#f
                    _size-hint103062103072_))
               (_seed103091_
                (if (let ()
                      (declare (not safe))
                      (eq? _seed103063103074_ absent-value))
                    (random-integer (macro-max-fixnum32))
                    _seed103063103074_))
               (_test103093_
                (if (let ()
                      (declare (not safe))
                      (eq? _test103064103076_ absent-value))
                    equal?
                    _test103064103076_))
               (_hash103095_
                (if (let ()
                      (declare (not safe))
                      (eq? _hash103065103078_ absent-value))
                    '#f
                    _hash103065103078_))
               (_lock103097_
                (if (let ()
                      (declare (not safe))
                      (eq? _lock103066103080_ absent-value))
                    '#f
                    _lock103066103080_))
               (_check103099_
                (if (let ()
                      (declare (not safe))
                      (eq? _check103067103082_ absent-value))
                    '#f
                    _check103067103082_))
               (_weak-keys103101_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-keys103068103084_ absent-value))
                    '#f
                    _weak-keys103068103084_))
               (_weak-values103103_
                (if (let ()
                      (declare (not safe))
                      (eq? _weak-values103069103086_ absent-value))
                    '#f
                    _weak-values103069103086_)))
          (letrec ((_wrap-lock103105_
                    (lambda (_ht103183_)
                      (if _lock103097_
                          (let ((__tmp109820
                                 (let ((__tmp109821
                                        (let ()
                                          (declare (not safe))
                                          (cast HashTableLock::interface
                                                _lock103097_))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _ht103183_
                                    __tmp109821))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp109820))
                          _ht103183_)))
                   (_wrap-checked103106_
                    (lambda (_ht103180_ _implicit103181_)
                      (if _check103099_
                          (let ((__tmp109822
                                 (let ((__tmp109823
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _check103099_))
                                            _check103099_
                                            _implicit103181_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _ht103180_
                                    __tmp109823))))
                            (declare (not safe))
                            (cast HashTable::interface __tmp109822))
                          _ht103180_)))
                   (_make103107_
                    (lambda (_kons103168_
                             _key?103169_
                             _hash103170_
                             _test103171_)
                      (let* ((_size103173_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size _size-hint103089_)))
                             (_table103175_
                              (make-vector _size103173_ (macro-unused-obj)))
                             (_ht103177_
                              (let ((__tmp109824
                                     (_kons103168_
                                      _table103175_
                                      '0
                                      (fxquotient _size103173_ '2)
                                      _hash103170_
                                      _test103171_
                                      _seed103091_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp109824))))
                        (let ((__tmp109825
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock103105_ _ht103177_))))
                          (declare (not safe))
                          (_wrap-checked103106_ __tmp109825 _key?103169_)))))
                   (_make-gambit-table103108_
                    (lambda ()
                      (let* ((_size103153_
                              (let ((_$e103150_ _size-hint103089_))
                                (if _$e103150_ _$e103150_ (macro-absent-obj))))
                             (_test103158_
                              (let ((_$e103155_ _test103093_))
                                (if _$e103155_ _$e103155_ equal?)))
                             (_hash103163_
                              (let ((_$e103160_ _hash103095_))
                                (if _$e103160_
                                    _$e103160_
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? _test103158_ eq?))
                                        eq?-hash
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? _test103158_ eqv?))
                                            eqv?-hash
                                            equal?-hash)))))
                             (_ht103165_
                              (let ((__tmp109826
                                     (make-table
                                      'size:
                                      _size103153_
                                      'test:
                                      _test103158_
                                      'hash:
                                      _hash103163_
                                      'weak-keys:
                                      _weak-keys103101_
                                      'weak-values:
                                      _weak-values103103_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp109826))))
                        (let ((__tmp109827
                               (let ()
                                 (declare (not safe))
                                 (_wrap-lock103105_ _ht103165_))))
                          (declare (not safe))
                          (_wrap-checked103106_ __tmp109827 true))))))
            (if (or _weak-keys103101_ _weak-values103103_)
                (let () (declare (not safe)) (_make-gambit-table103108_))
                (if (and (or (let ()
                               (declare (not safe))
                               (eq? _test103093_ eq?))
                             (let ()
                               (declare (not safe))
                               (eq? _test103093_ ##eq?)))
                         (or (let () (declare (not safe)) (not _hash103095_))
                             (let ()
                               (declare (not safe))
                               (eq? _hash103095_ eq?-hash))
                             (let ()
                               (declare (not safe))
                               (eq? _hash103095_ eq-hash))))
                    (let ()
                      (declare (not safe))
                      (_make103107_ make-eq-hash-table true eq-hash eq?))
                    (if (and (or (let ()
                                   (declare (not safe))
                                   (eq? _test103093_ eqv?))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _test103093_ ##eqv?)))
                             (or (let ()
                                   (declare (not safe))
                                   (not _hash103095_))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash103095_ eqv?-hash))
                                 (let ()
                                   (declare (not safe))
                                   (eq? _hash103095_ eqv-hash))))
                        (let ()
                          (declare (not safe))
                          (_make103107_
                           make-eqv-hash-table
                           true
                           eqv-hash
                           eqv?))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (eq? _test103093_ eq?))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _test103093_ ##eq?)))
                                 (or (let ()
                                       (declare (not safe))
                                       (eq? _hash103095_ symbolic-hash))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _hash103095_ ##symbol-hash))))
                            (let ()
                              (declare (not safe))
                              (_make103107_
                               make-symbol-hash-table
                               symbolic?
                               symbolic-hash
                               eq?))
                            (if (and (or (let ()
                                           (declare (not safe))
                                           (eq? _test103093_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test103093_ ##equal?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test103093_ string=?))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _test103093_ ##string=?)))
                                     (or (let ()
                                           (declare (not safe))
                                           (eq? _hash103095_ string-hash))
                                         (let ()
                                           (declare (not safe))
                                           (eq? _hash103095_
                                                ##string=?-hash))))
                                (let ()
                                  (declare (not safe))
                                  (_make103107_
                                   make-string-hash-table
                                   string?
                                   string-hash
                                   ##string=?))
                                (if (and (let ()
                                           (declare (not safe))
                                           (eq? _test103093_ equal?))
                                         (let ()
                                           (declare (not safe))
                                           (not _hash103095_)))
                                    (let ()
                                      (declare (not safe))
                                      (_make103107_
                                       make-generic-hash-table
                                       true
                                       equal?-hash
                                       equal?))
                                    (if (let ((__tmp109829
                                               (let ()
                                                 (declare (not safe))
                                                 (procedure? _test103093_))))
                                          (declare (not safe))
                                          (not __tmp109829))
                                        (error '"bad hash table test function; expected procedure"
                                               _test103093_)
                                        (if (let ((__tmp109828
                                                   (let ()
                                                     (declare (not safe))
                                                     (procedure?
                                                      _hash103095_))))
                                              (declare (not safe))
                                              (not __tmp109828))
                                            (error '"bad hash table hash function; expected procedure"
                                                   _hash103095_)
                                            (let ()
                                              (declare (not safe))
                                              (_make103107_
                                               make-generic-hash-table
                                               true
                                               _hash103095_
                                               _test103093_))))))))))))))
    (define make-hash-table__@
      (lambda (_keys103061103188_ . _args103190_)
        (apply make-hash-table__%
               _keys103061103188_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys103061103188_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys103061103188_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys103061103188_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys103061103188_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys103061103188_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys103061103188_ 'check: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys103061103188_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys103061103188_
                  'weak-values:
                  absent-value))
               _args103190_)))
    (define make-hash-table
      (lambda _args103070103196_
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
               _args103070103196_)))
    (define make-hash-table-eq
      (lambda _args103058_ (apply make-hash-table 'test: eq? _args103058_)))
    (define make-hash-table-eqv
      (lambda _args103056_ (apply make-hash-table 'test: eqv? _args103056_)))
    (define make-hash-table-symbolic
      (lambda _args103054_
        (apply make-hash-table 'test: eq? 'hash: symbolic-hash _args103054_)))
    (define make-hash-table-string
      (lambda _args103052_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _args103052_)))
    (define list->hash-table
      (lambda (_lst103049_ . _args103050_)
        (let ((__tmp109830
               (apply make-hash-table
                      'size:
                      (length _lst103049_)
                      _args103050_)))
          (declare (not safe))
          (list->hash-table! _lst103049_ __tmp109830))))
    (define list->hash-table-eq
      (lambda (_lst103046_ . _args103047_)
        (let ((__tmp109831
               (apply make-hash-table-eq
                      'size:
                      (length _lst103046_)
                      _args103047_)))
          (declare (not safe))
          (list->hash-table! _lst103046_ __tmp109831))))
    (define list->hash-table-eqv
      (lambda (_lst103043_ . _args103044_)
        (let ((__tmp109832
               (apply make-hash-table-eqv
                      'size:
                      (length _lst103043_)
                      _args103044_)))
          (declare (not safe))
          (list->hash-table! _lst103043_ __tmp109832))))
    (define list->hash-table-symbolic
      (lambda (_lst103040_ . _args103041_)
        (let ((__tmp109833
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst103040_)
                      _args103041_)))
          (declare (not safe))
          (list->hash-table! _lst103040_ __tmp109833))))
    (define list->hash-table-string
      (lambda (_lst103037_ . _args103038_)
        (let ((__tmp109834
               (apply make-hash-table-string
                      'size:
                      (length _lst103037_)
                      _args103038_)))
          (declare (not safe))
          (list->hash-table! _lst103037_ __tmp109834))))
    (define list->hash-table!
      (lambda (_lst103004_ _h103005_)
        (for-each
         (lambda (_el103007_)
           (let* ((_el103008103015_ _el103007_)
                  (_E103010103019_
                   (lambda () (error '"No clause matching" _el103008103015_)))
                  (_K103011103025_
                   (lambda (_v103022_ _k103023_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h103005_ _k103023_ _v103022_)))))
             (if (let () (declare (not safe)) (##pair? _el103008103015_))
                 (let ((_hd103012103028_
                        (let () (declare (not safe)) (##car _el103008103015_)))
                       (_tl103013103030_
                        (let ()
                          (declare (not safe))
                          (##cdr _el103008103015_))))
                   (let* ((_k103033_ _hd103012103028_)
                          (_v103035_ _tl103013103030_))
                     (declare (not safe))
                     (_K103011103025_ _v103035_ _k103033_)))
                 (let () (declare (not safe)) (_E103010103019_)))))
         _lst103004_)
        _h103005_))
    (define plist->hash-table
      (lambda (_lst103001_ . _args103002_)
        (let ((__tmp109835
               (apply make-hash-table
                      'size:
                      (length _lst103001_)
                      _args103002_)))
          (declare (not safe))
          (plist->hash-table! _lst103001_ __tmp109835))))
    (define plist->hash-table-eq
      (lambda (_lst102998_ . _args102999_)
        (let ((__tmp109836
               (apply make-hash-table-eq
                      'size:
                      (length _lst102998_)
                      _args102999_)))
          (declare (not safe))
          (plist->hash-table! _lst102998_ __tmp109836))))
    (define plist->hash-table-eqv
      (lambda (_lst102995_ . _args102996_)
        (let ((__tmp109837
               (apply make-hash-table-eqv
                      'size:
                      (length _lst102995_)
                      _args102996_)))
          (declare (not safe))
          (plist->hash-table! _lst102995_ __tmp109837))))
    (define plist->hash-table-symbolic
      (lambda (_lst102992_ . _args102993_)
        (let ((__tmp109838
               (apply make-hash-table-symbolic
                      'size:
                      (length _lst102992_)
                      _args102993_)))
          (declare (not safe))
          (plist->hash-table! _lst102992_ __tmp109838))))
    (define plist->hash-table-string
      (lambda (_lst102989_ . _args102990_)
        (let ((__tmp109839
               (apply make-hash-table-string
                      'size:
                      (length _lst102989_)
                      _args102990_)))
          (declare (not safe))
          (plist->hash-table! _lst102989_ __tmp109839))))
    (define plist->hash-table!
      (lambda (_lst102929_ _h102930_)
        (let _loop102932_ ((_rest102934_ _lst102929_))
          (let* ((_rest102935102947_ _rest102934_)
                 (_else102938102955_
                  (lambda ()
                    (error '"bad property list -- uneven list" _lst102929_))))
            (let ((_K102941102970_
                   (lambda (_rest102966_ _val102967_ _key102968_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set! _h102930_ _key102968_ _val102967_))
                     (let ()
                       (declare (not safe))
                       (_loop102932_ _rest102966_))))
                  (_K102940102960_ (lambda () _h102930_)))
              (let ((_try-match102937102963_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest102935102947_))
                           (let () (declare (not safe)) (_K102940102960_))
                           (let ()
                             (declare (not safe))
                             (_else102938102955_))))))
                (if (let () (declare (not safe)) (##pair? _rest102935102947_))
                    (let ((_tl102943102975_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest102935102947_)))
                          (_hd102942102973_
                           (let ()
                             (declare (not safe))
                             (##car _rest102935102947_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl102943102975_))
                          (let ((_tl102945102982_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl102943102975_)))
                                (_hd102944102980_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl102943102975_))))
                            (let ((_key102978_ _hd102942102973_)
                                  (_val102985_ _hd102944102980_)
                                  (_rest102987_ _tl102945102982_))
                              (let ()
                                (declare (not safe))
                                (_K102941102970_
                                 _rest102987_
                                 _val102985_
                                 _key102978_))))
                          (let () (declare (not safe)) (_else102938102955_))))
                    (let ()
                      (declare (not safe))
                      (_try-match102937102963_)))))))))
    (define hash-length
      (lambda (_h102927_)
        (let ((__tmp109840
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102927_))))
          (declare (not safe))
          (&HashTable-length __tmp109840))))
    (define &hash-length
      (lambda (_h102925_)
        (let () (declare (not safe)) (&HashTable-length _h102925_))))
    (define hash-ref__%
      (lambda (_h102909_ _key102910_ _default102911_)
        (let ((__tmp109841
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102909_))))
          (declare (not safe))
          (&hash-ref__% __tmp109841 _key102910_ _default102911_))))
    (define hash-ref__0
      (lambda (_h102916_ _key102917_)
        (let ((_default102919_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _h102916_ _key102917_ _default102919_))))
    (define hash-ref
      (lambda _g109843_
        (let ((_g109842_ (let () (declare (not safe)) (##length _g109843_))))
          (cond ((let () (declare (not safe)) (##fx= _g109842_ 2))
                 (apply (lambda (_h102916_ _key102917_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _h102916_ _key102917_)))
                        _g109843_))
                ((let () (declare (not safe)) (##fx= _g109842_ 3))
                 (apply (lambda (_h102921_ _key102922_ _default102923_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__%
                             _h102921_
                             _key102922_
                             _default102923_)))
                        _g109843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g109843_))))))
    (define &hash-ref__%
      (lambda (_h102890_ _key102891_ _default102892_)
        (let ((_result102894_
               (let ()
                 (declare (not safe))
                 (&HashTable-ref _h102890_ _key102891_ _default102892_))))
          (if (let ((__tmp109844 (macro-absent-obj)))
                (declare (not safe))
                (eq? _result102894_ __tmp109844))
              (let ()
                (declare (not safe))
                (raise-unbound-key-error
                 'hash-ref
                 '"unknown hash key"
                 'hash:
                 _h102890_
                 'key:
                 _key102891_))
              _result102894_))))
    (define &hash-ref__0
      (lambda (_h102899_ _key102900_)
        (let ((_default102902_ (macro-absent-obj)))
          (declare (not safe))
          (&hash-ref__% _h102899_ _key102900_ _default102902_))))
    (define &hash-ref
      (lambda _g109846_
        (let ((_g109845_ (let () (declare (not safe)) (##length _g109846_))))
          (cond ((let () (declare (not safe)) (##fx= _g109845_ 2))
                 (apply (lambda (_h102899_ _key102900_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__0 _h102899_ _key102900_)))
                        _g109846_))
                ((let () (declare (not safe)) (##fx= _g109845_ 3))
                 (apply (lambda (_h102904_ _key102905_ _default102906_)
                          (let ()
                            (declare (not safe))
                            (&hash-ref__%
                             _h102904_
                             _key102905_
                             _default102906_)))
                        _g109846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-ref
                  _g109846_))))))
    (define hash-get
      (lambda (_h102886_ _key102887_)
        (let ((__tmp109847
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102886_))))
          (declare (not safe))
          (&hash-get __tmp109847 _key102887_))))
    (define &hash-get
      (lambda (_h102883_ _key102884_)
        (let ()
          (declare (not safe))
          (&HashTable-ref _h102883_ _key102884_ '#f))))
    (define hash-put!
      (lambda (_h102879_ _key102880_ _value102881_)
        (let ((__tmp109848
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102879_))))
          (declare (not safe))
          (&HashTable-set! __tmp109848 _key102880_ _value102881_))))
    (define &hash-put!
      (lambda (_h102875_ _key102876_ _value102877_)
        (let ()
          (declare (not safe))
          (&HashTable-set! _h102875_ _key102876_ _value102877_))))
    (define hash-update!__%
      (lambda (_h102856_ _key102857_ _update102858_ _default102859_)
        (let ((__tmp109849
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102856_))))
          (declare (not safe))
          (&HashTable-update!
           __tmp109849
           _key102857_
           _update102858_
           _default102859_))))
    (define hash-update!__0
      (lambda (_h102864_ _key102865_ _update102866_)
        (let ((_default102868_ '#!void))
          (declare (not safe))
          (hash-update!__%
           _h102864_
           _key102865_
           _update102866_
           _default102868_))))
    (define hash-update!
      (lambda _g109851_
        (let ((_g109850_ (let () (declare (not safe)) (##length _g109851_))))
          (cond ((let () (declare (not safe)) (##fx= _g109850_ 3))
                 (apply (lambda (_h102864_ _key102865_ _update102866_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _h102864_
                             _key102865_
                             _update102866_)))
                        _g109851_))
                ((let () (declare (not safe)) (##fx= _g109850_ 4))
                 (apply (lambda (_h102870_
                                 _key102871_
                                 _update102872_
                                 _default102873_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _h102870_
                             _key102871_
                             _update102872_
                             _default102873_)))
                        _g109851_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g109851_))))))
    (define &hash-update!__%
      (lambda (_h102836_ _key102837_ _update102838_ _default102839_)
        (let ()
          (declare (not safe))
          (&HashTable-update!
           _h102836_
           _key102837_
           _update102838_
           _default102839_))))
    (define &hash-update!__0
      (lambda (_h102844_ _key102845_ _update102846_)
        (let ((_default102848_ '#!void))
          (declare (not safe))
          (&HashTable-update!
           _h102844_
           _key102845_
           _update102846_
           _default102848_))))
    (define &hash-update!
      (lambda _g109853_
        (let ((_g109852_ (let () (declare (not safe)) (##length _g109853_))))
          (cond ((let () (declare (not safe)) (##fx= _g109852_ 3))
                 (apply (lambda (_h102844_ _key102845_ _update102846_)
                          (let ()
                            (declare (not safe))
                            (&hash-update!__0
                             _h102844_
                             _key102845_
                             _update102846_)))
                        _g109853_))
                ((let () (declare (not safe)) (##fx= _g109852_ 4))
                 (apply (lambda (_h102850_
                                 _key102851_
                                 _update102852_
                                 _default102853_)
                          (let ()
                            (declare (not safe))
                            (&HashTable-update!
                             _h102850_
                             _key102851_
                             _update102852_
                             _default102853_)))
                        _g109853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  &hash-update!
                  _g109853_))))))
    (define hash-remove!
      (lambda (_h102832_ _key102833_)
        (let ((__tmp109854
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102832_))))
          (declare (not safe))
          (&HashTable-delete! __tmp109854 _key102833_))))
    (define &hash-remove!
      (lambda (_h102829_ _key102830_)
        (let ()
          (declare (not safe))
          (&HashTable-delete! _h102829_ _key102830_))))
    (define hash-key?
      (lambda (_h102826_ _k102827_)
        (let ((__tmp109855
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102826_))))
          (declare (not safe))
          (&hash-key? __tmp109855 _k102827_))))
    (define &hash-key?
      (lambda (_h102823_ _k102824_)
        (let ((__tmp109856
               (let ((__tmp109857
                      (let ()
                        (declare (not safe))
                        (&HashTable-ref _h102823_ _k102824_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp109857 absent-value))))
          (declare (not safe))
          (not __tmp109856))))
    (define hash->list
      (lambda (_h102821_)
        (let ((__tmp109858
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102821_))))
          (declare (not safe))
          (&hash->list __tmp109858))))
    (define &hash->list
      (lambda (_h102814_)
        (let ((_lst102816_ '()))
          (let ((__tmp109859
                 (lambda (_k102818_ _v102819_)
                   (set! _lst102816_
                         (let ((__tmp109860
                                (let ()
                                  (declare (not safe))
                                  (cons _k102818_ _v102819_))))
                           (declare (not safe))
                           (cons __tmp109860 _lst102816_))))))
            (declare (not safe))
            (&HashTable-for-each _h102814_ __tmp109859))
          _lst102816_)))
    (define hash->plist
      (lambda (_h102812_)
        (let ((__tmp109861
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102812_))))
          (declare (not safe))
          (&hash->plist __tmp109861))))
    (define &hash->plist
      (lambda (_h102805_)
        (let ((_lst102807_ '()))
          (let ((__tmp109862
                 (lambda (_k102809_ _v102810_)
                   (set! _lst102807_
                         (let ((__tmp109863
                                (let ()
                                  (declare (not safe))
                                  (cons _v102810_ _lst102807_))))
                           (declare (not safe))
                           (cons _k102809_ __tmp109863))))))
            (declare (not safe))
            (&HashTable-for-each _h102805_ __tmp109862))
          _lst102807_)))
    (define hash-for-each
      (lambda (_proc102802_ _h102803_)
        (let ()
          (declare (not safe))
          (HashTable-for-each _h102803_ _proc102802_))))
    (define hash-map
      (lambda (_proc102794_ _h102795_)
        (let ((_result102797_ '()))
          (let ((__tmp109864
                 (lambda (_k102799_ _v102800_)
                   (set! _result102797_
                         (let ((__tmp109865
                                (_proc102794_ _k102799_ _v102800_)))
                           (declare (not safe))
                           (cons __tmp109865 _result102797_))))))
            (declare (not safe))
            (HashTable-for-each _h102795_ __tmp109864))
          _result102797_)))
    (define hash-fold
      (lambda (_proc102785_ _iv102786_ _h102787_)
        (let ((_result102789_ _iv102786_))
          (let ((__tmp109866
                 (lambda (_k102791_ _v102792_)
                   (set! _result102789_
                         (_proc102785_ _k102791_ _v102792_ _result102789_)))))
            (declare (not safe))
            (HashTable-for-each _h102787_ __tmp109866))
          _result102789_)))
    (define hash-find__%
      (lambda (_proc102761_ _h102762_ _default-value102763_)
        (call-with-current-continuation
         (lambda (_return102765_)
           (let ((__tmp109867
                  (lambda (_k102767_ _v102768_)
                    (let ((_$e102770_ (_proc102761_ _k102767_ _v102768_)))
                      (if _$e102770_ (_return102765_ _$e102770_) '#!void)))))
             (declare (not safe))
             (HashTable-for-each _h102762_ __tmp109867))
           _default-value102763_))))
    (define hash-find__0
      (lambda (_proc102776_ _h102777_)
        (let ((_default-value102779_ '#f))
          (declare (not safe))
          (hash-find__% _proc102776_ _h102777_ _default-value102779_))))
    (define hash-find
      (lambda _g109869_
        (let ((_g109868_ (let () (declare (not safe)) (##length _g109869_))))
          (cond ((let () (declare (not safe)) (##fx= _g109868_ 2))
                 (apply (lambda (_proc102776_ _h102777_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _proc102776_ _h102777_)))
                        _g109869_))
                ((let () (declare (not safe)) (##fx= _g109868_ 3))
                 (apply (lambda (_proc102781_ _h102782_ _default-value102783_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _proc102781_
                             _h102782_
                             _default-value102783_)))
                        _g109869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g109869_))))))
    (define hash-keys
      (lambda (_h102758_)
        (let ((__tmp109870
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102758_))))
          (declare (not safe))
          (&hash-keys __tmp109870))))
    (define &hash-keys
      (lambda (_h102751_)
        (let ((_result102753_ '()))
          (let ((__tmp109871
                 (lambda (_k102755_ _v102756_)
                   (set! _result102753_
                         (let ()
                           (declare (not safe))
                           (cons _k102755_ _result102753_))))))
            (declare (not safe))
            (&HashTable-for-each _h102751_ __tmp109871))
          _result102753_)))
    (define hash-values
      (lambda (_h102749_)
        (let ((__tmp109872
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102749_))))
          (declare (not safe))
          (&hash-values __tmp109872))))
    (define &hash-values
      (lambda (_h102742_)
        (let ((_result102744_ '()))
          (let ((__tmp109873
                 (lambda (_k102746_ _v102747_)
                   (set! _result102744_
                         (let ()
                           (declare (not safe))
                           (cons _v102747_ _result102744_))))))
            (declare (not safe))
            (&HashTable-for-each _h102742_ __tmp109873))
          _result102744_)))
    (define hash-copy
      (lambda (_h102740_)
        (let ((__tmp109874
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102740_))))
          (declare (not safe))
          (&HashTable-copy __tmp109874))))
    (define &hash-copy
      (lambda (_h102738_)
        (let () (declare (not safe)) (&HashTable-copy _h102738_))))
    (define hash-merge
      (lambda (_h102733_ . _rest102734_)
        (let ((_copy102736_
               (let () (declare (not safe)) (hash-copy _h102733_))))
          (apply hash-merge! _copy102736_ _rest102734_)
          _copy102736_)))
    (define hash-merge!
      (lambda (_h102723_ . _rest102724_)
        (let ((_h102726_
               (let ()
                 (declare (not safe))
                 (cast HashTable::interface _h102723_))))
          (for-each
           (lambda (_hr102728_)
             (let ((__tmp109875
                    (lambda (_k102730_ _v102731_)
                      (if (let ()
                            (declare (not safe))
                            (&hash-key? _h102726_ _k102730_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (&HashTable-set!
                             _h102726_
                             _k102730_
                             _v102731_))))))
               (declare (not safe))
               (hash-for-each __tmp109875 _hr102728_)))
           _rest102724_)
          _h102726_)))))
