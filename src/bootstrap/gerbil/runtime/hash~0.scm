(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1734357960)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp111184 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp111184
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args111164%_
        (apply make-instance UnboundKeyError::t _%$args111164%_)))
    (define UnboundKeyError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor UnboundKeyError::t 'message)))
    (define UnboundKeyError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor UnboundKeyError::t 'irritants)))
    (define UnboundKeyError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor UnboundKeyError::t 'where)))
    (define UnboundKeyError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor UnboundKeyError::t 'continuation)))
    (define UnboundKeyError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator UnboundKeyError::t 'message)))
    (define UnboundKeyError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator UnboundKeyError::t 'irritants)))
    (define UnboundKeyError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator UnboundKeyError::t 'where)))
    (define UnboundKeyError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator UnboundKeyError::t 'continuation)))
    (define &UnboundKeyError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor UnboundKeyError::t 'message)))
    (define &UnboundKeyError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor UnboundKeyError::t 'irritants)))
    (define &UnboundKeyError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor UnboundKeyError::t 'where)))
    (define &UnboundKeyError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         UnboundKeyError::t
         'continuation)))
    (define &UnboundKeyError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator UnboundKeyError::t 'message)))
    (define &UnboundKeyError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator UnboundKeyError::t 'irritants)))
    (define &UnboundKeyError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator UnboundKeyError::t 'where)))
    (define &UnboundKeyError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         UnboundKeyError::t
         'continuation)))
    (define UnboundKeyError:::init! Error:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!__%
       UnboundKeyError::t
       ':init!
       UnboundKeyError:::init!
       '#f))
    (define raise-unbound-key-error
      (lambda (_%where111038%_ _%message111039%_ . _%irritants111040%_)
        (let ((__tmp111185
               (let ((__obj111178
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj111178
                    _%message111039%_
                    'where:
                    _%where111038%_
                    'irritants:
                    _%irritants111040%_))
                 __obj111178)))
          (declare (not safe))
          (raise __tmp111185))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp111186 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp111186
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ()
        (declare (not safe))
        (##structure
         interface-descriptor::t
         HashTable::t
         '((HashTable::clear! clear!)
           (HashTable::copy copy)
           (HashTable::delete! delete!)
           (HashTable::for-each for-each)
           (HashTable::length length)
           (HashTable::ref ref)
           (HashTable::set! set!)
           (HashTable::update! update!)))))
    (define make-HashTable
      (lambda (_%obj111036%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj111036%_))))
    (define try-HashTable
      (lambda (_%obj111034%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj111034%_))))
    (define HashTable?
      (lambda (_%obj111032%_)
        (let ((__tmp111187
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj111032%_ __tmp111187))))
    (define is-HashTable?
      (lambda (_%obj111030%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj111030%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self111014%_)
        (let* ((_%self111019%_
                (let ((_%$obj111016%_ _%self111014%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj111016%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj111016%_)))
                           '#t)
                      _%$obj111016%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj111016%_)))))
               (_%self111021%_ _%self111019%_))
          (&HashTable-clear! _%self111021%_))))
    (define &HashTable-clear!
      (lambda (_%self110999%_)
        (let ((_%self111001%_ _%self110999%_))
          (declare (not safe))
          (let ((_%obj111011%_
                 (##unchecked-structure-ref _%self111001%_ '1 '#f 'clear!))
                (_%f111012%_
                 (##unchecked-structure-ref _%self111001%_ '2 '#f 'clear!)))
            (_%f111012%_ _%obj111011%_)))))
    (define HashTable-copy
      (lambda (_%self110983%_)
        (let* ((_%self110988%_
                (let ((_%$obj110985%_ _%self110983%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110985%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110985%_)))
                           '#t)
                      _%$obj110985%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110985%_)))))
               (_%self110990%_ _%self110988%_))
          (__HashTable-copy _%self110990%_))))
    (define __HashTable-copy
      (lambda (_%self110970%_)
        (let* ((_%self110972%_ _%self110970%_)
               (_%$obj110980%_ (&HashTable-copy _%self110972%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj110980%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj110980%_)))
                   '#t)
              _%$obj110980%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj110980%_))))))
    (define &HashTable-copy
      (lambda (_%self110955%_)
        (let ((_%self110957%_ _%self110955%_))
          (declare (not safe))
          (let ((_%obj110967%_
                 (##unchecked-structure-ref _%self110957%_ '1 '#f 'copy))
                (_%f110968%_
                 (##unchecked-structure-ref _%self110957%_ '3 '#f 'copy)))
            (_%f110968%_ _%obj110967%_)))))
    (define HashTable-delete!
      (lambda (_%self110938%_ _%key110939%_)
        (let* ((_%self110944%_
                (let ((_%$obj110941%_ _%self110938%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110941%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110941%_)))
                           '#t)
                      _%$obj110941%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110941%_)))))
               (_%self110946%_ _%self110944%_))
          (&HashTable-delete! _%self110946%_ _%key110939%_))))
    (define &HashTable-delete!
      (lambda (_%self110922%_ _%key110923%_)
        (let ((_%self110925%_ _%self110922%_))
          (declare (not safe))
          (let ((_%obj110935%_
                 (##unchecked-structure-ref _%self110925%_ '1 '#f 'delete!))
                (_%f110936%_
                 (##unchecked-structure-ref _%self110925%_ '4 '#f 'delete!)))
            (_%f110936%_ _%obj110935%_ _%key110923%_)))))
    (define HashTable-for-each
      (lambda (_%self110895%_ _%proc110896%_)
        (let* ((_%self110901%_
                (let ((_%$obj110898%_ _%self110895%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110898%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110898%_)))
                           '#t)
                      _%$obj110898%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110898%_)))))
               (_%self110903%_ _%self110901%_))
          (if (procedure? _%proc110896%_)
              (let ((_%proc110912%_ _%proc110896%_))
                (&HashTable-for-each _%self110903%_ _%proc110912%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc110896%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self110871%_ _%proc110872%_)
        (let* ((_%self110874%_ _%self110871%_) (_%proc110881%_ _%proc110872%_))
          (declare (not safe))
          (let ((_%obj110892%_
                 (##unchecked-structure-ref _%self110874%_ '1 '#f 'for-each))
                (_%f110893%_
                 (##unchecked-structure-ref _%self110874%_ '5 '#f 'for-each)))
            (_%f110893%_ _%obj110892%_ _%proc110881%_)))))
    (define HashTable-length
      (lambda (_%self110855%_)
        (let* ((_%self110860%_
                (let ((_%$obj110857%_ _%self110855%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110857%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110857%_)))
                           '#t)
                      _%$obj110857%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110857%_)))))
               (_%self110862%_ _%self110860%_))
          (__HashTable-length _%self110862%_))))
    (define __HashTable-length
      (lambda (_%self110842%_)
        (let* ((_%self110844%_ _%self110842%_)
               (_%val110852%_ (&HashTable-length _%self110844%_)))
          _%val110852%_)))
    (define &HashTable-length
      (lambda (_%self110827%_)
        (let ((_%self110829%_ _%self110827%_))
          (declare (not safe))
          (let ((_%obj110839%_
                 (##unchecked-structure-ref _%self110829%_ '1 '#f 'length))
                (_%f110840%_
                 (##unchecked-structure-ref _%self110829%_ '6 '#f 'length)))
            (_%f110840%_ _%obj110839%_)))))
    (define HashTable-ref
      (lambda (_%self110809%_ _%key110810%_ _%default110811%_)
        (let* ((_%self110816%_
                (let ((_%$obj110813%_ _%self110809%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110813%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110813%_)))
                           '#t)
                      _%$obj110813%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110813%_)))))
               (_%self110818%_ _%self110816%_))
          (&HashTable-ref _%self110818%_ _%key110810%_ _%default110811%_))))
    (define &HashTable-ref
      (lambda (_%self110792%_ _%key110793%_ _%default110794%_)
        (let ((_%self110796%_ _%self110792%_))
          (declare (not safe))
          (let ((_%obj110806%_
                 (##unchecked-structure-ref _%self110796%_ '1 '#f 'ref))
                (_%f110807%_
                 (##unchecked-structure-ref _%self110796%_ '7 '#f 'ref)))
            (_%f110807%_ _%obj110806%_ _%key110793%_ _%default110794%_)))))
    (define HashTable-set!
      (lambda (_%self110774%_ _%key110775%_ _%value110776%_)
        (let* ((_%self110781%_
                (let ((_%$obj110778%_ _%self110774%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110778%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110778%_)))
                           '#t)
                      _%$obj110778%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110778%_)))))
               (_%self110783%_ _%self110781%_))
          (&HashTable-set! _%self110783%_ _%key110775%_ _%value110776%_))))
    (define &HashTable-set!
      (lambda (_%self110757%_ _%key110758%_ _%value110759%_)
        (let ((_%self110761%_ _%self110757%_))
          (declare (not safe))
          (let ((_%obj110771%_
                 (##unchecked-structure-ref _%self110761%_ '1 '#f 'set!))
                (_%f110772%_
                 (##unchecked-structure-ref _%self110761%_ '8 '#f 'set!)))
            (_%f110772%_ _%obj110771%_ _%key110758%_ _%value110759%_)))))
    (define HashTable-update!
      (lambda (_%self110728%_ _%key110729%_ _%proc110730%_ _%default110731%_)
        (let* ((_%self110736%_
                (let ((_%$obj110733%_ _%self110728%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110733%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110733%_)))
                           '#t)
                      _%$obj110733%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110733%_)))))
               (_%self110738%_ _%self110736%_))
          (if (procedure? _%proc110730%_)
              (let ((_%proc110747%_ _%proc110730%_))
                (&HashTable-update!
                 _%self110738%_
                 _%key110729%_
                 _%proc110747%_
                 _%default110731%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc110730%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self110700%_ _%key110701%_ _%proc110702%_ _%default110703%_)
        (let* ((_%self110705%_ _%self110700%_) (_%proc110712%_ _%proc110702%_))
          (declare (not safe))
          (let ((_%obj110723%_
                 (##unchecked-structure-ref _%self110705%_ '1 '#f 'update!))
                (_%f110725%_
                 (##unchecked-structure-ref _%self110705%_ '9 '#f 'update!)))
            (_%f110725%_
             _%obj110723%_
             _%key110701%_
             _%proc110712%_
             _%default110703%_)))))
    (define Locker::t
      (let ((__tmp111188 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp111188
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ()
        (declare (not safe))
        (##structure
         interface-descriptor::t
         Locker::t
         '((Locker::read-lock! read-lock!)
           (Locker::read-unlock! read-unlock!)
           (Locker::write-lock! write-lock!)
           (Locker::write-unlock! write-unlock!)))))
    (define make-Locker
      (lambda (_%obj110698%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj110698%_))))
    (define try-Locker
      (lambda (_%obj110696%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj110696%_))))
    (define Locker?
      (lambda (_%obj110694%_)
        (let ((__tmp111189
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj110694%_ __tmp111189))))
    (define is-Locker?
      (lambda (_%obj110692%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj110692%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self110676%_)
        (let* ((_%self110681%_
                (let ((_%$obj110678%_ _%self110676%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110678%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110678%_)))
                           '#t)
                      _%$obj110678%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110678%_)))))
               (_%self110683%_ _%self110681%_))
          (&Locker-read-lock! _%self110683%_))))
    (define &Locker-read-lock!
      (lambda (_%self110661%_)
        (let ((_%self110663%_ _%self110661%_))
          (declare (not safe))
          (let ((_%obj110673%_
                 (##unchecked-structure-ref _%self110663%_ '1 '#f 'read-lock!))
                (_%f110674%_
                 (##unchecked-structure-ref
                  _%self110663%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f110674%_ _%obj110673%_)))))
    (define Locker-read-unlock!
      (lambda (_%self110645%_)
        (let* ((_%self110650%_
                (let ((_%$obj110647%_ _%self110645%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110647%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110647%_)))
                           '#t)
                      _%$obj110647%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110647%_)))))
               (_%self110652%_ _%self110650%_))
          (&Locker-read-unlock! _%self110652%_))))
    (define &Locker-read-unlock!
      (lambda (_%self110630%_)
        (let ((_%self110632%_ _%self110630%_))
          (declare (not safe))
          (let ((_%obj110642%_
                 (##unchecked-structure-ref
                  _%self110632%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f110643%_
                 (##unchecked-structure-ref
                  _%self110632%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f110643%_ _%obj110642%_)))))
    (define Locker-write-lock!
      (lambda (_%self110614%_)
        (let* ((_%self110619%_
                (let ((_%$obj110616%_ _%self110614%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110616%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110616%_)))
                           '#t)
                      _%$obj110616%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110616%_)))))
               (_%self110621%_ _%self110619%_))
          (&Locker-write-lock! _%self110621%_))))
    (define &Locker-write-lock!
      (lambda (_%self110599%_)
        (let ((_%self110601%_ _%self110599%_))
          (declare (not safe))
          (let ((_%obj110611%_
                 (##unchecked-structure-ref
                  _%self110601%_
                  '1
                  '#f
                  'write-lock!))
                (_%f110612%_
                 (##unchecked-structure-ref
                  _%self110601%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f110612%_ _%obj110611%_)))))
    (define Locker-write-unlock!
      (lambda (_%self110583%_)
        (let* ((_%self110588%_
                (let ((_%$obj110585%_ _%self110583%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110585%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110585%_)))
                           '#t)
                      _%$obj110585%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110585%_)))))
               (_%self110590%_ _%self110588%_))
          (&Locker-write-unlock! _%self110590%_))))
    (define &Locker-write-unlock!
      (lambda (_%self110566%_)
        (let ((_%self110568%_ _%self110566%_))
          (declare (not safe))
          (let ((_%obj110578%_
                 (##unchecked-structure-ref
                  _%self110568%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f110580%_
                 (##unchecked-structure-ref
                  _%self110568%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f110580%_ _%obj110578%_)))))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::ref raw-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::set! raw-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::update! raw-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::delete! raw-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::for-each raw-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::length &raw-table-count))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::copy raw-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::clear! raw-table-clear!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::ref gc-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::set! gc-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::update! gc-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::delete! gc-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::for-each gc-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::length gc-table-length))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::copy gc-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::clear! gc-table-clear!))
    (define gambit-table-update!
      (lambda (_%table110559%_
               _%key110560%_
               _%update110561%_
               _%default110562%_)
        (let ((_%result110564%_
               (table-ref _%table110559%_ _%key110560%_ _%default110562%_)))
          (table-set!
           _%table110559%_
           _%key110560%_
           (_%update110561%_ _%default110562%_)))))
    (define gambit-table-for-each
      (lambda (_%table110556%_ _%proc110557%_)
        (table-for-each _%proc110557%_ _%table110556%_)))
    (define gambit-table-clear!
      (lambda (_%table110554%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table110554%_ '0 '5 '#f '#f))))
    (let ((__tmp111190 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111190 'HashTable::ref table-ref))
    (let ((__tmp111191 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111191 'HashTable::set! table-set!))
    (let ((__tmp111192 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111192 'HashTable::update! gambit-table-update!))
    (let ((__tmp111193 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111193 'HashTable::delete! table-set!))
    (let ((__tmp111194 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111194 'HashTable::for-each gambit-table-for-each))
    (let ((__tmp111195 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111195 'HashTable::length table-length))
    (let ((__tmp111196 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111196 'HashTable::copy table-copy))
    (let ((__tmp111197 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111197 'HashTable::clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots110536%_ '(table count free hash test seed))
             (_%slot-vector110538%_ (list->vector (cons '#f _%slots110536%_)))
             (_%slot-table110545%_
              (let ((_%slot-table110540%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp111200
                       (lambda (_%slot110542%_ _%field110543%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110540%_
                            _%slot110542%_
                            _%field110543%_))
                         (let ((__tmp111201
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot110542%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110540%_
                            __tmp111201
                            _%field110543%_))))
                      (__tmp111198
                       (let ((__tmp111199
                              (let ()
                                (declare (not safe))
                                (##length _%slots110536%_))))
                         (declare (not safe))
                         (##iota __tmp111199 '1))))
                  (declare (not safe))
                  (##for-each __tmp111200 _%slots110536%_ __tmp111198))
                _%slot-table110540%_))
             (_%flags110547%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields110549%_ '#())
             (_%properties110551%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots110536%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp111202 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags110547%_
         __table::t
         _%fields110549%_
         __tmp111202
         _%slot-vector110538%_
         _%slot-table110545%_
         _%properties110551%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots110518%_ '(gcht immediate))
             (_%slot-vector110520%_ (list->vector (cons '#f _%slots110518%_)))
             (_%slot-table110527%_
              (let ((_%slot-table110522%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp111205
                       (lambda (_%slot110524%_ _%field110525%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110522%_
                            _%slot110524%_
                            _%field110525%_))
                         (let ((__tmp111206
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot110524%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110522%_
                            __tmp111206
                            _%field110525%_))))
                      (__tmp111203
                       (let ((__tmp111204
                              (let ()
                                (declare (not safe))
                                (##length _%slots110518%_))))
                         (declare (not safe))
                         (##iota __tmp111204 '1))))
                  (declare (not safe))
                  (##for-each __tmp111205 _%slots110518%_ __tmp111203))
                _%slot-table110522%_))
             (_%flags110529%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields110531%_ '#())
             (_%properties110533%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots110518%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp111207 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags110529%_
         __gc-table::t
         _%fields110531%_
         __tmp111207
         _%slot-vector110520%_
         _%slot-table110527%_
         _%properties110533%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp111209 (list))
            (__tmp111208
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp111209
         '(table lock)
         __tmp111208
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args110515%_
        (apply make-instance locked-hash-table::t _%$args110515%_)))
    (define locked-hash-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor locked-hash-table::t 'table)))
    (define locked-hash-table-lock
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor locked-hash-table::t 'lock)))
    (define locked-hash-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator locked-hash-table::t 'table)))
    (define locked-hash-table-lock-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator locked-hash-table::t 'lock)))
    (define &locked-hash-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor locked-hash-table::t 'table)))
    (define &locked-hash-table-lock
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor locked-hash-table::t 'lock)))
    (define &locked-hash-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator locked-hash-table::t 'table)))
    (define &locked-hash-table-lock-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator locked-hash-table::t 'lock)))
    (define checked-hash-table::t
      (let ((__tmp111211 (list))
            (__tmp111210
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp111211
         '(table key-check)
         __tmp111210
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args110512%_
        (apply make-instance checked-hash-table::t _%$args110512%_)))
    (define checked-hash-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor checked-hash-table::t 'table)))
    (define checked-hash-table-key-check
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor checked-hash-table::t 'key-check)))
    (define checked-hash-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator checked-hash-table::t 'table)))
    (define checked-hash-table-key-check-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator checked-hash-table::t 'key-check)))
    (define &checked-hash-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor checked-hash-table::t 'table)))
    (define &checked-hash-table-key-check
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         checked-hash-table::t
         'key-check)))
    (define &checked-hash-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator checked-hash-table::t 'table)))
    (define &checked-hash-table-key-check-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         checked-hash-table::t
         'key-check)))
    (define eq-hash-table::t
      (let ((__tmp111213 (list hash-table::t))
            (__tmp111212 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp111213
         '()
         __tmp111212
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args110509%_
        (apply make-instance eq-hash-table::t _%$args110509%_)))
    (define eqv-hash-table::t
      (let ((__tmp111215 (list hash-table::t))
            (__tmp111214 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp111215
         '()
         __tmp111214
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args110506%_
        (apply make-instance eqv-hash-table::t _%$args110506%_)))
    (define symbol-hash-table::t
      (let ((__tmp111217 (list hash-table::t))
            (__tmp111216 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp111217
         '()
         __tmp111216
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args110503%_
        (apply make-instance symbol-hash-table::t _%$args110503%_)))
    (define string-hash-table::t
      (let ((__tmp111219 (list hash-table::t))
            (__tmp111218 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp111219
         '()
         __tmp111218
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args110500%_
        (apply make-instance string-hash-table::t _%$args110500%_)))
    (define immediate-hash-table::t
      (let ((__tmp111221 (list hash-table::t))
            (__tmp111220 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp111221
         '()
         __tmp111220
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args110497%_
        (apply make-instance immediate-hash-table::t _%$args110497%_)))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::ref raw-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::set! raw-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::update! raw-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::delete! raw-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::for-each raw-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::length &raw-table-count))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::copy raw-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::clear! raw-table-clear!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eq-hash-table::t 'HashTable::ref eq-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 eq-hash-table::t 'HashTable::set! eq-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eq-hash-table::t 'HashTable::update! eq-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eq-hash-table::t 'HashTable::delete! eq-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eqv-hash-table::t 'HashTable::ref eqv-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 eqv-hash-table::t 'HashTable::set! eqv-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       eqv-hash-table::t
       'HashTable::update!
       eqv-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       eqv-hash-table::t
       'HashTable::delete!
       eqv-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       symbol-hash-table::t
       'HashTable::ref
       symbolic-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0
       symbol-hash-table::t
       'HashTable::set!
       symbolic-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       symbol-hash-table::t
       'HashTable::update!
       symbolic-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       symbol-hash-table::t
       'HashTable::delete!
       symbolic-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 string-hash-table::t 'HashTable::ref string-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0
       string-hash-table::t
       'HashTable::set!
       string-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       string-hash-table::t
       'HashTable::update!
       string-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       string-hash-table::t
       'HashTable::delete!
       string-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       immediate-hash-table::t
       'HashTable::ref
       immediate-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0
       immediate-hash-table::t
       'HashTable::set!
       immediate-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       immediate-hash-table::t
       'HashTable::update!
       immediate-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       immediate-hash-table::t
       'HashTable::delete!
       immediate-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'HashTable::ref gc-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'HashTable::set! gc-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'HashTable::update! gc-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'HashTable::delete! gc-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       gc-hash-table::t
       'HashTable::for-each
       gc-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'HashTable::length gc-table-length))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'HashTable::copy gc-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'HashTable::clear! gc-table-clear!))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref106497%_
      (lambda (_%self106496110471%_ _%key110473%_ _%default110474%_)
        (let* ((_%self110476%_ _%self106496110471%_)
               (_%self110479%_ _%self110476%_))
          (let ((_%h110489%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110479%_ '1 '#f '#f)))
                (_%l110491%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110479%_ '2 '#f '#f))))
            (let ((__tmp111224 (lambda () (&Locker-read-lock! _%l110491%_)))
                  (__tmp111223
                   (lambda ()
                     (&HashTable-ref
                      _%h110489%_
                      _%key110473%_
                      _%default110474%_)))
                  (__tmp111222 (lambda () (&Locker-read-unlock! _%l110491%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111224 __tmp111223 __tmp111222))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref106497%_
       '#f))
    (define _%locked-hash-table::HashTable::set!106500%_
      (lambda (_%self106499110322%_ _%key110324%_ _%value110325%_)
        (let* ((_%self110327%_ _%self106499110322%_)
               (_%self110330%_ _%self110327%_))
          (let ((_%h110340%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110330%_ '1 '#f '#f)))
                (_%l110342%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110330%_ '2 '#f '#f))))
            (let ((__tmp111227 (lambda () (&Locker-write-lock! _%l110342%_)))
                  (__tmp111226
                   (lambda ()
                     (&HashTable-set!
                      _%h110340%_
                      _%key110324%_
                      _%value110325%_)))
                  (__tmp111225
                   (lambda () (&Locker-write-unlock! _%l110342%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111227 __tmp111226 __tmp111225))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!106500%_
       '#f))
    (define _%locked-hash-table::HashTable::update!106503%_
      (lambda (_%self106502110172%_
               _%key110174%_
               _%update110175%_
               _%default110176%_)
        (let* ((_%self110178%_ _%self106502110172%_)
               (_%self110181%_ _%self110178%_))
          (let ((_%h110191%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110181%_ '1 '#f '#f)))
                (_%l110193%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110181%_ '2 '#f '#f))))
            (let ((__tmp111230 (lambda () (&Locker-write-lock! _%l110193%_)))
                  (__tmp111229
                   (lambda ()
                     (&HashTable-update!
                      _%h110191%_
                      _%key110174%_
                      _%update110175%_
                      _%default110176%_)))
                  (__tmp111228
                   (lambda () (&Locker-write-unlock! _%l110193%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111230 __tmp111229 __tmp111228))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!106503%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!106506%_
      (lambda (_%self106505110024%_ _%key110026%_)
        (let* ((_%self110028%_ _%self106505110024%_)
               (_%self110031%_ _%self110028%_))
          (let ((_%h110041%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110031%_ '1 '#f '#f)))
                (_%l110043%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110031%_ '2 '#f '#f))))
            (let ((__tmp111233 (lambda () (&Locker-write-lock! _%l110043%_)))
                  (__tmp111232
                   (lambda () (&HashTable-delete! _%h110041%_ _%key110026%_)))
                  (__tmp111231
                   (lambda () (&Locker-write-unlock! _%l110043%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111233 __tmp111232 __tmp111231))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!106506%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each106509%_
      (lambda (_%self106508109876%_ _%proc109878%_)
        (let* ((_%self109880%_ _%self106508109876%_)
               (_%self109883%_ _%self109880%_))
          (let ((_%h109893%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109883%_ '1 '#f '#f)))
                (_%l109895%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109883%_ '2 '#f '#f))))
            (let ((__tmp111236 (lambda () (&Locker-read-lock! _%l109895%_)))
                  (__tmp111235
                   (lambda ()
                     (&HashTable-for-each _%h109893%_ _%proc109878%_)))
                  (__tmp111234 (lambda () (&Locker-read-unlock! _%l109895%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111236 __tmp111235 __tmp111234))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each106509%_
       '#f))
    (define _%locked-hash-table::HashTable::length106512%_
      (lambda (_%self106511109729%_)
        (let* ((_%self109732%_ _%self106511109729%_)
               (_%self109735%_ _%self109732%_))
          (let ((_%h109745%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109735%_ '1 '#f '#f)))
                (_%l109747%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109735%_ '2 '#f '#f))))
            (let ((__tmp111239 (lambda () (&Locker-read-lock! _%l109747%_)))
                  (__tmp111238 (lambda () (&HashTable-length _%h109745%_)))
                  (__tmp111237 (lambda () (&Locker-read-unlock! _%l109747%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111239 __tmp111238 __tmp111237))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length106512%_
       '#f))
    (define _%locked-hash-table::HashTable::copy106515%_
      (lambda (_%self106514109582%_)
        (let* ((_%self109585%_ _%self106514109582%_)
               (_%self109588%_ _%self109585%_))
          (let ((_%h109598%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109588%_ '1 '#f '#f)))
                (_%l109600%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109588%_ '2 '#f '#f))))
            (let ((__tmp111242 (lambda () (&Locker-read-lock! _%l109600%_)))
                  (__tmp111241 (lambda () (&HashTable-copy _%h109598%_)))
                  (__tmp111240 (lambda () (&Locker-read-unlock! _%l109600%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111242 __tmp111241 __tmp111240))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy106515%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!106518%_
      (lambda (_%self106517109435%_)
        (let* ((_%self109438%_ _%self106517109435%_)
               (_%self109441%_ _%self109438%_))
          (let ((_%h109451%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109441%_ '1 '#f '#f)))
                (_%l109453%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109441%_ '2 '#f '#f))))
            (let ((__tmp111245 (lambda () (&Locker-write-lock! _%l109453%_)))
                  (__tmp111244 (lambda () (&HashTable-clear! _%h109451%_)))
                  (__tmp111243
                   (lambda () (&Locker-write-unlock! _%l109453%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111245 __tmp111244 __tmp111243))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!106518%_
       '#f))
    (let ((__tmp111246 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111246 'Locker::read-lock! mutex-lock!))
    (let ((__tmp111247 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111247 'Locker::read-unlock! mutex-unlock!))
    (let ((__tmp111248 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111248 'Locker::write-lock! mutex-lock!))
    (let ((__tmp111249 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111249 'Locker::write-unlock! mutex-unlock!))
    (define _%checked-hash-table::HashTable::ref106732%_
      (lambda (_%self106731109285%_ _%key109287%_ _%default109288%_)
        (let* ((_%self109290%_ _%self106731109285%_)
               (_%self109292%_ _%self109290%_))
          (declare (not safe))
          (let ((_%h109303%_
                 (##unchecked-structure-ref _%self109292%_ '1 '#f '#f))
                (_%key?109305%_
                 (##unchecked-structure-ref _%self109292%_ '2 '#f '#f)))
            (if ((lambda (_%key?109308%_ _%key109309%_ _%default109310%_)
                   (_%key?109308%_ _%key109309%_))
                 _%key?109305%_
                 _%key109287%_
                 _%default109288%_)
                (&HashTable-ref _%h109303%_ _%key109287%_ _%default109288%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key109287%_ (cons _%default109288%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref106732%_
       '#f))
    (define _%checked-hash-table::HashTable::set!106735%_
      (lambda (_%self106734109135%_ _%key109137%_ _%value109138%_)
        (let* ((_%self109140%_ _%self106734109135%_)
               (_%self109142%_ _%self109140%_))
          (declare (not safe))
          (let ((_%h109153%_
                 (##unchecked-structure-ref _%self109142%_ '1 '#f '#f))
                (_%key?109155%_
                 (##unchecked-structure-ref _%self109142%_ '2 '#f '#f)))
            (if ((lambda (_%key?109158%_ _%key109159%_ _%value109160%_)
                   (_%key?109158%_ _%key109159%_))
                 _%key?109155%_
                 _%key109137%_
                 _%value109138%_)
                (&HashTable-set! _%h109153%_ _%key109137%_ _%value109138%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key109137%_ (cons _%value109138%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!106735%_
       '#f))
    (define _%checked-hash-table::HashTable::update!106738%_
      (lambda (_%self106737108983%_
               _%key108985%_
               _%update108986%_
               _%default108987%_)
        (let* ((_%self108989%_ _%self106737108983%_)
               (_%self108991%_ _%self108989%_))
          (declare (not safe))
          (let ((_%h109002%_
                 (##unchecked-structure-ref _%self108991%_ '1 '#f '#f))
                (_%key?109004%_
                 (##unchecked-structure-ref _%self108991%_ '2 '#f '#f)))
            (if ((lambda (_%key?109007%_
                          _%key109008%_
                          _%update109009%_
                          _%default109010%_)
                   (_%key?109007%_ _%key109008%_))
                 _%key?109004%_
                 _%key108985%_
                 _%update108986%_
                 _%default108987%_)
                (&HashTable-update!
                 _%h109002%_
                 _%key108985%_
                 _%update108986%_
                 _%default108987%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key108985%_
                         (cons _%update108986%_ (cons _%default108987%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!106738%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!106741%_
      (lambda (_%self106740108835%_ _%key108837%_)
        (let* ((_%self108839%_ _%self106740108835%_)
               (_%self108841%_ _%self108839%_))
          (declare (not safe))
          (let ((_%h108852%_
                 (##unchecked-structure-ref _%self108841%_ '1 '#f '#f))
                (_%key?108854%_
                 (##unchecked-structure-ref _%self108841%_ '2 '#f '#f)))
            (if ((lambda (_%key?108857%_ _%key108858%_)
                   (_%key?108857%_ _%key108858%_))
                 _%key?108854%_
                 _%key108837%_)
                (&HashTable-delete! _%h108852%_ _%key108837%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key108837%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!106741%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each106744%_
      (lambda (_%self106743108687%_ _%proc108689%_)
        (let* ((_%self108691%_ _%self106743108687%_)
               (_%self108693%_ _%self108691%_))
          (declare (not safe))
          (let ((_%h108704%_
                 (##unchecked-structure-ref _%self108693%_ '1 '#f '#f))
                (_%key?108706%_
                 (##unchecked-structure-ref _%self108693%_ '2 '#f '#f)))
            (if ((lambda (_%key?108709%_ _%proc108710%_) '#t)
                 _%key?108706%_
                 _%proc108689%_)
                (&HashTable-for-each _%h108704%_ _%proc108689%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc108689%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each106744%_
       '#f))
    (define _%checked-hash-table::HashTable::length106747%_
      (lambda (_%self106746108543%_)
        (let* ((_%self108546%_ _%self106746108543%_)
               (_%self108548%_ _%self108546%_))
          (declare (not safe))
          (let ((_%h108559%_
                 (##unchecked-structure-ref _%self108548%_ '1 '#f '#f))
                (_%key?108561%_
                 (##unchecked-structure-ref _%self108548%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h108559%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-length
                   'value:
                   '())
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::length
       _%checked-hash-table::HashTable::length106747%_
       '#f))
    (define _%checked-hash-table::HashTable::copy106750%_
      (lambda (_%self106749108399%_)
        (let* ((_%self108402%_ _%self106749108399%_)
               (_%self108404%_ _%self108402%_))
          (declare (not safe))
          (let ((_%h108415%_
                 (##unchecked-structure-ref _%self108404%_ '1 '#f '#f))
                (_%key?108417%_
                 (##unchecked-structure-ref _%self108404%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h108415%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-copy
                   'value:
                   '())
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::copy
       _%checked-hash-table::HashTable::copy106750%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!106753%_
      (lambda (_%self106752108255%_)
        (let* ((_%self108258%_ _%self106752108255%_)
               (_%self108260%_ _%self108258%_))
          (declare (not safe))
          (let ((_%h108271%_
                 (##unchecked-structure-ref _%self108260%_ '1 '#f '#f))
                (_%key?108273%_
                 (##unchecked-structure-ref _%self108260%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h108271%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-clear!
                   'value:
                   '())
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::clear!
       _%checked-hash-table::HashTable::clear!106753%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table108125%_
               _%count108126%_
               _%free108127%_
               _%hash108128%_
               _%test108129%_
               _%seed108130%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table108125%_
           _%count108126%_
           _%free108127%_
           _%hash108128%_
           _%test108129%_
           _%seed108130%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords107886%_
               _%size-hint107876107887%_
               _%seed107877107889%_
               _%test107878107891%_
               _%hash107879107893%_
               _%lock107880107895%_
               _%check107881107897%_
               _%weak-keys107882107899%_
               _%weak-values107883107901%_)
        (let* ((_%size-hint107904%_
                (if (eq? _%size-hint107876107887%_ absent-value)
                    '#f
                    _%size-hint107876107887%_))
               (_%seed107906%_
                (if (eq? _%seed107877107889%_ absent-value)
                    '#f
                    _%seed107877107889%_))
               (_%test107908%_
                (if (eq? _%test107878107891%_ absent-value)
                    equal?
                    _%test107878107891%_))
               (_%hash107910%_
                (if (eq? _%hash107879107893%_ absent-value)
                    '#f
                    _%hash107879107893%_))
               (_%lock107912%_
                (if (eq? _%lock107880107895%_ absent-value)
                    '#f
                    _%lock107880107895%_))
               (_%check107914%_
                (if (eq? _%check107881107897%_ absent-value)
                    '#f
                    _%check107881107897%_))
               (_%weak-keys107916%_
                (if (eq? _%weak-keys107882107899%_ absent-value)
                    '#f
                    _%weak-keys107882107899%_))
               (_%weak-values107918%_
                (if (eq? _%weak-values107883107901%_ absent-value)
                    '#f
                    _%weak-values107883107901%_)))
          (letrec ((_%table-seed107921%_
                    (lambda ()
                      (if (fixnum? _%seed107906%_)
                          _%seed107906%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock107922%_
                    (lambda (_%ht108099%_)
                      (let ((_%ht108102%_ _%ht108099%_))
                        (_%__wrap-lock107923%_ _%ht108102%_))))
                   (_%__wrap-lock107923%_
                    (lambda (_%ht108081%_)
                      (let ((_%ht108084%_ _%ht108081%_))
                        (if _%lock107912%_
                            (let ((_%$obj108096%_
                                   (let ((__tmp111250
                                          (let ((_%$obj108093%_
                                                 _%lock107912%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj108093%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj108093%_)))
                                                     '#t)
                                                _%$obj108093%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj108093%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht108084%_
                                      __tmp111250))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj108096%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj108096%_)))
                                       '#t)
                                  _%$obj108096%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj108096%_))))
                            _%ht108084%_))))
                   (_%wrap-checked107924%_
                    (lambda (_%ht108068%_ _%implicit108069%_)
                      (let ((_%ht108072%_ _%ht108068%_))
                        (_%__wrap-checked107925%_
                         _%ht108072%_
                         _%implicit108069%_))))
                   (_%__wrap-checked107925%_
                    (lambda (_%ht108041%_ _%implicit108042%_)
                      (let ((_%ht108045%_ _%ht108041%_))
                        (if _%check107914%_
                            (let ((_%$obj108065%_
                                   (let ((__tmp111251
                                          (if (procedure? _%check107914%_)
                                              _%check107914%_
                                              _%implicit108042%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht108045%_
                                      __tmp111251))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj108065%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj108065%_)))
                                       '#t)
                                  _%$obj108065%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj108065%_))))
                            _%ht108045%_))))
                   (_%make107926%_
                    (lambda (_%kons108025%_
                             _%key?108026%_
                             _%hash108027%_
                             _%test108028%_)
                      (let* ((_%size108031%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint107904%_)))
                             (_%table108033%_
                              (let ((__tmp111252 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size108031%_ __tmp111252)))
                             (_%ht108038%_
                              (let ((_%$obj108035%_
                                     (_%kons108025%_
                                      _%table108033%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size108031%_ '2))
                                      _%hash108027%_
                                      _%test108028%_
                                      (_%table-seed107921%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj108035%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj108035%_)))
                                         '#t)
                                    _%$obj108035%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj108035%_))))))
                        (_%__wrap-checked107925%_
                         (_%__wrap-lock107923%_ _%ht108038%_)
                         _%key?108026%_))))
                   (_%make-gc-hash-table107927%_
                    (lambda ()
                      (let ((_%ht108023%_
                             (let ((_%$obj108020%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint107904%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj108020%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj108020%_)))
                                        '#t)
                                   _%$obj108020%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj108020%_))))))
                        (_%__wrap-checked107925%_
                         (_%__wrap-lock107923%_ _%ht108023%_)
                         true))))
                   (_%make-gambit-table107928%_
                    (lambda ()
                      (let* ((_%size107997%_
                              (let ((_%$e107994%_ _%size-hint107904%_))
                                (if _%$e107994%_
                                    _%$e107994%_
                                    (macro-absent-obj))))
                             (_%test108002%_
                              (let ((_%$e107999%_ _%test107908%_))
                                (if _%$e107999%_ _%$e107999%_ equal?)))
                             (_%hash108010%_
                              (let ((_%$e108004%_ _%hash107910%_))
                                (if _%$e108004%_
                                    _%$e108004%_
                                    (if (eq? _%test108002%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test108002%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht108015%_
                              (let ((_%$obj108012%_
                                     (make-table
                                      'size:
                                      _%size107997%_
                                      'test:
                                      _%test108002%_
                                      'hash:
                                      _%hash108010%_
                                      'weak-keys:
                                      _%weak-keys107916%_
                                      'weak-values:
                                      _%weak-values107918%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj108012%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj108012%_)))
                                         '#t)
                                    _%$obj108012%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj108012%_))))))
                        (_%__wrap-checked107925%_
                         (_%__wrap-lock107923%_ _%ht108015%_)
                         true)))))
            (if (or _%weak-keys107916%_ _%weak-values107918%_)
                (_%make-gambit-table107928%_)
                (if (and (or (eq? _%test107908%_ eq?)
                             (eq? _%test107908%_ ##eq?))
                         (or (not _%hash107910%_)
                             (eq? _%hash107910%_ eq?-hash)
                             (eq? _%hash107910%_ eq-hash))
                         (not _%seed107906%_))
                    (_%make-gc-hash-table107927%_)
                    (if (and (or (eq? _%test107908%_ eq?)
                                 (eq? _%test107908%_ ##eq?))
                             (or (not _%hash107910%_)
                                 (eq? _%hash107910%_ eq?-hash)
                                 (eq? _%hash107910%_ eq-hash)))
                        (_%make107926%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test107908%_ eqv?)
                                     (eq? _%test107908%_ ##eqv?))
                                 (or (not _%hash107910%_)
                                     (eq? _%hash107910%_ eqv?-hash)
                                     (eq? _%hash107910%_ eqv-hash)))
                            (_%make107926%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test107908%_ eq?)
                                         (eq? _%test107908%_ ##eq?))
                                     (or (eq? _%hash107910%_ symbolic-hash)
                                         (eq? _%hash107910%_ ##symbol-hash)))
                                (_%make107926%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test107908%_ eq?)
                                             (eq? _%test107908%_ ##eq?))
                                         (eq? _%hash107910%_ immediate-hash))
                                    (_%make107926%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test107908%_ equal?)
                                                 (eq? _%test107908%_ ##equal?)
                                                 (eq? _%test107908%_ string=?)
                                                 (eq? _%test107908%_
                                                      ##string=?))
                                             (or (eq? _%hash107910%_
                                                      string-hash)
                                                 (eq? _%hash107910%_
                                                      ##string=?-hash)))
                                        (_%make107926%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test107908%_ equal?)
                                                 (not _%hash107910%_))
                                            (_%make107926%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test107908%_)
                                                (if (procedure? _%hash107910%_)
                                                    (_%make107926%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash107910%_
                                                     _%test107908%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash107910%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test107908%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords108115%_ . _%args108116%_)
        (apply make-hash-table__%
               _%@@keywords108115%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108115%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108115%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108115%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108115%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108115%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords108115%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords108115%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords108115%_
                  'weak-values:
                  absent-value))
               _%args108116%_)))
    (define make-hash-table
      (lambda _%args107884108122%_
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
               _%args107884108122%_)))
    (define make-hash-table-eq
      (lambda _%args107873%_
        (apply make-hash-table 'test: eq? _%args107873%_)))
    (define make-hash-table-eqv
      (lambda _%args107871%_
        (apply make-hash-table 'test: eqv? _%args107871%_)))
    (define make-hash-table-symbolic
      (lambda _%args107869%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args107869%_)))
    (define make-hash-table-string
      (lambda _%args107867%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args107867%_)))
    (define make-hash-table-immediate
      (lambda _%args107865%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args107865%_)))
    (define list->hash-table
      (lambda (_%lst107862%_ . _%args107863%_)
        (list->hash-table!
         _%lst107862%_
         (apply make-hash-table
                'size:
                (length _%lst107862%_)
                _%args107863%_))))
    (define list->hash-table-eq
      (lambda (_%lst107859%_ . _%args107860%_)
        (list->hash-table!
         _%lst107859%_
         (apply make-hash-table-eq
                'size:
                (length _%lst107859%_)
                _%args107860%_))))
    (define list->hash-table-eqv
      (lambda (_%lst107856%_ . _%args107857%_)
        (list->hash-table!
         _%lst107856%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst107856%_)
                _%args107857%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst107853%_ . _%args107854%_)
        (list->hash-table!
         _%lst107853%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst107853%_)
                _%args107854%_))))
    (define list->hash-table-string
      (lambda (_%lst107850%_ . _%args107851%_)
        (list->hash-table!
         _%lst107850%_
         (apply make-hash-table-string
                'size:
                (length _%lst107850%_)
                _%args107851%_))))
    (define list->hash-table-immediate
      (lambda (_%lst107847%_ . _%args107848%_)
        (list->hash-table!
         _%lst107847%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst107847%_)
                _%args107848%_))))
    (define list->hash-table!
      (lambda (_%lst107814%_ _%h107815%_)
        (for-each
         (lambda (_%el107817%_)
           (let* ((_%el107818107825%_ _%el107817%_)
                  (_%E107820107829%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el107818107825%_
                              '([k . v])))
                     '#!void))
                  (_%K107821107835%_
                   (lambda (_%v107832%_ _%k107833%_)
                     (&HashTable-set! _%h107815%_ _%k107833%_ _%v107832%_))))
             (if (pair? _%el107818107825%_)
                 (let ((_%hd107822107838%_
                        (let ()
                          (declare (not safe))
                          (##car _%el107818107825%_)))
                       (_%tl107823107840%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el107818107825%_))))
                   (let* ((_%k107843%_ _%hd107822107838%_)
                          (_%v107845%_ _%tl107823107840%_))
                     (_%K107821107835%_ _%v107845%_ _%k107843%_)))
                 (_%E107820107829%_))))
         _%lst107814%_)
        _%h107815%_))
    (define plist->hash-table
      (lambda (_%lst107811%_ . _%args107812%_)
        (plist->hash-table!
         _%lst107811%_
         (apply make-hash-table
                'size:
                (length _%lst107811%_)
                _%args107812%_))))
    (define plist->hash-table-eq
      (lambda (_%lst107808%_ . _%args107809%_)
        (plist->hash-table!
         _%lst107808%_
         (apply make-hash-table-eq
                'size:
                (length _%lst107808%_)
                _%args107809%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst107805%_ . _%args107806%_)
        (plist->hash-table!
         _%lst107805%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst107805%_)
                _%args107806%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst107802%_ . _%args107803%_)
        (plist->hash-table!
         _%lst107802%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst107802%_)
                _%args107803%_))))
    (define plist->hash-table-string
      (lambda (_%lst107799%_ . _%args107800%_)
        (plist->hash-table!
         _%lst107799%_
         (apply make-hash-table-string
                'size:
                (length _%lst107799%_)
                _%args107800%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst107796%_ . _%args107797%_)
        (plist->hash-table!
         _%lst107796%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst107796%_)
                _%args107797%_))))
    (define plist->hash-table!
      (lambda (_%lst107736%_ _%h107737%_)
        (let _%loop107739%_ ((_%rest107741%_ _%lst107736%_))
          (let* ((_%rest107742107754%_ _%rest107741%_)
                 (_%else107745107762%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst107736%_)))))
            (let ((_%K107748107777%_
                   (lambda (_%rest107773%_ _%val107774%_ _%key107775%_)
                     (&HashTable-set! _%h107737%_ _%key107775%_ _%val107774%_)
                     (_%loop107739%_ _%rest107773%_)))
                  (_%K107747107767%_ (lambda () _%h107737%_)))
              (let ((_%try-match107744107770%_
                     (lambda ()
                       (if (null? _%rest107742107754%_)
                           (_%K107747107767%_)
                           (_%else107745107762%_)))))
                (if (pair? _%rest107742107754%_)
                    (let ((_%tl107750107782%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest107742107754%_)))
                          (_%hd107749107780%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest107742107754%_))))
                      (if (pair? _%tl107750107782%_)
                          (let ((_%tl107752107789%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl107750107782%_)))
                                (_%hd107751107787%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl107750107782%_))))
                            (let ((_%key107785%_ _%hd107749107780%_)
                                  (_%val107792%_ _%hd107751107787%_)
                                  (_%rest107794%_ _%tl107752107789%_))
                              (_%K107748107777%_
                               _%rest107794%_
                               _%val107792%_
                               _%key107785%_)))
                          (_%else107745107762%_)))
                    (_%try-match107744107770%_))))))))
    (define hash-length
      (lambda (_%h107718%_)
        (let* ((_%h107724%_
                (let ((_%$obj107721%_ _%h107718%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107721%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107721%_)))
                           '#t)
                      _%$obj107721%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107721%_)))))
               (_%h107726%_ _%h107724%_))
          (__hash-length _%h107726%_))))
    (define __hash-length
      (lambda (_%h107706%_)
        (let ((_%h107709%_ _%h107706%_)) (__HashTable-length _%h107709%_))))
    (define hash-ref__%
      (lambda (_%h107674%_ _%key107675%_ _%default107676%_)
        (let* ((_%h107682%_
                (let ((_%$obj107679%_ _%h107674%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107679%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107679%_)))
                           '#t)
                      _%$obj107679%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107679%_)))))
               (_%h107684%_ _%h107682%_))
          (__hash-ref__% _%h107684%_ _%key107675%_ _%default107676%_))))
    (define hash-ref__0
      (lambda (_%h107697%_ _%key107698%_)
        (let ((_%default107700%_ (macro-absent-obj)))
          (hash-ref__% _%h107697%_ _%key107698%_ _%default107700%_))))
    (define hash-ref
      (lambda _g111254_
        (let ((_g111253_ (let () (declare (not safe)) (##length _g111254_))))
          (cond ((let () (declare (not safe)) (##fx= _g111253_ 2))
                 (apply hash-ref__0 _g111254_))
                ((let () (declare (not safe)) (##fx= _g111253_ 3))
                 (apply hash-ref__% _g111254_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g111254_))))))
    (define __hash-ref__%
      (lambda (_%h107645%_ _%key107646%_ _%default107647%_)
        (let* ((_%h107650%_ _%h107645%_)
               (_%result107659%_
                (&HashTable-ref _%h107650%_ _%key107646%_ _%default107647%_)))
          (if (eq? _%result107659%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h107650%_
               'key:
               _%key107646%_)
              _%result107659%_))))
    (define __hash-ref__0
      (lambda (_%h107664%_ _%key107665%_)
        (let ((_%default107667%_ (macro-absent-obj)))
          (__hash-ref__% _%h107664%_ _%key107665%_ _%default107667%_))))
    (define __hash-ref
      (lambda _g111256_
        (let ((_g111255_ (let () (declare (not safe)) (##length _g111256_))))
          (cond ((let () (declare (not safe)) (##fx= _g111255_ 2))
                 (apply __hash-ref__0 _g111256_))
                ((let () (declare (not safe)) (##fx= _g111255_ 3))
                 (apply __hash-ref__% _g111256_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g111256_))))))
    (define hash-get
      (lambda (_%h107625%_ _%key107626%_)
        (let* ((_%h107632%_
                (let ((_%$obj107629%_ _%h107625%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107629%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107629%_)))
                           '#t)
                      _%$obj107629%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107629%_)))))
               (_%h107634%_ _%h107632%_))
          (__hash-get _%h107634%_ _%key107626%_))))
    (define __hash-get
      (lambda (_%h107612%_ _%key107613%_)
        (let ((_%h107616%_ _%h107612%_))
          (&HashTable-ref _%h107616%_ _%key107613%_ '#f))))
    (define hash-put!
      (lambda (_%h107592%_ _%key107593%_ _%value107594%_)
        (let* ((_%h107600%_
                (let ((_%$obj107597%_ _%h107592%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107597%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107597%_)))
                           '#t)
                      _%$obj107597%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107597%_)))))
               (_%h107602%_ _%h107600%_))
          (__hash-put! _%h107602%_ _%key107593%_ _%value107594%_))))
    (define __hash-put!
      (lambda (_%h107578%_ _%key107579%_ _%value107580%_)
        (let ((_%h107583%_ _%h107578%_))
          (&HashTable-set! _%h107583%_ _%key107579%_ _%value107580%_))))
    (define hash-update!__%
      (lambda (_%h107543%_ _%key107544%_ _%update107545%_ _%default107546%_)
        (let* ((_%h107552%_
                (let ((_%$obj107549%_ _%h107543%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107549%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107549%_)))
                           '#t)
                      _%$obj107549%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107549%_)))))
               (_%h107554%_ _%h107552%_))
          (__hash-update!__%
           _%h107554%_
           _%key107544%_
           _%update107545%_
           _%default107546%_))))
    (define hash-update!__0
      (lambda (_%h107567%_ _%key107568%_ _%update107569%_)
        (let ((_%default107571%_ '#!void))
          (hash-update!__%
           _%h107567%_
           _%key107568%_
           _%update107569%_
           _%default107571%_))))
    (define hash-update!
      (lambda _g111258_
        (let ((_g111257_ (let () (declare (not safe)) (##length _g111258_))))
          (cond ((let () (declare (not safe)) (##fx= _g111257_ 3))
                 (apply hash-update!__0 _g111258_))
                ((let () (declare (not safe)) (##fx= _g111257_ 4))
                 (apply hash-update!__% _g111258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g111258_))))))
    (define __hash-update!__%
      (lambda (_%h107513%_ _%key107514%_ _%update107515%_ _%default107516%_)
        (let ((_%h107519%_ _%h107513%_))
          (HashTable-update!
           _%h107519%_
           _%key107514%_
           _%update107515%_
           _%default107516%_))))
    (define __hash-update!__0
      (lambda (_%h107531%_ _%key107532%_ _%update107533%_)
        (let ((_%default107535%_ '#!void))
          (__hash-update!__%
           _%h107531%_
           _%key107532%_
           _%update107533%_
           _%default107535%_))))
    (define __hash-update!
      (lambda _g111260_
        (let ((_g111259_ (let () (declare (not safe)) (##length _g111260_))))
          (cond ((let () (declare (not safe)) (##fx= _g111259_ 3))
                 (apply __hash-update!__0 _g111260_))
                ((let () (declare (not safe)) (##fx= _g111259_ 4))
                 (apply __hash-update!__% _g111260_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g111260_))))))
    (define hash-remove!
      (lambda (_%h107493%_ _%key107494%_)
        (let* ((_%h107500%_
                (let ((_%$obj107497%_ _%h107493%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107497%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107497%_)))
                           '#t)
                      _%$obj107497%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107497%_)))))
               (_%h107502%_ _%h107500%_))
          (__hash-remove! _%h107502%_ _%key107494%_))))
    (define __hash-remove!
      (lambda (_%h107480%_ _%key107481%_)
        (let ((_%h107484%_ _%h107480%_))
          (&HashTable-delete! _%h107484%_ _%key107481%_))))
    (define hash-key?
      (lambda (_%h107461%_ _%k107462%_)
        (let* ((_%h107468%_
                (let ((_%$obj107465%_ _%h107461%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107465%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107465%_)))
                           '#t)
                      _%$obj107465%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107465%_)))))
               (_%h107470%_ _%h107468%_))
          (__hash-key? _%h107470%_ _%k107462%_))))
    (define __hash-key?
      (lambda (_%h107448%_ _%k107449%_)
        (let ((_%h107452%_ _%h107448%_))
          (not (eq? (&HashTable-ref _%h107452%_ _%k107449%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h107430%_)
        (let* ((_%h107436%_
                (let ((_%$obj107433%_ _%h107430%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107433%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107433%_)))
                           '#t)
                      _%$obj107433%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107433%_)))))
               (_%h107438%_ _%h107436%_))
          (__hash->list _%h107438%_))))
    (define __hash->list
      (lambda (_%h107413%_)
        (let* ((_%h107416%_ _%h107413%_) (_%lst107425%_ '()))
          (&HashTable-for-each
           _%h107416%_
           (lambda (_%k107427%_ _%v107428%_)
             (set! _%lst107425%_
                   (cons (cons _%k107427%_ _%v107428%_) _%lst107425%_))))
          _%lst107425%_)))
    (define hash->plist
      (lambda (_%h107395%_)
        (let* ((_%h107401%_
                (let ((_%$obj107398%_ _%h107395%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107398%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107398%_)))
                           '#t)
                      _%$obj107398%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107398%_)))))
               (_%h107403%_ _%h107401%_))
          (__hash->plist _%h107403%_))))
    (define __hash->plist
      (lambda (_%h107378%_)
        (let* ((_%h107381%_ _%h107378%_) (_%lst107390%_ '()))
          (&HashTable-for-each
           _%h107381%_
           (lambda (_%k107392%_ _%v107393%_)
             (set! _%lst107390%_
                   (cons _%k107392%_ (cons _%v107393%_ _%lst107390%_)))))
          _%lst107390%_)))
    (define hash-for-each
      (lambda (_%proc107349%_ _%h107350%_)
        (if (procedure? _%proc107349%_)
            (let* ((_%proc107354%_ _%proc107349%_)
                   (_%h107366%_
                    (let ((_%$obj107363%_ _%h107350%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107363%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107363%_)))
                               '#t)
                          _%$obj107363%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107363%_)))))
                   (_%h107368%_ _%h107366%_))
              (__hash-for-each _%proc107354%_ _%h107368%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@569.22-569.26"
               'contract:
               'procedure?
               'value:
               _%proc107349%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc107328%_ _%h107329%_)
        (let* ((_%proc107332%_ _%proc107328%_) (_%h107340%_ _%h107329%_))
          (&HashTable-for-each _%h107340%_ _%proc107332%_))))
    (define hash-map
      (lambda (_%proc107299%_ _%h107300%_)
        (if (procedure? _%proc107299%_)
            (let* ((_%proc107304%_ _%proc107299%_)
                   (_%h107316%_
                    (let ((_%$obj107313%_ _%h107300%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107313%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107313%_)))
                               '#t)
                          _%$obj107313%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107313%_)))))
                   (_%h107318%_ _%h107316%_))
              (__hash-map _%proc107304%_ _%h107318%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@572.17-572.21"
               'contract:
               'procedure?
               'value:
               _%proc107299%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc107273%_ _%h107274%_)
        (let* ((_%proc107277%_ _%proc107273%_)
               (_%h107285%_ _%h107274%_)
               (_%result107294%_ '()))
          (&HashTable-for-each
           _%h107285%_
           (lambda (_%k107296%_ _%v107297%_)
             (set! _%result107294%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc107277%_ _%k107296%_ _%v107297%_))
                         _%result107294%_))))
          _%result107294%_)))
    (define hash-fold
      (lambda (_%proc107243%_ _%iv107244%_ _%h107245%_)
        (if (procedure? _%proc107243%_)
            (let* ((_%proc107249%_ _%proc107243%_)
                   (_%h107261%_
                    (let ((_%$obj107258%_ _%h107245%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107258%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107258%_)))
                               '#t)
                          _%$obj107258%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107258%_)))))
                   (_%h107263%_ _%h107261%_))
              (__hash-fold _%proc107249%_ _%iv107244%_ _%h107263%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@577.18-577.22"
               'contract:
               'procedure?
               'value:
               _%proc107243%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc107216%_ _%iv107217%_ _%h107218%_)
        (let* ((_%proc107221%_ _%proc107216%_)
               (_%h107229%_ _%h107218%_)
               (_%result107238%_ _%iv107217%_))
          (&HashTable-for-each
           _%h107229%_
           (lambda (_%k107240%_ _%v107241%_)
             (set! _%result107238%_
                   (let ()
                     (declare (not safe))
                     (_%proc107221%_
                      _%k107240%_
                      _%v107241%_
                      _%result107238%_)))))
          _%result107238%_)))
    (define hash-find__%
      (lambda (_%proc107174%_ _%h107175%_ _%default-value107176%_)
        (if (procedure? _%proc107174%_)
            (let* ((_%proc107180%_ _%proc107174%_)
                   (_%h107192%_
                    (let ((_%$obj107189%_ _%h107175%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107189%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107189%_)))
                               '#t)
                          _%$obj107189%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107189%_)))))
                   (_%h107194%_ _%h107192%_))
              (__hash-find__%
               _%proc107180%_
               _%h107194%_
               _%default-value107176%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@582.18-582.22"
               'contract:
               'procedure?
               'value:
               _%proc107174%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc107207%_ _%h107208%_)
        (let ((_%default-value107210%_ '#f))
          (hash-find__% _%proc107207%_ _%h107208%_ _%default-value107210%_))))
    (define hash-find
      (lambda _g111262_
        (let ((_g111261_ (let () (declare (not safe)) (##length _g111262_))))
          (cond ((let () (declare (not safe)) (##fx= _g111261_ 2))
                 (apply hash-find__0 _g111262_))
                ((let () (declare (not safe)) (##fx= _g111261_ 3))
                 (apply hash-find__% _g111262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g111262_))))))
    (define __hash-find__%
      (lambda (_%proc107131%_ _%h107132%_ _%default-value107133%_)
        (let* ((_%proc107136%_ _%proc107131%_)
               (_%h107144%_ _%h107132%_)
               (__tmp111263
                (lambda (_%return107153%_)
                  (&HashTable-for-each
                   _%h107144%_
                   (lambda (_%k107155%_ _%v107156%_)
                     (let ((_%$e107158%_
                            (let ()
                              (declare (not safe))
                              (_%proc107136%_ _%k107155%_ _%v107156%_))))
                       (if _%$e107158%_
                           (_%return107153%_ _%$e107158%_)
                           '#!void))))
                  _%default-value107133%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp111263))))
    (define __hash-find__0
      (lambda (_%proc107164%_ _%h107165%_)
        (let ((_%default-value107167%_ '#f))
          (__hash-find__%
           _%proc107164%_
           _%h107165%_
           _%default-value107167%_))))
    (define __hash-find
      (lambda _g111265_
        (let ((_g111264_ (let () (declare (not safe)) (##length _g111265_))))
          (cond ((let () (declare (not safe)) (##fx= _g111264_ 2))
                 (apply __hash-find__0 _g111265_))
                ((let () (declare (not safe)) (##fx= _g111264_ 3))
                 (apply __hash-find__% _g111265_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g111265_))))))
    (define hash-keys
      (lambda (_%h107112%_)
        (let* ((_%h107118%_
                (let ((_%$obj107115%_ _%h107112%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107115%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107115%_)))
                           '#t)
                      _%$obj107115%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107115%_)))))
               (_%h107120%_ _%h107118%_))
          (__hash-keys _%h107120%_))))
    (define __hash-keys
      (lambda (_%h107095%_)
        (let* ((_%h107098%_ _%h107095%_) (_%result107107%_ '()))
          (&HashTable-for-each
           _%h107098%_
           (lambda (_%k107109%_ _%v107110%_)
             (set! _%result107107%_ (cons _%k107109%_ _%result107107%_))))
          _%result107107%_)))
    (define hash-values
      (lambda (_%h107077%_)
        (let* ((_%h107083%_
                (let ((_%$obj107080%_ _%h107077%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107080%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107080%_)))
                           '#t)
                      _%$obj107080%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107080%_)))))
               (_%h107085%_ _%h107083%_))
          (__hash-values _%h107085%_))))
    (define __hash-values
      (lambda (_%h107060%_)
        (let* ((_%h107063%_ _%h107060%_) (_%result107072%_ '()))
          (&HashTable-for-each
           _%h107063%_
           (lambda (_%k107074%_ _%v107075%_)
             (set! _%result107072%_ (cons _%v107075%_ _%result107072%_))))
          _%result107072%_)))
    (define hash-copy
      (lambda (_%h107042%_)
        (let* ((_%h107048%_
                (let ((_%$obj107045%_ _%h107042%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107045%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107045%_)))
                           '#t)
                      _%$obj107045%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107045%_)))))
               (_%h107050%_ _%h107048%_))
          (__hash-copy _%h107050%_))))
    (define __hash-copy
      (lambda (_%h107030%_)
        (let ((_%h107033%_ _%h107030%_)) (__HashTable-copy _%h107033%_))))
    (define hash-clear!
      (lambda (_%h107012%_)
        (let* ((_%h107018%_
                (let ((_%$obj107015%_ _%h107012%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107015%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107015%_)))
                           '#t)
                      _%$obj107015%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107015%_)))))
               (_%h107020%_ _%h107018%_))
          (__hash-clear! _%h107020%_))))
    (define __hash-clear!
      (lambda (_%h107000%_)
        (let ((_%h107003%_ _%h107000%_)) (&HashTable-clear! _%h107003%_))))
    (define hash-merge
      (lambda (_%h106981%_ . _%rest106982%_)
        (let* ((_%h106988%_
                (let ((_%$obj106985%_ _%h106981%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106985%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106985%_)))
                           '#t)
                      _%$obj106985%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106985%_)))))
               (_%h106990%_ _%h106988%_))
          (declare (not safe))
          (##apply __hash-merge _%h106990%_ _%rest106982%_))))
    (define __hash-merge
      (lambda (_%h106966%_ . _%rest106967%_)
        (let* ((_%h106970%_ _%h106966%_)
               (_%copy106979%_ (__HashTable-copy _%h106970%_)))
          (apply hash-merge! _%copy106979%_ _%rest106967%_)
          _%copy106979%_)))
    (define hash-merge!
      (lambda (_%h106947%_ . _%rest106948%_)
        (let* ((_%h106954%_
                (let ((_%$obj106951%_ _%h106947%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106951%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106951%_)))
                           '#t)
                      _%$obj106951%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106951%_)))))
               (_%h106956%_ _%h106954%_))
          (declare (not safe))
          (##apply __hash-merge! _%h106956%_ _%rest106948%_))))
    (define __hash-merge!
      (lambda (_%h106910%_ . _%rest106911%_)
        (let ((_%h106914%_ _%h106910%_))
          (let ((__tmp111266
                 (lambda (_%hr106923%_)
                   (let* ((_%hr106929%_
                           (let ((_%$obj106926%_ _%hr106923%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj106926%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj106926%_)))
                                      '#t)
                                 _%$obj106926%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj106926%_)))))
                          (_%hr106931%_ _%hr106929%_))
                     (&HashTable-for-each
                      _%hr106931%_
                      (lambda (_%k106944%_ _%v106945%_)
                        (if (__hash-key? _%h106914%_ _%k106944%_)
                            '#!void
                            (&HashTable-set!
                             _%h106914%_
                             _%k106944%_
                             _%v106945%_))))))))
            (declare (not safe))
            (##for-each __tmp111266 _%rest106911%_))
          _%h106914%_)))))
