(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1713004409)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp108582 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp108582
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args108562%_
        (apply make-instance UnboundKeyError::t _%$args108562%_)))
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
      (lambda (_%where108436%_ _%message108437%_ . _%irritants108438%_)
        (let ((__tmp108583
               (let ((__obj108576
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj108576
                    _%message108437%_
                    'where:
                    _%where108436%_
                    'irritants:
                    _%irritants108438%_))
                 __obj108576)))
          (declare (not safe))
          (raise __tmp108583))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp108584 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp108584
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
      (lambda (_%obj108434%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj108434%_))))
    (define try-HashTable
      (lambda (_%obj108432%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj108432%_))))
    (define HashTable?
      (lambda (_%obj108430%_)
        (let ((__tmp108585
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj108430%_ __tmp108585))))
    (define is-HashTable?
      (lambda (_%obj108428%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj108428%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self108412%_)
        (let* ((_%self108417%_
                (let ((_%$obj108414%_ _%self108412%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108414%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108414%_)))
                           '#t)
                      _%$obj108414%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108414%_)))))
               (_%self108419%_ _%self108417%_))
          (&HashTable-clear! _%self108419%_))))
    (define &HashTable-clear!
      (lambda (_%self108397%_)
        (let ((_%self108399%_ _%self108397%_))
          (declare (not safe))
          (let ((_%obj108409%_
                 (##unchecked-structure-ref _%self108399%_ '1 '#f 'clear!))
                (_%f108410%_
                 (##unchecked-structure-ref _%self108399%_ '2 '#f 'clear!)))
            (_%f108410%_ _%obj108409%_)))))
    (define HashTable-copy
      (lambda (_%self108381%_)
        (let* ((_%self108386%_
                (let ((_%$obj108383%_ _%self108381%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108383%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108383%_)))
                           '#t)
                      _%$obj108383%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108383%_)))))
               (_%self108388%_ _%self108386%_))
          (__HashTable-copy _%self108388%_))))
    (define __HashTable-copy
      (lambda (_%self108368%_)
        (let* ((_%self108370%_ _%self108368%_)
               (_%$obj108378%_ (&HashTable-copy _%self108370%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj108378%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj108378%_)))
                   '#t)
              _%$obj108378%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj108378%_))))))
    (define &HashTable-copy
      (lambda (_%self108353%_)
        (let ((_%self108355%_ _%self108353%_))
          (declare (not safe))
          (let ((_%obj108365%_
                 (##unchecked-structure-ref _%self108355%_ '1 '#f 'copy))
                (_%f108366%_
                 (##unchecked-structure-ref _%self108355%_ '3 '#f 'copy)))
            (_%f108366%_ _%obj108365%_)))))
    (define HashTable-delete!
      (lambda (_%self108336%_ _%key108337%_)
        (let* ((_%self108342%_
                (let ((_%$obj108339%_ _%self108336%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108339%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108339%_)))
                           '#t)
                      _%$obj108339%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108339%_)))))
               (_%self108344%_ _%self108342%_))
          (&HashTable-delete! _%self108344%_ _%key108337%_))))
    (define &HashTable-delete!
      (lambda (_%self108320%_ _%key108321%_)
        (let ((_%self108323%_ _%self108320%_))
          (declare (not safe))
          (let ((_%obj108333%_
                 (##unchecked-structure-ref _%self108323%_ '1 '#f 'delete!))
                (_%f108334%_
                 (##unchecked-structure-ref _%self108323%_ '4 '#f 'delete!)))
            (_%f108334%_ _%obj108333%_ _%key108321%_)))))
    (define HashTable-for-each
      (lambda (_%self108293%_ _%proc108294%_)
        (let* ((_%self108299%_
                (let ((_%$obj108296%_ _%self108293%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108296%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108296%_)))
                           '#t)
                      _%$obj108296%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108296%_)))))
               (_%self108301%_ _%self108299%_))
          (if (procedure? _%proc108294%_)
              (let ((_%proc108310%_ _%proc108294%_))
                (&HashTable-for-each _%self108301%_ _%proc108310%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc108294%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self108269%_ _%proc108270%_)
        (let* ((_%self108272%_ _%self108269%_) (_%proc108279%_ _%proc108270%_))
          (declare (not safe))
          (let ((_%obj108290%_
                 (##unchecked-structure-ref _%self108272%_ '1 '#f 'for-each))
                (_%f108291%_
                 (##unchecked-structure-ref _%self108272%_ '5 '#f 'for-each)))
            (_%f108291%_ _%obj108290%_ _%proc108279%_)))))
    (define HashTable-length
      (lambda (_%self108253%_)
        (let* ((_%self108258%_
                (let ((_%$obj108255%_ _%self108253%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108255%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108255%_)))
                           '#t)
                      _%$obj108255%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108255%_)))))
               (_%self108260%_ _%self108258%_))
          (__HashTable-length _%self108260%_))))
    (define __HashTable-length
      (lambda (_%self108240%_)
        (let* ((_%self108242%_ _%self108240%_)
               (_%val108250%_ (&HashTable-length _%self108242%_)))
          _%val108250%_)))
    (define &HashTable-length
      (lambda (_%self108225%_)
        (let ((_%self108227%_ _%self108225%_))
          (declare (not safe))
          (let ((_%obj108237%_
                 (##unchecked-structure-ref _%self108227%_ '1 '#f 'length))
                (_%f108238%_
                 (##unchecked-structure-ref _%self108227%_ '6 '#f 'length)))
            (_%f108238%_ _%obj108237%_)))))
    (define HashTable-ref
      (lambda (_%self108207%_ _%key108208%_ _%default108209%_)
        (let* ((_%self108214%_
                (let ((_%$obj108211%_ _%self108207%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108211%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108211%_)))
                           '#t)
                      _%$obj108211%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108211%_)))))
               (_%self108216%_ _%self108214%_))
          (&HashTable-ref _%self108216%_ _%key108208%_ _%default108209%_))))
    (define &HashTable-ref
      (lambda (_%self108190%_ _%key108191%_ _%default108192%_)
        (let ((_%self108194%_ _%self108190%_))
          (declare (not safe))
          (let ((_%obj108204%_
                 (##unchecked-structure-ref _%self108194%_ '1 '#f 'ref))
                (_%f108205%_
                 (##unchecked-structure-ref _%self108194%_ '7 '#f 'ref)))
            (_%f108205%_ _%obj108204%_ _%key108191%_ _%default108192%_)))))
    (define HashTable-set!
      (lambda (_%self108172%_ _%key108173%_ _%value108174%_)
        (let* ((_%self108179%_
                (let ((_%$obj108176%_ _%self108172%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108176%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108176%_)))
                           '#t)
                      _%$obj108176%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108176%_)))))
               (_%self108181%_ _%self108179%_))
          (&HashTable-set! _%self108181%_ _%key108173%_ _%value108174%_))))
    (define &HashTable-set!
      (lambda (_%self108155%_ _%key108156%_ _%value108157%_)
        (let ((_%self108159%_ _%self108155%_))
          (declare (not safe))
          (let ((_%obj108169%_
                 (##unchecked-structure-ref _%self108159%_ '1 '#f 'set!))
                (_%f108170%_
                 (##unchecked-structure-ref _%self108159%_ '8 '#f 'set!)))
            (_%f108170%_ _%obj108169%_ _%key108156%_ _%value108157%_)))))
    (define HashTable-update!
      (lambda (_%self108126%_ _%key108127%_ _%proc108128%_ _%default108129%_)
        (let* ((_%self108134%_
                (let ((_%$obj108131%_ _%self108126%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108131%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108131%_)))
                           '#t)
                      _%$obj108131%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108131%_)))))
               (_%self108136%_ _%self108134%_))
          (if (procedure? _%proc108128%_)
              (let ((_%proc108145%_ _%proc108128%_))
                (&HashTable-update!
                 _%self108136%_
                 _%key108127%_
                 _%proc108145%_
                 _%default108129%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc108128%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self108098%_ _%key108099%_ _%proc108100%_ _%default108101%_)
        (let* ((_%self108103%_ _%self108098%_) (_%proc108110%_ _%proc108100%_))
          (declare (not safe))
          (let ((_%obj108121%_
                 (##unchecked-structure-ref _%self108103%_ '1 '#f 'update!))
                (_%f108123%_
                 (##unchecked-structure-ref _%self108103%_ '9 '#f 'update!)))
            (_%f108123%_
             _%obj108121%_
             _%key108099%_
             _%proc108110%_
             _%default108101%_)))))
    (define Locker::t
      (let ((__tmp108586 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp108586
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
      (lambda (_%obj108096%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj108096%_))))
    (define try-Locker
      (lambda (_%obj108094%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj108094%_))))
    (define Locker?
      (lambda (_%obj108092%_)
        (let ((__tmp108587
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj108092%_ __tmp108587))))
    (define is-Locker?
      (lambda (_%obj108090%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj108090%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self108074%_)
        (let* ((_%self108079%_
                (let ((_%$obj108076%_ _%self108074%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108076%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108076%_)))
                           '#t)
                      _%$obj108076%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj108076%_)))))
               (_%self108081%_ _%self108079%_))
          (&Locker-read-lock! _%self108081%_))))
    (define &Locker-read-lock!
      (lambda (_%self108059%_)
        (let ((_%self108061%_ _%self108059%_))
          (declare (not safe))
          (let ((_%obj108071%_
                 (##unchecked-structure-ref _%self108061%_ '1 '#f 'read-lock!))
                (_%f108072%_
                 (##unchecked-structure-ref
                  _%self108061%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f108072%_ _%obj108071%_)))))
    (define Locker-read-unlock!
      (lambda (_%self108043%_)
        (let* ((_%self108048%_
                (let ((_%$obj108045%_ _%self108043%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108045%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108045%_)))
                           '#t)
                      _%$obj108045%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj108045%_)))))
               (_%self108050%_ _%self108048%_))
          (&Locker-read-unlock! _%self108050%_))))
    (define &Locker-read-unlock!
      (lambda (_%self108028%_)
        (let ((_%self108030%_ _%self108028%_))
          (declare (not safe))
          (let ((_%obj108040%_
                 (##unchecked-structure-ref
                  _%self108030%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f108041%_
                 (##unchecked-structure-ref
                  _%self108030%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f108041%_ _%obj108040%_)))))
    (define Locker-write-lock!
      (lambda (_%self108012%_)
        (let* ((_%self108017%_
                (let ((_%$obj108014%_ _%self108012%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108014%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108014%_)))
                           '#t)
                      _%$obj108014%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj108014%_)))))
               (_%self108019%_ _%self108017%_))
          (&Locker-write-lock! _%self108019%_))))
    (define &Locker-write-lock!
      (lambda (_%self107997%_)
        (let ((_%self107999%_ _%self107997%_))
          (declare (not safe))
          (let ((_%obj108009%_
                 (##unchecked-structure-ref
                  _%self107999%_
                  '1
                  '#f
                  'write-lock!))
                (_%f108010%_
                 (##unchecked-structure-ref
                  _%self107999%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f108010%_ _%obj108009%_)))))
    (define Locker-write-unlock!
      (lambda (_%self107981%_)
        (let* ((_%self107986%_
                (let ((_%$obj107983%_ _%self107981%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107983%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107983%_)))
                           '#t)
                      _%$obj107983%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj107983%_)))))
               (_%self107988%_ _%self107986%_))
          (&Locker-write-unlock! _%self107988%_))))
    (define &Locker-write-unlock!
      (lambda (_%self107964%_)
        (let ((_%self107966%_ _%self107964%_))
          (declare (not safe))
          (let ((_%obj107976%_
                 (##unchecked-structure-ref
                  _%self107966%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f107978%_
                 (##unchecked-structure-ref
                  _%self107966%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f107978%_ _%obj107976%_)))))
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
      (lambda (_%table107957%_
               _%key107958%_
               _%update107959%_
               _%default107960%_)
        (let ((_%result107962%_
               (table-ref _%table107957%_ _%key107958%_ _%default107960%_)))
          (table-set!
           _%table107957%_
           _%key107958%_
           (_%update107959%_ _%default107960%_)))))
    (define gambit-table-for-each
      (lambda (_%table107954%_ _%proc107955%_)
        (table-for-each _%proc107955%_ _%table107954%_)))
    (define gambit-table-clear!
      (lambda (_%table107952%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table107952%_ '0 '5 '#f '#f))))
    (let ((__tmp108588 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108588 'ref table-ref))
    (let ((__tmp108589 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108589 'set! table-set!))
    (let ((__tmp108590 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108590 'update! gambit-table-update!))
    (let ((__tmp108591 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108591 'delete! table-set!))
    (let ((__tmp108592 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108592 'for-each gambit-table-for-each))
    (let ((__tmp108593 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108593 'length table-length))
    (let ((__tmp108594 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108594 'copy table-copy))
    (let ((__tmp108595 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108595 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots107934%_ '(table count free hash test seed))
             (_%slot-vector107936%_ (list->vector (cons '#f _%slots107934%_)))
             (_%slot-table107943%_
              (let ((_%slot-table107938%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp108598
                       (lambda (_%slot107940%_ _%field107941%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107938%_
                            _%slot107940%_
                            _%field107941%_))
                         (let ((__tmp108599
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot107940%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107938%_
                            __tmp108599
                            _%field107941%_))))
                      (__tmp108596
                       (let ((__tmp108597
                              (let ()
                                (declare (not safe))
                                (##length _%slots107934%_))))
                         (declare (not safe))
                         (##iota __tmp108597 '1))))
                  (declare (not safe))
                  (##for-each __tmp108598 _%slots107934%_ __tmp108596))
                _%slot-table107938%_))
             (_%flags107945%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields107947%_ '#())
             (_%properties107949%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots107934%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp108600 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags107945%_
         __table::t
         _%fields107947%_
         __tmp108600
         _%slot-vector107936%_
         _%slot-table107943%_
         _%properties107949%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots107916%_ '(gcht immediate))
             (_%slot-vector107918%_ (list->vector (cons '#f _%slots107916%_)))
             (_%slot-table107925%_
              (let ((_%slot-table107920%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp108603
                       (lambda (_%slot107922%_ _%field107923%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107920%_
                            _%slot107922%_
                            _%field107923%_))
                         (let ((__tmp108604
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot107922%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107920%_
                            __tmp108604
                            _%field107923%_))))
                      (__tmp108601
                       (let ((__tmp108602
                              (let ()
                                (declare (not safe))
                                (##length _%slots107916%_))))
                         (declare (not safe))
                         (##iota __tmp108602 '1))))
                  (declare (not safe))
                  (##for-each __tmp108603 _%slots107916%_ __tmp108601))
                _%slot-table107920%_))
             (_%flags107927%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields107929%_ '#())
             (_%properties107931%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots107916%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp108605 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags107927%_
         __gc-table::t
         _%fields107929%_
         __tmp108605
         _%slot-vector107918%_
         _%slot-table107925%_
         _%properties107931%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp108607 (list))
            (__tmp108606
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp108607
         '(table lock)
         __tmp108606
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args107913%_
        (apply make-instance locked-hash-table::t _%$args107913%_)))
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
      (let ((__tmp108609 (list))
            (__tmp108608
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp108609
         '(table key-check)
         __tmp108608
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args107910%_
        (apply make-instance checked-hash-table::t _%$args107910%_)))
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
      (let ((__tmp108611 (list hash-table::t))
            (__tmp108610 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp108611
         '()
         __tmp108610
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args107907%_
        (apply make-instance eq-hash-table::t _%$args107907%_)))
    (define eqv-hash-table::t
      (let ((__tmp108613 (list hash-table::t))
            (__tmp108612 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp108613
         '()
         __tmp108612
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args107904%_
        (apply make-instance eqv-hash-table::t _%$args107904%_)))
    (define symbol-hash-table::t
      (let ((__tmp108615 (list hash-table::t))
            (__tmp108614 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp108615
         '()
         __tmp108614
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args107901%_
        (apply make-instance symbol-hash-table::t _%$args107901%_)))
    (define string-hash-table::t
      (let ((__tmp108617 (list hash-table::t))
            (__tmp108616 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp108617
         '()
         __tmp108616
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args107898%_
        (apply make-instance string-hash-table::t _%$args107898%_)))
    (define immediate-hash-table::t
      (let ((__tmp108619 (list hash-table::t))
            (__tmp108618 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp108619
         '()
         __tmp108618
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args107895%_
        (apply make-instance immediate-hash-table::t _%$args107895%_)))
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
    (define _%locked-hash-table::ref103841%_
      (lambda (_%self103840107869%_ _%key107871%_ _%default107872%_)
        (let* ((_%self107874%_ _%self103840107869%_)
               (_%self107877%_ _%self107874%_))
          (let ((_%h107887%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107877%_ '1 '#f '#f)))
                (_%l107889%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107877%_ '2 '#f '#f))))
            (let ((__tmp108622 (lambda () (&Locker-read-lock! _%l107889%_)))
                  (__tmp108621
                   (lambda ()
                     (&HashTable-ref
                      _%h107887%_
                      _%key107871%_
                      _%default107872%_)))
                  (__tmp108620 (lambda () (&Locker-read-unlock! _%l107889%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108622 __tmp108621 __tmp108620))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref103841%_
       '#f))
    (define _%locked-hash-table::set!103844%_
      (lambda (_%self103843107720%_ _%key107722%_ _%value107723%_)
        (let* ((_%self107725%_ _%self103843107720%_)
               (_%self107728%_ _%self107725%_))
          (let ((_%h107738%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107728%_ '1 '#f '#f)))
                (_%l107740%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107728%_ '2 '#f '#f))))
            (let ((__tmp108625 (lambda () (&Locker-write-lock! _%l107740%_)))
                  (__tmp108624
                   (lambda ()
                     (&HashTable-set!
                      _%h107738%_
                      _%key107722%_
                      _%value107723%_)))
                  (__tmp108623
                   (lambda () (&Locker-write-unlock! _%l107740%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108625 __tmp108624 __tmp108623))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!103844%_
       '#f))
    (define _%locked-hash-table::update!103847%_
      (lambda (_%self103846107570%_
               _%key107572%_
               _%update107573%_
               _%default107574%_)
        (let* ((_%self107576%_ _%self103846107570%_)
               (_%self107579%_ _%self107576%_))
          (let ((_%h107589%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107579%_ '1 '#f '#f)))
                (_%l107591%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107579%_ '2 '#f '#f))))
            (let ((__tmp108628 (lambda () (&Locker-write-lock! _%l107591%_)))
                  (__tmp108627
                   (lambda ()
                     (&HashTable-update!
                      _%h107589%_
                      _%key107572%_
                      _%update107573%_
                      _%default107574%_)))
                  (__tmp108626
                   (lambda () (&Locker-write-unlock! _%l107591%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108628 __tmp108627 __tmp108626))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!103847%_
       '#f))
    (define _%locked-hash-table::delete!103850%_
      (lambda (_%self103849107422%_ _%key107424%_)
        (let* ((_%self107426%_ _%self103849107422%_)
               (_%self107429%_ _%self107426%_))
          (let ((_%h107439%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107429%_ '1 '#f '#f)))
                (_%l107441%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107429%_ '2 '#f '#f))))
            (let ((__tmp108631 (lambda () (&Locker-write-lock! _%l107441%_)))
                  (__tmp108630
                   (lambda () (&HashTable-delete! _%h107439%_ _%key107424%_)))
                  (__tmp108629
                   (lambda () (&Locker-write-unlock! _%l107441%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108631 __tmp108630 __tmp108629))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!103850%_
       '#f))
    (define _%locked-hash-table::for-each103853%_
      (lambda (_%self103852107274%_ _%proc107276%_)
        (let* ((_%self107278%_ _%self103852107274%_)
               (_%self107281%_ _%self107278%_))
          (let ((_%h107291%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107281%_ '1 '#f '#f)))
                (_%l107293%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107281%_ '2 '#f '#f))))
            (let ((__tmp108634 (lambda () (&Locker-read-lock! _%l107293%_)))
                  (__tmp108633
                   (lambda ()
                     (&HashTable-for-each _%h107291%_ _%proc107276%_)))
                  (__tmp108632 (lambda () (&Locker-read-unlock! _%l107293%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108634 __tmp108633 __tmp108632))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each103853%_
       '#f))
    (define _%locked-hash-table::length103856%_
      (lambda (_%self103855107127%_)
        (let* ((_%self107130%_ _%self103855107127%_)
               (_%self107133%_ _%self107130%_))
          (let ((_%h107143%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107133%_ '1 '#f '#f)))
                (_%l107145%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107133%_ '2 '#f '#f))))
            (let ((__tmp108637 (lambda () (&Locker-read-lock! _%l107145%_)))
                  (__tmp108636 (lambda () (&HashTable-length _%h107143%_)))
                  (__tmp108635 (lambda () (&Locker-read-unlock! _%l107145%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108637 __tmp108636 __tmp108635))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'length
       _%locked-hash-table::length103856%_
       '#f))
    (define _%locked-hash-table::copy103859%_
      (lambda (_%self103858106980%_)
        (let* ((_%self106983%_ _%self103858106980%_)
               (_%self106986%_ _%self106983%_))
          (let ((_%h106996%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106986%_ '1 '#f '#f)))
                (_%l106998%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106986%_ '2 '#f '#f))))
            (let ((__tmp108640 (lambda () (&Locker-read-lock! _%l106998%_)))
                  (__tmp108639 (lambda () (&HashTable-copy _%h106996%_)))
                  (__tmp108638 (lambda () (&Locker-read-unlock! _%l106998%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108640 __tmp108639 __tmp108638))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy103859%_
       '#f))
    (define _%locked-hash-table::clear!103862%_
      (lambda (_%self103861106833%_)
        (let* ((_%self106836%_ _%self103861106833%_)
               (_%self106839%_ _%self106836%_))
          (let ((_%h106849%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106839%_ '1 '#f '#f)))
                (_%l106851%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106839%_ '2 '#f '#f))))
            (let ((__tmp108643 (lambda () (&Locker-write-lock! _%l106851%_)))
                  (__tmp108642 (lambda () (&HashTable-clear! _%h106849%_)))
                  (__tmp108641
                   (lambda () (&Locker-write-unlock! _%l106851%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108643 __tmp108642 __tmp108641))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!103862%_
       '#f))
    (let ((__tmp108644 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108644 'read-lock! mutex-lock!))
    (let ((__tmp108645 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108645 'read-unlock! mutex-unlock!))
    (let ((__tmp108646 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108646 'write-lock! mutex-lock!))
    (let ((__tmp108647 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108647 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref104141%_
      (lambda (_%self104140106684%_ _%key106686%_ _%default106687%_)
        (let* ((_%self106689%_ _%self104140106684%_)
               (_%self106691%_ _%self106689%_))
          (let ((_%h106701%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106691%_ '1 '#f '#f)))
                (_%key?106703%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106691%_ '2 '#f '#f))))
            ((lambda (_%g106705106707%_)
               (if (_%g106705106707%_ _%key106686%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key106686%_))))
             _%key?106703%_)
            (&HashTable-ref _%h106701%_ _%key106686%_ _%default106687%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref104141%_
       '#f))
    (define _%checked-hash-table::set!104144%_
      (lambda (_%self104143106535%_ _%key106537%_ _%value106538%_)
        (let* ((_%self106540%_ _%self104143106535%_)
               (_%self106542%_ _%self106540%_))
          (let ((_%h106552%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106542%_ '1 '#f '#f)))
                (_%key?106554%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106542%_ '2 '#f '#f))))
            ((lambda (_%g106556106558%_)
               (if (_%g106556106558%_ _%key106537%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key106537%_))))
             _%key?106554%_)
            (&HashTable-set! _%h106552%_ _%key106537%_ _%value106538%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!104144%_
       '#f))
    (define _%checked-hash-table::update!104147%_
      (lambda (_%self104146106387%_
               _%key106389%_
               _%update106390%_
               _%default106391%_)
        (let* ((_%self106393%_ _%self104146106387%_)
               (_%self106395%_ _%self106393%_))
          (let ((_%h106405%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106395%_ '1 '#f '#f)))
                (_%key?106407%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106395%_ '2 '#f '#f))))
            ((lambda (_%key?106410%_)
               (if (_%key?106410%_ _%key106389%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key106389%_)))
               (if (procedure? _%update106390%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%update106390%_))))
             _%key?106407%_)
            (&HashTable-update!
             _%h106405%_
             _%key106389%_
             _%update106390%_
             _%default106391%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!104147%_
       '#f))
    (define _%checked-hash-table::delete!104150%_
      (lambda (_%self104149106239%_ _%key106241%_)
        (let* ((_%self106243%_ _%self104149106239%_)
               (_%self106245%_ _%self106243%_))
          (let ((_%h106255%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106245%_ '1 '#f '#f)))
                (_%key?106257%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106245%_ '2 '#f '#f))))
            ((lambda (_%g106259106261%_)
               (if (_%g106259106261%_ _%key106241%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key106241%_))))
             _%key?106257%_)
            (&HashTable-delete! _%h106255%_ _%key106241%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!104150%_
       '#f))
    (define _%checked-hash-table::for-each104153%_
      (lambda (_%self104152106093%_ _%proc106095%_)
        (let* ((_%self106097%_ _%self104152106093%_)
               (_%self106099%_ _%self106097%_))
          (let ((_%h106109%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106099%_ '1 '#f '#f)))
                (_%key?106111%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106099%_ '2 '#f '#f))))
            ((lambda (_%_106114%_)
               (if (procedure? _%proc106095%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%proc106095%_))))
             _%key?106111%_)
            (&HashTable-for-each _%h106109%_ _%proc106095%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each104153%_
       '#f))
    (define _%checked-hash-table::length104156%_
      (lambda (_%self104155105950%_)
        (let* ((_%self105953%_ _%self104155105950%_)
               (_%self105955%_ _%self105953%_))
          (let ((_%h105965%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105955%_ '1 '#f '#f)))
                (_%key?105967%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105955%_ '2 '#f '#f))))
            (&HashTable-length _%h105965%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'length
       _%checked-hash-table::length104156%_
       '#f))
    (define _%checked-hash-table::copy104159%_
      (lambda (_%self104158105807%_)
        (let* ((_%self105810%_ _%self104158105807%_)
               (_%self105812%_ _%self105810%_))
          (let ((_%h105822%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105812%_ '1 '#f '#f)))
                (_%key?105824%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105812%_ '2 '#f '#f))))
            (&HashTable-copy _%h105822%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'copy
       _%checked-hash-table::copy104159%_
       '#f))
    (define _%checked-hash-table::clear!104162%_
      (lambda (_%self104161105664%_)
        (let* ((_%self105667%_ _%self104161105664%_)
               (_%self105669%_ _%self105667%_))
          (let ((_%h105679%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105669%_ '1 '#f '#f)))
                (_%key?105681%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105669%_ '2 '#f '#f))))
            (&HashTable-clear! _%h105679%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'clear!
       _%checked-hash-table::clear!104162%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table105534%_
               _%count105535%_
               _%free105536%_
               _%hash105537%_
               _%test105538%_
               _%seed105539%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table105534%_
           _%count105535%_
           _%free105536%_
           _%hash105537%_
           _%test105538%_
           _%seed105539%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords105295%_
               _%size-hint105285105296%_
               _%seed105286105298%_
               _%test105287105300%_
               _%hash105288105302%_
               _%lock105289105304%_
               _%check105290105306%_
               _%weak-keys105291105308%_
               _%weak-values105292105310%_)
        (let* ((_%size-hint105313%_
                (if (eq? _%size-hint105285105296%_ absent-value)
                    '#f
                    _%size-hint105285105296%_))
               (_%seed105315%_
                (if (eq? _%seed105286105298%_ absent-value)
                    '#f
                    _%seed105286105298%_))
               (_%test105317%_
                (if (eq? _%test105287105300%_ absent-value)
                    equal?
                    _%test105287105300%_))
               (_%hash105319%_
                (if (eq? _%hash105288105302%_ absent-value)
                    '#f
                    _%hash105288105302%_))
               (_%lock105321%_
                (if (eq? _%lock105289105304%_ absent-value)
                    '#f
                    _%lock105289105304%_))
               (_%check105323%_
                (if (eq? _%check105290105306%_ absent-value)
                    '#f
                    _%check105290105306%_))
               (_%weak-keys105325%_
                (if (eq? _%weak-keys105291105308%_ absent-value)
                    '#f
                    _%weak-keys105291105308%_))
               (_%weak-values105327%_
                (if (eq? _%weak-values105292105310%_ absent-value)
                    '#f
                    _%weak-values105292105310%_)))
          (letrec ((_%table-seed105330%_
                    (lambda ()
                      (if (fixnum? _%seed105315%_)
                          _%seed105315%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock105331%_
                    (lambda (_%ht105508%_)
                      (let ((_%ht105511%_ _%ht105508%_))
                        (_%__wrap-lock105332%_ _%ht105511%_))))
                   (_%__wrap-lock105332%_
                    (lambda (_%ht105490%_)
                      (let ((_%ht105493%_ _%ht105490%_))
                        (if _%lock105321%_
                            (let ((_%$obj105505%_
                                   (let ((__tmp108648
                                          (let ((_%$obj105502%_
                                                 _%lock105321%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj105502%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj105502%_)))
                                                     '#t)
                                                _%$obj105502%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj105502%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht105493%_
                                      __tmp108648))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj105505%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj105505%_)))
                                       '#t)
                                  _%$obj105505%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj105505%_))))
                            _%ht105493%_))))
                   (_%wrap-checked105333%_
                    (lambda (_%ht105477%_ _%implicit105478%_)
                      (let ((_%ht105481%_ _%ht105477%_))
                        (_%__wrap-checked105334%_
                         _%ht105481%_
                         _%implicit105478%_))))
                   (_%__wrap-checked105334%_
                    (lambda (_%ht105450%_ _%implicit105451%_)
                      (let ((_%ht105454%_ _%ht105450%_))
                        (if _%check105323%_
                            (let ((_%$obj105474%_
                                   (let ((__tmp108649
                                          (if (procedure? _%check105323%_)
                                              _%check105323%_
                                              _%implicit105451%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht105454%_
                                      __tmp108649))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj105474%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj105474%_)))
                                       '#t)
                                  _%$obj105474%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj105474%_))))
                            _%ht105454%_))))
                   (_%make105335%_
                    (lambda (_%kons105434%_
                             _%key?105435%_
                             _%hash105436%_
                             _%test105437%_)
                      (let* ((_%size105440%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint105313%_)))
                             (_%table105442%_
                              (let ((__tmp108650 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size105440%_ __tmp108650)))
                             (_%ht105447%_
                              (let ((_%$obj105444%_
                                     (_%kons105434%_
                                      _%table105442%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size105440%_ '2))
                                      _%hash105436%_
                                      _%test105437%_
                                      (_%table-seed105330%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj105444%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj105444%_)))
                                         '#t)
                                    _%$obj105444%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj105444%_))))))
                        (_%__wrap-checked105334%_
                         (_%__wrap-lock105332%_ _%ht105447%_)
                         _%key?105435%_))))
                   (_%make-gc-hash-table105336%_
                    (lambda ()
                      (let ((_%ht105432%_
                             (let ((_%$obj105429%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint105313%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj105429%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj105429%_)))
                                        '#t)
                                   _%$obj105429%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj105429%_))))))
                        (_%__wrap-checked105334%_
                         (_%__wrap-lock105332%_ _%ht105432%_)
                         true))))
                   (_%make-gambit-table105337%_
                    (lambda ()
                      (let* ((_%size105406%_
                              (let ((_%$e105403%_ _%size-hint105313%_))
                                (if _%$e105403%_
                                    _%$e105403%_
                                    (macro-absent-obj))))
                             (_%test105411%_
                              (let ((_%$e105408%_ _%test105317%_))
                                (if _%$e105408%_ _%$e105408%_ equal?)))
                             (_%hash105419%_
                              (let ((_%$e105413%_ _%hash105319%_))
                                (if _%$e105413%_
                                    _%$e105413%_
                                    (if (eq? _%test105411%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test105411%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht105424%_
                              (let ((_%$obj105421%_
                                     (make-table
                                      'size:
                                      _%size105406%_
                                      'test:
                                      _%test105411%_
                                      'hash:
                                      _%hash105419%_
                                      'weak-keys:
                                      _%weak-keys105325%_
                                      'weak-values:
                                      _%weak-values105327%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj105421%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj105421%_)))
                                         '#t)
                                    _%$obj105421%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj105421%_))))))
                        (_%__wrap-checked105334%_
                         (_%__wrap-lock105332%_ _%ht105424%_)
                         true)))))
            (if (or _%weak-keys105325%_ _%weak-values105327%_)
                (_%make-gambit-table105337%_)
                (if (and (or (eq? _%test105317%_ eq?)
                             (eq? _%test105317%_ ##eq?))
                         (or (not _%hash105319%_)
                             (eq? _%hash105319%_ eq?-hash)
                             (eq? _%hash105319%_ eq-hash))
                         (not _%seed105315%_))
                    (_%make-gc-hash-table105336%_)
                    (if (and (or (eq? _%test105317%_ eq?)
                                 (eq? _%test105317%_ ##eq?))
                             (or (not _%hash105319%_)
                                 (eq? _%hash105319%_ eq?-hash)
                                 (eq? _%hash105319%_ eq-hash)))
                        (_%make105335%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test105317%_ eqv?)
                                     (eq? _%test105317%_ ##eqv?))
                                 (or (not _%hash105319%_)
                                     (eq? _%hash105319%_ eqv?-hash)
                                     (eq? _%hash105319%_ eqv-hash)))
                            (_%make105335%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test105317%_ eq?)
                                         (eq? _%test105317%_ ##eq?))
                                     (or (eq? _%hash105319%_ symbolic-hash)
                                         (eq? _%hash105319%_ ##symbol-hash)))
                                (_%make105335%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test105317%_ eq?)
                                             (eq? _%test105317%_ ##eq?))
                                         (eq? _%hash105319%_ immediate-hash))
                                    (_%make105335%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test105317%_ equal?)
                                                 (eq? _%test105317%_ ##equal?)
                                                 (eq? _%test105317%_ string=?)
                                                 (eq? _%test105317%_
                                                      ##string=?))
                                             (or (eq? _%hash105319%_
                                                      string-hash)
                                                 (eq? _%hash105319%_
                                                      ##string=?-hash)))
                                        (_%make105335%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test105317%_ equal?)
                                                 (not _%hash105319%_))
                                            (_%make105335%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test105317%_)
                                                (if (procedure? _%hash105319%_)
                                                    (_%make105335%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash105319%_
                                                     _%test105317%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash105319%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test105317%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords105524%_ . _%args105525%_)
        (apply make-hash-table__%
               _%@@keywords105524%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105524%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105524%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105524%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105524%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105524%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105524%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105524%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105524%_
                  'weak-values:
                  absent-value))
               _%args105525%_)))
    (define make-hash-table
      (lambda _%args105293105531%_
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
               _%args105293105531%_)))
    (define make-hash-table-eq
      (lambda _%args105282%_
        (apply make-hash-table 'test: eq? _%args105282%_)))
    (define make-hash-table-eqv
      (lambda _%args105280%_
        (apply make-hash-table 'test: eqv? _%args105280%_)))
    (define make-hash-table-symbolic
      (lambda _%args105278%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args105278%_)))
    (define make-hash-table-string
      (lambda _%args105276%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args105276%_)))
    (define make-hash-table-immediate
      (lambda _%args105274%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args105274%_)))
    (define list->hash-table
      (lambda (_%lst105271%_ . _%args105272%_)
        (list->hash-table!
         _%lst105271%_
         (apply make-hash-table
                'size:
                (length _%lst105271%_)
                _%args105272%_))))
    (define list->hash-table-eq
      (lambda (_%lst105268%_ . _%args105269%_)
        (list->hash-table!
         _%lst105268%_
         (apply make-hash-table-eq
                'size:
                (length _%lst105268%_)
                _%args105269%_))))
    (define list->hash-table-eqv
      (lambda (_%lst105265%_ . _%args105266%_)
        (list->hash-table!
         _%lst105265%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst105265%_)
                _%args105266%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst105262%_ . _%args105263%_)
        (list->hash-table!
         _%lst105262%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst105262%_)
                _%args105263%_))))
    (define list->hash-table-string
      (lambda (_%lst105259%_ . _%args105260%_)
        (list->hash-table!
         _%lst105259%_
         (apply make-hash-table-string
                'size:
                (length _%lst105259%_)
                _%args105260%_))))
    (define list->hash-table-immediate
      (lambda (_%lst105256%_ . _%args105257%_)
        (list->hash-table!
         _%lst105256%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst105256%_)
                _%args105257%_))))
    (define list->hash-table!
      (lambda (_%lst105223%_ _%h105224%_)
        (for-each
         (lambda (_%el105226%_)
           (let* ((_%el105227105234%_ _%el105226%_)
                  (_%E105229105238%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el105227105234%_
                              '([k . v])))
                     '#!void))
                  (_%K105230105244%_
                   (lambda (_%v105241%_ _%k105242%_)
                     (&HashTable-set! _%h105224%_ _%k105242%_ _%v105241%_))))
             (if (let () (declare (not safe)) (##pair? _%el105227105234%_))
                 (let ((_%hd105231105247%_
                        (let ()
                          (declare (not safe))
                          (##car _%el105227105234%_)))
                       (_%tl105232105249%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el105227105234%_))))
                   (let* ((_%k105252%_ _%hd105231105247%_)
                          (_%v105254%_ _%tl105232105249%_))
                     (_%K105230105244%_ _%v105254%_ _%k105252%_)))
                 (_%E105229105238%_))))
         _%lst105223%_)
        _%h105224%_))
    (define plist->hash-table
      (lambda (_%lst105220%_ . _%args105221%_)
        (plist->hash-table!
         _%lst105220%_
         (apply make-hash-table
                'size:
                (length _%lst105220%_)
                _%args105221%_))))
    (define plist->hash-table-eq
      (lambda (_%lst105217%_ . _%args105218%_)
        (plist->hash-table!
         _%lst105217%_
         (apply make-hash-table-eq
                'size:
                (length _%lst105217%_)
                _%args105218%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst105214%_ . _%args105215%_)
        (plist->hash-table!
         _%lst105214%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst105214%_)
                _%args105215%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst105211%_ . _%args105212%_)
        (plist->hash-table!
         _%lst105211%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst105211%_)
                _%args105212%_))))
    (define plist->hash-table-string
      (lambda (_%lst105208%_ . _%args105209%_)
        (plist->hash-table!
         _%lst105208%_
         (apply make-hash-table-string
                'size:
                (length _%lst105208%_)
                _%args105209%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst105205%_ . _%args105206%_)
        (plist->hash-table!
         _%lst105205%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst105205%_)
                _%args105206%_))))
    (define plist->hash-table!
      (lambda (_%lst105145%_ _%h105146%_)
        (let _%loop105148%_ ((_%rest105150%_ _%lst105145%_))
          (let* ((_%rest105151105163%_ _%rest105150%_)
                 (_%else105154105171%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst105145%_)))))
            (let ((_%K105157105186%_
                   (lambda (_%rest105182%_ _%val105183%_ _%key105184%_)
                     (&HashTable-set! _%h105146%_ _%key105184%_ _%val105183%_)
                     (_%loop105148%_ _%rest105182%_)))
                  (_%K105156105176%_ (lambda () _%h105146%_)))
              (let ((_%try-match105153105179%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest105151105163%_))
                           (_%K105156105176%_)
                           (_%else105154105171%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest105151105163%_))
                    (let ((_%tl105159105191%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest105151105163%_)))
                          (_%hd105158105189%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest105151105163%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl105159105191%_))
                          (let ((_%tl105161105198%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl105159105191%_)))
                                (_%hd105160105196%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl105159105191%_))))
                            (let ((_%key105194%_ _%hd105158105189%_)
                                  (_%val105201%_ _%hd105160105196%_)
                                  (_%rest105203%_ _%tl105161105198%_))
                              (_%K105157105186%_
                               _%rest105203%_
                               _%val105201%_
                               _%key105194%_)))
                          (_%else105154105171%_)))
                    (_%try-match105153105179%_))))))))
    (define hash-length
      (lambda (_%h105127%_)
        (let* ((_%h105133%_
                (let ((_%$obj105130%_ _%h105127%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105130%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105130%_)))
                           '#t)
                      _%$obj105130%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105130%_)))))
               (_%h105135%_ _%h105133%_))
          (__hash-length _%h105135%_))))
    (define __hash-length
      (lambda (_%h105115%_)
        (let ((_%h105118%_ _%h105115%_)) (__HashTable-length _%h105118%_))))
    (define hash-ref__%
      (lambda (_%h105083%_ _%key105084%_ _%default105085%_)
        (let* ((_%h105091%_
                (let ((_%$obj105088%_ _%h105083%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105088%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105088%_)))
                           '#t)
                      _%$obj105088%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105088%_)))))
               (_%h105093%_ _%h105091%_))
          (__hash-ref__% _%h105093%_ _%key105084%_ _%default105085%_))))
    (define hash-ref__0
      (lambda (_%h105106%_ _%key105107%_)
        (let ((_%default105109%_ (macro-absent-obj)))
          (hash-ref__% _%h105106%_ _%key105107%_ _%default105109%_))))
    (define hash-ref
      (lambda _g108652_
        (let ((_g108651_ (let () (declare (not safe)) (##length _g108652_))))
          (cond ((let () (declare (not safe)) (##fx= _g108651_ 2))
                 (apply hash-ref__0 _g108652_))
                ((let () (declare (not safe)) (##fx= _g108651_ 3))
                 (apply hash-ref__% _g108652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g108652_))))))
    (define __hash-ref__%
      (lambda (_%h105054%_ _%key105055%_ _%default105056%_)
        (let* ((_%h105059%_ _%h105054%_)
               (_%result105068%_
                (&HashTable-ref _%h105059%_ _%key105055%_ _%default105056%_)))
          (if (eq? _%result105068%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h105059%_
               'key:
               _%key105055%_)
              _%result105068%_))))
    (define __hash-ref__0
      (lambda (_%h105073%_ _%key105074%_)
        (let ((_%default105076%_ (macro-absent-obj)))
          (__hash-ref__% _%h105073%_ _%key105074%_ _%default105076%_))))
    (define __hash-ref
      (lambda _g108654_
        (let ((_g108653_ (let () (declare (not safe)) (##length _g108654_))))
          (cond ((let () (declare (not safe)) (##fx= _g108653_ 2))
                 (apply __hash-ref__0 _g108654_))
                ((let () (declare (not safe)) (##fx= _g108653_ 3))
                 (apply __hash-ref__% _g108654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g108654_))))))
    (define hash-get
      (lambda (_%h105034%_ _%key105035%_)
        (let* ((_%h105041%_
                (let ((_%$obj105038%_ _%h105034%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105038%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105038%_)))
                           '#t)
                      _%$obj105038%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105038%_)))))
               (_%h105043%_ _%h105041%_))
          (__hash-get _%h105043%_ _%key105035%_))))
    (define __hash-get
      (lambda (_%h105021%_ _%key105022%_)
        (let ((_%h105025%_ _%h105021%_))
          (&HashTable-ref _%h105025%_ _%key105022%_ '#f))))
    (define hash-put!
      (lambda (_%h105001%_ _%key105002%_ _%value105003%_)
        (let* ((_%h105009%_
                (let ((_%$obj105006%_ _%h105001%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105006%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105006%_)))
                           '#t)
                      _%$obj105006%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105006%_)))))
               (_%h105011%_ _%h105009%_))
          (__hash-put! _%h105011%_ _%key105002%_ _%value105003%_))))
    (define __hash-put!
      (lambda (_%h104987%_ _%key104988%_ _%value104989%_)
        (let ((_%h104992%_ _%h104987%_))
          (&HashTable-set! _%h104992%_ _%key104988%_ _%value104989%_))))
    (define hash-update!__%
      (lambda (_%h104952%_ _%key104953%_ _%update104954%_ _%default104955%_)
        (let* ((_%h104961%_
                (let ((_%$obj104958%_ _%h104952%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104958%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104958%_)))
                           '#t)
                      _%$obj104958%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104958%_)))))
               (_%h104963%_ _%h104961%_))
          (__hash-update!__%
           _%h104963%_
           _%key104953%_
           _%update104954%_
           _%default104955%_))))
    (define hash-update!__0
      (lambda (_%h104976%_ _%key104977%_ _%update104978%_)
        (let ((_%default104980%_ '#!void))
          (hash-update!__%
           _%h104976%_
           _%key104977%_
           _%update104978%_
           _%default104980%_))))
    (define hash-update!
      (lambda _g108656_
        (let ((_g108655_ (let () (declare (not safe)) (##length _g108656_))))
          (cond ((let () (declare (not safe)) (##fx= _g108655_ 3))
                 (apply hash-update!__0 _g108656_))
                ((let () (declare (not safe)) (##fx= _g108655_ 4))
                 (apply hash-update!__% _g108656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g108656_))))))
    (define __hash-update!__%
      (lambda (_%h104922%_ _%key104923%_ _%update104924%_ _%default104925%_)
        (let ((_%h104928%_ _%h104922%_))
          (HashTable-update!
           _%h104928%_
           _%key104923%_
           _%update104924%_
           _%default104925%_))))
    (define __hash-update!__0
      (lambda (_%h104940%_ _%key104941%_ _%update104942%_)
        (let ((_%default104944%_ '#!void))
          (__hash-update!__%
           _%h104940%_
           _%key104941%_
           _%update104942%_
           _%default104944%_))))
    (define __hash-update!
      (lambda _g108658_
        (let ((_g108657_ (let () (declare (not safe)) (##length _g108658_))))
          (cond ((let () (declare (not safe)) (##fx= _g108657_ 3))
                 (apply __hash-update!__0 _g108658_))
                ((let () (declare (not safe)) (##fx= _g108657_ 4))
                 (apply __hash-update!__% _g108658_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g108658_))))))
    (define hash-remove!
      (lambda (_%h104902%_ _%key104903%_)
        (let* ((_%h104909%_
                (let ((_%$obj104906%_ _%h104902%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104906%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104906%_)))
                           '#t)
                      _%$obj104906%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104906%_)))))
               (_%h104911%_ _%h104909%_))
          (__hash-remove! _%h104911%_ _%key104903%_))))
    (define __hash-remove!
      (lambda (_%h104889%_ _%key104890%_)
        (let ((_%h104893%_ _%h104889%_))
          (&HashTable-delete! _%h104893%_ _%key104890%_))))
    (define hash-key?
      (lambda (_%h104870%_ _%k104871%_)
        (let* ((_%h104877%_
                (let ((_%$obj104874%_ _%h104870%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104874%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104874%_)))
                           '#t)
                      _%$obj104874%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104874%_)))))
               (_%h104879%_ _%h104877%_))
          (__hash-key? _%h104879%_ _%k104871%_))))
    (define __hash-key?
      (lambda (_%h104857%_ _%k104858%_)
        (let ((_%h104861%_ _%h104857%_))
          (not (eq? (&HashTable-ref _%h104861%_ _%k104858%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h104839%_)
        (let* ((_%h104845%_
                (let ((_%$obj104842%_ _%h104839%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104842%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104842%_)))
                           '#t)
                      _%$obj104842%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104842%_)))))
               (_%h104847%_ _%h104845%_))
          (__hash->list _%h104847%_))))
    (define __hash->list
      (lambda (_%h104822%_)
        (let* ((_%h104825%_ _%h104822%_) (_%lst104834%_ '()))
          (&HashTable-for-each
           _%h104825%_
           (lambda (_%k104836%_ _%v104837%_)
             (set! _%lst104834%_
                   (cons (cons _%k104836%_ _%v104837%_) _%lst104834%_))))
          _%lst104834%_)))
    (define hash->plist
      (lambda (_%h104804%_)
        (let* ((_%h104810%_
                (let ((_%$obj104807%_ _%h104804%_))
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
          (__hash->plist _%h104812%_))))
    (define __hash->plist
      (lambda (_%h104787%_)
        (let* ((_%h104790%_ _%h104787%_) (_%lst104799%_ '()))
          (&HashTable-for-each
           _%h104790%_
           (lambda (_%k104801%_ _%v104802%_)
             (set! _%lst104799%_
                   (cons _%k104801%_ (cons _%v104802%_ _%lst104799%_)))))
          _%lst104799%_)))
    (define hash-for-each
      (lambda (_%proc104758%_ _%h104759%_)
        (if (procedure? _%proc104758%_)
            (let* ((_%proc104763%_ _%proc104758%_)
                   (_%h104775%_
                    (let ((_%$obj104772%_ _%h104759%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104772%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104772%_)))
                               '#t)
                          _%$obj104772%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104772%_)))))
                   (_%h104777%_ _%h104775%_))
              (__hash-for-each _%proc104763%_ _%h104777%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@568.22-568.26"
               'contract:
               'procedure?
               'value:
               _%proc104758%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc104737%_ _%h104738%_)
        (let* ((_%proc104741%_ _%proc104737%_) (_%h104749%_ _%h104738%_))
          (&HashTable-for-each _%h104749%_ _%proc104741%_))))
    (define hash-map
      (lambda (_%proc104708%_ _%h104709%_)
        (if (procedure? _%proc104708%_)
            (let* ((_%proc104713%_ _%proc104708%_)
                   (_%h104725%_
                    (let ((_%$obj104722%_ _%h104709%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104722%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104722%_)))
                               '#t)
                          _%$obj104722%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104722%_)))))
                   (_%h104727%_ _%h104725%_))
              (__hash-map _%proc104713%_ _%h104727%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@571.17-571.21"
               'contract:
               'procedure?
               'value:
               _%proc104708%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc104682%_ _%h104683%_)
        (let* ((_%proc104686%_ _%proc104682%_)
               (_%h104694%_ _%h104683%_)
               (_%result104703%_ '()))
          (&HashTable-for-each
           _%h104694%_
           (lambda (_%k104705%_ _%v104706%_)
             (set! _%result104703%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc104686%_ _%k104705%_ _%v104706%_))
                         _%result104703%_))))
          _%result104703%_)))
    (define hash-fold
      (lambda (_%proc104652%_ _%iv104653%_ _%h104654%_)
        (if (procedure? _%proc104652%_)
            (let* ((_%proc104658%_ _%proc104652%_)
                   (_%h104670%_
                    (let ((_%$obj104667%_ _%h104654%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104667%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104667%_)))
                               '#t)
                          _%$obj104667%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104667%_)))))
                   (_%h104672%_ _%h104670%_))
              (__hash-fold _%proc104658%_ _%iv104653%_ _%h104672%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@576.18-576.22"
               'contract:
               'procedure?
               'value:
               _%proc104652%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc104625%_ _%iv104626%_ _%h104627%_)
        (let* ((_%proc104630%_ _%proc104625%_)
               (_%h104638%_ _%h104627%_)
               (_%result104647%_ _%iv104626%_))
          (&HashTable-for-each
           _%h104638%_
           (lambda (_%k104649%_ _%v104650%_)
             (set! _%result104647%_
                   (let ()
                     (declare (not safe))
                     (_%proc104630%_
                      _%k104649%_
                      _%v104650%_
                      _%result104647%_)))))
          _%result104647%_)))
    (define hash-find__%
      (lambda (_%proc104583%_ _%h104584%_ _%default-value104585%_)
        (if (procedure? _%proc104583%_)
            (let* ((_%proc104589%_ _%proc104583%_)
                   (_%h104601%_
                    (let ((_%$obj104598%_ _%h104584%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104598%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104598%_)))
                               '#t)
                          _%$obj104598%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104598%_)))))
                   (_%h104603%_ _%h104601%_))
              (__hash-find__%
               _%proc104589%_
               _%h104603%_
               _%default-value104585%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@581.18-581.22"
               'contract:
               'procedure?
               'value:
               _%proc104583%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc104616%_ _%h104617%_)
        (let ((_%default-value104619%_ '#f))
          (hash-find__% _%proc104616%_ _%h104617%_ _%default-value104619%_))))
    (define hash-find
      (lambda _g108660_
        (let ((_g108659_ (let () (declare (not safe)) (##length _g108660_))))
          (cond ((let () (declare (not safe)) (##fx= _g108659_ 2))
                 (apply hash-find__0 _g108660_))
                ((let () (declare (not safe)) (##fx= _g108659_ 3))
                 (apply hash-find__% _g108660_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g108660_))))))
    (define __hash-find__%
      (lambda (_%proc104540%_ _%h104541%_ _%default-value104542%_)
        (let* ((_%proc104545%_ _%proc104540%_)
               (_%h104553%_ _%h104541%_)
               (__tmp108661
                (lambda (_%return104562%_)
                  (&HashTable-for-each
                   _%h104553%_
                   (lambda (_%k104564%_ _%v104565%_)
                     (let ((_%$e104567%_
                            (let ()
                              (declare (not safe))
                              (_%proc104545%_ _%k104564%_ _%v104565%_))))
                       (if _%$e104567%_
                           (_%return104562%_ _%$e104567%_)
                           '#!void))))
                  _%default-value104542%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp108661))))
    (define __hash-find__0
      (lambda (_%proc104573%_ _%h104574%_)
        (let ((_%default-value104576%_ '#f))
          (__hash-find__%
           _%proc104573%_
           _%h104574%_
           _%default-value104576%_))))
    (define __hash-find
      (lambda _g108663_
        (let ((_g108662_ (let () (declare (not safe)) (##length _g108663_))))
          (cond ((let () (declare (not safe)) (##fx= _g108662_ 2))
                 (apply __hash-find__0 _g108663_))
                ((let () (declare (not safe)) (##fx= _g108662_ 3))
                 (apply __hash-find__% _g108663_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g108663_))))))
    (define hash-keys
      (lambda (_%h104521%_)
        (let* ((_%h104527%_
                (let ((_%$obj104524%_ _%h104521%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104524%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104524%_)))
                           '#t)
                      _%$obj104524%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104524%_)))))
               (_%h104529%_ _%h104527%_))
          (__hash-keys _%h104529%_))))
    (define __hash-keys
      (lambda (_%h104504%_)
        (let* ((_%h104507%_ _%h104504%_) (_%result104516%_ '()))
          (&HashTable-for-each
           _%h104507%_
           (lambda (_%k104518%_ _%v104519%_)
             (set! _%result104516%_ (cons _%k104518%_ _%result104516%_))))
          _%result104516%_)))
    (define hash-values
      (lambda (_%h104486%_)
        (let* ((_%h104492%_
                (let ((_%$obj104489%_ _%h104486%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104489%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104489%_)))
                           '#t)
                      _%$obj104489%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104489%_)))))
               (_%h104494%_ _%h104492%_))
          (__hash-values _%h104494%_))))
    (define __hash-values
      (lambda (_%h104469%_)
        (let* ((_%h104472%_ _%h104469%_) (_%result104481%_ '()))
          (&HashTable-for-each
           _%h104472%_
           (lambda (_%k104483%_ _%v104484%_)
             (set! _%result104481%_ (cons _%v104484%_ _%result104481%_))))
          _%result104481%_)))
    (define hash-copy
      (lambda (_%h104451%_)
        (let* ((_%h104457%_
                (let ((_%$obj104454%_ _%h104451%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104454%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104454%_)))
                           '#t)
                      _%$obj104454%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104454%_)))))
               (_%h104459%_ _%h104457%_))
          (__hash-copy _%h104459%_))))
    (define __hash-copy
      (lambda (_%h104439%_)
        (let ((_%h104442%_ _%h104439%_)) (__HashTable-copy _%h104442%_))))
    (define hash-clear!
      (lambda (_%h104421%_)
        (let* ((_%h104427%_
                (let ((_%$obj104424%_ _%h104421%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104424%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104424%_)))
                           '#t)
                      _%$obj104424%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104424%_)))))
               (_%h104429%_ _%h104427%_))
          (__hash-clear! _%h104429%_))))
    (define __hash-clear!
      (lambda (_%h104409%_)
        (let ((_%h104412%_ _%h104409%_)) (&HashTable-clear! _%h104412%_))))
    (define hash-merge
      (lambda (_%h104390%_ . _%rest104391%_)
        (let* ((_%h104397%_
                (let ((_%$obj104394%_ _%h104390%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104394%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104394%_)))
                           '#t)
                      _%$obj104394%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104394%_)))))
               (_%h104399%_ _%h104397%_))
          (declare (not safe))
          (##apply __hash-merge _%h104399%_ _%rest104391%_))))
    (define __hash-merge
      (lambda (_%h104375%_ . _%rest104376%_)
        (let* ((_%h104379%_ _%h104375%_)
               (_%copy104388%_ (__HashTable-copy _%h104379%_)))
          (apply hash-merge! _%copy104388%_ _%rest104376%_)
          _%copy104388%_)))
    (define hash-merge!
      (lambda (_%h104356%_ . _%rest104357%_)
        (let* ((_%h104363%_
                (let ((_%$obj104360%_ _%h104356%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104360%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104360%_)))
                           '#t)
                      _%$obj104360%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104360%_)))))
               (_%h104365%_ _%h104363%_))
          (declare (not safe))
          (##apply __hash-merge! _%h104365%_ _%rest104357%_))))
    (define __hash-merge!
      (lambda (_%h104319%_ . _%rest104320%_)
        (let ((_%h104323%_ _%h104319%_))
          (let ((__tmp108664
                 (lambda (_%hr104332%_)
                   (let* ((_%hr104338%_
                           (let ((_%$obj104335%_ _%hr104332%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj104335%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj104335%_)))
                                      '#t)
                                 _%$obj104335%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj104335%_)))))
                          (_%hr104340%_ _%hr104338%_))
                     (&HashTable-for-each
                      _%hr104340%_
                      (lambda (_%k104353%_ _%v104354%_)
                        (if (__hash-key? _%h104323%_ _%k104353%_)
                            '#!void
                            (&HashTable-set!
                             _%h104323%_
                             _%k104353%_
                             _%v104354%_))))))))
            (declare (not safe))
            (##for-each __tmp108664 _%rest104320%_))
          _%h104323%_)))))
