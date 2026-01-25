(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1769384627)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp122079 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp122079
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args121991%_
        (apply make-instance UnboundKeyError::t _%$args121991%_)))
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
      (lambda (_%where121865%_ _%message121866%_ . _%irritants121867%_)
        (let ((__tmp122080
               (let ((__obj122071
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj122071
                    _%message121866%_
                    'where:
                    _%where121865%_
                    'irritants:
                    _%irritants121867%_))
                 __obj122071)))
          (declare (not safe))
          (raise __tmp122080))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp122081 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp122081
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj122073
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj122073
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj122073))
    (define make-HashTable
      (lambda (_%obj121863%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj121863%_))))
    (define try-HashTable
      (lambda (_%obj121861%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj121861%_))))
    (define HashTable?
      (lambda (_%obj121859%_)
        (let ((__tmp122082
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj121859%_ __tmp122082))))
    (define is-HashTable?
      (lambda (_%obj121857%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj121857%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self121841%_)
        (let* ((_%self121846%_
                (let ((_%$obj121843%_ _%self121841%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121843%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121843%_)))
                           '#t)
                      _%$obj121843%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121843%_)))))
               (_%self121848%_ _%self121846%_))
          (&HashTable-clear! _%self121848%_))))
    (define &HashTable-clear!
      (lambda (_%self121826%_)
        (let ((_%self121828%_ _%self121826%_))
          (declare (not safe))
          (let ((_%obj121838%_
                 (##unchecked-structure-ref _%self121828%_ '1 '#f 'clear!))
                (_%f121839%_
                 (##unchecked-structure-ref _%self121828%_ '2 '#f 'clear!)))
            (_%f121839%_ _%obj121838%_)))))
    (define HashTable-copy
      (lambda (_%self121810%_)
        (let* ((_%self121815%_
                (let ((_%$obj121812%_ _%self121810%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121812%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121812%_)))
                           '#t)
                      _%$obj121812%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121812%_)))))
               (_%self121817%_ _%self121815%_))
          (__HashTable-copy _%self121817%_))))
    (define __HashTable-copy
      (lambda (_%self121797%_)
        (let ((_%self121799%_ _%self121797%_))
          (if __DEBUG
              (let ((_%$obj121807%_ (&HashTable-copy _%self121799%_)))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj121807%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj121807%_)))
                         '#t)
                    _%$obj121807%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj121807%_))))
              (&HashTable-copy _%self121799%_)))))
    (define &HashTable-copy
      (lambda (_%self121782%_)
        (let ((_%self121784%_ _%self121782%_))
          (declare (not safe))
          (let ((_%obj121794%_
                 (##unchecked-structure-ref _%self121784%_ '1 '#f 'copy))
                (_%f121795%_
                 (##unchecked-structure-ref _%self121784%_ '3 '#f 'copy)))
            (_%f121795%_ _%obj121794%_)))))
    (define HashTable-delete!
      (lambda (_%self121765%_ _%key121766%_)
        (let* ((_%self121771%_
                (let ((_%$obj121768%_ _%self121765%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121768%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121768%_)))
                           '#t)
                      _%$obj121768%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121768%_)))))
               (_%self121773%_ _%self121771%_))
          (&HashTable-delete! _%self121773%_ _%key121766%_))))
    (define &HashTable-delete!
      (lambda (_%self121749%_ _%key121750%_)
        (let ((_%self121752%_ _%self121749%_))
          (declare (not safe))
          (let ((_%obj121762%_
                 (##unchecked-structure-ref _%self121752%_ '1 '#f 'delete!))
                (_%f121763%_
                 (##unchecked-structure-ref _%self121752%_ '4 '#f 'delete!)))
            (_%f121763%_ _%obj121762%_ _%key121750%_)))))
    (define HashTable-for-each
      (lambda (_%self121722%_ _%proc121723%_)
        (let* ((_%self121728%_
                (let ((_%$obj121725%_ _%self121722%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121725%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121725%_)))
                           '#t)
                      _%$obj121725%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121725%_)))))
               (_%self121730%_ _%self121728%_))
          (if (procedure? _%proc121723%_)
              (let ((_%proc121739%_ _%proc121723%_))
                (&HashTable-for-each _%self121730%_ _%proc121739%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc121723%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self121698%_ _%proc121699%_)
        (let* ((_%self121701%_ _%self121698%_) (_%proc121708%_ _%proc121699%_))
          (declare (not safe))
          (let ((_%obj121719%_
                 (##unchecked-structure-ref _%self121701%_ '1 '#f 'for-each))
                (_%f121720%_
                 (##unchecked-structure-ref _%self121701%_ '5 '#f 'for-each)))
            (_%f121720%_ _%obj121719%_ _%proc121708%_)))))
    (define HashTable-length
      (lambda (_%self121682%_)
        (let* ((_%self121687%_
                (let ((_%$obj121684%_ _%self121682%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121684%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121684%_)))
                           '#t)
                      _%$obj121684%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121684%_)))))
               (_%self121689%_ _%self121687%_))
          (__HashTable-length _%self121689%_))))
    (define __HashTable-length
      (lambda (_%self121669%_)
        (let ((_%self121671%_ _%self121669%_))
          (if __DEBUG
              (let ((_%val121679%_ (&HashTable-length _%self121671%_)))
                _%val121679%_)
              (&HashTable-length _%self121671%_)))))
    (define &HashTable-length
      (lambda (_%self121654%_)
        (let ((_%self121656%_ _%self121654%_))
          (declare (not safe))
          (let ((_%obj121666%_
                 (##unchecked-structure-ref _%self121656%_ '1 '#f 'length))
                (_%f121667%_
                 (##unchecked-structure-ref _%self121656%_ '6 '#f 'length)))
            (_%f121667%_ _%obj121666%_)))))
    (define HashTable-ref
      (lambda (_%self121636%_ _%key121637%_ _%default121638%_)
        (let* ((_%self121643%_
                (let ((_%$obj121640%_ _%self121636%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121640%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121640%_)))
                           '#t)
                      _%$obj121640%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121640%_)))))
               (_%self121645%_ _%self121643%_))
          (&HashTable-ref _%self121645%_ _%key121637%_ _%default121638%_))))
    (define &HashTable-ref
      (lambda (_%self121619%_ _%key121620%_ _%default121621%_)
        (let ((_%self121623%_ _%self121619%_))
          (declare (not safe))
          (let ((_%obj121633%_
                 (##unchecked-structure-ref _%self121623%_ '1 '#f 'ref))
                (_%f121634%_
                 (##unchecked-structure-ref _%self121623%_ '7 '#f 'ref)))
            (_%f121634%_ _%obj121633%_ _%key121620%_ _%default121621%_)))))
    (define HashTable-set!
      (lambda (_%self121601%_ _%key121602%_ _%value121603%_)
        (let* ((_%self121608%_
                (let ((_%$obj121605%_ _%self121601%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121605%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121605%_)))
                           '#t)
                      _%$obj121605%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121605%_)))))
               (_%self121610%_ _%self121608%_))
          (&HashTable-set! _%self121610%_ _%key121602%_ _%value121603%_))))
    (define &HashTable-set!
      (lambda (_%self121584%_ _%key121585%_ _%value121586%_)
        (let ((_%self121588%_ _%self121584%_))
          (declare (not safe))
          (let ((_%obj121598%_
                 (##unchecked-structure-ref _%self121588%_ '1 '#f 'set!))
                (_%f121599%_
                 (##unchecked-structure-ref _%self121588%_ '8 '#f 'set!)))
            (_%f121599%_ _%obj121598%_ _%key121585%_ _%value121586%_)))))
    (define HashTable-update!
      (lambda (_%self121555%_ _%key121556%_ _%proc121557%_ _%default121558%_)
        (let* ((_%self121563%_
                (let ((_%$obj121560%_ _%self121555%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121560%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121560%_)))
                           '#t)
                      _%$obj121560%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121560%_)))))
               (_%self121565%_ _%self121563%_))
          (if (procedure? _%proc121557%_)
              (let ((_%proc121574%_ _%proc121557%_))
                (&HashTable-update!
                 _%self121565%_
                 _%key121556%_
                 _%proc121574%_
                 _%default121558%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc121557%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self121527%_ _%key121528%_ _%proc121529%_ _%default121530%_)
        (let* ((_%self121532%_ _%self121527%_) (_%proc121539%_ _%proc121529%_))
          (declare (not safe))
          (let ((_%obj121550%_
                 (##unchecked-structure-ref _%self121532%_ '1 '#f 'update!))
                (_%f121552%_
                 (##unchecked-structure-ref _%self121532%_ '9 '#f 'update!)))
            (_%f121552%_
             _%obj121550%_
             _%key121528%_
             _%proc121539%_
             _%default121530%_)))))
    (define Locker::t
      (let ((__tmp122083 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp122083
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj122075
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj122075
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj122075))
    (define make-Locker
      (lambda (_%obj121525%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj121525%_))))
    (define try-Locker
      (lambda (_%obj121523%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj121523%_))))
    (define Locker?
      (lambda (_%obj121521%_)
        (let ((__tmp122084
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj121521%_ __tmp122084))))
    (define is-Locker?
      (lambda (_%obj121519%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj121519%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self121503%_)
        (let* ((_%self121508%_
                (let ((_%$obj121505%_ _%self121503%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121505%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121505%_)))
                           '#t)
                      _%$obj121505%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj121505%_)))))
               (_%self121510%_ _%self121508%_))
          (&Locker-read-lock! _%self121510%_))))
    (define &Locker-read-lock!
      (lambda (_%self121488%_)
        (let ((_%self121490%_ _%self121488%_))
          (declare (not safe))
          (let ((_%obj121500%_
                 (##unchecked-structure-ref _%self121490%_ '1 '#f 'read-lock!))
                (_%f121501%_
                 (##unchecked-structure-ref
                  _%self121490%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f121501%_ _%obj121500%_)))))
    (define Locker-read-unlock!
      (lambda (_%self121472%_)
        (let* ((_%self121477%_
                (let ((_%$obj121474%_ _%self121472%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121474%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121474%_)))
                           '#t)
                      _%$obj121474%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj121474%_)))))
               (_%self121479%_ _%self121477%_))
          (&Locker-read-unlock! _%self121479%_))))
    (define &Locker-read-unlock!
      (lambda (_%self121457%_)
        (let ((_%self121459%_ _%self121457%_))
          (declare (not safe))
          (let ((_%obj121469%_
                 (##unchecked-structure-ref
                  _%self121459%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f121470%_
                 (##unchecked-structure-ref
                  _%self121459%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f121470%_ _%obj121469%_)))))
    (define Locker-write-lock!
      (lambda (_%self121441%_)
        (let* ((_%self121446%_
                (let ((_%$obj121443%_ _%self121441%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121443%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121443%_)))
                           '#t)
                      _%$obj121443%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj121443%_)))))
               (_%self121448%_ _%self121446%_))
          (&Locker-write-lock! _%self121448%_))))
    (define &Locker-write-lock!
      (lambda (_%self121426%_)
        (let ((_%self121428%_ _%self121426%_))
          (declare (not safe))
          (let ((_%obj121438%_
                 (##unchecked-structure-ref
                  _%self121428%_
                  '1
                  '#f
                  'write-lock!))
                (_%f121439%_
                 (##unchecked-structure-ref
                  _%self121428%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f121439%_ _%obj121438%_)))))
    (define Locker-write-unlock!
      (lambda (_%self121410%_)
        (let* ((_%self121415%_
                (let ((_%$obj121412%_ _%self121410%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121412%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121412%_)))
                           '#t)
                      _%$obj121412%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj121412%_)))))
               (_%self121417%_ _%self121415%_))
          (&Locker-write-unlock! _%self121417%_))))
    (define &Locker-write-unlock!
      (lambda (_%self121393%_)
        (let ((_%self121395%_ _%self121393%_))
          (declare (not safe))
          (let ((_%obj121405%_
                 (##unchecked-structure-ref
                  _%self121395%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f121407%_
                 (##unchecked-structure-ref
                  _%self121395%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f121407%_ _%obj121405%_)))))
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
      (lambda (_%table121386%_
               _%key121387%_
               _%update121388%_
               _%default121389%_)
        (let ((_%result121391%_
               (table-ref _%table121386%_ _%key121387%_ _%default121389%_)))
          (table-set!
           _%table121386%_
           _%key121387%_
           (_%update121388%_ _%default121389%_)))))
    (define gambit-table-for-each
      (lambda (_%table121383%_ _%proc121384%_)
        (table-for-each _%proc121384%_ _%table121383%_)))
    (define gambit-table-clear!
      (lambda (_%table121381%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table121381%_ '0 '5 '#f '#f))))
    (let ((__tmp122085 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp122085 'HashTable::ref table-ref))
    (let ((__tmp122086 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp122086 'HashTable::set! table-set!))
    (let ((__tmp122087 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp122087 'HashTable::update! gambit-table-update!))
    (let ((__tmp122088 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp122088 'HashTable::delete! table-set!))
    (let ((__tmp122089 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp122089 'HashTable::for-each gambit-table-for-each))
    (let ((__tmp122090 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp122090 'HashTable::length table-length))
    (let ((__tmp122091 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp122091 'HashTable::copy table-copy))
    (let ((__tmp122092 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp122092 'HashTable::clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots121363%_ '(table count free hash test seed))
             (_%slot-vector121365%_ (list->vector (cons '#f _%slots121363%_)))
             (_%slot-table121372%_
              (let ((_%slot-table121367%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp122095
                       (lambda (_%slot121369%_ _%field121370%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table121367%_
                            _%slot121369%_
                            _%field121370%_))
                         (let ((__tmp122096
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot121369%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table121367%_
                            __tmp122096
                            _%field121370%_))))
                      (__tmp122093
                       (let ((__tmp122094
                              (let ()
                                (declare (not safe))
                                (##length _%slots121363%_))))
                         (declare (not safe))
                         (##iota __tmp122094 '1))))
                  (declare (not safe))
                  (##for-each __tmp122095 _%slots121363%_ __tmp122093))
                _%slot-table121367%_))
             (_%flags121374%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields121376%_ '#())
             (_%properties121378%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots121363%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp122097 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags121374%_
         __table::t
         _%fields121376%_
         __tmp122097
         _%slot-vector121365%_
         _%slot-table121372%_
         _%properties121378%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots121345%_ '(gcht immediate))
             (_%slot-vector121347%_ (list->vector (cons '#f _%slots121345%_)))
             (_%slot-table121354%_
              (let ((_%slot-table121349%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp122100
                       (lambda (_%slot121351%_ _%field121352%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table121349%_
                            _%slot121351%_
                            _%field121352%_))
                         (let ((__tmp122101
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot121351%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table121349%_
                            __tmp122101
                            _%field121352%_))))
                      (__tmp122098
                       (let ((__tmp122099
                              (let ()
                                (declare (not safe))
                                (##length _%slots121345%_))))
                         (declare (not safe))
                         (##iota __tmp122099 '1))))
                  (declare (not safe))
                  (##for-each __tmp122100 _%slots121345%_ __tmp122098))
                _%slot-table121349%_))
             (_%flags121356%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields121358%_ '#())
             (_%properties121360%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots121345%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp122102 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags121356%_
         __gc-table::t
         _%fields121358%_
         __tmp122102
         _%slot-vector121347%_
         _%slot-table121354%_
         _%properties121360%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp122104 (list))
            (__tmp122103
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp122104
         '(table lock)
         __tmp122103
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args121342%_
        (apply make-instance locked-hash-table::t _%$args121342%_)))
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
      (let ((__tmp122106 (list))
            (__tmp122105
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp122106
         '(table key-check)
         __tmp122105
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args121339%_
        (apply make-instance checked-hash-table::t _%$args121339%_)))
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
      (let ((__tmp122108 (list hash-table::t))
            (__tmp122107 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp122108
         '()
         __tmp122107
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args121336%_
        (apply make-instance eq-hash-table::t _%$args121336%_)))
    (define eqv-hash-table::t
      (let ((__tmp122110 (list hash-table::t))
            (__tmp122109 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp122110
         '()
         __tmp122109
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args121333%_
        (apply make-instance eqv-hash-table::t _%$args121333%_)))
    (define symbol-hash-table::t
      (let ((__tmp122112 (list hash-table::t))
            (__tmp122111 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp122112
         '()
         __tmp122111
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args121330%_
        (apply make-instance symbol-hash-table::t _%$args121330%_)))
    (define string-hash-table::t
      (let ((__tmp122114 (list hash-table::t))
            (__tmp122113 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp122114
         '()
         __tmp122113
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args121327%_
        (apply make-instance string-hash-table::t _%$args121327%_)))
    (define immediate-hash-table::t
      (let ((__tmp122116 (list hash-table::t))
            (__tmp122115 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp122116
         '()
         __tmp122115
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args121324%_
        (apply make-instance immediate-hash-table::t _%$args121324%_)))
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
    (define _%locked-hash-table::HashTable::ref117132%_
      (lambda (_%self121284%_ _%key121286%_ _%default121287%_)
        (let* ((_%self121290%_ _%self121284%_)
               (_%key121299%_ _%key121286%_)
               (_%default121307%_ _%default121287%_))
          (let ((_%h121316%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self121290%_ '1 '#f '#f)))
                (_%l121318%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self121290%_ '2 '#f '#f))))
            (let ((__tmp122119 (lambda () (&Locker-read-lock! _%l121318%_)))
                  (__tmp122118
                   (lambda ()
                     (&HashTable-ref
                      _%h121316%_
                      _%key121299%_
                      _%default121307%_)))
                  (__tmp122117 (lambda () (&Locker-read-unlock! _%l121318%_))))
              (declare (not safe))
              (##dynamic-wind __tmp122119 __tmp122118 __tmp122117))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref117132%_
       '#f))
    (define _%locked-hash-table::HashTable::set!117134%_
      (lambda (_%self121121%_ _%key121123%_ _%value121124%_)
        (let* ((_%self121127%_ _%self121121%_)
               (_%key121136%_ _%key121123%_)
               (_%value121144%_ _%value121124%_))
          (let ((_%h121153%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self121127%_ '1 '#f '#f)))
                (_%l121155%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self121127%_ '2 '#f '#f))))
            (let ((__tmp122122 (lambda () (&Locker-write-lock! _%l121155%_)))
                  (__tmp122121
                   (lambda ()
                     (&HashTable-set!
                      _%h121153%_
                      _%key121136%_
                      _%value121144%_)))
                  (__tmp122120
                   (lambda () (&Locker-write-unlock! _%l121155%_))))
              (declare (not safe))
              (##dynamic-wind __tmp122122 __tmp122121 __tmp122120))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!117134%_
       '#f))
    (define _%locked-hash-table::HashTable::update!117136%_
      (lambda (_%self120949%_ _%key120951%_ _%update120952%_ _%default120953%_)
        (let* ((_%self120956%_ _%self120949%_)
               (_%key120965%_ _%key120951%_)
               (_%update120973%_ _%update120952%_)
               (_%default120981%_ _%default120953%_))
          (let ((_%h120990%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120956%_ '1 '#f '#f)))
                (_%l120992%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120956%_ '2 '#f '#f))))
            (let ((__tmp122125 (lambda () (&Locker-write-lock! _%l120992%_)))
                  (__tmp122124
                   (lambda ()
                     (&HashTable-update!
                      _%h120990%_
                      _%key120965%_
                      _%update120973%_
                      _%default120981%_)))
                  (__tmp122123
                   (lambda () (&Locker-write-unlock! _%l120992%_))))
              (declare (not safe))
              (##dynamic-wind __tmp122125 __tmp122124 __tmp122123))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!117136%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!117138%_
      (lambda (_%self120795%_ _%key120797%_)
        (let* ((_%self120800%_ _%self120795%_) (_%key120809%_ _%key120797%_))
          (let ((_%h120818%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120800%_ '1 '#f '#f)))
                (_%l120820%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120800%_ '2 '#f '#f))))
            (let ((__tmp122128 (lambda () (&Locker-write-lock! _%l120820%_)))
                  (__tmp122127
                   (lambda () (&HashTable-delete! _%h120818%_ _%key120809%_)))
                  (__tmp122126
                   (lambda () (&Locker-write-unlock! _%l120820%_))))
              (declare (not safe))
              (##dynamic-wind __tmp122128 __tmp122127 __tmp122126))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!117138%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each117140%_
      (lambda (_%self120641%_ _%proc120643%_)
        (let* ((_%self120646%_ _%self120641%_) (_%proc120655%_ _%proc120643%_))
          (let ((_%h120664%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120646%_ '1 '#f '#f)))
                (_%l120666%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120646%_ '2 '#f '#f))))
            (let ((__tmp122131 (lambda () (&Locker-read-lock! _%l120666%_)))
                  (__tmp122130
                   (lambda ()
                     (&HashTable-for-each _%h120664%_ _%proc120655%_)))
                  (__tmp122129 (lambda () (&Locker-read-unlock! _%l120666%_))))
              (declare (not safe))
              (##dynamic-wind __tmp122131 __tmp122130 __tmp122129))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each117140%_
       '#f))
    (define _%locked-hash-table::HashTable::length117142%_
      (lambda (_%self120489%_)
        (let ((_%self120493%_ _%self120489%_))
          (let ((_%h120503%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120493%_ '1 '#f '#f)))
                (_%l120505%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120493%_ '2 '#f '#f))))
            ((lambda (_%g120507120509%_)
               (let ((_%val120512%_ _%g120507120509%_))
                 (if (fixnum? _%val120512%_)
                     _%val120512%_
                     (let ()
                       (declare (not safe))
                       (error '"bad cast" fixnum::t _%val120512%_)))))
             (let ((__tmp122134 (lambda () (&Locker-read-lock! _%l120505%_)))
                   (__tmp122133 (lambda () (&HashTable-length _%h120503%_)))
                   (__tmp122132
                    (lambda () (&Locker-read-unlock! _%l120505%_))))
               (declare (not safe))
               (##dynamic-wind __tmp122134 __tmp122133 __tmp122132)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length117142%_
       '#f))
    (define _%locked-hash-table::HashTable::copy117144%_
      (lambda (_%self120341%_)
        (let ((_%self120345%_ _%self120341%_))
          (let ((_%h120355%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120345%_ '1 '#f '#f)))
                (_%l120357%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120345%_ '2 '#f '#f))))
            (let ((_%$obj120363%_
                   (let ((__tmp122137
                          (lambda () (&Locker-read-lock! _%l120357%_)))
                         (__tmp122136
                          (lambda () (&HashTable-copy _%h120355%_)))
                         (__tmp122135
                          (lambda () (&Locker-read-unlock! _%l120357%_))))
                     (declare (not safe))
                     (##dynamic-wind __tmp122137 __tmp122136 __tmp122135))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj120363%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj120363%_)))
                       '#t)
                  _%$obj120363%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj120363%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy117144%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!117146%_
      (lambda (_%self120196%_)
        (let ((_%self120200%_ _%self120196%_))
          (let ((_%h120210%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120200%_ '1 '#f '#f)))
                (_%l120212%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120200%_ '2 '#f '#f))))
            (let ((__tmp122140 (lambda () (&Locker-write-lock! _%l120212%_)))
                  (__tmp122139 (lambda () (&HashTable-clear! _%h120210%_)))
                  (__tmp122138
                   (lambda () (&Locker-write-unlock! _%l120212%_))))
              (declare (not safe))
              (##dynamic-wind __tmp122140 __tmp122139 __tmp122138))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!117146%_
       '#f))
    (let ((__tmp122141 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp122141 'Locker::read-lock! mutex-lock!))
    (let ((__tmp122142 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp122142 'Locker::read-unlock! mutex-unlock!))
    (let ((__tmp122143 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp122143 'Locker::write-lock! mutex-lock!))
    (let ((__tmp122144 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp122144 'Locker::write-unlock! mutex-unlock!))
    (define _%checked-hash-table::HashTable::ref117357%_
      (lambda (_%self120031%_ _%key120032%_ _%default120033%_)
        (let* ((_%self120036%_ _%self120031%_)
               (_%key120045%_ _%key120032%_)
               (_%default120053%_ _%default120033%_))
          (declare (not safe))
          (let ((_%h120064%_
                 (##unchecked-structure-ref _%self120036%_ '1 '#f '#f))
                (_%key?120066%_
                 (##unchecked-structure-ref _%self120036%_ '2 '#f '#f)))
            (if ((lambda (_%key?120069%_ _%key120070%_ _%default120071%_)
                   (_%key?120069%_ _%key120070%_))
                 _%key?120066%_
                 _%key120045%_
                 _%default120053%_)
                (&HashTable-ref _%h120064%_ _%key120045%_ _%default120053%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key120045%_ (cons _%default120053%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref117357%_
       '#f))
    (define _%checked-hash-table::HashTable::set!117359%_
      (lambda (_%self119866%_ _%key119867%_ _%value119868%_)
        (let* ((_%self119871%_ _%self119866%_)
               (_%key119880%_ _%key119867%_)
               (_%value119888%_ _%value119868%_))
          (declare (not safe))
          (let ((_%h119899%_
                 (##unchecked-structure-ref _%self119871%_ '1 '#f '#f))
                (_%key?119901%_
                 (##unchecked-structure-ref _%self119871%_ '2 '#f '#f)))
            (if ((lambda (_%key?119904%_ _%key119905%_ _%value119906%_)
                   (_%key?119904%_ _%key119905%_))
                 _%key?119901%_
                 _%key119880%_
                 _%value119888%_)
                (&HashTable-set! _%h119899%_ _%key119880%_ _%value119888%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key119880%_ (cons _%value119888%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!117359%_
       '#f))
    (define _%checked-hash-table::HashTable::update!117361%_
      (lambda (_%self119691%_ _%key119692%_ _%update119693%_ _%default119694%_)
        (let* ((_%self119697%_ _%self119691%_)
               (_%key119706%_ _%key119692%_)
               (_%update119714%_ _%update119693%_)
               (_%default119722%_ _%default119694%_))
          (declare (not safe))
          (let ((_%h119733%_
                 (##unchecked-structure-ref _%self119697%_ '1 '#f '#f))
                (_%key?119735%_
                 (##unchecked-structure-ref _%self119697%_ '2 '#f '#f)))
            (if ((lambda (_%key?119738%_
                          _%key119739%_
                          _%update119740%_
                          _%default119741%_)
                   (_%key?119738%_ _%key119739%_))
                 _%key?119735%_
                 _%key119706%_
                 _%update119714%_
                 _%default119722%_)
                (&HashTable-update!
                 _%h119733%_
                 _%key119706%_
                 _%update119714%_
                 _%default119722%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key119706%_
                         (cons _%update119714%_ (cons _%default119722%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!117361%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!117363%_
      (lambda (_%self119536%_ _%key119537%_)
        (let* ((_%self119540%_ _%self119536%_) (_%key119549%_ _%key119537%_))
          (declare (not safe))
          (let ((_%h119560%_
                 (##unchecked-structure-ref _%self119540%_ '1 '#f '#f))
                (_%key?119562%_
                 (##unchecked-structure-ref _%self119540%_ '2 '#f '#f)))
            (if ((lambda (_%key?119565%_ _%key119566%_)
                   (_%key?119565%_ _%key119566%_))
                 _%key?119562%_
                 _%key119549%_)
                (&HashTable-delete! _%h119560%_ _%key119549%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key119549%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!117363%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each117365%_
      (lambda (_%self119381%_ _%proc119382%_)
        (let* ((_%self119385%_ _%self119381%_) (_%proc119394%_ _%proc119382%_))
          (declare (not safe))
          (let ((_%h119405%_
                 (##unchecked-structure-ref _%self119385%_ '1 '#f '#f))
                (_%key?119407%_
                 (##unchecked-structure-ref _%self119385%_ '2 '#f '#f)))
            (if ((lambda (_%key?119410%_ _%proc119411%_) '#t)
                 _%key?119407%_
                 _%proc119394%_)
                (&HashTable-for-each _%h119405%_ _%proc119394%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc119394%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each117365%_
       '#f))
    (define _%checked-hash-table::HashTable::length117367%_
      (lambda (_%self119238%_)
        (let ((_%self119241%_ _%self119238%_))
          (declare (not safe))
          (let ((_%h119253%_
                 (##unchecked-structure-ref _%self119241%_ '1 '#f '#f))
                (_%key?119255%_
                 (##unchecked-structure-ref _%self119241%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h119253%_)
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
       _%checked-hash-table::HashTable::length117367%_
       '#f))
    (define _%checked-hash-table::HashTable::copy117369%_
      (lambda (_%self119095%_)
        (let ((_%self119098%_ _%self119095%_))
          (declare (not safe))
          (let ((_%h119110%_
                 (##unchecked-structure-ref _%self119098%_ '1 '#f '#f))
                (_%key?119112%_
                 (##unchecked-structure-ref _%self119098%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h119110%_)
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
       _%checked-hash-table::HashTable::copy117369%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!117371%_
      (lambda (_%self118952%_)
        (let ((_%self118955%_ _%self118952%_))
          (declare (not safe))
          (let ((_%h118967%_
                 (##unchecked-structure-ref _%self118955%_ '1 '#f '#f))
                (_%key?118969%_
                 (##unchecked-structure-ref _%self118955%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h118967%_)
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
       _%checked-hash-table::HashTable::clear!117371%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table118822%_
               _%count118823%_
               _%free118824%_
               _%hash118825%_
               _%test118826%_
               _%seed118827%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table118822%_
           _%count118823%_
           _%free118824%_
           _%hash118825%_
           _%test118826%_
           _%seed118827%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords118591%_
               _%size-hint118581118592%_
               _%seed118582118593%_
               _%test118583118594%_
               _%hash118584118595%_
               _%lock118585118596%_
               _%check118586118597%_
               _%weak-keys118587118598%_
               _%weak-values118588118599%_)
        (let* ((_%size-hint118601%_
                (if (eq? _%size-hint118581118592%_ absent-value)
                    '#f
                    _%size-hint118581118592%_))
               (_%seed118603%_
                (if (eq? _%seed118582118593%_ absent-value)
                    '#f
                    _%seed118582118593%_))
               (_%test118605%_
                (if (eq? _%test118583118594%_ absent-value)
                    equal?
                    _%test118583118594%_))
               (_%hash118607%_
                (if (eq? _%hash118584118595%_ absent-value)
                    '#f
                    _%hash118584118595%_))
               (_%lock118609%_
                (if (eq? _%lock118585118596%_ absent-value)
                    '#f
                    _%lock118585118596%_))
               (_%check118611%_
                (if (eq? _%check118586118597%_ absent-value)
                    '#f
                    _%check118586118597%_))
               (_%weak-keys118613%_
                (if (eq? _%weak-keys118587118598%_ absent-value)
                    '#f
                    _%weak-keys118587118598%_))
               (_%weak-values118615%_
                (if (eq? _%weak-values118588118599%_ absent-value)
                    '#f
                    _%weak-values118588118599%_)))
          (letrec ((_%table-seed118618%_
                    (lambda ()
                      (if (fixnum? _%seed118603%_)
                          _%seed118603%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock118619%_
                    (lambda (_%ht118796%_)
                      (let ((_%ht118799%_ _%ht118796%_))
                        (_%__wrap-lock118620%_ _%ht118799%_))))
                   (_%__wrap-lock118620%_
                    (lambda (_%ht118778%_)
                      (let ((_%ht118781%_ _%ht118778%_))
                        (if _%lock118609%_
                            (let ((_%$obj118793%_
                                   (let ((__tmp122145
                                          (let ((_%$obj118790%_
                                                 _%lock118609%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj118790%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj118790%_)))
                                                     '#t)
                                                _%$obj118790%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj118790%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht118781%_
                                      __tmp122145))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj118793%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj118793%_)))
                                       '#t)
                                  _%$obj118793%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj118793%_))))
                            _%ht118781%_))))
                   (_%wrap-checked118621%_
                    (lambda (_%ht118765%_ _%implicit118766%_)
                      (let ((_%ht118769%_ _%ht118765%_))
                        (_%__wrap-checked118622%_
                         _%ht118769%_
                         _%implicit118766%_))))
                   (_%__wrap-checked118622%_
                    (lambda (_%ht118738%_ _%implicit118739%_)
                      (let ((_%ht118742%_ _%ht118738%_))
                        (if _%check118611%_
                            (let ((_%$obj118762%_
                                   (let ((__tmp122146
                                          (if (procedure? _%check118611%_)
                                              _%check118611%_
                                              _%implicit118739%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht118742%_
                                      __tmp122146))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj118762%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj118762%_)))
                                       '#t)
                                  _%$obj118762%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj118762%_))))
                            _%ht118742%_))))
                   (_%make118623%_
                    (lambda (_%kons118722%_
                             _%key?118723%_
                             _%hash118724%_
                             _%test118725%_)
                      (let* ((_%size118728%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint118601%_)))
                             (_%table118730%_
                              (let ((__tmp122147 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size118728%_ __tmp122147)))
                             (_%ht118735%_
                              (let ((_%$obj118732%_
                                     (_%kons118722%_
                                      _%table118730%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size118728%_ '2))
                                      _%hash118724%_
                                      _%test118725%_
                                      (_%table-seed118618%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj118732%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj118732%_)))
                                         '#t)
                                    _%$obj118732%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj118732%_))))))
                        (_%__wrap-checked118622%_
                         (_%__wrap-lock118620%_ _%ht118735%_)
                         _%key?118723%_))))
                   (_%make-gc-hash-table118624%_
                    (lambda ()
                      (let ((_%ht118720%_
                             (let ((_%$obj118717%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint118601%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj118717%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj118717%_)))
                                        '#t)
                                   _%$obj118717%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj118717%_))))))
                        (_%__wrap-checked118622%_
                         (_%__wrap-lock118620%_ _%ht118720%_)
                         true))))
                   (_%make-gambit-table118625%_
                    (lambda ()
                      (let* ((_%size118694%_
                              (let ((_%$e118691%_ _%size-hint118601%_))
                                (if _%$e118691%_
                                    _%$e118691%_
                                    (macro-absent-obj))))
                             (_%test118699%_
                              (let ((_%$e118696%_ _%test118605%_))
                                (if _%$e118696%_ _%$e118696%_ equal?)))
                             (_%hash118707%_
                              (let ((_%$e118701%_ _%hash118607%_))
                                (if _%$e118701%_
                                    _%$e118701%_
                                    (if (eq? _%test118699%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test118699%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht118712%_
                              (let ((_%$obj118709%_
                                     (make-table
                                      'size:
                                      _%size118694%_
                                      'test:
                                      _%test118699%_
                                      'hash:
                                      _%hash118707%_
                                      'weak-keys:
                                      _%weak-keys118613%_
                                      'weak-values:
                                      _%weak-values118615%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj118709%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj118709%_)))
                                         '#t)
                                    _%$obj118709%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj118709%_))))))
                        (_%__wrap-checked118622%_
                         (_%__wrap-lock118620%_ _%ht118712%_)
                         true)))))
            (if (or _%weak-keys118613%_ _%weak-values118615%_)
                (_%make-gambit-table118625%_)
                (if (and (or (eq? _%test118605%_ eq?)
                             (eq? _%test118605%_ ##eq?))
                         (or (not _%hash118607%_)
                             (eq? _%hash118607%_ eq?-hash)
                             (eq? _%hash118607%_ eq-hash))
                         (not _%seed118603%_))
                    (_%make-gc-hash-table118624%_)
                    (if (and (or (eq? _%test118605%_ eq?)
                                 (eq? _%test118605%_ ##eq?))
                             (or (not _%hash118607%_)
                                 (eq? _%hash118607%_ eq?-hash)
                                 (eq? _%hash118607%_ eq-hash)))
                        (_%make118623%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test118605%_ eqv?)
                                     (eq? _%test118605%_ ##eqv?))
                                 (or (not _%hash118607%_)
                                     (eq? _%hash118607%_ eqv?-hash)
                                     (eq? _%hash118607%_ eqv-hash)))
                            (_%make118623%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test118605%_ eq?)
                                         (eq? _%test118605%_ ##eq?))
                                     (or (eq? _%hash118607%_ symbolic-hash)
                                         (eq? _%hash118607%_ ##symbol-hash)))
                                (_%make118623%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test118605%_ eq?)
                                             (eq? _%test118605%_ ##eq?))
                                         (eq? _%hash118607%_ immediate-hash))
                                    (_%make118623%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test118605%_ equal?)
                                                 (eq? _%test118605%_ ##equal?)
                                                 (eq? _%test118605%_ string=?)
                                                 (eq? _%test118605%_
                                                      ##string=?))
                                             (or (eq? _%hash118607%_
                                                      string-hash)
                                                 (eq? _%hash118607%_
                                                      ##string=?-hash)))
                                        (_%make118623%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test118605%_ equal?)
                                                 (not _%hash118607%_))
                                            (_%make118623%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test118605%_)
                                                (if (procedure? _%hash118607%_)
                                                    (_%make118623%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash118607%_
                                                     _%test118605%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash118607%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test118605%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords118812%_ . _%args118813%_)
        (apply make-hash-table__%
               _%@@keywords118812%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118812%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118812%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118812%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118812%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118812%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118812%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118812%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118812%_
                  'weak-values:
                  absent-value))
               _%args118813%_)))
    (define make-hash-table
      (lambda _%args118589118819%_
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
               _%args118589118819%_)))
    (define make-hash-table-eq
      (lambda _%args118578%_
        (apply make-hash-table 'test: eq? _%args118578%_)))
    (define make-hash-table-eqv
      (lambda _%args118576%_
        (apply make-hash-table 'test: eqv? _%args118576%_)))
    (define make-hash-table-symbolic
      (lambda _%args118574%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args118574%_)))
    (define make-hash-table-string
      (lambda _%args118572%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args118572%_)))
    (define make-hash-table-immediate
      (lambda _%args118570%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args118570%_)))
    (define list->hash-table
      (lambda (_%lst118567%_ . _%args118568%_)
        (list->hash-table!
         _%lst118567%_
         (apply make-hash-table
                'size:
                (length _%lst118567%_)
                _%args118568%_))))
    (define list->hash-table-eq
      (lambda (_%lst118564%_ . _%args118565%_)
        (list->hash-table!
         _%lst118564%_
         (apply make-hash-table-eq
                'size:
                (length _%lst118564%_)
                _%args118565%_))))
    (define list->hash-table-eqv
      (lambda (_%lst118561%_ . _%args118562%_)
        (list->hash-table!
         _%lst118561%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst118561%_)
                _%args118562%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst118558%_ . _%args118559%_)
        (list->hash-table!
         _%lst118558%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst118558%_)
                _%args118559%_))))
    (define list->hash-table-string
      (lambda (_%lst118555%_ . _%args118556%_)
        (list->hash-table!
         _%lst118555%_
         (apply make-hash-table-string
                'size:
                (length _%lst118555%_)
                _%args118556%_))))
    (define list->hash-table-immediate
      (lambda (_%lst118552%_ . _%args118553%_)
        (list->hash-table!
         _%lst118552%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst118552%_)
                _%args118553%_))))
    (define list->hash-table!
      (lambda (_%lst118520%_ _%h118521%_)
        (for-each
         (lambda (_%el118523%_)
           (let* ((_%el118524118531%_ _%el118523%_)
                  (_%E118526118534%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el118524118531%_
                              '([k . v])))
                     '#!void))
                  (_%K118527118540%_
                   (lambda (_%v118537%_ _%k118538%_)
                     (&HashTable-set! _%h118521%_ _%k118538%_ _%v118537%_))))
             (if (pair? _%el118524118531%_)
                 (let ((_%hd118528118543%_
                        (let ()
                          (declare (not safe))
                          (##car _%el118524118531%_)))
                       (_%tl118529118545%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el118524118531%_))))
                   (let* ((_%k118548%_ _%hd118528118543%_)
                          (_%v118550%_ _%tl118529118545%_))
                     (_%K118527118540%_ _%v118550%_ _%k118548%_)))
                 (_%E118526118534%_))))
         _%lst118520%_)
        _%h118521%_))
    (define plist->hash-table
      (lambda (_%lst118517%_ . _%args118518%_)
        (plist->hash-table!
         _%lst118517%_
         (apply make-hash-table
                'size:
                (length _%lst118517%_)
                _%args118518%_))))
    (define plist->hash-table-eq
      (lambda (_%lst118514%_ . _%args118515%_)
        (plist->hash-table!
         _%lst118514%_
         (apply make-hash-table-eq
                'size:
                (length _%lst118514%_)
                _%args118515%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst118511%_ . _%args118512%_)
        (plist->hash-table!
         _%lst118511%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst118511%_)
                _%args118512%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst118508%_ . _%args118509%_)
        (plist->hash-table!
         _%lst118508%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst118508%_)
                _%args118509%_))))
    (define plist->hash-table-string
      (lambda (_%lst118505%_ . _%args118506%_)
        (plist->hash-table!
         _%lst118505%_
         (apply make-hash-table-string
                'size:
                (length _%lst118505%_)
                _%args118506%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst118502%_ . _%args118503%_)
        (plist->hash-table!
         _%lst118502%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst118502%_)
                _%args118503%_))))
    (define plist->hash-table!
      (lambda (_%lst118442%_ _%h118443%_)
        (let _%loop118445%_ ((_%rest118447%_ _%lst118442%_))
          (let* ((_%rest118448118460%_ _%rest118447%_)
                 (_%else118451118468%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst118442%_)))))
            (let ((_%K118454118483%_
                   (lambda (_%rest118479%_ _%val118480%_ _%key118481%_)
                     (&HashTable-set! _%h118443%_ _%key118481%_ _%val118480%_)
                     (_%loop118445%_ _%rest118479%_)))
                  (_%K118453118473%_ (lambda () _%h118443%_)))
              (let ((_%try-match118450118476%_
                     (lambda ()
                       (if (null? _%rest118448118460%_)
                           (_%K118453118473%_)
                           (_%else118451118468%_)))))
                (if (pair? _%rest118448118460%_)
                    (let ((_%tl118456118488%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest118448118460%_)))
                          (_%hd118455118486%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest118448118460%_))))
                      (if (pair? _%tl118456118488%_)
                          (let ((_%tl118458118495%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl118456118488%_)))
                                (_%hd118457118493%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl118456118488%_))))
                            (let ((_%key118491%_ _%hd118455118486%_)
                                  (_%val118498%_ _%hd118457118493%_)
                                  (_%rest118500%_ _%tl118458118495%_))
                              (_%K118454118483%_
                               _%rest118500%_
                               _%val118498%_
                               _%key118491%_)))
                          (_%else118451118468%_)))
                    (_%try-match118450118476%_))))))))
    (define hash-length
      (lambda (_%h118424%_)
        (let* ((_%h118430%_
                (let ((_%$obj118427%_ _%h118424%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118427%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118427%_)))
                           '#t)
                      _%$obj118427%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118427%_)))))
               (_%h118432%_ _%h118430%_))
          (__hash-length _%h118432%_))))
    (define __hash-length
      (lambda (_%h118412%_)
        (let ((_%h118415%_ _%h118412%_)) (__HashTable-length _%h118415%_))))
    (define hash-ref__%
      (lambda (_%h118380%_ _%key118381%_ _%default118382%_)
        (let* ((_%h118388%_
                (let ((_%$obj118385%_ _%h118380%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118385%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118385%_)))
                           '#t)
                      _%$obj118385%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118385%_)))))
               (_%h118390%_ _%h118388%_))
          (__hash-ref__% _%h118390%_ _%key118381%_ _%default118382%_))))
    (define hash-ref__0
      (lambda (_%h118403%_ _%key118404%_)
        (let ((_%default118406%_ (macro-absent-obj)))
          (hash-ref__% _%h118403%_ _%key118404%_ _%default118406%_))))
    (define hash-ref
      (lambda _g122148_
        (let ((_g122149_ (let () (declare (not safe)) (##length _g122148_))))
          (cond ((let () (declare (not safe)) (##fx= _g122149_ 2))
                 (apply hash-ref__0 _g122148_))
                ((let () (declare (not safe)) (##fx= _g122149_ 3))
                 (apply hash-ref__% _g122148_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g122148_))))))
    (define __hash-ref__%
      (lambda (_%h118351%_ _%key118352%_ _%default118353%_)
        (let* ((_%h118356%_ _%h118351%_)
               (_%result118365%_
                (&HashTable-ref _%h118356%_ _%key118352%_ _%default118353%_)))
          (if (eq? _%result118365%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h118356%_
               'key:
               _%key118352%_)
              _%result118365%_))))
    (define __hash-ref__0
      (lambda (_%h118370%_ _%key118371%_)
        (let ((_%default118373%_ (macro-absent-obj)))
          (__hash-ref__% _%h118370%_ _%key118371%_ _%default118373%_))))
    (define __hash-ref
      (lambda _g122150_
        (let ((_g122151_ (let () (declare (not safe)) (##length _g122150_))))
          (cond ((let () (declare (not safe)) (##fx= _g122151_ 2))
                 (apply __hash-ref__0 _g122150_))
                ((let () (declare (not safe)) (##fx= _g122151_ 3))
                 (apply __hash-ref__% _g122150_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g122150_))))))
    (define hash-get
      (lambda (_%h118331%_ _%key118332%_)
        (let* ((_%h118338%_
                (let ((_%$obj118335%_ _%h118331%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118335%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118335%_)))
                           '#t)
                      _%$obj118335%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118335%_)))))
               (_%h118340%_ _%h118338%_))
          (__hash-get _%h118340%_ _%key118332%_))))
    (define __hash-get
      (lambda (_%h118318%_ _%key118319%_)
        (let ((_%h118322%_ _%h118318%_))
          (&HashTable-ref _%h118322%_ _%key118319%_ '#f))))
    (define hash-put!
      (lambda (_%h118298%_ _%key118299%_ _%value118300%_)
        (let* ((_%h118306%_
                (let ((_%$obj118303%_ _%h118298%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118303%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118303%_)))
                           '#t)
                      _%$obj118303%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118303%_)))))
               (_%h118308%_ _%h118306%_))
          (__hash-put! _%h118308%_ _%key118299%_ _%value118300%_))))
    (define __hash-put!
      (lambda (_%h118284%_ _%key118285%_ _%value118286%_)
        (let ((_%h118289%_ _%h118284%_))
          (&HashTable-set! _%h118289%_ _%key118285%_ _%value118286%_))))
    (define hash-update!__%
      (lambda (_%h118249%_ _%key118250%_ _%update118251%_ _%default118252%_)
        (let* ((_%h118258%_
                (let ((_%$obj118255%_ _%h118249%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118255%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118255%_)))
                           '#t)
                      _%$obj118255%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118255%_)))))
               (_%h118260%_ _%h118258%_))
          (__hash-update!__%
           _%h118260%_
           _%key118250%_
           _%update118251%_
           _%default118252%_))))
    (define hash-update!__0
      (lambda (_%h118273%_ _%key118274%_ _%update118275%_)
        (let ((_%default118277%_ '#!void))
          (hash-update!__%
           _%h118273%_
           _%key118274%_
           _%update118275%_
           _%default118277%_))))
    (define hash-update!
      (lambda _g122152_
        (let ((_g122153_ (let () (declare (not safe)) (##length _g122152_))))
          (cond ((let () (declare (not safe)) (##fx= _g122153_ 3))
                 (apply hash-update!__0 _g122152_))
                ((let () (declare (not safe)) (##fx= _g122153_ 4))
                 (apply hash-update!__% _g122152_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g122152_))))))
    (define __hash-update!__%
      (lambda (_%h118219%_ _%key118220%_ _%update118221%_ _%default118222%_)
        (let ((_%h118225%_ _%h118219%_))
          (HashTable-update!
           _%h118225%_
           _%key118220%_
           _%update118221%_
           _%default118222%_))))
    (define __hash-update!__0
      (lambda (_%h118237%_ _%key118238%_ _%update118239%_)
        (let ((_%default118241%_ '#!void))
          (__hash-update!__%
           _%h118237%_
           _%key118238%_
           _%update118239%_
           _%default118241%_))))
    (define __hash-update!
      (lambda _g122154_
        (let ((_g122155_ (let () (declare (not safe)) (##length _g122154_))))
          (cond ((let () (declare (not safe)) (##fx= _g122155_ 3))
                 (apply __hash-update!__0 _g122154_))
                ((let () (declare (not safe)) (##fx= _g122155_ 4))
                 (apply __hash-update!__% _g122154_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g122154_))))))
    (define hash-remove!
      (lambda (_%h118199%_ _%key118200%_)
        (let* ((_%h118206%_
                (let ((_%$obj118203%_ _%h118199%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118203%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118203%_)))
                           '#t)
                      _%$obj118203%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118203%_)))))
               (_%h118208%_ _%h118206%_))
          (__hash-remove! _%h118208%_ _%key118200%_))))
    (define __hash-remove!
      (lambda (_%h118186%_ _%key118187%_)
        (let ((_%h118190%_ _%h118186%_))
          (&HashTable-delete! _%h118190%_ _%key118187%_))))
    (define hash-key?
      (lambda (_%h118167%_ _%k118168%_)
        (let* ((_%h118174%_
                (let ((_%$obj118171%_ _%h118167%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118171%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118171%_)))
                           '#t)
                      _%$obj118171%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118171%_)))))
               (_%h118176%_ _%h118174%_))
          (__hash-key? _%h118176%_ _%k118168%_))))
    (define __hash-key?
      (lambda (_%h118154%_ _%k118155%_)
        (let ((_%h118158%_ _%h118154%_))
          (not (eq? (&HashTable-ref _%h118158%_ _%k118155%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h118136%_)
        (let* ((_%h118142%_
                (let ((_%$obj118139%_ _%h118136%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118139%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118139%_)))
                           '#t)
                      _%$obj118139%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118139%_)))))
               (_%h118144%_ _%h118142%_))
          (__hash->list _%h118144%_))))
    (define __hash->list
      (lambda (_%h118119%_)
        (let* ((_%h118122%_ _%h118119%_) (_%lst118131%_ '()))
          (&HashTable-for-each
           _%h118122%_
           (lambda (_%k118133%_ _%v118134%_)
             (set! _%lst118131%_
                   (cons (cons _%k118133%_ _%v118134%_) _%lst118131%_))))
          _%lst118131%_)))
    (define hash->plist
      (lambda (_%h118101%_)
        (let* ((_%h118107%_
                (let ((_%$obj118104%_ _%h118101%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118104%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118104%_)))
                           '#t)
                      _%$obj118104%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118104%_)))))
               (_%h118109%_ _%h118107%_))
          (__hash->plist _%h118109%_))))
    (define __hash->plist
      (lambda (_%h118084%_)
        (let* ((_%h118087%_ _%h118084%_) (_%lst118096%_ '()))
          (&HashTable-for-each
           _%h118087%_
           (lambda (_%k118098%_ _%v118099%_)
             (set! _%lst118096%_
                   (cons _%k118098%_ (cons _%v118099%_ _%lst118096%_)))))
          _%lst118096%_)))
    (define hash-for-each
      (lambda (_%proc118055%_ _%h118056%_)
        (if (procedure? _%proc118055%_)
            (let* ((_%proc118060%_ _%proc118055%_)
                   (_%h118072%_
                    (let ((_%$obj118069%_ _%h118056%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj118069%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj118069%_)))
                               '#t)
                          _%$obj118069%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj118069%_)))))
                   (_%h118074%_ _%h118072%_))
              (__hash-for-each _%proc118060%_ _%h118074%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc118055%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc118034%_ _%h118035%_)
        (let* ((_%proc118038%_ _%proc118034%_) (_%h118046%_ _%h118035%_))
          (&HashTable-for-each _%h118046%_ _%proc118038%_))))
    (define hash-map
      (lambda (_%proc118005%_ _%h118006%_)
        (if (procedure? _%proc118005%_)
            (let* ((_%proc118010%_ _%proc118005%_)
                   (_%h118022%_
                    (let ((_%$obj118019%_ _%h118006%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj118019%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj118019%_)))
                               '#t)
                          _%$obj118019%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj118019%_)))))
                   (_%h118024%_ _%h118022%_))
              (__hash-map _%proc118010%_ _%h118024%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc118005%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc117979%_ _%h117980%_)
        (let* ((_%proc117983%_ _%proc117979%_)
               (_%h117991%_ _%h117980%_)
               (_%result118000%_ '()))
          (&HashTable-for-each
           _%h117991%_
           (lambda (_%k118002%_ _%v118003%_)
             (set! _%result118000%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc117983%_ _%k118002%_ _%v118003%_))
                         _%result118000%_))))
          _%result118000%_)))
    (define hash-fold
      (lambda (_%proc117949%_ _%iv117950%_ _%h117951%_)
        (if (procedure? _%proc117949%_)
            (let* ((_%proc117955%_ _%proc117949%_)
                   (_%h117967%_
                    (let ((_%$obj117964%_ _%h117951%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj117964%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj117964%_)))
                               '#t)
                          _%$obj117964%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj117964%_)))))
                   (_%h117969%_ _%h117967%_))
              (__hash-fold _%proc117955%_ _%iv117950%_ _%h117969%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc117949%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc117922%_ _%iv117923%_ _%h117924%_)
        (let* ((_%proc117927%_ _%proc117922%_)
               (_%h117935%_ _%h117924%_)
               (_%result117944%_ _%iv117923%_))
          (&HashTable-for-each
           _%h117935%_
           (lambda (_%k117946%_ _%v117947%_)
             (set! _%result117944%_
                   (let ()
                     (declare (not safe))
                     (_%proc117927%_
                      _%k117946%_
                      _%v117947%_
                      _%result117944%_)))))
          _%result117944%_)))
    (define hash-find__%
      (lambda (_%proc117880%_ _%h117881%_ _%default-value117882%_)
        (if (procedure? _%proc117880%_)
            (let* ((_%proc117886%_ _%proc117880%_)
                   (_%h117898%_
                    (let ((_%$obj117895%_ _%h117881%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj117895%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj117895%_)))
                               '#t)
                          _%$obj117895%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj117895%_)))))
                   (_%h117900%_ _%h117898%_))
              (__hash-find__%
               _%proc117886%_
               _%h117900%_
               _%default-value117882%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc117880%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc117913%_ _%h117914%_)
        (let ((_%default-value117916%_ '#f))
          (hash-find__% _%proc117913%_ _%h117914%_ _%default-value117916%_))))
    (define hash-find
      (lambda _g122156_
        (let ((_g122157_ (let () (declare (not safe)) (##length _g122156_))))
          (cond ((let () (declare (not safe)) (##fx= _g122157_ 2))
                 (apply hash-find__0 _g122156_))
                ((let () (declare (not safe)) (##fx= _g122157_ 3))
                 (apply hash-find__% _g122156_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g122156_))))))
    (define __hash-find__%
      (lambda (_%proc117837%_ _%h117838%_ _%default-value117839%_)
        (let* ((_%proc117842%_ _%proc117837%_)
               (_%h117850%_ _%h117838%_)
               (__tmp122158
                (lambda (_%return117859%_)
                  (&HashTable-for-each
                   _%h117850%_
                   (lambda (_%k117861%_ _%v117862%_)
                     (let ((_%$e117864%_
                            (let ()
                              (declare (not safe))
                              (_%proc117842%_ _%k117861%_ _%v117862%_))))
                       (if _%$e117864%_
                           (_%return117859%_ _%$e117864%_)
                           '#!void))))
                  _%default-value117839%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp122158))))
    (define __hash-find__0
      (lambda (_%proc117870%_ _%h117871%_)
        (let ((_%default-value117873%_ '#f))
          (__hash-find__%
           _%proc117870%_
           _%h117871%_
           _%default-value117873%_))))
    (define __hash-find
      (lambda _g122159_
        (let ((_g122160_ (let () (declare (not safe)) (##length _g122159_))))
          (cond ((let () (declare (not safe)) (##fx= _g122160_ 2))
                 (apply __hash-find__0 _g122159_))
                ((let () (declare (not safe)) (##fx= _g122160_ 3))
                 (apply __hash-find__% _g122159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g122159_))))))
    (define hash-keys
      (lambda (_%h117818%_)
        (let* ((_%h117824%_
                (let ((_%$obj117821%_ _%h117818%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117821%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117821%_)))
                           '#t)
                      _%$obj117821%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117821%_)))))
               (_%h117826%_ _%h117824%_))
          (__hash-keys _%h117826%_))))
    (define __hash-keys
      (lambda (_%h117801%_)
        (let* ((_%h117804%_ _%h117801%_) (_%result117813%_ '()))
          (&HashTable-for-each
           _%h117804%_
           (lambda (_%k117815%_ _%v117816%_)
             (set! _%result117813%_ (cons _%k117815%_ _%result117813%_))))
          _%result117813%_)))
    (define hash-values
      (lambda (_%h117783%_)
        (let* ((_%h117789%_
                (let ((_%$obj117786%_ _%h117783%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117786%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117786%_)))
                           '#t)
                      _%$obj117786%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117786%_)))))
               (_%h117791%_ _%h117789%_))
          (__hash-values _%h117791%_))))
    (define __hash-values
      (lambda (_%h117766%_)
        (let* ((_%h117769%_ _%h117766%_) (_%result117778%_ '()))
          (&HashTable-for-each
           _%h117769%_
           (lambda (_%k117780%_ _%v117781%_)
             (set! _%result117778%_ (cons _%v117781%_ _%result117778%_))))
          _%result117778%_)))
    (define hash-copy
      (lambda (_%h117748%_)
        (let* ((_%h117754%_
                (let ((_%$obj117751%_ _%h117748%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117751%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117751%_)))
                           '#t)
                      _%$obj117751%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117751%_)))))
               (_%h117756%_ _%h117754%_))
          (__hash-copy _%h117756%_))))
    (define __hash-copy
      (lambda (_%h117736%_)
        (let ((_%h117739%_ _%h117736%_)) (__HashTable-copy _%h117739%_))))
    (define hash-clear!
      (lambda (_%h117718%_)
        (let* ((_%h117724%_
                (let ((_%$obj117721%_ _%h117718%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117721%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117721%_)))
                           '#t)
                      _%$obj117721%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117721%_)))))
               (_%h117726%_ _%h117724%_))
          (__hash-clear! _%h117726%_))))
    (define __hash-clear!
      (lambda (_%h117706%_)
        (let ((_%h117709%_ _%h117706%_)) (&HashTable-clear! _%h117709%_))))
    (define hash-merge
      (lambda (_%h117687%_ . _%rest117688%_)
        (let* ((_%h117694%_
                (let ((_%$obj117691%_ _%h117687%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117691%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117691%_)))
                           '#t)
                      _%$obj117691%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117691%_)))))
               (_%h117696%_ _%h117694%_))
          (declare (not safe))
          (##apply __hash-merge _%h117696%_ _%rest117688%_))))
    (define __hash-merge
      (lambda (_%h117672%_ . _%rest117673%_)
        (let* ((_%h117676%_ _%h117672%_)
               (_%copy117685%_ (__HashTable-copy _%h117676%_)))
          (apply hash-merge! _%copy117685%_ _%rest117673%_)
          _%copy117685%_)))
    (define hash-merge-right
      (lambda (_%h117653%_ . _%rest117654%_)
        (let* ((_%h117660%_
                (let ((_%$obj117657%_ _%h117653%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117657%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117657%_)))
                           '#t)
                      _%$obj117657%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117657%_)))))
               (_%h117662%_ _%h117660%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h117662%_ _%rest117654%_))))
    (define __hash-merge-right
      (lambda (_%h117638%_ . _%rest117639%_)
        (let* ((_%h117642%_ _%h117638%_)
               (_%copy117651%_ (__HashTable-copy _%h117642%_)))
          (apply hash-merge-right! _%copy117651%_ _%rest117639%_)
          _%copy117651%_)))
    (define hash-merge!
      (lambda (_%h117619%_ . _%rest117620%_)
        (let* ((_%h117626%_
                (let ((_%$obj117623%_ _%h117619%_))
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
          (declare (not safe))
          (##apply __hash-merge! _%h117628%_ _%rest117620%_))))
    (define __hash-merge!
      (lambda (_%h117582%_ . _%rest117583%_)
        (let ((_%h117586%_ _%h117582%_))
          (let ((__tmp122161
                 (lambda (_%hr117595%_)
                   (let* ((_%hr117601%_
                           (let ((_%$obj117598%_ _%hr117595%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj117598%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj117598%_)))
                                      '#t)
                                 _%$obj117598%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj117598%_)))))
                          (_%hr117603%_ _%hr117601%_))
                     (&HashTable-for-each
                      _%hr117603%_
                      (lambda (_%k117616%_ _%v117617%_)
                        (if (__hash-key? _%h117586%_ _%k117616%_)
                            '#!void
                            (&HashTable-set!
                             _%h117586%_
                             _%k117616%_
                             _%v117617%_))))))))
            (declare (not safe))
            (##for-each __tmp122161 _%rest117583%_))
          _%h117586%_)))
    (define hash-merge-right!
      (lambda (_%h117563%_ . _%rest117564%_)
        (let* ((_%h117570%_
                (let ((_%$obj117567%_ _%h117563%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117567%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117567%_)))
                           '#t)
                      _%$obj117567%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117567%_)))))
               (_%h117572%_ _%h117570%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h117572%_ _%rest117564%_))))
    (define __hash-merge-right!
      (lambda (_%h117526%_ . _%rest117527%_)
        (let ((_%h117530%_ _%h117526%_))
          (let ((__tmp122162
                 (lambda (_%hr117539%_)
                   (let* ((_%hr117545%_
                           (let ((_%$obj117542%_ _%hr117539%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj117542%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj117542%_)))
                                      '#t)
                                 _%$obj117542%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj117542%_)))))
                          (_%hr117547%_ _%hr117545%_))
                     (&HashTable-for-each
                      _%hr117547%_
                      (lambda (_%k117560%_ _%v117561%_)
                        (&HashTable-set!
                         _%h117530%_
                         _%k117560%_
                         _%v117561%_)))))))
            (declare (not safe))
            (##for-each __tmp122162 _%rest117527%_))
          _%h117530%_)))))
