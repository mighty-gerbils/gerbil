(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1734278443)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp111091 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp111091
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args111071%_
        (apply make-instance UnboundKeyError::t _%$args111071%_)))
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
      (lambda (_%where110945%_ _%message110946%_ . _%irritants110947%_)
        (let ((__tmp111092
               (let ((__obj111085
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj111085
                    _%message110946%_
                    'where:
                    _%where110945%_
                    'irritants:
                    _%irritants110947%_))
                 __obj111085)))
          (declare (not safe))
          (raise __tmp111092))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp111093 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp111093
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
      (lambda (_%obj110943%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj110943%_))))
    (define try-HashTable
      (lambda (_%obj110941%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj110941%_))))
    (define HashTable?
      (lambda (_%obj110939%_)
        (let ((__tmp111094
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj110939%_ __tmp111094))))
    (define is-HashTable?
      (lambda (_%obj110937%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj110937%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self110921%_)
        (let* ((_%self110926%_
                (let ((_%$obj110923%_ _%self110921%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110923%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110923%_)))
                           '#t)
                      _%$obj110923%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110923%_)))))
               (_%self110928%_ _%self110926%_))
          (&HashTable-clear! _%self110928%_))))
    (define &HashTable-clear!
      (lambda (_%self110906%_)
        (let ((_%self110908%_ _%self110906%_))
          (declare (not safe))
          (let ((_%obj110918%_
                 (##unchecked-structure-ref _%self110908%_ '1 '#f 'clear!))
                (_%f110919%_
                 (##unchecked-structure-ref _%self110908%_ '2 '#f 'clear!)))
            (_%f110919%_ _%obj110918%_)))))
    (define HashTable-copy
      (lambda (_%self110890%_)
        (let* ((_%self110895%_
                (let ((_%$obj110892%_ _%self110890%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110892%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110892%_)))
                           '#t)
                      _%$obj110892%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110892%_)))))
               (_%self110897%_ _%self110895%_))
          (__HashTable-copy _%self110897%_))))
    (define __HashTable-copy
      (lambda (_%self110877%_)
        (let* ((_%self110879%_ _%self110877%_)
               (_%$obj110887%_ (&HashTable-copy _%self110879%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj110887%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj110887%_)))
                   '#t)
              _%$obj110887%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj110887%_))))))
    (define &HashTable-copy
      (lambda (_%self110862%_)
        (let ((_%self110864%_ _%self110862%_))
          (declare (not safe))
          (let ((_%obj110874%_
                 (##unchecked-structure-ref _%self110864%_ '1 '#f 'copy))
                (_%f110875%_
                 (##unchecked-structure-ref _%self110864%_ '3 '#f 'copy)))
            (_%f110875%_ _%obj110874%_)))))
    (define HashTable-delete!
      (lambda (_%self110845%_ _%key110846%_)
        (let* ((_%self110851%_
                (let ((_%$obj110848%_ _%self110845%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110848%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110848%_)))
                           '#t)
                      _%$obj110848%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110848%_)))))
               (_%self110853%_ _%self110851%_))
          (&HashTable-delete! _%self110853%_ _%key110846%_))))
    (define &HashTable-delete!
      (lambda (_%self110829%_ _%key110830%_)
        (let ((_%self110832%_ _%self110829%_))
          (declare (not safe))
          (let ((_%obj110842%_
                 (##unchecked-structure-ref _%self110832%_ '1 '#f 'delete!))
                (_%f110843%_
                 (##unchecked-structure-ref _%self110832%_ '4 '#f 'delete!)))
            (_%f110843%_ _%obj110842%_ _%key110830%_)))))
    (define HashTable-for-each
      (lambda (_%self110802%_ _%proc110803%_)
        (let* ((_%self110808%_
                (let ((_%$obj110805%_ _%self110802%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110805%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110805%_)))
                           '#t)
                      _%$obj110805%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110805%_)))))
               (_%self110810%_ _%self110808%_))
          (if (procedure? _%proc110803%_)
              (let ((_%proc110819%_ _%proc110803%_))
                (&HashTable-for-each _%self110810%_ _%proc110819%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc110803%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self110778%_ _%proc110779%_)
        (let* ((_%self110781%_ _%self110778%_) (_%proc110788%_ _%proc110779%_))
          (declare (not safe))
          (let ((_%obj110799%_
                 (##unchecked-structure-ref _%self110781%_ '1 '#f 'for-each))
                (_%f110800%_
                 (##unchecked-structure-ref _%self110781%_ '5 '#f 'for-each)))
            (_%f110800%_ _%obj110799%_ _%proc110788%_)))))
    (define HashTable-length
      (lambda (_%self110762%_)
        (let* ((_%self110767%_
                (let ((_%$obj110764%_ _%self110762%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110764%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110764%_)))
                           '#t)
                      _%$obj110764%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110764%_)))))
               (_%self110769%_ _%self110767%_))
          (__HashTable-length _%self110769%_))))
    (define __HashTable-length
      (lambda (_%self110749%_)
        (let* ((_%self110751%_ _%self110749%_)
               (_%val110759%_ (&HashTable-length _%self110751%_)))
          _%val110759%_)))
    (define &HashTable-length
      (lambda (_%self110734%_)
        (let ((_%self110736%_ _%self110734%_))
          (declare (not safe))
          (let ((_%obj110746%_
                 (##unchecked-structure-ref _%self110736%_ '1 '#f 'length))
                (_%f110747%_
                 (##unchecked-structure-ref _%self110736%_ '6 '#f 'length)))
            (_%f110747%_ _%obj110746%_)))))
    (define HashTable-ref
      (lambda (_%self110716%_ _%key110717%_ _%default110718%_)
        (let* ((_%self110723%_
                (let ((_%$obj110720%_ _%self110716%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110720%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110720%_)))
                           '#t)
                      _%$obj110720%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110720%_)))))
               (_%self110725%_ _%self110723%_))
          (&HashTable-ref _%self110725%_ _%key110717%_ _%default110718%_))))
    (define &HashTable-ref
      (lambda (_%self110699%_ _%key110700%_ _%default110701%_)
        (let ((_%self110703%_ _%self110699%_))
          (declare (not safe))
          (let ((_%obj110713%_
                 (##unchecked-structure-ref _%self110703%_ '1 '#f 'ref))
                (_%f110714%_
                 (##unchecked-structure-ref _%self110703%_ '7 '#f 'ref)))
            (_%f110714%_ _%obj110713%_ _%key110700%_ _%default110701%_)))))
    (define HashTable-set!
      (lambda (_%self110681%_ _%key110682%_ _%value110683%_)
        (let* ((_%self110688%_
                (let ((_%$obj110685%_ _%self110681%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110685%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110685%_)))
                           '#t)
                      _%$obj110685%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110685%_)))))
               (_%self110690%_ _%self110688%_))
          (&HashTable-set! _%self110690%_ _%key110682%_ _%value110683%_))))
    (define &HashTable-set!
      (lambda (_%self110664%_ _%key110665%_ _%value110666%_)
        (let ((_%self110668%_ _%self110664%_))
          (declare (not safe))
          (let ((_%obj110678%_
                 (##unchecked-structure-ref _%self110668%_ '1 '#f 'set!))
                (_%f110679%_
                 (##unchecked-structure-ref _%self110668%_ '8 '#f 'set!)))
            (_%f110679%_ _%obj110678%_ _%key110665%_ _%value110666%_)))))
    (define HashTable-update!
      (lambda (_%self110635%_ _%key110636%_ _%proc110637%_ _%default110638%_)
        (let* ((_%self110643%_
                (let ((_%$obj110640%_ _%self110635%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110640%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110640%_)))
                           '#t)
                      _%$obj110640%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110640%_)))))
               (_%self110645%_ _%self110643%_))
          (if (procedure? _%proc110637%_)
              (let ((_%proc110654%_ _%proc110637%_))
                (&HashTable-update!
                 _%self110645%_
                 _%key110636%_
                 _%proc110654%_
                 _%default110638%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc110637%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self110607%_ _%key110608%_ _%proc110609%_ _%default110610%_)
        (let* ((_%self110612%_ _%self110607%_) (_%proc110619%_ _%proc110609%_))
          (declare (not safe))
          (let ((_%obj110630%_
                 (##unchecked-structure-ref _%self110612%_ '1 '#f 'update!))
                (_%f110632%_
                 (##unchecked-structure-ref _%self110612%_ '9 '#f 'update!)))
            (_%f110632%_
             _%obj110630%_
             _%key110608%_
             _%proc110619%_
             _%default110610%_)))))
    (define Locker::t
      (let ((__tmp111095 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp111095
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
      (lambda (_%obj110605%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj110605%_))))
    (define try-Locker
      (lambda (_%obj110603%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj110603%_))))
    (define Locker?
      (lambda (_%obj110601%_)
        (let ((__tmp111096
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj110601%_ __tmp111096))))
    (define is-Locker?
      (lambda (_%obj110599%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj110599%_))
            '#t
            '#f)))
    (define Locker-read-lock!
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
          (&Locker-read-lock! _%self110590%_))))
    (define &Locker-read-lock!
      (lambda (_%self110568%_)
        (let ((_%self110570%_ _%self110568%_))
          (declare (not safe))
          (let ((_%obj110580%_
                 (##unchecked-structure-ref _%self110570%_ '1 '#f 'read-lock!))
                (_%f110581%_
                 (##unchecked-structure-ref
                  _%self110570%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f110581%_ _%obj110580%_)))))
    (define Locker-read-unlock!
      (lambda (_%self110552%_)
        (let* ((_%self110557%_
                (let ((_%$obj110554%_ _%self110552%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110554%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110554%_)))
                           '#t)
                      _%$obj110554%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110554%_)))))
               (_%self110559%_ _%self110557%_))
          (&Locker-read-unlock! _%self110559%_))))
    (define &Locker-read-unlock!
      (lambda (_%self110537%_)
        (let ((_%self110539%_ _%self110537%_))
          (declare (not safe))
          (let ((_%obj110549%_
                 (##unchecked-structure-ref
                  _%self110539%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f110550%_
                 (##unchecked-structure-ref
                  _%self110539%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f110550%_ _%obj110549%_)))))
    (define Locker-write-lock!
      (lambda (_%self110521%_)
        (let* ((_%self110526%_
                (let ((_%$obj110523%_ _%self110521%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110523%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110523%_)))
                           '#t)
                      _%$obj110523%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110523%_)))))
               (_%self110528%_ _%self110526%_))
          (&Locker-write-lock! _%self110528%_))))
    (define &Locker-write-lock!
      (lambda (_%self110506%_)
        (let ((_%self110508%_ _%self110506%_))
          (declare (not safe))
          (let ((_%obj110518%_
                 (##unchecked-structure-ref
                  _%self110508%_
                  '1
                  '#f
                  'write-lock!))
                (_%f110519%_
                 (##unchecked-structure-ref
                  _%self110508%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f110519%_ _%obj110518%_)))))
    (define Locker-write-unlock!
      (lambda (_%self110490%_)
        (let* ((_%self110495%_
                (let ((_%$obj110492%_ _%self110490%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110492%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110492%_)))
                           '#t)
                      _%$obj110492%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj110492%_)))))
               (_%self110497%_ _%self110495%_))
          (&Locker-write-unlock! _%self110497%_))))
    (define &Locker-write-unlock!
      (lambda (_%self110473%_)
        (let ((_%self110475%_ _%self110473%_))
          (declare (not safe))
          (let ((_%obj110485%_
                 (##unchecked-structure-ref
                  _%self110475%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f110487%_
                 (##unchecked-structure-ref
                  _%self110475%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f110487%_ _%obj110485%_)))))
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
      (lambda (_%table110466%_
               _%key110467%_
               _%update110468%_
               _%default110469%_)
        (let ((_%result110471%_
               (table-ref _%table110466%_ _%key110467%_ _%default110469%_)))
          (table-set!
           _%table110466%_
           _%key110467%_
           (_%update110468%_ _%default110469%_)))))
    (define gambit-table-for-each
      (lambda (_%table110463%_ _%proc110464%_)
        (table-for-each _%proc110464%_ _%table110463%_)))
    (define gambit-table-clear!
      (lambda (_%table110461%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table110461%_ '0 '5 '#f '#f))))
    (let ((__tmp111097 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111097 'HashTable::ref table-ref))
    (let ((__tmp111098 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111098 'HashTable::set! table-set!))
    (let ((__tmp111099 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111099 'HashTable::update! gambit-table-update!))
    (let ((__tmp111100 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111100 'HashTable::delete! table-set!))
    (let ((__tmp111101 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111101 'HashTable::for-each gambit-table-for-each))
    (let ((__tmp111102 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111102 'HashTable::length table-length))
    (let ((__tmp111103 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111103 'HashTable::copy table-copy))
    (let ((__tmp111104 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp111104 'HashTable::clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots110443%_ '(table count free hash test seed))
             (_%slot-vector110445%_ (list->vector (cons '#f _%slots110443%_)))
             (_%slot-table110452%_
              (let ((_%slot-table110447%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp111107
                       (lambda (_%slot110449%_ _%field110450%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110447%_
                            _%slot110449%_
                            _%field110450%_))
                         (let ((__tmp111108
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot110449%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110447%_
                            __tmp111108
                            _%field110450%_))))
                      (__tmp111105
                       (let ((__tmp111106
                              (let ()
                                (declare (not safe))
                                (##length _%slots110443%_))))
                         (declare (not safe))
                         (##iota __tmp111106 '1))))
                  (declare (not safe))
                  (##for-each __tmp111107 _%slots110443%_ __tmp111105))
                _%slot-table110447%_))
             (_%flags110454%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields110456%_ '#())
             (_%properties110458%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots110443%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp111109 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags110454%_
         __table::t
         _%fields110456%_
         __tmp111109
         _%slot-vector110445%_
         _%slot-table110452%_
         _%properties110458%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots110425%_ '(gcht immediate))
             (_%slot-vector110427%_ (list->vector (cons '#f _%slots110425%_)))
             (_%slot-table110434%_
              (let ((_%slot-table110429%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp111112
                       (lambda (_%slot110431%_ _%field110432%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110429%_
                            _%slot110431%_
                            _%field110432%_))
                         (let ((__tmp111113
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot110431%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110429%_
                            __tmp111113
                            _%field110432%_))))
                      (__tmp111110
                       (let ((__tmp111111
                              (let ()
                                (declare (not safe))
                                (##length _%slots110425%_))))
                         (declare (not safe))
                         (##iota __tmp111111 '1))))
                  (declare (not safe))
                  (##for-each __tmp111112 _%slots110425%_ __tmp111110))
                _%slot-table110429%_))
             (_%flags110436%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields110438%_ '#())
             (_%properties110440%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots110425%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp111114 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags110436%_
         __gc-table::t
         _%fields110438%_
         __tmp111114
         _%slot-vector110427%_
         _%slot-table110434%_
         _%properties110440%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp111116 (list))
            (__tmp111115
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp111116
         '(table lock)
         __tmp111115
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args110422%_
        (apply make-instance locked-hash-table::t _%$args110422%_)))
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
      (let ((__tmp111118 (list))
            (__tmp111117
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp111118
         '(table key-check)
         __tmp111117
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args110419%_
        (apply make-instance checked-hash-table::t _%$args110419%_)))
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
      (let ((__tmp111120 (list hash-table::t))
            (__tmp111119 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp111120
         '()
         __tmp111119
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args110416%_
        (apply make-instance eq-hash-table::t _%$args110416%_)))
    (define eqv-hash-table::t
      (let ((__tmp111122 (list hash-table::t))
            (__tmp111121 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp111122
         '()
         __tmp111121
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args110413%_
        (apply make-instance eqv-hash-table::t _%$args110413%_)))
    (define symbol-hash-table::t
      (let ((__tmp111124 (list hash-table::t))
            (__tmp111123 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp111124
         '()
         __tmp111123
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args110410%_
        (apply make-instance symbol-hash-table::t _%$args110410%_)))
    (define string-hash-table::t
      (let ((__tmp111126 (list hash-table::t))
            (__tmp111125 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp111126
         '()
         __tmp111125
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args110407%_
        (apply make-instance string-hash-table::t _%$args110407%_)))
    (define immediate-hash-table::t
      (let ((__tmp111128 (list hash-table::t))
            (__tmp111127 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp111128
         '()
         __tmp111127
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args110404%_
        (apply make-instance immediate-hash-table::t _%$args110404%_)))
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
    (define _%locked-hash-table::HashTable::ref106404%_
      (lambda (_%self106403110378%_ _%key110380%_ _%default110381%_)
        (let* ((_%self110383%_ _%self106403110378%_)
               (_%self110386%_ _%self110383%_))
          (let ((_%h110396%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110386%_ '1 '#f '#f)))
                (_%l110398%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110386%_ '2 '#f '#f))))
            (let ((__tmp111131 (lambda () (&Locker-read-lock! _%l110398%_)))
                  (__tmp111130
                   (lambda ()
                     (&HashTable-ref
                      _%h110396%_
                      _%key110380%_
                      _%default110381%_)))
                  (__tmp111129 (lambda () (&Locker-read-unlock! _%l110398%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111131 __tmp111130 __tmp111129))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref106404%_
       '#f))
    (define _%locked-hash-table::HashTable::set!106407%_
      (lambda (_%self106406110229%_ _%key110231%_ _%value110232%_)
        (let* ((_%self110234%_ _%self106406110229%_)
               (_%self110237%_ _%self110234%_))
          (let ((_%h110247%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110237%_ '1 '#f '#f)))
                (_%l110249%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110237%_ '2 '#f '#f))))
            (let ((__tmp111134 (lambda () (&Locker-write-lock! _%l110249%_)))
                  (__tmp111133
                   (lambda ()
                     (&HashTable-set!
                      _%h110247%_
                      _%key110231%_
                      _%value110232%_)))
                  (__tmp111132
                   (lambda () (&Locker-write-unlock! _%l110249%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111134 __tmp111133 __tmp111132))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!106407%_
       '#f))
    (define _%locked-hash-table::HashTable::update!106410%_
      (lambda (_%self106409110079%_
               _%key110081%_
               _%update110082%_
               _%default110083%_)
        (let* ((_%self110085%_ _%self106409110079%_)
               (_%self110088%_ _%self110085%_))
          (let ((_%h110098%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110088%_ '1 '#f '#f)))
                (_%l110100%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self110088%_ '2 '#f '#f))))
            (let ((__tmp111137 (lambda () (&Locker-write-lock! _%l110100%_)))
                  (__tmp111136
                   (lambda ()
                     (&HashTable-update!
                      _%h110098%_
                      _%key110081%_
                      _%update110082%_
                      _%default110083%_)))
                  (__tmp111135
                   (lambda () (&Locker-write-unlock! _%l110100%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111137 __tmp111136 __tmp111135))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!106410%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!106413%_
      (lambda (_%self106412109931%_ _%key109933%_)
        (let* ((_%self109935%_ _%self106412109931%_)
               (_%self109938%_ _%self109935%_))
          (let ((_%h109948%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109938%_ '1 '#f '#f)))
                (_%l109950%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109938%_ '2 '#f '#f))))
            (let ((__tmp111140 (lambda () (&Locker-write-lock! _%l109950%_)))
                  (__tmp111139
                   (lambda () (&HashTable-delete! _%h109948%_ _%key109933%_)))
                  (__tmp111138
                   (lambda () (&Locker-write-unlock! _%l109950%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111140 __tmp111139 __tmp111138))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!106413%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each106416%_
      (lambda (_%self106415109783%_ _%proc109785%_)
        (let* ((_%self109787%_ _%self106415109783%_)
               (_%self109790%_ _%self109787%_))
          (let ((_%h109800%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109790%_ '1 '#f '#f)))
                (_%l109802%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109790%_ '2 '#f '#f))))
            (let ((__tmp111143 (lambda () (&Locker-read-lock! _%l109802%_)))
                  (__tmp111142
                   (lambda ()
                     (&HashTable-for-each _%h109800%_ _%proc109785%_)))
                  (__tmp111141 (lambda () (&Locker-read-unlock! _%l109802%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111143 __tmp111142 __tmp111141))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each106416%_
       '#f))
    (define _%locked-hash-table::HashTable::length106419%_
      (lambda (_%self106418109636%_)
        (let* ((_%self109639%_ _%self106418109636%_)
               (_%self109642%_ _%self109639%_))
          (let ((_%h109652%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109642%_ '1 '#f '#f)))
                (_%l109654%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109642%_ '2 '#f '#f))))
            (let ((__tmp111146 (lambda () (&Locker-read-lock! _%l109654%_)))
                  (__tmp111145 (lambda () (&HashTable-length _%h109652%_)))
                  (__tmp111144 (lambda () (&Locker-read-unlock! _%l109654%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111146 __tmp111145 __tmp111144))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length106419%_
       '#f))
    (define _%locked-hash-table::HashTable::copy106422%_
      (lambda (_%self106421109489%_)
        (let* ((_%self109492%_ _%self106421109489%_)
               (_%self109495%_ _%self109492%_))
          (let ((_%h109505%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109495%_ '1 '#f '#f)))
                (_%l109507%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109495%_ '2 '#f '#f))))
            (let ((__tmp111149 (lambda () (&Locker-read-lock! _%l109507%_)))
                  (__tmp111148 (lambda () (&HashTable-copy _%h109505%_)))
                  (__tmp111147 (lambda () (&Locker-read-unlock! _%l109507%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111149 __tmp111148 __tmp111147))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy106422%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!106425%_
      (lambda (_%self106424109342%_)
        (let* ((_%self109345%_ _%self106424109342%_)
               (_%self109348%_ _%self109345%_))
          (let ((_%h109358%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109348%_ '1 '#f '#f)))
                (_%l109360%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self109348%_ '2 '#f '#f))))
            (let ((__tmp111152 (lambda () (&Locker-write-lock! _%l109360%_)))
                  (__tmp111151 (lambda () (&HashTable-clear! _%h109358%_)))
                  (__tmp111150
                   (lambda () (&Locker-write-unlock! _%l109360%_))))
              (declare (not safe))
              (##dynamic-wind __tmp111152 __tmp111151 __tmp111150))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!106425%_
       '#f))
    (let ((__tmp111153 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111153 'Locker::read-lock! mutex-lock!))
    (let ((__tmp111154 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111154 'Locker::read-unlock! mutex-unlock!))
    (let ((__tmp111155 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111155 'Locker::write-lock! mutex-lock!))
    (let ((__tmp111156 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp111156 'Locker::write-unlock! mutex-unlock!))
    (define _%checked-hash-table::HashTable::ref106639%_
      (lambda (_%self106638109192%_ _%key109194%_ _%default109195%_)
        (let* ((_%self109197%_ _%self106638109192%_)
               (_%self109199%_ _%self109197%_))
          (declare (not safe))
          (let ((_%h109210%_
                 (##unchecked-structure-ref _%self109199%_ '1 '#f '#f))
                (_%key?109212%_
                 (##unchecked-structure-ref _%self109199%_ '2 '#f '#f)))
            (if ((lambda (_%key?109215%_ _%key109216%_ _%default109217%_)
                   (_%key?109215%_ _%key109216%_))
                 _%key?109212%_
                 _%key109194%_
                 _%default109195%_)
                (&HashTable-ref _%h109210%_ _%key109194%_ _%default109195%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key109194%_ (cons _%default109195%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref106639%_
       '#f))
    (define _%checked-hash-table::HashTable::set!106642%_
      (lambda (_%self106641109042%_ _%key109044%_ _%value109045%_)
        (let* ((_%self109047%_ _%self106641109042%_)
               (_%self109049%_ _%self109047%_))
          (declare (not safe))
          (let ((_%h109060%_
                 (##unchecked-structure-ref _%self109049%_ '1 '#f '#f))
                (_%key?109062%_
                 (##unchecked-structure-ref _%self109049%_ '2 '#f '#f)))
            (if ((lambda (_%key?109065%_ _%key109066%_ _%value109067%_)
                   (_%key?109065%_ _%key109066%_))
                 _%key?109062%_
                 _%key109044%_
                 _%value109045%_)
                (&HashTable-set! _%h109060%_ _%key109044%_ _%value109045%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key109044%_ (cons _%value109045%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!106642%_
       '#f))
    (define _%checked-hash-table::HashTable::update!106645%_
      (lambda (_%self106644108890%_
               _%key108892%_
               _%update108893%_
               _%default108894%_)
        (let* ((_%self108896%_ _%self106644108890%_)
               (_%self108898%_ _%self108896%_))
          (declare (not safe))
          (let ((_%h108909%_
                 (##unchecked-structure-ref _%self108898%_ '1 '#f '#f))
                (_%key?108911%_
                 (##unchecked-structure-ref _%self108898%_ '2 '#f '#f)))
            (if ((lambda (_%key?108914%_
                          _%key108915%_
                          _%update108916%_
                          _%default108917%_)
                   (_%key?108914%_ _%key108915%_))
                 _%key?108911%_
                 _%key108892%_
                 _%update108893%_
                 _%default108894%_)
                (&HashTable-update!
                 _%h108909%_
                 _%key108892%_
                 _%update108893%_
                 _%default108894%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key108892%_
                         (cons _%update108893%_ (cons _%default108894%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!106645%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!106648%_
      (lambda (_%self106647108742%_ _%key108744%_)
        (let* ((_%self108746%_ _%self106647108742%_)
               (_%self108748%_ _%self108746%_))
          (declare (not safe))
          (let ((_%h108759%_
                 (##unchecked-structure-ref _%self108748%_ '1 '#f '#f))
                (_%key?108761%_
                 (##unchecked-structure-ref _%self108748%_ '2 '#f '#f)))
            (if ((lambda (_%key?108764%_ _%key108765%_)
                   (_%key?108764%_ _%key108765%_))
                 _%key?108761%_
                 _%key108744%_)
                (&HashTable-delete! _%h108759%_ _%key108744%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key108744%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!106648%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each106651%_
      (lambda (_%self106650108594%_ _%proc108596%_)
        (let* ((_%self108598%_ _%self106650108594%_)
               (_%self108600%_ _%self108598%_))
          (declare (not safe))
          (let ((_%h108611%_
                 (##unchecked-structure-ref _%self108600%_ '1 '#f '#f))
                (_%key?108613%_
                 (##unchecked-structure-ref _%self108600%_ '2 '#f '#f)))
            (if ((lambda (_%key?108616%_ _%proc108617%_) '#t)
                 _%key?108613%_
                 _%proc108596%_)
                (&HashTable-for-each _%h108611%_ _%proc108596%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc108596%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each106651%_
       '#f))
    (define _%checked-hash-table::HashTable::length106654%_
      (lambda (_%self106653108450%_)
        (let* ((_%self108453%_ _%self106653108450%_)
               (_%self108455%_ _%self108453%_))
          (declare (not safe))
          (let ((_%h108466%_
                 (##unchecked-structure-ref _%self108455%_ '1 '#f '#f))
                (_%key?108468%_
                 (##unchecked-structure-ref _%self108455%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h108466%_)
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
       _%checked-hash-table::HashTable::length106654%_
       '#f))
    (define _%checked-hash-table::HashTable::copy106657%_
      (lambda (_%self106656108306%_)
        (let* ((_%self108309%_ _%self106656108306%_)
               (_%self108311%_ _%self108309%_))
          (declare (not safe))
          (let ((_%h108322%_
                 (##unchecked-structure-ref _%self108311%_ '1 '#f '#f))
                (_%key?108324%_
                 (##unchecked-structure-ref _%self108311%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h108322%_)
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
       _%checked-hash-table::HashTable::copy106657%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!106660%_
      (lambda (_%self106659108162%_)
        (let* ((_%self108165%_ _%self106659108162%_)
               (_%self108167%_ _%self108165%_))
          (declare (not safe))
          (let ((_%h108178%_
                 (##unchecked-structure-ref _%self108167%_ '1 '#f '#f))
                (_%key?108180%_
                 (##unchecked-structure-ref _%self108167%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h108178%_)
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
       _%checked-hash-table::HashTable::clear!106660%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table108032%_
               _%count108033%_
               _%free108034%_
               _%hash108035%_
               _%test108036%_
               _%seed108037%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table108032%_
           _%count108033%_
           _%free108034%_
           _%hash108035%_
           _%test108036%_
           _%seed108037%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords107793%_
               _%size-hint107783107794%_
               _%seed107784107796%_
               _%test107785107798%_
               _%hash107786107800%_
               _%lock107787107802%_
               _%check107788107804%_
               _%weak-keys107789107806%_
               _%weak-values107790107808%_)
        (let* ((_%size-hint107811%_
                (if (eq? _%size-hint107783107794%_ absent-value)
                    '#f
                    _%size-hint107783107794%_))
               (_%seed107813%_
                (if (eq? _%seed107784107796%_ absent-value)
                    '#f
                    _%seed107784107796%_))
               (_%test107815%_
                (if (eq? _%test107785107798%_ absent-value)
                    equal?
                    _%test107785107798%_))
               (_%hash107817%_
                (if (eq? _%hash107786107800%_ absent-value)
                    '#f
                    _%hash107786107800%_))
               (_%lock107819%_
                (if (eq? _%lock107787107802%_ absent-value)
                    '#f
                    _%lock107787107802%_))
               (_%check107821%_
                (if (eq? _%check107788107804%_ absent-value)
                    '#f
                    _%check107788107804%_))
               (_%weak-keys107823%_
                (if (eq? _%weak-keys107789107806%_ absent-value)
                    '#f
                    _%weak-keys107789107806%_))
               (_%weak-values107825%_
                (if (eq? _%weak-values107790107808%_ absent-value)
                    '#f
                    _%weak-values107790107808%_)))
          (letrec ((_%table-seed107828%_
                    (lambda ()
                      (if (fixnum? _%seed107813%_)
                          _%seed107813%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock107829%_
                    (lambda (_%ht108006%_)
                      (let ((_%ht108009%_ _%ht108006%_))
                        (_%__wrap-lock107830%_ _%ht108009%_))))
                   (_%__wrap-lock107830%_
                    (lambda (_%ht107988%_)
                      (let ((_%ht107991%_ _%ht107988%_))
                        (if _%lock107819%_
                            (let ((_%$obj108003%_
                                   (let ((__tmp111157
                                          (let ((_%$obj108000%_
                                                 _%lock107819%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj108000%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj108000%_)))
                                                     '#t)
                                                _%$obj108000%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj108000%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht107991%_
                                      __tmp111157))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj108003%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj108003%_)))
                                       '#t)
                                  _%$obj108003%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj108003%_))))
                            _%ht107991%_))))
                   (_%wrap-checked107831%_
                    (lambda (_%ht107975%_ _%implicit107976%_)
                      (let ((_%ht107979%_ _%ht107975%_))
                        (_%__wrap-checked107832%_
                         _%ht107979%_
                         _%implicit107976%_))))
                   (_%__wrap-checked107832%_
                    (lambda (_%ht107948%_ _%implicit107949%_)
                      (let ((_%ht107952%_ _%ht107948%_))
                        (if _%check107821%_
                            (let ((_%$obj107972%_
                                   (let ((__tmp111158
                                          (if (procedure? _%check107821%_)
                                              _%check107821%_
                                              _%implicit107949%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht107952%_
                                      __tmp111158))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj107972%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj107972%_)))
                                       '#t)
                                  _%$obj107972%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj107972%_))))
                            _%ht107952%_))))
                   (_%make107833%_
                    (lambda (_%kons107932%_
                             _%key?107933%_
                             _%hash107934%_
                             _%test107935%_)
                      (let* ((_%size107938%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint107811%_)))
                             (_%table107940%_
                              (let ((__tmp111159 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size107938%_ __tmp111159)))
                             (_%ht107945%_
                              (let ((_%$obj107942%_
                                     (_%kons107932%_
                                      _%table107940%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size107938%_ '2))
                                      _%hash107934%_
                                      _%test107935%_
                                      (_%table-seed107828%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj107942%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj107942%_)))
                                         '#t)
                                    _%$obj107942%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj107942%_))))))
                        (_%__wrap-checked107832%_
                         (_%__wrap-lock107830%_ _%ht107945%_)
                         _%key?107933%_))))
                   (_%make-gc-hash-table107834%_
                    (lambda ()
                      (let ((_%ht107930%_
                             (let ((_%$obj107927%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint107811%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj107927%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj107927%_)))
                                        '#t)
                                   _%$obj107927%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj107927%_))))))
                        (_%__wrap-checked107832%_
                         (_%__wrap-lock107830%_ _%ht107930%_)
                         true))))
                   (_%make-gambit-table107835%_
                    (lambda ()
                      (let* ((_%size107904%_
                              (let ((_%$e107901%_ _%size-hint107811%_))
                                (if _%$e107901%_
                                    _%$e107901%_
                                    (macro-absent-obj))))
                             (_%test107909%_
                              (let ((_%$e107906%_ _%test107815%_))
                                (if _%$e107906%_ _%$e107906%_ equal?)))
                             (_%hash107917%_
                              (let ((_%$e107911%_ _%hash107817%_))
                                (if _%$e107911%_
                                    _%$e107911%_
                                    (if (eq? _%test107909%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test107909%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht107922%_
                              (let ((_%$obj107919%_
                                     (make-table
                                      'size:
                                      _%size107904%_
                                      'test:
                                      _%test107909%_
                                      'hash:
                                      _%hash107917%_
                                      'weak-keys:
                                      _%weak-keys107823%_
                                      'weak-values:
                                      _%weak-values107825%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj107919%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj107919%_)))
                                         '#t)
                                    _%$obj107919%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj107919%_))))))
                        (_%__wrap-checked107832%_
                         (_%__wrap-lock107830%_ _%ht107922%_)
                         true)))))
            (if (or _%weak-keys107823%_ _%weak-values107825%_)
                (_%make-gambit-table107835%_)
                (if (and (or (eq? _%test107815%_ eq?)
                             (eq? _%test107815%_ ##eq?))
                         (or (not _%hash107817%_)
                             (eq? _%hash107817%_ eq?-hash)
                             (eq? _%hash107817%_ eq-hash))
                         (not _%seed107813%_))
                    (_%make-gc-hash-table107834%_)
                    (if (and (or (eq? _%test107815%_ eq?)
                                 (eq? _%test107815%_ ##eq?))
                             (or (not _%hash107817%_)
                                 (eq? _%hash107817%_ eq?-hash)
                                 (eq? _%hash107817%_ eq-hash)))
                        (_%make107833%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test107815%_ eqv?)
                                     (eq? _%test107815%_ ##eqv?))
                                 (or (not _%hash107817%_)
                                     (eq? _%hash107817%_ eqv?-hash)
                                     (eq? _%hash107817%_ eqv-hash)))
                            (_%make107833%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test107815%_ eq?)
                                         (eq? _%test107815%_ ##eq?))
                                     (or (eq? _%hash107817%_ symbolic-hash)
                                         (eq? _%hash107817%_ ##symbol-hash)))
                                (_%make107833%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test107815%_ eq?)
                                             (eq? _%test107815%_ ##eq?))
                                         (eq? _%hash107817%_ immediate-hash))
                                    (_%make107833%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test107815%_ equal?)
                                                 (eq? _%test107815%_ ##equal?)
                                                 (eq? _%test107815%_ string=?)
                                                 (eq? _%test107815%_
                                                      ##string=?))
                                             (or (eq? _%hash107817%_
                                                      string-hash)
                                                 (eq? _%hash107817%_
                                                      ##string=?-hash)))
                                        (_%make107833%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test107815%_ equal?)
                                                 (not _%hash107817%_))
                                            (_%make107833%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test107815%_)
                                                (if (procedure? _%hash107817%_)
                                                    (_%make107833%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash107817%_
                                                     _%test107815%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash107817%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test107815%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords108022%_ . _%args108023%_)
        (apply make-hash-table__%
               _%@@keywords108022%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108022%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108022%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108022%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108022%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords108022%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords108022%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords108022%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords108022%_
                  'weak-values:
                  absent-value))
               _%args108023%_)))
    (define make-hash-table
      (lambda _%args107791108029%_
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
               _%args107791108029%_)))
    (define make-hash-table-eq
      (lambda _%args107780%_
        (apply make-hash-table 'test: eq? _%args107780%_)))
    (define make-hash-table-eqv
      (lambda _%args107778%_
        (apply make-hash-table 'test: eqv? _%args107778%_)))
    (define make-hash-table-symbolic
      (lambda _%args107776%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args107776%_)))
    (define make-hash-table-string
      (lambda _%args107774%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args107774%_)))
    (define make-hash-table-immediate
      (lambda _%args107772%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args107772%_)))
    (define list->hash-table
      (lambda (_%lst107769%_ . _%args107770%_)
        (list->hash-table!
         _%lst107769%_
         (apply make-hash-table
                'size:
                (length _%lst107769%_)
                _%args107770%_))))
    (define list->hash-table-eq
      (lambda (_%lst107766%_ . _%args107767%_)
        (list->hash-table!
         _%lst107766%_
         (apply make-hash-table-eq
                'size:
                (length _%lst107766%_)
                _%args107767%_))))
    (define list->hash-table-eqv
      (lambda (_%lst107763%_ . _%args107764%_)
        (list->hash-table!
         _%lst107763%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst107763%_)
                _%args107764%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst107760%_ . _%args107761%_)
        (list->hash-table!
         _%lst107760%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst107760%_)
                _%args107761%_))))
    (define list->hash-table-string
      (lambda (_%lst107757%_ . _%args107758%_)
        (list->hash-table!
         _%lst107757%_
         (apply make-hash-table-string
                'size:
                (length _%lst107757%_)
                _%args107758%_))))
    (define list->hash-table-immediate
      (lambda (_%lst107754%_ . _%args107755%_)
        (list->hash-table!
         _%lst107754%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst107754%_)
                _%args107755%_))))
    (define list->hash-table!
      (lambda (_%lst107721%_ _%h107722%_)
        (for-each
         (lambda (_%el107724%_)
           (let* ((_%el107725107732%_ _%el107724%_)
                  (_%E107727107736%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el107725107732%_
                              '([k . v])))
                     '#!void))
                  (_%K107728107742%_
                   (lambda (_%v107739%_ _%k107740%_)
                     (&HashTable-set! _%h107722%_ _%k107740%_ _%v107739%_))))
             (if (pair? _%el107725107732%_)
                 (let ((_%hd107729107745%_
                        (let ()
                          (declare (not safe))
                          (##car _%el107725107732%_)))
                       (_%tl107730107747%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el107725107732%_))))
                   (let* ((_%k107750%_ _%hd107729107745%_)
                          (_%v107752%_ _%tl107730107747%_))
                     (_%K107728107742%_ _%v107752%_ _%k107750%_)))
                 (_%E107727107736%_))))
         _%lst107721%_)
        _%h107722%_))
    (define plist->hash-table
      (lambda (_%lst107718%_ . _%args107719%_)
        (plist->hash-table!
         _%lst107718%_
         (apply make-hash-table
                'size:
                (length _%lst107718%_)
                _%args107719%_))))
    (define plist->hash-table-eq
      (lambda (_%lst107715%_ . _%args107716%_)
        (plist->hash-table!
         _%lst107715%_
         (apply make-hash-table-eq
                'size:
                (length _%lst107715%_)
                _%args107716%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst107712%_ . _%args107713%_)
        (plist->hash-table!
         _%lst107712%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst107712%_)
                _%args107713%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst107709%_ . _%args107710%_)
        (plist->hash-table!
         _%lst107709%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst107709%_)
                _%args107710%_))))
    (define plist->hash-table-string
      (lambda (_%lst107706%_ . _%args107707%_)
        (plist->hash-table!
         _%lst107706%_
         (apply make-hash-table-string
                'size:
                (length _%lst107706%_)
                _%args107707%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst107703%_ . _%args107704%_)
        (plist->hash-table!
         _%lst107703%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst107703%_)
                _%args107704%_))))
    (define plist->hash-table!
      (lambda (_%lst107643%_ _%h107644%_)
        (let _%loop107646%_ ((_%rest107648%_ _%lst107643%_))
          (let* ((_%rest107649107661%_ _%rest107648%_)
                 (_%else107652107669%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst107643%_)))))
            (let ((_%K107655107684%_
                   (lambda (_%rest107680%_ _%val107681%_ _%key107682%_)
                     (&HashTable-set! _%h107644%_ _%key107682%_ _%val107681%_)
                     (_%loop107646%_ _%rest107680%_)))
                  (_%K107654107674%_ (lambda () _%h107644%_)))
              (let ((_%try-match107651107677%_
                     (lambda ()
                       (if (null? _%rest107649107661%_)
                           (_%K107654107674%_)
                           (_%else107652107669%_)))))
                (if (pair? _%rest107649107661%_)
                    (let ((_%tl107657107689%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest107649107661%_)))
                          (_%hd107656107687%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest107649107661%_))))
                      (if (pair? _%tl107657107689%_)
                          (let ((_%tl107659107696%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl107657107689%_)))
                                (_%hd107658107694%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl107657107689%_))))
                            (let ((_%key107692%_ _%hd107656107687%_)
                                  (_%val107699%_ _%hd107658107694%_)
                                  (_%rest107701%_ _%tl107659107696%_))
                              (_%K107655107684%_
                               _%rest107701%_
                               _%val107699%_
                               _%key107692%_)))
                          (_%else107652107669%_)))
                    (_%try-match107651107677%_))))))))
    (define hash-length
      (lambda (_%h107625%_)
        (let* ((_%h107631%_
                (let ((_%$obj107628%_ _%h107625%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107628%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107628%_)))
                           '#t)
                      _%$obj107628%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107628%_)))))
               (_%h107633%_ _%h107631%_))
          (__hash-length _%h107633%_))))
    (define __hash-length
      (lambda (_%h107613%_)
        (let ((_%h107616%_ _%h107613%_)) (__HashTable-length _%h107616%_))))
    (define hash-ref__%
      (lambda (_%h107581%_ _%key107582%_ _%default107583%_)
        (let* ((_%h107589%_
                (let ((_%$obj107586%_ _%h107581%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107586%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107586%_)))
                           '#t)
                      _%$obj107586%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107586%_)))))
               (_%h107591%_ _%h107589%_))
          (__hash-ref__% _%h107591%_ _%key107582%_ _%default107583%_))))
    (define hash-ref__0
      (lambda (_%h107604%_ _%key107605%_)
        (let ((_%default107607%_ (macro-absent-obj)))
          (hash-ref__% _%h107604%_ _%key107605%_ _%default107607%_))))
    (define hash-ref
      (lambda _g111161_
        (let ((_g111160_ (let () (declare (not safe)) (##length _g111161_))))
          (cond ((let () (declare (not safe)) (##fx= _g111160_ 2))
                 (apply hash-ref__0 _g111161_))
                ((let () (declare (not safe)) (##fx= _g111160_ 3))
                 (apply hash-ref__% _g111161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g111161_))))))
    (define __hash-ref__%
      (lambda (_%h107552%_ _%key107553%_ _%default107554%_)
        (let* ((_%h107557%_ _%h107552%_)
               (_%result107566%_
                (&HashTable-ref _%h107557%_ _%key107553%_ _%default107554%_)))
          (if (eq? _%result107566%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h107557%_
               'key:
               _%key107553%_)
              _%result107566%_))))
    (define __hash-ref__0
      (lambda (_%h107571%_ _%key107572%_)
        (let ((_%default107574%_ (macro-absent-obj)))
          (__hash-ref__% _%h107571%_ _%key107572%_ _%default107574%_))))
    (define __hash-ref
      (lambda _g111163_
        (let ((_g111162_ (let () (declare (not safe)) (##length _g111163_))))
          (cond ((let () (declare (not safe)) (##fx= _g111162_ 2))
                 (apply __hash-ref__0 _g111163_))
                ((let () (declare (not safe)) (##fx= _g111162_ 3))
                 (apply __hash-ref__% _g111163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g111163_))))))
    (define hash-get
      (lambda (_%h107532%_ _%key107533%_)
        (let* ((_%h107539%_
                (let ((_%$obj107536%_ _%h107532%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107536%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107536%_)))
                           '#t)
                      _%$obj107536%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107536%_)))))
               (_%h107541%_ _%h107539%_))
          (__hash-get _%h107541%_ _%key107533%_))))
    (define __hash-get
      (lambda (_%h107519%_ _%key107520%_)
        (let ((_%h107523%_ _%h107519%_))
          (&HashTable-ref _%h107523%_ _%key107520%_ '#f))))
    (define hash-put!
      (lambda (_%h107499%_ _%key107500%_ _%value107501%_)
        (let* ((_%h107507%_
                (let ((_%$obj107504%_ _%h107499%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107504%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107504%_)))
                           '#t)
                      _%$obj107504%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107504%_)))))
               (_%h107509%_ _%h107507%_))
          (__hash-put! _%h107509%_ _%key107500%_ _%value107501%_))))
    (define __hash-put!
      (lambda (_%h107485%_ _%key107486%_ _%value107487%_)
        (let ((_%h107490%_ _%h107485%_))
          (&HashTable-set! _%h107490%_ _%key107486%_ _%value107487%_))))
    (define hash-update!__%
      (lambda (_%h107450%_ _%key107451%_ _%update107452%_ _%default107453%_)
        (let* ((_%h107459%_
                (let ((_%$obj107456%_ _%h107450%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107456%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107456%_)))
                           '#t)
                      _%$obj107456%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107456%_)))))
               (_%h107461%_ _%h107459%_))
          (__hash-update!__%
           _%h107461%_
           _%key107451%_
           _%update107452%_
           _%default107453%_))))
    (define hash-update!__0
      (lambda (_%h107474%_ _%key107475%_ _%update107476%_)
        (let ((_%default107478%_ '#!void))
          (hash-update!__%
           _%h107474%_
           _%key107475%_
           _%update107476%_
           _%default107478%_))))
    (define hash-update!
      (lambda _g111165_
        (let ((_g111164_ (let () (declare (not safe)) (##length _g111165_))))
          (cond ((let () (declare (not safe)) (##fx= _g111164_ 3))
                 (apply hash-update!__0 _g111165_))
                ((let () (declare (not safe)) (##fx= _g111164_ 4))
                 (apply hash-update!__% _g111165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g111165_))))))
    (define __hash-update!__%
      (lambda (_%h107420%_ _%key107421%_ _%update107422%_ _%default107423%_)
        (let ((_%h107426%_ _%h107420%_))
          (HashTable-update!
           _%h107426%_
           _%key107421%_
           _%update107422%_
           _%default107423%_))))
    (define __hash-update!__0
      (lambda (_%h107438%_ _%key107439%_ _%update107440%_)
        (let ((_%default107442%_ '#!void))
          (__hash-update!__%
           _%h107438%_
           _%key107439%_
           _%update107440%_
           _%default107442%_))))
    (define __hash-update!
      (lambda _g111167_
        (let ((_g111166_ (let () (declare (not safe)) (##length _g111167_))))
          (cond ((let () (declare (not safe)) (##fx= _g111166_ 3))
                 (apply __hash-update!__0 _g111167_))
                ((let () (declare (not safe)) (##fx= _g111166_ 4))
                 (apply __hash-update!__% _g111167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g111167_))))))
    (define hash-remove!
      (lambda (_%h107400%_ _%key107401%_)
        (let* ((_%h107407%_
                (let ((_%$obj107404%_ _%h107400%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107404%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107404%_)))
                           '#t)
                      _%$obj107404%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107404%_)))))
               (_%h107409%_ _%h107407%_))
          (__hash-remove! _%h107409%_ _%key107401%_))))
    (define __hash-remove!
      (lambda (_%h107387%_ _%key107388%_)
        (let ((_%h107391%_ _%h107387%_))
          (&HashTable-delete! _%h107391%_ _%key107388%_))))
    (define hash-key?
      (lambda (_%h107368%_ _%k107369%_)
        (let* ((_%h107375%_
                (let ((_%$obj107372%_ _%h107368%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107372%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107372%_)))
                           '#t)
                      _%$obj107372%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107372%_)))))
               (_%h107377%_ _%h107375%_))
          (__hash-key? _%h107377%_ _%k107369%_))))
    (define __hash-key?
      (lambda (_%h107355%_ _%k107356%_)
        (let ((_%h107359%_ _%h107355%_))
          (not (eq? (&HashTable-ref _%h107359%_ _%k107356%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h107337%_)
        (let* ((_%h107343%_
                (let ((_%$obj107340%_ _%h107337%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107340%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107340%_)))
                           '#t)
                      _%$obj107340%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107340%_)))))
               (_%h107345%_ _%h107343%_))
          (__hash->list _%h107345%_))))
    (define __hash->list
      (lambda (_%h107320%_)
        (let* ((_%h107323%_ _%h107320%_) (_%lst107332%_ '()))
          (&HashTable-for-each
           _%h107323%_
           (lambda (_%k107334%_ _%v107335%_)
             (set! _%lst107332%_
                   (cons (cons _%k107334%_ _%v107335%_) _%lst107332%_))))
          _%lst107332%_)))
    (define hash->plist
      (lambda (_%h107302%_)
        (let* ((_%h107308%_
                (let ((_%$obj107305%_ _%h107302%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107305%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107305%_)))
                           '#t)
                      _%$obj107305%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107305%_)))))
               (_%h107310%_ _%h107308%_))
          (__hash->plist _%h107310%_))))
    (define __hash->plist
      (lambda (_%h107285%_)
        (let* ((_%h107288%_ _%h107285%_) (_%lst107297%_ '()))
          (&HashTable-for-each
           _%h107288%_
           (lambda (_%k107299%_ _%v107300%_)
             (set! _%lst107297%_
                   (cons _%k107299%_ (cons _%v107300%_ _%lst107297%_)))))
          _%lst107297%_)))
    (define hash-for-each
      (lambda (_%proc107256%_ _%h107257%_)
        (if (procedure? _%proc107256%_)
            (let* ((_%proc107261%_ _%proc107256%_)
                   (_%h107273%_
                    (let ((_%$obj107270%_ _%h107257%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107270%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107270%_)))
                               '#t)
                          _%$obj107270%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107270%_)))))
                   (_%h107275%_ _%h107273%_))
              (__hash-for-each _%proc107261%_ _%h107275%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@569.22-569.26"
               'contract:
               'procedure?
               'value:
               _%proc107256%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc107235%_ _%h107236%_)
        (let* ((_%proc107239%_ _%proc107235%_) (_%h107247%_ _%h107236%_))
          (&HashTable-for-each _%h107247%_ _%proc107239%_))))
    (define hash-map
      (lambda (_%proc107206%_ _%h107207%_)
        (if (procedure? _%proc107206%_)
            (let* ((_%proc107211%_ _%proc107206%_)
                   (_%h107223%_
                    (let ((_%$obj107220%_ _%h107207%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107220%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107220%_)))
                               '#t)
                          _%$obj107220%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107220%_)))))
                   (_%h107225%_ _%h107223%_))
              (__hash-map _%proc107211%_ _%h107225%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@572.17-572.21"
               'contract:
               'procedure?
               'value:
               _%proc107206%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc107180%_ _%h107181%_)
        (let* ((_%proc107184%_ _%proc107180%_)
               (_%h107192%_ _%h107181%_)
               (_%result107201%_ '()))
          (&HashTable-for-each
           _%h107192%_
           (lambda (_%k107203%_ _%v107204%_)
             (set! _%result107201%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc107184%_ _%k107203%_ _%v107204%_))
                         _%result107201%_))))
          _%result107201%_)))
    (define hash-fold
      (lambda (_%proc107150%_ _%iv107151%_ _%h107152%_)
        (if (procedure? _%proc107150%_)
            (let* ((_%proc107156%_ _%proc107150%_)
                   (_%h107168%_
                    (let ((_%$obj107165%_ _%h107152%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107165%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107165%_)))
                               '#t)
                          _%$obj107165%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107165%_)))))
                   (_%h107170%_ _%h107168%_))
              (__hash-fold _%proc107156%_ _%iv107151%_ _%h107170%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@577.18-577.22"
               'contract:
               'procedure?
               'value:
               _%proc107150%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc107123%_ _%iv107124%_ _%h107125%_)
        (let* ((_%proc107128%_ _%proc107123%_)
               (_%h107136%_ _%h107125%_)
               (_%result107145%_ _%iv107124%_))
          (&HashTable-for-each
           _%h107136%_
           (lambda (_%k107147%_ _%v107148%_)
             (set! _%result107145%_
                   (let ()
                     (declare (not safe))
                     (_%proc107128%_
                      _%k107147%_
                      _%v107148%_
                      _%result107145%_)))))
          _%result107145%_)))
    (define hash-find__%
      (lambda (_%proc107081%_ _%h107082%_ _%default-value107083%_)
        (if (procedure? _%proc107081%_)
            (let* ((_%proc107087%_ _%proc107081%_)
                   (_%h107099%_
                    (let ((_%$obj107096%_ _%h107082%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj107096%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj107096%_)))
                               '#t)
                          _%$obj107096%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj107096%_)))))
                   (_%h107101%_ _%h107099%_))
              (__hash-find__%
               _%proc107087%_
               _%h107101%_
               _%default-value107083%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@582.18-582.22"
               'contract:
               'procedure?
               'value:
               _%proc107081%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc107114%_ _%h107115%_)
        (let ((_%default-value107117%_ '#f))
          (hash-find__% _%proc107114%_ _%h107115%_ _%default-value107117%_))))
    (define hash-find
      (lambda _g111169_
        (let ((_g111168_ (let () (declare (not safe)) (##length _g111169_))))
          (cond ((let () (declare (not safe)) (##fx= _g111168_ 2))
                 (apply hash-find__0 _g111169_))
                ((let () (declare (not safe)) (##fx= _g111168_ 3))
                 (apply hash-find__% _g111169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g111169_))))))
    (define __hash-find__%
      (lambda (_%proc107038%_ _%h107039%_ _%default-value107040%_)
        (let* ((_%proc107043%_ _%proc107038%_)
               (_%h107051%_ _%h107039%_)
               (__tmp111170
                (lambda (_%return107060%_)
                  (&HashTable-for-each
                   _%h107051%_
                   (lambda (_%k107062%_ _%v107063%_)
                     (let ((_%$e107065%_
                            (let ()
                              (declare (not safe))
                              (_%proc107043%_ _%k107062%_ _%v107063%_))))
                       (if _%$e107065%_
                           (_%return107060%_ _%$e107065%_)
                           '#!void))))
                  _%default-value107040%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp111170))))
    (define __hash-find__0
      (lambda (_%proc107071%_ _%h107072%_)
        (let ((_%default-value107074%_ '#f))
          (__hash-find__%
           _%proc107071%_
           _%h107072%_
           _%default-value107074%_))))
    (define __hash-find
      (lambda _g111172_
        (let ((_g111171_ (let () (declare (not safe)) (##length _g111172_))))
          (cond ((let () (declare (not safe)) (##fx= _g111171_ 2))
                 (apply __hash-find__0 _g111172_))
                ((let () (declare (not safe)) (##fx= _g111171_ 3))
                 (apply __hash-find__% _g111172_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g111172_))))))
    (define hash-keys
      (lambda (_%h107019%_)
        (let* ((_%h107025%_
                (let ((_%$obj107022%_ _%h107019%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107022%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107022%_)))
                           '#t)
                      _%$obj107022%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107022%_)))))
               (_%h107027%_ _%h107025%_))
          (__hash-keys _%h107027%_))))
    (define __hash-keys
      (lambda (_%h107002%_)
        (let* ((_%h107005%_ _%h107002%_) (_%result107014%_ '()))
          (&HashTable-for-each
           _%h107005%_
           (lambda (_%k107016%_ _%v107017%_)
             (set! _%result107014%_ (cons _%k107016%_ _%result107014%_))))
          _%result107014%_)))
    (define hash-values
      (lambda (_%h106984%_)
        (let* ((_%h106990%_
                (let ((_%$obj106987%_ _%h106984%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106987%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106987%_)))
                           '#t)
                      _%$obj106987%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106987%_)))))
               (_%h106992%_ _%h106990%_))
          (__hash-values _%h106992%_))))
    (define __hash-values
      (lambda (_%h106967%_)
        (let* ((_%h106970%_ _%h106967%_) (_%result106979%_ '()))
          (&HashTable-for-each
           _%h106970%_
           (lambda (_%k106981%_ _%v106982%_)
             (set! _%result106979%_ (cons _%v106982%_ _%result106979%_))))
          _%result106979%_)))
    (define hash-copy
      (lambda (_%h106949%_)
        (let* ((_%h106955%_
                (let ((_%$obj106952%_ _%h106949%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106952%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106952%_)))
                           '#t)
                      _%$obj106952%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106952%_)))))
               (_%h106957%_ _%h106955%_))
          (__hash-copy _%h106957%_))))
    (define __hash-copy
      (lambda (_%h106937%_)
        (let ((_%h106940%_ _%h106937%_)) (__HashTable-copy _%h106940%_))))
    (define hash-clear!
      (lambda (_%h106919%_)
        (let* ((_%h106925%_
                (let ((_%$obj106922%_ _%h106919%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106922%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106922%_)))
                           '#t)
                      _%$obj106922%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106922%_)))))
               (_%h106927%_ _%h106925%_))
          (__hash-clear! _%h106927%_))))
    (define __hash-clear!
      (lambda (_%h106907%_)
        (let ((_%h106910%_ _%h106907%_)) (&HashTable-clear! _%h106910%_))))
    (define hash-merge
      (lambda (_%h106888%_ . _%rest106889%_)
        (let* ((_%h106895%_
                (let ((_%$obj106892%_ _%h106888%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106892%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106892%_)))
                           '#t)
                      _%$obj106892%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106892%_)))))
               (_%h106897%_ _%h106895%_))
          (declare (not safe))
          (##apply __hash-merge _%h106897%_ _%rest106889%_))))
    (define __hash-merge
      (lambda (_%h106873%_ . _%rest106874%_)
        (let* ((_%h106877%_ _%h106873%_)
               (_%copy106886%_ (__HashTable-copy _%h106877%_)))
          (apply hash-merge! _%copy106886%_ _%rest106874%_)
          _%copy106886%_)))
    (define hash-merge!
      (lambda (_%h106854%_ . _%rest106855%_)
        (let* ((_%h106861%_
                (let ((_%$obj106858%_ _%h106854%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106858%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106858%_)))
                           '#t)
                      _%$obj106858%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106858%_)))))
               (_%h106863%_ _%h106861%_))
          (declare (not safe))
          (##apply __hash-merge! _%h106863%_ _%rest106855%_))))
    (define __hash-merge!
      (lambda (_%h106817%_ . _%rest106818%_)
        (let ((_%h106821%_ _%h106817%_))
          (let ((__tmp111173
                 (lambda (_%hr106830%_)
                   (let* ((_%hr106836%_
                           (let ((_%$obj106833%_ _%hr106830%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj106833%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj106833%_)))
                                      '#t)
                                 _%$obj106833%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj106833%_)))))
                          (_%hr106838%_ _%hr106836%_))
                     (&HashTable-for-each
                      _%hr106838%_
                      (lambda (_%k106851%_ _%v106852%_)
                        (if (__hash-key? _%h106821%_ _%k106851%_)
                            '#!void
                            (&HashTable-set!
                             _%h106821%_
                             _%k106851%_
                             _%v106852%_))))))))
            (declare (not safe))
            (##for-each __tmp111173 _%rest106818%_))
          _%h106821%_)))))
