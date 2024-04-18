(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1713454410)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp108802 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp108802
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args108782%_
        (apply make-instance UnboundKeyError::t _%$args108782%_)))
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
      (lambda (_%where108656%_ _%message108657%_ . _%irritants108658%_)
        (let ((__tmp108803
               (let ((__obj108796
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj108796
                    _%message108657%_
                    'where:
                    _%where108656%_
                    'irritants:
                    _%irritants108658%_))
                 __obj108796)))
          (declare (not safe))
          (raise __tmp108803))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp108804 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp108804
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ()
        (declare (not safe))
        (##structure
         interface-descriptor::t
         HashTable::t
         '(clear! copy delete! for-each length ref set! update!))))
    (define make-HashTable
      (lambda (_%obj108654%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj108654%_))))
    (define try-HashTable
      (lambda (_%obj108652%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj108652%_))))
    (define HashTable?
      (lambda (_%obj108650%_)
        (let ((__tmp108805
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj108650%_ __tmp108805))))
    (define is-HashTable?
      (lambda (_%obj108648%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj108648%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self108632%_)
        (let* ((_%self108637%_
                (let ((_%$obj108634%_ _%self108632%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108634%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108634%_)))
                           '#t)
                      _%$obj108634%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108634%_)))))
               (_%self108639%_ _%self108637%_))
          (&HashTable-clear! _%self108639%_))))
    (define &HashTable-clear!
      (lambda (_%self108617%_)
        (let ((_%self108619%_ _%self108617%_))
          (declare (not safe))
          (let ((_%obj108629%_
                 (##unchecked-structure-ref _%self108619%_ '1 '#f 'clear!))
                (_%f108630%_
                 (##unchecked-structure-ref _%self108619%_ '2 '#f 'clear!)))
            (_%f108630%_ _%obj108629%_)))))
    (define HashTable-copy
      (lambda (_%self108601%_)
        (let* ((_%self108606%_
                (let ((_%$obj108603%_ _%self108601%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108603%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108603%_)))
                           '#t)
                      _%$obj108603%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108603%_)))))
               (_%self108608%_ _%self108606%_))
          (__HashTable-copy _%self108608%_))))
    (define __HashTable-copy
      (lambda (_%self108588%_)
        (let* ((_%self108590%_ _%self108588%_)
               (_%$obj108598%_ (&HashTable-copy _%self108590%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj108598%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj108598%_)))
                   '#t)
              _%$obj108598%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj108598%_))))))
    (define &HashTable-copy
      (lambda (_%self108573%_)
        (let ((_%self108575%_ _%self108573%_))
          (declare (not safe))
          (let ((_%obj108585%_
                 (##unchecked-structure-ref _%self108575%_ '1 '#f 'copy))
                (_%f108586%_
                 (##unchecked-structure-ref _%self108575%_ '3 '#f 'copy)))
            (_%f108586%_ _%obj108585%_)))))
    (define HashTable-delete!
      (lambda (_%self108556%_ _%key108557%_)
        (let* ((_%self108562%_
                (let ((_%$obj108559%_ _%self108556%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108559%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108559%_)))
                           '#t)
                      _%$obj108559%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108559%_)))))
               (_%self108564%_ _%self108562%_))
          (&HashTable-delete! _%self108564%_ _%key108557%_))))
    (define &HashTable-delete!
      (lambda (_%self108540%_ _%key108541%_)
        (let ((_%self108543%_ _%self108540%_))
          (declare (not safe))
          (let ((_%obj108553%_
                 (##unchecked-structure-ref _%self108543%_ '1 '#f 'delete!))
                (_%f108554%_
                 (##unchecked-structure-ref _%self108543%_ '4 '#f 'delete!)))
            (_%f108554%_ _%obj108553%_ _%key108541%_)))))
    (define HashTable-for-each
      (lambda (_%self108513%_ _%proc108514%_)
        (let* ((_%self108519%_
                (let ((_%$obj108516%_ _%self108513%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108516%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108516%_)))
                           '#t)
                      _%$obj108516%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108516%_)))))
               (_%self108521%_ _%self108519%_))
          (if (procedure? _%proc108514%_)
              (let ((_%proc108530%_ _%proc108514%_))
                (&HashTable-for-each _%self108521%_ _%proc108530%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc108514%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self108489%_ _%proc108490%_)
        (let* ((_%self108492%_ _%self108489%_) (_%proc108499%_ _%proc108490%_))
          (declare (not safe))
          (let ((_%obj108510%_
                 (##unchecked-structure-ref _%self108492%_ '1 '#f 'for-each))
                (_%f108511%_
                 (##unchecked-structure-ref _%self108492%_ '5 '#f 'for-each)))
            (_%f108511%_ _%obj108510%_ _%proc108499%_)))))
    (define HashTable-length
      (lambda (_%self108473%_)
        (let* ((_%self108478%_
                (let ((_%$obj108475%_ _%self108473%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108475%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108475%_)))
                           '#t)
                      _%$obj108475%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108475%_)))))
               (_%self108480%_ _%self108478%_))
          (__HashTable-length _%self108480%_))))
    (define __HashTable-length
      (lambda (_%self108460%_)
        (let* ((_%self108462%_ _%self108460%_)
               (_%val108470%_ (&HashTable-length _%self108462%_)))
          _%val108470%_)))
    (define &HashTable-length
      (lambda (_%self108445%_)
        (let ((_%self108447%_ _%self108445%_))
          (declare (not safe))
          (let ((_%obj108457%_
                 (##unchecked-structure-ref _%self108447%_ '1 '#f 'length))
                (_%f108458%_
                 (##unchecked-structure-ref _%self108447%_ '6 '#f 'length)))
            (_%f108458%_ _%obj108457%_)))))
    (define HashTable-ref
      (lambda (_%self108427%_ _%key108428%_ _%default108429%_)
        (let* ((_%self108434%_
                (let ((_%$obj108431%_ _%self108427%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108431%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108431%_)))
                           '#t)
                      _%$obj108431%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108431%_)))))
               (_%self108436%_ _%self108434%_))
          (&HashTable-ref _%self108436%_ _%key108428%_ _%default108429%_))))
    (define &HashTable-ref
      (lambda (_%self108410%_ _%key108411%_ _%default108412%_)
        (let ((_%self108414%_ _%self108410%_))
          (declare (not safe))
          (let ((_%obj108424%_
                 (##unchecked-structure-ref _%self108414%_ '1 '#f 'ref))
                (_%f108425%_
                 (##unchecked-structure-ref _%self108414%_ '7 '#f 'ref)))
            (_%f108425%_ _%obj108424%_ _%key108411%_ _%default108412%_)))))
    (define HashTable-set!
      (lambda (_%self108392%_ _%key108393%_ _%value108394%_)
        (let* ((_%self108399%_
                (let ((_%$obj108396%_ _%self108392%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108396%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108396%_)))
                           '#t)
                      _%$obj108396%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108396%_)))))
               (_%self108401%_ _%self108399%_))
          (&HashTable-set! _%self108401%_ _%key108393%_ _%value108394%_))))
    (define &HashTable-set!
      (lambda (_%self108375%_ _%key108376%_ _%value108377%_)
        (let ((_%self108379%_ _%self108375%_))
          (declare (not safe))
          (let ((_%obj108389%_
                 (##unchecked-structure-ref _%self108379%_ '1 '#f 'set!))
                (_%f108390%_
                 (##unchecked-structure-ref _%self108379%_ '8 '#f 'set!)))
            (_%f108390%_ _%obj108389%_ _%key108376%_ _%value108377%_)))))
    (define HashTable-update!
      (lambda (_%self108346%_ _%key108347%_ _%proc108348%_ _%default108349%_)
        (let* ((_%self108354%_
                (let ((_%$obj108351%_ _%self108346%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108351%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108351%_)))
                           '#t)
                      _%$obj108351%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108351%_)))))
               (_%self108356%_ _%self108354%_))
          (if (procedure? _%proc108348%_)
              (let ((_%proc108365%_ _%proc108348%_))
                (&HashTable-update!
                 _%self108356%_
                 _%key108347%_
                 _%proc108365%_
                 _%default108349%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc108348%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self108318%_ _%key108319%_ _%proc108320%_ _%default108321%_)
        (let* ((_%self108323%_ _%self108318%_) (_%proc108330%_ _%proc108320%_))
          (declare (not safe))
          (let ((_%obj108341%_
                 (##unchecked-structure-ref _%self108323%_ '1 '#f 'update!))
                (_%f108343%_
                 (##unchecked-structure-ref _%self108323%_ '9 '#f 'update!)))
            (_%f108343%_
             _%obj108341%_
             _%key108319%_
             _%proc108330%_
             _%default108321%_)))))
    (define Locker::t
      (let ((__tmp108806 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp108806
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ()
        (declare (not safe))
        (##structure
         interface-descriptor::t
         Locker::t
         '(read-lock! read-unlock! write-lock! write-unlock!))))
    (define make-Locker
      (lambda (_%obj108316%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj108316%_))))
    (define try-Locker
      (lambda (_%obj108314%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj108314%_))))
    (define Locker?
      (lambda (_%obj108312%_)
        (let ((__tmp108807
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj108312%_ __tmp108807))))
    (define is-Locker?
      (lambda (_%obj108310%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj108310%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self108294%_)
        (let* ((_%self108299%_
                (let ((_%$obj108296%_ _%self108294%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108296%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108296%_)))
                           '#t)
                      _%$obj108296%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj108296%_)))))
               (_%self108301%_ _%self108299%_))
          (&Locker-read-lock! _%self108301%_))))
    (define &Locker-read-lock!
      (lambda (_%self108279%_)
        (let ((_%self108281%_ _%self108279%_))
          (declare (not safe))
          (let ((_%obj108291%_
                 (##unchecked-structure-ref _%self108281%_ '1 '#f 'read-lock!))
                (_%f108292%_
                 (##unchecked-structure-ref
                  _%self108281%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f108292%_ _%obj108291%_)))))
    (define Locker-read-unlock!
      (lambda (_%self108263%_)
        (let* ((_%self108268%_
                (let ((_%$obj108265%_ _%self108263%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108265%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108265%_)))
                           '#t)
                      _%$obj108265%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj108265%_)))))
               (_%self108270%_ _%self108268%_))
          (&Locker-read-unlock! _%self108270%_))))
    (define &Locker-read-unlock!
      (lambda (_%self108248%_)
        (let ((_%self108250%_ _%self108248%_))
          (declare (not safe))
          (let ((_%obj108260%_
                 (##unchecked-structure-ref
                  _%self108250%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f108261%_
                 (##unchecked-structure-ref
                  _%self108250%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f108261%_ _%obj108260%_)))))
    (define Locker-write-lock!
      (lambda (_%self108232%_)
        (let* ((_%self108237%_
                (let ((_%$obj108234%_ _%self108232%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108234%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108234%_)))
                           '#t)
                      _%$obj108234%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj108234%_)))))
               (_%self108239%_ _%self108237%_))
          (&Locker-write-lock! _%self108239%_))))
    (define &Locker-write-lock!
      (lambda (_%self108217%_)
        (let ((_%self108219%_ _%self108217%_))
          (declare (not safe))
          (let ((_%obj108229%_
                 (##unchecked-structure-ref
                  _%self108219%_
                  '1
                  '#f
                  'write-lock!))
                (_%f108230%_
                 (##unchecked-structure-ref
                  _%self108219%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f108230%_ _%obj108229%_)))))
    (define Locker-write-unlock!
      (lambda (_%self108201%_)
        (let* ((_%self108206%_
                (let ((_%$obj108203%_ _%self108201%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108203%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108203%_)))
                           '#t)
                      _%$obj108203%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj108203%_)))))
               (_%self108208%_ _%self108206%_))
          (&Locker-write-unlock! _%self108208%_))))
    (define &Locker-write-unlock!
      (lambda (_%self108184%_)
        (let ((_%self108186%_ _%self108184%_))
          (declare (not safe))
          (let ((_%obj108196%_
                 (##unchecked-structure-ref
                  _%self108186%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f108198%_
                 (##unchecked-structure-ref
                  _%self108186%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f108198%_ _%obj108196%_)))))
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
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'ref gc-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'set! gc-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'update! gc-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'delete! gc-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'for-each gc-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'length gc-table-length))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'copy gc-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'clear! gc-table-clear!))
    (define gambit-table-update!
      (lambda (_%table108177%_
               _%key108178%_
               _%update108179%_
               _%default108180%_)
        (let ((_%result108182%_
               (table-ref _%table108177%_ _%key108178%_ _%default108180%_)))
          (table-set!
           _%table108177%_
           _%key108178%_
           (_%update108179%_ _%default108180%_)))))
    (define gambit-table-for-each
      (lambda (_%table108174%_ _%proc108175%_)
        (table-for-each _%proc108175%_ _%table108174%_)))
    (define gambit-table-clear!
      (lambda (_%table108172%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table108172%_ '0 '5 '#f '#f))))
    (let ((__tmp108808 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108808 'ref table-ref))
    (let ((__tmp108809 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108809 'set! table-set!))
    (let ((__tmp108810 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108810 'update! gambit-table-update!))
    (let ((__tmp108811 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108811 'delete! table-set!))
    (let ((__tmp108812 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108812 'for-each gambit-table-for-each))
    (let ((__tmp108813 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108813 'length table-length))
    (let ((__tmp108814 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108814 'copy table-copy))
    (let ((__tmp108815 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108815 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots108154%_ '(table count free hash test seed))
             (_%slot-vector108156%_ (list->vector (cons '#f _%slots108154%_)))
             (_%slot-table108163%_
              (let ((_%slot-table108158%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp108818
                       (lambda (_%slot108160%_ _%field108161%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table108158%_
                            _%slot108160%_
                            _%field108161%_))
                         (let ((__tmp108819
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot108160%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table108158%_
                            __tmp108819
                            _%field108161%_))))
                      (__tmp108816
                       (let ((__tmp108817
                              (let ()
                                (declare (not safe))
                                (##length _%slots108154%_))))
                         (declare (not safe))
                         (##iota __tmp108817 '1))))
                  (declare (not safe))
                  (##for-each __tmp108818 _%slots108154%_ __tmp108816))
                _%slot-table108158%_))
             (_%flags108165%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields108167%_ '#())
             (_%properties108169%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots108154%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp108820 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags108165%_
         __table::t
         _%fields108167%_
         __tmp108820
         _%slot-vector108156%_
         _%slot-table108163%_
         _%properties108169%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots108136%_ '(gcht immediate))
             (_%slot-vector108138%_ (list->vector (cons '#f _%slots108136%_)))
             (_%slot-table108145%_
              (let ((_%slot-table108140%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp108823
                       (lambda (_%slot108142%_ _%field108143%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table108140%_
                            _%slot108142%_
                            _%field108143%_))
                         (let ((__tmp108824
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot108142%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table108140%_
                            __tmp108824
                            _%field108143%_))))
                      (__tmp108821
                       (let ((__tmp108822
                              (let ()
                                (declare (not safe))
                                (##length _%slots108136%_))))
                         (declare (not safe))
                         (##iota __tmp108822 '1))))
                  (declare (not safe))
                  (##for-each __tmp108823 _%slots108136%_ __tmp108821))
                _%slot-table108140%_))
             (_%flags108147%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields108149%_ '#())
             (_%properties108151%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots108136%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp108825 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags108147%_
         __gc-table::t
         _%fields108149%_
         __tmp108825
         _%slot-vector108138%_
         _%slot-table108145%_
         _%properties108151%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp108827 (list))
            (__tmp108826
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp108827
         '(table lock)
         __tmp108826
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args108133%_
        (apply make-instance locked-hash-table::t _%$args108133%_)))
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
      (let ((__tmp108829 (list))
            (__tmp108828
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp108829
         '(table key-check)
         __tmp108828
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args108130%_
        (apply make-instance checked-hash-table::t _%$args108130%_)))
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
      (let ((__tmp108831 (list hash-table::t))
            (__tmp108830 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp108831
         '()
         __tmp108830
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args108127%_
        (apply make-instance eq-hash-table::t _%$args108127%_)))
    (define eqv-hash-table::t
      (let ((__tmp108833 (list hash-table::t))
            (__tmp108832 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp108833
         '()
         __tmp108832
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args108124%_
        (apply make-instance eqv-hash-table::t _%$args108124%_)))
    (define symbol-hash-table::t
      (let ((__tmp108835 (list hash-table::t))
            (__tmp108834 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp108835
         '()
         __tmp108834
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args108121%_
        (apply make-instance symbol-hash-table::t _%$args108121%_)))
    (define string-hash-table::t
      (let ((__tmp108837 (list hash-table::t))
            (__tmp108836 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp108837
         '()
         __tmp108836
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args108118%_
        (apply make-instance string-hash-table::t _%$args108118%_)))
    (define immediate-hash-table::t
      (let ((__tmp108839 (list hash-table::t))
            (__tmp108838 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp108839
         '()
         __tmp108838
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args108115%_
        (apply make-instance immediate-hash-table::t _%$args108115%_)))
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
    (let ()
      (declare (not safe))
      (bind-method!__0 immediate-hash-table::t 'ref immediate-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 immediate-hash-table::t 'set! immediate-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       immediate-hash-table::t
       'update!
       immediate-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       immediate-hash-table::t
       'delete!
       immediate-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'ref gc-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'set! gc-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'update! gc-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'delete! gc-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'for-each gc-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'length gc-table-length))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'copy gc-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'clear! gc-table-clear!))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::ref104115%_
      (lambda (_%self104114108089%_ _%key108091%_ _%default108092%_)
        (let* ((_%self108094%_ _%self104114108089%_)
               (_%self108097%_ _%self108094%_))
          (let ((_%h108107%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108097%_ '1 '#f '#f)))
                (_%l108109%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self108097%_ '2 '#f '#f))))
            (let ((__tmp108842 (lambda () (&Locker-read-lock! _%l108109%_)))
                  (__tmp108841
                   (lambda ()
                     (&HashTable-ref
                      _%h108107%_
                      _%key108091%_
                      _%default108092%_)))
                  (__tmp108840 (lambda () (&Locker-read-unlock! _%l108109%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108842 __tmp108841 __tmp108840))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref104115%_
       '#f))
    (define _%locked-hash-table::set!104118%_
      (lambda (_%self104117107940%_ _%key107942%_ _%value107943%_)
        (let* ((_%self107945%_ _%self104117107940%_)
               (_%self107948%_ _%self107945%_))
          (let ((_%h107958%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107948%_ '1 '#f '#f)))
                (_%l107960%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107948%_ '2 '#f '#f))))
            (let ((__tmp108845 (lambda () (&Locker-write-lock! _%l107960%_)))
                  (__tmp108844
                   (lambda ()
                     (&HashTable-set!
                      _%h107958%_
                      _%key107942%_
                      _%value107943%_)))
                  (__tmp108843
                   (lambda () (&Locker-write-unlock! _%l107960%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108845 __tmp108844 __tmp108843))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!104118%_
       '#f))
    (define _%locked-hash-table::update!104121%_
      (lambda (_%self104120107790%_
               _%key107792%_
               _%update107793%_
               _%default107794%_)
        (let* ((_%self107796%_ _%self104120107790%_)
               (_%self107799%_ _%self107796%_))
          (let ((_%h107809%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107799%_ '1 '#f '#f)))
                (_%l107811%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107799%_ '2 '#f '#f))))
            (let ((__tmp108848 (lambda () (&Locker-write-lock! _%l107811%_)))
                  (__tmp108847
                   (lambda ()
                     (&HashTable-update!
                      _%h107809%_
                      _%key107792%_
                      _%update107793%_
                      _%default107794%_)))
                  (__tmp108846
                   (lambda () (&Locker-write-unlock! _%l107811%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108848 __tmp108847 __tmp108846))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!104121%_
       '#f))
    (define _%locked-hash-table::delete!104124%_
      (lambda (_%self104123107642%_ _%key107644%_)
        (let* ((_%self107646%_ _%self104123107642%_)
               (_%self107649%_ _%self107646%_))
          (let ((_%h107659%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107649%_ '1 '#f '#f)))
                (_%l107661%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107649%_ '2 '#f '#f))))
            (let ((__tmp108851 (lambda () (&Locker-write-lock! _%l107661%_)))
                  (__tmp108850
                   (lambda () (&HashTable-delete! _%h107659%_ _%key107644%_)))
                  (__tmp108849
                   (lambda () (&Locker-write-unlock! _%l107661%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108851 __tmp108850 __tmp108849))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!104124%_
       '#f))
    (define _%locked-hash-table::for-each104127%_
      (lambda (_%self104126107494%_ _%proc107496%_)
        (let* ((_%self107498%_ _%self104126107494%_)
               (_%self107501%_ _%self107498%_))
          (let ((_%h107511%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107501%_ '1 '#f '#f)))
                (_%l107513%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107501%_ '2 '#f '#f))))
            (let ((__tmp108854 (lambda () (&Locker-read-lock! _%l107513%_)))
                  (__tmp108853
                   (lambda ()
                     (&HashTable-for-each _%h107511%_ _%proc107496%_)))
                  (__tmp108852 (lambda () (&Locker-read-unlock! _%l107513%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108854 __tmp108853 __tmp108852))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each104127%_
       '#f))
    (define _%locked-hash-table::length104130%_
      (lambda (_%self104129107347%_)
        (let* ((_%self107350%_ _%self104129107347%_)
               (_%self107353%_ _%self107350%_))
          (let ((_%h107363%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107353%_ '1 '#f '#f)))
                (_%l107365%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107353%_ '2 '#f '#f))))
            (let ((__tmp108857 (lambda () (&Locker-read-lock! _%l107365%_)))
                  (__tmp108856 (lambda () (&HashTable-length _%h107363%_)))
                  (__tmp108855 (lambda () (&Locker-read-unlock! _%l107365%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108857 __tmp108856 __tmp108855))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'length
       _%locked-hash-table::length104130%_
       '#f))
    (define _%locked-hash-table::copy104133%_
      (lambda (_%self104132107200%_)
        (let* ((_%self107203%_ _%self104132107200%_)
               (_%self107206%_ _%self107203%_))
          (let ((_%h107216%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107206%_ '1 '#f '#f)))
                (_%l107218%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107206%_ '2 '#f '#f))))
            (let ((__tmp108860 (lambda () (&Locker-read-lock! _%l107218%_)))
                  (__tmp108859 (lambda () (&HashTable-copy _%h107216%_)))
                  (__tmp108858 (lambda () (&Locker-read-unlock! _%l107218%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108860 __tmp108859 __tmp108858))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy104133%_
       '#f))
    (define _%locked-hash-table::clear!104136%_
      (lambda (_%self104135107053%_)
        (let* ((_%self107056%_ _%self104135107053%_)
               (_%self107059%_ _%self107056%_))
          (let ((_%h107069%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107059%_ '1 '#f '#f)))
                (_%l107071%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107059%_ '2 '#f '#f))))
            (let ((__tmp108863 (lambda () (&Locker-write-lock! _%l107071%_)))
                  (__tmp108862 (lambda () (&HashTable-clear! _%h107069%_)))
                  (__tmp108861
                   (lambda () (&Locker-write-unlock! _%l107071%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108863 __tmp108862 __tmp108861))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!104136%_
       '#f))
    (let ((__tmp108864 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108864 'read-lock! mutex-lock!))
    (let ((__tmp108865 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108865 'read-unlock! mutex-unlock!))
    (let ((__tmp108866 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108866 'write-lock! mutex-lock!))
    (let ((__tmp108867 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108867 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref104350%_
      (lambda (_%self104349106903%_ _%key106905%_ _%default106906%_)
        (let* ((_%self106908%_ _%self104349106903%_)
               (_%self106910%_ _%self106908%_))
          (declare (not safe))
          (let ((_%h106921%_
                 (##unchecked-structure-ref _%self106910%_ '1 '#f '#f))
                (_%key?106923%_
                 (##unchecked-structure-ref _%self106910%_ '2 '#f '#f)))
            (if ((lambda (_%key?106926%_ _%key106927%_ _%default106928%_)
                   (_%key?106926%_ _%key106927%_))
                 _%key?106923%_
                 _%key106905%_
                 _%default106906%_)
                (&HashTable-ref _%h106921%_ _%key106905%_ _%default106906%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key106905%_ (cons _%default106906%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref104350%_
       '#f))
    (define _%checked-hash-table::set!104353%_
      (lambda (_%self104352106753%_ _%key106755%_ _%value106756%_)
        (let* ((_%self106758%_ _%self104352106753%_)
               (_%self106760%_ _%self106758%_))
          (declare (not safe))
          (let ((_%h106771%_
                 (##unchecked-structure-ref _%self106760%_ '1 '#f '#f))
                (_%key?106773%_
                 (##unchecked-structure-ref _%self106760%_ '2 '#f '#f)))
            (if ((lambda (_%key?106776%_ _%key106777%_ _%value106778%_)
                   (_%key?106776%_ _%key106777%_))
                 _%key?106773%_
                 _%key106755%_
                 _%value106756%_)
                (&HashTable-set! _%h106771%_ _%key106755%_ _%value106756%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key106755%_ (cons _%value106756%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!104353%_
       '#f))
    (define _%checked-hash-table::update!104356%_
      (lambda (_%self104355106601%_
               _%key106603%_
               _%update106604%_
               _%default106605%_)
        (let* ((_%self106607%_ _%self104355106601%_)
               (_%self106609%_ _%self106607%_))
          (declare (not safe))
          (let ((_%h106620%_
                 (##unchecked-structure-ref _%self106609%_ '1 '#f '#f))
                (_%key?106622%_
                 (##unchecked-structure-ref _%self106609%_ '2 '#f '#f)))
            (if ((lambda (_%key?106625%_
                          _%key106626%_
                          _%update106627%_
                          _%default106628%_)
                   (_%key?106625%_ _%key106626%_))
                 _%key?106622%_
                 _%key106603%_
                 _%update106604%_
                 _%default106605%_)
                (&HashTable-update!
                 _%h106620%_
                 _%key106603%_
                 _%update106604%_
                 _%default106605%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key106603%_
                         (cons _%update106604%_ (cons _%default106605%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!104356%_
       '#f))
    (define _%checked-hash-table::delete!104359%_
      (lambda (_%self104358106453%_ _%key106455%_)
        (let* ((_%self106457%_ _%self104358106453%_)
               (_%self106459%_ _%self106457%_))
          (declare (not safe))
          (let ((_%h106470%_
                 (##unchecked-structure-ref _%self106459%_ '1 '#f '#f))
                (_%key?106472%_
                 (##unchecked-structure-ref _%self106459%_ '2 '#f '#f)))
            (if ((lambda (_%key?106475%_ _%key106476%_)
                   (_%key?106475%_ _%key106476%_))
                 _%key?106472%_
                 _%key106455%_)
                (&HashTable-delete! _%h106470%_ _%key106455%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key106455%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!104359%_
       '#f))
    (define _%checked-hash-table::for-each104362%_
      (lambda (_%self104361106305%_ _%proc106307%_)
        (let* ((_%self106309%_ _%self104361106305%_)
               (_%self106311%_ _%self106309%_))
          (declare (not safe))
          (let ((_%h106322%_
                 (##unchecked-structure-ref _%self106311%_ '1 '#f '#f))
                (_%key?106324%_
                 (##unchecked-structure-ref _%self106311%_ '2 '#f '#f)))
            (if ((lambda (_%key?106327%_ _%proc106328%_) '#t)
                 _%key?106324%_
                 _%proc106307%_)
                (&HashTable-for-each _%h106322%_ _%proc106307%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc106307%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each104362%_
       '#f))
    (define _%checked-hash-table::length104365%_
      (lambda (_%self104364106161%_)
        (let* ((_%self106164%_ _%self104364106161%_)
               (_%self106166%_ _%self106164%_))
          (declare (not safe))
          (let ((_%h106177%_
                 (##unchecked-structure-ref _%self106166%_ '1 '#f '#f))
                (_%key?106179%_
                 (##unchecked-structure-ref _%self106166%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h106177%_)
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
       'length
       _%checked-hash-table::length104365%_
       '#f))
    (define _%checked-hash-table::copy104368%_
      (lambda (_%self104367106017%_)
        (let* ((_%self106020%_ _%self104367106017%_)
               (_%self106022%_ _%self106020%_))
          (declare (not safe))
          (let ((_%h106033%_
                 (##unchecked-structure-ref _%self106022%_ '1 '#f '#f))
                (_%key?106035%_
                 (##unchecked-structure-ref _%self106022%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h106033%_)
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
       'copy
       _%checked-hash-table::copy104368%_
       '#f))
    (define _%checked-hash-table::clear!104371%_
      (lambda (_%self104370105873%_)
        (let* ((_%self105876%_ _%self104370105873%_)
               (_%self105878%_ _%self105876%_))
          (declare (not safe))
          (let ((_%h105889%_
                 (##unchecked-structure-ref _%self105878%_ '1 '#f '#f))
                (_%key?105891%_
                 (##unchecked-structure-ref _%self105878%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h105889%_)
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
       'clear!
       _%checked-hash-table::clear!104371%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table105743%_
               _%count105744%_
               _%free105745%_
               _%hash105746%_
               _%test105747%_
               _%seed105748%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table105743%_
           _%count105744%_
           _%free105745%_
           _%hash105746%_
           _%test105747%_
           _%seed105748%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords105504%_
               _%size-hint105494105505%_
               _%seed105495105507%_
               _%test105496105509%_
               _%hash105497105511%_
               _%lock105498105513%_
               _%check105499105515%_
               _%weak-keys105500105517%_
               _%weak-values105501105519%_)
        (let* ((_%size-hint105522%_
                (if (eq? _%size-hint105494105505%_ absent-value)
                    '#f
                    _%size-hint105494105505%_))
               (_%seed105524%_
                (if (eq? _%seed105495105507%_ absent-value)
                    '#f
                    _%seed105495105507%_))
               (_%test105526%_
                (if (eq? _%test105496105509%_ absent-value)
                    equal?
                    _%test105496105509%_))
               (_%hash105528%_
                (if (eq? _%hash105497105511%_ absent-value)
                    '#f
                    _%hash105497105511%_))
               (_%lock105530%_
                (if (eq? _%lock105498105513%_ absent-value)
                    '#f
                    _%lock105498105513%_))
               (_%check105532%_
                (if (eq? _%check105499105515%_ absent-value)
                    '#f
                    _%check105499105515%_))
               (_%weak-keys105534%_
                (if (eq? _%weak-keys105500105517%_ absent-value)
                    '#f
                    _%weak-keys105500105517%_))
               (_%weak-values105536%_
                (if (eq? _%weak-values105501105519%_ absent-value)
                    '#f
                    _%weak-values105501105519%_)))
          (letrec ((_%table-seed105539%_
                    (lambda ()
                      (if (fixnum? _%seed105524%_)
                          _%seed105524%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock105540%_
                    (lambda (_%ht105717%_)
                      (let ((_%ht105720%_ _%ht105717%_))
                        (_%__wrap-lock105541%_ _%ht105720%_))))
                   (_%__wrap-lock105541%_
                    (lambda (_%ht105699%_)
                      (let ((_%ht105702%_ _%ht105699%_))
                        (if _%lock105530%_
                            (let ((_%$obj105714%_
                                   (let ((__tmp108868
                                          (let ((_%$obj105711%_
                                                 _%lock105530%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj105711%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj105711%_)))
                                                     '#t)
                                                _%$obj105711%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj105711%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht105702%_
                                      __tmp108868))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj105714%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj105714%_)))
                                       '#t)
                                  _%$obj105714%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj105714%_))))
                            _%ht105702%_))))
                   (_%wrap-checked105542%_
                    (lambda (_%ht105686%_ _%implicit105687%_)
                      (let ((_%ht105690%_ _%ht105686%_))
                        (_%__wrap-checked105543%_
                         _%ht105690%_
                         _%implicit105687%_))))
                   (_%__wrap-checked105543%_
                    (lambda (_%ht105659%_ _%implicit105660%_)
                      (let ((_%ht105663%_ _%ht105659%_))
                        (if _%check105532%_
                            (let ((_%$obj105683%_
                                   (let ((__tmp108869
                                          (if (procedure? _%check105532%_)
                                              _%check105532%_
                                              _%implicit105660%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht105663%_
                                      __tmp108869))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj105683%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj105683%_)))
                                       '#t)
                                  _%$obj105683%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj105683%_))))
                            _%ht105663%_))))
                   (_%make105544%_
                    (lambda (_%kons105643%_
                             _%key?105644%_
                             _%hash105645%_
                             _%test105646%_)
                      (let* ((_%size105649%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint105522%_)))
                             (_%table105651%_
                              (let ((__tmp108870 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size105649%_ __tmp108870)))
                             (_%ht105656%_
                              (let ((_%$obj105653%_
                                     (_%kons105643%_
                                      _%table105651%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size105649%_ '2))
                                      _%hash105645%_
                                      _%test105646%_
                                      (_%table-seed105539%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj105653%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj105653%_)))
                                         '#t)
                                    _%$obj105653%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj105653%_))))))
                        (_%__wrap-checked105543%_
                         (_%__wrap-lock105541%_ _%ht105656%_)
                         _%key?105644%_))))
                   (_%make-gc-hash-table105545%_
                    (lambda ()
                      (let ((_%ht105641%_
                             (let ((_%$obj105638%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint105522%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj105638%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj105638%_)))
                                        '#t)
                                   _%$obj105638%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj105638%_))))))
                        (_%__wrap-checked105543%_
                         (_%__wrap-lock105541%_ _%ht105641%_)
                         true))))
                   (_%make-gambit-table105546%_
                    (lambda ()
                      (let* ((_%size105615%_
                              (let ((_%$e105612%_ _%size-hint105522%_))
                                (if _%$e105612%_
                                    _%$e105612%_
                                    (macro-absent-obj))))
                             (_%test105620%_
                              (let ((_%$e105617%_ _%test105526%_))
                                (if _%$e105617%_ _%$e105617%_ equal?)))
                             (_%hash105628%_
                              (let ((_%$e105622%_ _%hash105528%_))
                                (if _%$e105622%_
                                    _%$e105622%_
                                    (if (eq? _%test105620%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test105620%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht105633%_
                              (let ((_%$obj105630%_
                                     (make-table
                                      'size:
                                      _%size105615%_
                                      'test:
                                      _%test105620%_
                                      'hash:
                                      _%hash105628%_
                                      'weak-keys:
                                      _%weak-keys105534%_
                                      'weak-values:
                                      _%weak-values105536%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj105630%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj105630%_)))
                                         '#t)
                                    _%$obj105630%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj105630%_))))))
                        (_%__wrap-checked105543%_
                         (_%__wrap-lock105541%_ _%ht105633%_)
                         true)))))
            (if (or _%weak-keys105534%_ _%weak-values105536%_)
                (_%make-gambit-table105546%_)
                (if (and (or (eq? _%test105526%_ eq?)
                             (eq? _%test105526%_ ##eq?))
                         (or (not _%hash105528%_)
                             (eq? _%hash105528%_ eq?-hash)
                             (eq? _%hash105528%_ eq-hash))
                         (not _%seed105524%_))
                    (_%make-gc-hash-table105545%_)
                    (if (and (or (eq? _%test105526%_ eq?)
                                 (eq? _%test105526%_ ##eq?))
                             (or (not _%hash105528%_)
                                 (eq? _%hash105528%_ eq?-hash)
                                 (eq? _%hash105528%_ eq-hash)))
                        (_%make105544%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test105526%_ eqv?)
                                     (eq? _%test105526%_ ##eqv?))
                                 (or (not _%hash105528%_)
                                     (eq? _%hash105528%_ eqv?-hash)
                                     (eq? _%hash105528%_ eqv-hash)))
                            (_%make105544%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test105526%_ eq?)
                                         (eq? _%test105526%_ ##eq?))
                                     (or (eq? _%hash105528%_ symbolic-hash)
                                         (eq? _%hash105528%_ ##symbol-hash)))
                                (_%make105544%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test105526%_ eq?)
                                             (eq? _%test105526%_ ##eq?))
                                         (eq? _%hash105528%_ immediate-hash))
                                    (_%make105544%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test105526%_ equal?)
                                                 (eq? _%test105526%_ ##equal?)
                                                 (eq? _%test105526%_ string=?)
                                                 (eq? _%test105526%_
                                                      ##string=?))
                                             (or (eq? _%hash105528%_
                                                      string-hash)
                                                 (eq? _%hash105528%_
                                                      ##string=?-hash)))
                                        (_%make105544%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test105526%_ equal?)
                                                 (not _%hash105528%_))
                                            (_%make105544%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test105526%_)
                                                (if (procedure? _%hash105528%_)
                                                    (_%make105544%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash105528%_
                                                     _%test105526%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash105528%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test105526%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords105733%_ . _%args105734%_)
        (apply make-hash-table__%
               _%@@keywords105733%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105733%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105733%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105733%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105733%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105733%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105733%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105733%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105733%_
                  'weak-values:
                  absent-value))
               _%args105734%_)))
    (define make-hash-table
      (lambda _%args105502105740%_
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
               _%args105502105740%_)))
    (define make-hash-table-eq
      (lambda _%args105491%_
        (apply make-hash-table 'test: eq? _%args105491%_)))
    (define make-hash-table-eqv
      (lambda _%args105489%_
        (apply make-hash-table 'test: eqv? _%args105489%_)))
    (define make-hash-table-symbolic
      (lambda _%args105487%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args105487%_)))
    (define make-hash-table-string
      (lambda _%args105485%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args105485%_)))
    (define make-hash-table-immediate
      (lambda _%args105483%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args105483%_)))
    (define list->hash-table
      (lambda (_%lst105480%_ . _%args105481%_)
        (list->hash-table!
         _%lst105480%_
         (apply make-hash-table
                'size:
                (length _%lst105480%_)
                _%args105481%_))))
    (define list->hash-table-eq
      (lambda (_%lst105477%_ . _%args105478%_)
        (list->hash-table!
         _%lst105477%_
         (apply make-hash-table-eq
                'size:
                (length _%lst105477%_)
                _%args105478%_))))
    (define list->hash-table-eqv
      (lambda (_%lst105474%_ . _%args105475%_)
        (list->hash-table!
         _%lst105474%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst105474%_)
                _%args105475%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst105471%_ . _%args105472%_)
        (list->hash-table!
         _%lst105471%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst105471%_)
                _%args105472%_))))
    (define list->hash-table-string
      (lambda (_%lst105468%_ . _%args105469%_)
        (list->hash-table!
         _%lst105468%_
         (apply make-hash-table-string
                'size:
                (length _%lst105468%_)
                _%args105469%_))))
    (define list->hash-table-immediate
      (lambda (_%lst105465%_ . _%args105466%_)
        (list->hash-table!
         _%lst105465%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst105465%_)
                _%args105466%_))))
    (define list->hash-table!
      (lambda (_%lst105432%_ _%h105433%_)
        (for-each
         (lambda (_%el105435%_)
           (let* ((_%el105436105443%_ _%el105435%_)
                  (_%E105438105447%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el105436105443%_
                              '([k . v])))
                     '#!void))
                  (_%K105439105453%_
                   (lambda (_%v105450%_ _%k105451%_)
                     (&HashTable-set! _%h105433%_ _%k105451%_ _%v105450%_))))
             (if (let () (declare (not safe)) (##pair? _%el105436105443%_))
                 (let ((_%hd105440105456%_
                        (let ()
                          (declare (not safe))
                          (##car _%el105436105443%_)))
                       (_%tl105441105458%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el105436105443%_))))
                   (let* ((_%k105461%_ _%hd105440105456%_)
                          (_%v105463%_ _%tl105441105458%_))
                     (_%K105439105453%_ _%v105463%_ _%k105461%_)))
                 (_%E105438105447%_))))
         _%lst105432%_)
        _%h105433%_))
    (define plist->hash-table
      (lambda (_%lst105429%_ . _%args105430%_)
        (plist->hash-table!
         _%lst105429%_
         (apply make-hash-table
                'size:
                (length _%lst105429%_)
                _%args105430%_))))
    (define plist->hash-table-eq
      (lambda (_%lst105426%_ . _%args105427%_)
        (plist->hash-table!
         _%lst105426%_
         (apply make-hash-table-eq
                'size:
                (length _%lst105426%_)
                _%args105427%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst105423%_ . _%args105424%_)
        (plist->hash-table!
         _%lst105423%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst105423%_)
                _%args105424%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst105420%_ . _%args105421%_)
        (plist->hash-table!
         _%lst105420%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst105420%_)
                _%args105421%_))))
    (define plist->hash-table-string
      (lambda (_%lst105417%_ . _%args105418%_)
        (plist->hash-table!
         _%lst105417%_
         (apply make-hash-table-string
                'size:
                (length _%lst105417%_)
                _%args105418%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst105414%_ . _%args105415%_)
        (plist->hash-table!
         _%lst105414%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst105414%_)
                _%args105415%_))))
    (define plist->hash-table!
      (lambda (_%lst105354%_ _%h105355%_)
        (let _%loop105357%_ ((_%rest105359%_ _%lst105354%_))
          (let* ((_%rest105360105372%_ _%rest105359%_)
                 (_%else105363105380%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst105354%_)))))
            (let ((_%K105366105395%_
                   (lambda (_%rest105391%_ _%val105392%_ _%key105393%_)
                     (&HashTable-set! _%h105355%_ _%key105393%_ _%val105392%_)
                     (_%loop105357%_ _%rest105391%_)))
                  (_%K105365105385%_ (lambda () _%h105355%_)))
              (let ((_%try-match105362105388%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest105360105372%_))
                           (_%K105365105385%_)
                           (_%else105363105380%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest105360105372%_))
                    (let ((_%tl105368105400%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest105360105372%_)))
                          (_%hd105367105398%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest105360105372%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl105368105400%_))
                          (let ((_%tl105370105407%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl105368105400%_)))
                                (_%hd105369105405%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl105368105400%_))))
                            (let ((_%key105403%_ _%hd105367105398%_)
                                  (_%val105410%_ _%hd105369105405%_)
                                  (_%rest105412%_ _%tl105370105407%_))
                              (_%K105366105395%_
                               _%rest105412%_
                               _%val105410%_
                               _%key105403%_)))
                          (_%else105363105380%_)))
                    (_%try-match105362105388%_))))))))
    (define hash-length
      (lambda (_%h105336%_)
        (let* ((_%h105342%_
                (let ((_%$obj105339%_ _%h105336%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105339%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105339%_)))
                           '#t)
                      _%$obj105339%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105339%_)))))
               (_%h105344%_ _%h105342%_))
          (__hash-length _%h105344%_))))
    (define __hash-length
      (lambda (_%h105324%_)
        (let ((_%h105327%_ _%h105324%_)) (__HashTable-length _%h105327%_))))
    (define hash-ref__%
      (lambda (_%h105292%_ _%key105293%_ _%default105294%_)
        (let* ((_%h105300%_
                (let ((_%$obj105297%_ _%h105292%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105297%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105297%_)))
                           '#t)
                      _%$obj105297%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105297%_)))))
               (_%h105302%_ _%h105300%_))
          (__hash-ref__% _%h105302%_ _%key105293%_ _%default105294%_))))
    (define hash-ref__0
      (lambda (_%h105315%_ _%key105316%_)
        (let ((_%default105318%_ (macro-absent-obj)))
          (hash-ref__% _%h105315%_ _%key105316%_ _%default105318%_))))
    (define hash-ref
      (lambda _g108872_
        (let ((_g108871_ (let () (declare (not safe)) (##length _g108872_))))
          (cond ((let () (declare (not safe)) (##fx= _g108871_ 2))
                 (apply hash-ref__0 _g108872_))
                ((let () (declare (not safe)) (##fx= _g108871_ 3))
                 (apply hash-ref__% _g108872_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g108872_))))))
    (define __hash-ref__%
      (lambda (_%h105263%_ _%key105264%_ _%default105265%_)
        (let* ((_%h105268%_ _%h105263%_)
               (_%result105277%_
                (&HashTable-ref _%h105268%_ _%key105264%_ _%default105265%_)))
          (if (eq? _%result105277%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h105268%_
               'key:
               _%key105264%_)
              _%result105277%_))))
    (define __hash-ref__0
      (lambda (_%h105282%_ _%key105283%_)
        (let ((_%default105285%_ (macro-absent-obj)))
          (__hash-ref__% _%h105282%_ _%key105283%_ _%default105285%_))))
    (define __hash-ref
      (lambda _g108874_
        (let ((_g108873_ (let () (declare (not safe)) (##length _g108874_))))
          (cond ((let () (declare (not safe)) (##fx= _g108873_ 2))
                 (apply __hash-ref__0 _g108874_))
                ((let () (declare (not safe)) (##fx= _g108873_ 3))
                 (apply __hash-ref__% _g108874_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g108874_))))))
    (define hash-get
      (lambda (_%h105243%_ _%key105244%_)
        (let* ((_%h105250%_
                (let ((_%$obj105247%_ _%h105243%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105247%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105247%_)))
                           '#t)
                      _%$obj105247%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105247%_)))))
               (_%h105252%_ _%h105250%_))
          (__hash-get _%h105252%_ _%key105244%_))))
    (define __hash-get
      (lambda (_%h105230%_ _%key105231%_)
        (let ((_%h105234%_ _%h105230%_))
          (&HashTable-ref _%h105234%_ _%key105231%_ '#f))))
    (define hash-put!
      (lambda (_%h105210%_ _%key105211%_ _%value105212%_)
        (let* ((_%h105218%_
                (let ((_%$obj105215%_ _%h105210%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105215%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105215%_)))
                           '#t)
                      _%$obj105215%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105215%_)))))
               (_%h105220%_ _%h105218%_))
          (__hash-put! _%h105220%_ _%key105211%_ _%value105212%_))))
    (define __hash-put!
      (lambda (_%h105196%_ _%key105197%_ _%value105198%_)
        (let ((_%h105201%_ _%h105196%_))
          (&HashTable-set! _%h105201%_ _%key105197%_ _%value105198%_))))
    (define hash-update!__%
      (lambda (_%h105161%_ _%key105162%_ _%update105163%_ _%default105164%_)
        (let* ((_%h105170%_
                (let ((_%$obj105167%_ _%h105161%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105167%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105167%_)))
                           '#t)
                      _%$obj105167%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105167%_)))))
               (_%h105172%_ _%h105170%_))
          (__hash-update!__%
           _%h105172%_
           _%key105162%_
           _%update105163%_
           _%default105164%_))))
    (define hash-update!__0
      (lambda (_%h105185%_ _%key105186%_ _%update105187%_)
        (let ((_%default105189%_ '#!void))
          (hash-update!__%
           _%h105185%_
           _%key105186%_
           _%update105187%_
           _%default105189%_))))
    (define hash-update!
      (lambda _g108876_
        (let ((_g108875_ (let () (declare (not safe)) (##length _g108876_))))
          (cond ((let () (declare (not safe)) (##fx= _g108875_ 3))
                 (apply hash-update!__0 _g108876_))
                ((let () (declare (not safe)) (##fx= _g108875_ 4))
                 (apply hash-update!__% _g108876_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g108876_))))))
    (define __hash-update!__%
      (lambda (_%h105131%_ _%key105132%_ _%update105133%_ _%default105134%_)
        (let ((_%h105137%_ _%h105131%_))
          (HashTable-update!
           _%h105137%_
           _%key105132%_
           _%update105133%_
           _%default105134%_))))
    (define __hash-update!__0
      (lambda (_%h105149%_ _%key105150%_ _%update105151%_)
        (let ((_%default105153%_ '#!void))
          (__hash-update!__%
           _%h105149%_
           _%key105150%_
           _%update105151%_
           _%default105153%_))))
    (define __hash-update!
      (lambda _g108878_
        (let ((_g108877_ (let () (declare (not safe)) (##length _g108878_))))
          (cond ((let () (declare (not safe)) (##fx= _g108877_ 3))
                 (apply __hash-update!__0 _g108878_))
                ((let () (declare (not safe)) (##fx= _g108877_ 4))
                 (apply __hash-update!__% _g108878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g108878_))))))
    (define hash-remove!
      (lambda (_%h105111%_ _%key105112%_)
        (let* ((_%h105118%_
                (let ((_%$obj105115%_ _%h105111%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105115%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105115%_)))
                           '#t)
                      _%$obj105115%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105115%_)))))
               (_%h105120%_ _%h105118%_))
          (__hash-remove! _%h105120%_ _%key105112%_))))
    (define __hash-remove!
      (lambda (_%h105098%_ _%key105099%_)
        (let ((_%h105102%_ _%h105098%_))
          (&HashTable-delete! _%h105102%_ _%key105099%_))))
    (define hash-key?
      (lambda (_%h105079%_ _%k105080%_)
        (let* ((_%h105086%_
                (let ((_%$obj105083%_ _%h105079%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105083%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105083%_)))
                           '#t)
                      _%$obj105083%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105083%_)))))
               (_%h105088%_ _%h105086%_))
          (__hash-key? _%h105088%_ _%k105080%_))))
    (define __hash-key?
      (lambda (_%h105066%_ _%k105067%_)
        (let ((_%h105070%_ _%h105066%_))
          (not (eq? (&HashTable-ref _%h105070%_ _%k105067%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h105048%_)
        (let* ((_%h105054%_
                (let ((_%$obj105051%_ _%h105048%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105051%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105051%_)))
                           '#t)
                      _%$obj105051%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105051%_)))))
               (_%h105056%_ _%h105054%_))
          (__hash->list _%h105056%_))))
    (define __hash->list
      (lambda (_%h105031%_)
        (let* ((_%h105034%_ _%h105031%_) (_%lst105043%_ '()))
          (&HashTable-for-each
           _%h105034%_
           (lambda (_%k105045%_ _%v105046%_)
             (set! _%lst105043%_
                   (cons (cons _%k105045%_ _%v105046%_) _%lst105043%_))))
          _%lst105043%_)))
    (define hash->plist
      (lambda (_%h105013%_)
        (let* ((_%h105019%_
                (let ((_%$obj105016%_ _%h105013%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105016%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105016%_)))
                           '#t)
                      _%$obj105016%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105016%_)))))
               (_%h105021%_ _%h105019%_))
          (__hash->plist _%h105021%_))))
    (define __hash->plist
      (lambda (_%h104996%_)
        (let* ((_%h104999%_ _%h104996%_) (_%lst105008%_ '()))
          (&HashTable-for-each
           _%h104999%_
           (lambda (_%k105010%_ _%v105011%_)
             (set! _%lst105008%_
                   (cons _%k105010%_ (cons _%v105011%_ _%lst105008%_)))))
          _%lst105008%_)))
    (define hash-for-each
      (lambda (_%proc104967%_ _%h104968%_)
        (if (procedure? _%proc104967%_)
            (let* ((_%proc104972%_ _%proc104967%_)
                   (_%h104984%_
                    (let ((_%$obj104981%_ _%h104968%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104981%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104981%_)))
                               '#t)
                          _%$obj104981%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104981%_)))))
                   (_%h104986%_ _%h104984%_))
              (__hash-for-each _%proc104972%_ _%h104986%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@567.22-567.26"
               'contract:
               'procedure?
               'value:
               _%proc104967%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc104946%_ _%h104947%_)
        (let* ((_%proc104950%_ _%proc104946%_) (_%h104958%_ _%h104947%_))
          (&HashTable-for-each _%h104958%_ _%proc104950%_))))
    (define hash-map
      (lambda (_%proc104917%_ _%h104918%_)
        (if (procedure? _%proc104917%_)
            (let* ((_%proc104922%_ _%proc104917%_)
                   (_%h104934%_
                    (let ((_%$obj104931%_ _%h104918%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104931%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104931%_)))
                               '#t)
                          _%$obj104931%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104931%_)))))
                   (_%h104936%_ _%h104934%_))
              (__hash-map _%proc104922%_ _%h104936%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@570.17-570.21"
               'contract:
               'procedure?
               'value:
               _%proc104917%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc104891%_ _%h104892%_)
        (let* ((_%proc104895%_ _%proc104891%_)
               (_%h104903%_ _%h104892%_)
               (_%result104912%_ '()))
          (&HashTable-for-each
           _%h104903%_
           (lambda (_%k104914%_ _%v104915%_)
             (set! _%result104912%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc104895%_ _%k104914%_ _%v104915%_))
                         _%result104912%_))))
          _%result104912%_)))
    (define hash-fold
      (lambda (_%proc104861%_ _%iv104862%_ _%h104863%_)
        (if (procedure? _%proc104861%_)
            (let* ((_%proc104867%_ _%proc104861%_)
                   (_%h104879%_
                    (let ((_%$obj104876%_ _%h104863%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104876%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104876%_)))
                               '#t)
                          _%$obj104876%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104876%_)))))
                   (_%h104881%_ _%h104879%_))
              (__hash-fold _%proc104867%_ _%iv104862%_ _%h104881%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@575.18-575.22"
               'contract:
               'procedure?
               'value:
               _%proc104861%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc104834%_ _%iv104835%_ _%h104836%_)
        (let* ((_%proc104839%_ _%proc104834%_)
               (_%h104847%_ _%h104836%_)
               (_%result104856%_ _%iv104835%_))
          (&HashTable-for-each
           _%h104847%_
           (lambda (_%k104858%_ _%v104859%_)
             (set! _%result104856%_
                   (let ()
                     (declare (not safe))
                     (_%proc104839%_
                      _%k104858%_
                      _%v104859%_
                      _%result104856%_)))))
          _%result104856%_)))
    (define hash-find__%
      (lambda (_%proc104792%_ _%h104793%_ _%default-value104794%_)
        (if (procedure? _%proc104792%_)
            (let* ((_%proc104798%_ _%proc104792%_)
                   (_%h104810%_
                    (let ((_%$obj104807%_ _%h104793%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104807%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104807%_)))
                               '#t)
                          _%$obj104807%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104807%_)))))
                   (_%h104812%_ _%h104810%_))
              (__hash-find__%
               _%proc104798%_
               _%h104812%_
               _%default-value104794%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@580.18-580.22"
               'contract:
               'procedure?
               'value:
               _%proc104792%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc104825%_ _%h104826%_)
        (let ((_%default-value104828%_ '#f))
          (hash-find__% _%proc104825%_ _%h104826%_ _%default-value104828%_))))
    (define hash-find
      (lambda _g108880_
        (let ((_g108879_ (let () (declare (not safe)) (##length _g108880_))))
          (cond ((let () (declare (not safe)) (##fx= _g108879_ 2))
                 (apply hash-find__0 _g108880_))
                ((let () (declare (not safe)) (##fx= _g108879_ 3))
                 (apply hash-find__% _g108880_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g108880_))))))
    (define __hash-find__%
      (lambda (_%proc104749%_ _%h104750%_ _%default-value104751%_)
        (let* ((_%proc104754%_ _%proc104749%_)
               (_%h104762%_ _%h104750%_)
               (__tmp108881
                (lambda (_%return104771%_)
                  (&HashTable-for-each
                   _%h104762%_
                   (lambda (_%k104773%_ _%v104774%_)
                     (let ((_%$e104776%_
                            (let ()
                              (declare (not safe))
                              (_%proc104754%_ _%k104773%_ _%v104774%_))))
                       (if _%$e104776%_
                           (_%return104771%_ _%$e104776%_)
                           '#!void))))
                  _%default-value104751%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp108881))))
    (define __hash-find__0
      (lambda (_%proc104782%_ _%h104783%_)
        (let ((_%default-value104785%_ '#f))
          (__hash-find__%
           _%proc104782%_
           _%h104783%_
           _%default-value104785%_))))
    (define __hash-find
      (lambda _g108883_
        (let ((_g108882_ (let () (declare (not safe)) (##length _g108883_))))
          (cond ((let () (declare (not safe)) (##fx= _g108882_ 2))
                 (apply __hash-find__0 _g108883_))
                ((let () (declare (not safe)) (##fx= _g108882_ 3))
                 (apply __hash-find__% _g108883_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g108883_))))))
    (define hash-keys
      (lambda (_%h104730%_)
        (let* ((_%h104736%_
                (let ((_%$obj104733%_ _%h104730%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104733%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104733%_)))
                           '#t)
                      _%$obj104733%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104733%_)))))
               (_%h104738%_ _%h104736%_))
          (__hash-keys _%h104738%_))))
    (define __hash-keys
      (lambda (_%h104713%_)
        (let* ((_%h104716%_ _%h104713%_) (_%result104725%_ '()))
          (&HashTable-for-each
           _%h104716%_
           (lambda (_%k104727%_ _%v104728%_)
             (set! _%result104725%_ (cons _%k104727%_ _%result104725%_))))
          _%result104725%_)))
    (define hash-values
      (lambda (_%h104695%_)
        (let* ((_%h104701%_
                (let ((_%$obj104698%_ _%h104695%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104698%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104698%_)))
                           '#t)
                      _%$obj104698%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104698%_)))))
               (_%h104703%_ _%h104701%_))
          (__hash-values _%h104703%_))))
    (define __hash-values
      (lambda (_%h104678%_)
        (let* ((_%h104681%_ _%h104678%_) (_%result104690%_ '()))
          (&HashTable-for-each
           _%h104681%_
           (lambda (_%k104692%_ _%v104693%_)
             (set! _%result104690%_ (cons _%v104693%_ _%result104690%_))))
          _%result104690%_)))
    (define hash-copy
      (lambda (_%h104660%_)
        (let* ((_%h104666%_
                (let ((_%$obj104663%_ _%h104660%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104663%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104663%_)))
                           '#t)
                      _%$obj104663%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104663%_)))))
               (_%h104668%_ _%h104666%_))
          (__hash-copy _%h104668%_))))
    (define __hash-copy
      (lambda (_%h104648%_)
        (let ((_%h104651%_ _%h104648%_)) (__HashTable-copy _%h104651%_))))
    (define hash-clear!
      (lambda (_%h104630%_)
        (let* ((_%h104636%_
                (let ((_%$obj104633%_ _%h104630%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104633%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104633%_)))
                           '#t)
                      _%$obj104633%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104633%_)))))
               (_%h104638%_ _%h104636%_))
          (__hash-clear! _%h104638%_))))
    (define __hash-clear!
      (lambda (_%h104618%_)
        (let ((_%h104621%_ _%h104618%_)) (&HashTable-clear! _%h104621%_))))
    (define hash-merge
      (lambda (_%h104599%_ . _%rest104600%_)
        (let* ((_%h104606%_
                (let ((_%$obj104603%_ _%h104599%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104603%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104603%_)))
                           '#t)
                      _%$obj104603%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104603%_)))))
               (_%h104608%_ _%h104606%_))
          (declare (not safe))
          (##apply __hash-merge _%h104608%_ _%rest104600%_))))
    (define __hash-merge
      (lambda (_%h104584%_ . _%rest104585%_)
        (let* ((_%h104588%_ _%h104584%_)
               (_%copy104597%_ (__HashTable-copy _%h104588%_)))
          (apply hash-merge! _%copy104597%_ _%rest104585%_)
          _%copy104597%_)))
    (define hash-merge!
      (lambda (_%h104565%_ . _%rest104566%_)
        (let* ((_%h104572%_
                (let ((_%$obj104569%_ _%h104565%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104569%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104569%_)))
                           '#t)
                      _%$obj104569%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104569%_)))))
               (_%h104574%_ _%h104572%_))
          (declare (not safe))
          (##apply __hash-merge! _%h104574%_ _%rest104566%_))))
    (define __hash-merge!
      (lambda (_%h104528%_ . _%rest104529%_)
        (let ((_%h104532%_ _%h104528%_))
          (let ((__tmp108884
                 (lambda (_%hr104541%_)
                   (let* ((_%hr104547%_
                           (let ((_%$obj104544%_ _%hr104541%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj104544%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj104544%_)))
                                      '#t)
                                 _%$obj104544%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj104544%_)))))
                          (_%hr104549%_ _%hr104547%_))
                     (&HashTable-for-each
                      _%hr104549%_
                      (lambda (_%k104562%_ _%v104563%_)
                        (if (__hash-key? _%h104532%_ _%k104562%_)
                            '#!void
                            (&HashTable-set!
                             _%h104532%_
                             _%k104562%_
                             _%v104563%_))))))))
            (declare (not safe))
            (##for-each __tmp108884 _%rest104529%_))
          _%h104532%_)))))
