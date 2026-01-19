(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1768863411)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp121565 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp121565
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args121477%_
        (apply make-instance UnboundKeyError::t _%$args121477%_)))
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
      (lambda (_%where121351%_ _%message121352%_ . _%irritants121353%_)
        (let ((__tmp121566
               (let ((__obj121557
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj121557
                    _%message121352%_
                    'where:
                    _%where121351%_
                    'irritants:
                    _%irritants121353%_))
                 __obj121557)))
          (declare (not safe))
          (raise __tmp121566))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp121567 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp121567
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj121559
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj121559
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj121559))
    (define make-HashTable
      (lambda (_%obj121349%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj121349%_))))
    (define try-HashTable
      (lambda (_%obj121347%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj121347%_))))
    (define HashTable?
      (lambda (_%obj121345%_)
        (let ((__tmp121568
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj121345%_ __tmp121568))))
    (define is-HashTable?
      (lambda (_%obj121343%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj121343%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self121327%_)
        (let* ((_%self121332%_
                (let ((_%$obj121329%_ _%self121327%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121329%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121329%_)))
                           '#t)
                      _%$obj121329%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121329%_)))))
               (_%self121334%_ _%self121332%_))
          (&HashTable-clear! _%self121334%_))))
    (define &HashTable-clear!
      (lambda (_%self121312%_)
        (let ((_%self121314%_ _%self121312%_))
          (declare (not safe))
          (let ((_%obj121324%_
                 (##unchecked-structure-ref _%self121314%_ '1 '#f 'clear!))
                (_%f121325%_
                 (##unchecked-structure-ref _%self121314%_ '2 '#f 'clear!)))
            (_%f121325%_ _%obj121324%_)))))
    (define HashTable-copy
      (lambda (_%self121296%_)
        (let* ((_%self121301%_
                (let ((_%$obj121298%_ _%self121296%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121298%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121298%_)))
                           '#t)
                      _%$obj121298%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121298%_)))))
               (_%self121303%_ _%self121301%_))
          (__HashTable-copy _%self121303%_))))
    (define __HashTable-copy
      (lambda (_%self121283%_)
        (let ((_%self121285%_ _%self121283%_))
          (if __DEBUG
              (let ((_%$obj121293%_ (&HashTable-copy _%self121285%_)))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj121293%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj121293%_)))
                         '#t)
                    _%$obj121293%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj121293%_))))
              (&HashTable-copy _%self121285%_)))))
    (define &HashTable-copy
      (lambda (_%self121268%_)
        (let ((_%self121270%_ _%self121268%_))
          (declare (not safe))
          (let ((_%obj121280%_
                 (##unchecked-structure-ref _%self121270%_ '1 '#f 'copy))
                (_%f121281%_
                 (##unchecked-structure-ref _%self121270%_ '3 '#f 'copy)))
            (_%f121281%_ _%obj121280%_)))))
    (define HashTable-delete!
      (lambda (_%self121251%_ _%key121252%_)
        (let* ((_%self121257%_
                (let ((_%$obj121254%_ _%self121251%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121254%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121254%_)))
                           '#t)
                      _%$obj121254%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121254%_)))))
               (_%self121259%_ _%self121257%_))
          (&HashTable-delete! _%self121259%_ _%key121252%_))))
    (define &HashTable-delete!
      (lambda (_%self121235%_ _%key121236%_)
        (let ((_%self121238%_ _%self121235%_))
          (declare (not safe))
          (let ((_%obj121248%_
                 (##unchecked-structure-ref _%self121238%_ '1 '#f 'delete!))
                (_%f121249%_
                 (##unchecked-structure-ref _%self121238%_ '4 '#f 'delete!)))
            (_%f121249%_ _%obj121248%_ _%key121236%_)))))
    (define HashTable-for-each
      (lambda (_%self121208%_ _%proc121209%_)
        (let* ((_%self121214%_
                (let ((_%$obj121211%_ _%self121208%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121211%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121211%_)))
                           '#t)
                      _%$obj121211%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121211%_)))))
               (_%self121216%_ _%self121214%_))
          (if (procedure? _%proc121209%_)
              (let ((_%proc121225%_ _%proc121209%_))
                (&HashTable-for-each _%self121216%_ _%proc121225%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc121209%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self121184%_ _%proc121185%_)
        (let* ((_%self121187%_ _%self121184%_) (_%proc121194%_ _%proc121185%_))
          (declare (not safe))
          (let ((_%obj121205%_
                 (##unchecked-structure-ref _%self121187%_ '1 '#f 'for-each))
                (_%f121206%_
                 (##unchecked-structure-ref _%self121187%_ '5 '#f 'for-each)))
            (_%f121206%_ _%obj121205%_ _%proc121194%_)))))
    (define HashTable-length
      (lambda (_%self121168%_)
        (let* ((_%self121173%_
                (let ((_%$obj121170%_ _%self121168%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121170%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121170%_)))
                           '#t)
                      _%$obj121170%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121170%_)))))
               (_%self121175%_ _%self121173%_))
          (__HashTable-length _%self121175%_))))
    (define __HashTable-length
      (lambda (_%self121155%_)
        (let ((_%self121157%_ _%self121155%_))
          (if __DEBUG
              (let ((_%val121165%_ (&HashTable-length _%self121157%_)))
                _%val121165%_)
              (&HashTable-length _%self121157%_)))))
    (define &HashTable-length
      (lambda (_%self121140%_)
        (let ((_%self121142%_ _%self121140%_))
          (declare (not safe))
          (let ((_%obj121152%_
                 (##unchecked-structure-ref _%self121142%_ '1 '#f 'length))
                (_%f121153%_
                 (##unchecked-structure-ref _%self121142%_ '6 '#f 'length)))
            (_%f121153%_ _%obj121152%_)))))
    (define HashTable-ref
      (lambda (_%self121122%_ _%key121123%_ _%default121124%_)
        (let* ((_%self121129%_
                (let ((_%$obj121126%_ _%self121122%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121126%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121126%_)))
                           '#t)
                      _%$obj121126%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121126%_)))))
               (_%self121131%_ _%self121129%_))
          (&HashTable-ref _%self121131%_ _%key121123%_ _%default121124%_))))
    (define &HashTable-ref
      (lambda (_%self121105%_ _%key121106%_ _%default121107%_)
        (let ((_%self121109%_ _%self121105%_))
          (declare (not safe))
          (let ((_%obj121119%_
                 (##unchecked-structure-ref _%self121109%_ '1 '#f 'ref))
                (_%f121120%_
                 (##unchecked-structure-ref _%self121109%_ '7 '#f 'ref)))
            (_%f121120%_ _%obj121119%_ _%key121106%_ _%default121107%_)))))
    (define HashTable-set!
      (lambda (_%self121087%_ _%key121088%_ _%value121089%_)
        (let* ((_%self121094%_
                (let ((_%$obj121091%_ _%self121087%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121091%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121091%_)))
                           '#t)
                      _%$obj121091%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121091%_)))))
               (_%self121096%_ _%self121094%_))
          (&HashTable-set! _%self121096%_ _%key121088%_ _%value121089%_))))
    (define &HashTable-set!
      (lambda (_%self121070%_ _%key121071%_ _%value121072%_)
        (let ((_%self121074%_ _%self121070%_))
          (declare (not safe))
          (let ((_%obj121084%_
                 (##unchecked-structure-ref _%self121074%_ '1 '#f 'set!))
                (_%f121085%_
                 (##unchecked-structure-ref _%self121074%_ '8 '#f 'set!)))
            (_%f121085%_ _%obj121084%_ _%key121071%_ _%value121072%_)))))
    (define HashTable-update!
      (lambda (_%self121041%_ _%key121042%_ _%proc121043%_ _%default121044%_)
        (let* ((_%self121049%_
                (let ((_%$obj121046%_ _%self121041%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121046%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121046%_)))
                           '#t)
                      _%$obj121046%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121046%_)))))
               (_%self121051%_ _%self121049%_))
          (if (procedure? _%proc121043%_)
              (let ((_%proc121060%_ _%proc121043%_))
                (&HashTable-update!
                 _%self121051%_
                 _%key121042%_
                 _%proc121060%_
                 _%default121044%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc121043%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self121013%_ _%key121014%_ _%proc121015%_ _%default121016%_)
        (let* ((_%self121018%_ _%self121013%_) (_%proc121025%_ _%proc121015%_))
          (declare (not safe))
          (let ((_%obj121036%_
                 (##unchecked-structure-ref _%self121018%_ '1 '#f 'update!))
                (_%f121038%_
                 (##unchecked-structure-ref _%self121018%_ '9 '#f 'update!)))
            (_%f121038%_
             _%obj121036%_
             _%key121014%_
             _%proc121025%_
             _%default121016%_)))))
    (define Locker::t
      (let ((__tmp121569 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp121569
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj121561
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj121561
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj121561))
    (define make-Locker
      (lambda (_%obj121011%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj121011%_))))
    (define try-Locker
      (lambda (_%obj121009%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj121009%_))))
    (define Locker?
      (lambda (_%obj121007%_)
        (let ((__tmp121570
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj121007%_ __tmp121570))))
    (define is-Locker?
      (lambda (_%obj121005%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj121005%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self120989%_)
        (let* ((_%self120994%_
                (let ((_%$obj120991%_ _%self120989%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj120991%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj120991%_)))
                           '#t)
                      _%$obj120991%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj120991%_)))))
               (_%self120996%_ _%self120994%_))
          (&Locker-read-lock! _%self120996%_))))
    (define &Locker-read-lock!
      (lambda (_%self120974%_)
        (let ((_%self120976%_ _%self120974%_))
          (declare (not safe))
          (let ((_%obj120986%_
                 (##unchecked-structure-ref _%self120976%_ '1 '#f 'read-lock!))
                (_%f120987%_
                 (##unchecked-structure-ref
                  _%self120976%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f120987%_ _%obj120986%_)))))
    (define Locker-read-unlock!
      (lambda (_%self120958%_)
        (let* ((_%self120963%_
                (let ((_%$obj120960%_ _%self120958%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj120960%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj120960%_)))
                           '#t)
                      _%$obj120960%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj120960%_)))))
               (_%self120965%_ _%self120963%_))
          (&Locker-read-unlock! _%self120965%_))))
    (define &Locker-read-unlock!
      (lambda (_%self120943%_)
        (let ((_%self120945%_ _%self120943%_))
          (declare (not safe))
          (let ((_%obj120955%_
                 (##unchecked-structure-ref
                  _%self120945%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f120956%_
                 (##unchecked-structure-ref
                  _%self120945%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f120956%_ _%obj120955%_)))))
    (define Locker-write-lock!
      (lambda (_%self120927%_)
        (let* ((_%self120932%_
                (let ((_%$obj120929%_ _%self120927%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj120929%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj120929%_)))
                           '#t)
                      _%$obj120929%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj120929%_)))))
               (_%self120934%_ _%self120932%_))
          (&Locker-write-lock! _%self120934%_))))
    (define &Locker-write-lock!
      (lambda (_%self120912%_)
        (let ((_%self120914%_ _%self120912%_))
          (declare (not safe))
          (let ((_%obj120924%_
                 (##unchecked-structure-ref
                  _%self120914%_
                  '1
                  '#f
                  'write-lock!))
                (_%f120925%_
                 (##unchecked-structure-ref
                  _%self120914%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f120925%_ _%obj120924%_)))))
    (define Locker-write-unlock!
      (lambda (_%self120896%_)
        (let* ((_%self120901%_
                (let ((_%$obj120898%_ _%self120896%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj120898%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj120898%_)))
                           '#t)
                      _%$obj120898%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj120898%_)))))
               (_%self120903%_ _%self120901%_))
          (&Locker-write-unlock! _%self120903%_))))
    (define &Locker-write-unlock!
      (lambda (_%self120879%_)
        (let ((_%self120881%_ _%self120879%_))
          (declare (not safe))
          (let ((_%obj120891%_
                 (##unchecked-structure-ref
                  _%self120881%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f120893%_
                 (##unchecked-structure-ref
                  _%self120881%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f120893%_ _%obj120891%_)))))
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
      (lambda (_%table120872%_
               _%key120873%_
               _%update120874%_
               _%default120875%_)
        (let ((_%result120877%_
               (table-ref _%table120872%_ _%key120873%_ _%default120875%_)))
          (table-set!
           _%table120872%_
           _%key120873%_
           (_%update120874%_ _%default120875%_)))))
    (define gambit-table-for-each
      (lambda (_%table120869%_ _%proc120870%_)
        (table-for-each _%proc120870%_ _%table120869%_)))
    (define gambit-table-clear!
      (lambda (_%table120867%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table120867%_ '0 '5 '#f '#f))))
    (let ((__tmp121571 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121571 'HashTable::ref table-ref))
    (let ((__tmp121572 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121572 'HashTable::set! table-set!))
    (let ((__tmp121573 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121573 'HashTable::update! gambit-table-update!))
    (let ((__tmp121574 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121574 'HashTable::delete! table-set!))
    (let ((__tmp121575 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121575 'HashTable::for-each gambit-table-for-each))
    (let ((__tmp121576 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121576 'HashTable::length table-length))
    (let ((__tmp121577 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121577 'HashTable::copy table-copy))
    (let ((__tmp121578 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp121578 'HashTable::clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots120849%_ '(table count free hash test seed))
             (_%slot-vector120851%_ (list->vector (cons '#f _%slots120849%_)))
             (_%slot-table120858%_
              (let ((_%slot-table120853%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp121581
                       (lambda (_%slot120855%_ _%field120856%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table120853%_
                            _%slot120855%_
                            _%field120856%_))
                         (let ((__tmp121582
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot120855%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table120853%_
                            __tmp121582
                            _%field120856%_))))
                      (__tmp121579
                       (let ((__tmp121580
                              (let ()
                                (declare (not safe))
                                (##length _%slots120849%_))))
                         (declare (not safe))
                         (##iota __tmp121580 '1))))
                  (declare (not safe))
                  (##for-each __tmp121581 _%slots120849%_ __tmp121579))
                _%slot-table120853%_))
             (_%flags120860%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields120862%_ '#())
             (_%properties120864%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots120849%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp121583 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags120860%_
         __table::t
         _%fields120862%_
         __tmp121583
         _%slot-vector120851%_
         _%slot-table120858%_
         _%properties120864%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots120831%_ '(gcht immediate))
             (_%slot-vector120833%_ (list->vector (cons '#f _%slots120831%_)))
             (_%slot-table120840%_
              (let ((_%slot-table120835%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp121586
                       (lambda (_%slot120837%_ _%field120838%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table120835%_
                            _%slot120837%_
                            _%field120838%_))
                         (let ((__tmp121587
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot120837%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table120835%_
                            __tmp121587
                            _%field120838%_))))
                      (__tmp121584
                       (let ((__tmp121585
                              (let ()
                                (declare (not safe))
                                (##length _%slots120831%_))))
                         (declare (not safe))
                         (##iota __tmp121585 '1))))
                  (declare (not safe))
                  (##for-each __tmp121586 _%slots120831%_ __tmp121584))
                _%slot-table120835%_))
             (_%flags120842%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields120844%_ '#())
             (_%properties120846%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots120831%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp121588 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags120842%_
         __gc-table::t
         _%fields120844%_
         __tmp121588
         _%slot-vector120833%_
         _%slot-table120840%_
         _%properties120846%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp121590 (list))
            (__tmp121589
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp121590
         '(table lock)
         __tmp121589
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args120828%_
        (apply make-instance locked-hash-table::t _%$args120828%_)))
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
      (let ((__tmp121592 (list))
            (__tmp121591
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp121592
         '(table key-check)
         __tmp121591
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args120825%_
        (apply make-instance checked-hash-table::t _%$args120825%_)))
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
      (let ((__tmp121594 (list hash-table::t))
            (__tmp121593 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp121594
         '()
         __tmp121593
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args120822%_
        (apply make-instance eq-hash-table::t _%$args120822%_)))
    (define eqv-hash-table::t
      (let ((__tmp121596 (list hash-table::t))
            (__tmp121595 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp121596
         '()
         __tmp121595
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args120819%_
        (apply make-instance eqv-hash-table::t _%$args120819%_)))
    (define symbol-hash-table::t
      (let ((__tmp121598 (list hash-table::t))
            (__tmp121597 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp121598
         '()
         __tmp121597
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args120816%_
        (apply make-instance symbol-hash-table::t _%$args120816%_)))
    (define string-hash-table::t
      (let ((__tmp121600 (list hash-table::t))
            (__tmp121599 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp121600
         '()
         __tmp121599
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args120813%_
        (apply make-instance string-hash-table::t _%$args120813%_)))
    (define immediate-hash-table::t
      (let ((__tmp121602 (list hash-table::t))
            (__tmp121601 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp121602
         '()
         __tmp121601
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args120810%_
        (apply make-instance immediate-hash-table::t _%$args120810%_)))
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
    (define _%locked-hash-table::HashTable::ref116605%_
      (lambda (_%self120770%_ _%key120772%_ _%default120773%_)
        (let* ((_%self120776%_ _%self120770%_)
               (_%key120785%_ _%key120772%_)
               (_%default120793%_ _%default120773%_))
          (let ((_%h120802%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120776%_ '1 '#f '#f)))
                (_%l120804%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120776%_ '2 '#f '#f))))
            (let ((__tmp121605 (lambda () (&Locker-read-lock! _%l120804%_)))
                  (__tmp121604
                   (lambda ()
                     (&HashTable-ref
                      _%h120802%_
                      _%key120785%_
                      _%default120793%_)))
                  (__tmp121603 (lambda () (&Locker-read-unlock! _%l120804%_))))
              (declare (not safe))
              (##dynamic-wind __tmp121605 __tmp121604 __tmp121603))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref116605%_
       '#f))
    (define _%locked-hash-table::HashTable::set!116607%_
      (lambda (_%self120607%_ _%key120609%_ _%value120610%_)
        (let* ((_%self120613%_ _%self120607%_)
               (_%key120622%_ _%key120609%_)
               (_%value120630%_ _%value120610%_))
          (let ((_%h120639%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120613%_ '1 '#f '#f)))
                (_%l120641%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120613%_ '2 '#f '#f))))
            (let ((__tmp121608 (lambda () (&Locker-write-lock! _%l120641%_)))
                  (__tmp121607
                   (lambda ()
                     (&HashTable-set!
                      _%h120639%_
                      _%key120622%_
                      _%value120630%_)))
                  (__tmp121606
                   (lambda () (&Locker-write-unlock! _%l120641%_))))
              (declare (not safe))
              (##dynamic-wind __tmp121608 __tmp121607 __tmp121606))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!116607%_
       '#f))
    (define _%locked-hash-table::HashTable::update!116609%_
      (lambda (_%self120435%_ _%key120437%_ _%update120438%_ _%default120439%_)
        (let* ((_%self120442%_ _%self120435%_)
               (_%key120451%_ _%key120437%_)
               (_%update120459%_ _%update120438%_)
               (_%default120467%_ _%default120439%_))
          (let ((_%h120476%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120442%_ '1 '#f '#f)))
                (_%l120478%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120442%_ '2 '#f '#f))))
            (let ((__tmp121611 (lambda () (&Locker-write-lock! _%l120478%_)))
                  (__tmp121610
                   (lambda ()
                     (&HashTable-update!
                      _%h120476%_
                      _%key120451%_
                      _%update120459%_
                      _%default120467%_)))
                  (__tmp121609
                   (lambda () (&Locker-write-unlock! _%l120478%_))))
              (declare (not safe))
              (##dynamic-wind __tmp121611 __tmp121610 __tmp121609))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!116609%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!116611%_
      (lambda (_%self120281%_ _%key120283%_)
        (let* ((_%self120286%_ _%self120281%_) (_%key120295%_ _%key120283%_))
          (let ((_%h120304%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120286%_ '1 '#f '#f)))
                (_%l120306%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120286%_ '2 '#f '#f))))
            (let ((__tmp121614 (lambda () (&Locker-write-lock! _%l120306%_)))
                  (__tmp121613
                   (lambda () (&HashTable-delete! _%h120304%_ _%key120295%_)))
                  (__tmp121612
                   (lambda () (&Locker-write-unlock! _%l120306%_))))
              (declare (not safe))
              (##dynamic-wind __tmp121614 __tmp121613 __tmp121612))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!116611%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each116613%_
      (lambda (_%self120127%_ _%proc120129%_)
        (let* ((_%self120132%_ _%self120127%_) (_%proc120141%_ _%proc120129%_))
          (let ((_%h120150%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120132%_ '1 '#f '#f)))
                (_%l120152%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120132%_ '2 '#f '#f))))
            (let ((__tmp121617 (lambda () (&Locker-read-lock! _%l120152%_)))
                  (__tmp121616
                   (lambda ()
                     (&HashTable-for-each _%h120150%_ _%proc120141%_)))
                  (__tmp121615 (lambda () (&Locker-read-unlock! _%l120152%_))))
              (declare (not safe))
              (##dynamic-wind __tmp121617 __tmp121616 __tmp121615))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each116613%_
       '#f))
    (define _%locked-hash-table::HashTable::length116615%_
      (lambda (_%self119975%_)
        (let ((_%self119979%_ _%self119975%_))
          (let ((_%h119989%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self119979%_ '1 '#f '#f)))
                (_%l119991%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self119979%_ '2 '#f '#f))))
            ((lambda (_%g119993119995%_)
               (let ((_%val119998%_ _%g119993119995%_))
                 (if (fixnum? _%val119998%_)
                     _%val119998%_
                     (let ()
                       (declare (not safe))
                       (error '"bad cast" fixnum::t _%val119998%_)))))
             (let ((__tmp121620 (lambda () (&Locker-read-lock! _%l119991%_)))
                   (__tmp121619 (lambda () (&HashTable-length _%h119989%_)))
                   (__tmp121618
                    (lambda () (&Locker-read-unlock! _%l119991%_))))
               (declare (not safe))
               (##dynamic-wind __tmp121620 __tmp121619 __tmp121618)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length116615%_
       '#f))
    (define _%locked-hash-table::HashTable::copy116617%_
      (lambda (_%self119827%_)
        (let ((_%self119831%_ _%self119827%_))
          (let ((_%h119841%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self119831%_ '1 '#f '#f)))
                (_%l119843%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self119831%_ '2 '#f '#f))))
            (let ((_%$obj119849%_
                   (let ((__tmp121623
                          (lambda () (&Locker-read-lock! _%l119843%_)))
                         (__tmp121622
                          (lambda () (&HashTable-copy _%h119841%_)))
                         (__tmp121621
                          (lambda () (&Locker-read-unlock! _%l119843%_))))
                     (declare (not safe))
                     (##dynamic-wind __tmp121623 __tmp121622 __tmp121621))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj119849%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj119849%_)))
                       '#t)
                  _%$obj119849%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj119849%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy116617%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!116619%_
      (lambda (_%self119682%_)
        (let ((_%self119686%_ _%self119682%_))
          (let ((_%h119696%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self119686%_ '1 '#f '#f)))
                (_%l119698%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self119686%_ '2 '#f '#f))))
            (let ((__tmp121626 (lambda () (&Locker-write-lock! _%l119698%_)))
                  (__tmp121625 (lambda () (&HashTable-clear! _%h119696%_)))
                  (__tmp121624
                   (lambda () (&Locker-write-unlock! _%l119698%_))))
              (declare (not safe))
              (##dynamic-wind __tmp121626 __tmp121625 __tmp121624))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!116619%_
       '#f))
    (let ((__tmp121627 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp121627 'Locker::read-lock! mutex-lock!))
    (let ((__tmp121628 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp121628 'Locker::read-unlock! mutex-unlock!))
    (let ((__tmp121629 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp121629 'Locker::write-lock! mutex-lock!))
    (let ((__tmp121630 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp121630 'Locker::write-unlock! mutex-unlock!))
    (define _%checked-hash-table::HashTable::ref116832%_
      (lambda (_%self119517%_ _%key119518%_ _%default119519%_)
        (let* ((_%self119522%_ _%self119517%_)
               (_%key119531%_ _%key119518%_)
               (_%default119539%_ _%default119519%_))
          (declare (not safe))
          (let ((_%h119550%_
                 (##unchecked-structure-ref _%self119522%_ '1 '#f '#f))
                (_%key?119552%_
                 (##unchecked-structure-ref _%self119522%_ '2 '#f '#f)))
            (if ((lambda (_%key?119555%_ _%key119556%_ _%default119557%_)
                   (_%key?119555%_ _%key119556%_))
                 _%key?119552%_
                 _%key119531%_
                 _%default119539%_)
                (&HashTable-ref _%h119550%_ _%key119531%_ _%default119539%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key119531%_ (cons _%default119539%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref116832%_
       '#f))
    (define _%checked-hash-table::HashTable::set!116834%_
      (lambda (_%self119352%_ _%key119353%_ _%value119354%_)
        (let* ((_%self119357%_ _%self119352%_)
               (_%key119366%_ _%key119353%_)
               (_%value119374%_ _%value119354%_))
          (declare (not safe))
          (let ((_%h119385%_
                 (##unchecked-structure-ref _%self119357%_ '1 '#f '#f))
                (_%key?119387%_
                 (##unchecked-structure-ref _%self119357%_ '2 '#f '#f)))
            (if ((lambda (_%key?119390%_ _%key119391%_ _%value119392%_)
                   (_%key?119390%_ _%key119391%_))
                 _%key?119387%_
                 _%key119366%_
                 _%value119374%_)
                (&HashTable-set! _%h119385%_ _%key119366%_ _%value119374%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key119366%_ (cons _%value119374%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!116834%_
       '#f))
    (define _%checked-hash-table::HashTable::update!116836%_
      (lambda (_%self119177%_ _%key119178%_ _%update119179%_ _%default119180%_)
        (let* ((_%self119183%_ _%self119177%_)
               (_%key119192%_ _%key119178%_)
               (_%update119200%_ _%update119179%_)
               (_%default119208%_ _%default119180%_))
          (declare (not safe))
          (let ((_%h119219%_
                 (##unchecked-structure-ref _%self119183%_ '1 '#f '#f))
                (_%key?119221%_
                 (##unchecked-structure-ref _%self119183%_ '2 '#f '#f)))
            (if ((lambda (_%key?119224%_
                          _%key119225%_
                          _%update119226%_
                          _%default119227%_)
                   (_%key?119224%_ _%key119225%_))
                 _%key?119221%_
                 _%key119192%_
                 _%update119200%_
                 _%default119208%_)
                (&HashTable-update!
                 _%h119219%_
                 _%key119192%_
                 _%update119200%_
                 _%default119208%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key119192%_
                         (cons _%update119200%_ (cons _%default119208%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!116836%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!116838%_
      (lambda (_%self119022%_ _%key119023%_)
        (let* ((_%self119026%_ _%self119022%_) (_%key119035%_ _%key119023%_))
          (declare (not safe))
          (let ((_%h119046%_
                 (##unchecked-structure-ref _%self119026%_ '1 '#f '#f))
                (_%key?119048%_
                 (##unchecked-structure-ref _%self119026%_ '2 '#f '#f)))
            (if ((lambda (_%key?119051%_ _%key119052%_)
                   (_%key?119051%_ _%key119052%_))
                 _%key?119048%_
                 _%key119035%_)
                (&HashTable-delete! _%h119046%_ _%key119035%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key119035%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!116838%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each116840%_
      (lambda (_%self118867%_ _%proc118868%_)
        (let* ((_%self118871%_ _%self118867%_) (_%proc118880%_ _%proc118868%_))
          (declare (not safe))
          (let ((_%h118891%_
                 (##unchecked-structure-ref _%self118871%_ '1 '#f '#f))
                (_%key?118893%_
                 (##unchecked-structure-ref _%self118871%_ '2 '#f '#f)))
            (if ((lambda (_%key?118896%_ _%proc118897%_) '#t)
                 _%key?118893%_
                 _%proc118880%_)
                (&HashTable-for-each _%h118891%_ _%proc118880%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc118880%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each116840%_
       '#f))
    (define _%checked-hash-table::HashTable::length116842%_
      (lambda (_%self118724%_)
        (let ((_%self118727%_ _%self118724%_))
          (declare (not safe))
          (let ((_%h118739%_
                 (##unchecked-structure-ref _%self118727%_ '1 '#f '#f))
                (_%key?118741%_
                 (##unchecked-structure-ref _%self118727%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h118739%_)
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
       _%checked-hash-table::HashTable::length116842%_
       '#f))
    (define _%checked-hash-table::HashTable::copy116844%_
      (lambda (_%self118581%_)
        (let ((_%self118584%_ _%self118581%_))
          (declare (not safe))
          (let ((_%h118596%_
                 (##unchecked-structure-ref _%self118584%_ '1 '#f '#f))
                (_%key?118598%_
                 (##unchecked-structure-ref _%self118584%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h118596%_)
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
       _%checked-hash-table::HashTable::copy116844%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!116846%_
      (lambda (_%self118438%_)
        (let ((_%self118441%_ _%self118438%_))
          (declare (not safe))
          (let ((_%h118453%_
                 (##unchecked-structure-ref _%self118441%_ '1 '#f '#f))
                (_%key?118455%_
                 (##unchecked-structure-ref _%self118441%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h118453%_)
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
       _%checked-hash-table::HashTable::clear!116846%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table118308%_
               _%count118309%_
               _%free118310%_
               _%hash118311%_
               _%test118312%_
               _%seed118313%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table118308%_
           _%count118309%_
           _%free118310%_
           _%hash118311%_
           _%test118312%_
           _%seed118313%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords118069%_
               _%size-hint118059118070%_
               _%seed118060118072%_
               _%test118061118074%_
               _%hash118062118076%_
               _%lock118063118078%_
               _%check118064118080%_
               _%weak-keys118065118082%_
               _%weak-values118066118084%_)
        (let* ((_%size-hint118087%_
                (if (eq? _%size-hint118059118070%_ absent-value)
                    '#f
                    _%size-hint118059118070%_))
               (_%seed118089%_
                (if (eq? _%seed118060118072%_ absent-value)
                    '#f
                    _%seed118060118072%_))
               (_%test118091%_
                (if (eq? _%test118061118074%_ absent-value)
                    equal?
                    _%test118061118074%_))
               (_%hash118093%_
                (if (eq? _%hash118062118076%_ absent-value)
                    '#f
                    _%hash118062118076%_))
               (_%lock118095%_
                (if (eq? _%lock118063118078%_ absent-value)
                    '#f
                    _%lock118063118078%_))
               (_%check118097%_
                (if (eq? _%check118064118080%_ absent-value)
                    '#f
                    _%check118064118080%_))
               (_%weak-keys118099%_
                (if (eq? _%weak-keys118065118082%_ absent-value)
                    '#f
                    _%weak-keys118065118082%_))
               (_%weak-values118101%_
                (if (eq? _%weak-values118066118084%_ absent-value)
                    '#f
                    _%weak-values118066118084%_)))
          (letrec ((_%table-seed118104%_
                    (lambda ()
                      (if (fixnum? _%seed118089%_)
                          _%seed118089%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock118105%_
                    (lambda (_%ht118282%_)
                      (let ((_%ht118285%_ _%ht118282%_))
                        (_%__wrap-lock118106%_ _%ht118285%_))))
                   (_%__wrap-lock118106%_
                    (lambda (_%ht118264%_)
                      (let ((_%ht118267%_ _%ht118264%_))
                        (if _%lock118095%_
                            (let ((_%$obj118279%_
                                   (let ((__tmp121631
                                          (let ((_%$obj118276%_
                                                 _%lock118095%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj118276%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj118276%_)))
                                                     '#t)
                                                _%$obj118276%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj118276%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht118267%_
                                      __tmp121631))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj118279%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj118279%_)))
                                       '#t)
                                  _%$obj118279%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj118279%_))))
                            _%ht118267%_))))
                   (_%wrap-checked118107%_
                    (lambda (_%ht118251%_ _%implicit118252%_)
                      (let ((_%ht118255%_ _%ht118251%_))
                        (_%__wrap-checked118108%_
                         _%ht118255%_
                         _%implicit118252%_))))
                   (_%__wrap-checked118108%_
                    (lambda (_%ht118224%_ _%implicit118225%_)
                      (let ((_%ht118228%_ _%ht118224%_))
                        (if _%check118097%_
                            (let ((_%$obj118248%_
                                   (let ((__tmp121632
                                          (if (procedure? _%check118097%_)
                                              _%check118097%_
                                              _%implicit118225%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht118228%_
                                      __tmp121632))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj118248%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj118248%_)))
                                       '#t)
                                  _%$obj118248%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj118248%_))))
                            _%ht118228%_))))
                   (_%make118109%_
                    (lambda (_%kons118208%_
                             _%key?118209%_
                             _%hash118210%_
                             _%test118211%_)
                      (let* ((_%size118214%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint118087%_)))
                             (_%table118216%_
                              (let ((__tmp121633 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size118214%_ __tmp121633)))
                             (_%ht118221%_
                              (let ((_%$obj118218%_
                                     (_%kons118208%_
                                      _%table118216%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size118214%_ '2))
                                      _%hash118210%_
                                      _%test118211%_
                                      (_%table-seed118104%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj118218%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj118218%_)))
                                         '#t)
                                    _%$obj118218%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj118218%_))))))
                        (_%__wrap-checked118108%_
                         (_%__wrap-lock118106%_ _%ht118221%_)
                         _%key?118209%_))))
                   (_%make-gc-hash-table118110%_
                    (lambda ()
                      (let ((_%ht118206%_
                             (let ((_%$obj118203%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint118087%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj118203%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj118203%_)))
                                        '#t)
                                   _%$obj118203%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj118203%_))))))
                        (_%__wrap-checked118108%_
                         (_%__wrap-lock118106%_ _%ht118206%_)
                         true))))
                   (_%make-gambit-table118111%_
                    (lambda ()
                      (let* ((_%size118180%_
                              (let ((_%$e118177%_ _%size-hint118087%_))
                                (if _%$e118177%_
                                    _%$e118177%_
                                    (macro-absent-obj))))
                             (_%test118185%_
                              (let ((_%$e118182%_ _%test118091%_))
                                (if _%$e118182%_ _%$e118182%_ equal?)))
                             (_%hash118193%_
                              (let ((_%$e118187%_ _%hash118093%_))
                                (if _%$e118187%_
                                    _%$e118187%_
                                    (if (eq? _%test118185%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test118185%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht118198%_
                              (let ((_%$obj118195%_
                                     (make-table
                                      'size:
                                      _%size118180%_
                                      'test:
                                      _%test118185%_
                                      'hash:
                                      _%hash118193%_
                                      'weak-keys:
                                      _%weak-keys118099%_
                                      'weak-values:
                                      _%weak-values118101%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj118195%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj118195%_)))
                                         '#t)
                                    _%$obj118195%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj118195%_))))))
                        (_%__wrap-checked118108%_
                         (_%__wrap-lock118106%_ _%ht118198%_)
                         true)))))
            (if (or _%weak-keys118099%_ _%weak-values118101%_)
                (_%make-gambit-table118111%_)
                (if (and (or (eq? _%test118091%_ eq?)
                             (eq? _%test118091%_ ##eq?))
                         (or (not _%hash118093%_)
                             (eq? _%hash118093%_ eq?-hash)
                             (eq? _%hash118093%_ eq-hash))
                         (not _%seed118089%_))
                    (_%make-gc-hash-table118110%_)
                    (if (and (or (eq? _%test118091%_ eq?)
                                 (eq? _%test118091%_ ##eq?))
                             (or (not _%hash118093%_)
                                 (eq? _%hash118093%_ eq?-hash)
                                 (eq? _%hash118093%_ eq-hash)))
                        (_%make118109%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test118091%_ eqv?)
                                     (eq? _%test118091%_ ##eqv?))
                                 (or (not _%hash118093%_)
                                     (eq? _%hash118093%_ eqv?-hash)
                                     (eq? _%hash118093%_ eqv-hash)))
                            (_%make118109%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test118091%_ eq?)
                                         (eq? _%test118091%_ ##eq?))
                                     (or (eq? _%hash118093%_ symbolic-hash)
                                         (eq? _%hash118093%_ ##symbol-hash)))
                                (_%make118109%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test118091%_ eq?)
                                             (eq? _%test118091%_ ##eq?))
                                         (eq? _%hash118093%_ immediate-hash))
                                    (_%make118109%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test118091%_ equal?)
                                                 (eq? _%test118091%_ ##equal?)
                                                 (eq? _%test118091%_ string=?)
                                                 (eq? _%test118091%_
                                                      ##string=?))
                                             (or (eq? _%hash118093%_
                                                      string-hash)
                                                 (eq? _%hash118093%_
                                                      ##string=?-hash)))
                                        (_%make118109%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test118091%_ equal?)
                                                 (not _%hash118093%_))
                                            (_%make118109%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test118091%_)
                                                (if (procedure? _%hash118093%_)
                                                    (_%make118109%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash118093%_
                                                     _%test118091%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash118093%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test118091%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords118298%_ . _%args118299%_)
        (apply make-hash-table__%
               _%@@keywords118298%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118298%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118298%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118298%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118298%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118298%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118298%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118298%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118298%_
                  'weak-values:
                  absent-value))
               _%args118299%_)))
    (define make-hash-table
      (lambda _%args118067118305%_
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
               _%args118067118305%_)))
    (define make-hash-table-eq
      (lambda _%args118056%_
        (apply make-hash-table 'test: eq? _%args118056%_)))
    (define make-hash-table-eqv
      (lambda _%args118054%_
        (apply make-hash-table 'test: eqv? _%args118054%_)))
    (define make-hash-table-symbolic
      (lambda _%args118052%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args118052%_)))
    (define make-hash-table-string
      (lambda _%args118050%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args118050%_)))
    (define make-hash-table-immediate
      (lambda _%args118048%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args118048%_)))
    (define list->hash-table
      (lambda (_%lst118045%_ . _%args118046%_)
        (list->hash-table!
         _%lst118045%_
         (apply make-hash-table
                'size:
                (length _%lst118045%_)
                _%args118046%_))))
    (define list->hash-table-eq
      (lambda (_%lst118042%_ . _%args118043%_)
        (list->hash-table!
         _%lst118042%_
         (apply make-hash-table-eq
                'size:
                (length _%lst118042%_)
                _%args118043%_))))
    (define list->hash-table-eqv
      (lambda (_%lst118039%_ . _%args118040%_)
        (list->hash-table!
         _%lst118039%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst118039%_)
                _%args118040%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst118036%_ . _%args118037%_)
        (list->hash-table!
         _%lst118036%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst118036%_)
                _%args118037%_))))
    (define list->hash-table-string
      (lambda (_%lst118033%_ . _%args118034%_)
        (list->hash-table!
         _%lst118033%_
         (apply make-hash-table-string
                'size:
                (length _%lst118033%_)
                _%args118034%_))))
    (define list->hash-table-immediate
      (lambda (_%lst118030%_ . _%args118031%_)
        (list->hash-table!
         _%lst118030%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst118030%_)
                _%args118031%_))))
    (define list->hash-table!
      (lambda (_%lst117997%_ _%h117998%_)
        (for-each
         (lambda (_%el118000%_)
           (let* ((_%el118001118008%_ _%el118000%_)
                  (_%E118003118012%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el118001118008%_
                              '([k . v])))
                     '#!void))
                  (_%K118004118018%_
                   (lambda (_%v118015%_ _%k118016%_)
                     (&HashTable-set! _%h117998%_ _%k118016%_ _%v118015%_))))
             (if (pair? _%el118001118008%_)
                 (let ((_%hd118005118021%_
                        (let ()
                          (declare (not safe))
                          (##car _%el118001118008%_)))
                       (_%tl118006118023%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el118001118008%_))))
                   (let* ((_%k118026%_ _%hd118005118021%_)
                          (_%v118028%_ _%tl118006118023%_))
                     (_%K118004118018%_ _%v118028%_ _%k118026%_)))
                 (_%E118003118012%_))))
         _%lst117997%_)
        _%h117998%_))
    (define plist->hash-table
      (lambda (_%lst117994%_ . _%args117995%_)
        (plist->hash-table!
         _%lst117994%_
         (apply make-hash-table
                'size:
                (length _%lst117994%_)
                _%args117995%_))))
    (define plist->hash-table-eq
      (lambda (_%lst117991%_ . _%args117992%_)
        (plist->hash-table!
         _%lst117991%_
         (apply make-hash-table-eq
                'size:
                (length _%lst117991%_)
                _%args117992%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst117988%_ . _%args117989%_)
        (plist->hash-table!
         _%lst117988%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst117988%_)
                _%args117989%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst117985%_ . _%args117986%_)
        (plist->hash-table!
         _%lst117985%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst117985%_)
                _%args117986%_))))
    (define plist->hash-table-string
      (lambda (_%lst117982%_ . _%args117983%_)
        (plist->hash-table!
         _%lst117982%_
         (apply make-hash-table-string
                'size:
                (length _%lst117982%_)
                _%args117983%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst117979%_ . _%args117980%_)
        (plist->hash-table!
         _%lst117979%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst117979%_)
                _%args117980%_))))
    (define plist->hash-table!
      (lambda (_%lst117919%_ _%h117920%_)
        (let _%loop117922%_ ((_%rest117924%_ _%lst117919%_))
          (let* ((_%rest117925117937%_ _%rest117924%_)
                 (_%else117928117945%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst117919%_)))))
            (let ((_%K117931117960%_
                   (lambda (_%rest117956%_ _%val117957%_ _%key117958%_)
                     (&HashTable-set! _%h117920%_ _%key117958%_ _%val117957%_)
                     (_%loop117922%_ _%rest117956%_)))
                  (_%K117930117950%_ (lambda () _%h117920%_)))
              (let ((_%try-match117927117953%_
                     (lambda ()
                       (if (null? _%rest117925117937%_)
                           (_%K117930117950%_)
                           (_%else117928117945%_)))))
                (if (pair? _%rest117925117937%_)
                    (let ((_%tl117933117965%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest117925117937%_)))
                          (_%hd117932117963%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest117925117937%_))))
                      (if (pair? _%tl117933117965%_)
                          (let ((_%tl117935117972%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl117933117965%_)))
                                (_%hd117934117970%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl117933117965%_))))
                            (let ((_%key117968%_ _%hd117932117963%_)
                                  (_%val117975%_ _%hd117934117970%_)
                                  (_%rest117977%_ _%tl117935117972%_))
                              (_%K117931117960%_
                               _%rest117977%_
                               _%val117975%_
                               _%key117968%_)))
                          (_%else117928117945%_)))
                    (_%try-match117927117953%_))))))))
    (define hash-length
      (lambda (_%h117901%_)
        (let* ((_%h117907%_
                (let ((_%$obj117904%_ _%h117901%_))
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
          (__hash-length _%h117909%_))))
    (define __hash-length
      (lambda (_%h117889%_)
        (let ((_%h117892%_ _%h117889%_)) (__HashTable-length _%h117892%_))))
    (define hash-ref__%
      (lambda (_%h117857%_ _%key117858%_ _%default117859%_)
        (let* ((_%h117865%_
                (let ((_%$obj117862%_ _%h117857%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117862%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117862%_)))
                           '#t)
                      _%$obj117862%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117862%_)))))
               (_%h117867%_ _%h117865%_))
          (__hash-ref__% _%h117867%_ _%key117858%_ _%default117859%_))))
    (define hash-ref__0
      (lambda (_%h117880%_ _%key117881%_)
        (let ((_%default117883%_ (macro-absent-obj)))
          (hash-ref__% _%h117880%_ _%key117881%_ _%default117883%_))))
    (define hash-ref
      (lambda _g121634_
        (let ((_g121635_ (let () (declare (not safe)) (##length _g121634_))))
          (cond ((let () (declare (not safe)) (##fx= _g121635_ 2))
                 (apply hash-ref__0 _g121634_))
                ((let () (declare (not safe)) (##fx= _g121635_ 3))
                 (apply hash-ref__% _g121634_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g121634_))))))
    (define __hash-ref__%
      (lambda (_%h117828%_ _%key117829%_ _%default117830%_)
        (let* ((_%h117833%_ _%h117828%_)
               (_%result117842%_
                (&HashTable-ref _%h117833%_ _%key117829%_ _%default117830%_)))
          (if (eq? _%result117842%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h117833%_
               'key:
               _%key117829%_)
              _%result117842%_))))
    (define __hash-ref__0
      (lambda (_%h117847%_ _%key117848%_)
        (let ((_%default117850%_ (macro-absent-obj)))
          (__hash-ref__% _%h117847%_ _%key117848%_ _%default117850%_))))
    (define __hash-ref
      (lambda _g121636_
        (let ((_g121637_ (let () (declare (not safe)) (##length _g121636_))))
          (cond ((let () (declare (not safe)) (##fx= _g121637_ 2))
                 (apply __hash-ref__0 _g121636_))
                ((let () (declare (not safe)) (##fx= _g121637_ 3))
                 (apply __hash-ref__% _g121636_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g121636_))))))
    (define hash-get
      (lambda (_%h117808%_ _%key117809%_)
        (let* ((_%h117815%_
                (let ((_%$obj117812%_ _%h117808%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117812%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117812%_)))
                           '#t)
                      _%$obj117812%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117812%_)))))
               (_%h117817%_ _%h117815%_))
          (__hash-get _%h117817%_ _%key117809%_))))
    (define __hash-get
      (lambda (_%h117795%_ _%key117796%_)
        (let ((_%h117799%_ _%h117795%_))
          (&HashTable-ref _%h117799%_ _%key117796%_ '#f))))
    (define hash-put!
      (lambda (_%h117775%_ _%key117776%_ _%value117777%_)
        (let* ((_%h117783%_
                (let ((_%$obj117780%_ _%h117775%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117780%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117780%_)))
                           '#t)
                      _%$obj117780%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117780%_)))))
               (_%h117785%_ _%h117783%_))
          (__hash-put! _%h117785%_ _%key117776%_ _%value117777%_))))
    (define __hash-put!
      (lambda (_%h117761%_ _%key117762%_ _%value117763%_)
        (let ((_%h117766%_ _%h117761%_))
          (&HashTable-set! _%h117766%_ _%key117762%_ _%value117763%_))))
    (define hash-update!__%
      (lambda (_%h117726%_ _%key117727%_ _%update117728%_ _%default117729%_)
        (let* ((_%h117735%_
                (let ((_%$obj117732%_ _%h117726%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117732%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117732%_)))
                           '#t)
                      _%$obj117732%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117732%_)))))
               (_%h117737%_ _%h117735%_))
          (__hash-update!__%
           _%h117737%_
           _%key117727%_
           _%update117728%_
           _%default117729%_))))
    (define hash-update!__0
      (lambda (_%h117750%_ _%key117751%_ _%update117752%_)
        (let ((_%default117754%_ '#!void))
          (hash-update!__%
           _%h117750%_
           _%key117751%_
           _%update117752%_
           _%default117754%_))))
    (define hash-update!
      (lambda _g121638_
        (let ((_g121639_ (let () (declare (not safe)) (##length _g121638_))))
          (cond ((let () (declare (not safe)) (##fx= _g121639_ 3))
                 (apply hash-update!__0 _g121638_))
                ((let () (declare (not safe)) (##fx= _g121639_ 4))
                 (apply hash-update!__% _g121638_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g121638_))))))
    (define __hash-update!__%
      (lambda (_%h117696%_ _%key117697%_ _%update117698%_ _%default117699%_)
        (let ((_%h117702%_ _%h117696%_))
          (HashTable-update!
           _%h117702%_
           _%key117697%_
           _%update117698%_
           _%default117699%_))))
    (define __hash-update!__0
      (lambda (_%h117714%_ _%key117715%_ _%update117716%_)
        (let ((_%default117718%_ '#!void))
          (__hash-update!__%
           _%h117714%_
           _%key117715%_
           _%update117716%_
           _%default117718%_))))
    (define __hash-update!
      (lambda _g121640_
        (let ((_g121641_ (let () (declare (not safe)) (##length _g121640_))))
          (cond ((let () (declare (not safe)) (##fx= _g121641_ 3))
                 (apply __hash-update!__0 _g121640_))
                ((let () (declare (not safe)) (##fx= _g121641_ 4))
                 (apply __hash-update!__% _g121640_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g121640_))))))
    (define hash-remove!
      (lambda (_%h117676%_ _%key117677%_)
        (let* ((_%h117683%_
                (let ((_%$obj117680%_ _%h117676%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117680%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117680%_)))
                           '#t)
                      _%$obj117680%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117680%_)))))
               (_%h117685%_ _%h117683%_))
          (__hash-remove! _%h117685%_ _%key117677%_))))
    (define __hash-remove!
      (lambda (_%h117663%_ _%key117664%_)
        (let ((_%h117667%_ _%h117663%_))
          (&HashTable-delete! _%h117667%_ _%key117664%_))))
    (define hash-key?
      (lambda (_%h117644%_ _%k117645%_)
        (let* ((_%h117651%_
                (let ((_%$obj117648%_ _%h117644%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117648%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117648%_)))
                           '#t)
                      _%$obj117648%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117648%_)))))
               (_%h117653%_ _%h117651%_))
          (__hash-key? _%h117653%_ _%k117645%_))))
    (define __hash-key?
      (lambda (_%h117631%_ _%k117632%_)
        (let ((_%h117635%_ _%h117631%_))
          (not (eq? (&HashTable-ref _%h117635%_ _%k117632%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h117613%_)
        (let* ((_%h117619%_
                (let ((_%$obj117616%_ _%h117613%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117616%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117616%_)))
                           '#t)
                      _%$obj117616%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117616%_)))))
               (_%h117621%_ _%h117619%_))
          (__hash->list _%h117621%_))))
    (define __hash->list
      (lambda (_%h117596%_)
        (let* ((_%h117599%_ _%h117596%_) (_%lst117608%_ '()))
          (&HashTable-for-each
           _%h117599%_
           (lambda (_%k117610%_ _%v117611%_)
             (set! _%lst117608%_
                   (cons (cons _%k117610%_ _%v117611%_) _%lst117608%_))))
          _%lst117608%_)))
    (define hash->plist
      (lambda (_%h117578%_)
        (let* ((_%h117584%_
                (let ((_%$obj117581%_ _%h117578%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117581%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117581%_)))
                           '#t)
                      _%$obj117581%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117581%_)))))
               (_%h117586%_ _%h117584%_))
          (__hash->plist _%h117586%_))))
    (define __hash->plist
      (lambda (_%h117561%_)
        (let* ((_%h117564%_ _%h117561%_) (_%lst117573%_ '()))
          (&HashTable-for-each
           _%h117564%_
           (lambda (_%k117575%_ _%v117576%_)
             (set! _%lst117573%_
                   (cons _%k117575%_ (cons _%v117576%_ _%lst117573%_)))))
          _%lst117573%_)))
    (define hash-for-each
      (lambda (_%proc117532%_ _%h117533%_)
        (if (procedure? _%proc117532%_)
            (let* ((_%proc117537%_ _%proc117532%_)
                   (_%h117549%_
                    (let ((_%$obj117546%_ _%h117533%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj117546%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj117546%_)))
                               '#t)
                          _%$obj117546%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj117546%_)))))
                   (_%h117551%_ _%h117549%_))
              (__hash-for-each _%proc117537%_ _%h117551%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc117532%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc117511%_ _%h117512%_)
        (let* ((_%proc117515%_ _%proc117511%_) (_%h117523%_ _%h117512%_))
          (&HashTable-for-each _%h117523%_ _%proc117515%_))))
    (define hash-map
      (lambda (_%proc117482%_ _%h117483%_)
        (if (procedure? _%proc117482%_)
            (let* ((_%proc117487%_ _%proc117482%_)
                   (_%h117499%_
                    (let ((_%$obj117496%_ _%h117483%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj117496%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj117496%_)))
                               '#t)
                          _%$obj117496%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj117496%_)))))
                   (_%h117501%_ _%h117499%_))
              (__hash-map _%proc117487%_ _%h117501%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc117482%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc117456%_ _%h117457%_)
        (let* ((_%proc117460%_ _%proc117456%_)
               (_%h117468%_ _%h117457%_)
               (_%result117477%_ '()))
          (&HashTable-for-each
           _%h117468%_
           (lambda (_%k117479%_ _%v117480%_)
             (set! _%result117477%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc117460%_ _%k117479%_ _%v117480%_))
                         _%result117477%_))))
          _%result117477%_)))
    (define hash-fold
      (lambda (_%proc117426%_ _%iv117427%_ _%h117428%_)
        (if (procedure? _%proc117426%_)
            (let* ((_%proc117432%_ _%proc117426%_)
                   (_%h117444%_
                    (let ((_%$obj117441%_ _%h117428%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj117441%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj117441%_)))
                               '#t)
                          _%$obj117441%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj117441%_)))))
                   (_%h117446%_ _%h117444%_))
              (__hash-fold _%proc117432%_ _%iv117427%_ _%h117446%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc117426%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc117399%_ _%iv117400%_ _%h117401%_)
        (let* ((_%proc117404%_ _%proc117399%_)
               (_%h117412%_ _%h117401%_)
               (_%result117421%_ _%iv117400%_))
          (&HashTable-for-each
           _%h117412%_
           (lambda (_%k117423%_ _%v117424%_)
             (set! _%result117421%_
                   (let ()
                     (declare (not safe))
                     (_%proc117404%_
                      _%k117423%_
                      _%v117424%_
                      _%result117421%_)))))
          _%result117421%_)))
    (define hash-find__%
      (lambda (_%proc117357%_ _%h117358%_ _%default-value117359%_)
        (if (procedure? _%proc117357%_)
            (let* ((_%proc117363%_ _%proc117357%_)
                   (_%h117375%_
                    (let ((_%$obj117372%_ _%h117358%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj117372%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj117372%_)))
                               '#t)
                          _%$obj117372%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj117372%_)))))
                   (_%h117377%_ _%h117375%_))
              (__hash-find__%
               _%proc117363%_
               _%h117377%_
               _%default-value117359%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc117357%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc117390%_ _%h117391%_)
        (let ((_%default-value117393%_ '#f))
          (hash-find__% _%proc117390%_ _%h117391%_ _%default-value117393%_))))
    (define hash-find
      (lambda _g121642_
        (let ((_g121643_ (let () (declare (not safe)) (##length _g121642_))))
          (cond ((let () (declare (not safe)) (##fx= _g121643_ 2))
                 (apply hash-find__0 _g121642_))
                ((let () (declare (not safe)) (##fx= _g121643_ 3))
                 (apply hash-find__% _g121642_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g121642_))))))
    (define __hash-find__%
      (lambda (_%proc117314%_ _%h117315%_ _%default-value117316%_)
        (let* ((_%proc117319%_ _%proc117314%_)
               (_%h117327%_ _%h117315%_)
               (__tmp121644
                (lambda (_%return117336%_)
                  (&HashTable-for-each
                   _%h117327%_
                   (lambda (_%k117338%_ _%v117339%_)
                     (let ((_%$e117341%_
                            (let ()
                              (declare (not safe))
                              (_%proc117319%_ _%k117338%_ _%v117339%_))))
                       (if _%$e117341%_
                           (_%return117336%_ _%$e117341%_)
                           '#!void))))
                  _%default-value117316%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp121644))))
    (define __hash-find__0
      (lambda (_%proc117347%_ _%h117348%_)
        (let ((_%default-value117350%_ '#f))
          (__hash-find__%
           _%proc117347%_
           _%h117348%_
           _%default-value117350%_))))
    (define __hash-find
      (lambda _g121645_
        (let ((_g121646_ (let () (declare (not safe)) (##length _g121645_))))
          (cond ((let () (declare (not safe)) (##fx= _g121646_ 2))
                 (apply __hash-find__0 _g121645_))
                ((let () (declare (not safe)) (##fx= _g121646_ 3))
                 (apply __hash-find__% _g121645_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g121645_))))))
    (define hash-keys
      (lambda (_%h117295%_)
        (let* ((_%h117301%_
                (let ((_%$obj117298%_ _%h117295%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117298%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117298%_)))
                           '#t)
                      _%$obj117298%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117298%_)))))
               (_%h117303%_ _%h117301%_))
          (__hash-keys _%h117303%_))))
    (define __hash-keys
      (lambda (_%h117278%_)
        (let* ((_%h117281%_ _%h117278%_) (_%result117290%_ '()))
          (&HashTable-for-each
           _%h117281%_
           (lambda (_%k117292%_ _%v117293%_)
             (set! _%result117290%_ (cons _%k117292%_ _%result117290%_))))
          _%result117290%_)))
    (define hash-values
      (lambda (_%h117260%_)
        (let* ((_%h117266%_
                (let ((_%$obj117263%_ _%h117260%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117263%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117263%_)))
                           '#t)
                      _%$obj117263%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117263%_)))))
               (_%h117268%_ _%h117266%_))
          (__hash-values _%h117268%_))))
    (define __hash-values
      (lambda (_%h117243%_)
        (let* ((_%h117246%_ _%h117243%_) (_%result117255%_ '()))
          (&HashTable-for-each
           _%h117246%_
           (lambda (_%k117257%_ _%v117258%_)
             (set! _%result117255%_ (cons _%v117258%_ _%result117255%_))))
          _%result117255%_)))
    (define hash-copy
      (lambda (_%h117225%_)
        (let* ((_%h117231%_
                (let ((_%$obj117228%_ _%h117225%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117228%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117228%_)))
                           '#t)
                      _%$obj117228%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117228%_)))))
               (_%h117233%_ _%h117231%_))
          (__hash-copy _%h117233%_))))
    (define __hash-copy
      (lambda (_%h117213%_)
        (let ((_%h117216%_ _%h117213%_)) (__HashTable-copy _%h117216%_))))
    (define hash-clear!
      (lambda (_%h117195%_)
        (let* ((_%h117201%_
                (let ((_%$obj117198%_ _%h117195%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117198%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117198%_)))
                           '#t)
                      _%$obj117198%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117198%_)))))
               (_%h117203%_ _%h117201%_))
          (__hash-clear! _%h117203%_))))
    (define __hash-clear!
      (lambda (_%h117183%_)
        (let ((_%h117186%_ _%h117183%_)) (&HashTable-clear! _%h117186%_))))
    (define hash-merge
      (lambda (_%h117164%_ . _%rest117165%_)
        (let* ((_%h117171%_
                (let ((_%$obj117168%_ _%h117164%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117168%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117168%_)))
                           '#t)
                      _%$obj117168%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117168%_)))))
               (_%h117173%_ _%h117171%_))
          (declare (not safe))
          (##apply __hash-merge _%h117173%_ _%rest117165%_))))
    (define __hash-merge
      (lambda (_%h117149%_ . _%rest117150%_)
        (let* ((_%h117153%_ _%h117149%_)
               (_%copy117162%_ (__HashTable-copy _%h117153%_)))
          (apply hash-merge! _%copy117162%_ _%rest117150%_)
          _%copy117162%_)))
    (define hash-merge-right
      (lambda (_%h117130%_ . _%rest117131%_)
        (let* ((_%h117137%_
                (let ((_%$obj117134%_ _%h117130%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117134%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117134%_)))
                           '#t)
                      _%$obj117134%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117134%_)))))
               (_%h117139%_ _%h117137%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h117139%_ _%rest117131%_))))
    (define __hash-merge-right
      (lambda (_%h117115%_ . _%rest117116%_)
        (let* ((_%h117119%_ _%h117115%_)
               (_%copy117128%_ (__HashTable-copy _%h117119%_)))
          (apply hash-merge-right! _%copy117128%_ _%rest117116%_)
          _%copy117128%_)))
    (define hash-merge!
      (lambda (_%h117096%_ . _%rest117097%_)
        (let* ((_%h117103%_
                (let ((_%$obj117100%_ _%h117096%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117100%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117100%_)))
                           '#t)
                      _%$obj117100%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117100%_)))))
               (_%h117105%_ _%h117103%_))
          (declare (not safe))
          (##apply __hash-merge! _%h117105%_ _%rest117097%_))))
    (define __hash-merge!
      (lambda (_%h117059%_ . _%rest117060%_)
        (let ((_%h117063%_ _%h117059%_))
          (let ((__tmp121647
                 (lambda (_%hr117072%_)
                   (let* ((_%hr117078%_
                           (let ((_%$obj117075%_ _%hr117072%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj117075%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj117075%_)))
                                      '#t)
                                 _%$obj117075%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj117075%_)))))
                          (_%hr117080%_ _%hr117078%_))
                     (&HashTable-for-each
                      _%hr117080%_
                      (lambda (_%k117093%_ _%v117094%_)
                        (if (__hash-key? _%h117063%_ _%k117093%_)
                            '#!void
                            (&HashTable-set!
                             _%h117063%_
                             _%k117093%_
                             _%v117094%_))))))))
            (declare (not safe))
            (##for-each __tmp121647 _%rest117060%_))
          _%h117063%_)))
    (define hash-merge-right!
      (lambda (_%h117040%_ . _%rest117041%_)
        (let* ((_%h117047%_
                (let ((_%$obj117044%_ _%h117040%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117044%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117044%_)))
                           '#t)
                      _%$obj117044%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117044%_)))))
               (_%h117049%_ _%h117047%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h117049%_ _%rest117041%_))))
    (define __hash-merge-right!
      (lambda (_%h117003%_ . _%rest117004%_)
        (let ((_%h117007%_ _%h117003%_))
          (let ((__tmp121648
                 (lambda (_%hr117016%_)
                   (let* ((_%hr117022%_
                           (let ((_%$obj117019%_ _%hr117016%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj117019%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj117019%_)))
                                      '#t)
                                 _%$obj117019%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj117019%_)))))
                          (_%hr117024%_ _%hr117022%_))
                     (&HashTable-for-each
                      _%hr117024%_
                      (lambda (_%k117037%_ _%v117038%_)
                        (&HashTable-set!
                         _%h117007%_
                         _%k117037%_
                         _%v117038%_)))))))
            (declare (not safe))
            (##for-each __tmp121648 _%rest117004%_))
          _%h117007%_)))))
