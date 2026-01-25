(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1769382893)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp122023 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp122023
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args121935%_
        (apply make-instance UnboundKeyError::t _%$args121935%_)))
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
      (lambda (_%where121809%_ _%message121810%_ . _%irritants121811%_)
        (let ((__tmp122024
               (let ((__obj122015
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj122015
                    _%message121810%_
                    'where:
                    _%where121809%_
                    'irritants:
                    _%irritants121811%_))
                 __obj122015)))
          (declare (not safe))
          (raise __tmp122024))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp122025 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp122025
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj122017
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj122017
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj122017))
    (define make-HashTable
      (lambda (_%obj121807%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj121807%_))))
    (define try-HashTable
      (lambda (_%obj121805%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj121805%_))))
    (define HashTable?
      (lambda (_%obj121803%_)
        (let ((__tmp122026
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj121803%_ __tmp122026))))
    (define is-HashTable?
      (lambda (_%obj121801%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj121801%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self121785%_)
        (let* ((_%self121790%_
                (let ((_%$obj121787%_ _%self121785%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121787%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121787%_)))
                           '#t)
                      _%$obj121787%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121787%_)))))
               (_%self121792%_ _%self121790%_))
          (&HashTable-clear! _%self121792%_))))
    (define &HashTable-clear!
      (lambda (_%self121770%_)
        (let ((_%self121772%_ _%self121770%_))
          (declare (not safe))
          (let ((_%obj121782%_
                 (##unchecked-structure-ref _%self121772%_ '1 '#f 'clear!))
                (_%f121783%_
                 (##unchecked-structure-ref _%self121772%_ '2 '#f 'clear!)))
            (_%f121783%_ _%obj121782%_)))))
    (define HashTable-copy
      (lambda (_%self121754%_)
        (let* ((_%self121759%_
                (let ((_%$obj121756%_ _%self121754%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121756%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121756%_)))
                           '#t)
                      _%$obj121756%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121756%_)))))
               (_%self121761%_ _%self121759%_))
          (__HashTable-copy _%self121761%_))))
    (define __HashTable-copy
      (lambda (_%self121741%_)
        (let ((_%self121743%_ _%self121741%_))
          (if __DEBUG
              (let ((_%$obj121751%_ (&HashTable-copy _%self121743%_)))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj121751%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj121751%_)))
                         '#t)
                    _%$obj121751%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj121751%_))))
              (&HashTable-copy _%self121743%_)))))
    (define &HashTable-copy
      (lambda (_%self121726%_)
        (let ((_%self121728%_ _%self121726%_))
          (declare (not safe))
          (let ((_%obj121738%_
                 (##unchecked-structure-ref _%self121728%_ '1 '#f 'copy))
                (_%f121739%_
                 (##unchecked-structure-ref _%self121728%_ '3 '#f 'copy)))
            (_%f121739%_ _%obj121738%_)))))
    (define HashTable-delete!
      (lambda (_%self121709%_ _%key121710%_)
        (let* ((_%self121715%_
                (let ((_%$obj121712%_ _%self121709%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121712%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121712%_)))
                           '#t)
                      _%$obj121712%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121712%_)))))
               (_%self121717%_ _%self121715%_))
          (&HashTable-delete! _%self121717%_ _%key121710%_))))
    (define &HashTable-delete!
      (lambda (_%self121693%_ _%key121694%_)
        (let ((_%self121696%_ _%self121693%_))
          (declare (not safe))
          (let ((_%obj121706%_
                 (##unchecked-structure-ref _%self121696%_ '1 '#f 'delete!))
                (_%f121707%_
                 (##unchecked-structure-ref _%self121696%_ '4 '#f 'delete!)))
            (_%f121707%_ _%obj121706%_ _%key121694%_)))))
    (define HashTable-for-each
      (lambda (_%self121666%_ _%proc121667%_)
        (let* ((_%self121672%_
                (let ((_%$obj121669%_ _%self121666%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121669%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121669%_)))
                           '#t)
                      _%$obj121669%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121669%_)))))
               (_%self121674%_ _%self121672%_))
          (if (procedure? _%proc121667%_)
              (let ((_%proc121683%_ _%proc121667%_))
                (&HashTable-for-each _%self121674%_ _%proc121683%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc121667%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self121642%_ _%proc121643%_)
        (let* ((_%self121645%_ _%self121642%_) (_%proc121652%_ _%proc121643%_))
          (declare (not safe))
          (let ((_%obj121663%_
                 (##unchecked-structure-ref _%self121645%_ '1 '#f 'for-each))
                (_%f121664%_
                 (##unchecked-structure-ref _%self121645%_ '5 '#f 'for-each)))
            (_%f121664%_ _%obj121663%_ _%proc121652%_)))))
    (define HashTable-length
      (lambda (_%self121626%_)
        (let* ((_%self121631%_
                (let ((_%$obj121628%_ _%self121626%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121628%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121628%_)))
                           '#t)
                      _%$obj121628%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121628%_)))))
               (_%self121633%_ _%self121631%_))
          (__HashTable-length _%self121633%_))))
    (define __HashTable-length
      (lambda (_%self121613%_)
        (let ((_%self121615%_ _%self121613%_))
          (if __DEBUG
              (let ((_%val121623%_ (&HashTable-length _%self121615%_)))
                _%val121623%_)
              (&HashTable-length _%self121615%_)))))
    (define &HashTable-length
      (lambda (_%self121598%_)
        (let ((_%self121600%_ _%self121598%_))
          (declare (not safe))
          (let ((_%obj121610%_
                 (##unchecked-structure-ref _%self121600%_ '1 '#f 'length))
                (_%f121611%_
                 (##unchecked-structure-ref _%self121600%_ '6 '#f 'length)))
            (_%f121611%_ _%obj121610%_)))))
    (define HashTable-ref
      (lambda (_%self121580%_ _%key121581%_ _%default121582%_)
        (let* ((_%self121587%_
                (let ((_%$obj121584%_ _%self121580%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121584%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121584%_)))
                           '#t)
                      _%$obj121584%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121584%_)))))
               (_%self121589%_ _%self121587%_))
          (&HashTable-ref _%self121589%_ _%key121581%_ _%default121582%_))))
    (define &HashTable-ref
      (lambda (_%self121563%_ _%key121564%_ _%default121565%_)
        (let ((_%self121567%_ _%self121563%_))
          (declare (not safe))
          (let ((_%obj121577%_
                 (##unchecked-structure-ref _%self121567%_ '1 '#f 'ref))
                (_%f121578%_
                 (##unchecked-structure-ref _%self121567%_ '7 '#f 'ref)))
            (_%f121578%_ _%obj121577%_ _%key121564%_ _%default121565%_)))))
    (define HashTable-set!
      (lambda (_%self121545%_ _%key121546%_ _%value121547%_)
        (let* ((_%self121552%_
                (let ((_%$obj121549%_ _%self121545%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121549%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121549%_)))
                           '#t)
                      _%$obj121549%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121549%_)))))
               (_%self121554%_ _%self121552%_))
          (&HashTable-set! _%self121554%_ _%key121546%_ _%value121547%_))))
    (define &HashTable-set!
      (lambda (_%self121528%_ _%key121529%_ _%value121530%_)
        (let ((_%self121532%_ _%self121528%_))
          (declare (not safe))
          (let ((_%obj121542%_
                 (##unchecked-structure-ref _%self121532%_ '1 '#f 'set!))
                (_%f121543%_
                 (##unchecked-structure-ref _%self121532%_ '8 '#f 'set!)))
            (_%f121543%_ _%obj121542%_ _%key121529%_ _%value121530%_)))))
    (define HashTable-update!
      (lambda (_%self121499%_ _%key121500%_ _%proc121501%_ _%default121502%_)
        (let* ((_%self121507%_
                (let ((_%$obj121504%_ _%self121499%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121504%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121504%_)))
                           '#t)
                      _%$obj121504%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj121504%_)))))
               (_%self121509%_ _%self121507%_))
          (if (procedure? _%proc121501%_)
              (let ((_%proc121518%_ _%proc121501%_))
                (&HashTable-update!
                 _%self121509%_
                 _%key121500%_
                 _%proc121518%_
                 _%default121502%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc121501%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self121471%_ _%key121472%_ _%proc121473%_ _%default121474%_)
        (let* ((_%self121476%_ _%self121471%_) (_%proc121483%_ _%proc121473%_))
          (declare (not safe))
          (let ((_%obj121494%_
                 (##unchecked-structure-ref _%self121476%_ '1 '#f 'update!))
                (_%f121496%_
                 (##unchecked-structure-ref _%self121476%_ '9 '#f 'update!)))
            (_%f121496%_
             _%obj121494%_
             _%key121472%_
             _%proc121483%_
             _%default121474%_)))))
    (define Locker::t
      (let ((__tmp122027 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp122027
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj122019
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj122019
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj122019))
    (define make-Locker
      (lambda (_%obj121469%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj121469%_))))
    (define try-Locker
      (lambda (_%obj121467%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj121467%_))))
    (define Locker?
      (lambda (_%obj121465%_)
        (let ((__tmp122028
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj121465%_ __tmp122028))))
    (define is-Locker?
      (lambda (_%obj121463%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj121463%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self121447%_)
        (let* ((_%self121452%_
                (let ((_%$obj121449%_ _%self121447%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121449%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121449%_)))
                           '#t)
                      _%$obj121449%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj121449%_)))))
               (_%self121454%_ _%self121452%_))
          (&Locker-read-lock! _%self121454%_))))
    (define &Locker-read-lock!
      (lambda (_%self121432%_)
        (let ((_%self121434%_ _%self121432%_))
          (declare (not safe))
          (let ((_%obj121444%_
                 (##unchecked-structure-ref _%self121434%_ '1 '#f 'read-lock!))
                (_%f121445%_
                 (##unchecked-structure-ref
                  _%self121434%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f121445%_ _%obj121444%_)))))
    (define Locker-read-unlock!
      (lambda (_%self121416%_)
        (let* ((_%self121421%_
                (let ((_%$obj121418%_ _%self121416%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121418%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121418%_)))
                           '#t)
                      _%$obj121418%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj121418%_)))))
               (_%self121423%_ _%self121421%_))
          (&Locker-read-unlock! _%self121423%_))))
    (define &Locker-read-unlock!
      (lambda (_%self121401%_)
        (let ((_%self121403%_ _%self121401%_))
          (declare (not safe))
          (let ((_%obj121413%_
                 (##unchecked-structure-ref
                  _%self121403%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f121414%_
                 (##unchecked-structure-ref
                  _%self121403%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f121414%_ _%obj121413%_)))))
    (define Locker-write-lock!
      (lambda (_%self121385%_)
        (let* ((_%self121390%_
                (let ((_%$obj121387%_ _%self121385%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121387%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121387%_)))
                           '#t)
                      _%$obj121387%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj121387%_)))))
               (_%self121392%_ _%self121390%_))
          (&Locker-write-lock! _%self121392%_))))
    (define &Locker-write-lock!
      (lambda (_%self121370%_)
        (let ((_%self121372%_ _%self121370%_))
          (declare (not safe))
          (let ((_%obj121382%_
                 (##unchecked-structure-ref
                  _%self121372%_
                  '1
                  '#f
                  'write-lock!))
                (_%f121383%_
                 (##unchecked-structure-ref
                  _%self121372%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f121383%_ _%obj121382%_)))))
    (define Locker-write-unlock!
      (lambda (_%self121354%_)
        (let* ((_%self121359%_
                (let ((_%$obj121356%_ _%self121354%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj121356%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj121356%_)))
                           '#t)
                      _%$obj121356%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj121356%_)))))
               (_%self121361%_ _%self121359%_))
          (&Locker-write-unlock! _%self121361%_))))
    (define &Locker-write-unlock!
      (lambda (_%self121337%_)
        (let ((_%self121339%_ _%self121337%_))
          (declare (not safe))
          (let ((_%obj121349%_
                 (##unchecked-structure-ref
                  _%self121339%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f121351%_
                 (##unchecked-structure-ref
                  _%self121339%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f121351%_ _%obj121349%_)))))
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
      (lambda (_%table121330%_
               _%key121331%_
               _%update121332%_
               _%default121333%_)
        (let ((_%result121335%_
               (table-ref _%table121330%_ _%key121331%_ _%default121333%_)))
          (table-set!
           _%table121330%_
           _%key121331%_
           (_%update121332%_ _%default121333%_)))))
    (define gambit-table-for-each
      (lambda (_%table121327%_ _%proc121328%_)
        (table-for-each _%proc121328%_ _%table121327%_)))
    (define gambit-table-clear!
      (lambda (_%table121325%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table121325%_ '0 '5 '#f '#f))))
    (let ((__tmp122029 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp122029 'HashTable::ref table-ref))
    (let ((__tmp122030 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp122030 'HashTable::set! table-set!))
    (let ((__tmp122031 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp122031 'HashTable::update! gambit-table-update!))
    (let ((__tmp122032 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp122032 'HashTable::delete! table-set!))
    (let ((__tmp122033 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp122033 'HashTable::for-each gambit-table-for-each))
    (let ((__tmp122034 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp122034 'HashTable::length table-length))
    (let ((__tmp122035 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp122035 'HashTable::copy table-copy))
    (let ((__tmp122036 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp122036 'HashTable::clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots121307%_ '(table count free hash test seed))
             (_%slot-vector121309%_ (list->vector (cons '#f _%slots121307%_)))
             (_%slot-table121316%_
              (let ((_%slot-table121311%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp122039
                       (lambda (_%slot121313%_ _%field121314%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table121311%_
                            _%slot121313%_
                            _%field121314%_))
                         (let ((__tmp122040
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot121313%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table121311%_
                            __tmp122040
                            _%field121314%_))))
                      (__tmp122037
                       (let ((__tmp122038
                              (let ()
                                (declare (not safe))
                                (##length _%slots121307%_))))
                         (declare (not safe))
                         (##iota __tmp122038 '1))))
                  (declare (not safe))
                  (##for-each __tmp122039 _%slots121307%_ __tmp122037))
                _%slot-table121311%_))
             (_%flags121318%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields121320%_ '#())
             (_%properties121322%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots121307%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp122041 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags121318%_
         __table::t
         _%fields121320%_
         __tmp122041
         _%slot-vector121309%_
         _%slot-table121316%_
         _%properties121322%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots121289%_ '(gcht immediate))
             (_%slot-vector121291%_ (list->vector (cons '#f _%slots121289%_)))
             (_%slot-table121298%_
              (let ((_%slot-table121293%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp122044
                       (lambda (_%slot121295%_ _%field121296%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table121293%_
                            _%slot121295%_
                            _%field121296%_))
                         (let ((__tmp122045
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot121295%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table121293%_
                            __tmp122045
                            _%field121296%_))))
                      (__tmp122042
                       (let ((__tmp122043
                              (let ()
                                (declare (not safe))
                                (##length _%slots121289%_))))
                         (declare (not safe))
                         (##iota __tmp122043 '1))))
                  (declare (not safe))
                  (##for-each __tmp122044 _%slots121289%_ __tmp122042))
                _%slot-table121293%_))
             (_%flags121300%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields121302%_ '#())
             (_%properties121304%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots121289%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp122046 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags121300%_
         __gc-table::t
         _%fields121302%_
         __tmp122046
         _%slot-vector121291%_
         _%slot-table121298%_
         _%properties121304%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp122048 (list))
            (__tmp122047
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp122048
         '(table lock)
         __tmp122047
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args121286%_
        (apply make-instance locked-hash-table::t _%$args121286%_)))
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
      (let ((__tmp122050 (list))
            (__tmp122049
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp122050
         '(table key-check)
         __tmp122049
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args121283%_
        (apply make-instance checked-hash-table::t _%$args121283%_)))
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
      (let ((__tmp122052 (list hash-table::t))
            (__tmp122051 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp122052
         '()
         __tmp122051
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args121280%_
        (apply make-instance eq-hash-table::t _%$args121280%_)))
    (define eqv-hash-table::t
      (let ((__tmp122054 (list hash-table::t))
            (__tmp122053 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp122054
         '()
         __tmp122053
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args121277%_
        (apply make-instance eqv-hash-table::t _%$args121277%_)))
    (define symbol-hash-table::t
      (let ((__tmp122056 (list hash-table::t))
            (__tmp122055 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp122056
         '()
         __tmp122055
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args121274%_
        (apply make-instance symbol-hash-table::t _%$args121274%_)))
    (define string-hash-table::t
      (let ((__tmp122058 (list hash-table::t))
            (__tmp122057 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp122058
         '()
         __tmp122057
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args121271%_
        (apply make-instance string-hash-table::t _%$args121271%_)))
    (define immediate-hash-table::t
      (let ((__tmp122060 (list hash-table::t))
            (__tmp122059 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp122060
         '()
         __tmp122059
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args121268%_
        (apply make-instance immediate-hash-table::t _%$args121268%_)))
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
    (define _%locked-hash-table::HashTable::ref117076%_
      (lambda (_%self121228%_ _%key121230%_ _%default121231%_)
        (let* ((_%self121234%_ _%self121228%_)
               (_%key121243%_ _%key121230%_)
               (_%default121251%_ _%default121231%_))
          (let ((_%h121260%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self121234%_ '1 '#f '#f)))
                (_%l121262%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self121234%_ '2 '#f '#f))))
            (let ((__tmp122063 (lambda () (&Locker-read-lock! _%l121262%_)))
                  (__tmp122062
                   (lambda ()
                     (&HashTable-ref
                      _%h121260%_
                      _%key121243%_
                      _%default121251%_)))
                  (__tmp122061 (lambda () (&Locker-read-unlock! _%l121262%_))))
              (declare (not safe))
              (##dynamic-wind __tmp122063 __tmp122062 __tmp122061))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref117076%_
       '#f))
    (define _%locked-hash-table::HashTable::set!117078%_
      (lambda (_%self121065%_ _%key121067%_ _%value121068%_)
        (let* ((_%self121071%_ _%self121065%_)
               (_%key121080%_ _%key121067%_)
               (_%value121088%_ _%value121068%_))
          (let ((_%h121097%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self121071%_ '1 '#f '#f)))
                (_%l121099%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self121071%_ '2 '#f '#f))))
            (let ((__tmp122066 (lambda () (&Locker-write-lock! _%l121099%_)))
                  (__tmp122065
                   (lambda ()
                     (&HashTable-set!
                      _%h121097%_
                      _%key121080%_
                      _%value121088%_)))
                  (__tmp122064
                   (lambda () (&Locker-write-unlock! _%l121099%_))))
              (declare (not safe))
              (##dynamic-wind __tmp122066 __tmp122065 __tmp122064))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!117078%_
       '#f))
    (define _%locked-hash-table::HashTable::update!117080%_
      (lambda (_%self120893%_ _%key120895%_ _%update120896%_ _%default120897%_)
        (let* ((_%self120900%_ _%self120893%_)
               (_%key120909%_ _%key120895%_)
               (_%update120917%_ _%update120896%_)
               (_%default120925%_ _%default120897%_))
          (let ((_%h120934%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120900%_ '1 '#f '#f)))
                (_%l120936%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120900%_ '2 '#f '#f))))
            (let ((__tmp122069 (lambda () (&Locker-write-lock! _%l120936%_)))
                  (__tmp122068
                   (lambda ()
                     (&HashTable-update!
                      _%h120934%_
                      _%key120909%_
                      _%update120917%_
                      _%default120925%_)))
                  (__tmp122067
                   (lambda () (&Locker-write-unlock! _%l120936%_))))
              (declare (not safe))
              (##dynamic-wind __tmp122069 __tmp122068 __tmp122067))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!117080%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!117082%_
      (lambda (_%self120739%_ _%key120741%_)
        (let* ((_%self120744%_ _%self120739%_) (_%key120753%_ _%key120741%_))
          (let ((_%h120762%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120744%_ '1 '#f '#f)))
                (_%l120764%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120744%_ '2 '#f '#f))))
            (let ((__tmp122072 (lambda () (&Locker-write-lock! _%l120764%_)))
                  (__tmp122071
                   (lambda () (&HashTable-delete! _%h120762%_ _%key120753%_)))
                  (__tmp122070
                   (lambda () (&Locker-write-unlock! _%l120764%_))))
              (declare (not safe))
              (##dynamic-wind __tmp122072 __tmp122071 __tmp122070))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!117082%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each117084%_
      (lambda (_%self120585%_ _%proc120587%_)
        (let* ((_%self120590%_ _%self120585%_) (_%proc120599%_ _%proc120587%_))
          (let ((_%h120608%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120590%_ '1 '#f '#f)))
                (_%l120610%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120590%_ '2 '#f '#f))))
            (let ((__tmp122075 (lambda () (&Locker-read-lock! _%l120610%_)))
                  (__tmp122074
                   (lambda ()
                     (&HashTable-for-each _%h120608%_ _%proc120599%_)))
                  (__tmp122073 (lambda () (&Locker-read-unlock! _%l120610%_))))
              (declare (not safe))
              (##dynamic-wind __tmp122075 __tmp122074 __tmp122073))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each117084%_
       '#f))
    (define _%locked-hash-table::HashTable::length117086%_
      (lambda (_%self120433%_)
        (let ((_%self120437%_ _%self120433%_))
          (let ((_%h120447%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120437%_ '1 '#f '#f)))
                (_%l120449%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120437%_ '2 '#f '#f))))
            ((lambda (_%g120451120453%_)
               (let ((_%val120456%_ _%g120451120453%_))
                 (if (fixnum? _%val120456%_)
                     _%val120456%_
                     (let ()
                       (declare (not safe))
                       (error '"bad cast" fixnum::t _%val120456%_)))))
             (let ((__tmp122078 (lambda () (&Locker-read-lock! _%l120449%_)))
                   (__tmp122077 (lambda () (&HashTable-length _%h120447%_)))
                   (__tmp122076
                    (lambda () (&Locker-read-unlock! _%l120449%_))))
               (declare (not safe))
               (##dynamic-wind __tmp122078 __tmp122077 __tmp122076)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length117086%_
       '#f))
    (define _%locked-hash-table::HashTable::copy117088%_
      (lambda (_%self120285%_)
        (let ((_%self120289%_ _%self120285%_))
          (let ((_%h120299%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120289%_ '1 '#f '#f)))
                (_%l120301%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120289%_ '2 '#f '#f))))
            (let ((_%$obj120307%_
                   (let ((__tmp122081
                          (lambda () (&Locker-read-lock! _%l120301%_)))
                         (__tmp122080
                          (lambda () (&HashTable-copy _%h120299%_)))
                         (__tmp122079
                          (lambda () (&Locker-read-unlock! _%l120301%_))))
                     (declare (not safe))
                     (##dynamic-wind __tmp122081 __tmp122080 __tmp122079))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj120307%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj120307%_)))
                       '#t)
                  _%$obj120307%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj120307%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy117088%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!117090%_
      (lambda (_%self120140%_)
        (let ((_%self120144%_ _%self120140%_))
          (let ((_%h120154%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120144%_ '1 '#f '#f)))
                (_%l120156%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self120144%_ '2 '#f '#f))))
            (let ((__tmp122084 (lambda () (&Locker-write-lock! _%l120156%_)))
                  (__tmp122083 (lambda () (&HashTable-clear! _%h120154%_)))
                  (__tmp122082
                   (lambda () (&Locker-write-unlock! _%l120156%_))))
              (declare (not safe))
              (##dynamic-wind __tmp122084 __tmp122083 __tmp122082))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!117090%_
       '#f))
    (let ((__tmp122085 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp122085 'Locker::read-lock! mutex-lock!))
    (let ((__tmp122086 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp122086 'Locker::read-unlock! mutex-unlock!))
    (let ((__tmp122087 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp122087 'Locker::write-lock! mutex-lock!))
    (let ((__tmp122088 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp122088 'Locker::write-unlock! mutex-unlock!))
    (define _%checked-hash-table::HashTable::ref117301%_
      (lambda (_%self119975%_ _%key119976%_ _%default119977%_)
        (let* ((_%self119980%_ _%self119975%_)
               (_%key119989%_ _%key119976%_)
               (_%default119997%_ _%default119977%_))
          (declare (not safe))
          (let ((_%h120008%_
                 (##unchecked-structure-ref _%self119980%_ '1 '#f '#f))
                (_%key?120010%_
                 (##unchecked-structure-ref _%self119980%_ '2 '#f '#f)))
            (if ((lambda (_%key?120013%_ _%key120014%_ _%default120015%_)
                   (_%key?120013%_ _%key120014%_))
                 _%key?120010%_
                 _%key119989%_
                 _%default119997%_)
                (&HashTable-ref _%h120008%_ _%key119989%_ _%default119997%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key119989%_ (cons _%default119997%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref117301%_
       '#f))
    (define _%checked-hash-table::HashTable::set!117303%_
      (lambda (_%self119810%_ _%key119811%_ _%value119812%_)
        (let* ((_%self119815%_ _%self119810%_)
               (_%key119824%_ _%key119811%_)
               (_%value119832%_ _%value119812%_))
          (declare (not safe))
          (let ((_%h119843%_
                 (##unchecked-structure-ref _%self119815%_ '1 '#f '#f))
                (_%key?119845%_
                 (##unchecked-structure-ref _%self119815%_ '2 '#f '#f)))
            (if ((lambda (_%key?119848%_ _%key119849%_ _%value119850%_)
                   (_%key?119848%_ _%key119849%_))
                 _%key?119845%_
                 _%key119824%_
                 _%value119832%_)
                (&HashTable-set! _%h119843%_ _%key119824%_ _%value119832%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key119824%_ (cons _%value119832%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!117303%_
       '#f))
    (define _%checked-hash-table::HashTable::update!117305%_
      (lambda (_%self119635%_ _%key119636%_ _%update119637%_ _%default119638%_)
        (let* ((_%self119641%_ _%self119635%_)
               (_%key119650%_ _%key119636%_)
               (_%update119658%_ _%update119637%_)
               (_%default119666%_ _%default119638%_))
          (declare (not safe))
          (let ((_%h119677%_
                 (##unchecked-structure-ref _%self119641%_ '1 '#f '#f))
                (_%key?119679%_
                 (##unchecked-structure-ref _%self119641%_ '2 '#f '#f)))
            (if ((lambda (_%key?119682%_
                          _%key119683%_
                          _%update119684%_
                          _%default119685%_)
                   (_%key?119682%_ _%key119683%_))
                 _%key?119679%_
                 _%key119650%_
                 _%update119658%_
                 _%default119666%_)
                (&HashTable-update!
                 _%h119677%_
                 _%key119650%_
                 _%update119658%_
                 _%default119666%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key119650%_
                         (cons _%update119658%_ (cons _%default119666%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!117305%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!117307%_
      (lambda (_%self119480%_ _%key119481%_)
        (let* ((_%self119484%_ _%self119480%_) (_%key119493%_ _%key119481%_))
          (declare (not safe))
          (let ((_%h119504%_
                 (##unchecked-structure-ref _%self119484%_ '1 '#f '#f))
                (_%key?119506%_
                 (##unchecked-structure-ref _%self119484%_ '2 '#f '#f)))
            (if ((lambda (_%key?119509%_ _%key119510%_)
                   (_%key?119509%_ _%key119510%_))
                 _%key?119506%_
                 _%key119493%_)
                (&HashTable-delete! _%h119504%_ _%key119493%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key119493%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!117307%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each117309%_
      (lambda (_%self119325%_ _%proc119326%_)
        (let* ((_%self119329%_ _%self119325%_) (_%proc119338%_ _%proc119326%_))
          (declare (not safe))
          (let ((_%h119349%_
                 (##unchecked-structure-ref _%self119329%_ '1 '#f '#f))
                (_%key?119351%_
                 (##unchecked-structure-ref _%self119329%_ '2 '#f '#f)))
            (if ((lambda (_%key?119354%_ _%proc119355%_) '#t)
                 _%key?119351%_
                 _%proc119338%_)
                (&HashTable-for-each _%h119349%_ _%proc119338%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc119338%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each117309%_
       '#f))
    (define _%checked-hash-table::HashTable::length117311%_
      (lambda (_%self119182%_)
        (let ((_%self119185%_ _%self119182%_))
          (declare (not safe))
          (let ((_%h119197%_
                 (##unchecked-structure-ref _%self119185%_ '1 '#f '#f))
                (_%key?119199%_
                 (##unchecked-structure-ref _%self119185%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h119197%_)
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
       _%checked-hash-table::HashTable::length117311%_
       '#f))
    (define _%checked-hash-table::HashTable::copy117313%_
      (lambda (_%self119039%_)
        (let ((_%self119042%_ _%self119039%_))
          (declare (not safe))
          (let ((_%h119054%_
                 (##unchecked-structure-ref _%self119042%_ '1 '#f '#f))
                (_%key?119056%_
                 (##unchecked-structure-ref _%self119042%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h119054%_)
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
       _%checked-hash-table::HashTable::copy117313%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!117315%_
      (lambda (_%self118896%_)
        (let ((_%self118899%_ _%self118896%_))
          (declare (not safe))
          (let ((_%h118911%_
                 (##unchecked-structure-ref _%self118899%_ '1 '#f '#f))
                (_%key?118913%_
                 (##unchecked-structure-ref _%self118899%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h118911%_)
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
       _%checked-hash-table::HashTable::clear!117315%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table118766%_
               _%count118767%_
               _%free118768%_
               _%hash118769%_
               _%test118770%_
               _%seed118771%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table118766%_
           _%count118767%_
           _%free118768%_
           _%hash118769%_
           _%test118770%_
           _%seed118771%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords118535%_
               _%size-hint118525118536%_
               _%seed118526118537%_
               _%test118527118538%_
               _%hash118528118539%_
               _%lock118529118540%_
               _%check118530118541%_
               _%weak-keys118531118542%_
               _%weak-values118532118543%_)
        (let* ((_%size-hint118545%_
                (if (eq? _%size-hint118525118536%_ absent-value)
                    '#f
                    _%size-hint118525118536%_))
               (_%seed118547%_
                (if (eq? _%seed118526118537%_ absent-value)
                    '#f
                    _%seed118526118537%_))
               (_%test118549%_
                (if (eq? _%test118527118538%_ absent-value)
                    equal?
                    _%test118527118538%_))
               (_%hash118551%_
                (if (eq? _%hash118528118539%_ absent-value)
                    '#f
                    _%hash118528118539%_))
               (_%lock118553%_
                (if (eq? _%lock118529118540%_ absent-value)
                    '#f
                    _%lock118529118540%_))
               (_%check118555%_
                (if (eq? _%check118530118541%_ absent-value)
                    '#f
                    _%check118530118541%_))
               (_%weak-keys118557%_
                (if (eq? _%weak-keys118531118542%_ absent-value)
                    '#f
                    _%weak-keys118531118542%_))
               (_%weak-values118559%_
                (if (eq? _%weak-values118532118543%_ absent-value)
                    '#f
                    _%weak-values118532118543%_)))
          (letrec ((_%table-seed118562%_
                    (lambda ()
                      (if (fixnum? _%seed118547%_)
                          _%seed118547%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock118563%_
                    (lambda (_%ht118740%_)
                      (let ((_%ht118743%_ _%ht118740%_))
                        (_%__wrap-lock118564%_ _%ht118743%_))))
                   (_%__wrap-lock118564%_
                    (lambda (_%ht118722%_)
                      (let ((_%ht118725%_ _%ht118722%_))
                        (if _%lock118553%_
                            (let ((_%$obj118737%_
                                   (let ((__tmp122089
                                          (let ((_%$obj118734%_
                                                 _%lock118553%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj118734%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj118734%_)))
                                                     '#t)
                                                _%$obj118734%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj118734%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht118725%_
                                      __tmp122089))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj118737%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj118737%_)))
                                       '#t)
                                  _%$obj118737%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj118737%_))))
                            _%ht118725%_))))
                   (_%wrap-checked118565%_
                    (lambda (_%ht118709%_ _%implicit118710%_)
                      (let ((_%ht118713%_ _%ht118709%_))
                        (_%__wrap-checked118566%_
                         _%ht118713%_
                         _%implicit118710%_))))
                   (_%__wrap-checked118566%_
                    (lambda (_%ht118682%_ _%implicit118683%_)
                      (let ((_%ht118686%_ _%ht118682%_))
                        (if _%check118555%_
                            (let ((_%$obj118706%_
                                   (let ((__tmp122090
                                          (if (procedure? _%check118555%_)
                                              _%check118555%_
                                              _%implicit118683%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht118686%_
                                      __tmp122090))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj118706%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj118706%_)))
                                       '#t)
                                  _%$obj118706%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj118706%_))))
                            _%ht118686%_))))
                   (_%make118567%_
                    (lambda (_%kons118666%_
                             _%key?118667%_
                             _%hash118668%_
                             _%test118669%_)
                      (let* ((_%size118672%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint118545%_)))
                             (_%table118674%_
                              (let ((__tmp122091 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size118672%_ __tmp122091)))
                             (_%ht118679%_
                              (let ((_%$obj118676%_
                                     (_%kons118666%_
                                      _%table118674%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size118672%_ '2))
                                      _%hash118668%_
                                      _%test118669%_
                                      (_%table-seed118562%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj118676%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj118676%_)))
                                         '#t)
                                    _%$obj118676%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj118676%_))))))
                        (_%__wrap-checked118566%_
                         (_%__wrap-lock118564%_ _%ht118679%_)
                         _%key?118667%_))))
                   (_%make-gc-hash-table118568%_
                    (lambda ()
                      (let ((_%ht118664%_
                             (let ((_%$obj118661%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint118545%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj118661%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj118661%_)))
                                        '#t)
                                   _%$obj118661%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj118661%_))))))
                        (_%__wrap-checked118566%_
                         (_%__wrap-lock118564%_ _%ht118664%_)
                         true))))
                   (_%make-gambit-table118569%_
                    (lambda ()
                      (let* ((_%size118638%_
                              (let ((_%$e118635%_ _%size-hint118545%_))
                                (if _%$e118635%_
                                    _%$e118635%_
                                    (macro-absent-obj))))
                             (_%test118643%_
                              (let ((_%$e118640%_ _%test118549%_))
                                (if _%$e118640%_ _%$e118640%_ equal?)))
                             (_%hash118651%_
                              (let ((_%$e118645%_ _%hash118551%_))
                                (if _%$e118645%_
                                    _%$e118645%_
                                    (if (eq? _%test118643%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test118643%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht118656%_
                              (let ((_%$obj118653%_
                                     (make-table
                                      'size:
                                      _%size118638%_
                                      'test:
                                      _%test118643%_
                                      'hash:
                                      _%hash118651%_
                                      'weak-keys:
                                      _%weak-keys118557%_
                                      'weak-values:
                                      _%weak-values118559%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj118653%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj118653%_)))
                                         '#t)
                                    _%$obj118653%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj118653%_))))))
                        (_%__wrap-checked118566%_
                         (_%__wrap-lock118564%_ _%ht118656%_)
                         true)))))
            (if (or _%weak-keys118557%_ _%weak-values118559%_)
                (_%make-gambit-table118569%_)
                (if (and (or (eq? _%test118549%_ eq?)
                             (eq? _%test118549%_ ##eq?))
                         (or (not _%hash118551%_)
                             (eq? _%hash118551%_ eq?-hash)
                             (eq? _%hash118551%_ eq-hash))
                         (not _%seed118547%_))
                    (_%make-gc-hash-table118568%_)
                    (if (and (or (eq? _%test118549%_ eq?)
                                 (eq? _%test118549%_ ##eq?))
                             (or (not _%hash118551%_)
                                 (eq? _%hash118551%_ eq?-hash)
                                 (eq? _%hash118551%_ eq-hash)))
                        (_%make118567%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test118549%_ eqv?)
                                     (eq? _%test118549%_ ##eqv?))
                                 (or (not _%hash118551%_)
                                     (eq? _%hash118551%_ eqv?-hash)
                                     (eq? _%hash118551%_ eqv-hash)))
                            (_%make118567%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test118549%_ eq?)
                                         (eq? _%test118549%_ ##eq?))
                                     (or (eq? _%hash118551%_ symbolic-hash)
                                         (eq? _%hash118551%_ ##symbol-hash)))
                                (_%make118567%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test118549%_ eq?)
                                             (eq? _%test118549%_ ##eq?))
                                         (eq? _%hash118551%_ immediate-hash))
                                    (_%make118567%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test118549%_ equal?)
                                                 (eq? _%test118549%_ ##equal?)
                                                 (eq? _%test118549%_ string=?)
                                                 (eq? _%test118549%_
                                                      ##string=?))
                                             (or (eq? _%hash118551%_
                                                      string-hash)
                                                 (eq? _%hash118551%_
                                                      ##string=?-hash)))
                                        (_%make118567%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test118549%_ equal?)
                                                 (not _%hash118551%_))
                                            (_%make118567%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test118549%_)
                                                (if (procedure? _%hash118551%_)
                                                    (_%make118567%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash118551%_
                                                     _%test118549%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash118551%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test118549%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords118756%_ . _%args118757%_)
        (apply make-hash-table__%
               _%@@keywords118756%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118756%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118756%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118756%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118756%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords118756%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118756%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118756%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords118756%_
                  'weak-values:
                  absent-value))
               _%args118757%_)))
    (define make-hash-table
      (lambda _%args118533118763%_
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
               _%args118533118763%_)))
    (define make-hash-table-eq
      (lambda _%args118522%_
        (apply make-hash-table 'test: eq? _%args118522%_)))
    (define make-hash-table-eqv
      (lambda _%args118520%_
        (apply make-hash-table 'test: eqv? _%args118520%_)))
    (define make-hash-table-symbolic
      (lambda _%args118518%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args118518%_)))
    (define make-hash-table-string
      (lambda _%args118516%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args118516%_)))
    (define make-hash-table-immediate
      (lambda _%args118514%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args118514%_)))
    (define list->hash-table
      (lambda (_%lst118511%_ . _%args118512%_)
        (list->hash-table!
         _%lst118511%_
         (apply make-hash-table
                'size:
                (length _%lst118511%_)
                _%args118512%_))))
    (define list->hash-table-eq
      (lambda (_%lst118508%_ . _%args118509%_)
        (list->hash-table!
         _%lst118508%_
         (apply make-hash-table-eq
                'size:
                (length _%lst118508%_)
                _%args118509%_))))
    (define list->hash-table-eqv
      (lambda (_%lst118505%_ . _%args118506%_)
        (list->hash-table!
         _%lst118505%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst118505%_)
                _%args118506%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst118502%_ . _%args118503%_)
        (list->hash-table!
         _%lst118502%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst118502%_)
                _%args118503%_))))
    (define list->hash-table-string
      (lambda (_%lst118499%_ . _%args118500%_)
        (list->hash-table!
         _%lst118499%_
         (apply make-hash-table-string
                'size:
                (length _%lst118499%_)
                _%args118500%_))))
    (define list->hash-table-immediate
      (lambda (_%lst118496%_ . _%args118497%_)
        (list->hash-table!
         _%lst118496%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst118496%_)
                _%args118497%_))))
    (define list->hash-table!
      (lambda (_%lst118464%_ _%h118465%_)
        (for-each
         (lambda (_%el118467%_)
           (let* ((_%el118468118475%_ _%el118467%_)
                  (_%E118470118478%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el118468118475%_
                              '([k . v])))
                     '#!void))
                  (_%K118471118484%_
                   (lambda (_%v118481%_ _%k118482%_)
                     (&HashTable-set! _%h118465%_ _%k118482%_ _%v118481%_))))
             (if (pair? _%el118468118475%_)
                 (let ((_%hd118472118487%_
                        (let ()
                          (declare (not safe))
                          (##car _%el118468118475%_)))
                       (_%tl118473118489%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el118468118475%_))))
                   (let* ((_%k118492%_ _%hd118472118487%_)
                          (_%v118494%_ _%tl118473118489%_))
                     (_%K118471118484%_ _%v118494%_ _%k118492%_)))
                 (_%E118470118478%_))))
         _%lst118464%_)
        _%h118465%_))
    (define plist->hash-table
      (lambda (_%lst118461%_ . _%args118462%_)
        (plist->hash-table!
         _%lst118461%_
         (apply make-hash-table
                'size:
                (length _%lst118461%_)
                _%args118462%_))))
    (define plist->hash-table-eq
      (lambda (_%lst118458%_ . _%args118459%_)
        (plist->hash-table!
         _%lst118458%_
         (apply make-hash-table-eq
                'size:
                (length _%lst118458%_)
                _%args118459%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst118455%_ . _%args118456%_)
        (plist->hash-table!
         _%lst118455%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst118455%_)
                _%args118456%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst118452%_ . _%args118453%_)
        (plist->hash-table!
         _%lst118452%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst118452%_)
                _%args118453%_))))
    (define plist->hash-table-string
      (lambda (_%lst118449%_ . _%args118450%_)
        (plist->hash-table!
         _%lst118449%_
         (apply make-hash-table-string
                'size:
                (length _%lst118449%_)
                _%args118450%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst118446%_ . _%args118447%_)
        (plist->hash-table!
         _%lst118446%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst118446%_)
                _%args118447%_))))
    (define plist->hash-table!
      (lambda (_%lst118386%_ _%h118387%_)
        (let _%loop118389%_ ((_%rest118391%_ _%lst118386%_))
          (let* ((_%rest118392118404%_ _%rest118391%_)
                 (_%else118395118412%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst118386%_)))))
            (let ((_%K118398118427%_
                   (lambda (_%rest118423%_ _%val118424%_ _%key118425%_)
                     (&HashTable-set! _%h118387%_ _%key118425%_ _%val118424%_)
                     (_%loop118389%_ _%rest118423%_)))
                  (_%K118397118417%_ (lambda () _%h118387%_)))
              (let ((_%try-match118394118420%_
                     (lambda ()
                       (if (null? _%rest118392118404%_)
                           (_%K118397118417%_)
                           (_%else118395118412%_)))))
                (if (pair? _%rest118392118404%_)
                    (let ((_%tl118400118432%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest118392118404%_)))
                          (_%hd118399118430%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest118392118404%_))))
                      (if (pair? _%tl118400118432%_)
                          (let ((_%tl118402118439%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl118400118432%_)))
                                (_%hd118401118437%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl118400118432%_))))
                            (let ((_%key118435%_ _%hd118399118430%_)
                                  (_%val118442%_ _%hd118401118437%_)
                                  (_%rest118444%_ _%tl118402118439%_))
                              (_%K118398118427%_
                               _%rest118444%_
                               _%val118442%_
                               _%key118435%_)))
                          (_%else118395118412%_)))
                    (_%try-match118394118420%_))))))))
    (define hash-length
      (lambda (_%h118368%_)
        (let* ((_%h118374%_
                (let ((_%$obj118371%_ _%h118368%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118371%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118371%_)))
                           '#t)
                      _%$obj118371%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118371%_)))))
               (_%h118376%_ _%h118374%_))
          (__hash-length _%h118376%_))))
    (define __hash-length
      (lambda (_%h118356%_)
        (let ((_%h118359%_ _%h118356%_)) (__HashTable-length _%h118359%_))))
    (define hash-ref__%
      (lambda (_%h118324%_ _%key118325%_ _%default118326%_)
        (let* ((_%h118332%_
                (let ((_%$obj118329%_ _%h118324%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118329%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118329%_)))
                           '#t)
                      _%$obj118329%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118329%_)))))
               (_%h118334%_ _%h118332%_))
          (__hash-ref__% _%h118334%_ _%key118325%_ _%default118326%_))))
    (define hash-ref__0
      (lambda (_%h118347%_ _%key118348%_)
        (let ((_%default118350%_ (macro-absent-obj)))
          (hash-ref__% _%h118347%_ _%key118348%_ _%default118350%_))))
    (define hash-ref
      (lambda _g122092_
        (let ((_g122093_ (let () (declare (not safe)) (##length _g122092_))))
          (cond ((let () (declare (not safe)) (##fx= _g122093_ 2))
                 (apply hash-ref__0 _g122092_))
                ((let () (declare (not safe)) (##fx= _g122093_ 3))
                 (apply hash-ref__% _g122092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g122092_))))))
    (define __hash-ref__%
      (lambda (_%h118295%_ _%key118296%_ _%default118297%_)
        (let* ((_%h118300%_ _%h118295%_)
               (_%result118309%_
                (&HashTable-ref _%h118300%_ _%key118296%_ _%default118297%_)))
          (if (eq? _%result118309%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h118300%_
               'key:
               _%key118296%_)
              _%result118309%_))))
    (define __hash-ref__0
      (lambda (_%h118314%_ _%key118315%_)
        (let ((_%default118317%_ (macro-absent-obj)))
          (__hash-ref__% _%h118314%_ _%key118315%_ _%default118317%_))))
    (define __hash-ref
      (lambda _g122094_
        (let ((_g122095_ (let () (declare (not safe)) (##length _g122094_))))
          (cond ((let () (declare (not safe)) (##fx= _g122095_ 2))
                 (apply __hash-ref__0 _g122094_))
                ((let () (declare (not safe)) (##fx= _g122095_ 3))
                 (apply __hash-ref__% _g122094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g122094_))))))
    (define hash-get
      (lambda (_%h118275%_ _%key118276%_)
        (let* ((_%h118282%_
                (let ((_%$obj118279%_ _%h118275%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118279%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118279%_)))
                           '#t)
                      _%$obj118279%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118279%_)))))
               (_%h118284%_ _%h118282%_))
          (__hash-get _%h118284%_ _%key118276%_))))
    (define __hash-get
      (lambda (_%h118262%_ _%key118263%_)
        (let ((_%h118266%_ _%h118262%_))
          (&HashTable-ref _%h118266%_ _%key118263%_ '#f))))
    (define hash-put!
      (lambda (_%h118242%_ _%key118243%_ _%value118244%_)
        (let* ((_%h118250%_
                (let ((_%$obj118247%_ _%h118242%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118247%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118247%_)))
                           '#t)
                      _%$obj118247%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118247%_)))))
               (_%h118252%_ _%h118250%_))
          (__hash-put! _%h118252%_ _%key118243%_ _%value118244%_))))
    (define __hash-put!
      (lambda (_%h118228%_ _%key118229%_ _%value118230%_)
        (let ((_%h118233%_ _%h118228%_))
          (&HashTable-set! _%h118233%_ _%key118229%_ _%value118230%_))))
    (define hash-update!__%
      (lambda (_%h118193%_ _%key118194%_ _%update118195%_ _%default118196%_)
        (let* ((_%h118202%_
                (let ((_%$obj118199%_ _%h118193%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118199%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118199%_)))
                           '#t)
                      _%$obj118199%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118199%_)))))
               (_%h118204%_ _%h118202%_))
          (__hash-update!__%
           _%h118204%_
           _%key118194%_
           _%update118195%_
           _%default118196%_))))
    (define hash-update!__0
      (lambda (_%h118217%_ _%key118218%_ _%update118219%_)
        (let ((_%default118221%_ '#!void))
          (hash-update!__%
           _%h118217%_
           _%key118218%_
           _%update118219%_
           _%default118221%_))))
    (define hash-update!
      (lambda _g122096_
        (let ((_g122097_ (let () (declare (not safe)) (##length _g122096_))))
          (cond ((let () (declare (not safe)) (##fx= _g122097_ 3))
                 (apply hash-update!__0 _g122096_))
                ((let () (declare (not safe)) (##fx= _g122097_ 4))
                 (apply hash-update!__% _g122096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g122096_))))))
    (define __hash-update!__%
      (lambda (_%h118163%_ _%key118164%_ _%update118165%_ _%default118166%_)
        (let ((_%h118169%_ _%h118163%_))
          (HashTable-update!
           _%h118169%_
           _%key118164%_
           _%update118165%_
           _%default118166%_))))
    (define __hash-update!__0
      (lambda (_%h118181%_ _%key118182%_ _%update118183%_)
        (let ((_%default118185%_ '#!void))
          (__hash-update!__%
           _%h118181%_
           _%key118182%_
           _%update118183%_
           _%default118185%_))))
    (define __hash-update!
      (lambda _g122098_
        (let ((_g122099_ (let () (declare (not safe)) (##length _g122098_))))
          (cond ((let () (declare (not safe)) (##fx= _g122099_ 3))
                 (apply __hash-update!__0 _g122098_))
                ((let () (declare (not safe)) (##fx= _g122099_ 4))
                 (apply __hash-update!__% _g122098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g122098_))))))
    (define hash-remove!
      (lambda (_%h118143%_ _%key118144%_)
        (let* ((_%h118150%_
                (let ((_%$obj118147%_ _%h118143%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118147%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118147%_)))
                           '#t)
                      _%$obj118147%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118147%_)))))
               (_%h118152%_ _%h118150%_))
          (__hash-remove! _%h118152%_ _%key118144%_))))
    (define __hash-remove!
      (lambda (_%h118130%_ _%key118131%_)
        (let ((_%h118134%_ _%h118130%_))
          (&HashTable-delete! _%h118134%_ _%key118131%_))))
    (define hash-key?
      (lambda (_%h118111%_ _%k118112%_)
        (let* ((_%h118118%_
                (let ((_%$obj118115%_ _%h118111%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118115%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118115%_)))
                           '#t)
                      _%$obj118115%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118115%_)))))
               (_%h118120%_ _%h118118%_))
          (__hash-key? _%h118120%_ _%k118112%_))))
    (define __hash-key?
      (lambda (_%h118098%_ _%k118099%_)
        (let ((_%h118102%_ _%h118098%_))
          (not (eq? (&HashTable-ref _%h118102%_ _%k118099%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h118080%_)
        (let* ((_%h118086%_
                (let ((_%$obj118083%_ _%h118080%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118083%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118083%_)))
                           '#t)
                      _%$obj118083%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118083%_)))))
               (_%h118088%_ _%h118086%_))
          (__hash->list _%h118088%_))))
    (define __hash->list
      (lambda (_%h118063%_)
        (let* ((_%h118066%_ _%h118063%_) (_%lst118075%_ '()))
          (&HashTable-for-each
           _%h118066%_
           (lambda (_%k118077%_ _%v118078%_)
             (set! _%lst118075%_
                   (cons (cons _%k118077%_ _%v118078%_) _%lst118075%_))))
          _%lst118075%_)))
    (define hash->plist
      (lambda (_%h118045%_)
        (let* ((_%h118051%_
                (let ((_%$obj118048%_ _%h118045%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118048%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118048%_)))
                           '#t)
                      _%$obj118048%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118048%_)))))
               (_%h118053%_ _%h118051%_))
          (__hash->plist _%h118053%_))))
    (define __hash->plist
      (lambda (_%h118028%_)
        (let* ((_%h118031%_ _%h118028%_) (_%lst118040%_ '()))
          (&HashTable-for-each
           _%h118031%_
           (lambda (_%k118042%_ _%v118043%_)
             (set! _%lst118040%_
                   (cons _%k118042%_ (cons _%v118043%_ _%lst118040%_)))))
          _%lst118040%_)))
    (define hash-for-each
      (lambda (_%proc117999%_ _%h118000%_)
        (if (procedure? _%proc117999%_)
            (let* ((_%proc118004%_ _%proc117999%_)
                   (_%h118016%_
                    (let ((_%$obj118013%_ _%h118000%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj118013%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj118013%_)))
                               '#t)
                          _%$obj118013%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj118013%_)))))
                   (_%h118018%_ _%h118016%_))
              (__hash-for-each _%proc118004%_ _%h118018%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc117999%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc117978%_ _%h117979%_)
        (let* ((_%proc117982%_ _%proc117978%_) (_%h117990%_ _%h117979%_))
          (&HashTable-for-each _%h117990%_ _%proc117982%_))))
    (define hash-map
      (lambda (_%proc117949%_ _%h117950%_)
        (if (procedure? _%proc117949%_)
            (let* ((_%proc117954%_ _%proc117949%_)
                   (_%h117966%_
                    (let ((_%$obj117963%_ _%h117950%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj117963%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj117963%_)))
                               '#t)
                          _%$obj117963%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj117963%_)))))
                   (_%h117968%_ _%h117966%_))
              (__hash-map _%proc117954%_ _%h117968%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc117949%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc117923%_ _%h117924%_)
        (let* ((_%proc117927%_ _%proc117923%_)
               (_%h117935%_ _%h117924%_)
               (_%result117944%_ '()))
          (&HashTable-for-each
           _%h117935%_
           (lambda (_%k117946%_ _%v117947%_)
             (set! _%result117944%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc117927%_ _%k117946%_ _%v117947%_))
                         _%result117944%_))))
          _%result117944%_)))
    (define hash-fold
      (lambda (_%proc117893%_ _%iv117894%_ _%h117895%_)
        (if (procedure? _%proc117893%_)
            (let* ((_%proc117899%_ _%proc117893%_)
                   (_%h117911%_
                    (let ((_%$obj117908%_ _%h117895%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj117908%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj117908%_)))
                               '#t)
                          _%$obj117908%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj117908%_)))))
                   (_%h117913%_ _%h117911%_))
              (__hash-fold _%proc117899%_ _%iv117894%_ _%h117913%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc117893%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc117866%_ _%iv117867%_ _%h117868%_)
        (let* ((_%proc117871%_ _%proc117866%_)
               (_%h117879%_ _%h117868%_)
               (_%result117888%_ _%iv117867%_))
          (&HashTable-for-each
           _%h117879%_
           (lambda (_%k117890%_ _%v117891%_)
             (set! _%result117888%_
                   (let ()
                     (declare (not safe))
                     (_%proc117871%_
                      _%k117890%_
                      _%v117891%_
                      _%result117888%_)))))
          _%result117888%_)))
    (define hash-find__%
      (lambda (_%proc117824%_ _%h117825%_ _%default-value117826%_)
        (if (procedure? _%proc117824%_)
            (let* ((_%proc117830%_ _%proc117824%_)
                   (_%h117842%_
                    (let ((_%$obj117839%_ _%h117825%_))
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
              (__hash-find__%
               _%proc117830%_
               _%h117844%_
               _%default-value117826%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc117824%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc117857%_ _%h117858%_)
        (let ((_%default-value117860%_ '#f))
          (hash-find__% _%proc117857%_ _%h117858%_ _%default-value117860%_))))
    (define hash-find
      (lambda _g122100_
        (let ((_g122101_ (let () (declare (not safe)) (##length _g122100_))))
          (cond ((let () (declare (not safe)) (##fx= _g122101_ 2))
                 (apply hash-find__0 _g122100_))
                ((let () (declare (not safe)) (##fx= _g122101_ 3))
                 (apply hash-find__% _g122100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g122100_))))))
    (define __hash-find__%
      (lambda (_%proc117781%_ _%h117782%_ _%default-value117783%_)
        (let* ((_%proc117786%_ _%proc117781%_)
               (_%h117794%_ _%h117782%_)
               (__tmp122102
                (lambda (_%return117803%_)
                  (&HashTable-for-each
                   _%h117794%_
                   (lambda (_%k117805%_ _%v117806%_)
                     (let ((_%$e117808%_
                            (let ()
                              (declare (not safe))
                              (_%proc117786%_ _%k117805%_ _%v117806%_))))
                       (if _%$e117808%_
                           (_%return117803%_ _%$e117808%_)
                           '#!void))))
                  _%default-value117783%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp122102))))
    (define __hash-find__0
      (lambda (_%proc117814%_ _%h117815%_)
        (let ((_%default-value117817%_ '#f))
          (__hash-find__%
           _%proc117814%_
           _%h117815%_
           _%default-value117817%_))))
    (define __hash-find
      (lambda _g122103_
        (let ((_g122104_ (let () (declare (not safe)) (##length _g122103_))))
          (cond ((let () (declare (not safe)) (##fx= _g122104_ 2))
                 (apply __hash-find__0 _g122103_))
                ((let () (declare (not safe)) (##fx= _g122104_ 3))
                 (apply __hash-find__% _g122103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g122103_))))))
    (define hash-keys
      (lambda (_%h117762%_)
        (let* ((_%h117768%_
                (let ((_%$obj117765%_ _%h117762%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117765%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117765%_)))
                           '#t)
                      _%$obj117765%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117765%_)))))
               (_%h117770%_ _%h117768%_))
          (__hash-keys _%h117770%_))))
    (define __hash-keys
      (lambda (_%h117745%_)
        (let* ((_%h117748%_ _%h117745%_) (_%result117757%_ '()))
          (&HashTable-for-each
           _%h117748%_
           (lambda (_%k117759%_ _%v117760%_)
             (set! _%result117757%_ (cons _%k117759%_ _%result117757%_))))
          _%result117757%_)))
    (define hash-values
      (lambda (_%h117727%_)
        (let* ((_%h117733%_
                (let ((_%$obj117730%_ _%h117727%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117730%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117730%_)))
                           '#t)
                      _%$obj117730%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117730%_)))))
               (_%h117735%_ _%h117733%_))
          (__hash-values _%h117735%_))))
    (define __hash-values
      (lambda (_%h117710%_)
        (let* ((_%h117713%_ _%h117710%_) (_%result117722%_ '()))
          (&HashTable-for-each
           _%h117713%_
           (lambda (_%k117724%_ _%v117725%_)
             (set! _%result117722%_ (cons _%v117725%_ _%result117722%_))))
          _%result117722%_)))
    (define hash-copy
      (lambda (_%h117692%_)
        (let* ((_%h117698%_
                (let ((_%$obj117695%_ _%h117692%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117695%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117695%_)))
                           '#t)
                      _%$obj117695%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117695%_)))))
               (_%h117700%_ _%h117698%_))
          (__hash-copy _%h117700%_))))
    (define __hash-copy
      (lambda (_%h117680%_)
        (let ((_%h117683%_ _%h117680%_)) (__HashTable-copy _%h117683%_))))
    (define hash-clear!
      (lambda (_%h117662%_)
        (let* ((_%h117668%_
                (let ((_%$obj117665%_ _%h117662%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117665%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117665%_)))
                           '#t)
                      _%$obj117665%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117665%_)))))
               (_%h117670%_ _%h117668%_))
          (__hash-clear! _%h117670%_))))
    (define __hash-clear!
      (lambda (_%h117650%_)
        (let ((_%h117653%_ _%h117650%_)) (&HashTable-clear! _%h117653%_))))
    (define hash-merge
      (lambda (_%h117631%_ . _%rest117632%_)
        (let* ((_%h117638%_
                (let ((_%$obj117635%_ _%h117631%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117635%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117635%_)))
                           '#t)
                      _%$obj117635%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117635%_)))))
               (_%h117640%_ _%h117638%_))
          (declare (not safe))
          (##apply __hash-merge _%h117640%_ _%rest117632%_))))
    (define __hash-merge
      (lambda (_%h117616%_ . _%rest117617%_)
        (let* ((_%h117620%_ _%h117616%_)
               (_%copy117629%_ (__HashTable-copy _%h117620%_)))
          (apply hash-merge! _%copy117629%_ _%rest117617%_)
          _%copy117629%_)))
    (define hash-merge-right
      (lambda (_%h117597%_ . _%rest117598%_)
        (let* ((_%h117604%_
                (let ((_%$obj117601%_ _%h117597%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117601%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117601%_)))
                           '#t)
                      _%$obj117601%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117601%_)))))
               (_%h117606%_ _%h117604%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h117606%_ _%rest117598%_))))
    (define __hash-merge-right
      (lambda (_%h117582%_ . _%rest117583%_)
        (let* ((_%h117586%_ _%h117582%_)
               (_%copy117595%_ (__HashTable-copy _%h117586%_)))
          (apply hash-merge-right! _%copy117595%_ _%rest117583%_)
          _%copy117595%_)))
    (define hash-merge!
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
          (##apply __hash-merge! _%h117572%_ _%rest117564%_))))
    (define __hash-merge!
      (lambda (_%h117526%_ . _%rest117527%_)
        (let ((_%h117530%_ _%h117526%_))
          (let ((__tmp122105
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
                        (if (__hash-key? _%h117530%_ _%k117560%_)
                            '#!void
                            (&HashTable-set!
                             _%h117530%_
                             _%k117560%_
                             _%v117561%_))))))))
            (declare (not safe))
            (##for-each __tmp122105 _%rest117527%_))
          _%h117530%_)))
    (define hash-merge-right!
      (lambda (_%h117507%_ . _%rest117508%_)
        (let* ((_%h117514%_
                (let ((_%$obj117511%_ _%h117507%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117511%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117511%_)))
                           '#t)
                      _%$obj117511%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117511%_)))))
               (_%h117516%_ _%h117514%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h117516%_ _%rest117508%_))))
    (define __hash-merge-right!
      (lambda (_%h117470%_ . _%rest117471%_)
        (let ((_%h117474%_ _%h117470%_))
          (let ((__tmp122106
                 (lambda (_%hr117483%_)
                   (let* ((_%hr117489%_
                           (let ((_%$obj117486%_ _%hr117483%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj117486%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj117486%_)))
                                      '#t)
                                 _%$obj117486%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj117486%_)))))
                          (_%hr117491%_ _%hr117489%_))
                     (&HashTable-for-each
                      _%hr117491%_
                      (lambda (_%k117504%_ _%v117505%_)
                        (&HashTable-set!
                         _%h117474%_
                         _%k117504%_
                         _%v117505%_)))))))
            (declare (not safe))
            (##for-each __tmp122106 _%rest117471%_))
          _%h117474%_)))))
