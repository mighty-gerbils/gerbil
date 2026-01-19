(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1768865822)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp121607 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp121607
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args121519%_
        (apply make-instance UnboundKeyError::t _%$args121519%_)))
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
      (lambda (_%where121393%_ _%message121394%_ . _%irritants121395%_)
        (let ((__tmp121608
               (let ((__obj121599
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj121599
                    _%message121394%_
                    'where:
                    _%where121393%_
                    'irritants:
                    _%irritants121395%_))
                 __obj121599)))
          (declare (not safe))
          (raise __tmp121608))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp121609 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp121609
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj121601
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj121601
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj121601))
    (define make-HashTable
      (lambda (_%obj121391%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj121391%_))))
    (define try-HashTable
      (lambda (_%obj121389%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj121389%_))))
    (define HashTable?
      (lambda (_%obj121387%_)
        (let ((__tmp121610
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj121387%_ __tmp121610))))
    (define is-HashTable?
      (lambda (_%obj121385%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj121385%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self121369%_)
        (let* ((_%self121374%_
                (let ((_%$obj121371%_ _%self121369%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121371%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121371%_)))
                           '#t)
                      _%$obj121371%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121371%_)))))
               (_%self121376%_ _%self121374%_))
          (&HashTable-clear! _%self121376%_))))
    (define &HashTable-clear!
      (lambda (_%self121354%_)
        (let ((_%self121356%_ _%self121354%_))
          (declare (not safe))
          (let ((_%obj121366%_
                 (##unchecked-structure-ref _%self121356%_ '1 '#f 'clear!))
                (_%f121367%_
                 (##unchecked-structure-ref _%self121356%_ '2 '#f 'clear!)))
            (_%f121367%_ _%obj121366%_)))))
    (define HashTable-copy
      (lambda (_%self121338%_)
        (let* ((_%self121343%_
                (let ((_%$obj121340%_ _%self121338%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121340%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121340%_)))
                           '#t)
                      _%$obj121340%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121340%_)))))
               (_%self121345%_ _%self121343%_))
          (__HashTable-copy _%self121345%_))))
    (define __HashTable-copy
      (lambda (_%self121325%_)
        (let ((_%self121327%_ _%self121325%_))
          (if __DEBUG
              (let ((_%$obj121335%_ (&HashTable-copy _%self121327%_)))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj121335%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj121335%_)))
                         '#t)
                    _%$obj121335%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj121335%_))))
              (&HashTable-copy _%self121327%_)))))
    (define &HashTable-copy
      (lambda (_%self121310%_)
        (let ((_%self121312%_ _%self121310%_))
          (declare (not safe))
          (let ((_%obj121322%_
                 (##unchecked-structure-ref _%self121312%_ '1 '#f 'copy))
                (_%f121323%_
                 (##unchecked-structure-ref _%self121312%_ '3 '#f 'copy)))
            (_%f121323%_ _%obj121322%_)))))
    (define HashTable-delete!
      (lambda (_%self121293%_ _%key121294%_)
        (let* ((_%self121299%_
                (let ((_%$obj121296%_ _%self121293%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121296%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121296%_)))
                           '#t)
                      _%$obj121296%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121296%_)))))
               (_%self121301%_ _%self121299%_))
          (&HashTable-delete! _%self121301%_ _%key121294%_))))
    (define &HashTable-delete!
      (lambda (_%self121277%_ _%key121278%_)
        (let ((_%self121280%_ _%self121277%_))
          (declare (not safe))
          (let ((_%obj121290%_
                 (##unchecked-structure-ref _%self121280%_ '1 '#f 'delete!))
                (_%f121291%_
                 (##unchecked-structure-ref _%self121280%_ '4 '#f 'delete!)))
            (_%f121291%_ _%obj121290%_ _%key121278%_)))))
    (define HashTable-for-each
      (lambda (_%self121250%_ _%proc121251%_)
        (let* ((_%self121256%_
                (let ((_%$obj121253%_ _%self121250%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121253%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121253%_)))
                           '#t)
                      _%$obj121253%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121253%_)))))
               (_%self121258%_ _%self121256%_))
          (if (procedure? _%proc121251%_)
              (let ((_%proc121267%_ _%proc121251%_))
                (&HashTable-for-each _%self121258%_ _%proc121267%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc121251%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self121226%_ _%proc121227%_)
        (let* ((_%self121229%_ _%self121226%_) (_%proc121236%_ _%proc121227%_))
          (declare (not safe))
          (let ((_%obj121247%_
                 (##unchecked-structure-ref _%self121229%_ '1 '#f 'for-each))
                (_%f121248%_
                 (##unchecked-structure-ref _%self121229%_ '5 '#f 'for-each)))
            (_%f121248%_ _%obj121247%_ _%proc121236%_)))))
    (define HashTable-length
      (lambda (_%self121210%_)
        (let* ((_%self121215%_
                (let ((_%$obj121212%_ _%self121210%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121212%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121212%_)))
                           '#t)
                      _%$obj121212%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121212%_)))))
               (_%self121217%_ _%self121215%_))
          (__HashTable-length _%self121217%_))))
    (define __HashTable-length
      (lambda (_%self121197%_)
        (let ((_%self121199%_ _%self121197%_))
          (if __DEBUG
              (let ((_%val121207%_ (&HashTable-length _%self121199%_)))
                _%val121207%_)
              (&HashTable-length _%self121199%_)))))
    (define &HashTable-length
      (lambda (_%self121182%_)
        (let ((_%self121184%_ _%self121182%_))
          (declare (not safe))
          (let ((_%obj121194%_
                 (##unchecked-structure-ref _%self121184%_ '1 '#f 'length))
                (_%f121195%_
                 (##unchecked-structure-ref _%self121184%_ '6 '#f 'length)))
            (_%f121195%_ _%obj121194%_)))))
    (define HashTable-ref
      (lambda (_%self121164%_ _%key121165%_ _%default121166%_)
        (let* ((_%self121171%_
                (let ((_%$obj121168%_ _%self121164%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121168%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121168%_)))
                           '#t)
                      _%$obj121168%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121168%_)))))
               (_%self121173%_ _%self121171%_))
          (&HashTable-ref _%self121173%_ _%key121165%_ _%default121166%_))))
    (define &HashTable-ref
      (lambda (_%self121147%_ _%key121148%_ _%default121149%_)
        (let ((_%self121151%_ _%self121147%_))
          (declare (not safe))
          (let ((_%obj121161%_
                 (##unchecked-structure-ref _%self121151%_ '1 '#f 'ref))
                (_%f121162%_
                 (##unchecked-structure-ref _%self121151%_ '7 '#f 'ref)))
            (_%f121162%_ _%obj121161%_ _%key121148%_ _%default121149%_)))))
    (define HashTable-set!
      (lambda (_%self121129%_ _%key121130%_ _%value121131%_)
        (let* ((_%self121136%_
                (let ((_%$obj121133%_ _%self121129%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121133%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121133%_)))
                           '#t)
                      _%$obj121133%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121133%_)))))
               (_%self121138%_ _%self121136%_))
          (&HashTable-set! _%self121138%_ _%key121130%_ _%value121131%_))))
    (define &HashTable-set!
      (lambda (_%self121112%_ _%key121113%_ _%value121114%_)
        (let ((_%self121116%_ _%self121112%_))
          (declare (not safe))
          (let ((_%obj121126%_
                 (##unchecked-structure-ref _%self121116%_ '1 '#f 'set!))
                (_%f121127%_
                 (##unchecked-structure-ref _%self121116%_ '8 '#f 'set!)))
            (_%f121127%_ _%obj121126%_ _%key121113%_ _%value121114%_)))))
    (define HashTable-update!
      (lambda (_%self121083%_ _%key121084%_ _%proc121085%_ _%default121086%_)
        (let* ((_%self121091%_
                (let ((_%$obj121088%_ _%self121083%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121088%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121088%_)))
                           '#t)
                      _%$obj121088%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121088%_)))))
               (_%self121093%_ _%self121091%_))
          (if (procedure? _%proc121085%_)
              (let ((_%proc121102%_ _%proc121085%_))
                (&HashTable-update!
                 _%self121093%_
                 _%key121084%_
                 _%proc121102%_
                 _%default121086%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc121085%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self121055%_ _%key121056%_ _%proc121057%_ _%default121058%_)
        (let* ((_%self121060%_ _%self121055%_) (_%proc121067%_ _%proc121057%_))
          (declare (not safe))
          (let ((_%obj121078%_
                 (##unchecked-structure-ref _%self121060%_ '1 '#f 'update!))
                (_%f121080%_
                 (##unchecked-structure-ref _%self121060%_ '9 '#f 'update!)))
            (_%f121080%_
             _%obj121078%_
             _%key121056%_
             _%proc121067%_
             _%default121058%_)))))
    (define Locker::t
      (let ((__tmp121611 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp121611
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj121603
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj121603
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj121603))
    (define make-Locker
      (lambda (_%obj121053%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj121053%_))))
    (define try-Locker
      (lambda (_%obj121051%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj121051%_))))
    (define Locker?
      (lambda (_%obj121049%_)
        (let ((__tmp121612
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj121049%_ __tmp121612))))
    (define is-Locker?
      (lambda (_%obj121047%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj121047%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self121031%_)
        (let* ((_%self121036%_
                (let ((_%$obj121033%_ _%self121031%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121033%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121033%_)))
                           '#t)
                      _%$obj121033%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj121033%_)))))
               (_%self121038%_ _%self121036%_))
          (&Locker-read-lock! _%self121038%_))))
    (define &Locker-read-lock!
      (lambda (_%self121016%_)
        (let ((_%self121018%_ _%self121016%_))
          (declare (not safe))
          (let ((_%obj121028%_
                 (##unchecked-structure-ref _%self121018%_ '1 '#f 'read-lock!))
                (_%f121029%_
                 (##unchecked-structure-ref
                  _%self121018%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f121029%_ _%obj121028%_)))))
    (define Locker-read-unlock!
      (lambda (_%self121000%_)
        (let* ((_%self121005%_
                (let ((_%$obj121002%_ _%self121000%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121002%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121002%_)))
                           '#t)
                      _%$obj121002%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj121002%_)))))
               (_%self121007%_ _%self121005%_))
          (&Locker-read-unlock! _%self121007%_))))
    (define &Locker-read-unlock!
      (lambda (_%self120985%_)
        (let ((_%self120987%_ _%self120985%_))
          (declare (not safe))
          (let ((_%obj120997%_
                 (##unchecked-structure-ref
                  _%self120987%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f120998%_
                 (##unchecked-structure-ref
                  _%self120987%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f120998%_ _%obj120997%_)))))
    (define Locker-write-lock!
      (lambda (_%self120969%_)
        (let* ((_%self120974%_
                (let ((_%$obj120971%_ _%self120969%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj120971%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj120971%_)))
                           '#t)
                      _%$obj120971%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj120971%_)))))
               (_%self120976%_ _%self120974%_))
          (&Locker-write-lock! _%self120976%_))))
    (define &Locker-write-lock!
      (lambda (_%self120954%_)
        (let ((_%self120956%_ _%self120954%_))
          (declare (not safe))
          (let ((_%obj120966%_
                 (##unchecked-structure-ref
                  _%self120956%_
                  '1
                  '#f
                  'write-lock!))
                (_%f120967%_
                 (##unchecked-structure-ref
                  _%self120956%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f120967%_ _%obj120966%_)))))
    (define Locker-write-unlock!
      (lambda (_%self120938%_)
        (let* ((_%self120943%_
                (let ((_%$obj120940%_ _%self120938%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj120940%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj120940%_)))
                           '#t)
                      _%$obj120940%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj120940%_)))))
               (_%self120945%_ _%self120943%_))
          (&Locker-write-unlock! _%self120945%_))))
    (define &Locker-write-unlock!
      (lambda (_%self120921%_)
        (let ((_%self120923%_ _%self120921%_))
          (declare (not safe))
          (let ((_%obj120933%_
                 (##unchecked-structure-ref
                  _%self120923%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f120935%_
                 (##unchecked-structure-ref
                  _%self120923%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f120935%_ _%obj120933%_)))))
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
      (lambda (_%table120914%_
               _%key120915%_
               _%update120916%_
               _%default120917%_)
        (let ((_%result120919%_
               (table-ref _%table120914%_ _%key120915%_ _%default120917%_)))
          (table-set!
           _%table120914%_
           _%key120915%_
           (_%update120916%_ _%default120917%_)))))
    (define gambit-table-for-each
      (lambda (_%table120911%_ _%proc120912%_)
        (table-for-each _%proc120912%_ _%table120911%_)))
    (define gambit-table-clear!
      (lambda (_%table120909%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table120909%_ '0 '5 '#f '#f))))
    (let ((__tmp121613 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121613 'HashTable::ref table-ref))
    (let ((__tmp121614 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121614 'HashTable::set! table-set!))
    (let ((__tmp121615 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121615 'HashTable::update! gambit-table-update!))
    (let ((__tmp121616 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121616 'HashTable::delete! table-set!))
    (let ((__tmp121617 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121617 'HashTable::for-each gambit-table-for-each))
    (let ((__tmp121618 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121618 'HashTable::length table-length))
    (let ((__tmp121619 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121619 'HashTable::copy table-copy))
    (let ((__tmp121620 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121620 'HashTable::clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots120891%_ '(table count free hash test seed))
             (_%slot-vector120893%_ (list->vector (cons '#f _%slots120891%_)))
             (_%slot-table120900%_
              (let ((_%slot-table120895%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp121623
                       (lambda (_%slot120897%_ _%field120898%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table120895%_
                            _%slot120897%_
                            _%field120898%_))
                         (let ((__tmp121624
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot120897%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table120895%_
                            __tmp121624
                            _%field120898%_))))
                      (__tmp121621
                       (let ((__tmp121622
                              (let ()
                                (declare (not safe))
                                (##length _%slots120891%_))))
                         (declare (not safe))
                         (##iota __tmp121622 '1))))
                  (declare (not safe))
                  (##for-each __tmp121623 _%slots120891%_ __tmp121621))
                _%slot-table120895%_))
             (_%flags120902%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields120904%_ '#())
             (_%properties120906%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots120891%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp121625 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags120902%_
         __table::t
         _%fields120904%_
         __tmp121625
         _%slot-vector120893%_
         _%slot-table120900%_
         _%properties120906%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots120873%_ '(gcht immediate))
             (_%slot-vector120875%_ (list->vector (cons '#f _%slots120873%_)))
             (_%slot-table120882%_
              (let ((_%slot-table120877%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp121628
                       (lambda (_%slot120879%_ _%field120880%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table120877%_
                            _%slot120879%_
                            _%field120880%_))
                         (let ((__tmp121629
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot120879%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table120877%_
                            __tmp121629
                            _%field120880%_))))
                      (__tmp121626
                       (let ((__tmp121627
                              (let ()
                                (declare (not safe))
                                (##length _%slots120873%_))))
                         (declare (not safe))
                         (##iota __tmp121627 '1))))
                  (declare (not safe))
                  (##for-each __tmp121628 _%slots120873%_ __tmp121626))
                _%slot-table120877%_))
             (_%flags120884%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields120886%_ '#())
             (_%properties120888%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots120873%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp121630 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags120884%_
         __gc-table::t
         _%fields120886%_
         __tmp121630
         _%slot-vector120875%_
         _%slot-table120882%_
         _%properties120888%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp121632 (list))
            (__tmp121631
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp121632
         '(table lock)
         __tmp121631
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args120870%_
        (apply make-instance locked-hash-table::t _%$args120870%_)))
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
      (let ((__tmp121634 (list))
            (__tmp121633
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp121634
         '(table key-check)
         __tmp121633
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args120867%_
        (apply make-instance checked-hash-table::t _%$args120867%_)))
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
      (let ((__tmp121636 (list hash-table::t))
            (__tmp121635 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp121636
         '()
         __tmp121635
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args120864%_
        (apply make-instance eq-hash-table::t _%$args120864%_)))
    (define eqv-hash-table::t
      (let ((__tmp121638 (list hash-table::t))
            (__tmp121637 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp121638
         '()
         __tmp121637
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args120861%_
        (apply make-instance eqv-hash-table::t _%$args120861%_)))
    (define symbol-hash-table::t
      (let ((__tmp121640 (list hash-table::t))
            (__tmp121639 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp121640
         '()
         __tmp121639
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args120858%_
        (apply make-instance symbol-hash-table::t _%$args120858%_)))
    (define string-hash-table::t
      (let ((__tmp121642 (list hash-table::t))
            (__tmp121641 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp121642
         '()
         __tmp121641
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args120855%_
        (apply make-instance string-hash-table::t _%$args120855%_)))
    (define immediate-hash-table::t
      (let ((__tmp121644 (list hash-table::t))
            (__tmp121643 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp121644
         '()
         __tmp121643
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args120852%_
        (apply make-instance immediate-hash-table::t _%$args120852%_)))
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
    (define _%locked-hash-table::HashTable::ref116647%_
      (lambda (_%self120812%_ _%key120814%_ _%default120815%_)
        (let* ((_%self120818%_ _%self120812%_)
               (_%key120827%_ _%key120814%_)
               (_%default120835%_ _%default120815%_))
          (let ((_%h120844%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120818%_ '1 '#f '#f)))
                (_%l120846%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120818%_ '2 '#f '#f))))
            (let ((__tmp121647 (lambda () (&Locker-read-lock! _%l120846%_)))
                  (__tmp121646
                   (lambda ()
                     (&HashTable-ref
                      _%h120844%_
                      _%key120827%_
                      _%default120835%_)))
                  (__tmp121645 (lambda () (&Locker-read-unlock! _%l120846%_))))
              (declare (not safe))
              (##dynamic-wind __tmp121647 __tmp121646 __tmp121645))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref116647%_
       '#f))
    (define _%locked-hash-table::HashTable::set!116649%_
      (lambda (_%self120649%_ _%key120651%_ _%value120652%_)
        (let* ((_%self120655%_ _%self120649%_)
               (_%key120664%_ _%key120651%_)
               (_%value120672%_ _%value120652%_))
          (let ((_%h120681%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120655%_ '1 '#f '#f)))
                (_%l120683%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120655%_ '2 '#f '#f))))
            (let ((__tmp121650 (lambda () (&Locker-write-lock! _%l120683%_)))
                  (__tmp121649
                   (lambda ()
                     (&HashTable-set!
                      _%h120681%_
                      _%key120664%_
                      _%value120672%_)))
                  (__tmp121648
                   (lambda () (&Locker-write-unlock! _%l120683%_))))
              (declare (not safe))
              (##dynamic-wind __tmp121650 __tmp121649 __tmp121648))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!116649%_
       '#f))
    (define _%locked-hash-table::HashTable::update!116651%_
      (lambda (_%self120477%_ _%key120479%_ _%update120480%_ _%default120481%_)
        (let* ((_%self120484%_ _%self120477%_)
               (_%key120493%_ _%key120479%_)
               (_%update120501%_ _%update120480%_)
               (_%default120509%_ _%default120481%_))
          (let ((_%h120518%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120484%_ '1 '#f '#f)))
                (_%l120520%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120484%_ '2 '#f '#f))))
            (let ((__tmp121653 (lambda () (&Locker-write-lock! _%l120520%_)))
                  (__tmp121652
                   (lambda ()
                     (&HashTable-update!
                      _%h120518%_
                      _%key120493%_
                      _%update120501%_
                      _%default120509%_)))
                  (__tmp121651
                   (lambda () (&Locker-write-unlock! _%l120520%_))))
              (declare (not safe))
              (##dynamic-wind __tmp121653 __tmp121652 __tmp121651))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!116651%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!116653%_
      (lambda (_%self120323%_ _%key120325%_)
        (let* ((_%self120328%_ _%self120323%_) (_%key120337%_ _%key120325%_))
          (let ((_%h120346%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120328%_ '1 '#f '#f)))
                (_%l120348%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120328%_ '2 '#f '#f))))
            (let ((__tmp121656 (lambda () (&Locker-write-lock! _%l120348%_)))
                  (__tmp121655
                   (lambda () (&HashTable-delete! _%h120346%_ _%key120337%_)))
                  (__tmp121654
                   (lambda () (&Locker-write-unlock! _%l120348%_))))
              (declare (not safe))
              (##dynamic-wind __tmp121656 __tmp121655 __tmp121654))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!116653%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each116655%_
      (lambda (_%self120169%_ _%proc120171%_)
        (let* ((_%self120174%_ _%self120169%_) (_%proc120183%_ _%proc120171%_))
          (let ((_%h120192%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120174%_ '1 '#f '#f)))
                (_%l120194%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120174%_ '2 '#f '#f))))
            (let ((__tmp121659 (lambda () (&Locker-read-lock! _%l120194%_)))
                  (__tmp121658
                   (lambda ()
                     (&HashTable-for-each _%h120192%_ _%proc120183%_)))
                  (__tmp121657 (lambda () (&Locker-read-unlock! _%l120194%_))))
              (declare (not safe))
              (##dynamic-wind __tmp121659 __tmp121658 __tmp121657))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each116655%_
       '#f))
    (define _%locked-hash-table::HashTable::length116657%_
      (lambda (_%self120017%_)
        (let ((_%self120021%_ _%self120017%_))
          (let ((_%h120031%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120021%_ '1 '#f '#f)))
                (_%l120033%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120021%_ '2 '#f '#f))))
            ((lambda (_%g120035120037%_)
               (let ((_%val120040%_ _%g120035120037%_))
                 (if (fixnum? _%val120040%_)
                     _%val120040%_
                     (let ()
                       (declare (not safe))
                       (error '"bad cast" fixnum::t _%val120040%_)))))
             (let ((__tmp121662 (lambda () (&Locker-read-lock! _%l120033%_)))
                   (__tmp121661 (lambda () (&HashTable-length _%h120031%_)))
                   (__tmp121660
                    (lambda () (&Locker-read-unlock! _%l120033%_))))
               (declare (not safe))
               (##dynamic-wind __tmp121662 __tmp121661 __tmp121660)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length116657%_
       '#f))
    (define _%locked-hash-table::HashTable::copy116659%_
      (lambda (_%self119869%_)
        (let ((_%self119873%_ _%self119869%_))
          (let ((_%h119883%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self119873%_ '1 '#f '#f)))
                (_%l119885%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self119873%_ '2 '#f '#f))))
            (let ((_%$obj119891%_
                   (let ((__tmp121665
                          (lambda () (&Locker-read-lock! _%l119885%_)))
                         (__tmp121664
                          (lambda () (&HashTable-copy _%h119883%_)))
                         (__tmp121663
                          (lambda () (&Locker-read-unlock! _%l119885%_))))
                     (declare (not safe))
                     (##dynamic-wind __tmp121665 __tmp121664 __tmp121663))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj119891%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj119891%_)))
                       '#t)
                  _%$obj119891%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj119891%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy116659%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!116661%_
      (lambda (_%self119724%_)
        (let ((_%self119728%_ _%self119724%_))
          (let ((_%h119738%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self119728%_ '1 '#f '#f)))
                (_%l119740%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self119728%_ '2 '#f '#f))))
            (let ((__tmp121668 (lambda () (&Locker-write-lock! _%l119740%_)))
                  (__tmp121667 (lambda () (&HashTable-clear! _%h119738%_)))
                  (__tmp121666
                   (lambda () (&Locker-write-unlock! _%l119740%_))))
              (declare (not safe))
              (##dynamic-wind __tmp121668 __tmp121667 __tmp121666))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!116661%_
       '#f))
    (let ((__tmp121669 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp121669 'Locker::read-lock! mutex-lock!))
    (let ((__tmp121670 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp121670 'Locker::read-unlock! mutex-unlock!))
    (let ((__tmp121671 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp121671 'Locker::write-lock! mutex-lock!))
    (let ((__tmp121672 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp121672 'Locker::write-unlock! mutex-unlock!))
    (define _%checked-hash-table::HashTable::ref116874%_
      (lambda (_%self119559%_ _%key119560%_ _%default119561%_)
        (let* ((_%self119564%_ _%self119559%_)
               (_%key119573%_ _%key119560%_)
               (_%default119581%_ _%default119561%_))
          (declare (not safe))
          (let ((_%h119592%_
                 (##unchecked-structure-ref _%self119564%_ '1 '#f '#f))
                (_%key?119594%_
                 (##unchecked-structure-ref _%self119564%_ '2 '#f '#f)))
            (if ((lambda (_%key?119597%_ _%key119598%_ _%default119599%_)
                   (_%key?119597%_ _%key119598%_))
                 _%key?119594%_
                 _%key119573%_
                 _%default119581%_)
                (&HashTable-ref _%h119592%_ _%key119573%_ _%default119581%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key119573%_ (cons _%default119581%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref116874%_
       '#f))
    (define _%checked-hash-table::HashTable::set!116876%_
      (lambda (_%self119394%_ _%key119395%_ _%value119396%_)
        (let* ((_%self119399%_ _%self119394%_)
               (_%key119408%_ _%key119395%_)
               (_%value119416%_ _%value119396%_))
          (declare (not safe))
          (let ((_%h119427%_
                 (##unchecked-structure-ref _%self119399%_ '1 '#f '#f))
                (_%key?119429%_
                 (##unchecked-structure-ref _%self119399%_ '2 '#f '#f)))
            (if ((lambda (_%key?119432%_ _%key119433%_ _%value119434%_)
                   (_%key?119432%_ _%key119433%_))
                 _%key?119429%_
                 _%key119408%_
                 _%value119416%_)
                (&HashTable-set! _%h119427%_ _%key119408%_ _%value119416%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key119408%_ (cons _%value119416%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!116876%_
       '#f))
    (define _%checked-hash-table::HashTable::update!116878%_
      (lambda (_%self119219%_ _%key119220%_ _%update119221%_ _%default119222%_)
        (let* ((_%self119225%_ _%self119219%_)
               (_%key119234%_ _%key119220%_)
               (_%update119242%_ _%update119221%_)
               (_%default119250%_ _%default119222%_))
          (declare (not safe))
          (let ((_%h119261%_
                 (##unchecked-structure-ref _%self119225%_ '1 '#f '#f))
                (_%key?119263%_
                 (##unchecked-structure-ref _%self119225%_ '2 '#f '#f)))
            (if ((lambda (_%key?119266%_
                          _%key119267%_
                          _%update119268%_
                          _%default119269%_)
                   (_%key?119266%_ _%key119267%_))
                 _%key?119263%_
                 _%key119234%_
                 _%update119242%_
                 _%default119250%_)
                (&HashTable-update!
                 _%h119261%_
                 _%key119234%_
                 _%update119242%_
                 _%default119250%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key119234%_
                         (cons _%update119242%_ (cons _%default119250%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!116878%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!116880%_
      (lambda (_%self119064%_ _%key119065%_)
        (let* ((_%self119068%_ _%self119064%_) (_%key119077%_ _%key119065%_))
          (declare (not safe))
          (let ((_%h119088%_
                 (##unchecked-structure-ref _%self119068%_ '1 '#f '#f))
                (_%key?119090%_
                 (##unchecked-structure-ref _%self119068%_ '2 '#f '#f)))
            (if ((lambda (_%key?119093%_ _%key119094%_)
                   (_%key?119093%_ _%key119094%_))
                 _%key?119090%_
                 _%key119077%_)
                (&HashTable-delete! _%h119088%_ _%key119077%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key119077%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!116880%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each116882%_
      (lambda (_%self118909%_ _%proc118910%_)
        (let* ((_%self118913%_ _%self118909%_) (_%proc118922%_ _%proc118910%_))
          (declare (not safe))
          (let ((_%h118933%_
                 (##unchecked-structure-ref _%self118913%_ '1 '#f '#f))
                (_%key?118935%_
                 (##unchecked-structure-ref _%self118913%_ '2 '#f '#f)))
            (if ((lambda (_%key?118938%_ _%proc118939%_) '#t)
                 _%key?118935%_
                 _%proc118922%_)
                (&HashTable-for-each _%h118933%_ _%proc118922%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc118922%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each116882%_
       '#f))
    (define _%checked-hash-table::HashTable::length116884%_
      (lambda (_%self118766%_)
        (let ((_%self118769%_ _%self118766%_))
          (declare (not safe))
          (let ((_%h118781%_
                 (##unchecked-structure-ref _%self118769%_ '1 '#f '#f))
                (_%key?118783%_
                 (##unchecked-structure-ref _%self118769%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h118781%_)
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
       _%checked-hash-table::HashTable::length116884%_
       '#f))
    (define _%checked-hash-table::HashTable::copy116886%_
      (lambda (_%self118623%_)
        (let ((_%self118626%_ _%self118623%_))
          (declare (not safe))
          (let ((_%h118638%_
                 (##unchecked-structure-ref _%self118626%_ '1 '#f '#f))
                (_%key?118640%_
                 (##unchecked-structure-ref _%self118626%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h118638%_)
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
       _%checked-hash-table::HashTable::copy116886%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!116888%_
      (lambda (_%self118480%_)
        (let ((_%self118483%_ _%self118480%_))
          (declare (not safe))
          (let ((_%h118495%_
                 (##unchecked-structure-ref _%self118483%_ '1 '#f '#f))
                (_%key?118497%_
                 (##unchecked-structure-ref _%self118483%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h118495%_)
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
       _%checked-hash-table::HashTable::clear!116888%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table118350%_
               _%count118351%_
               _%free118352%_
               _%hash118353%_
               _%test118354%_
               _%seed118355%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table118350%_
           _%count118351%_
           _%free118352%_
           _%hash118353%_
           _%test118354%_
           _%seed118355%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords118111%_
               _%size-hint118101118112%_
               _%seed118102118114%_
               _%test118103118116%_
               _%hash118104118118%_
               _%lock118105118120%_
               _%check118106118122%_
               _%weak-keys118107118124%_
               _%weak-values118108118126%_)
        (let* ((_%size-hint118129%_
                (if (eq? _%size-hint118101118112%_ absent-value)
                    '#f
                    _%size-hint118101118112%_))
               (_%seed118131%_
                (if (eq? _%seed118102118114%_ absent-value)
                    '#f
                    _%seed118102118114%_))
               (_%test118133%_
                (if (eq? _%test118103118116%_ absent-value)
                    equal?
                    _%test118103118116%_))
               (_%hash118135%_
                (if (eq? _%hash118104118118%_ absent-value)
                    '#f
                    _%hash118104118118%_))
               (_%lock118137%_
                (if (eq? _%lock118105118120%_ absent-value)
                    '#f
                    _%lock118105118120%_))
               (_%check118139%_
                (if (eq? _%check118106118122%_ absent-value)
                    '#f
                    _%check118106118122%_))
               (_%weak-keys118141%_
                (if (eq? _%weak-keys118107118124%_ absent-value)
                    '#f
                    _%weak-keys118107118124%_))
               (_%weak-values118143%_
                (if (eq? _%weak-values118108118126%_ absent-value)
                    '#f
                    _%weak-values118108118126%_)))
          (letrec ((_%table-seed118146%_
                    (lambda ()
                      (if (fixnum? _%seed118131%_)
                          _%seed118131%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock118147%_
                    (lambda (_%ht118324%_)
                      (let ((_%ht118327%_ _%ht118324%_))
                        (_%__wrap-lock118148%_ _%ht118327%_))))
                   (_%__wrap-lock118148%_
                    (lambda (_%ht118306%_)
                      (let ((_%ht118309%_ _%ht118306%_))
                        (if _%lock118137%_
                            (let ((_%$obj118321%_
                                   (let ((__tmp121673
                                          (let ((_%$obj118318%_
                                                 _%lock118137%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj118318%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj118318%_)))
                                                     '#t)
                                                _%$obj118318%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj118318%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht118309%_
                                      __tmp121673))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj118321%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj118321%_)))
                                       '#t)
                                  _%$obj118321%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj118321%_))))
                            _%ht118309%_))))
                   (_%wrap-checked118149%_
                    (lambda (_%ht118293%_ _%implicit118294%_)
                      (let ((_%ht118297%_ _%ht118293%_))
                        (_%__wrap-checked118150%_
                         _%ht118297%_
                         _%implicit118294%_))))
                   (_%__wrap-checked118150%_
                    (lambda (_%ht118266%_ _%implicit118267%_)
                      (let ((_%ht118270%_ _%ht118266%_))
                        (if _%check118139%_
                            (let ((_%$obj118290%_
                                   (let ((__tmp121674
                                          (if (procedure? _%check118139%_)
                                              _%check118139%_
                                              _%implicit118267%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht118270%_
                                      __tmp121674))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj118290%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj118290%_)))
                                       '#t)
                                  _%$obj118290%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj118290%_))))
                            _%ht118270%_))))
                   (_%make118151%_
                    (lambda (_%kons118250%_
                             _%key?118251%_
                             _%hash118252%_
                             _%test118253%_)
                      (let* ((_%size118256%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint118129%_)))
                             (_%table118258%_
                              (let ((__tmp121675 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size118256%_ __tmp121675)))
                             (_%ht118263%_
                              (let ((_%$obj118260%_
                                     (_%kons118250%_
                                      _%table118258%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size118256%_ '2))
                                      _%hash118252%_
                                      _%test118253%_
                                      (_%table-seed118146%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj118260%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj118260%_)))
                                         '#t)
                                    _%$obj118260%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj118260%_))))))
                        (_%__wrap-checked118150%_
                         (_%__wrap-lock118148%_ _%ht118263%_)
                         _%key?118251%_))))
                   (_%make-gc-hash-table118152%_
                    (lambda ()
                      (let ((_%ht118248%_
                             (let ((_%$obj118245%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint118129%_
                                       gc-hash-table::t))))
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
                        (_%__wrap-checked118150%_
                         (_%__wrap-lock118148%_ _%ht118248%_)
                         true))))
                   (_%make-gambit-table118153%_
                    (lambda ()
                      (let* ((_%size118222%_
                              (let ((_%$e118219%_ _%size-hint118129%_))
                                (if _%$e118219%_
                                    _%$e118219%_
                                    (macro-absent-obj))))
                             (_%test118227%_
                              (let ((_%$e118224%_ _%test118133%_))
                                (if _%$e118224%_ _%$e118224%_ equal?)))
                             (_%hash118235%_
                              (let ((_%$e118229%_ _%hash118135%_))
                                (if _%$e118229%_
                                    _%$e118229%_
                                    (if (eq? _%test118227%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test118227%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht118240%_
                              (let ((_%$obj118237%_
                                     (make-table
                                      'size:
                                      _%size118222%_
                                      'test:
                                      _%test118227%_
                                      'hash:
                                      _%hash118235%_
                                      'weak-keys:
                                      _%weak-keys118141%_
                                      'weak-values:
                                      _%weak-values118143%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj118237%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj118237%_)))
                                         '#t)
                                    _%$obj118237%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj118237%_))))))
                        (_%__wrap-checked118150%_
                         (_%__wrap-lock118148%_ _%ht118240%_)
                         true)))))
            (if (or _%weak-keys118141%_ _%weak-values118143%_)
                (_%make-gambit-table118153%_)
                (if (and (or (eq? _%test118133%_ eq?)
                             (eq? _%test118133%_ ##eq?))
                         (or (not _%hash118135%_)
                             (eq? _%hash118135%_ eq?-hash)
                             (eq? _%hash118135%_ eq-hash))
                         (not _%seed118131%_))
                    (_%make-gc-hash-table118152%_)
                    (if (and (or (eq? _%test118133%_ eq?)
                                 (eq? _%test118133%_ ##eq?))
                             (or (not _%hash118135%_)
                                 (eq? _%hash118135%_ eq?-hash)
                                 (eq? _%hash118135%_ eq-hash)))
                        (_%make118151%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test118133%_ eqv?)
                                     (eq? _%test118133%_ ##eqv?))
                                 (or (not _%hash118135%_)
                                     (eq? _%hash118135%_ eqv?-hash)
                                     (eq? _%hash118135%_ eqv-hash)))
                            (_%make118151%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test118133%_ eq?)
                                         (eq? _%test118133%_ ##eq?))
                                     (or (eq? _%hash118135%_ symbolic-hash)
                                         (eq? _%hash118135%_ ##symbol-hash)))
                                (_%make118151%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test118133%_ eq?)
                                             (eq? _%test118133%_ ##eq?))
                                         (eq? _%hash118135%_ immediate-hash))
                                    (_%make118151%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test118133%_ equal?)
                                                 (eq? _%test118133%_ ##equal?)
                                                 (eq? _%test118133%_ string=?)
                                                 (eq? _%test118133%_
                                                      ##string=?))
                                             (or (eq? _%hash118135%_
                                                      string-hash)
                                                 (eq? _%hash118135%_
                                                      ##string=?-hash)))
                                        (_%make118151%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test118133%_ equal?)
                                                 (not _%hash118135%_))
                                            (_%make118151%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test118133%_)
                                                (if (procedure? _%hash118135%_)
                                                    (_%make118151%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash118135%_
                                                     _%test118133%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash118135%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test118133%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords118340%_ . _%args118341%_)
        (apply make-hash-table__%
               _%@@keywords118340%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118340%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118340%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118340%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118340%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118340%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118340%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118340%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118340%_
                  'weak-values:
                  absent-value))
               _%args118341%_)))
    (define make-hash-table
      (lambda _%args118109118347%_
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
               _%args118109118347%_)))
    (define make-hash-table-eq
      (lambda _%args118098%_
        (apply make-hash-table 'test: eq? _%args118098%_)))
    (define make-hash-table-eqv
      (lambda _%args118096%_
        (apply make-hash-table 'test: eqv? _%args118096%_)))
    (define make-hash-table-symbolic
      (lambda _%args118094%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args118094%_)))
    (define make-hash-table-string
      (lambda _%args118092%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args118092%_)))
    (define make-hash-table-immediate
      (lambda _%args118090%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args118090%_)))
    (define list->hash-table
      (lambda (_%lst118087%_ . _%args118088%_)
        (list->hash-table!
         _%lst118087%_
         (apply make-hash-table
                'size:
                (length _%lst118087%_)
                _%args118088%_))))
    (define list->hash-table-eq
      (lambda (_%lst118084%_ . _%args118085%_)
        (list->hash-table!
         _%lst118084%_
         (apply make-hash-table-eq
                'size:
                (length _%lst118084%_)
                _%args118085%_))))
    (define list->hash-table-eqv
      (lambda (_%lst118081%_ . _%args118082%_)
        (list->hash-table!
         _%lst118081%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst118081%_)
                _%args118082%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst118078%_ . _%args118079%_)
        (list->hash-table!
         _%lst118078%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst118078%_)
                _%args118079%_))))
    (define list->hash-table-string
      (lambda (_%lst118075%_ . _%args118076%_)
        (list->hash-table!
         _%lst118075%_
         (apply make-hash-table-string
                'size:
                (length _%lst118075%_)
                _%args118076%_))))
    (define list->hash-table-immediate
      (lambda (_%lst118072%_ . _%args118073%_)
        (list->hash-table!
         _%lst118072%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst118072%_)
                _%args118073%_))))
    (define list->hash-table!
      (lambda (_%lst118039%_ _%h118040%_)
        (for-each
         (lambda (_%el118042%_)
           (let* ((_%el118043118050%_ _%el118042%_)
                  (_%E118045118054%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el118043118050%_
                              '([k . v])))
                     '#!void))
                  (_%K118046118060%_
                   (lambda (_%v118057%_ _%k118058%_)
                     (&HashTable-set! _%h118040%_ _%k118058%_ _%v118057%_))))
             (if (pair? _%el118043118050%_)
                 (let ((_%hd118047118063%_
                        (let ()
                          (declare (not safe))
                          (##car _%el118043118050%_)))
                       (_%tl118048118065%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el118043118050%_))))
                   (let* ((_%k118068%_ _%hd118047118063%_)
                          (_%v118070%_ _%tl118048118065%_))
                     (_%K118046118060%_ _%v118070%_ _%k118068%_)))
                 (_%E118045118054%_))))
         _%lst118039%_)
        _%h118040%_))
    (define plist->hash-table
      (lambda (_%lst118036%_ . _%args118037%_)
        (plist->hash-table!
         _%lst118036%_
         (apply make-hash-table
                'size:
                (length _%lst118036%_)
                _%args118037%_))))
    (define plist->hash-table-eq
      (lambda (_%lst118033%_ . _%args118034%_)
        (plist->hash-table!
         _%lst118033%_
         (apply make-hash-table-eq
                'size:
                (length _%lst118033%_)
                _%args118034%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst118030%_ . _%args118031%_)
        (plist->hash-table!
         _%lst118030%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst118030%_)
                _%args118031%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst118027%_ . _%args118028%_)
        (plist->hash-table!
         _%lst118027%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst118027%_)
                _%args118028%_))))
    (define plist->hash-table-string
      (lambda (_%lst118024%_ . _%args118025%_)
        (plist->hash-table!
         _%lst118024%_
         (apply make-hash-table-string
                'size:
                (length _%lst118024%_)
                _%args118025%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst118021%_ . _%args118022%_)
        (plist->hash-table!
         _%lst118021%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst118021%_)
                _%args118022%_))))
    (define plist->hash-table!
      (lambda (_%lst117961%_ _%h117962%_)
        (let _%loop117964%_ ((_%rest117966%_ _%lst117961%_))
          (let* ((_%rest117967117979%_ _%rest117966%_)
                 (_%else117970117987%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst117961%_)))))
            (let ((_%K117973118002%_
                   (lambda (_%rest117998%_ _%val117999%_ _%key118000%_)
                     (&HashTable-set! _%h117962%_ _%key118000%_ _%val117999%_)
                     (_%loop117964%_ _%rest117998%_)))
                  (_%K117972117992%_ (lambda () _%h117962%_)))
              (let ((_%try-match117969117995%_
                     (lambda ()
                       (if (null? _%rest117967117979%_)
                           (_%K117972117992%_)
                           (_%else117970117987%_)))))
                (if (pair? _%rest117967117979%_)
                    (let ((_%tl117975118007%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest117967117979%_)))
                          (_%hd117974118005%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest117967117979%_))))
                      (if (pair? _%tl117975118007%_)
                          (let ((_%tl117977118014%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl117975118007%_)))
                                (_%hd117976118012%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl117975118007%_))))
                            (let ((_%key118010%_ _%hd117974118005%_)
                                  (_%val118017%_ _%hd117976118012%_)
                                  (_%rest118019%_ _%tl117977118014%_))
                              (_%K117973118002%_
                               _%rest118019%_
                               _%val118017%_
                               _%key118010%_)))
                          (_%else117970117987%_)))
                    (_%try-match117969117995%_))))))))
    (define hash-length
      (lambda (_%h117943%_)
        (let* ((_%h117949%_
                (let ((_%$obj117946%_ _%h117943%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117946%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117946%_)))
                           '#t)
                      _%$obj117946%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117946%_)))))
               (_%h117951%_ _%h117949%_))
          (__hash-length _%h117951%_))))
    (define __hash-length
      (lambda (_%h117931%_)
        (let ((_%h117934%_ _%h117931%_)) (__HashTable-length _%h117934%_))))
    (define hash-ref__%
      (lambda (_%h117899%_ _%key117900%_ _%default117901%_)
        (let* ((_%h117907%_
                (let ((_%$obj117904%_ _%h117899%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117904%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117904%_)))
                           '#t)
                      _%$obj117904%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117904%_)))))
               (_%h117909%_ _%h117907%_))
          (__hash-ref__% _%h117909%_ _%key117900%_ _%default117901%_))))
    (define hash-ref__0
      (lambda (_%h117922%_ _%key117923%_)
        (let ((_%default117925%_ (macro-absent-obj)))
          (hash-ref__% _%h117922%_ _%key117923%_ _%default117925%_))))
    (define hash-ref
      (lambda _g121676_
        (let ((_g121677_ (let () (declare (not safe)) (##length _g121676_))))
          (cond ((let () (declare (not safe)) (##fx= _g121677_ 2))
                 (apply hash-ref__0 _g121676_))
                ((let () (declare (not safe)) (##fx= _g121677_ 3))
                 (apply hash-ref__% _g121676_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g121676_))))))
    (define __hash-ref__%
      (lambda (_%h117870%_ _%key117871%_ _%default117872%_)
        (let* ((_%h117875%_ _%h117870%_)
               (_%result117884%_
                (&HashTable-ref _%h117875%_ _%key117871%_ _%default117872%_)))
          (if (eq? _%result117884%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h117875%_
               'key:
               _%key117871%_)
              _%result117884%_))))
    (define __hash-ref__0
      (lambda (_%h117889%_ _%key117890%_)
        (let ((_%default117892%_ (macro-absent-obj)))
          (__hash-ref__% _%h117889%_ _%key117890%_ _%default117892%_))))
    (define __hash-ref
      (lambda _g121678_
        (let ((_g121679_ (let () (declare (not safe)) (##length _g121678_))))
          (cond ((let () (declare (not safe)) (##fx= _g121679_ 2))
                 (apply __hash-ref__0 _g121678_))
                ((let () (declare (not safe)) (##fx= _g121679_ 3))
                 (apply __hash-ref__% _g121678_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g121678_))))))
    (define hash-get
      (lambda (_%h117850%_ _%key117851%_)
        (let* ((_%h117857%_
                (let ((_%$obj117854%_ _%h117850%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117854%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117854%_)))
                           '#t)
                      _%$obj117854%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117854%_)))))
               (_%h117859%_ _%h117857%_))
          (__hash-get _%h117859%_ _%key117851%_))))
    (define __hash-get
      (lambda (_%h117837%_ _%key117838%_)
        (let ((_%h117841%_ _%h117837%_))
          (&HashTable-ref _%h117841%_ _%key117838%_ '#f))))
    (define hash-put!
      (lambda (_%h117817%_ _%key117818%_ _%value117819%_)
        (let* ((_%h117825%_
                (let ((_%$obj117822%_ _%h117817%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117822%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117822%_)))
                           '#t)
                      _%$obj117822%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117822%_)))))
               (_%h117827%_ _%h117825%_))
          (__hash-put! _%h117827%_ _%key117818%_ _%value117819%_))))
    (define __hash-put!
      (lambda (_%h117803%_ _%key117804%_ _%value117805%_)
        (let ((_%h117808%_ _%h117803%_))
          (&HashTable-set! _%h117808%_ _%key117804%_ _%value117805%_))))
    (define hash-update!__%
      (lambda (_%h117768%_ _%key117769%_ _%update117770%_ _%default117771%_)
        (let* ((_%h117777%_
                (let ((_%$obj117774%_ _%h117768%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117774%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117774%_)))
                           '#t)
                      _%$obj117774%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117774%_)))))
               (_%h117779%_ _%h117777%_))
          (__hash-update!__%
           _%h117779%_
           _%key117769%_
           _%update117770%_
           _%default117771%_))))
    (define hash-update!__0
      (lambda (_%h117792%_ _%key117793%_ _%update117794%_)
        (let ((_%default117796%_ '#!void))
          (hash-update!__%
           _%h117792%_
           _%key117793%_
           _%update117794%_
           _%default117796%_))))
    (define hash-update!
      (lambda _g121680_
        (let ((_g121681_ (let () (declare (not safe)) (##length _g121680_))))
          (cond ((let () (declare (not safe)) (##fx= _g121681_ 3))
                 (apply hash-update!__0 _g121680_))
                ((let () (declare (not safe)) (##fx= _g121681_ 4))
                 (apply hash-update!__% _g121680_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g121680_))))))
    (define __hash-update!__%
      (lambda (_%h117738%_ _%key117739%_ _%update117740%_ _%default117741%_)
        (let ((_%h117744%_ _%h117738%_))
          (HashTable-update!
           _%h117744%_
           _%key117739%_
           _%update117740%_
           _%default117741%_))))
    (define __hash-update!__0
      (lambda (_%h117756%_ _%key117757%_ _%update117758%_)
        (let ((_%default117760%_ '#!void))
          (__hash-update!__%
           _%h117756%_
           _%key117757%_
           _%update117758%_
           _%default117760%_))))
    (define __hash-update!
      (lambda _g121682_
        (let ((_g121683_ (let () (declare (not safe)) (##length _g121682_))))
          (cond ((let () (declare (not safe)) (##fx= _g121683_ 3))
                 (apply __hash-update!__0 _g121682_))
                ((let () (declare (not safe)) (##fx= _g121683_ 4))
                 (apply __hash-update!__% _g121682_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g121682_))))))
    (define hash-remove!
      (lambda (_%h117718%_ _%key117719%_)
        (let* ((_%h117725%_
                (let ((_%$obj117722%_ _%h117718%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117722%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117722%_)))
                           '#t)
                      _%$obj117722%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117722%_)))))
               (_%h117727%_ _%h117725%_))
          (__hash-remove! _%h117727%_ _%key117719%_))))
    (define __hash-remove!
      (lambda (_%h117705%_ _%key117706%_)
        (let ((_%h117709%_ _%h117705%_))
          (&HashTable-delete! _%h117709%_ _%key117706%_))))
    (define hash-key?
      (lambda (_%h117686%_ _%k117687%_)
        (let* ((_%h117693%_
                (let ((_%$obj117690%_ _%h117686%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117690%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117690%_)))
                           '#t)
                      _%$obj117690%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117690%_)))))
               (_%h117695%_ _%h117693%_))
          (__hash-key? _%h117695%_ _%k117687%_))))
    (define __hash-key?
      (lambda (_%h117673%_ _%k117674%_)
        (let ((_%h117677%_ _%h117673%_))
          (not (eq? (&HashTable-ref _%h117677%_ _%k117674%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h117655%_)
        (let* ((_%h117661%_
                (let ((_%$obj117658%_ _%h117655%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117658%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117658%_)))
                           '#t)
                      _%$obj117658%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117658%_)))))
               (_%h117663%_ _%h117661%_))
          (__hash->list _%h117663%_))))
    (define __hash->list
      (lambda (_%h117638%_)
        (let* ((_%h117641%_ _%h117638%_) (_%lst117650%_ '()))
          (&HashTable-for-each
           _%h117641%_
           (lambda (_%k117652%_ _%v117653%_)
             (set! _%lst117650%_
                   (cons (cons _%k117652%_ _%v117653%_) _%lst117650%_))))
          _%lst117650%_)))
    (define hash->plist
      (lambda (_%h117620%_)
        (let* ((_%h117626%_
                (let ((_%$obj117623%_ _%h117620%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117623%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117623%_)))
                           '#t)
                      _%$obj117623%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117623%_)))))
               (_%h117628%_ _%h117626%_))
          (__hash->plist _%h117628%_))))
    (define __hash->plist
      (lambda (_%h117603%_)
        (let* ((_%h117606%_ _%h117603%_) (_%lst117615%_ '()))
          (&HashTable-for-each
           _%h117606%_
           (lambda (_%k117617%_ _%v117618%_)
             (set! _%lst117615%_
                   (cons _%k117617%_ (cons _%v117618%_ _%lst117615%_)))))
          _%lst117615%_)))
    (define hash-for-each
      (lambda (_%proc117574%_ _%h117575%_)
        (if (procedure? _%proc117574%_)
            (let* ((_%proc117579%_ _%proc117574%_)
                   (_%h117591%_
                    (let ((_%$obj117588%_ _%h117575%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj117588%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj117588%_)))
                               '#t)
                          _%$obj117588%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj117588%_)))))
                   (_%h117593%_ _%h117591%_))
              (__hash-for-each _%proc117579%_ _%h117593%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc117574%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc117553%_ _%h117554%_)
        (let* ((_%proc117557%_ _%proc117553%_) (_%h117565%_ _%h117554%_))
          (&HashTable-for-each _%h117565%_ _%proc117557%_))))
    (define hash-map
      (lambda (_%proc117524%_ _%h117525%_)
        (if (procedure? _%proc117524%_)
            (let* ((_%proc117529%_ _%proc117524%_)
                   (_%h117541%_
                    (let ((_%$obj117538%_ _%h117525%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj117538%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj117538%_)))
                               '#t)
                          _%$obj117538%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj117538%_)))))
                   (_%h117543%_ _%h117541%_))
              (__hash-map _%proc117529%_ _%h117543%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc117524%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc117498%_ _%h117499%_)
        (let* ((_%proc117502%_ _%proc117498%_)
               (_%h117510%_ _%h117499%_)
               (_%result117519%_ '()))
          (&HashTable-for-each
           _%h117510%_
           (lambda (_%k117521%_ _%v117522%_)
             (set! _%result117519%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc117502%_ _%k117521%_ _%v117522%_))
                         _%result117519%_))))
          _%result117519%_)))
    (define hash-fold
      (lambda (_%proc117468%_ _%iv117469%_ _%h117470%_)
        (if (procedure? _%proc117468%_)
            (let* ((_%proc117474%_ _%proc117468%_)
                   (_%h117486%_
                    (let ((_%$obj117483%_ _%h117470%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj117483%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj117483%_)))
                               '#t)
                          _%$obj117483%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj117483%_)))))
                   (_%h117488%_ _%h117486%_))
              (__hash-fold _%proc117474%_ _%iv117469%_ _%h117488%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc117468%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc117441%_ _%iv117442%_ _%h117443%_)
        (let* ((_%proc117446%_ _%proc117441%_)
               (_%h117454%_ _%h117443%_)
               (_%result117463%_ _%iv117442%_))
          (&HashTable-for-each
           _%h117454%_
           (lambda (_%k117465%_ _%v117466%_)
             (set! _%result117463%_
                   (let ()
                     (declare (not safe))
                     (_%proc117446%_
                      _%k117465%_
                      _%v117466%_
                      _%result117463%_)))))
          _%result117463%_)))
    (define hash-find__%
      (lambda (_%proc117399%_ _%h117400%_ _%default-value117401%_)
        (if (procedure? _%proc117399%_)
            (let* ((_%proc117405%_ _%proc117399%_)
                   (_%h117417%_
                    (let ((_%$obj117414%_ _%h117400%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj117414%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj117414%_)))
                               '#t)
                          _%$obj117414%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj117414%_)))))
                   (_%h117419%_ _%h117417%_))
              (__hash-find__%
               _%proc117405%_
               _%h117419%_
               _%default-value117401%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc117399%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc117432%_ _%h117433%_)
        (let ((_%default-value117435%_ '#f))
          (hash-find__% _%proc117432%_ _%h117433%_ _%default-value117435%_))))
    (define hash-find
      (lambda _g121684_
        (let ((_g121685_ (let () (declare (not safe)) (##length _g121684_))))
          (cond ((let () (declare (not safe)) (##fx= _g121685_ 2))
                 (apply hash-find__0 _g121684_))
                ((let () (declare (not safe)) (##fx= _g121685_ 3))
                 (apply hash-find__% _g121684_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g121684_))))))
    (define __hash-find__%
      (lambda (_%proc117356%_ _%h117357%_ _%default-value117358%_)
        (let* ((_%proc117361%_ _%proc117356%_)
               (_%h117369%_ _%h117357%_)
               (__tmp121686
                (lambda (_%return117378%_)
                  (&HashTable-for-each
                   _%h117369%_
                   (lambda (_%k117380%_ _%v117381%_)
                     (let ((_%$e117383%_
                            (let ()
                              (declare (not safe))
                              (_%proc117361%_ _%k117380%_ _%v117381%_))))
                       (if _%$e117383%_
                           (_%return117378%_ _%$e117383%_)
                           '#!void))))
                  _%default-value117358%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp121686))))
    (define __hash-find__0
      (lambda (_%proc117389%_ _%h117390%_)
        (let ((_%default-value117392%_ '#f))
          (__hash-find__%
           _%proc117389%_
           _%h117390%_
           _%default-value117392%_))))
    (define __hash-find
      (lambda _g121687_
        (let ((_g121688_ (let () (declare (not safe)) (##length _g121687_))))
          (cond ((let () (declare (not safe)) (##fx= _g121688_ 2))
                 (apply __hash-find__0 _g121687_))
                ((let () (declare (not safe)) (##fx= _g121688_ 3))
                 (apply __hash-find__% _g121687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g121687_))))))
    (define hash-keys
      (lambda (_%h117337%_)
        (let* ((_%h117343%_
                (let ((_%$obj117340%_ _%h117337%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117340%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117340%_)))
                           '#t)
                      _%$obj117340%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117340%_)))))
               (_%h117345%_ _%h117343%_))
          (__hash-keys _%h117345%_))))
    (define __hash-keys
      (lambda (_%h117320%_)
        (let* ((_%h117323%_ _%h117320%_) (_%result117332%_ '()))
          (&HashTable-for-each
           _%h117323%_
           (lambda (_%k117334%_ _%v117335%_)
             (set! _%result117332%_ (cons _%k117334%_ _%result117332%_))))
          _%result117332%_)))
    (define hash-values
      (lambda (_%h117302%_)
        (let* ((_%h117308%_
                (let ((_%$obj117305%_ _%h117302%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117305%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117305%_)))
                           '#t)
                      _%$obj117305%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117305%_)))))
               (_%h117310%_ _%h117308%_))
          (__hash-values _%h117310%_))))
    (define __hash-values
      (lambda (_%h117285%_)
        (let* ((_%h117288%_ _%h117285%_) (_%result117297%_ '()))
          (&HashTable-for-each
           _%h117288%_
           (lambda (_%k117299%_ _%v117300%_)
             (set! _%result117297%_ (cons _%v117300%_ _%result117297%_))))
          _%result117297%_)))
    (define hash-copy
      (lambda (_%h117267%_)
        (let* ((_%h117273%_
                (let ((_%$obj117270%_ _%h117267%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117270%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117270%_)))
                           '#t)
                      _%$obj117270%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117270%_)))))
               (_%h117275%_ _%h117273%_))
          (__hash-copy _%h117275%_))))
    (define __hash-copy
      (lambda (_%h117255%_)
        (let ((_%h117258%_ _%h117255%_)) (__HashTable-copy _%h117258%_))))
    (define hash-clear!
      (lambda (_%h117237%_)
        (let* ((_%h117243%_
                (let ((_%$obj117240%_ _%h117237%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117240%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117240%_)))
                           '#t)
                      _%$obj117240%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117240%_)))))
               (_%h117245%_ _%h117243%_))
          (__hash-clear! _%h117245%_))))
    (define __hash-clear!
      (lambda (_%h117225%_)
        (let ((_%h117228%_ _%h117225%_)) (&HashTable-clear! _%h117228%_))))
    (define hash-merge
      (lambda (_%h117206%_ . _%rest117207%_)
        (let* ((_%h117213%_
                (let ((_%$obj117210%_ _%h117206%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117210%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117210%_)))
                           '#t)
                      _%$obj117210%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117210%_)))))
               (_%h117215%_ _%h117213%_))
          (declare (not safe))
          (##apply __hash-merge _%h117215%_ _%rest117207%_))))
    (define __hash-merge
      (lambda (_%h117191%_ . _%rest117192%_)
        (let* ((_%h117195%_ _%h117191%_)
               (_%copy117204%_ (__HashTable-copy _%h117195%_)))
          (apply hash-merge! _%copy117204%_ _%rest117192%_)
          _%copy117204%_)))
    (define hash-merge-right
      (lambda (_%h117172%_ . _%rest117173%_)
        (let* ((_%h117179%_
                (let ((_%$obj117176%_ _%h117172%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117176%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117176%_)))
                           '#t)
                      _%$obj117176%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117176%_)))))
               (_%h117181%_ _%h117179%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h117181%_ _%rest117173%_))))
    (define __hash-merge-right
      (lambda (_%h117157%_ . _%rest117158%_)
        (let* ((_%h117161%_ _%h117157%_)
               (_%copy117170%_ (__HashTable-copy _%h117161%_)))
          (apply hash-merge-right! _%copy117170%_ _%rest117158%_)
          _%copy117170%_)))
    (define hash-merge!
      (lambda (_%h117138%_ . _%rest117139%_)
        (let* ((_%h117145%_
                (let ((_%$obj117142%_ _%h117138%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117142%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117142%_)))
                           '#t)
                      _%$obj117142%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117142%_)))))
               (_%h117147%_ _%h117145%_))
          (declare (not safe))
          (##apply __hash-merge! _%h117147%_ _%rest117139%_))))
    (define __hash-merge!
      (lambda (_%h117101%_ . _%rest117102%_)
        (let ((_%h117105%_ _%h117101%_))
          (let ((__tmp121689
                 (lambda (_%hr117114%_)
                   (let* ((_%hr117120%_
                           (let ((_%$obj117117%_ _%hr117114%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj117117%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj117117%_)))
                                      '#t)
                                 _%$obj117117%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj117117%_)))))
                          (_%hr117122%_ _%hr117120%_))
                     (&HashTable-for-each
                      _%hr117122%_
                      (lambda (_%k117135%_ _%v117136%_)
                        (if (__hash-key? _%h117105%_ _%k117135%_)
                            '#!void
                            (&HashTable-set!
                             _%h117105%_
                             _%k117135%_
                             _%v117136%_))))))))
            (declare (not safe))
            (##for-each __tmp121689 _%rest117102%_))
          _%h117105%_)))
    (define hash-merge-right!
      (lambda (_%h117082%_ . _%rest117083%_)
        (let* ((_%h117089%_
                (let ((_%$obj117086%_ _%h117082%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117086%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117086%_)))
                           '#t)
                      _%$obj117086%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117086%_)))))
               (_%h117091%_ _%h117089%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h117091%_ _%rest117083%_))))
    (define __hash-merge-right!
      (lambda (_%h117045%_ . _%rest117046%_)
        (let ((_%h117049%_ _%h117045%_))
          (let ((__tmp121690
                 (lambda (_%hr117058%_)
                   (let* ((_%hr117064%_
                           (let ((_%$obj117061%_ _%hr117058%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj117061%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj117061%_)))
                                      '#t)
                                 _%$obj117061%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj117061%_)))))
                          (_%hr117066%_ _%hr117064%_))
                     (&HashTable-for-each
                      _%hr117066%_
                      (lambda (_%k117079%_ _%v117080%_)
                        (&HashTable-set!
                         _%h117049%_
                         _%k117079%_
                         _%v117080%_)))))))
            (declare (not safe))
            (##for-each __tmp121690 _%rest117046%_))
          _%h117049%_)))))
