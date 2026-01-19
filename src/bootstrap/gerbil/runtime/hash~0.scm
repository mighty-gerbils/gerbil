(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1768864947)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp121592 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp121592
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args121504%_
        (apply make-instance UnboundKeyError::t _%$args121504%_)))
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
      (lambda (_%where121378%_ _%message121379%_ . _%irritants121380%_)
        (let ((__tmp121593
               (let ((__obj121584
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj121584
                    _%message121379%_
                    'where:
                    _%where121378%_
                    'irritants:
                    _%irritants121380%_))
                 __obj121584)))
          (declare (not safe))
          (raise __tmp121593))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp121594 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp121594
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj121586
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj121586
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj121586))
    (define make-HashTable
      (lambda (_%obj121376%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj121376%_))))
    (define try-HashTable
      (lambda (_%obj121374%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj121374%_))))
    (define HashTable?
      (lambda (_%obj121372%_)
        (let ((__tmp121595
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj121372%_ __tmp121595))))
    (define is-HashTable?
      (lambda (_%obj121370%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj121370%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self121354%_)
        (let* ((_%self121359%_
                (let ((_%$obj121356%_ _%self121354%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121356%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121356%_)))
                           '#t)
                      _%$obj121356%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121356%_)))))
               (_%self121361%_ _%self121359%_))
          (&HashTable-clear! _%self121361%_))))
    (define &HashTable-clear!
      (lambda (_%self121339%_)
        (let ((_%self121341%_ _%self121339%_))
          (declare (not safe))
          (let ((_%obj121351%_
                 (##unchecked-structure-ref _%self121341%_ '1 '#f 'clear!))
                (_%f121352%_
                 (##unchecked-structure-ref _%self121341%_ '2 '#f 'clear!)))
            (_%f121352%_ _%obj121351%_)))))
    (define HashTable-copy
      (lambda (_%self121323%_)
        (let* ((_%self121328%_
                (let ((_%$obj121325%_ _%self121323%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121325%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121325%_)))
                           '#t)
                      _%$obj121325%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121325%_)))))
               (_%self121330%_ _%self121328%_))
          (__HashTable-copy _%self121330%_))))
    (define __HashTable-copy
      (lambda (_%self121310%_)
        (let ((_%self121312%_ _%self121310%_))
          (if __DEBUG
              (let ((_%$obj121320%_ (&HashTable-copy _%self121312%_)))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj121320%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj121320%_)))
                         '#t)
                    _%$obj121320%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj121320%_))))
              (&HashTable-copy _%self121312%_)))))
    (define &HashTable-copy
      (lambda (_%self121295%_)
        (let ((_%self121297%_ _%self121295%_))
          (declare (not safe))
          (let ((_%obj121307%_
                 (##unchecked-structure-ref _%self121297%_ '1 '#f 'copy))
                (_%f121308%_
                 (##unchecked-structure-ref _%self121297%_ '3 '#f 'copy)))
            (_%f121308%_ _%obj121307%_)))))
    (define HashTable-delete!
      (lambda (_%self121278%_ _%key121279%_)
        (let* ((_%self121284%_
                (let ((_%$obj121281%_ _%self121278%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121281%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121281%_)))
                           '#t)
                      _%$obj121281%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121281%_)))))
               (_%self121286%_ _%self121284%_))
          (&HashTable-delete! _%self121286%_ _%key121279%_))))
    (define &HashTable-delete!
      (lambda (_%self121262%_ _%key121263%_)
        (let ((_%self121265%_ _%self121262%_))
          (declare (not safe))
          (let ((_%obj121275%_
                 (##unchecked-structure-ref _%self121265%_ '1 '#f 'delete!))
                (_%f121276%_
                 (##unchecked-structure-ref _%self121265%_ '4 '#f 'delete!)))
            (_%f121276%_ _%obj121275%_ _%key121263%_)))))
    (define HashTable-for-each
      (lambda (_%self121235%_ _%proc121236%_)
        (let* ((_%self121241%_
                (let ((_%$obj121238%_ _%self121235%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121238%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121238%_)))
                           '#t)
                      _%$obj121238%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121238%_)))))
               (_%self121243%_ _%self121241%_))
          (if (procedure? _%proc121236%_)
              (let ((_%proc121252%_ _%proc121236%_))
                (&HashTable-for-each _%self121243%_ _%proc121252%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc121236%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self121211%_ _%proc121212%_)
        (let* ((_%self121214%_ _%self121211%_) (_%proc121221%_ _%proc121212%_))
          (declare (not safe))
          (let ((_%obj121232%_
                 (##unchecked-structure-ref _%self121214%_ '1 '#f 'for-each))
                (_%f121233%_
                 (##unchecked-structure-ref _%self121214%_ '5 '#f 'for-each)))
            (_%f121233%_ _%obj121232%_ _%proc121221%_)))))
    (define HashTable-length
      (lambda (_%self121195%_)
        (let* ((_%self121200%_
                (let ((_%$obj121197%_ _%self121195%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121197%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121197%_)))
                           '#t)
                      _%$obj121197%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121197%_)))))
               (_%self121202%_ _%self121200%_))
          (__HashTable-length _%self121202%_))))
    (define __HashTable-length
      (lambda (_%self121182%_)
        (let ((_%self121184%_ _%self121182%_))
          (if __DEBUG
              (let ((_%val121192%_ (&HashTable-length _%self121184%_)))
                _%val121192%_)
              (&HashTable-length _%self121184%_)))))
    (define &HashTable-length
      (lambda (_%self121167%_)
        (let ((_%self121169%_ _%self121167%_))
          (declare (not safe))
          (let ((_%obj121179%_
                 (##unchecked-structure-ref _%self121169%_ '1 '#f 'length))
                (_%f121180%_
                 (##unchecked-structure-ref _%self121169%_ '6 '#f 'length)))
            (_%f121180%_ _%obj121179%_)))))
    (define HashTable-ref
      (lambda (_%self121149%_ _%key121150%_ _%default121151%_)
        (let* ((_%self121156%_
                (let ((_%$obj121153%_ _%self121149%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121153%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121153%_)))
                           '#t)
                      _%$obj121153%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121153%_)))))
               (_%self121158%_ _%self121156%_))
          (&HashTable-ref _%self121158%_ _%key121150%_ _%default121151%_))))
    (define &HashTable-ref
      (lambda (_%self121132%_ _%key121133%_ _%default121134%_)
        (let ((_%self121136%_ _%self121132%_))
          (declare (not safe))
          (let ((_%obj121146%_
                 (##unchecked-structure-ref _%self121136%_ '1 '#f 'ref))
                (_%f121147%_
                 (##unchecked-structure-ref _%self121136%_ '7 '#f 'ref)))
            (_%f121147%_ _%obj121146%_ _%key121133%_ _%default121134%_)))))
    (define HashTable-set!
      (lambda (_%self121114%_ _%key121115%_ _%value121116%_)
        (let* ((_%self121121%_
                (let ((_%$obj121118%_ _%self121114%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121118%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121118%_)))
                           '#t)
                      _%$obj121118%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121118%_)))))
               (_%self121123%_ _%self121121%_))
          (&HashTable-set! _%self121123%_ _%key121115%_ _%value121116%_))))
    (define &HashTable-set!
      (lambda (_%self121097%_ _%key121098%_ _%value121099%_)
        (let ((_%self121101%_ _%self121097%_))
          (declare (not safe))
          (let ((_%obj121111%_
                 (##unchecked-structure-ref _%self121101%_ '1 '#f 'set!))
                (_%f121112%_
                 (##unchecked-structure-ref _%self121101%_ '8 '#f 'set!)))
            (_%f121112%_ _%obj121111%_ _%key121098%_ _%value121099%_)))))
    (define HashTable-update!
      (lambda (_%self121068%_ _%key121069%_ _%proc121070%_ _%default121071%_)
        (let* ((_%self121076%_
                (let ((_%$obj121073%_ _%self121068%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121073%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121073%_)))
                           '#t)
                      _%$obj121073%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121073%_)))))
               (_%self121078%_ _%self121076%_))
          (if (procedure? _%proc121070%_)
              (let ((_%proc121087%_ _%proc121070%_))
                (&HashTable-update!
                 _%self121078%_
                 _%key121069%_
                 _%proc121087%_
                 _%default121071%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc121070%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self121040%_ _%key121041%_ _%proc121042%_ _%default121043%_)
        (let* ((_%self121045%_ _%self121040%_) (_%proc121052%_ _%proc121042%_))
          (declare (not safe))
          (let ((_%obj121063%_
                 (##unchecked-structure-ref _%self121045%_ '1 '#f 'update!))
                (_%f121065%_
                 (##unchecked-structure-ref _%self121045%_ '9 '#f 'update!)))
            (_%f121065%_
             _%obj121063%_
             _%key121041%_
             _%proc121052%_
             _%default121043%_)))))
    (define Locker::t
      (let ((__tmp121596 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp121596
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj121588
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj121588
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj121588))
    (define make-Locker
      (lambda (_%obj121038%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj121038%_))))
    (define try-Locker
      (lambda (_%obj121036%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj121036%_))))
    (define Locker?
      (lambda (_%obj121034%_)
        (let ((__tmp121597
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj121034%_ __tmp121597))))
    (define is-Locker?
      (lambda (_%obj121032%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj121032%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self121016%_)
        (let* ((_%self121021%_
                (let ((_%$obj121018%_ _%self121016%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121018%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121018%_)))
                           '#t)
                      _%$obj121018%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj121018%_)))))
               (_%self121023%_ _%self121021%_))
          (&Locker-read-lock! _%self121023%_))))
    (define &Locker-read-lock!
      (lambda (_%self121001%_)
        (let ((_%self121003%_ _%self121001%_))
          (declare (not safe))
          (let ((_%obj121013%_
                 (##unchecked-structure-ref _%self121003%_ '1 '#f 'read-lock!))
                (_%f121014%_
                 (##unchecked-structure-ref
                  _%self121003%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f121014%_ _%obj121013%_)))))
    (define Locker-read-unlock!
      (lambda (_%self120985%_)
        (let* ((_%self120990%_
                (let ((_%$obj120987%_ _%self120985%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj120987%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj120987%_)))
                           '#t)
                      _%$obj120987%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj120987%_)))))
               (_%self120992%_ _%self120990%_))
          (&Locker-read-unlock! _%self120992%_))))
    (define &Locker-read-unlock!
      (lambda (_%self120970%_)
        (let ((_%self120972%_ _%self120970%_))
          (declare (not safe))
          (let ((_%obj120982%_
                 (##unchecked-structure-ref
                  _%self120972%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f120983%_
                 (##unchecked-structure-ref
                  _%self120972%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f120983%_ _%obj120982%_)))))
    (define Locker-write-lock!
      (lambda (_%self120954%_)
        (let* ((_%self120959%_
                (let ((_%$obj120956%_ _%self120954%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj120956%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj120956%_)))
                           '#t)
                      _%$obj120956%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj120956%_)))))
               (_%self120961%_ _%self120959%_))
          (&Locker-write-lock! _%self120961%_))))
    (define &Locker-write-lock!
      (lambda (_%self120939%_)
        (let ((_%self120941%_ _%self120939%_))
          (declare (not safe))
          (let ((_%obj120951%_
                 (##unchecked-structure-ref
                  _%self120941%_
                  '1
                  '#f
                  'write-lock!))
                (_%f120952%_
                 (##unchecked-structure-ref
                  _%self120941%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f120952%_ _%obj120951%_)))))
    (define Locker-write-unlock!
      (lambda (_%self120923%_)
        (let* ((_%self120928%_
                (let ((_%$obj120925%_ _%self120923%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj120925%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj120925%_)))
                           '#t)
                      _%$obj120925%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj120925%_)))))
               (_%self120930%_ _%self120928%_))
          (&Locker-write-unlock! _%self120930%_))))
    (define &Locker-write-unlock!
      (lambda (_%self120906%_)
        (let ((_%self120908%_ _%self120906%_))
          (declare (not safe))
          (let ((_%obj120918%_
                 (##unchecked-structure-ref
                  _%self120908%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f120920%_
                 (##unchecked-structure-ref
                  _%self120908%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f120920%_ _%obj120918%_)))))
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
      (lambda (_%table120899%_
               _%key120900%_
               _%update120901%_
               _%default120902%_)
        (let ((_%result120904%_
               (table-ref _%table120899%_ _%key120900%_ _%default120902%_)))
          (table-set!
           _%table120899%_
           _%key120900%_
           (_%update120901%_ _%default120902%_)))))
    (define gambit-table-for-each
      (lambda (_%table120896%_ _%proc120897%_)
        (table-for-each _%proc120897%_ _%table120896%_)))
    (define gambit-table-clear!
      (lambda (_%table120894%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table120894%_ '0 '5 '#f '#f))))
    (let ((__tmp121598 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121598 'HashTable::ref table-ref))
    (let ((__tmp121599 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121599 'HashTable::set! table-set!))
    (let ((__tmp121600 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121600 'HashTable::update! gambit-table-update!))
    (let ((__tmp121601 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121601 'HashTable::delete! table-set!))
    (let ((__tmp121602 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121602 'HashTable::for-each gambit-table-for-each))
    (let ((__tmp121603 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121603 'HashTable::length table-length))
    (let ((__tmp121604 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121604 'HashTable::copy table-copy))
    (let ((__tmp121605 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121605 'HashTable::clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots120876%_ '(table count free hash test seed))
             (_%slot-vector120878%_ (list->vector (cons '#f _%slots120876%_)))
             (_%slot-table120885%_
              (let ((_%slot-table120880%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp121608
                       (lambda (_%slot120882%_ _%field120883%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table120880%_
                            _%slot120882%_
                            _%field120883%_))
                         (let ((__tmp121609
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot120882%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table120880%_
                            __tmp121609
                            _%field120883%_))))
                      (__tmp121606
                       (let ((__tmp121607
                              (let ()
                                (declare (not safe))
                                (##length _%slots120876%_))))
                         (declare (not safe))
                         (##iota __tmp121607 '1))))
                  (declare (not safe))
                  (##for-each __tmp121608 _%slots120876%_ __tmp121606))
                _%slot-table120880%_))
             (_%flags120887%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields120889%_ '#())
             (_%properties120891%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots120876%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp121610 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags120887%_
         __table::t
         _%fields120889%_
         __tmp121610
         _%slot-vector120878%_
         _%slot-table120885%_
         _%properties120891%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots120858%_ '(gcht immediate))
             (_%slot-vector120860%_ (list->vector (cons '#f _%slots120858%_)))
             (_%slot-table120867%_
              (let ((_%slot-table120862%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp121613
                       (lambda (_%slot120864%_ _%field120865%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table120862%_
                            _%slot120864%_
                            _%field120865%_))
                         (let ((__tmp121614
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot120864%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table120862%_
                            __tmp121614
                            _%field120865%_))))
                      (__tmp121611
                       (let ((__tmp121612
                              (let ()
                                (declare (not safe))
                                (##length _%slots120858%_))))
                         (declare (not safe))
                         (##iota __tmp121612 '1))))
                  (declare (not safe))
                  (##for-each __tmp121613 _%slots120858%_ __tmp121611))
                _%slot-table120862%_))
             (_%flags120869%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields120871%_ '#())
             (_%properties120873%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots120858%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp121615 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags120869%_
         __gc-table::t
         _%fields120871%_
         __tmp121615
         _%slot-vector120860%_
         _%slot-table120867%_
         _%properties120873%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp121617 (list))
            (__tmp121616
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp121617
         '(table lock)
         __tmp121616
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args120855%_
        (apply make-instance locked-hash-table::t _%$args120855%_)))
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
      (let ((__tmp121619 (list))
            (__tmp121618
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp121619
         '(table key-check)
         __tmp121618
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args120852%_
        (apply make-instance checked-hash-table::t _%$args120852%_)))
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
      (let ((__tmp121621 (list hash-table::t))
            (__tmp121620 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp121621
         '()
         __tmp121620
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args120849%_
        (apply make-instance eq-hash-table::t _%$args120849%_)))
    (define eqv-hash-table::t
      (let ((__tmp121623 (list hash-table::t))
            (__tmp121622 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp121623
         '()
         __tmp121622
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args120846%_
        (apply make-instance eqv-hash-table::t _%$args120846%_)))
    (define symbol-hash-table::t
      (let ((__tmp121625 (list hash-table::t))
            (__tmp121624 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp121625
         '()
         __tmp121624
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args120843%_
        (apply make-instance symbol-hash-table::t _%$args120843%_)))
    (define string-hash-table::t
      (let ((__tmp121627 (list hash-table::t))
            (__tmp121626 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp121627
         '()
         __tmp121626
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args120840%_
        (apply make-instance string-hash-table::t _%$args120840%_)))
    (define immediate-hash-table::t
      (let ((__tmp121629 (list hash-table::t))
            (__tmp121628 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp121629
         '()
         __tmp121628
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args120837%_
        (apply make-instance immediate-hash-table::t _%$args120837%_)))
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
    (define _%locked-hash-table::HashTable::ref116632%_
      (lambda (_%self120797%_ _%key120799%_ _%default120800%_)
        (let* ((_%self120803%_ _%self120797%_)
               (_%key120812%_ _%key120799%_)
               (_%default120820%_ _%default120800%_))
          (let ((_%h120829%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120803%_ '1 '#f '#f)))
                (_%l120831%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120803%_ '2 '#f '#f))))
            (let ((__tmp121632 (lambda () (&Locker-read-lock! _%l120831%_)))
                  (__tmp121631
                   (lambda ()
                     (&HashTable-ref
                      _%h120829%_
                      _%key120812%_
                      _%default120820%_)))
                  (__tmp121630 (lambda () (&Locker-read-unlock! _%l120831%_))))
              (declare (not safe))
              (##dynamic-wind __tmp121632 __tmp121631 __tmp121630))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref116632%_
       '#f))
    (define _%locked-hash-table::HashTable::set!116634%_
      (lambda (_%self120634%_ _%key120636%_ _%value120637%_)
        (let* ((_%self120640%_ _%self120634%_)
               (_%key120649%_ _%key120636%_)
               (_%value120657%_ _%value120637%_))
          (let ((_%h120666%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120640%_ '1 '#f '#f)))
                (_%l120668%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120640%_ '2 '#f '#f))))
            (let ((__tmp121635 (lambda () (&Locker-write-lock! _%l120668%_)))
                  (__tmp121634
                   (lambda ()
                     (&HashTable-set!
                      _%h120666%_
                      _%key120649%_
                      _%value120657%_)))
                  (__tmp121633
                   (lambda () (&Locker-write-unlock! _%l120668%_))))
              (declare (not safe))
              (##dynamic-wind __tmp121635 __tmp121634 __tmp121633))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!116634%_
       '#f))
    (define _%locked-hash-table::HashTable::update!116636%_
      (lambda (_%self120462%_ _%key120464%_ _%update120465%_ _%default120466%_)
        (let* ((_%self120469%_ _%self120462%_)
               (_%key120478%_ _%key120464%_)
               (_%update120486%_ _%update120465%_)
               (_%default120494%_ _%default120466%_))
          (let ((_%h120503%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120469%_ '1 '#f '#f)))
                (_%l120505%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120469%_ '2 '#f '#f))))
            (let ((__tmp121638 (lambda () (&Locker-write-lock! _%l120505%_)))
                  (__tmp121637
                   (lambda ()
                     (&HashTable-update!
                      _%h120503%_
                      _%key120478%_
                      _%update120486%_
                      _%default120494%_)))
                  (__tmp121636
                   (lambda () (&Locker-write-unlock! _%l120505%_))))
              (declare (not safe))
              (##dynamic-wind __tmp121638 __tmp121637 __tmp121636))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!116636%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!116638%_
      (lambda (_%self120308%_ _%key120310%_)
        (let* ((_%self120313%_ _%self120308%_) (_%key120322%_ _%key120310%_))
          (let ((_%h120331%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120313%_ '1 '#f '#f)))
                (_%l120333%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120313%_ '2 '#f '#f))))
            (let ((__tmp121641 (lambda () (&Locker-write-lock! _%l120333%_)))
                  (__tmp121640
                   (lambda () (&HashTable-delete! _%h120331%_ _%key120322%_)))
                  (__tmp121639
                   (lambda () (&Locker-write-unlock! _%l120333%_))))
              (declare (not safe))
              (##dynamic-wind __tmp121641 __tmp121640 __tmp121639))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!116638%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each116640%_
      (lambda (_%self120154%_ _%proc120156%_)
        (let* ((_%self120159%_ _%self120154%_) (_%proc120168%_ _%proc120156%_))
          (let ((_%h120177%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120159%_ '1 '#f '#f)))
                (_%l120179%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120159%_ '2 '#f '#f))))
            (let ((__tmp121644 (lambda () (&Locker-read-lock! _%l120179%_)))
                  (__tmp121643
                   (lambda ()
                     (&HashTable-for-each _%h120177%_ _%proc120168%_)))
                  (__tmp121642 (lambda () (&Locker-read-unlock! _%l120179%_))))
              (declare (not safe))
              (##dynamic-wind __tmp121644 __tmp121643 __tmp121642))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each116640%_
       '#f))
    (define _%locked-hash-table::HashTable::length116642%_
      (lambda (_%self120002%_)
        (let ((_%self120006%_ _%self120002%_))
          (let ((_%h120016%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120006%_ '1 '#f '#f)))
                (_%l120018%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120006%_ '2 '#f '#f))))
            ((lambda (_%g120020120022%_)
               (let ((_%val120025%_ _%g120020120022%_))
                 (if (fixnum? _%val120025%_)
                     _%val120025%_
                     (let ()
                       (declare (not safe))
                       (error '"bad cast" fixnum::t _%val120025%_)))))
             (let ((__tmp121647 (lambda () (&Locker-read-lock! _%l120018%_)))
                   (__tmp121646 (lambda () (&HashTable-length _%h120016%_)))
                   (__tmp121645
                    (lambda () (&Locker-read-unlock! _%l120018%_))))
               (declare (not safe))
               (##dynamic-wind __tmp121647 __tmp121646 __tmp121645)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length116642%_
       '#f))
    (define _%locked-hash-table::HashTable::copy116644%_
      (lambda (_%self119854%_)
        (let ((_%self119858%_ _%self119854%_))
          (let ((_%h119868%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self119858%_ '1 '#f '#f)))
                (_%l119870%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self119858%_ '2 '#f '#f))))
            (let ((_%$obj119876%_
                   (let ((__tmp121650
                          (lambda () (&Locker-read-lock! _%l119870%_)))
                         (__tmp121649
                          (lambda () (&HashTable-copy _%h119868%_)))
                         (__tmp121648
                          (lambda () (&Locker-read-unlock! _%l119870%_))))
                     (declare (not safe))
                     (##dynamic-wind __tmp121650 __tmp121649 __tmp121648))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj119876%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj119876%_)))
                       '#t)
                  _%$obj119876%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj119876%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy116644%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!116646%_
      (lambda (_%self119709%_)
        (let ((_%self119713%_ _%self119709%_))
          (let ((_%h119723%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self119713%_ '1 '#f '#f)))
                (_%l119725%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self119713%_ '2 '#f '#f))))
            (let ((__tmp121653 (lambda () (&Locker-write-lock! _%l119725%_)))
                  (__tmp121652 (lambda () (&HashTable-clear! _%h119723%_)))
                  (__tmp121651
                   (lambda () (&Locker-write-unlock! _%l119725%_))))
              (declare (not safe))
              (##dynamic-wind __tmp121653 __tmp121652 __tmp121651))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!116646%_
       '#f))
    (let ((__tmp121654 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp121654 'Locker::read-lock! mutex-lock!))
    (let ((__tmp121655 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp121655 'Locker::read-unlock! mutex-unlock!))
    (let ((__tmp121656 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp121656 'Locker::write-lock! mutex-lock!))
    (let ((__tmp121657 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp121657 'Locker::write-unlock! mutex-unlock!))
    (define _%checked-hash-table::HashTable::ref116859%_
      (lambda (_%self119544%_ _%key119545%_ _%default119546%_)
        (let* ((_%self119549%_ _%self119544%_)
               (_%key119558%_ _%key119545%_)
               (_%default119566%_ _%default119546%_))
          (declare (not safe))
          (let ((_%h119577%_
                 (##unchecked-structure-ref _%self119549%_ '1 '#f '#f))
                (_%key?119579%_
                 (##unchecked-structure-ref _%self119549%_ '2 '#f '#f)))
            (if ((lambda (_%key?119582%_ _%key119583%_ _%default119584%_)
                   (_%key?119582%_ _%key119583%_))
                 _%key?119579%_
                 _%key119558%_
                 _%default119566%_)
                (&HashTable-ref _%h119577%_ _%key119558%_ _%default119566%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key119558%_ (cons _%default119566%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref116859%_
       '#f))
    (define _%checked-hash-table::HashTable::set!116861%_
      (lambda (_%self119379%_ _%key119380%_ _%value119381%_)
        (let* ((_%self119384%_ _%self119379%_)
               (_%key119393%_ _%key119380%_)
               (_%value119401%_ _%value119381%_))
          (declare (not safe))
          (let ((_%h119412%_
                 (##unchecked-structure-ref _%self119384%_ '1 '#f '#f))
                (_%key?119414%_
                 (##unchecked-structure-ref _%self119384%_ '2 '#f '#f)))
            (if ((lambda (_%key?119417%_ _%key119418%_ _%value119419%_)
                   (_%key?119417%_ _%key119418%_))
                 _%key?119414%_
                 _%key119393%_
                 _%value119401%_)
                (&HashTable-set! _%h119412%_ _%key119393%_ _%value119401%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key119393%_ (cons _%value119401%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!116861%_
       '#f))
    (define _%checked-hash-table::HashTable::update!116863%_
      (lambda (_%self119204%_ _%key119205%_ _%update119206%_ _%default119207%_)
        (let* ((_%self119210%_ _%self119204%_)
               (_%key119219%_ _%key119205%_)
               (_%update119227%_ _%update119206%_)
               (_%default119235%_ _%default119207%_))
          (declare (not safe))
          (let ((_%h119246%_
                 (##unchecked-structure-ref _%self119210%_ '1 '#f '#f))
                (_%key?119248%_
                 (##unchecked-structure-ref _%self119210%_ '2 '#f '#f)))
            (if ((lambda (_%key?119251%_
                          _%key119252%_
                          _%update119253%_
                          _%default119254%_)
                   (_%key?119251%_ _%key119252%_))
                 _%key?119248%_
                 _%key119219%_
                 _%update119227%_
                 _%default119235%_)
                (&HashTable-update!
                 _%h119246%_
                 _%key119219%_
                 _%update119227%_
                 _%default119235%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key119219%_
                         (cons _%update119227%_ (cons _%default119235%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!116863%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!116865%_
      (lambda (_%self119049%_ _%key119050%_)
        (let* ((_%self119053%_ _%self119049%_) (_%key119062%_ _%key119050%_))
          (declare (not safe))
          (let ((_%h119073%_
                 (##unchecked-structure-ref _%self119053%_ '1 '#f '#f))
                (_%key?119075%_
                 (##unchecked-structure-ref _%self119053%_ '2 '#f '#f)))
            (if ((lambda (_%key?119078%_ _%key119079%_)
                   (_%key?119078%_ _%key119079%_))
                 _%key?119075%_
                 _%key119062%_)
                (&HashTable-delete! _%h119073%_ _%key119062%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key119062%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!116865%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each116867%_
      (lambda (_%self118894%_ _%proc118895%_)
        (let* ((_%self118898%_ _%self118894%_) (_%proc118907%_ _%proc118895%_))
          (declare (not safe))
          (let ((_%h118918%_
                 (##unchecked-structure-ref _%self118898%_ '1 '#f '#f))
                (_%key?118920%_
                 (##unchecked-structure-ref _%self118898%_ '2 '#f '#f)))
            (if ((lambda (_%key?118923%_ _%proc118924%_) '#t)
                 _%key?118920%_
                 _%proc118907%_)
                (&HashTable-for-each _%h118918%_ _%proc118907%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc118907%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each116867%_
       '#f))
    (define _%checked-hash-table::HashTable::length116869%_
      (lambda (_%self118751%_)
        (let ((_%self118754%_ _%self118751%_))
          (declare (not safe))
          (let ((_%h118766%_
                 (##unchecked-structure-ref _%self118754%_ '1 '#f '#f))
                (_%key?118768%_
                 (##unchecked-structure-ref _%self118754%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h118766%_)
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
       _%checked-hash-table::HashTable::length116869%_
       '#f))
    (define _%checked-hash-table::HashTable::copy116871%_
      (lambda (_%self118608%_)
        (let ((_%self118611%_ _%self118608%_))
          (declare (not safe))
          (let ((_%h118623%_
                 (##unchecked-structure-ref _%self118611%_ '1 '#f '#f))
                (_%key?118625%_
                 (##unchecked-structure-ref _%self118611%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h118623%_)
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
       _%checked-hash-table::HashTable::copy116871%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!116873%_
      (lambda (_%self118465%_)
        (let ((_%self118468%_ _%self118465%_))
          (declare (not safe))
          (let ((_%h118480%_
                 (##unchecked-structure-ref _%self118468%_ '1 '#f '#f))
                (_%key?118482%_
                 (##unchecked-structure-ref _%self118468%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h118480%_)
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
       _%checked-hash-table::HashTable::clear!116873%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table118335%_
               _%count118336%_
               _%free118337%_
               _%hash118338%_
               _%test118339%_
               _%seed118340%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table118335%_
           _%count118336%_
           _%free118337%_
           _%hash118338%_
           _%test118339%_
           _%seed118340%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords118096%_
               _%size-hint118086118097%_
               _%seed118087118099%_
               _%test118088118101%_
               _%hash118089118103%_
               _%lock118090118105%_
               _%check118091118107%_
               _%weak-keys118092118109%_
               _%weak-values118093118111%_)
        (let* ((_%size-hint118114%_
                (if (eq? _%size-hint118086118097%_ absent-value)
                    '#f
                    _%size-hint118086118097%_))
               (_%seed118116%_
                (if (eq? _%seed118087118099%_ absent-value)
                    '#f
                    _%seed118087118099%_))
               (_%test118118%_
                (if (eq? _%test118088118101%_ absent-value)
                    equal?
                    _%test118088118101%_))
               (_%hash118120%_
                (if (eq? _%hash118089118103%_ absent-value)
                    '#f
                    _%hash118089118103%_))
               (_%lock118122%_
                (if (eq? _%lock118090118105%_ absent-value)
                    '#f
                    _%lock118090118105%_))
               (_%check118124%_
                (if (eq? _%check118091118107%_ absent-value)
                    '#f
                    _%check118091118107%_))
               (_%weak-keys118126%_
                (if (eq? _%weak-keys118092118109%_ absent-value)
                    '#f
                    _%weak-keys118092118109%_))
               (_%weak-values118128%_
                (if (eq? _%weak-values118093118111%_ absent-value)
                    '#f
                    _%weak-values118093118111%_)))
          (letrec ((_%table-seed118131%_
                    (lambda ()
                      (if (fixnum? _%seed118116%_)
                          _%seed118116%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock118132%_
                    (lambda (_%ht118309%_)
                      (let ((_%ht118312%_ _%ht118309%_))
                        (_%__wrap-lock118133%_ _%ht118312%_))))
                   (_%__wrap-lock118133%_
                    (lambda (_%ht118291%_)
                      (let ((_%ht118294%_ _%ht118291%_))
                        (if _%lock118122%_
                            (let ((_%$obj118306%_
                                   (let ((__tmp121658
                                          (let ((_%$obj118303%_
                                                 _%lock118122%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj118303%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj118303%_)))
                                                     '#t)
                                                _%$obj118303%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj118303%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht118294%_
                                      __tmp121658))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj118306%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj118306%_)))
                                       '#t)
                                  _%$obj118306%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj118306%_))))
                            _%ht118294%_))))
                   (_%wrap-checked118134%_
                    (lambda (_%ht118278%_ _%implicit118279%_)
                      (let ((_%ht118282%_ _%ht118278%_))
                        (_%__wrap-checked118135%_
                         _%ht118282%_
                         _%implicit118279%_))))
                   (_%__wrap-checked118135%_
                    (lambda (_%ht118251%_ _%implicit118252%_)
                      (let ((_%ht118255%_ _%ht118251%_))
                        (if _%check118124%_
                            (let ((_%$obj118275%_
                                   (let ((__tmp121659
                                          (if (procedure? _%check118124%_)
                                              _%check118124%_
                                              _%implicit118252%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht118255%_
                                      __tmp121659))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj118275%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj118275%_)))
                                       '#t)
                                  _%$obj118275%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj118275%_))))
                            _%ht118255%_))))
                   (_%make118136%_
                    (lambda (_%kons118235%_
                             _%key?118236%_
                             _%hash118237%_
                             _%test118238%_)
                      (let* ((_%size118241%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint118114%_)))
                             (_%table118243%_
                              (let ((__tmp121660 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size118241%_ __tmp121660)))
                             (_%ht118248%_
                              (let ((_%$obj118245%_
                                     (_%kons118235%_
                                      _%table118243%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size118241%_ '2))
                                      _%hash118237%_
                                      _%test118238%_
                                      (_%table-seed118131%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj118245%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj118245%_)))
                                         '#t)
                                    _%$obj118245%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj118245%_))))))
                        (_%__wrap-checked118135%_
                         (_%__wrap-lock118133%_ _%ht118248%_)
                         _%key?118236%_))))
                   (_%make-gc-hash-table118137%_
                    (lambda ()
                      (let ((_%ht118233%_
                             (let ((_%$obj118230%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint118114%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj118230%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj118230%_)))
                                        '#t)
                                   _%$obj118230%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj118230%_))))))
                        (_%__wrap-checked118135%_
                         (_%__wrap-lock118133%_ _%ht118233%_)
                         true))))
                   (_%make-gambit-table118138%_
                    (lambda ()
                      (let* ((_%size118207%_
                              (let ((_%$e118204%_ _%size-hint118114%_))
                                (if _%$e118204%_
                                    _%$e118204%_
                                    (macro-absent-obj))))
                             (_%test118212%_
                              (let ((_%$e118209%_ _%test118118%_))
                                (if _%$e118209%_ _%$e118209%_ equal?)))
                             (_%hash118220%_
                              (let ((_%$e118214%_ _%hash118120%_))
                                (if _%$e118214%_
                                    _%$e118214%_
                                    (if (eq? _%test118212%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test118212%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht118225%_
                              (let ((_%$obj118222%_
                                     (make-table
                                      'size:
                                      _%size118207%_
                                      'test:
                                      _%test118212%_
                                      'hash:
                                      _%hash118220%_
                                      'weak-keys:
                                      _%weak-keys118126%_
                                      'weak-values:
                                      _%weak-values118128%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj118222%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj118222%_)))
                                         '#t)
                                    _%$obj118222%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj118222%_))))))
                        (_%__wrap-checked118135%_
                         (_%__wrap-lock118133%_ _%ht118225%_)
                         true)))))
            (if (or _%weak-keys118126%_ _%weak-values118128%_)
                (_%make-gambit-table118138%_)
                (if (and (or (eq? _%test118118%_ eq?)
                             (eq? _%test118118%_ ##eq?))
                         (or (not _%hash118120%_)
                             (eq? _%hash118120%_ eq?-hash)
                             (eq? _%hash118120%_ eq-hash))
                         (not _%seed118116%_))
                    (_%make-gc-hash-table118137%_)
                    (if (and (or (eq? _%test118118%_ eq?)
                                 (eq? _%test118118%_ ##eq?))
                             (or (not _%hash118120%_)
                                 (eq? _%hash118120%_ eq?-hash)
                                 (eq? _%hash118120%_ eq-hash)))
                        (_%make118136%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test118118%_ eqv?)
                                     (eq? _%test118118%_ ##eqv?))
                                 (or (not _%hash118120%_)
                                     (eq? _%hash118120%_ eqv?-hash)
                                     (eq? _%hash118120%_ eqv-hash)))
                            (_%make118136%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test118118%_ eq?)
                                         (eq? _%test118118%_ ##eq?))
                                     (or (eq? _%hash118120%_ symbolic-hash)
                                         (eq? _%hash118120%_ ##symbol-hash)))
                                (_%make118136%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test118118%_ eq?)
                                             (eq? _%test118118%_ ##eq?))
                                         (eq? _%hash118120%_ immediate-hash))
                                    (_%make118136%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test118118%_ equal?)
                                                 (eq? _%test118118%_ ##equal?)
                                                 (eq? _%test118118%_ string=?)
                                                 (eq? _%test118118%_
                                                      ##string=?))
                                             (or (eq? _%hash118120%_
                                                      string-hash)
                                                 (eq? _%hash118120%_
                                                      ##string=?-hash)))
                                        (_%make118136%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test118118%_ equal?)
                                                 (not _%hash118120%_))
                                            (_%make118136%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test118118%_)
                                                (if (procedure? _%hash118120%_)
                                                    (_%make118136%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash118120%_
                                                     _%test118118%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash118120%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test118118%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords118325%_ . _%args118326%_)
        (apply make-hash-table__%
               _%@@keywords118325%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118325%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118325%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118325%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118325%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118325%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118325%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118325%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118325%_
                  'weak-values:
                  absent-value))
               _%args118326%_)))
    (define make-hash-table
      (lambda _%args118094118332%_
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
               _%args118094118332%_)))
    (define make-hash-table-eq
      (lambda _%args118083%_
        (apply make-hash-table 'test: eq? _%args118083%_)))
    (define make-hash-table-eqv
      (lambda _%args118081%_
        (apply make-hash-table 'test: eqv? _%args118081%_)))
    (define make-hash-table-symbolic
      (lambda _%args118079%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args118079%_)))
    (define make-hash-table-string
      (lambda _%args118077%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args118077%_)))
    (define make-hash-table-immediate
      (lambda _%args118075%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args118075%_)))
    (define list->hash-table
      (lambda (_%lst118072%_ . _%args118073%_)
        (list->hash-table!
         _%lst118072%_
         (apply make-hash-table
                'size:
                (length _%lst118072%_)
                _%args118073%_))))
    (define list->hash-table-eq
      (lambda (_%lst118069%_ . _%args118070%_)
        (list->hash-table!
         _%lst118069%_
         (apply make-hash-table-eq
                'size:
                (length _%lst118069%_)
                _%args118070%_))))
    (define list->hash-table-eqv
      (lambda (_%lst118066%_ . _%args118067%_)
        (list->hash-table!
         _%lst118066%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst118066%_)
                _%args118067%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst118063%_ . _%args118064%_)
        (list->hash-table!
         _%lst118063%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst118063%_)
                _%args118064%_))))
    (define list->hash-table-string
      (lambda (_%lst118060%_ . _%args118061%_)
        (list->hash-table!
         _%lst118060%_
         (apply make-hash-table-string
                'size:
                (length _%lst118060%_)
                _%args118061%_))))
    (define list->hash-table-immediate
      (lambda (_%lst118057%_ . _%args118058%_)
        (list->hash-table!
         _%lst118057%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst118057%_)
                _%args118058%_))))
    (define list->hash-table!
      (lambda (_%lst118024%_ _%h118025%_)
        (for-each
         (lambda (_%el118027%_)
           (let* ((_%el118028118035%_ _%el118027%_)
                  (_%E118030118039%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el118028118035%_
                              '([k . v])))
                     '#!void))
                  (_%K118031118045%_
                   (lambda (_%v118042%_ _%k118043%_)
                     (&HashTable-set! _%h118025%_ _%k118043%_ _%v118042%_))))
             (if (pair? _%el118028118035%_)
                 (let ((_%hd118032118048%_
                        (let ()
                          (declare (not safe))
                          (##car _%el118028118035%_)))
                       (_%tl118033118050%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el118028118035%_))))
                   (let* ((_%k118053%_ _%hd118032118048%_)
                          (_%v118055%_ _%tl118033118050%_))
                     (_%K118031118045%_ _%v118055%_ _%k118053%_)))
                 (_%E118030118039%_))))
         _%lst118024%_)
        _%h118025%_))
    (define plist->hash-table
      (lambda (_%lst118021%_ . _%args118022%_)
        (plist->hash-table!
         _%lst118021%_
         (apply make-hash-table
                'size:
                (length _%lst118021%_)
                _%args118022%_))))
    (define plist->hash-table-eq
      (lambda (_%lst118018%_ . _%args118019%_)
        (plist->hash-table!
         _%lst118018%_
         (apply make-hash-table-eq
                'size:
                (length _%lst118018%_)
                _%args118019%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst118015%_ . _%args118016%_)
        (plist->hash-table!
         _%lst118015%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst118015%_)
                _%args118016%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst118012%_ . _%args118013%_)
        (plist->hash-table!
         _%lst118012%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst118012%_)
                _%args118013%_))))
    (define plist->hash-table-string
      (lambda (_%lst118009%_ . _%args118010%_)
        (plist->hash-table!
         _%lst118009%_
         (apply make-hash-table-string
                'size:
                (length _%lst118009%_)
                _%args118010%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst118006%_ . _%args118007%_)
        (plist->hash-table!
         _%lst118006%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst118006%_)
                _%args118007%_))))
    (define plist->hash-table!
      (lambda (_%lst117946%_ _%h117947%_)
        (let _%loop117949%_ ((_%rest117951%_ _%lst117946%_))
          (let* ((_%rest117952117964%_ _%rest117951%_)
                 (_%else117955117972%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst117946%_)))))
            (let ((_%K117958117987%_
                   (lambda (_%rest117983%_ _%val117984%_ _%key117985%_)
                     (&HashTable-set! _%h117947%_ _%key117985%_ _%val117984%_)
                     (_%loop117949%_ _%rest117983%_)))
                  (_%K117957117977%_ (lambda () _%h117947%_)))
              (let ((_%try-match117954117980%_
                     (lambda ()
                       (if (null? _%rest117952117964%_)
                           (_%K117957117977%_)
                           (_%else117955117972%_)))))
                (if (pair? _%rest117952117964%_)
                    (let ((_%tl117960117992%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest117952117964%_)))
                          (_%hd117959117990%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest117952117964%_))))
                      (if (pair? _%tl117960117992%_)
                          (let ((_%tl117962117999%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl117960117992%_)))
                                (_%hd117961117997%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl117960117992%_))))
                            (let ((_%key117995%_ _%hd117959117990%_)
                                  (_%val118002%_ _%hd117961117997%_)
                                  (_%rest118004%_ _%tl117962117999%_))
                              (_%K117958117987%_
                               _%rest118004%_
                               _%val118002%_
                               _%key117995%_)))
                          (_%else117955117972%_)))
                    (_%try-match117954117980%_))))))))
    (define hash-length
      (lambda (_%h117928%_)
        (let* ((_%h117934%_
                (let ((_%$obj117931%_ _%h117928%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117931%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117931%_)))
                           '#t)
                      _%$obj117931%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117931%_)))))
               (_%h117936%_ _%h117934%_))
          (__hash-length _%h117936%_))))
    (define __hash-length
      (lambda (_%h117916%_)
        (let ((_%h117919%_ _%h117916%_)) (__HashTable-length _%h117919%_))))
    (define hash-ref__%
      (lambda (_%h117884%_ _%key117885%_ _%default117886%_)
        (let* ((_%h117892%_
                (let ((_%$obj117889%_ _%h117884%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117889%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117889%_)))
                           '#t)
                      _%$obj117889%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117889%_)))))
               (_%h117894%_ _%h117892%_))
          (__hash-ref__% _%h117894%_ _%key117885%_ _%default117886%_))))
    (define hash-ref__0
      (lambda (_%h117907%_ _%key117908%_)
        (let ((_%default117910%_ (macro-absent-obj)))
          (hash-ref__% _%h117907%_ _%key117908%_ _%default117910%_))))
    (define hash-ref
      (lambda _g121661_
        (let ((_g121662_ (let () (declare (not safe)) (##length _g121661_))))
          (cond ((let () (declare (not safe)) (##fx= _g121662_ 2))
                 (apply hash-ref__0 _g121661_))
                ((let () (declare (not safe)) (##fx= _g121662_ 3))
                 (apply hash-ref__% _g121661_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g121661_))))))
    (define __hash-ref__%
      (lambda (_%h117855%_ _%key117856%_ _%default117857%_)
        (let* ((_%h117860%_ _%h117855%_)
               (_%result117869%_
                (&HashTable-ref _%h117860%_ _%key117856%_ _%default117857%_)))
          (if (eq? _%result117869%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h117860%_
               'key:
               _%key117856%_)
              _%result117869%_))))
    (define __hash-ref__0
      (lambda (_%h117874%_ _%key117875%_)
        (let ((_%default117877%_ (macro-absent-obj)))
          (__hash-ref__% _%h117874%_ _%key117875%_ _%default117877%_))))
    (define __hash-ref
      (lambda _g121663_
        (let ((_g121664_ (let () (declare (not safe)) (##length _g121663_))))
          (cond ((let () (declare (not safe)) (##fx= _g121664_ 2))
                 (apply __hash-ref__0 _g121663_))
                ((let () (declare (not safe)) (##fx= _g121664_ 3))
                 (apply __hash-ref__% _g121663_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g121663_))))))
    (define hash-get
      (lambda (_%h117835%_ _%key117836%_)
        (let* ((_%h117842%_
                (let ((_%$obj117839%_ _%h117835%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117839%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117839%_)))
                           '#t)
                      _%$obj117839%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117839%_)))))
               (_%h117844%_ _%h117842%_))
          (__hash-get _%h117844%_ _%key117836%_))))
    (define __hash-get
      (lambda (_%h117822%_ _%key117823%_)
        (let ((_%h117826%_ _%h117822%_))
          (&HashTable-ref _%h117826%_ _%key117823%_ '#f))))
    (define hash-put!
      (lambda (_%h117802%_ _%key117803%_ _%value117804%_)
        (let* ((_%h117810%_
                (let ((_%$obj117807%_ _%h117802%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117807%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117807%_)))
                           '#t)
                      _%$obj117807%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117807%_)))))
               (_%h117812%_ _%h117810%_))
          (__hash-put! _%h117812%_ _%key117803%_ _%value117804%_))))
    (define __hash-put!
      (lambda (_%h117788%_ _%key117789%_ _%value117790%_)
        (let ((_%h117793%_ _%h117788%_))
          (&HashTable-set! _%h117793%_ _%key117789%_ _%value117790%_))))
    (define hash-update!__%
      (lambda (_%h117753%_ _%key117754%_ _%update117755%_ _%default117756%_)
        (let* ((_%h117762%_
                (let ((_%$obj117759%_ _%h117753%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117759%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117759%_)))
                           '#t)
                      _%$obj117759%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117759%_)))))
               (_%h117764%_ _%h117762%_))
          (__hash-update!__%
           _%h117764%_
           _%key117754%_
           _%update117755%_
           _%default117756%_))))
    (define hash-update!__0
      (lambda (_%h117777%_ _%key117778%_ _%update117779%_)
        (let ((_%default117781%_ '#!void))
          (hash-update!__%
           _%h117777%_
           _%key117778%_
           _%update117779%_
           _%default117781%_))))
    (define hash-update!
      (lambda _g121665_
        (let ((_g121666_ (let () (declare (not safe)) (##length _g121665_))))
          (cond ((let () (declare (not safe)) (##fx= _g121666_ 3))
                 (apply hash-update!__0 _g121665_))
                ((let () (declare (not safe)) (##fx= _g121666_ 4))
                 (apply hash-update!__% _g121665_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g121665_))))))
    (define __hash-update!__%
      (lambda (_%h117723%_ _%key117724%_ _%update117725%_ _%default117726%_)
        (let ((_%h117729%_ _%h117723%_))
          (HashTable-update!
           _%h117729%_
           _%key117724%_
           _%update117725%_
           _%default117726%_))))
    (define __hash-update!__0
      (lambda (_%h117741%_ _%key117742%_ _%update117743%_)
        (let ((_%default117745%_ '#!void))
          (__hash-update!__%
           _%h117741%_
           _%key117742%_
           _%update117743%_
           _%default117745%_))))
    (define __hash-update!
      (lambda _g121667_
        (let ((_g121668_ (let () (declare (not safe)) (##length _g121667_))))
          (cond ((let () (declare (not safe)) (##fx= _g121668_ 3))
                 (apply __hash-update!__0 _g121667_))
                ((let () (declare (not safe)) (##fx= _g121668_ 4))
                 (apply __hash-update!__% _g121667_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g121667_))))))
    (define hash-remove!
      (lambda (_%h117703%_ _%key117704%_)
        (let* ((_%h117710%_
                (let ((_%$obj117707%_ _%h117703%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117707%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117707%_)))
                           '#t)
                      _%$obj117707%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117707%_)))))
               (_%h117712%_ _%h117710%_))
          (__hash-remove! _%h117712%_ _%key117704%_))))
    (define __hash-remove!
      (lambda (_%h117690%_ _%key117691%_)
        (let ((_%h117694%_ _%h117690%_))
          (&HashTable-delete! _%h117694%_ _%key117691%_))))
    (define hash-key?
      (lambda (_%h117671%_ _%k117672%_)
        (let* ((_%h117678%_
                (let ((_%$obj117675%_ _%h117671%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117675%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117675%_)))
                           '#t)
                      _%$obj117675%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117675%_)))))
               (_%h117680%_ _%h117678%_))
          (__hash-key? _%h117680%_ _%k117672%_))))
    (define __hash-key?
      (lambda (_%h117658%_ _%k117659%_)
        (let ((_%h117662%_ _%h117658%_))
          (not (eq? (&HashTable-ref _%h117662%_ _%k117659%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h117640%_)
        (let* ((_%h117646%_
                (let ((_%$obj117643%_ _%h117640%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117643%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117643%_)))
                           '#t)
                      _%$obj117643%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117643%_)))))
               (_%h117648%_ _%h117646%_))
          (__hash->list _%h117648%_))))
    (define __hash->list
      (lambda (_%h117623%_)
        (let* ((_%h117626%_ _%h117623%_) (_%lst117635%_ '()))
          (&HashTable-for-each
           _%h117626%_
           (lambda (_%k117637%_ _%v117638%_)
             (set! _%lst117635%_
                   (cons (cons _%k117637%_ _%v117638%_) _%lst117635%_))))
          _%lst117635%_)))
    (define hash->plist
      (lambda (_%h117605%_)
        (let* ((_%h117611%_
                (let ((_%$obj117608%_ _%h117605%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117608%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117608%_)))
                           '#t)
                      _%$obj117608%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117608%_)))))
               (_%h117613%_ _%h117611%_))
          (__hash->plist _%h117613%_))))
    (define __hash->plist
      (lambda (_%h117588%_)
        (let* ((_%h117591%_ _%h117588%_) (_%lst117600%_ '()))
          (&HashTable-for-each
           _%h117591%_
           (lambda (_%k117602%_ _%v117603%_)
             (set! _%lst117600%_
                   (cons _%k117602%_ (cons _%v117603%_ _%lst117600%_)))))
          _%lst117600%_)))
    (define hash-for-each
      (lambda (_%proc117559%_ _%h117560%_)
        (if (procedure? _%proc117559%_)
            (let* ((_%proc117564%_ _%proc117559%_)
                   (_%h117576%_
                    (let ((_%$obj117573%_ _%h117560%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj117573%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj117573%_)))
                               '#t)
                          _%$obj117573%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj117573%_)))))
                   (_%h117578%_ _%h117576%_))
              (__hash-for-each _%proc117564%_ _%h117578%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc117559%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc117538%_ _%h117539%_)
        (let* ((_%proc117542%_ _%proc117538%_) (_%h117550%_ _%h117539%_))
          (&HashTable-for-each _%h117550%_ _%proc117542%_))))
    (define hash-map
      (lambda (_%proc117509%_ _%h117510%_)
        (if (procedure? _%proc117509%_)
            (let* ((_%proc117514%_ _%proc117509%_)
                   (_%h117526%_
                    (let ((_%$obj117523%_ _%h117510%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj117523%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj117523%_)))
                               '#t)
                          _%$obj117523%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj117523%_)))))
                   (_%h117528%_ _%h117526%_))
              (__hash-map _%proc117514%_ _%h117528%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc117509%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc117483%_ _%h117484%_)
        (let* ((_%proc117487%_ _%proc117483%_)
               (_%h117495%_ _%h117484%_)
               (_%result117504%_ '()))
          (&HashTable-for-each
           _%h117495%_
           (lambda (_%k117506%_ _%v117507%_)
             (set! _%result117504%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc117487%_ _%k117506%_ _%v117507%_))
                         _%result117504%_))))
          _%result117504%_)))
    (define hash-fold
      (lambda (_%proc117453%_ _%iv117454%_ _%h117455%_)
        (if (procedure? _%proc117453%_)
            (let* ((_%proc117459%_ _%proc117453%_)
                   (_%h117471%_
                    (let ((_%$obj117468%_ _%h117455%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj117468%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj117468%_)))
                               '#t)
                          _%$obj117468%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj117468%_)))))
                   (_%h117473%_ _%h117471%_))
              (__hash-fold _%proc117459%_ _%iv117454%_ _%h117473%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc117453%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc117426%_ _%iv117427%_ _%h117428%_)
        (let* ((_%proc117431%_ _%proc117426%_)
               (_%h117439%_ _%h117428%_)
               (_%result117448%_ _%iv117427%_))
          (&HashTable-for-each
           _%h117439%_
           (lambda (_%k117450%_ _%v117451%_)
             (set! _%result117448%_
                   (let ()
                     (declare (not safe))
                     (_%proc117431%_
                      _%k117450%_
                      _%v117451%_
                      _%result117448%_)))))
          _%result117448%_)))
    (define hash-find__%
      (lambda (_%proc117384%_ _%h117385%_ _%default-value117386%_)
        (if (procedure? _%proc117384%_)
            (let* ((_%proc117390%_ _%proc117384%_)
                   (_%h117402%_
                    (let ((_%$obj117399%_ _%h117385%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj117399%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj117399%_)))
                               '#t)
                          _%$obj117399%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj117399%_)))))
                   (_%h117404%_ _%h117402%_))
              (__hash-find__%
               _%proc117390%_
               _%h117404%_
               _%default-value117386%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc117384%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc117417%_ _%h117418%_)
        (let ((_%default-value117420%_ '#f))
          (hash-find__% _%proc117417%_ _%h117418%_ _%default-value117420%_))))
    (define hash-find
      (lambda _g121669_
        (let ((_g121670_ (let () (declare (not safe)) (##length _g121669_))))
          (cond ((let () (declare (not safe)) (##fx= _g121670_ 2))
                 (apply hash-find__0 _g121669_))
                ((let () (declare (not safe)) (##fx= _g121670_ 3))
                 (apply hash-find__% _g121669_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g121669_))))))
    (define __hash-find__%
      (lambda (_%proc117341%_ _%h117342%_ _%default-value117343%_)
        (let* ((_%proc117346%_ _%proc117341%_)
               (_%h117354%_ _%h117342%_)
               (__tmp121671
                (lambda (_%return117363%_)
                  (&HashTable-for-each
                   _%h117354%_
                   (lambda (_%k117365%_ _%v117366%_)
                     (let ((_%$e117368%_
                            (let ()
                              (declare (not safe))
                              (_%proc117346%_ _%k117365%_ _%v117366%_))))
                       (if _%$e117368%_
                           (_%return117363%_ _%$e117368%_)
                           '#!void))))
                  _%default-value117343%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp121671))))
    (define __hash-find__0
      (lambda (_%proc117374%_ _%h117375%_)
        (let ((_%default-value117377%_ '#f))
          (__hash-find__%
           _%proc117374%_
           _%h117375%_
           _%default-value117377%_))))
    (define __hash-find
      (lambda _g121672_
        (let ((_g121673_ (let () (declare (not safe)) (##length _g121672_))))
          (cond ((let () (declare (not safe)) (##fx= _g121673_ 2))
                 (apply __hash-find__0 _g121672_))
                ((let () (declare (not safe)) (##fx= _g121673_ 3))
                 (apply __hash-find__% _g121672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g121672_))))))
    (define hash-keys
      (lambda (_%h117322%_)
        (let* ((_%h117328%_
                (let ((_%$obj117325%_ _%h117322%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117325%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117325%_)))
                           '#t)
                      _%$obj117325%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117325%_)))))
               (_%h117330%_ _%h117328%_))
          (__hash-keys _%h117330%_))))
    (define __hash-keys
      (lambda (_%h117305%_)
        (let* ((_%h117308%_ _%h117305%_) (_%result117317%_ '()))
          (&HashTable-for-each
           _%h117308%_
           (lambda (_%k117319%_ _%v117320%_)
             (set! _%result117317%_ (cons _%k117319%_ _%result117317%_))))
          _%result117317%_)))
    (define hash-values
      (lambda (_%h117287%_)
        (let* ((_%h117293%_
                (let ((_%$obj117290%_ _%h117287%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117290%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117290%_)))
                           '#t)
                      _%$obj117290%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117290%_)))))
               (_%h117295%_ _%h117293%_))
          (__hash-values _%h117295%_))))
    (define __hash-values
      (lambda (_%h117270%_)
        (let* ((_%h117273%_ _%h117270%_) (_%result117282%_ '()))
          (&HashTable-for-each
           _%h117273%_
           (lambda (_%k117284%_ _%v117285%_)
             (set! _%result117282%_ (cons _%v117285%_ _%result117282%_))))
          _%result117282%_)))
    (define hash-copy
      (lambda (_%h117252%_)
        (let* ((_%h117258%_
                (let ((_%$obj117255%_ _%h117252%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117255%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117255%_)))
                           '#t)
                      _%$obj117255%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117255%_)))))
               (_%h117260%_ _%h117258%_))
          (__hash-copy _%h117260%_))))
    (define __hash-copy
      (lambda (_%h117240%_)
        (let ((_%h117243%_ _%h117240%_)) (__HashTable-copy _%h117243%_))))
    (define hash-clear!
      (lambda (_%h117222%_)
        (let* ((_%h117228%_
                (let ((_%$obj117225%_ _%h117222%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117225%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117225%_)))
                           '#t)
                      _%$obj117225%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117225%_)))))
               (_%h117230%_ _%h117228%_))
          (__hash-clear! _%h117230%_))))
    (define __hash-clear!
      (lambda (_%h117210%_)
        (let ((_%h117213%_ _%h117210%_)) (&HashTable-clear! _%h117213%_))))
    (define hash-merge
      (lambda (_%h117191%_ . _%rest117192%_)
        (let* ((_%h117198%_
                (let ((_%$obj117195%_ _%h117191%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117195%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117195%_)))
                           '#t)
                      _%$obj117195%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117195%_)))))
               (_%h117200%_ _%h117198%_))
          (declare (not safe))
          (##apply __hash-merge _%h117200%_ _%rest117192%_))))
    (define __hash-merge
      (lambda (_%h117176%_ . _%rest117177%_)
        (let* ((_%h117180%_ _%h117176%_)
               (_%copy117189%_ (__HashTable-copy _%h117180%_)))
          (apply hash-merge! _%copy117189%_ _%rest117177%_)
          _%copy117189%_)))
    (define hash-merge-right
      (lambda (_%h117157%_ . _%rest117158%_)
        (let* ((_%h117164%_
                (let ((_%$obj117161%_ _%h117157%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117161%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117161%_)))
                           '#t)
                      _%$obj117161%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117161%_)))))
               (_%h117166%_ _%h117164%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h117166%_ _%rest117158%_))))
    (define __hash-merge-right
      (lambda (_%h117142%_ . _%rest117143%_)
        (let* ((_%h117146%_ _%h117142%_)
               (_%copy117155%_ (__HashTable-copy _%h117146%_)))
          (apply hash-merge-right! _%copy117155%_ _%rest117143%_)
          _%copy117155%_)))
    (define hash-merge!
      (lambda (_%h117123%_ . _%rest117124%_)
        (let* ((_%h117130%_
                (let ((_%$obj117127%_ _%h117123%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117127%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117127%_)))
                           '#t)
                      _%$obj117127%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117127%_)))))
               (_%h117132%_ _%h117130%_))
          (declare (not safe))
          (##apply __hash-merge! _%h117132%_ _%rest117124%_))))
    (define __hash-merge!
      (lambda (_%h117086%_ . _%rest117087%_)
        (let ((_%h117090%_ _%h117086%_))
          (let ((__tmp121674
                 (lambda (_%hr117099%_)
                   (let* ((_%hr117105%_
                           (let ((_%$obj117102%_ _%hr117099%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj117102%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj117102%_)))
                                      '#t)
                                 _%$obj117102%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj117102%_)))))
                          (_%hr117107%_ _%hr117105%_))
                     (&HashTable-for-each
                      _%hr117107%_
                      (lambda (_%k117120%_ _%v117121%_)
                        (if (__hash-key? _%h117090%_ _%k117120%_)
                            '#!void
                            (&HashTable-set!
                             _%h117090%_
                             _%k117120%_
                             _%v117121%_))))))))
            (declare (not safe))
            (##for-each __tmp121674 _%rest117087%_))
          _%h117090%_)))
    (define hash-merge-right!
      (lambda (_%h117067%_ . _%rest117068%_)
        (let* ((_%h117074%_
                (let ((_%$obj117071%_ _%h117067%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117071%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117071%_)))
                           '#t)
                      _%$obj117071%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117071%_)))))
               (_%h117076%_ _%h117074%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h117076%_ _%rest117068%_))))
    (define __hash-merge-right!
      (lambda (_%h117030%_ . _%rest117031%_)
        (let ((_%h117034%_ _%h117030%_))
          (let ((__tmp121675
                 (lambda (_%hr117043%_)
                   (let* ((_%hr117049%_
                           (let ((_%$obj117046%_ _%hr117043%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj117046%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj117046%_)))
                                      '#t)
                                 _%$obj117046%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj117046%_)))))
                          (_%hr117051%_ _%hr117049%_))
                     (&HashTable-for-each
                      _%hr117051%_
                      (lambda (_%k117064%_ _%v117065%_)
                        (&HashTable-set!
                         _%h117034%_
                         _%k117064%_
                         _%v117065%_)))))))
            (declare (not safe))
            (##for-each __tmp121675 _%rest117031%_))
          _%h117034%_)))))
