(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1755903075)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp114512 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp114512
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args114492%_
        (apply make-instance UnboundKeyError::t _%$args114492%_)))
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
      (lambda (_%where114366%_ _%message114367%_ . _%irritants114368%_)
        (let ((__tmp114513
               (let ((__obj114506
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj114506
                    _%message114367%_
                    'where:
                    _%where114366%_
                    'irritants:
                    _%irritants114368%_))
                 __obj114506)))
          (declare (not safe))
          (raise __tmp114513))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp114514 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp114514
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
      (lambda (_%obj114364%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj114364%_))))
    (define try-HashTable
      (lambda (_%obj114362%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj114362%_))))
    (define HashTable?
      (lambda (_%obj114360%_)
        (let ((__tmp114515
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj114360%_ __tmp114515))))
    (define is-HashTable?
      (lambda (_%obj114358%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj114358%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self114342%_)
        (let* ((_%self114347%_
                (let ((_%$obj114344%_ _%self114342%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114344%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114344%_)))
                           '#t)
                      _%$obj114344%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114344%_)))))
               (_%self114349%_ _%self114347%_))
          (&HashTable-clear! _%self114349%_))))
    (define &HashTable-clear!
      (lambda (_%self114327%_)
        (let ((_%self114329%_ _%self114327%_))
          (declare (not safe))
          (let ((_%obj114339%_
                 (##unchecked-structure-ref _%self114329%_ '1 '#f 'clear!))
                (_%f114340%_
                 (##unchecked-structure-ref _%self114329%_ '2 '#f 'clear!)))
            (_%f114340%_ _%obj114339%_)))))
    (define HashTable-copy
      (lambda (_%self114311%_)
        (let* ((_%self114316%_
                (let ((_%$obj114313%_ _%self114311%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114313%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114313%_)))
                           '#t)
                      _%$obj114313%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114313%_)))))
               (_%self114318%_ _%self114316%_))
          (__HashTable-copy _%self114318%_))))
    (define __HashTable-copy
      (lambda (_%self114298%_)
        (let* ((_%self114300%_ _%self114298%_)
               (_%$obj114308%_ (&HashTable-copy _%self114300%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj114308%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj114308%_)))
                   '#t)
              _%$obj114308%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj114308%_))))))
    (define &HashTable-copy
      (lambda (_%self114283%_)
        (let ((_%self114285%_ _%self114283%_))
          (declare (not safe))
          (let ((_%obj114295%_
                 (##unchecked-structure-ref _%self114285%_ '1 '#f 'copy))
                (_%f114296%_
                 (##unchecked-structure-ref _%self114285%_ '3 '#f 'copy)))
            (_%f114296%_ _%obj114295%_)))))
    (define HashTable-delete!
      (lambda (_%self114266%_ _%key114267%_)
        (let* ((_%self114272%_
                (let ((_%$obj114269%_ _%self114266%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114269%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114269%_)))
                           '#t)
                      _%$obj114269%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114269%_)))))
               (_%self114274%_ _%self114272%_))
          (&HashTable-delete! _%self114274%_ _%key114267%_))))
    (define &HashTable-delete!
      (lambda (_%self114250%_ _%key114251%_)
        (let ((_%self114253%_ _%self114250%_))
          (declare (not safe))
          (let ((_%obj114263%_
                 (##unchecked-structure-ref _%self114253%_ '1 '#f 'delete!))
                (_%f114264%_
                 (##unchecked-structure-ref _%self114253%_ '4 '#f 'delete!)))
            (_%f114264%_ _%obj114263%_ _%key114251%_)))))
    (define HashTable-for-each
      (lambda (_%self114223%_ _%proc114224%_)
        (let* ((_%self114229%_
                (let ((_%$obj114226%_ _%self114223%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114226%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114226%_)))
                           '#t)
                      _%$obj114226%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114226%_)))))
               (_%self114231%_ _%self114229%_))
          (if (procedure? _%proc114224%_)
              (let ((_%proc114240%_ _%proc114224%_))
                (&HashTable-for-each _%self114231%_ _%proc114240%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc114224%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self114199%_ _%proc114200%_)
        (let* ((_%self114202%_ _%self114199%_) (_%proc114209%_ _%proc114200%_))
          (declare (not safe))
          (let ((_%obj114220%_
                 (##unchecked-structure-ref _%self114202%_ '1 '#f 'for-each))
                (_%f114221%_
                 (##unchecked-structure-ref _%self114202%_ '5 '#f 'for-each)))
            (_%f114221%_ _%obj114220%_ _%proc114209%_)))))
    (define HashTable-length
      (lambda (_%self114183%_)
        (let* ((_%self114188%_
                (let ((_%$obj114185%_ _%self114183%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114185%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114185%_)))
                           '#t)
                      _%$obj114185%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114185%_)))))
               (_%self114190%_ _%self114188%_))
          (__HashTable-length _%self114190%_))))
    (define __HashTable-length
      (lambda (_%self114170%_)
        (let* ((_%self114172%_ _%self114170%_)
               (_%val114180%_ (&HashTable-length _%self114172%_)))
          _%val114180%_)))
    (define &HashTable-length
      (lambda (_%self114155%_)
        (let ((_%self114157%_ _%self114155%_))
          (declare (not safe))
          (let ((_%obj114167%_
                 (##unchecked-structure-ref _%self114157%_ '1 '#f 'length))
                (_%f114168%_
                 (##unchecked-structure-ref _%self114157%_ '6 '#f 'length)))
            (_%f114168%_ _%obj114167%_)))))
    (define HashTable-ref
      (lambda (_%self114137%_ _%key114138%_ _%default114139%_)
        (let* ((_%self114144%_
                (let ((_%$obj114141%_ _%self114137%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114141%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114141%_)))
                           '#t)
                      _%$obj114141%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114141%_)))))
               (_%self114146%_ _%self114144%_))
          (&HashTable-ref _%self114146%_ _%key114138%_ _%default114139%_))))
    (define &HashTable-ref
      (lambda (_%self114120%_ _%key114121%_ _%default114122%_)
        (let ((_%self114124%_ _%self114120%_))
          (declare (not safe))
          (let ((_%obj114134%_
                 (##unchecked-structure-ref _%self114124%_ '1 '#f 'ref))
                (_%f114135%_
                 (##unchecked-structure-ref _%self114124%_ '7 '#f 'ref)))
            (_%f114135%_ _%obj114134%_ _%key114121%_ _%default114122%_)))))
    (define HashTable-set!
      (lambda (_%self114102%_ _%key114103%_ _%value114104%_)
        (let* ((_%self114109%_
                (let ((_%$obj114106%_ _%self114102%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114106%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114106%_)))
                           '#t)
                      _%$obj114106%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114106%_)))))
               (_%self114111%_ _%self114109%_))
          (&HashTable-set! _%self114111%_ _%key114103%_ _%value114104%_))))
    (define &HashTable-set!
      (lambda (_%self114085%_ _%key114086%_ _%value114087%_)
        (let ((_%self114089%_ _%self114085%_))
          (declare (not safe))
          (let ((_%obj114099%_
                 (##unchecked-structure-ref _%self114089%_ '1 '#f 'set!))
                (_%f114100%_
                 (##unchecked-structure-ref _%self114089%_ '8 '#f 'set!)))
            (_%f114100%_ _%obj114099%_ _%key114086%_ _%value114087%_)))))
    (define HashTable-update!
      (lambda (_%self114056%_ _%key114057%_ _%proc114058%_ _%default114059%_)
        (let* ((_%self114064%_
                (let ((_%$obj114061%_ _%self114056%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114061%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114061%_)))
                           '#t)
                      _%$obj114061%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114061%_)))))
               (_%self114066%_ _%self114064%_))
          (if (procedure? _%proc114058%_)
              (let ((_%proc114075%_ _%proc114058%_))
                (&HashTable-update!
                 _%self114066%_
                 _%key114057%_
                 _%proc114075%_
                 _%default114059%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc114058%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self114028%_ _%key114029%_ _%proc114030%_ _%default114031%_)
        (let* ((_%self114033%_ _%self114028%_) (_%proc114040%_ _%proc114030%_))
          (declare (not safe))
          (let ((_%obj114051%_
                 (##unchecked-structure-ref _%self114033%_ '1 '#f 'update!))
                (_%f114053%_
                 (##unchecked-structure-ref _%self114033%_ '9 '#f 'update!)))
            (_%f114053%_
             _%obj114051%_
             _%key114029%_
             _%proc114040%_
             _%default114031%_)))))
    (define Locker::t
      (let ((__tmp114516 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp114516
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
      (lambda (_%obj114026%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj114026%_))))
    (define try-Locker
      (lambda (_%obj114024%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj114024%_))))
    (define Locker?
      (lambda (_%obj114022%_)
        (let ((__tmp114517
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj114022%_ __tmp114517))))
    (define is-Locker?
      (lambda (_%obj114020%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj114020%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self114004%_)
        (let* ((_%self114009%_
                (let ((_%$obj114006%_ _%self114004%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114006%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114006%_)))
                           '#t)
                      _%$obj114006%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj114006%_)))))
               (_%self114011%_ _%self114009%_))
          (&Locker-read-lock! _%self114011%_))))
    (define &Locker-read-lock!
      (lambda (_%self113989%_)
        (let ((_%self113991%_ _%self113989%_))
          (declare (not safe))
          (let ((_%obj114001%_
                 (##unchecked-structure-ref _%self113991%_ '1 '#f 'read-lock!))
                (_%f114002%_
                 (##unchecked-structure-ref
                  _%self113991%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f114002%_ _%obj114001%_)))))
    (define Locker-read-unlock!
      (lambda (_%self113973%_)
        (let* ((_%self113978%_
                (let ((_%$obj113975%_ _%self113973%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113975%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113975%_)))
                           '#t)
                      _%$obj113975%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj113975%_)))))
               (_%self113980%_ _%self113978%_))
          (&Locker-read-unlock! _%self113980%_))))
    (define &Locker-read-unlock!
      (lambda (_%self113958%_)
        (let ((_%self113960%_ _%self113958%_))
          (declare (not safe))
          (let ((_%obj113970%_
                 (##unchecked-structure-ref
                  _%self113960%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f113971%_
                 (##unchecked-structure-ref
                  _%self113960%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f113971%_ _%obj113970%_)))))
    (define Locker-write-lock!
      (lambda (_%self113942%_)
        (let* ((_%self113947%_
                (let ((_%$obj113944%_ _%self113942%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113944%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113944%_)))
                           '#t)
                      _%$obj113944%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj113944%_)))))
               (_%self113949%_ _%self113947%_))
          (&Locker-write-lock! _%self113949%_))))
    (define &Locker-write-lock!
      (lambda (_%self113927%_)
        (let ((_%self113929%_ _%self113927%_))
          (declare (not safe))
          (let ((_%obj113939%_
                 (##unchecked-structure-ref
                  _%self113929%_
                  '1
                  '#f
                  'write-lock!))
                (_%f113940%_
                 (##unchecked-structure-ref
                  _%self113929%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f113940%_ _%obj113939%_)))))
    (define Locker-write-unlock!
      (lambda (_%self113911%_)
        (let* ((_%self113916%_
                (let ((_%$obj113913%_ _%self113911%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113913%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113913%_)))
                           '#t)
                      _%$obj113913%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj113913%_)))))
               (_%self113918%_ _%self113916%_))
          (&Locker-write-unlock! _%self113918%_))))
    (define &Locker-write-unlock!
      (lambda (_%self113894%_)
        (let ((_%self113896%_ _%self113894%_))
          (declare (not safe))
          (let ((_%obj113906%_
                 (##unchecked-structure-ref
                  _%self113896%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f113908%_
                 (##unchecked-structure-ref
                  _%self113896%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f113908%_ _%obj113906%_)))))
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
      (lambda (_%table113887%_
               _%key113888%_
               _%update113889%_
               _%default113890%_)
        (let ((_%result113892%_
               (table-ref _%table113887%_ _%key113888%_ _%default113890%_)))
          (table-set!
           _%table113887%_
           _%key113888%_
           (_%update113889%_ _%default113890%_)))))
    (define gambit-table-for-each
      (lambda (_%table113884%_ _%proc113885%_)
        (table-for-each _%proc113885%_ _%table113884%_)))
    (define gambit-table-clear!
      (lambda (_%table113882%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table113882%_ '0 '5 '#f '#f))))
    (let ((__tmp114518 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp114518 'HashTable::ref table-ref))
    (let ((__tmp114519 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp114519 'HashTable::set! table-set!))
    (let ((__tmp114520 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp114520 'HashTable::update! gambit-table-update!))
    (let ((__tmp114521 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp114521 'HashTable::delete! table-set!))
    (let ((__tmp114522 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp114522 'HashTable::for-each gambit-table-for-each))
    (let ((__tmp114523 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp114523 'HashTable::length table-length))
    (let ((__tmp114524 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp114524 'HashTable::copy table-copy))
    (let ((__tmp114525 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp114525 'HashTable::clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots113864%_ '(table count free hash test seed))
             (_%slot-vector113866%_ (list->vector (cons '#f _%slots113864%_)))
             (_%slot-table113873%_
              (let ((_%slot-table113868%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp114528
                       (lambda (_%slot113870%_ _%field113871%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table113868%_
                            _%slot113870%_
                            _%field113871%_))
                         (let ((__tmp114529
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot113870%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table113868%_
                            __tmp114529
                            _%field113871%_))))
                      (__tmp114526
                       (let ((__tmp114527
                              (let ()
                                (declare (not safe))
                                (##length _%slots113864%_))))
                         (declare (not safe))
                         (##iota __tmp114527 '1))))
                  (declare (not safe))
                  (##for-each __tmp114528 _%slots113864%_ __tmp114526))
                _%slot-table113868%_))
             (_%flags113875%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields113877%_ '#())
             (_%properties113879%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots113864%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp114530 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags113875%_
         __table::t
         _%fields113877%_
         __tmp114530
         _%slot-vector113866%_
         _%slot-table113873%_
         _%properties113879%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots113846%_ '(gcht immediate))
             (_%slot-vector113848%_ (list->vector (cons '#f _%slots113846%_)))
             (_%slot-table113855%_
              (let ((_%slot-table113850%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp114533
                       (lambda (_%slot113852%_ _%field113853%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table113850%_
                            _%slot113852%_
                            _%field113853%_))
                         (let ((__tmp114534
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot113852%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table113850%_
                            __tmp114534
                            _%field113853%_))))
                      (__tmp114531
                       (let ((__tmp114532
                              (let ()
                                (declare (not safe))
                                (##length _%slots113846%_))))
                         (declare (not safe))
                         (##iota __tmp114532 '1))))
                  (declare (not safe))
                  (##for-each __tmp114533 _%slots113846%_ __tmp114531))
                _%slot-table113850%_))
             (_%flags113857%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields113859%_ '#())
             (_%properties113861%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots113846%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp114535 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags113857%_
         __gc-table::t
         _%fields113859%_
         __tmp114535
         _%slot-vector113848%_
         _%slot-table113855%_
         _%properties113861%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp114537 (list))
            (__tmp114536
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp114537
         '(table lock)
         __tmp114536
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args113843%_
        (apply make-instance locked-hash-table::t _%$args113843%_)))
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
      (let ((__tmp114539 (list))
            (__tmp114538
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp114539
         '(table key-check)
         __tmp114538
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args113840%_
        (apply make-instance checked-hash-table::t _%$args113840%_)))
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
      (let ((__tmp114541 (list hash-table::t))
            (__tmp114540 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp114541
         '()
         __tmp114540
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args113837%_
        (apply make-instance eq-hash-table::t _%$args113837%_)))
    (define eqv-hash-table::t
      (let ((__tmp114543 (list hash-table::t))
            (__tmp114542 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp114543
         '()
         __tmp114542
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args113834%_
        (apply make-instance eqv-hash-table::t _%$args113834%_)))
    (define symbol-hash-table::t
      (let ((__tmp114545 (list hash-table::t))
            (__tmp114544 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp114545
         '()
         __tmp114544
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args113831%_
        (apply make-instance symbol-hash-table::t _%$args113831%_)))
    (define string-hash-table::t
      (let ((__tmp114547 (list hash-table::t))
            (__tmp114546 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp114547
         '()
         __tmp114546
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args113828%_
        (apply make-instance string-hash-table::t _%$args113828%_)))
    (define immediate-hash-table::t
      (let ((__tmp114549 (list hash-table::t))
            (__tmp114548 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp114549
         '()
         __tmp114548
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args113825%_
        (apply make-instance immediate-hash-table::t _%$args113825%_)))
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
    (define _%locked-hash-table::HashTable::ref109825%_
      (lambda (_%self109824113799%_ _%key113801%_ _%default113802%_)
        (let* ((_%self113804%_ _%self109824113799%_)
               (_%self113807%_ _%self113804%_))
          (let ((_%h113817%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self113807%_ '1 '#f '#f)))
                (_%l113819%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self113807%_ '2 '#f '#f))))
            (let ((__tmp114552 (lambda () (&Locker-read-lock! _%l113819%_)))
                  (__tmp114551
                   (lambda ()
                     (&HashTable-ref
                      _%h113817%_
                      _%key113801%_
                      _%default113802%_)))
                  (__tmp114550 (lambda () (&Locker-read-unlock! _%l113819%_))))
              (declare (not safe))
              (##dynamic-wind __tmp114552 __tmp114551 __tmp114550))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref109825%_
       '#f))
    (define _%locked-hash-table::HashTable::set!109828%_
      (lambda (_%self109827113650%_ _%key113652%_ _%value113653%_)
        (let* ((_%self113655%_ _%self109827113650%_)
               (_%self113658%_ _%self113655%_))
          (let ((_%h113668%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self113658%_ '1 '#f '#f)))
                (_%l113670%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self113658%_ '2 '#f '#f))))
            (let ((__tmp114555 (lambda () (&Locker-write-lock! _%l113670%_)))
                  (__tmp114554
                   (lambda ()
                     (&HashTable-set!
                      _%h113668%_
                      _%key113652%_
                      _%value113653%_)))
                  (__tmp114553
                   (lambda () (&Locker-write-unlock! _%l113670%_))))
              (declare (not safe))
              (##dynamic-wind __tmp114555 __tmp114554 __tmp114553))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!109828%_
       '#f))
    (define _%locked-hash-table::HashTable::update!109831%_
      (lambda (_%self109830113500%_
               _%key113502%_
               _%update113503%_
               _%default113504%_)
        (let* ((_%self113506%_ _%self109830113500%_)
               (_%self113509%_ _%self113506%_))
          (let ((_%h113519%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self113509%_ '1 '#f '#f)))
                (_%l113521%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self113509%_ '2 '#f '#f))))
            (let ((__tmp114558 (lambda () (&Locker-write-lock! _%l113521%_)))
                  (__tmp114557
                   (lambda ()
                     (&HashTable-update!
                      _%h113519%_
                      _%key113502%_
                      _%update113503%_
                      _%default113504%_)))
                  (__tmp114556
                   (lambda () (&Locker-write-unlock! _%l113521%_))))
              (declare (not safe))
              (##dynamic-wind __tmp114558 __tmp114557 __tmp114556))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!109831%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!109834%_
      (lambda (_%self109833113352%_ _%key113354%_)
        (let* ((_%self113356%_ _%self109833113352%_)
               (_%self113359%_ _%self113356%_))
          (let ((_%h113369%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self113359%_ '1 '#f '#f)))
                (_%l113371%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self113359%_ '2 '#f '#f))))
            (let ((__tmp114561 (lambda () (&Locker-write-lock! _%l113371%_)))
                  (__tmp114560
                   (lambda () (&HashTable-delete! _%h113369%_ _%key113354%_)))
                  (__tmp114559
                   (lambda () (&Locker-write-unlock! _%l113371%_))))
              (declare (not safe))
              (##dynamic-wind __tmp114561 __tmp114560 __tmp114559))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!109834%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each109837%_
      (lambda (_%self109836113204%_ _%proc113206%_)
        (let* ((_%self113208%_ _%self109836113204%_)
               (_%self113211%_ _%self113208%_))
          (let ((_%h113221%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self113211%_ '1 '#f '#f)))
                (_%l113223%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self113211%_ '2 '#f '#f))))
            (let ((__tmp114564 (lambda () (&Locker-read-lock! _%l113223%_)))
                  (__tmp114563
                   (lambda ()
                     (&HashTable-for-each _%h113221%_ _%proc113206%_)))
                  (__tmp114562 (lambda () (&Locker-read-unlock! _%l113223%_))))
              (declare (not safe))
              (##dynamic-wind __tmp114564 __tmp114563 __tmp114562))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each109837%_
       '#f))
    (define _%locked-hash-table::HashTable::length109840%_
      (lambda (_%self109839113057%_)
        (let* ((_%self113060%_ _%self109839113057%_)
               (_%self113063%_ _%self113060%_))
          (let ((_%h113073%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self113063%_ '1 '#f '#f)))
                (_%l113075%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self113063%_ '2 '#f '#f))))
            (let ((__tmp114567 (lambda () (&Locker-read-lock! _%l113075%_)))
                  (__tmp114566 (lambda () (&HashTable-length _%h113073%_)))
                  (__tmp114565 (lambda () (&Locker-read-unlock! _%l113075%_))))
              (declare (not safe))
              (##dynamic-wind __tmp114567 __tmp114566 __tmp114565))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length109840%_
       '#f))
    (define _%locked-hash-table::HashTable::copy109843%_
      (lambda (_%self109842112910%_)
        (let* ((_%self112913%_ _%self109842112910%_)
               (_%self112916%_ _%self112913%_))
          (let ((_%h112926%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self112916%_ '1 '#f '#f)))
                (_%l112928%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self112916%_ '2 '#f '#f))))
            (let ((__tmp114570 (lambda () (&Locker-read-lock! _%l112928%_)))
                  (__tmp114569 (lambda () (&HashTable-copy _%h112926%_)))
                  (__tmp114568 (lambda () (&Locker-read-unlock! _%l112928%_))))
              (declare (not safe))
              (##dynamic-wind __tmp114570 __tmp114569 __tmp114568))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy109843%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!109846%_
      (lambda (_%self109845112763%_)
        (let* ((_%self112766%_ _%self109845112763%_)
               (_%self112769%_ _%self112766%_))
          (let ((_%h112779%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self112769%_ '1 '#f '#f)))
                (_%l112781%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self112769%_ '2 '#f '#f))))
            (let ((__tmp114573 (lambda () (&Locker-write-lock! _%l112781%_)))
                  (__tmp114572 (lambda () (&HashTable-clear! _%h112779%_)))
                  (__tmp114571
                   (lambda () (&Locker-write-unlock! _%l112781%_))))
              (declare (not safe))
              (##dynamic-wind __tmp114573 __tmp114572 __tmp114571))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!109846%_
       '#f))
    (let ((__tmp114574 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp114574 'Locker::read-lock! mutex-lock!))
    (let ((__tmp114575 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp114575 'Locker::read-unlock! mutex-unlock!))
    (let ((__tmp114576 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp114576 'Locker::write-lock! mutex-lock!))
    (let ((__tmp114577 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp114577 'Locker::write-unlock! mutex-unlock!))
    (define _%checked-hash-table::HashTable::ref110060%_
      (lambda (_%self110059112613%_ _%key112615%_ _%default112616%_)
        (let* ((_%self112618%_ _%self110059112613%_)
               (_%self112620%_ _%self112618%_))
          (declare (not safe))
          (let ((_%h112631%_
                 (##unchecked-structure-ref _%self112620%_ '1 '#f '#f))
                (_%key?112633%_
                 (##unchecked-structure-ref _%self112620%_ '2 '#f '#f)))
            (if ((lambda (_%key?112636%_ _%key112637%_ _%default112638%_)
                   (_%key?112636%_ _%key112637%_))
                 _%key?112633%_
                 _%key112615%_
                 _%default112616%_)
                (&HashTable-ref _%h112631%_ _%key112615%_ _%default112616%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key112615%_ (cons _%default112616%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref110060%_
       '#f))
    (define _%checked-hash-table::HashTable::set!110063%_
      (lambda (_%self110062112463%_ _%key112465%_ _%value112466%_)
        (let* ((_%self112468%_ _%self110062112463%_)
               (_%self112470%_ _%self112468%_))
          (declare (not safe))
          (let ((_%h112481%_
                 (##unchecked-structure-ref _%self112470%_ '1 '#f '#f))
                (_%key?112483%_
                 (##unchecked-structure-ref _%self112470%_ '2 '#f '#f)))
            (if ((lambda (_%key?112486%_ _%key112487%_ _%value112488%_)
                   (_%key?112486%_ _%key112487%_))
                 _%key?112483%_
                 _%key112465%_
                 _%value112466%_)
                (&HashTable-set! _%h112481%_ _%key112465%_ _%value112466%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key112465%_ (cons _%value112466%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!110063%_
       '#f))
    (define _%checked-hash-table::HashTable::update!110066%_
      (lambda (_%self110065112311%_
               _%key112313%_
               _%update112314%_
               _%default112315%_)
        (let* ((_%self112317%_ _%self110065112311%_)
               (_%self112319%_ _%self112317%_))
          (declare (not safe))
          (let ((_%h112330%_
                 (##unchecked-structure-ref _%self112319%_ '1 '#f '#f))
                (_%key?112332%_
                 (##unchecked-structure-ref _%self112319%_ '2 '#f '#f)))
            (if ((lambda (_%key?112335%_
                          _%key112336%_
                          _%update112337%_
                          _%default112338%_)
                   (_%key?112335%_ _%key112336%_))
                 _%key?112332%_
                 _%key112313%_
                 _%update112314%_
                 _%default112315%_)
                (&HashTable-update!
                 _%h112330%_
                 _%key112313%_
                 _%update112314%_
                 _%default112315%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key112313%_
                         (cons _%update112314%_ (cons _%default112315%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!110066%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!110069%_
      (lambda (_%self110068112163%_ _%key112165%_)
        (let* ((_%self112167%_ _%self110068112163%_)
               (_%self112169%_ _%self112167%_))
          (declare (not safe))
          (let ((_%h112180%_
                 (##unchecked-structure-ref _%self112169%_ '1 '#f '#f))
                (_%key?112182%_
                 (##unchecked-structure-ref _%self112169%_ '2 '#f '#f)))
            (if ((lambda (_%key?112185%_ _%key112186%_)
                   (_%key?112185%_ _%key112186%_))
                 _%key?112182%_
                 _%key112165%_)
                (&HashTable-delete! _%h112180%_ _%key112165%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key112165%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!110069%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each110072%_
      (lambda (_%self110071112015%_ _%proc112017%_)
        (let* ((_%self112019%_ _%self110071112015%_)
               (_%self112021%_ _%self112019%_))
          (declare (not safe))
          (let ((_%h112032%_
                 (##unchecked-structure-ref _%self112021%_ '1 '#f '#f))
                (_%key?112034%_
                 (##unchecked-structure-ref _%self112021%_ '2 '#f '#f)))
            (if ((lambda (_%key?112037%_ _%proc112038%_) '#t)
                 _%key?112034%_
                 _%proc112017%_)
                (&HashTable-for-each _%h112032%_ _%proc112017%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc112017%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each110072%_
       '#f))
    (define _%checked-hash-table::HashTable::length110075%_
      (lambda (_%self110074111871%_)
        (let* ((_%self111874%_ _%self110074111871%_)
               (_%self111876%_ _%self111874%_))
          (declare (not safe))
          (let ((_%h111887%_
                 (##unchecked-structure-ref _%self111876%_ '1 '#f '#f))
                (_%key?111889%_
                 (##unchecked-structure-ref _%self111876%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h111887%_)
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
       _%checked-hash-table::HashTable::length110075%_
       '#f))
    (define _%checked-hash-table::HashTable::copy110078%_
      (lambda (_%self110077111727%_)
        (let* ((_%self111730%_ _%self110077111727%_)
               (_%self111732%_ _%self111730%_))
          (declare (not safe))
          (let ((_%h111743%_
                 (##unchecked-structure-ref _%self111732%_ '1 '#f '#f))
                (_%key?111745%_
                 (##unchecked-structure-ref _%self111732%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h111743%_)
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
       _%checked-hash-table::HashTable::copy110078%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!110081%_
      (lambda (_%self110080111583%_)
        (let* ((_%self111586%_ _%self110080111583%_)
               (_%self111588%_ _%self111586%_))
          (declare (not safe))
          (let ((_%h111599%_
                 (##unchecked-structure-ref _%self111588%_ '1 '#f '#f))
                (_%key?111601%_
                 (##unchecked-structure-ref _%self111588%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h111599%_)
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
       _%checked-hash-table::HashTable::clear!110081%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table111453%_
               _%count111454%_
               _%free111455%_
               _%hash111456%_
               _%test111457%_
               _%seed111458%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table111453%_
           _%count111454%_
           _%free111455%_
           _%hash111456%_
           _%test111457%_
           _%seed111458%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords111214%_
               _%size-hint111204111215%_
               _%seed111205111217%_
               _%test111206111219%_
               _%hash111207111221%_
               _%lock111208111223%_
               _%check111209111225%_
               _%weak-keys111210111227%_
               _%weak-values111211111229%_)
        (let* ((_%size-hint111232%_
                (if (eq? _%size-hint111204111215%_ absent-value)
                    '#f
                    _%size-hint111204111215%_))
               (_%seed111234%_
                (if (eq? _%seed111205111217%_ absent-value)
                    '#f
                    _%seed111205111217%_))
               (_%test111236%_
                (if (eq? _%test111206111219%_ absent-value)
                    equal?
                    _%test111206111219%_))
               (_%hash111238%_
                (if (eq? _%hash111207111221%_ absent-value)
                    '#f
                    _%hash111207111221%_))
               (_%lock111240%_
                (if (eq? _%lock111208111223%_ absent-value)
                    '#f
                    _%lock111208111223%_))
               (_%check111242%_
                (if (eq? _%check111209111225%_ absent-value)
                    '#f
                    _%check111209111225%_))
               (_%weak-keys111244%_
                (if (eq? _%weak-keys111210111227%_ absent-value)
                    '#f
                    _%weak-keys111210111227%_))
               (_%weak-values111246%_
                (if (eq? _%weak-values111211111229%_ absent-value)
                    '#f
                    _%weak-values111211111229%_)))
          (letrec ((_%table-seed111249%_
                    (lambda ()
                      (if (fixnum? _%seed111234%_)
                          _%seed111234%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock111250%_
                    (lambda (_%ht111427%_)
                      (let ((_%ht111430%_ _%ht111427%_))
                        (_%__wrap-lock111251%_ _%ht111430%_))))
                   (_%__wrap-lock111251%_
                    (lambda (_%ht111409%_)
                      (let ((_%ht111412%_ _%ht111409%_))
                        (if _%lock111240%_
                            (let ((_%$obj111424%_
                                   (let ((__tmp114578
                                          (let ((_%$obj111421%_
                                                 _%lock111240%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj111421%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj111421%_)))
                                                     '#t)
                                                _%$obj111421%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj111421%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht111412%_
                                      __tmp114578))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj111424%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj111424%_)))
                                       '#t)
                                  _%$obj111424%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj111424%_))))
                            _%ht111412%_))))
                   (_%wrap-checked111252%_
                    (lambda (_%ht111396%_ _%implicit111397%_)
                      (let ((_%ht111400%_ _%ht111396%_))
                        (_%__wrap-checked111253%_
                         _%ht111400%_
                         _%implicit111397%_))))
                   (_%__wrap-checked111253%_
                    (lambda (_%ht111369%_ _%implicit111370%_)
                      (let ((_%ht111373%_ _%ht111369%_))
                        (if _%check111242%_
                            (let ((_%$obj111393%_
                                   (let ((__tmp114579
                                          (if (procedure? _%check111242%_)
                                              _%check111242%_
                                              _%implicit111370%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht111373%_
                                      __tmp114579))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj111393%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj111393%_)))
                                       '#t)
                                  _%$obj111393%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj111393%_))))
                            _%ht111373%_))))
                   (_%make111254%_
                    (lambda (_%kons111353%_
                             _%key?111354%_
                             _%hash111355%_
                             _%test111356%_)
                      (let* ((_%size111359%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint111232%_)))
                             (_%table111361%_
                              (let ((__tmp114580 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size111359%_ __tmp114580)))
                             (_%ht111366%_
                              (let ((_%$obj111363%_
                                     (_%kons111353%_
                                      _%table111361%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size111359%_ '2))
                                      _%hash111355%_
                                      _%test111356%_
                                      (_%table-seed111249%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj111363%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj111363%_)))
                                         '#t)
                                    _%$obj111363%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj111363%_))))))
                        (_%__wrap-checked111253%_
                         (_%__wrap-lock111251%_ _%ht111366%_)
                         _%key?111354%_))))
                   (_%make-gc-hash-table111255%_
                    (lambda ()
                      (let ((_%ht111351%_
                             (let ((_%$obj111348%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint111232%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj111348%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj111348%_)))
                                        '#t)
                                   _%$obj111348%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj111348%_))))))
                        (_%__wrap-checked111253%_
                         (_%__wrap-lock111251%_ _%ht111351%_)
                         true))))
                   (_%make-gambit-table111256%_
                    (lambda ()
                      (let* ((_%size111325%_
                              (let ((_%$e111322%_ _%size-hint111232%_))
                                (if _%$e111322%_
                                    _%$e111322%_
                                    (macro-absent-obj))))
                             (_%test111330%_
                              (let ((_%$e111327%_ _%test111236%_))
                                (if _%$e111327%_ _%$e111327%_ equal?)))
                             (_%hash111338%_
                              (let ((_%$e111332%_ _%hash111238%_))
                                (if _%$e111332%_
                                    _%$e111332%_
                                    (if (eq? _%test111330%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test111330%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht111343%_
                              (let ((_%$obj111340%_
                                     (make-table
                                      'size:
                                      _%size111325%_
                                      'test:
                                      _%test111330%_
                                      'hash:
                                      _%hash111338%_
                                      'weak-keys:
                                      _%weak-keys111244%_
                                      'weak-values:
                                      _%weak-values111246%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj111340%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj111340%_)))
                                         '#t)
                                    _%$obj111340%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj111340%_))))))
                        (_%__wrap-checked111253%_
                         (_%__wrap-lock111251%_ _%ht111343%_)
                         true)))))
            (if (or _%weak-keys111244%_ _%weak-values111246%_)
                (_%make-gambit-table111256%_)
                (if (and (or (eq? _%test111236%_ eq?)
                             (eq? _%test111236%_ ##eq?))
                         (or (not _%hash111238%_)
                             (eq? _%hash111238%_ eq?-hash)
                             (eq? _%hash111238%_ eq-hash))
                         (not _%seed111234%_))
                    (_%make-gc-hash-table111255%_)
                    (if (and (or (eq? _%test111236%_ eq?)
                                 (eq? _%test111236%_ ##eq?))
                             (or (not _%hash111238%_)
                                 (eq? _%hash111238%_ eq?-hash)
                                 (eq? _%hash111238%_ eq-hash)))
                        (_%make111254%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test111236%_ eqv?)
                                     (eq? _%test111236%_ ##eqv?))
                                 (or (not _%hash111238%_)
                                     (eq? _%hash111238%_ eqv?-hash)
                                     (eq? _%hash111238%_ eqv-hash)))
                            (_%make111254%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test111236%_ eq?)
                                         (eq? _%test111236%_ ##eq?))
                                     (or (eq? _%hash111238%_ symbolic-hash)
                                         (eq? _%hash111238%_ ##symbol-hash)))
                                (_%make111254%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test111236%_ eq?)
                                             (eq? _%test111236%_ ##eq?))
                                         (eq? _%hash111238%_ immediate-hash))
                                    (_%make111254%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test111236%_ equal?)
                                                 (eq? _%test111236%_ ##equal?)
                                                 (eq? _%test111236%_ string=?)
                                                 (eq? _%test111236%_
                                                      ##string=?))
                                             (or (eq? _%hash111238%_
                                                      string-hash)
                                                 (eq? _%hash111238%_
                                                      ##string=?-hash)))
                                        (_%make111254%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test111236%_ equal?)
                                                 (not _%hash111238%_))
                                            (_%make111254%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test111236%_)
                                                (if (procedure? _%hash111238%_)
                                                    (_%make111254%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash111238%_
                                                     _%test111236%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash111238%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test111236%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords111443%_ . _%args111444%_)
        (apply make-hash-table__%
               _%@@keywords111443%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords111443%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords111443%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords111443%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords111443%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords111443%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords111443%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords111443%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords111443%_
                  'weak-values:
                  absent-value))
               _%args111444%_)))
    (define make-hash-table
      (lambda _%args111212111450%_
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
               _%args111212111450%_)))
    (define make-hash-table-eq
      (lambda _%args111201%_
        (apply make-hash-table 'test: eq? _%args111201%_)))
    (define make-hash-table-eqv
      (lambda _%args111199%_
        (apply make-hash-table 'test: eqv? _%args111199%_)))
    (define make-hash-table-symbolic
      (lambda _%args111197%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args111197%_)))
    (define make-hash-table-string
      (lambda _%args111195%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args111195%_)))
    (define make-hash-table-immediate
      (lambda _%args111193%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args111193%_)))
    (define list->hash-table
      (lambda (_%lst111190%_ . _%args111191%_)
        (list->hash-table!
         _%lst111190%_
         (apply make-hash-table
                'size:
                (length _%lst111190%_)
                _%args111191%_))))
    (define list->hash-table-eq
      (lambda (_%lst111187%_ . _%args111188%_)
        (list->hash-table!
         _%lst111187%_
         (apply make-hash-table-eq
                'size:
                (length _%lst111187%_)
                _%args111188%_))))
    (define list->hash-table-eqv
      (lambda (_%lst111184%_ . _%args111185%_)
        (list->hash-table!
         _%lst111184%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst111184%_)
                _%args111185%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst111181%_ . _%args111182%_)
        (list->hash-table!
         _%lst111181%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst111181%_)
                _%args111182%_))))
    (define list->hash-table-string
      (lambda (_%lst111178%_ . _%args111179%_)
        (list->hash-table!
         _%lst111178%_
         (apply make-hash-table-string
                'size:
                (length _%lst111178%_)
                _%args111179%_))))
    (define list->hash-table-immediate
      (lambda (_%lst111175%_ . _%args111176%_)
        (list->hash-table!
         _%lst111175%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst111175%_)
                _%args111176%_))))
    (define list->hash-table!
      (lambda (_%lst111142%_ _%h111143%_)
        (for-each
         (lambda (_%el111145%_)
           (let* ((_%el111146111153%_ _%el111145%_)
                  (_%E111148111157%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el111146111153%_
                              '([k . v])))
                     '#!void))
                  (_%K111149111163%_
                   (lambda (_%v111160%_ _%k111161%_)
                     (&HashTable-set! _%h111143%_ _%k111161%_ _%v111160%_))))
             (if (pair? _%el111146111153%_)
                 (let ((_%hd111150111166%_
                        (let ()
                          (declare (not safe))
                          (##car _%el111146111153%_)))
                       (_%tl111151111168%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el111146111153%_))))
                   (let* ((_%k111171%_ _%hd111150111166%_)
                          (_%v111173%_ _%tl111151111168%_))
                     (_%K111149111163%_ _%v111173%_ _%k111171%_)))
                 (_%E111148111157%_))))
         _%lst111142%_)
        _%h111143%_))
    (define plist->hash-table
      (lambda (_%lst111139%_ . _%args111140%_)
        (plist->hash-table!
         _%lst111139%_
         (apply make-hash-table
                'size:
                (length _%lst111139%_)
                _%args111140%_))))
    (define plist->hash-table-eq
      (lambda (_%lst111136%_ . _%args111137%_)
        (plist->hash-table!
         _%lst111136%_
         (apply make-hash-table-eq
                'size:
                (length _%lst111136%_)
                _%args111137%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst111133%_ . _%args111134%_)
        (plist->hash-table!
         _%lst111133%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst111133%_)
                _%args111134%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst111130%_ . _%args111131%_)
        (plist->hash-table!
         _%lst111130%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst111130%_)
                _%args111131%_))))
    (define plist->hash-table-string
      (lambda (_%lst111127%_ . _%args111128%_)
        (plist->hash-table!
         _%lst111127%_
         (apply make-hash-table-string
                'size:
                (length _%lst111127%_)
                _%args111128%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst111124%_ . _%args111125%_)
        (plist->hash-table!
         _%lst111124%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst111124%_)
                _%args111125%_))))
    (define plist->hash-table!
      (lambda (_%lst111064%_ _%h111065%_)
        (let _%loop111067%_ ((_%rest111069%_ _%lst111064%_))
          (let* ((_%rest111070111082%_ _%rest111069%_)
                 (_%else111073111090%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst111064%_)))))
            (let ((_%K111076111105%_
                   (lambda (_%rest111101%_ _%val111102%_ _%key111103%_)
                     (&HashTable-set! _%h111065%_ _%key111103%_ _%val111102%_)
                     (_%loop111067%_ _%rest111101%_)))
                  (_%K111075111095%_ (lambda () _%h111065%_)))
              (let ((_%try-match111072111098%_
                     (lambda ()
                       (if (null? _%rest111070111082%_)
                           (_%K111075111095%_)
                           (_%else111073111090%_)))))
                (if (pair? _%rest111070111082%_)
                    (let ((_%tl111078111110%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest111070111082%_)))
                          (_%hd111077111108%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest111070111082%_))))
                      (if (pair? _%tl111078111110%_)
                          (let ((_%tl111080111117%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl111078111110%_)))
                                (_%hd111079111115%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl111078111110%_))))
                            (let ((_%key111113%_ _%hd111077111108%_)
                                  (_%val111120%_ _%hd111079111115%_)
                                  (_%rest111122%_ _%tl111080111117%_))
                              (_%K111076111105%_
                               _%rest111122%_
                               _%val111120%_
                               _%key111113%_)))
                          (_%else111073111090%_)))
                    (_%try-match111072111098%_))))))))
    (define hash-length
      (lambda (_%h111046%_)
        (let* ((_%h111052%_
                (let ((_%$obj111049%_ _%h111046%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj111049%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj111049%_)))
                           '#t)
                      _%$obj111049%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj111049%_)))))
               (_%h111054%_ _%h111052%_))
          (__hash-length _%h111054%_))))
    (define __hash-length
      (lambda (_%h111034%_)
        (let ((_%h111037%_ _%h111034%_)) (__HashTable-length _%h111037%_))))
    (define hash-ref__%
      (lambda (_%h111002%_ _%key111003%_ _%default111004%_)
        (let* ((_%h111010%_
                (let ((_%$obj111007%_ _%h111002%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj111007%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj111007%_)))
                           '#t)
                      _%$obj111007%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj111007%_)))))
               (_%h111012%_ _%h111010%_))
          (__hash-ref__% _%h111012%_ _%key111003%_ _%default111004%_))))
    (define hash-ref__0
      (lambda (_%h111025%_ _%key111026%_)
        (let ((_%default111028%_ (macro-absent-obj)))
          (hash-ref__% _%h111025%_ _%key111026%_ _%default111028%_))))
    (define hash-ref
      (lambda _g114581_
        (let ((_g114582_ (let () (declare (not safe)) (##length _g114581_))))
          (cond ((let () (declare (not safe)) (##fx= _g114582_ 2))
                 (apply hash-ref__0 _g114581_))
                ((let () (declare (not safe)) (##fx= _g114582_ 3))
                 (apply hash-ref__% _g114581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g114581_))))))
    (define __hash-ref__%
      (lambda (_%h110973%_ _%key110974%_ _%default110975%_)
        (let* ((_%h110978%_ _%h110973%_)
               (_%result110987%_
                (&HashTable-ref _%h110978%_ _%key110974%_ _%default110975%_)))
          (if (eq? _%result110987%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h110978%_
               'key:
               _%key110974%_)
              _%result110987%_))))
    (define __hash-ref__0
      (lambda (_%h110992%_ _%key110993%_)
        (let ((_%default110995%_ (macro-absent-obj)))
          (__hash-ref__% _%h110992%_ _%key110993%_ _%default110995%_))))
    (define __hash-ref
      (lambda _g114583_
        (let ((_g114584_ (let () (declare (not safe)) (##length _g114583_))))
          (cond ((let () (declare (not safe)) (##fx= _g114584_ 2))
                 (apply __hash-ref__0 _g114583_))
                ((let () (declare (not safe)) (##fx= _g114584_ 3))
                 (apply __hash-ref__% _g114583_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g114583_))))))
    (define hash-get
      (lambda (_%h110953%_ _%key110954%_)
        (let* ((_%h110960%_
                (let ((_%$obj110957%_ _%h110953%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110957%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110957%_)))
                           '#t)
                      _%$obj110957%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110957%_)))))
               (_%h110962%_ _%h110960%_))
          (__hash-get _%h110962%_ _%key110954%_))))
    (define __hash-get
      (lambda (_%h110940%_ _%key110941%_)
        (let ((_%h110944%_ _%h110940%_))
          (&HashTable-ref _%h110944%_ _%key110941%_ '#f))))
    (define hash-put!
      (lambda (_%h110920%_ _%key110921%_ _%value110922%_)
        (let* ((_%h110928%_
                (let ((_%$obj110925%_ _%h110920%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110925%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110925%_)))
                           '#t)
                      _%$obj110925%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110925%_)))))
               (_%h110930%_ _%h110928%_))
          (__hash-put! _%h110930%_ _%key110921%_ _%value110922%_))))
    (define __hash-put!
      (lambda (_%h110906%_ _%key110907%_ _%value110908%_)
        (let ((_%h110911%_ _%h110906%_))
          (&HashTable-set! _%h110911%_ _%key110907%_ _%value110908%_))))
    (define hash-update!__%
      (lambda (_%h110871%_ _%key110872%_ _%update110873%_ _%default110874%_)
        (let* ((_%h110880%_
                (let ((_%$obj110877%_ _%h110871%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110877%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110877%_)))
                           '#t)
                      _%$obj110877%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110877%_)))))
               (_%h110882%_ _%h110880%_))
          (__hash-update!__%
           _%h110882%_
           _%key110872%_
           _%update110873%_
           _%default110874%_))))
    (define hash-update!__0
      (lambda (_%h110895%_ _%key110896%_ _%update110897%_)
        (let ((_%default110899%_ '#!void))
          (hash-update!__%
           _%h110895%_
           _%key110896%_
           _%update110897%_
           _%default110899%_))))
    (define hash-update!
      (lambda _g114585_
        (let ((_g114586_ (let () (declare (not safe)) (##length _g114585_))))
          (cond ((let () (declare (not safe)) (##fx= _g114586_ 3))
                 (apply hash-update!__0 _g114585_))
                ((let () (declare (not safe)) (##fx= _g114586_ 4))
                 (apply hash-update!__% _g114585_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g114585_))))))
    (define __hash-update!__%
      (lambda (_%h110841%_ _%key110842%_ _%update110843%_ _%default110844%_)
        (let ((_%h110847%_ _%h110841%_))
          (HashTable-update!
           _%h110847%_
           _%key110842%_
           _%update110843%_
           _%default110844%_))))
    (define __hash-update!__0
      (lambda (_%h110859%_ _%key110860%_ _%update110861%_)
        (let ((_%default110863%_ '#!void))
          (__hash-update!__%
           _%h110859%_
           _%key110860%_
           _%update110861%_
           _%default110863%_))))
    (define __hash-update!
      (lambda _g114587_
        (let ((_g114588_ (let () (declare (not safe)) (##length _g114587_))))
          (cond ((let () (declare (not safe)) (##fx= _g114588_ 3))
                 (apply __hash-update!__0 _g114587_))
                ((let () (declare (not safe)) (##fx= _g114588_ 4))
                 (apply __hash-update!__% _g114587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g114587_))))))
    (define hash-remove!
      (lambda (_%h110821%_ _%key110822%_)
        (let* ((_%h110828%_
                (let ((_%$obj110825%_ _%h110821%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110825%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110825%_)))
                           '#t)
                      _%$obj110825%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110825%_)))))
               (_%h110830%_ _%h110828%_))
          (__hash-remove! _%h110830%_ _%key110822%_))))
    (define __hash-remove!
      (lambda (_%h110808%_ _%key110809%_)
        (let ((_%h110812%_ _%h110808%_))
          (&HashTable-delete! _%h110812%_ _%key110809%_))))
    (define hash-key?
      (lambda (_%h110789%_ _%k110790%_)
        (let* ((_%h110796%_
                (let ((_%$obj110793%_ _%h110789%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110793%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110793%_)))
                           '#t)
                      _%$obj110793%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110793%_)))))
               (_%h110798%_ _%h110796%_))
          (__hash-key? _%h110798%_ _%k110790%_))))
    (define __hash-key?
      (lambda (_%h110776%_ _%k110777%_)
        (let ((_%h110780%_ _%h110776%_))
          (not (eq? (&HashTable-ref _%h110780%_ _%k110777%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h110758%_)
        (let* ((_%h110764%_
                (let ((_%$obj110761%_ _%h110758%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110761%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110761%_)))
                           '#t)
                      _%$obj110761%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110761%_)))))
               (_%h110766%_ _%h110764%_))
          (__hash->list _%h110766%_))))
    (define __hash->list
      (lambda (_%h110741%_)
        (let* ((_%h110744%_ _%h110741%_) (_%lst110753%_ '()))
          (&HashTable-for-each
           _%h110744%_
           (lambda (_%k110755%_ _%v110756%_)
             (set! _%lst110753%_
                   (cons (cons _%k110755%_ _%v110756%_) _%lst110753%_))))
          _%lst110753%_)))
    (define hash->plist
      (lambda (_%h110723%_)
        (let* ((_%h110729%_
                (let ((_%$obj110726%_ _%h110723%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110726%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110726%_)))
                           '#t)
                      _%$obj110726%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110726%_)))))
               (_%h110731%_ _%h110729%_))
          (__hash->plist _%h110731%_))))
    (define __hash->plist
      (lambda (_%h110706%_)
        (let* ((_%h110709%_ _%h110706%_) (_%lst110718%_ '()))
          (&HashTable-for-each
           _%h110709%_
           (lambda (_%k110720%_ _%v110721%_)
             (set! _%lst110718%_
                   (cons _%k110720%_ (cons _%v110721%_ _%lst110718%_)))))
          _%lst110718%_)))
    (define hash-for-each
      (lambda (_%proc110677%_ _%h110678%_)
        (if (procedure? _%proc110677%_)
            (let* ((_%proc110682%_ _%proc110677%_)
                   (_%h110694%_
                    (let ((_%$obj110691%_ _%h110678%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj110691%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj110691%_)))
                               '#t)
                          _%$obj110691%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj110691%_)))))
                   (_%h110696%_ _%h110694%_))
              (__hash-for-each _%proc110682%_ _%h110696%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@569.22-569.26"
               'contract:
               'procedure?
               'value:
               _%proc110677%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc110656%_ _%h110657%_)
        (let* ((_%proc110660%_ _%proc110656%_) (_%h110668%_ _%h110657%_))
          (&HashTable-for-each _%h110668%_ _%proc110660%_))))
    (define hash-map
      (lambda (_%proc110627%_ _%h110628%_)
        (if (procedure? _%proc110627%_)
            (let* ((_%proc110632%_ _%proc110627%_)
                   (_%h110644%_
                    (let ((_%$obj110641%_ _%h110628%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj110641%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj110641%_)))
                               '#t)
                          _%$obj110641%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj110641%_)))))
                   (_%h110646%_ _%h110644%_))
              (__hash-map _%proc110632%_ _%h110646%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@572.17-572.21"
               'contract:
               'procedure?
               'value:
               _%proc110627%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc110601%_ _%h110602%_)
        (let* ((_%proc110605%_ _%proc110601%_)
               (_%h110613%_ _%h110602%_)
               (_%result110622%_ '()))
          (&HashTable-for-each
           _%h110613%_
           (lambda (_%k110624%_ _%v110625%_)
             (set! _%result110622%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc110605%_ _%k110624%_ _%v110625%_))
                         _%result110622%_))))
          _%result110622%_)))
    (define hash-fold
      (lambda (_%proc110571%_ _%iv110572%_ _%h110573%_)
        (if (procedure? _%proc110571%_)
            (let* ((_%proc110577%_ _%proc110571%_)
                   (_%h110589%_
                    (let ((_%$obj110586%_ _%h110573%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj110586%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj110586%_)))
                               '#t)
                          _%$obj110586%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj110586%_)))))
                   (_%h110591%_ _%h110589%_))
              (__hash-fold _%proc110577%_ _%iv110572%_ _%h110591%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@577.18-577.22"
               'contract:
               'procedure?
               'value:
               _%proc110571%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc110544%_ _%iv110545%_ _%h110546%_)
        (let* ((_%proc110549%_ _%proc110544%_)
               (_%h110557%_ _%h110546%_)
               (_%result110566%_ _%iv110545%_))
          (&HashTable-for-each
           _%h110557%_
           (lambda (_%k110568%_ _%v110569%_)
             (set! _%result110566%_
                   (let ()
                     (declare (not safe))
                     (_%proc110549%_
                      _%k110568%_
                      _%v110569%_
                      _%result110566%_)))))
          _%result110566%_)))
    (define hash-find__%
      (lambda (_%proc110502%_ _%h110503%_ _%default-value110504%_)
        (if (procedure? _%proc110502%_)
            (let* ((_%proc110508%_ _%proc110502%_)
                   (_%h110520%_
                    (let ((_%$obj110517%_ _%h110503%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj110517%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj110517%_)))
                               '#t)
                          _%$obj110517%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj110517%_)))))
                   (_%h110522%_ _%h110520%_))
              (__hash-find__%
               _%proc110508%_
               _%h110522%_
               _%default-value110504%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@582.18-582.22"
               'contract:
               'procedure?
               'value:
               _%proc110502%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc110535%_ _%h110536%_)
        (let ((_%default-value110538%_ '#f))
          (hash-find__% _%proc110535%_ _%h110536%_ _%default-value110538%_))))
    (define hash-find
      (lambda _g114589_
        (let ((_g114590_ (let () (declare (not safe)) (##length _g114589_))))
          (cond ((let () (declare (not safe)) (##fx= _g114590_ 2))
                 (apply hash-find__0 _g114589_))
                ((let () (declare (not safe)) (##fx= _g114590_ 3))
                 (apply hash-find__% _g114589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g114589_))))))
    (define __hash-find__%
      (lambda (_%proc110459%_ _%h110460%_ _%default-value110461%_)
        (let* ((_%proc110464%_ _%proc110459%_)
               (_%h110472%_ _%h110460%_)
               (__tmp114591
                (lambda (_%return110481%_)
                  (&HashTable-for-each
                   _%h110472%_
                   (lambda (_%k110483%_ _%v110484%_)
                     (let ((_%$e110486%_
                            (let ()
                              (declare (not safe))
                              (_%proc110464%_ _%k110483%_ _%v110484%_))))
                       (if _%$e110486%_
                           (_%return110481%_ _%$e110486%_)
                           '#!void))))
                  _%default-value110461%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp114591))))
    (define __hash-find__0
      (lambda (_%proc110492%_ _%h110493%_)
        (let ((_%default-value110495%_ '#f))
          (__hash-find__%
           _%proc110492%_
           _%h110493%_
           _%default-value110495%_))))
    (define __hash-find
      (lambda _g114592_
        (let ((_g114593_ (let () (declare (not safe)) (##length _g114592_))))
          (cond ((let () (declare (not safe)) (##fx= _g114593_ 2))
                 (apply __hash-find__0 _g114592_))
                ((let () (declare (not safe)) (##fx= _g114593_ 3))
                 (apply __hash-find__% _g114592_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g114592_))))))
    (define hash-keys
      (lambda (_%h110440%_)
        (let* ((_%h110446%_
                (let ((_%$obj110443%_ _%h110440%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110443%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110443%_)))
                           '#t)
                      _%$obj110443%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110443%_)))))
               (_%h110448%_ _%h110446%_))
          (__hash-keys _%h110448%_))))
    (define __hash-keys
      (lambda (_%h110423%_)
        (let* ((_%h110426%_ _%h110423%_) (_%result110435%_ '()))
          (&HashTable-for-each
           _%h110426%_
           (lambda (_%k110437%_ _%v110438%_)
             (set! _%result110435%_ (cons _%k110437%_ _%result110435%_))))
          _%result110435%_)))
    (define hash-values
      (lambda (_%h110405%_)
        (let* ((_%h110411%_
                (let ((_%$obj110408%_ _%h110405%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110408%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110408%_)))
                           '#t)
                      _%$obj110408%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110408%_)))))
               (_%h110413%_ _%h110411%_))
          (__hash-values _%h110413%_))))
    (define __hash-values
      (lambda (_%h110388%_)
        (let* ((_%h110391%_ _%h110388%_) (_%result110400%_ '()))
          (&HashTable-for-each
           _%h110391%_
           (lambda (_%k110402%_ _%v110403%_)
             (set! _%result110400%_ (cons _%v110403%_ _%result110400%_))))
          _%result110400%_)))
    (define hash-copy
      (lambda (_%h110370%_)
        (let* ((_%h110376%_
                (let ((_%$obj110373%_ _%h110370%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110373%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110373%_)))
                           '#t)
                      _%$obj110373%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110373%_)))))
               (_%h110378%_ _%h110376%_))
          (__hash-copy _%h110378%_))))
    (define __hash-copy
      (lambda (_%h110358%_)
        (let ((_%h110361%_ _%h110358%_)) (__HashTable-copy _%h110361%_))))
    (define hash-clear!
      (lambda (_%h110340%_)
        (let* ((_%h110346%_
                (let ((_%$obj110343%_ _%h110340%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110343%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110343%_)))
                           '#t)
                      _%$obj110343%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110343%_)))))
               (_%h110348%_ _%h110346%_))
          (__hash-clear! _%h110348%_))))
    (define __hash-clear!
      (lambda (_%h110328%_)
        (let ((_%h110331%_ _%h110328%_)) (&HashTable-clear! _%h110331%_))))
    (define hash-merge
      (lambda (_%h110309%_ . _%rest110310%_)
        (let* ((_%h110316%_
                (let ((_%$obj110313%_ _%h110309%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110313%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110313%_)))
                           '#t)
                      _%$obj110313%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110313%_)))))
               (_%h110318%_ _%h110316%_))
          (declare (not safe))
          (##apply __hash-merge _%h110318%_ _%rest110310%_))))
    (define __hash-merge
      (lambda (_%h110294%_ . _%rest110295%_)
        (let* ((_%h110298%_ _%h110294%_)
               (_%copy110307%_ (__HashTable-copy _%h110298%_)))
          (apply hash-merge! _%copy110307%_ _%rest110295%_)
          _%copy110307%_)))
    (define hash-merge!
      (lambda (_%h110275%_ . _%rest110276%_)
        (let* ((_%h110282%_
                (let ((_%$obj110279%_ _%h110275%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj110279%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj110279%_)))
                           '#t)
                      _%$obj110279%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj110279%_)))))
               (_%h110284%_ _%h110282%_))
          (declare (not safe))
          (##apply __hash-merge! _%h110284%_ _%rest110276%_))))
    (define __hash-merge!
      (lambda (_%h110238%_ . _%rest110239%_)
        (let ((_%h110242%_ _%h110238%_))
          (let ((__tmp114594
                 (lambda (_%hr110251%_)
                   (let* ((_%hr110257%_
                           (let ((_%$obj110254%_ _%hr110251%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj110254%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj110254%_)))
                                      '#t)
                                 _%$obj110254%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj110254%_)))))
                          (_%hr110259%_ _%hr110257%_))
                     (&HashTable-for-each
                      _%hr110259%_
                      (lambda (_%k110272%_ _%v110273%_)
                        (if (__hash-key? _%h110242%_ _%k110272%_)
                            '#!void
                            (&HashTable-set!
                             _%h110242%_
                             _%k110272%_
                             _%v110273%_))))))))
            (declare (not safe))
            (##for-each __tmp114594 _%rest110239%_))
          _%h110242%_)))))
