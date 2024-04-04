(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1712251111)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp106890 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp106890
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args106870%_
        (apply make-instance UnboundKeyError::t _%$args106870%_)))
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
      (__bind-method! UnboundKeyError::t ':init! UnboundKeyError:::init! '#f))
    (define raise-unbound-key-error
      (lambda (_%where106744%_ _%message106745%_ . _%irritants106746%_)
        (let ((__tmp106891
               (let ((__obj106884
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj106884
                  _%message106745%_
                  'where:
                  _%where106744%_
                  'irritants:
                  _%irritants106746%_)
                 __obj106884)))
          (declare (not safe))
          (raise __tmp106891))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp106892 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp106892
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
      (lambda (_%obj106742%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj106742%_))))
    (define try-HashTable
      (lambda (_%obj106740%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj106740%_))))
    (define HashTable?
      (lambda (_%obj106738%_)
        (let ((__tmp106893
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106738%_ __tmp106893))))
    (define is-HashTable?
      (lambda (_%obj106736%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj106736%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self106720%_)
        (let* ((_%self106725%_
                (let ((_%$obj106722%_ _%self106720%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106722%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106722%_)))
                           '#t)
                      _%$obj106722%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106722%_)))))
               (_%self106727%_ _%self106725%_))
          (declare (not safe))
          (&HashTable-clear! _%self106727%_))))
    (define &HashTable-clear!
      (lambda (_%self106705%_)
        (let ((_%self106707%_ _%self106705%_))
          (declare (not safe))
          (let ((_%obj106717%_
                 (##unchecked-structure-ref _%self106707%_ '1 '#f 'clear!))
                (_%f106718%_
                 (##unchecked-structure-ref _%self106707%_ '2 '#f 'clear!)))
            (_%f106718%_ _%obj106717%_)))))
    (define HashTable-copy
      (lambda (_%self106689%_)
        (let* ((_%self106694%_
                (let ((_%$obj106691%_ _%self106689%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106691%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106691%_)))
                           '#t)
                      _%$obj106691%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106691%_)))))
               (_%self106696%_ _%self106694%_))
          (declare (not safe))
          (__HashTable-copy _%self106696%_))))
    (define __HashTable-copy
      (lambda (_%self106676%_)
        (let* ((_%self106678%_ _%self106676%_)
               (_%$obj106686%_
                (let ()
                  (declare (not safe))
                  (&HashTable-copy _%self106678%_))))
          (if (and (let () (declare (not safe)) (##structure? _%$obj106686%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj106686%_)))
                   '#t)
              _%$obj106686%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj106686%_))))))
    (define &HashTable-copy
      (lambda (_%self106661%_)
        (let ((_%self106663%_ _%self106661%_))
          (declare (not safe))
          (let ((_%obj106673%_
                 (##unchecked-structure-ref _%self106663%_ '1 '#f 'copy))
                (_%f106674%_
                 (##unchecked-structure-ref _%self106663%_ '3 '#f 'copy)))
            (_%f106674%_ _%obj106673%_)))))
    (define HashTable-delete!
      (lambda (_%self106644%_ _%key106645%_)
        (let* ((_%self106650%_
                (let ((_%$obj106647%_ _%self106644%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106647%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106647%_)))
                           '#t)
                      _%$obj106647%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106647%_)))))
               (_%self106652%_ _%self106650%_))
          (declare (not safe))
          (&HashTable-delete! _%self106652%_ _%key106645%_))))
    (define &HashTable-delete!
      (lambda (_%self106628%_ _%key106629%_)
        (let ((_%self106631%_ _%self106628%_))
          (declare (not safe))
          (let ((_%obj106641%_
                 (##unchecked-structure-ref _%self106631%_ '1 '#f 'delete!))
                (_%f106642%_
                 (##unchecked-structure-ref _%self106631%_ '4 '#f 'delete!)))
            (_%f106642%_ _%obj106641%_ _%key106629%_)))))
    (define HashTable-for-each
      (lambda (_%self106601%_ _%proc106602%_)
        (let* ((_%self106607%_
                (let ((_%$obj106604%_ _%self106601%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106604%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106604%_)))
                           '#t)
                      _%$obj106604%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106604%_)))))
               (_%self106609%_ _%self106607%_))
          (if (let () (declare (not safe)) (procedure? _%proc106602%_))
              (let ((_%proc106618%_ _%proc106602%_))
                (declare (not safe))
                (&HashTable-for-each _%self106609%_ _%proc106618%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc106602%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self106577%_ _%proc106578%_)
        (let* ((_%self106580%_ _%self106577%_) (_%proc106587%_ _%proc106578%_))
          (declare (not safe))
          (let ((_%obj106598%_
                 (##unchecked-structure-ref _%self106580%_ '1 '#f 'for-each))
                (_%f106599%_
                 (##unchecked-structure-ref _%self106580%_ '5 '#f 'for-each)))
            (_%f106599%_ _%obj106598%_ _%proc106587%_)))))
    (define HashTable-length
      (lambda (_%self106561%_)
        (let* ((_%self106566%_
                (let ((_%$obj106563%_ _%self106561%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106563%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106563%_)))
                           '#t)
                      _%$obj106563%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106563%_)))))
               (_%self106568%_ _%self106566%_))
          (declare (not safe))
          (__HashTable-length _%self106568%_))))
    (define __HashTable-length
      (lambda (_%self106548%_)
        (let* ((_%self106550%_ _%self106548%_)
               (_%val106558%_
                (let ()
                  (declare (not safe))
                  (&HashTable-length _%self106550%_))))
          (if (let () (declare (not safe)) (fixnum? _%val106558%_))
              _%val106558%_
              (let ()
                (declare (not safe))
                (error '"bad cast" fixnum::t _%val106558%_))))))
    (define &HashTable-length
      (lambda (_%self106533%_)
        (let ((_%self106535%_ _%self106533%_))
          (declare (not safe))
          (let ((_%obj106545%_
                 (##unchecked-structure-ref _%self106535%_ '1 '#f 'length))
                (_%f106546%_
                 (##unchecked-structure-ref _%self106535%_ '6 '#f 'length)))
            (_%f106546%_ _%obj106545%_)))))
    (define HashTable-ref
      (lambda (_%self106515%_ _%key106516%_ _%default106517%_)
        (let* ((_%self106522%_
                (let ((_%$obj106519%_ _%self106515%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106519%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106519%_)))
                           '#t)
                      _%$obj106519%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106519%_)))))
               (_%self106524%_ _%self106522%_))
          (declare (not safe))
          (&HashTable-ref _%self106524%_ _%key106516%_ _%default106517%_))))
    (define &HashTable-ref
      (lambda (_%self106498%_ _%key106499%_ _%default106500%_)
        (let ((_%self106502%_ _%self106498%_))
          (declare (not safe))
          (let ((_%obj106512%_
                 (##unchecked-structure-ref _%self106502%_ '1 '#f 'ref))
                (_%f106513%_
                 (##unchecked-structure-ref _%self106502%_ '7 '#f 'ref)))
            (_%f106513%_ _%obj106512%_ _%key106499%_ _%default106500%_)))))
    (define HashTable-set!
      (lambda (_%self106480%_ _%key106481%_ _%value106482%_)
        (let* ((_%self106487%_
                (let ((_%$obj106484%_ _%self106480%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106484%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106484%_)))
                           '#t)
                      _%$obj106484%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106484%_)))))
               (_%self106489%_ _%self106487%_))
          (declare (not safe))
          (&HashTable-set! _%self106489%_ _%key106481%_ _%value106482%_))))
    (define &HashTable-set!
      (lambda (_%self106463%_ _%key106464%_ _%value106465%_)
        (let ((_%self106467%_ _%self106463%_))
          (declare (not safe))
          (let ((_%obj106477%_
                 (##unchecked-structure-ref _%self106467%_ '1 '#f 'set!))
                (_%f106478%_
                 (##unchecked-structure-ref _%self106467%_ '8 '#f 'set!)))
            (_%f106478%_ _%obj106477%_ _%key106464%_ _%value106465%_)))))
    (define HashTable-update!
      (lambda (_%self106434%_ _%key106435%_ _%proc106436%_ _%default106437%_)
        (let* ((_%self106442%_
                (let ((_%$obj106439%_ _%self106434%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106439%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106439%_)))
                           '#t)
                      _%$obj106439%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106439%_)))))
               (_%self106444%_ _%self106442%_))
          (if (let () (declare (not safe)) (procedure? _%proc106436%_))
              (let ((_%proc106453%_ _%proc106436%_))
                (declare (not safe))
                (&HashTable-update!
                 _%self106444%_
                 _%key106435%_
                 _%proc106453%_
                 _%default106437%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc106436%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self106406%_ _%key106407%_ _%proc106408%_ _%default106409%_)
        (let* ((_%self106411%_ _%self106406%_) (_%proc106418%_ _%proc106408%_))
          (declare (not safe))
          (let ((_%obj106429%_
                 (##unchecked-structure-ref _%self106411%_ '1 '#f 'update!))
                (_%f106431%_
                 (##unchecked-structure-ref _%self106411%_ '9 '#f 'update!)))
            (_%f106431%_
             _%obj106429%_
             _%key106407%_
             _%proc106418%_
             _%default106409%_)))))
    (define Locker::t
      (let ((__tmp106894 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp106894
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
      (lambda (_%obj106404%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj106404%_))))
    (define try-Locker
      (lambda (_%obj106402%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj106402%_))))
    (define Locker?
      (lambda (_%obj106400%_)
        (let ((__tmp106895
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106400%_ __tmp106895))))
    (define is-Locker?
      (lambda (_%obj106398%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj106398%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self106382%_)
        (let* ((_%self106387%_
                (let ((_%$obj106384%_ _%self106382%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106384%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106384%_)))
                           '#t)
                      _%$obj106384%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106384%_)))))
               (_%self106389%_ _%self106387%_))
          (declare (not safe))
          (&Locker-read-lock! _%self106389%_))))
    (define &Locker-read-lock!
      (lambda (_%self106367%_)
        (let ((_%self106369%_ _%self106367%_))
          (declare (not safe))
          (let ((_%obj106379%_
                 (##unchecked-structure-ref _%self106369%_ '1 '#f 'read-lock!))
                (_%f106380%_
                 (##unchecked-structure-ref
                  _%self106369%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f106380%_ _%obj106379%_)))))
    (define Locker-read-unlock!
      (lambda (_%self106351%_)
        (let* ((_%self106356%_
                (let ((_%$obj106353%_ _%self106351%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106353%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106353%_)))
                           '#t)
                      _%$obj106353%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106353%_)))))
               (_%self106358%_ _%self106356%_))
          (declare (not safe))
          (&Locker-read-unlock! _%self106358%_))))
    (define &Locker-read-unlock!
      (lambda (_%self106336%_)
        (let ((_%self106338%_ _%self106336%_))
          (declare (not safe))
          (let ((_%obj106348%_
                 (##unchecked-structure-ref
                  _%self106338%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f106349%_
                 (##unchecked-structure-ref
                  _%self106338%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f106349%_ _%obj106348%_)))))
    (define Locker-write-lock!
      (lambda (_%self106320%_)
        (let* ((_%self106325%_
                (let ((_%$obj106322%_ _%self106320%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106322%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106322%_)))
                           '#t)
                      _%$obj106322%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106322%_)))))
               (_%self106327%_ _%self106325%_))
          (declare (not safe))
          (&Locker-write-lock! _%self106327%_))))
    (define &Locker-write-lock!
      (lambda (_%self106305%_)
        (let ((_%self106307%_ _%self106305%_))
          (declare (not safe))
          (let ((_%obj106317%_
                 (##unchecked-structure-ref
                  _%self106307%_
                  '1
                  '#f
                  'write-lock!))
                (_%f106318%_
                 (##unchecked-structure-ref
                  _%self106307%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f106318%_ _%obj106317%_)))))
    (define Locker-write-unlock!
      (lambda (_%self106289%_)
        (let* ((_%self106294%_
                (let ((_%$obj106291%_ _%self106289%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106291%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106291%_)))
                           '#t)
                      _%$obj106291%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106291%_)))))
               (_%self106296%_ _%self106294%_))
          (declare (not safe))
          (&Locker-write-unlock! _%self106296%_))))
    (define &Locker-write-unlock!
      (lambda (_%self106272%_)
        (let ((_%self106274%_ _%self106272%_))
          (declare (not safe))
          (let ((_%obj106284%_
                 (##unchecked-structure-ref
                  _%self106274%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f106286%_
                 (##unchecked-structure-ref
                  _%self106274%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f106286%_ _%obj106284%_)))))
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
      (lambda (_%table106265%_
               _%key106266%_
               _%update106267%_
               _%default106268%_)
        (let ((_%result106270%_
               (table-ref _%table106265%_ _%key106266%_ _%default106268%_)))
          (table-set!
           _%table106265%_
           _%key106266%_
           (_%update106267%_ _%default106268%_)))))
    (define gambit-table-for-each
      (lambda (_%table106262%_ _%proc106263%_)
        (table-for-each _%proc106263%_ _%table106262%_)))
    (define gambit-table-clear!
      (lambda (_%table106260%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table106260%_ '0 '5 '#f '#f))))
    (let ((__tmp106896 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106896 'ref table-ref))
    (let ((__tmp106897 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106897 'set! table-set!))
    (let ((__tmp106898 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106898 'update! gambit-table-update!))
    (let ((__tmp106899 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106899 'delete! table-set!))
    (let ((__tmp106900 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106900 'for-each gambit-table-for-each))
    (let ((__tmp106901 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106901 'length table-length))
    (let ((__tmp106902 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106902 'copy table-copy))
    (let ((__tmp106903 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106903 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots106242%_ '(table count free hash test seed))
             (_%slot-vector106244%_ (list->vector (cons '#f _%slots106242%_)))
             (_%slot-table106251%_
              (let ((_%slot-table106246%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106906
                       (lambda (_%slot106248%_ _%field106249%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106246%_
                            _%slot106248%_
                            _%field106249%_))
                         (let ((__tmp106907
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot106248%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106246%_
                            __tmp106907
                            _%field106249%_))))
                      (__tmp106904
                       (let ((__tmp106905
                              (let ()
                                (declare (not safe))
                                (##length _%slots106242%_))))
                         (declare (not safe))
                         (##iota __tmp106905 '1))))
                  (declare (not safe))
                  (##for-each __tmp106906 _%slots106242%_ __tmp106904))
                _%slot-table106246%_))
             (_%flags106253%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields106255%_ '#())
             (_%properties106257%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots106242%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp106908 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags106253%_
         __table::t
         _%fields106255%_
         __tmp106908
         _%slot-vector106244%_
         _%slot-table106251%_
         _%properties106257%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots106224%_ '(gcht immediate))
             (_%slot-vector106226%_ (list->vector (cons '#f _%slots106224%_)))
             (_%slot-table106233%_
              (let ((_%slot-table106228%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106911
                       (lambda (_%slot106230%_ _%field106231%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106228%_
                            _%slot106230%_
                            _%field106231%_))
                         (let ((__tmp106912
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot106230%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106228%_
                            __tmp106912
                            _%field106231%_))))
                      (__tmp106909
                       (let ((__tmp106910
                              (let ()
                                (declare (not safe))
                                (##length _%slots106224%_))))
                         (declare (not safe))
                         (##iota __tmp106910 '1))))
                  (declare (not safe))
                  (##for-each __tmp106911 _%slots106224%_ __tmp106909))
                _%slot-table106228%_))
             (_%flags106235%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields106237%_ '#())
             (_%properties106239%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots106224%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp106913 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags106235%_
         __gc-table::t
         _%fields106237%_
         __tmp106913
         _%slot-vector106226%_
         _%slot-table106233%_
         _%properties106239%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp106915 (list))
            (__tmp106914
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp106915
         '(table lock)
         __tmp106914
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args106221%_
        (apply make-instance locked-hash-table::t _%$args106221%_)))
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
      (let ((__tmp106917 (list))
            (__tmp106916
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp106917
         '(table key-check)
         __tmp106916
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args106218%_
        (apply make-instance checked-hash-table::t _%$args106218%_)))
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
      (let ((__tmp106919 (list hash-table::t))
            (__tmp106918 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp106919
         '()
         __tmp106918
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args106215%_
        (apply make-instance eq-hash-table::t _%$args106215%_)))
    (define eqv-hash-table::t
      (let ((__tmp106921 (list hash-table::t))
            (__tmp106920 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp106921
         '()
         __tmp106920
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args106212%_
        (apply make-instance eqv-hash-table::t _%$args106212%_)))
    (define symbol-hash-table::t
      (let ((__tmp106923 (list hash-table::t))
            (__tmp106922 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp106923
         '()
         __tmp106922
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args106209%_
        (apply make-instance symbol-hash-table::t _%$args106209%_)))
    (define string-hash-table::t
      (let ((__tmp106925 (list hash-table::t))
            (__tmp106924 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp106925
         '()
         __tmp106924
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args106206%_
        (apply make-instance string-hash-table::t _%$args106206%_)))
    (define immediate-hash-table::t
      (let ((__tmp106927 (list hash-table::t))
            (__tmp106926 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp106927
         '()
         __tmp106926
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args106203%_
        (apply make-instance immediate-hash-table::t _%$args106203%_)))
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
    (define hash-table?
      (lambda (_%obj106201%_)
        (let ()
          (declare (not safe))
          (##structure-direct-instance-of?
           _%obj106201%_
           'gerbil/runtime/hash#HashTable::t))))
    (define is-hash-table?
      (lambda (_%obj106199%_)
        (let () (declare (not safe)) (is-HashTable? _%obj106199%_))))
    (define _%locked-hash-table::ref102254%_
      (lambda (_%self106175%_ _%key106177%_ _%default106178%_)
        (let ((_%self106181%_ _%self106175%_))
          (let ((_%h106191%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106181%_ '1 '#f '#f)))
                (_%l106193%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106181%_ '2 '#f '#f))))
            (let ((__tmp106930
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l106193%_))))
                  (__tmp106929
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-ref
                        _%h106191%_
                        _%key106177%_
                        _%default106178%_))))
                  (__tmp106928
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l106193%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106930 __tmp106929 __tmp106928))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref102254%_
       '#f))
    (define _%locked-hash-table::set!102256%_
      (lambda (_%self106028%_ _%key106030%_ _%value106031%_)
        (let ((_%self106034%_ _%self106028%_))
          (let ((_%h106044%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106034%_ '1 '#f '#f)))
                (_%l106046%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106034%_ '2 '#f '#f))))
            (let ((__tmp106933
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l106046%_))))
                  (__tmp106932
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h106044%_
                        _%key106030%_
                        _%value106031%_))))
                  (__tmp106931
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l106046%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106933 __tmp106932 __tmp106931))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!102256%_
       '#f))
    (define _%locked-hash-table::update!102258%_
      (lambda (_%self105880%_ _%key105882%_ _%update105883%_ _%default105884%_)
        (let ((_%self105887%_ _%self105880%_))
          (let ((_%h105897%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105887%_ '1 '#f '#f)))
                (_%l105899%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105887%_ '2 '#f '#f))))
            (let ((__tmp106936
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l105899%_))))
                  (__tmp106935
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-update!
                        _%h105897%_
                        _%key105882%_
                        _%update105883%_
                        _%default105884%_))))
                  (__tmp106934
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l105899%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106936 __tmp106935 __tmp106934))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!102258%_
       '#f))
    (define _%locked-hash-table::delete!102260%_
      (lambda (_%self105734%_ _%key105736%_)
        (let ((_%self105739%_ _%self105734%_))
          (let ((_%h105749%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105739%_ '1 '#f '#f)))
                (_%l105751%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105739%_ '2 '#f '#f))))
            (let ((__tmp106939
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l105751%_))))
                  (__tmp106938
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-delete! _%h105749%_ _%key105736%_))))
                  (__tmp106937
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l105751%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106939 __tmp106938 __tmp106937))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!102260%_
       '#f))
    (define _%locked-hash-table::for-each102262%_
      (lambda (_%self105588%_ _%proc105590%_)
        (let ((_%self105593%_ _%self105588%_))
          (let ((_%h105603%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105593%_ '1 '#f '#f)))
                (_%l105605%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105593%_ '2 '#f '#f))))
            (let ((__tmp106942
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l105605%_))))
                  (__tmp106941
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-for-each _%h105603%_ _%proc105590%_))))
                  (__tmp106940
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l105605%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106942 __tmp106941 __tmp106940))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each102262%_
       '#f))
    (define _%locked-hash-table::length102264%_
      (lambda (_%self105443%_)
        (let ((_%self105447%_ _%self105443%_))
          (let ((_%h105457%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105447%_ '1 '#f '#f)))
                (_%l105459%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105447%_ '2 '#f '#f))))
            (let ((__tmp106945
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l105459%_))))
                  (__tmp106944
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-length _%h105457%_))))
                  (__tmp106943
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l105459%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106945 __tmp106944 __tmp106943))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'length
       _%locked-hash-table::length102264%_
       '#f))
    (define _%locked-hash-table::copy102266%_
      (lambda (_%self105298%_)
        (let ((_%self105302%_ _%self105298%_))
          (let ((_%h105312%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105302%_ '1 '#f '#f)))
                (_%l105314%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105302%_ '2 '#f '#f))))
            (let ((__tmp106948
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l105314%_))))
                  (__tmp106947
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-copy _%h105312%_))))
                  (__tmp106946
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l105314%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106948 __tmp106947 __tmp106946))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy102266%_
       '#f))
    (define _%locked-hash-table::clear!102268%_
      (lambda (_%self105153%_)
        (let ((_%self105157%_ _%self105153%_))
          (let ((_%h105167%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105157%_ '1 '#f '#f)))
                (_%l105169%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105157%_ '2 '#f '#f))))
            (let ((__tmp106951
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l105169%_))))
                  (__tmp106950
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-clear! _%h105167%_))))
                  (__tmp106949
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l105169%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106951 __tmp106950 __tmp106949))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!102268%_
       '#f))
    (let ((__tmp106952 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106952 'read-lock! mutex-lock!))
    (let ((__tmp106953 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106953 'read-unlock! mutex-unlock!))
    (let ((__tmp106954 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106954 'write-lock! mutex-lock!))
    (let ((__tmp106955 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106955 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref102546%_
      (lambda (_%self105006%_ _%key105007%_ _%default105008%_)
        (let ((_%self105011%_ _%self105006%_))
          (let ((_%h105021%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105011%_ '1 '#f '#f)))
                (_%key?105023%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105011%_ '2 '#f '#f))))
            ((lambda (_%g105025105027%_)
               (if (_%g105025105027%_ _%key105007%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key105007%_))))
             _%key?105023%_)
            (let ()
              (declare (not safe))
              (&HashTable-ref _%h105021%_ _%key105007%_ _%default105008%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref102546%_
       '#f))
    (define _%checked-hash-table::set!102548%_
      (lambda (_%self104859%_ _%key104860%_ _%value104861%_)
        (let ((_%self104864%_ _%self104859%_))
          (let ((_%h104874%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104864%_ '1 '#f '#f)))
                (_%key?104876%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104864%_ '2 '#f '#f))))
            ((lambda (_%g104878104880%_)
               (if (_%g104878104880%_ _%key104860%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104860%_))))
             _%key?104876%_)
            (let ()
              (declare (not safe))
              (&HashTable-set! _%h104874%_ _%key104860%_ _%value104861%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!102548%_
       '#f))
    (define _%checked-hash-table::update!102550%_
      (lambda (_%self104713%_ _%key104714%_ _%update104715%_ _%default104716%_)
        (let ((_%self104719%_ _%self104713%_))
          (let ((_%h104729%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104719%_ '1 '#f '#f)))
                (_%key?104731%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104719%_ '2 '#f '#f))))
            ((lambda (_%key?104734%_)
               (if (_%key?104734%_ _%key104714%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104714%_)))
               (if (let () (declare (not safe)) (procedure? _%update104715%_))
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%update104715%_))))
             _%key?104731%_)
            (let ()
              (declare (not safe))
              (&HashTable-update!
               _%h104729%_
               _%key104714%_
               _%update104715%_
               _%default104716%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!102550%_
       '#f))
    (define _%checked-hash-table::delete!102552%_
      (lambda (_%self104567%_ _%key104568%_)
        (let ((_%self104571%_ _%self104567%_))
          (let ((_%h104581%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104571%_ '1 '#f '#f)))
                (_%key?104583%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104571%_ '2 '#f '#f))))
            ((lambda (_%g104585104587%_)
               (if (_%g104585104587%_ _%key104568%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104568%_))))
             _%key?104583%_)
            (let ()
              (declare (not safe))
              (&HashTable-delete! _%h104581%_ _%key104568%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!102552%_
       '#f))
    (define _%checked-hash-table::for-each102554%_
      (lambda (_%self104423%_ _%proc104424%_)
        (let ((_%self104427%_ _%self104423%_))
          (let ((_%h104437%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104427%_ '1 '#f '#f)))
                (_%key?104439%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104427%_ '2 '#f '#f))))
            ((lambda (_%_104442%_)
               (if (let () (declare (not safe)) (procedure? _%proc104424%_))
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%proc104424%_))))
             _%key?104439%_)
            (let ()
              (declare (not safe))
              (&HashTable-for-each _%h104437%_ _%proc104424%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each102554%_
       '#f))
    (define _%checked-hash-table::length102556%_
      (lambda (_%self104282%_)
        (let ((_%self104285%_ _%self104282%_))
          (let ((_%h104295%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104285%_ '1 '#f '#f)))
                (_%key?104297%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104285%_ '2 '#f '#f))))
            (let () (declare (not safe)) (&HashTable-length _%h104295%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'length
       _%checked-hash-table::length102556%_
       '#f))
    (define _%checked-hash-table::copy102558%_
      (lambda (_%self104141%_)
        (let ((_%self104144%_ _%self104141%_))
          (let ((_%h104154%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104144%_ '1 '#f '#f)))
                (_%key?104156%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104144%_ '2 '#f '#f))))
            (let () (declare (not safe)) (&HashTable-copy _%h104154%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'copy
       _%checked-hash-table::copy102558%_
       '#f))
    (define _%checked-hash-table::clear!102560%_
      (lambda (_%self104000%_)
        (let ((_%self104003%_ _%self104000%_))
          (let ((_%h104013%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104003%_ '1 '#f '#f)))
                (_%key?104015%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104003%_ '2 '#f '#f))))
            (let () (declare (not safe)) (&HashTable-clear! _%h104013%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'clear!
       _%checked-hash-table::clear!102560%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table103870%_
               _%count103871%_
               _%free103872%_
               _%hash103873%_
               _%test103874%_
               _%seed103875%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table103870%_
           _%count103871%_
           _%free103872%_
           _%hash103873%_
           _%test103874%_
           _%seed103875%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords103693%_
               _%size-hint103683103694%_
               _%seed103684103696%_
               _%test103685103698%_
               _%hash103686103700%_
               _%lock103687103702%_
               _%check103688103704%_
               _%weak-keys103689103706%_
               _%weak-values103690103708%_)
        (let* ((_%size-hint103711%_
                (if (eq? _%size-hint103683103694%_ absent-value)
                    '#f
                    _%size-hint103683103694%_))
               (_%seed103713%_
                (if (eq? _%seed103684103696%_ absent-value)
                    '#f
                    _%seed103684103696%_))
               (_%test103715%_
                (if (eq? _%test103685103698%_ absent-value)
                    equal?
                    _%test103685103698%_))
               (_%hash103717%_
                (if (eq? _%hash103686103700%_ absent-value)
                    '#f
                    _%hash103686103700%_))
               (_%lock103719%_
                (if (eq? _%lock103687103702%_ absent-value)
                    '#f
                    _%lock103687103702%_))
               (_%check103721%_
                (if (eq? _%check103688103704%_ absent-value)
                    '#f
                    _%check103688103704%_))
               (_%weak-keys103723%_
                (if (eq? _%weak-keys103689103706%_ absent-value)
                    '#f
                    _%weak-keys103689103706%_))
               (_%weak-values103725%_
                (if (eq? _%weak-values103690103708%_ absent-value)
                    '#f
                    _%weak-values103690103708%_)))
          (letrec ((_%table-seed103727%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (fixnum? _%seed103713%_))
                          _%seed103713%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock103728%_
                    (lambda (_%ht103848%_)
                      (if _%lock103719%_
                          (let ((_%$obj103853%_
                                 (let ((__tmp106956
                                        (let ((_%$obj103850%_ _%lock103719%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (##structure?
                                                      _%$obj103850%_))
                                                   (eq? Locker::t
                                                        (let ()
                                                          (declare (not safe))
                                                          (##structure-type
                                                           _%$obj103850%_)))
                                                   '#t)
                                              _%$obj103850%_
                                              (let ()
                                                (declare (not safe))
                                                (cast Locker::interface
                                                      _%$obj103850%_))))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _%ht103848%_
                                    __tmp106956))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103853%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103853%_)))
                                     '#t)
                                _%$obj103853%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103853%_))))
                          _%ht103848%_)))
                   (_%wrap-checked103729%_
                    (lambda (_%ht103842%_ _%implicit103843%_)
                      (if _%check103721%_
                          (let ((_%$obj103845%_
                                 (let ((__tmp106957
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _%check103721%_))
                                            _%check103721%_
                                            _%implicit103843%_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _%ht103842%_
                                    __tmp106957))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103845%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103845%_)))
                                     '#t)
                                _%$obj103845%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103845%_))))
                          _%ht103842%_)))
                   (_%make103730%_
                    (lambda (_%kons103827%_
                             _%key?103828%_
                             _%hash103829%_
                             _%test103830%_)
                      (let* ((_%size103832%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint103711%_)))
                             (_%table103834%_
                              (let ((__tmp106958 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size103832%_ __tmp106958)))
                             (_%ht103839%_
                              (let ((_%$obj103836%_
                                     (_%kons103827%_
                                      _%table103834%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size103832%_ '2))
                                      _%hash103829%_
                                      _%test103830%_
                                      (let ()
                                        (declare (not safe))
                                        (_%table-seed103727%_)))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103836%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103836%_)))
                                         '#t)
                                    _%$obj103836%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103836%_)))))
                             (__tmp106959
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103728%_ _%ht103839%_))))
                        (declare (not safe))
                        (_%wrap-checked103729%_ __tmp106959 _%key?103828%_))))
                   (_%make-gc-hash-table103731%_
                    (lambda ()
                      (let* ((_%ht103825%_
                              (let ((_%$obj103822%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint103711%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103822%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103822%_)))
                                         '#t)
                                    _%$obj103822%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103822%_)))))
                             (__tmp106960
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103728%_ _%ht103825%_))))
                        (declare (not safe))
                        (_%wrap-checked103729%_ __tmp106960 true))))
                   (_%make-gambit-table103732%_
                    (lambda ()
                      (let* ((_%size103800%_
                              (let ((_%$e103797%_ _%size-hint103711%_))
                                (if _%$e103797%_
                                    _%$e103797%_
                                    (macro-absent-obj))))
                             (_%test103805%_
                              (let ((_%$e103802%_ _%test103715%_))
                                (if _%$e103802%_ _%$e103802%_ equal?)))
                             (_%hash103813%_
                              (let ((_%$e103807%_ _%hash103717%_))
                                (if _%$e103807%_
                                    _%$e103807%_
                                    (if (eq? _%test103805%_ eq?)
                                        (let () eq?-hash)
                                        (if (eq? _%test103805%_ eqv?)
                                            (let () eqv?-hash)
                                            (let () equal?-hash))))))
                             (_%ht103818%_
                              (let ((_%$obj103815%_
                                     (make-table
                                      'size:
                                      _%size103800%_
                                      'test:
                                      _%test103805%_
                                      'hash:
                                      _%hash103813%_
                                      'weak-keys:
                                      _%weak-keys103723%_
                                      'weak-values:
                                      _%weak-values103725%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103815%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103815%_)))
                                         '#t)
                                    _%$obj103815%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103815%_)))))
                             (__tmp106961
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103728%_ _%ht103818%_))))
                        (declare (not safe))
                        (_%wrap-checked103729%_ __tmp106961 true)))))
            (if (or _%weak-keys103723%_ _%weak-values103725%_)
                (let () (declare (not safe)) (_%make-gambit-table103732%_))
                (if (and (or (eq? _%test103715%_ eq?)
                             (eq? _%test103715%_ ##eq?))
                         (or (let () (declare (not safe)) (not _%hash103717%_))
                             (eq? _%hash103717%_ eq?-hash)
                             (eq? _%hash103717%_ eq-hash))
                         (let () (declare (not safe)) (not _%seed103713%_)))
                    (let ()
                      (declare (not safe))
                      (_%make-gc-hash-table103731%_))
                    (if (and (or (eq? _%test103715%_ eq?)
                                 (eq? _%test103715%_ ##eq?))
                             (or (let ()
                                   (declare (not safe))
                                   (not _%hash103717%_))
                                 (eq? _%hash103717%_ eq?-hash)
                                 (eq? _%hash103717%_ eq-hash)))
                        (let ()
                          (declare (not safe))
                          (_%make103730%_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (eq? _%test103715%_ eqv?)
                                     (eq? _%test103715%_ ##eqv?))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _%hash103717%_))
                                     (eq? _%hash103717%_ eqv?-hash)
                                     (eq? _%hash103717%_ eqv-hash)))
                            (let ()
                              (declare (not safe))
                              (_%make103730%_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (eq? _%test103715%_ eq?)
                                         (eq? _%test103715%_ ##eq?))
                                     (or (eq? _%hash103717%_ symbolic-hash)
                                         (eq? _%hash103717%_ ##symbol-hash)))
                                (let ()
                                  (declare (not safe))
                                  (_%make103730%_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (eq? _%test103715%_ eq?)
                                             (eq? _%test103715%_ ##eq?))
                                         (eq? _%hash103717%_ immediate-hash))
                                    (let ()
                                      (declare (not safe))
                                      (_%make103730%_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (eq? _%test103715%_ equal?)
                                                 (eq? _%test103715%_ ##equal?)
                                                 (eq? _%test103715%_ string=?)
                                                 (eq? _%test103715%_
                                                      ##string=?))
                                             (or (eq? _%hash103717%_
                                                      string-hash)
                                                 (eq? _%hash103717%_
                                                      ##string=?-hash)))
                                        (let ()
                                          (declare (not safe))
                                          (_%make103730%_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (eq? _%test103715%_ equal?)
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _%hash103717%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%make103730%_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp106962
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _%test103715%_))))
                                                  (declare (not safe))
                                                  (not __tmp106962))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _%test103715%_))
                                                (if (let ((__tmp106963
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _%hash103717%_))))
                                                      (declare (not safe))
                                                      (not __tmp106963))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _%hash103717%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%make103730%_
                                                       make-generic-hash-table
                                                       true
                                                       _%hash103717%_
                                                       _%test103715%_))))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords103860%_ . _%args103861%_)
        (apply make-hash-table__%
               _%@@keywords103860%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103860%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103860%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103860%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103860%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103860%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103860%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103860%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103860%_
                  'weak-values:
                  absent-value))
               _%args103861%_)))
    (define make-hash-table
      (lambda _%args103691103867%_
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
               _%args103691103867%_)))
    (define make-hash-table-eq
      (lambda _%args103680%_
        (apply make-hash-table 'test: eq? _%args103680%_)))
    (define make-hash-table-eqv
      (lambda _%args103678%_
        (apply make-hash-table 'test: eqv? _%args103678%_)))
    (define make-hash-table-symbolic
      (lambda _%args103676%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args103676%_)))
    (define make-hash-table-string
      (lambda _%args103674%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args103674%_)))
    (define make-hash-table-immediate
      (lambda _%args103672%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args103672%_)))
    (define list->hash-table
      (lambda (_%lst103669%_ . _%args103670%_)
        (let ((__tmp106964
               (apply make-hash-table
                      'size:
                      (length _%lst103669%_)
                      _%args103670%_)))
          (declare (not safe))
          (list->hash-table! _%lst103669%_ __tmp106964))))
    (define list->hash-table-eq
      (lambda (_%lst103666%_ . _%args103667%_)
        (let ((__tmp106965
               (apply make-hash-table-eq
                      'size:
                      (length _%lst103666%_)
                      _%args103667%_)))
          (declare (not safe))
          (list->hash-table! _%lst103666%_ __tmp106965))))
    (define list->hash-table-eqv
      (lambda (_%lst103663%_ . _%args103664%_)
        (let ((__tmp106966
               (apply make-hash-table-eqv
                      'size:
                      (length _%lst103663%_)
                      _%args103664%_)))
          (declare (not safe))
          (list->hash-table! _%lst103663%_ __tmp106966))))
    (define list->hash-table-symbolic
      (lambda (_%lst103660%_ . _%args103661%_)
        (let ((__tmp106967
               (apply make-hash-table-symbolic
                      'size:
                      (length _%lst103660%_)
                      _%args103661%_)))
          (declare (not safe))
          (list->hash-table! _%lst103660%_ __tmp106967))))
    (define list->hash-table-string
      (lambda (_%lst103657%_ . _%args103658%_)
        (let ((__tmp106968
               (apply make-hash-table-string
                      'size:
                      (length _%lst103657%_)
                      _%args103658%_)))
          (declare (not safe))
          (list->hash-table! _%lst103657%_ __tmp106968))))
    (define list->hash-table-immediate
      (lambda (_%lst103654%_ . _%args103655%_)
        (let ((__tmp106969
               (apply make-hash-table-immediate
                      'size:
                      (length _%lst103654%_)
                      _%args103655%_)))
          (declare (not safe))
          (list->hash-table! _%lst103654%_ __tmp106969))))
    (define list->hash-table!
      (lambda (_%lst103621%_ _%h103622%_)
        (for-each
         (lambda (_%el103624%_)
           (let* ((_%el103625103632%_ _%el103624%_)
                  (_%E103627103636%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el103625103632%_
                              '([k . v])))
                     '#!void))
                  (_%K103628103642%_
                   (lambda (_%v103639%_ _%k103640%_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h103622%_
                        _%k103640%_
                        _%v103639%_)))))
             (if (let () (declare (not safe)) (##pair? _%el103625103632%_))
                 (let ((_%hd103629103645%_
                        (let ()
                          (declare (not safe))
                          (##car _%el103625103632%_)))
                       (_%tl103630103647%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el103625103632%_))))
                   (let* ((_%k103650%_ _%hd103629103645%_)
                          (_%v103652%_ _%tl103630103647%_))
                     (declare (not safe))
                     (_%K103628103642%_ _%v103652%_ _%k103650%_)))
                 (let () (declare (not safe)) (_%E103627103636%_)))))
         _%lst103621%_)
        _%h103622%_))
    (define plist->hash-table
      (lambda (_%lst103618%_ . _%args103619%_)
        (let ((__tmp106970
               (apply make-hash-table
                      'size:
                      (length _%lst103618%_)
                      _%args103619%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103618%_ __tmp106970))))
    (define plist->hash-table-eq
      (lambda (_%lst103615%_ . _%args103616%_)
        (let ((__tmp106971
               (apply make-hash-table-eq
                      'size:
                      (length _%lst103615%_)
                      _%args103616%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103615%_ __tmp106971))))
    (define plist->hash-table-eqv
      (lambda (_%lst103612%_ . _%args103613%_)
        (let ((__tmp106972
               (apply make-hash-table-eqv
                      'size:
                      (length _%lst103612%_)
                      _%args103613%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103612%_ __tmp106972))))
    (define plist->hash-table-symbolic
      (lambda (_%lst103609%_ . _%args103610%_)
        (let ((__tmp106973
               (apply make-hash-table-symbolic
                      'size:
                      (length _%lst103609%_)
                      _%args103610%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103609%_ __tmp106973))))
    (define plist->hash-table-string
      (lambda (_%lst103606%_ . _%args103607%_)
        (let ((__tmp106974
               (apply make-hash-table-string
                      'size:
                      (length _%lst103606%_)
                      _%args103607%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103606%_ __tmp106974))))
    (define plist->hash-table-immediate
      (lambda (_%lst103603%_ . _%args103604%_)
        (let ((__tmp106975
               (apply make-hash-table-immediate
                      'size:
                      (length _%lst103603%_)
                      _%args103604%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103603%_ __tmp106975))))
    (define plist->hash-table!
      (lambda (_%lst103543%_ _%h103544%_)
        (let _%loop103546%_ ((_%rest103548%_ _%lst103543%_))
          (let* ((_%rest103549103561%_ _%rest103548%_)
                 (_%else103552103569%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst103543%_)))))
            (let ((_%K103555103584%_
                   (lambda (_%rest103580%_ _%val103581%_ _%key103582%_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h103544%_
                        _%key103582%_
                        _%val103581%_))
                     (let ()
                       (declare (not safe))
                       (_%loop103546%_ _%rest103580%_))))
                  (_%K103554103574%_ (lambda () _%h103544%_)))
              (let ((_%try-match103551103577%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest103549103561%_))
                           (let () (declare (not safe)) (_%K103554103574%_))
                           (let ()
                             (declare (not safe))
                             (_%else103552103569%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest103549103561%_))
                    (let ((_%tl103557103589%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest103549103561%_)))
                          (_%hd103556103587%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest103549103561%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl103557103589%_))
                          (let ((_%tl103559103596%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl103557103589%_)))
                                (_%hd103558103594%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl103557103589%_))))
                            (let ((_%key103592%_ _%hd103556103587%_)
                                  (_%val103599%_ _%hd103558103594%_)
                                  (_%rest103601%_ _%tl103559103596%_))
                              (let ()
                                (declare (not safe))
                                (_%K103555103584%_
                                 _%rest103601%_
                                 _%val103599%_
                                 _%key103592%_))))
                          (let ()
                            (declare (not safe))
                            (_%else103552103569%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match103551103577%_)))))))))
    (define hash-length
      (lambda (_%h103525%_)
        (let ()
          (let* ((_%h103531%_
                  (let ((_%$obj103528%_ _%h103525%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103528%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103528%_)))
                             '#t)
                        _%$obj103528%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103528%_)))))
                 (_%h103533%_ _%h103531%_))
            (declare (not safe))
            (__hash-length _%h103533%_)))))
    (define __hash-length
      (lambda (_%h103513%_)
        (let ((_%h103516%_ _%h103513%_))
          (declare (not safe))
          (__HashTable-length _%h103516%_))))
    (define hash-ref__%
      (lambda (_%h103481%_ _%key103482%_ _%default103483%_)
        (let ()
          (let* ((_%h103489%_
                  (let ((_%$obj103486%_ _%h103481%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103486%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103486%_)))
                             '#t)
                        _%$obj103486%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103486%_)))))
                 (_%h103491%_ _%h103489%_))
            (declare (not safe))
            (__hash-ref__% _%h103491%_ _%key103482%_ _%default103483%_)))))
    (define hash-ref__0
      (lambda (_%h103504%_ _%key103505%_)
        (let ((_%default103507%_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _%h103504%_ _%key103505%_ _%default103507%_))))
    (define hash-ref
      (lambda _g106977_
        (let ((_g106976_ (let () (declare (not safe)) (##length _g106977_))))
          (cond ((let () (declare (not safe)) (##fx= _g106976_ 2))
                 (apply (lambda (_%h103504%_ _%key103505%_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _%h103504%_ _%key103505%_)))
                        _g106977_))
                ((let () (declare (not safe)) (##fx= _g106976_ 3))
                 (apply (lambda (_%h103509%_ _%key103510%_ _%default103511%_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__%
                             _%h103509%_
                             _%key103510%_
                             _%default103511%_)))
                        _g106977_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g106977_))))))
    (define __hash-ref__%
      (lambda (_%h103452%_ _%key103453%_ _%default103454%_)
        (let ()
          (let* ((_%h103457%_ _%h103452%_)
                 (_%result103466%_
                  (let ()
                    (declare (not safe))
                    (&HashTable-ref
                     _%h103457%_
                     _%key103453%_
                     _%default103454%_))))
            (if (eq? _%result103466%_ (macro-absent-obj))
                (let ()
                  (declare (not safe))
                  (raise-unbound-key-error
                   'hash-ref
                   '"unknown hash key"
                   'hash:
                   _%h103457%_
                   'key:
                   _%key103453%_))
                _%result103466%_)))))
    (define __hash-ref__0
      (lambda (_%h103471%_ _%key103472%_)
        (let ((_%default103474%_ (macro-absent-obj)))
          (declare (not safe))
          (__hash-ref__% _%h103471%_ _%key103472%_ _%default103474%_))))
    (define __hash-ref
      (lambda _g106979_
        (let ((_g106978_ (let () (declare (not safe)) (##length _g106979_))))
          (cond ((let () (declare (not safe)) (##fx= _g106978_ 2))
                 (apply (lambda (_%h103471%_ _%key103472%_)
                          (let ()
                            (declare (not safe))
                            (__hash-ref__0 _%h103471%_ _%key103472%_)))
                        _g106979_))
                ((let () (declare (not safe)) (##fx= _g106978_ 3))
                 (apply (lambda (_%h103476%_ _%key103477%_ _%default103478%_)
                          (let ()
                            (declare (not safe))
                            (__hash-ref__%
                             _%h103476%_
                             _%key103477%_
                             _%default103478%_)))
                        _g106979_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g106979_))))))
    (define hash-get
      (lambda (_%h103432%_ _%key103433%_)
        (let ()
          (let* ((_%h103439%_
                  (let ((_%$obj103436%_ _%h103432%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103436%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103436%_)))
                             '#t)
                        _%$obj103436%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103436%_)))))
                 (_%h103441%_ _%h103439%_))
            (declare (not safe))
            (__hash-get _%h103441%_ _%key103433%_)))))
    (define __hash-get
      (lambda (_%h103419%_ _%key103420%_)
        (let ((_%h103423%_ _%h103419%_))
          (declare (not safe))
          (&HashTable-ref _%h103423%_ _%key103420%_ '#f))))
    (define hash-put!
      (lambda (_%h103399%_ _%key103400%_ _%value103401%_)
        (let ()
          (let* ((_%h103407%_
                  (let ((_%$obj103404%_ _%h103399%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103404%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103404%_)))
                             '#t)
                        _%$obj103404%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103404%_)))))
                 (_%h103409%_ _%h103407%_))
            (declare (not safe))
            (__hash-put! _%h103409%_ _%key103400%_ _%value103401%_)))))
    (define __hash-put!
      (lambda (_%h103385%_ _%key103386%_ _%value103387%_)
        (let ((_%h103390%_ _%h103385%_))
          (declare (not safe))
          (&HashTable-set! _%h103390%_ _%key103386%_ _%value103387%_))))
    (define hash-update!__%
      (lambda (_%h103350%_ _%key103351%_ _%update103352%_ _%default103353%_)
        (let ()
          (let* ((_%h103359%_
                  (let ((_%$obj103356%_ _%h103350%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103356%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103356%_)))
                             '#t)
                        _%$obj103356%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103356%_)))))
                 (_%h103361%_ _%h103359%_))
            (declare (not safe))
            (__hash-update!__%
             _%h103361%_
             _%key103351%_
             _%update103352%_
             _%default103353%_)))))
    (define hash-update!__0
      (lambda (_%h103374%_ _%key103375%_ _%update103376%_)
        (let ((_%default103378%_ '#!void))
          (declare (not safe))
          (hash-update!__%
           _%h103374%_
           _%key103375%_
           _%update103376%_
           _%default103378%_))))
    (define hash-update!
      (lambda _g106981_
        (let ((_g106980_ (let () (declare (not safe)) (##length _g106981_))))
          (cond ((let () (declare (not safe)) (##fx= _g106980_ 3))
                 (apply (lambda (_%h103374%_ _%key103375%_ _%update103376%_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _%h103374%_
                             _%key103375%_
                             _%update103376%_)))
                        _g106981_))
                ((let () (declare (not safe)) (##fx= _g106980_ 4))
                 (apply (lambda (_%h103380%_
                                 _%key103381%_
                                 _%update103382%_
                                 _%default103383%_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _%h103380%_
                             _%key103381%_
                             _%update103382%_
                             _%default103383%_)))
                        _g106981_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g106981_))))))
    (define __hash-update!__%
      (lambda (_%h103320%_ _%key103321%_ _%update103322%_ _%default103323%_)
        (let ((_%h103326%_ _%h103320%_))
          (declare (not safe))
          (HashTable-update!
           _%h103326%_
           _%key103321%_
           _%update103322%_
           _%default103323%_))))
    (define __hash-update!__0
      (lambda (_%h103338%_ _%key103339%_ _%update103340%_)
        (let ((_%default103342%_ '#!void))
          (declare (not safe))
          (__hash-update!__%
           _%h103338%_
           _%key103339%_
           _%update103340%_
           _%default103342%_))))
    (define __hash-update!
      (lambda _g106983_
        (let ((_g106982_ (let () (declare (not safe)) (##length _g106983_))))
          (cond ((let () (declare (not safe)) (##fx= _g106982_ 3))
                 (apply (lambda (_%h103338%_ _%key103339%_ _%update103340%_)
                          (let ()
                            (declare (not safe))
                            (__hash-update!__0
                             _%h103338%_
                             _%key103339%_
                             _%update103340%_)))
                        _g106983_))
                ((let () (declare (not safe)) (##fx= _g106982_ 4))
                 (apply (lambda (_%h103344%_
                                 _%key103345%_
                                 _%update103346%_
                                 _%default103347%_)
                          (let ()
                            (declare (not safe))
                            (__hash-update!__%
                             _%h103344%_
                             _%key103345%_
                             _%update103346%_
                             _%default103347%_)))
                        _g106983_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g106983_))))))
    (define hash-remove!
      (lambda (_%h103300%_ _%key103301%_)
        (let ()
          (let* ((_%h103307%_
                  (let ((_%$obj103304%_ _%h103300%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103304%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103304%_)))
                             '#t)
                        _%$obj103304%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103304%_)))))
                 (_%h103309%_ _%h103307%_))
            (declare (not safe))
            (__hash-remove! _%h103309%_ _%key103301%_)))))
    (define __hash-remove!
      (lambda (_%h103287%_ _%key103288%_)
        (let ((_%h103291%_ _%h103287%_))
          (declare (not safe))
          (&HashTable-delete! _%h103291%_ _%key103288%_))))
    (define hash-key?
      (lambda (_%h103268%_ _%k103269%_)
        (let ()
          (let* ((_%h103275%_
                  (let ((_%$obj103272%_ _%h103268%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103272%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103272%_)))
                             '#t)
                        _%$obj103272%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103272%_)))))
                 (_%h103277%_ _%h103275%_))
            (declare (not safe))
            (__hash-key? _%h103277%_ _%k103269%_)))))
    (define __hash-key?
      (lambda (_%h103255%_ _%k103256%_)
        (let ()
          (let* ((_%h103259%_ _%h103255%_)
                 (__tmp106984
                  (eq? (let ()
                         (declare (not safe))
                         (&HashTable-ref _%h103259%_ _%k103256%_ absent-value))
                       absent-value)))
            (declare (not safe))
            (not __tmp106984)))))
    (define hash->list
      (lambda (_%h103237%_)
        (let ()
          (let* ((_%h103243%_
                  (let ((_%$obj103240%_ _%h103237%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103240%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103240%_)))
                             '#t)
                        _%$obj103240%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103240%_)))))
                 (_%h103245%_ _%h103243%_))
            (declare (not safe))
            (__hash->list _%h103245%_)))))
    (define __hash->list
      (lambda (_%h103220%_)
        (let ()
          (let* ((_%h103223%_ _%h103220%_) (_%lst103232%_ '()))
            (let ((__tmp106985
                   (lambda (_%k103234%_ _%v103235%_)
                     (set! _%lst103232%_
                           (cons (cons _%k103234%_ _%v103235%_)
                                 _%lst103232%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h103223%_ __tmp106985))
            _%lst103232%_))))
    (define hash->plist
      (lambda (_%h103202%_)
        (let ()
          (let* ((_%h103208%_
                  (let ((_%$obj103205%_ _%h103202%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103205%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103205%_)))
                             '#t)
                        _%$obj103205%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103205%_)))))
                 (_%h103210%_ _%h103208%_))
            (declare (not safe))
            (__hash->plist _%h103210%_)))))
    (define __hash->plist
      (lambda (_%h103185%_)
        (let ()
          (let* ((_%h103188%_ _%h103185%_) (_%lst103197%_ '()))
            (let ((__tmp106986
                   (lambda (_%k103199%_ _%v103200%_)
                     (set! _%lst103197%_
                           (let ((__tmp106987
                                  (let ()
                                    (declare (not safe))
                                    (cons _%v103200%_ _%lst103197%_))))
                             (declare (not safe))
                             (cons _%k103199%_ __tmp106987))))))
              (declare (not safe))
              (&HashTable-for-each _%h103188%_ __tmp106986))
            _%lst103197%_))))
    (define hash-for-each
      (lambda (_%proc103156%_ _%h103157%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc103156%_))
              (let ((_%proc103161%_ _%proc103156%_))
                (let* ((_%h103173%_
                        (let ((_%$obj103170%_ _%h103157%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj103170%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj103170%_)))
                                   '#t)
                              _%$obj103170%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj103170%_)))))
                       (_%h103175%_ _%h103173%_))
                  (declare (not safe))
                  (__hash-for-each _%proc103161%_ _%h103175%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@560.22-560.26"
                 'contract:
                 'procedure?
                 'value:
                 _%proc103156%_)
                '#!void)))))
    (define __hash-for-each
      (lambda (_%proc103135%_ _%h103136%_)
        (let ()
          (let* ((_%proc103139%_ _%proc103135%_) (_%h103147%_ _%h103136%_))
            (declare (not safe))
            (&HashTable-for-each _%h103147%_ _%proc103139%_)))))
    (define hash-map
      (lambda (_%proc103106%_ _%h103107%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc103106%_))
              (let ((_%proc103111%_ _%proc103106%_))
                (let* ((_%h103123%_
                        (let ((_%$obj103120%_ _%h103107%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj103120%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj103120%_)))
                                   '#t)
                              _%$obj103120%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj103120%_)))))
                       (_%h103125%_ _%h103123%_))
                  (declare (not safe))
                  (__hash-map _%proc103111%_ _%h103125%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@563.17-563.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc103106%_)
                '#!void)))))
    (define __hash-map
      (lambda (_%proc103080%_ _%h103081%_)
        (let ((_%proc103084%_ _%proc103080%_))
          (let* ((_%h103092%_ _%h103081%_) (_%result103101%_ '()))
            (let ((__tmp106988
                   (lambda (_%k103103%_ _%v103104%_)
                     (set! _%result103101%_
                           (cons (let ()
                                   (declare (not safe))
                                   (_%proc103084%_ _%k103103%_ _%v103104%_))
                                 _%result103101%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h103092%_ __tmp106988))
            _%result103101%_))))
    (define hash-fold
      (lambda (_%proc103050%_ _%iv103051%_ _%h103052%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc103050%_))
              (let ((_%proc103056%_ _%proc103050%_))
                (let* ((_%h103068%_
                        (let ((_%$obj103065%_ _%h103052%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj103065%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj103065%_)))
                                   '#t)
                              _%$obj103065%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj103065%_)))))
                       (_%h103070%_ _%h103068%_))
                  (declare (not safe))
                  (__hash-fold _%proc103056%_ _%iv103051%_ _%h103070%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@568.18-568.22"
                 'contract:
                 'procedure?
                 'value:
                 _%proc103050%_)
                '#!void)))))
    (define __hash-fold
      (lambda (_%proc103023%_ _%iv103024%_ _%h103025%_)
        (let ((_%proc103028%_ _%proc103023%_))
          (let* ((_%h103036%_ _%h103025%_) (_%result103045%_ _%iv103024%_))
            (let ((__tmp106989
                   (lambda (_%k103047%_ _%v103048%_)
                     (set! _%result103045%_
                           (let ()
                             (declare (not safe))
                             (_%proc103028%_
                              _%k103047%_
                              _%v103048%_
                              _%result103045%_))))))
              (declare (not safe))
              (&HashTable-for-each _%h103036%_ __tmp106989))
            _%result103045%_))))
    (define hash-find__%
      (lambda (_%proc102981%_ _%h102982%_ _%default-value102983%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102981%_))
              (let ((_%proc102987%_ _%proc102981%_))
                (let* ((_%h102999%_
                        (let ((_%$obj102996%_ _%h102982%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj102996%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj102996%_)))
                                   '#t)
                              _%$obj102996%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj102996%_)))))
                       (_%h103001%_ _%h102999%_))
                  (declare (not safe))
                  (__hash-find__%
                   _%proc102987%_
                   _%h103001%_
                   _%default-value102983%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@573.18-573.22"
                 'contract:
                 'procedure?
                 'value:
                 _%proc102981%_)
                '#!void)))))
    (define hash-find__0
      (lambda (_%proc103014%_ _%h103015%_)
        (let ((_%default-value103017%_ '#f))
          (declare (not safe))
          (hash-find__% _%proc103014%_ _%h103015%_ _%default-value103017%_))))
    (define hash-find
      (lambda _g106991_
        (let ((_g106990_ (let () (declare (not safe)) (##length _g106991_))))
          (cond ((let () (declare (not safe)) (##fx= _g106990_ 2))
                 (apply (lambda (_%proc103014%_ _%h103015%_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _%proc103014%_ _%h103015%_)))
                        _g106991_))
                ((let () (declare (not safe)) (##fx= _g106990_ 3))
                 (apply (lambda (_%proc103019%_
                                 _%h103020%_
                                 _%default-value103021%_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _%proc103019%_
                             _%h103020%_
                             _%default-value103021%_)))
                        _g106991_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g106991_))))))
    (define __hash-find__%
      (lambda (_%proc102938%_ _%h102939%_ _%default-value102940%_)
        (let ((_%proc102943%_ _%proc102938%_))
          (let* ((_%h102951%_ _%h102939%_)
                 (__tmp106992
                  (lambda (_%return102960%_)
                    (let ((__tmp106993
                           (lambda (_%k102962%_ _%v102963%_)
                             (let ((_%$e102965%_
                                    (let ()
                                      (declare (not safe))
                                      (_%proc102943%_
                                       _%k102962%_
                                       _%v102963%_))))
                               (if _%$e102965%_
                                   (_%return102960%_ _%$e102965%_)
                                   '#!void)))))
                      (declare (not safe))
                      (&HashTable-for-each _%h102951%_ __tmp106993))
                    _%default-value102940%_)))
            (declare (not safe))
            (##call-with-current-continuation __tmp106992)))))
    (define __hash-find__0
      (lambda (_%proc102971%_ _%h102972%_)
        (let ((_%default-value102974%_ '#f))
          (declare (not safe))
          (__hash-find__%
           _%proc102971%_
           _%h102972%_
           _%default-value102974%_))))
    (define __hash-find
      (lambda _g106995_
        (let ((_g106994_ (let () (declare (not safe)) (##length _g106995_))))
          (cond ((let () (declare (not safe)) (##fx= _g106994_ 2))
                 (apply (lambda (_%proc102971%_ _%h102972%_)
                          (let ()
                            (declare (not safe))
                            (__hash-find__0 _%proc102971%_ _%h102972%_)))
                        _g106995_))
                ((let () (declare (not safe)) (##fx= _g106994_ 3))
                 (apply (lambda (_%proc102976%_
                                 _%h102977%_
                                 _%default-value102978%_)
                          (let ()
                            (declare (not safe))
                            (__hash-find__%
                             _%proc102976%_
                             _%h102977%_
                             _%default-value102978%_)))
                        _g106995_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g106995_))))))
    (define hash-keys
      (lambda (_%h102919%_)
        (let ()
          (let* ((_%h102925%_
                  (let ((_%$obj102922%_ _%h102919%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102922%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102922%_)))
                             '#t)
                        _%$obj102922%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102922%_)))))
                 (_%h102927%_ _%h102925%_))
            (declare (not safe))
            (__hash-keys _%h102927%_)))))
    (define __hash-keys
      (lambda (_%h102902%_)
        (let ()
          (let* ((_%h102905%_ _%h102902%_) (_%result102914%_ '()))
            (let ((__tmp106996
                   (lambda (_%k102916%_ _%v102917%_)
                     (set! _%result102914%_
                           (cons _%k102916%_ _%result102914%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h102905%_ __tmp106996))
            _%result102914%_))))
    (define hash-values
      (lambda (_%h102884%_)
        (let ()
          (let* ((_%h102890%_
                  (let ((_%$obj102887%_ _%h102884%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102887%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102887%_)))
                             '#t)
                        _%$obj102887%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102887%_)))))
                 (_%h102892%_ _%h102890%_))
            (declare (not safe))
            (__hash-values _%h102892%_)))))
    (define __hash-values
      (lambda (_%h102867%_)
        (let ()
          (let* ((_%h102870%_ _%h102867%_) (_%result102879%_ '()))
            (let ((__tmp106997
                   (lambda (_%k102881%_ _%v102882%_)
                     (set! _%result102879%_
                           (cons _%v102882%_ _%result102879%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h102870%_ __tmp106997))
            _%result102879%_))))
    (define hash-copy
      (lambda (_%h102849%_)
        (let ()
          (let* ((_%h102855%_
                  (let ((_%$obj102852%_ _%h102849%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102852%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102852%_)))
                             '#t)
                        _%$obj102852%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102852%_)))))
                 (_%h102857%_ _%h102855%_))
            (declare (not safe))
            (__hash-copy _%h102857%_)))))
    (define __hash-copy
      (lambda (_%h102837%_)
        (let ((_%h102840%_ _%h102837%_))
          (declare (not safe))
          (__HashTable-copy _%h102840%_))))
    (define hash-clear!
      (lambda (_%h102819%_)
        (let ()
          (let* ((_%h102825%_
                  (let ((_%$obj102822%_ _%h102819%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102822%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102822%_)))
                             '#t)
                        _%$obj102822%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102822%_)))))
                 (_%h102827%_ _%h102825%_))
            (declare (not safe))
            (__hash-clear! _%h102827%_)))))
    (define __hash-clear!
      (lambda (_%h102807%_)
        (let ((_%h102810%_ _%h102807%_))
          (declare (not safe))
          (&HashTable-clear! _%h102810%_))))
    (define hash-merge
      (lambda (_%h102788%_ . _%rest102789%_)
        (let ()
          (let* ((_%h102795%_
                  (let ((_%$obj102792%_ _%h102788%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102792%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102792%_)))
                             '#t)
                        _%$obj102792%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102792%_)))))
                 (_%h102797%_ _%h102795%_))
            (declare (not safe))
            (##apply __hash-merge _%h102797%_ _%rest102789%_)))))
    (define __hash-merge
      (lambda (_%h102773%_ . _%rest102774%_)
        (let ()
          (let* ((_%h102777%_ _%h102773%_)
                 (_%copy102786%_
                  (let ()
                    (declare (not safe))
                    (__HashTable-copy _%h102777%_))))
            (apply hash-merge! _%copy102786%_ _%rest102774%_)
            _%copy102786%_))))
    (define hash-merge!
      (lambda (_%h102754%_ . _%rest102755%_)
        (let ()
          (let* ((_%h102761%_
                  (let ((_%$obj102758%_ _%h102754%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102758%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102758%_)))
                             '#t)
                        _%$obj102758%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102758%_)))))
                 (_%h102763%_ _%h102761%_))
            (declare (not safe))
            (##apply __hash-merge! _%h102763%_ _%rest102755%_)))))
    (define __hash-merge!
      (lambda (_%h102717%_ . _%rest102718%_)
        (let ((_%h102721%_ _%h102717%_))
          (for-each
           (lambda (_%hr102730%_)
             (let ()
               (let* ((_%hr102736%_
                       (let ((_%$obj102733%_ _%hr102730%_))
                         (if (and (let ()
                                    (declare (not safe))
                                    (##structure? _%$obj102733%_))
                                  (eq? HashTable::t
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _%$obj102733%_)))
                                  '#t)
                             _%$obj102733%_
                             (let ()
                               (declare (not safe))
                               (cast HashTable::interface _%$obj102733%_)))))
                      (_%hr102738%_ _%hr102736%_)
                      (__tmp106998
                       (lambda (_%k102751%_ _%v102752%_)
                         (if (let ()
                               (declare (not safe))
                               (__hash-key? _%h102721%_ _%k102751%_))
                             '#!void
                             (let ()
                               (declare (not safe))
                               (&HashTable-set!
                                _%h102721%_
                                _%k102751%_
                                _%v102752%_))))))
                 (declare (not safe))
                 (&HashTable-for-each _%hr102738%_ __tmp106998))))
           _%rest102718%_)
          _%h102721%_)))))
