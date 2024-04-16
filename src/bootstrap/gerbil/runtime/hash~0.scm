(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1713044315)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp108528 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp108528
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args108508%_
        (apply make-instance UnboundKeyError::t _%$args108508%_)))
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
      (lambda (_%where108382%_ _%message108383%_ . _%irritants108384%_)
        (let ((__tmp108529
               (let ((__obj108522
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj108522
                    _%message108383%_
                    'where:
                    _%where108382%_
                    'irritants:
                    _%irritants108384%_))
                 __obj108522)))
          (declare (not safe))
          (raise __tmp108529))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp108530 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp108530
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
      (lambda (_%obj108380%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj108380%_))))
    (define try-HashTable
      (lambda (_%obj108378%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj108378%_))))
    (define HashTable?
      (lambda (_%obj108376%_)
        (let ((__tmp108531
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj108376%_ __tmp108531))))
    (define is-HashTable?
      (lambda (_%obj108374%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj108374%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self108358%_)
        (let* ((_%self108363%_
                (let ((_%$obj108360%_ _%self108358%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108360%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108360%_)))
                           '#t)
                      _%$obj108360%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108360%_)))))
               (_%self108365%_ _%self108363%_))
          (&HashTable-clear! _%self108365%_))))
    (define &HashTable-clear!
      (lambda (_%self108343%_)
        (let ((_%self108345%_ _%self108343%_))
          (declare (not safe))
          (let ((_%obj108355%_
                 (##unchecked-structure-ref _%self108345%_ '1 '#f 'clear!))
                (_%f108356%_
                 (##unchecked-structure-ref _%self108345%_ '2 '#f 'clear!)))
            (_%f108356%_ _%obj108355%_)))))
    (define HashTable-copy
      (lambda (_%self108327%_)
        (let* ((_%self108332%_
                (let ((_%$obj108329%_ _%self108327%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108329%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108329%_)))
                           '#t)
                      _%$obj108329%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108329%_)))))
               (_%self108334%_ _%self108332%_))
          (__HashTable-copy _%self108334%_))))
    (define __HashTable-copy
      (lambda (_%self108314%_)
        (let* ((_%self108316%_ _%self108314%_)
               (_%$obj108324%_ (&HashTable-copy _%self108316%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj108324%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj108324%_)))
                   '#t)
              _%$obj108324%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj108324%_))))))
    (define &HashTable-copy
      (lambda (_%self108299%_)
        (let ((_%self108301%_ _%self108299%_))
          (declare (not safe))
          (let ((_%obj108311%_
                 (##unchecked-structure-ref _%self108301%_ '1 '#f 'copy))
                (_%f108312%_
                 (##unchecked-structure-ref _%self108301%_ '3 '#f 'copy)))
            (_%f108312%_ _%obj108311%_)))))
    (define HashTable-delete!
      (lambda (_%self108282%_ _%key108283%_)
        (let* ((_%self108288%_
                (let ((_%$obj108285%_ _%self108282%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108285%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108285%_)))
                           '#t)
                      _%$obj108285%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108285%_)))))
               (_%self108290%_ _%self108288%_))
          (&HashTable-delete! _%self108290%_ _%key108283%_))))
    (define &HashTable-delete!
      (lambda (_%self108266%_ _%key108267%_)
        (let ((_%self108269%_ _%self108266%_))
          (declare (not safe))
          (let ((_%obj108279%_
                 (##unchecked-structure-ref _%self108269%_ '1 '#f 'delete!))
                (_%f108280%_
                 (##unchecked-structure-ref _%self108269%_ '4 '#f 'delete!)))
            (_%f108280%_ _%obj108279%_ _%key108267%_)))))
    (define HashTable-for-each
      (lambda (_%self108239%_ _%proc108240%_)
        (let* ((_%self108245%_
                (let ((_%$obj108242%_ _%self108239%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108242%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108242%_)))
                           '#t)
                      _%$obj108242%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108242%_)))))
               (_%self108247%_ _%self108245%_))
          (if (procedure? _%proc108240%_)
              (let ((_%proc108256%_ _%proc108240%_))
                (&HashTable-for-each _%self108247%_ _%proc108256%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc108240%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self108215%_ _%proc108216%_)
        (let* ((_%self108218%_ _%self108215%_) (_%proc108225%_ _%proc108216%_))
          (declare (not safe))
          (let ((_%obj108236%_
                 (##unchecked-structure-ref _%self108218%_ '1 '#f 'for-each))
                (_%f108237%_
                 (##unchecked-structure-ref _%self108218%_ '5 '#f 'for-each)))
            (_%f108237%_ _%obj108236%_ _%proc108225%_)))))
    (define HashTable-length
      (lambda (_%self108199%_)
        (let* ((_%self108204%_
                (let ((_%$obj108201%_ _%self108199%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108201%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108201%_)))
                           '#t)
                      _%$obj108201%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108201%_)))))
               (_%self108206%_ _%self108204%_))
          (__HashTable-length _%self108206%_))))
    (define __HashTable-length
      (lambda (_%self108186%_)
        (let* ((_%self108188%_ _%self108186%_)
               (_%val108196%_ (&HashTable-length _%self108188%_)))
          _%val108196%_)))
    (define &HashTable-length
      (lambda (_%self108171%_)
        (let ((_%self108173%_ _%self108171%_))
          (declare (not safe))
          (let ((_%obj108183%_
                 (##unchecked-structure-ref _%self108173%_ '1 '#f 'length))
                (_%f108184%_
                 (##unchecked-structure-ref _%self108173%_ '6 '#f 'length)))
            (_%f108184%_ _%obj108183%_)))))
    (define HashTable-ref
      (lambda (_%self108153%_ _%key108154%_ _%default108155%_)
        (let* ((_%self108160%_
                (let ((_%$obj108157%_ _%self108153%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108157%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108157%_)))
                           '#t)
                      _%$obj108157%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108157%_)))))
               (_%self108162%_ _%self108160%_))
          (&HashTable-ref _%self108162%_ _%key108154%_ _%default108155%_))))
    (define &HashTable-ref
      (lambda (_%self108136%_ _%key108137%_ _%default108138%_)
        (let ((_%self108140%_ _%self108136%_))
          (declare (not safe))
          (let ((_%obj108150%_
                 (##unchecked-structure-ref _%self108140%_ '1 '#f 'ref))
                (_%f108151%_
                 (##unchecked-structure-ref _%self108140%_ '7 '#f 'ref)))
            (_%f108151%_ _%obj108150%_ _%key108137%_ _%default108138%_)))))
    (define HashTable-set!
      (lambda (_%self108118%_ _%key108119%_ _%value108120%_)
        (let* ((_%self108125%_
                (let ((_%$obj108122%_ _%self108118%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108122%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108122%_)))
                           '#t)
                      _%$obj108122%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108122%_)))))
               (_%self108127%_ _%self108125%_))
          (&HashTable-set! _%self108127%_ _%key108119%_ _%value108120%_))))
    (define &HashTable-set!
      (lambda (_%self108101%_ _%key108102%_ _%value108103%_)
        (let ((_%self108105%_ _%self108101%_))
          (declare (not safe))
          (let ((_%obj108115%_
                 (##unchecked-structure-ref _%self108105%_ '1 '#f 'set!))
                (_%f108116%_
                 (##unchecked-structure-ref _%self108105%_ '8 '#f 'set!)))
            (_%f108116%_ _%obj108115%_ _%key108102%_ _%value108103%_)))))
    (define HashTable-update!
      (lambda (_%self108072%_ _%key108073%_ _%proc108074%_ _%default108075%_)
        (let* ((_%self108080%_
                (let ((_%$obj108077%_ _%self108072%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108077%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108077%_)))
                           '#t)
                      _%$obj108077%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj108077%_)))))
               (_%self108082%_ _%self108080%_))
          (if (procedure? _%proc108074%_)
              (let ((_%proc108091%_ _%proc108074%_))
                (&HashTable-update!
                 _%self108082%_
                 _%key108073%_
                 _%proc108091%_
                 _%default108075%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc108074%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self108044%_ _%key108045%_ _%proc108046%_ _%default108047%_)
        (let* ((_%self108049%_ _%self108044%_) (_%proc108056%_ _%proc108046%_))
          (declare (not safe))
          (let ((_%obj108067%_
                 (##unchecked-structure-ref _%self108049%_ '1 '#f 'update!))
                (_%f108069%_
                 (##unchecked-structure-ref _%self108049%_ '9 '#f 'update!)))
            (_%f108069%_
             _%obj108067%_
             _%key108045%_
             _%proc108056%_
             _%default108047%_)))))
    (define Locker::t
      (let ((__tmp108532 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp108532
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
      (lambda (_%obj108042%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj108042%_))))
    (define try-Locker
      (lambda (_%obj108040%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj108040%_))))
    (define Locker?
      (lambda (_%obj108038%_)
        (let ((__tmp108533
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj108038%_ __tmp108533))))
    (define is-Locker?
      (lambda (_%obj108036%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj108036%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self108020%_)
        (let* ((_%self108025%_
                (let ((_%$obj108022%_ _%self108020%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj108022%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj108022%_)))
                           '#t)
                      _%$obj108022%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj108022%_)))))
               (_%self108027%_ _%self108025%_))
          (&Locker-read-lock! _%self108027%_))))
    (define &Locker-read-lock!
      (lambda (_%self108005%_)
        (let ((_%self108007%_ _%self108005%_))
          (declare (not safe))
          (let ((_%obj108017%_
                 (##unchecked-structure-ref _%self108007%_ '1 '#f 'read-lock!))
                (_%f108018%_
                 (##unchecked-structure-ref
                  _%self108007%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f108018%_ _%obj108017%_)))))
    (define Locker-read-unlock!
      (lambda (_%self107989%_)
        (let* ((_%self107994%_
                (let ((_%$obj107991%_ _%self107989%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107991%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107991%_)))
                           '#t)
                      _%$obj107991%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj107991%_)))))
               (_%self107996%_ _%self107994%_))
          (&Locker-read-unlock! _%self107996%_))))
    (define &Locker-read-unlock!
      (lambda (_%self107974%_)
        (let ((_%self107976%_ _%self107974%_))
          (declare (not safe))
          (let ((_%obj107986%_
                 (##unchecked-structure-ref
                  _%self107976%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f107987%_
                 (##unchecked-structure-ref
                  _%self107976%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f107987%_ _%obj107986%_)))))
    (define Locker-write-lock!
      (lambda (_%self107958%_)
        (let* ((_%self107963%_
                (let ((_%$obj107960%_ _%self107958%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107960%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107960%_)))
                           '#t)
                      _%$obj107960%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj107960%_)))))
               (_%self107965%_ _%self107963%_))
          (&Locker-write-lock! _%self107965%_))))
    (define &Locker-write-lock!
      (lambda (_%self107943%_)
        (let ((_%self107945%_ _%self107943%_))
          (declare (not safe))
          (let ((_%obj107955%_
                 (##unchecked-structure-ref
                  _%self107945%_
                  '1
                  '#f
                  'write-lock!))
                (_%f107956%_
                 (##unchecked-structure-ref
                  _%self107945%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f107956%_ _%obj107955%_)))))
    (define Locker-write-unlock!
      (lambda (_%self107927%_)
        (let* ((_%self107932%_
                (let ((_%$obj107929%_ _%self107927%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107929%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107929%_)))
                           '#t)
                      _%$obj107929%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj107929%_)))))
               (_%self107934%_ _%self107932%_))
          (&Locker-write-unlock! _%self107934%_))))
    (define &Locker-write-unlock!
      (lambda (_%self107910%_)
        (let ((_%self107912%_ _%self107910%_))
          (declare (not safe))
          (let ((_%obj107922%_
                 (##unchecked-structure-ref
                  _%self107912%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f107924%_
                 (##unchecked-structure-ref
                  _%self107912%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f107924%_ _%obj107922%_)))))
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
      (lambda (_%table107903%_
               _%key107904%_
               _%update107905%_
               _%default107906%_)
        (let ((_%result107908%_
               (table-ref _%table107903%_ _%key107904%_ _%default107906%_)))
          (table-set!
           _%table107903%_
           _%key107904%_
           (_%update107905%_ _%default107906%_)))))
    (define gambit-table-for-each
      (lambda (_%table107900%_ _%proc107901%_)
        (table-for-each _%proc107901%_ _%table107900%_)))
    (define gambit-table-clear!
      (lambda (_%table107898%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table107898%_ '0 '5 '#f '#f))))
    (let ((__tmp108534 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108534 'ref table-ref))
    (let ((__tmp108535 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108535 'set! table-set!))
    (let ((__tmp108536 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108536 'update! gambit-table-update!))
    (let ((__tmp108537 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108537 'delete! table-set!))
    (let ((__tmp108538 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108538 'for-each gambit-table-for-each))
    (let ((__tmp108539 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108539 'length table-length))
    (let ((__tmp108540 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108540 'copy table-copy))
    (let ((__tmp108541 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108541 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots107880%_ '(table count free hash test seed))
             (_%slot-vector107882%_ (list->vector (cons '#f _%slots107880%_)))
             (_%slot-table107889%_
              (let ((_%slot-table107884%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp108544
                       (lambda (_%slot107886%_ _%field107887%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107884%_
                            _%slot107886%_
                            _%field107887%_))
                         (let ((__tmp108545
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot107886%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107884%_
                            __tmp108545
                            _%field107887%_))))
                      (__tmp108542
                       (let ((__tmp108543
                              (let ()
                                (declare (not safe))
                                (##length _%slots107880%_))))
                         (declare (not safe))
                         (##iota __tmp108543 '1))))
                  (declare (not safe))
                  (##for-each __tmp108544 _%slots107880%_ __tmp108542))
                _%slot-table107884%_))
             (_%flags107891%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields107893%_ '#())
             (_%properties107895%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots107880%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp108546 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags107891%_
         __table::t
         _%fields107893%_
         __tmp108546
         _%slot-vector107882%_
         _%slot-table107889%_
         _%properties107895%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots107862%_ '(gcht immediate))
             (_%slot-vector107864%_ (list->vector (cons '#f _%slots107862%_)))
             (_%slot-table107871%_
              (let ((_%slot-table107866%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp108549
                       (lambda (_%slot107868%_ _%field107869%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107866%_
                            _%slot107868%_
                            _%field107869%_))
                         (let ((__tmp108550
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot107868%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107866%_
                            __tmp108550
                            _%field107869%_))))
                      (__tmp108547
                       (let ((__tmp108548
                              (let ()
                                (declare (not safe))
                                (##length _%slots107862%_))))
                         (declare (not safe))
                         (##iota __tmp108548 '1))))
                  (declare (not safe))
                  (##for-each __tmp108549 _%slots107862%_ __tmp108547))
                _%slot-table107866%_))
             (_%flags107873%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields107875%_ '#())
             (_%properties107877%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots107862%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp108551 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags107873%_
         __gc-table::t
         _%fields107875%_
         __tmp108551
         _%slot-vector107864%_
         _%slot-table107871%_
         _%properties107877%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp108553 (list))
            (__tmp108552
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp108553
         '(table lock)
         __tmp108552
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args107859%_
        (apply make-instance locked-hash-table::t _%$args107859%_)))
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
      (let ((__tmp108555 (list))
            (__tmp108554
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp108555
         '(table key-check)
         __tmp108554
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args107856%_
        (apply make-instance checked-hash-table::t _%$args107856%_)))
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
      (let ((__tmp108557 (list hash-table::t))
            (__tmp108556 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp108557
         '()
         __tmp108556
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args107853%_
        (apply make-instance eq-hash-table::t _%$args107853%_)))
    (define eqv-hash-table::t
      (let ((__tmp108559 (list hash-table::t))
            (__tmp108558 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp108559
         '()
         __tmp108558
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args107850%_
        (apply make-instance eqv-hash-table::t _%$args107850%_)))
    (define symbol-hash-table::t
      (let ((__tmp108561 (list hash-table::t))
            (__tmp108560 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp108561
         '()
         __tmp108560
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args107847%_
        (apply make-instance symbol-hash-table::t _%$args107847%_)))
    (define string-hash-table::t
      (let ((__tmp108563 (list hash-table::t))
            (__tmp108562 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp108563
         '()
         __tmp108562
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args107844%_
        (apply make-instance string-hash-table::t _%$args107844%_)))
    (define immediate-hash-table::t
      (let ((__tmp108565 (list hash-table::t))
            (__tmp108564 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp108565
         '()
         __tmp108564
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args107841%_
        (apply make-instance immediate-hash-table::t _%$args107841%_)))
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
      (lambda (_%self103840107815%_ _%key107817%_ _%default107818%_)
        (let* ((_%self107820%_ _%self103840107815%_)
               (_%self107823%_ _%self107820%_))
          (let ((_%h107833%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107823%_ '1 '#f '#f)))
                (_%l107835%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107823%_ '2 '#f '#f))))
            (let ((__tmp108568 (lambda () (&Locker-read-lock! _%l107835%_)))
                  (__tmp108567
                   (lambda ()
                     (&HashTable-ref
                      _%h107833%_
                      _%key107817%_
                      _%default107818%_)))
                  (__tmp108566 (lambda () (&Locker-read-unlock! _%l107835%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108568 __tmp108567 __tmp108566))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref103841%_
       '#f))
    (define _%locked-hash-table::set!103844%_
      (lambda (_%self103843107666%_ _%key107668%_ _%value107669%_)
        (let* ((_%self107671%_ _%self103843107666%_)
               (_%self107674%_ _%self107671%_))
          (let ((_%h107684%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107674%_ '1 '#f '#f)))
                (_%l107686%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107674%_ '2 '#f '#f))))
            (let ((__tmp108571 (lambda () (&Locker-write-lock! _%l107686%_)))
                  (__tmp108570
                   (lambda ()
                     (&HashTable-set!
                      _%h107684%_
                      _%key107668%_
                      _%value107669%_)))
                  (__tmp108569
                   (lambda () (&Locker-write-unlock! _%l107686%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108571 __tmp108570 __tmp108569))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!103844%_
       '#f))
    (define _%locked-hash-table::update!103847%_
      (lambda (_%self103846107516%_
               _%key107518%_
               _%update107519%_
               _%default107520%_)
        (let* ((_%self107522%_ _%self103846107516%_)
               (_%self107525%_ _%self107522%_))
          (let ((_%h107535%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107525%_ '1 '#f '#f)))
                (_%l107537%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107525%_ '2 '#f '#f))))
            (let ((__tmp108574 (lambda () (&Locker-write-lock! _%l107537%_)))
                  (__tmp108573
                   (lambda ()
                     (&HashTable-update!
                      _%h107535%_
                      _%key107518%_
                      _%update107519%_
                      _%default107520%_)))
                  (__tmp108572
                   (lambda () (&Locker-write-unlock! _%l107537%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108574 __tmp108573 __tmp108572))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!103847%_
       '#f))
    (define _%locked-hash-table::delete!103850%_
      (lambda (_%self103849107368%_ _%key107370%_)
        (let* ((_%self107372%_ _%self103849107368%_)
               (_%self107375%_ _%self107372%_))
          (let ((_%h107385%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107375%_ '1 '#f '#f)))
                (_%l107387%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107375%_ '2 '#f '#f))))
            (let ((__tmp108577 (lambda () (&Locker-write-lock! _%l107387%_)))
                  (__tmp108576
                   (lambda () (&HashTable-delete! _%h107385%_ _%key107370%_)))
                  (__tmp108575
                   (lambda () (&Locker-write-unlock! _%l107387%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108577 __tmp108576 __tmp108575))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!103850%_
       '#f))
    (define _%locked-hash-table::for-each103853%_
      (lambda (_%self103852107220%_ _%proc107222%_)
        (let* ((_%self107224%_ _%self103852107220%_)
               (_%self107227%_ _%self107224%_))
          (let ((_%h107237%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107227%_ '1 '#f '#f)))
                (_%l107239%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107227%_ '2 '#f '#f))))
            (let ((__tmp108580 (lambda () (&Locker-read-lock! _%l107239%_)))
                  (__tmp108579
                   (lambda ()
                     (&HashTable-for-each _%h107237%_ _%proc107222%_)))
                  (__tmp108578 (lambda () (&Locker-read-unlock! _%l107239%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108580 __tmp108579 __tmp108578))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each103853%_
       '#f))
    (define _%locked-hash-table::length103856%_
      (lambda (_%self103855107073%_)
        (let* ((_%self107076%_ _%self103855107073%_)
               (_%self107079%_ _%self107076%_))
          (let ((_%h107089%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107079%_ '1 '#f '#f)))
                (_%l107091%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107079%_ '2 '#f '#f))))
            (let ((__tmp108583 (lambda () (&Locker-read-lock! _%l107091%_)))
                  (__tmp108582 (lambda () (&HashTable-length _%h107089%_)))
                  (__tmp108581 (lambda () (&Locker-read-unlock! _%l107091%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108583 __tmp108582 __tmp108581))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'length
       _%locked-hash-table::length103856%_
       '#f))
    (define _%locked-hash-table::copy103859%_
      (lambda (_%self103858106926%_)
        (let* ((_%self106929%_ _%self103858106926%_)
               (_%self106932%_ _%self106929%_))
          (let ((_%h106942%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106932%_ '1 '#f '#f)))
                (_%l106944%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106932%_ '2 '#f '#f))))
            (let ((__tmp108586 (lambda () (&Locker-read-lock! _%l106944%_)))
                  (__tmp108585 (lambda () (&HashTable-copy _%h106942%_)))
                  (__tmp108584 (lambda () (&Locker-read-unlock! _%l106944%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108586 __tmp108585 __tmp108584))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy103859%_
       '#f))
    (define _%locked-hash-table::clear!103862%_
      (lambda (_%self103861106779%_)
        (let* ((_%self106782%_ _%self103861106779%_)
               (_%self106785%_ _%self106782%_))
          (let ((_%h106795%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106785%_ '1 '#f '#f)))
                (_%l106797%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106785%_ '2 '#f '#f))))
            (let ((__tmp108589 (lambda () (&Locker-write-lock! _%l106797%_)))
                  (__tmp108588 (lambda () (&HashTable-clear! _%h106795%_)))
                  (__tmp108587
                   (lambda () (&Locker-write-unlock! _%l106797%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108589 __tmp108588 __tmp108587))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!103862%_
       '#f))
    (let ((__tmp108590 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108590 'read-lock! mutex-lock!))
    (let ((__tmp108591 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108591 'read-unlock! mutex-unlock!))
    (let ((__tmp108592 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108592 'write-lock! mutex-lock!))
    (let ((__tmp108593 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108593 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref104076%_
      (lambda (_%self104075106629%_ _%key106631%_ _%default106632%_)
        (let* ((_%self106634%_ _%self104075106629%_)
               (_%self106636%_ _%self106634%_))
          (declare (not safe))
          (let ((_%h106647%_
                 (##unchecked-structure-ref _%self106636%_ '1 '#f '#f))
                (_%key?106649%_
                 (##unchecked-structure-ref _%self106636%_ '2 '#f '#f)))
            (if ((lambda (_%key?106652%_ _%key106653%_ _%default106654%_)
                   (_%key?106652%_ _%key106653%_))
                 _%key?106649%_
                 _%key106631%_
                 _%default106632%_)
                (&HashTable-ref _%h106647%_ _%key106631%_ _%default106632%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key106631%_ (cons _%default106632%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref104076%_
       '#f))
    (define _%checked-hash-table::set!104079%_
      (lambda (_%self104078106479%_ _%key106481%_ _%value106482%_)
        (let* ((_%self106484%_ _%self104078106479%_)
               (_%self106486%_ _%self106484%_))
          (declare (not safe))
          (let ((_%h106497%_
                 (##unchecked-structure-ref _%self106486%_ '1 '#f '#f))
                (_%key?106499%_
                 (##unchecked-structure-ref _%self106486%_ '2 '#f '#f)))
            (if ((lambda (_%key?106502%_ _%key106503%_ _%value106504%_)
                   (_%key?106502%_ _%key106503%_))
                 _%key?106499%_
                 _%key106481%_
                 _%value106482%_)
                (&HashTable-set! _%h106497%_ _%key106481%_ _%value106482%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key106481%_ (cons _%value106482%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!104079%_
       '#f))
    (define _%checked-hash-table::update!104082%_
      (lambda (_%self104081106327%_
               _%key106329%_
               _%update106330%_
               _%default106331%_)
        (let* ((_%self106333%_ _%self104081106327%_)
               (_%self106335%_ _%self106333%_))
          (declare (not safe))
          (let ((_%h106346%_
                 (##unchecked-structure-ref _%self106335%_ '1 '#f '#f))
                (_%key?106348%_
                 (##unchecked-structure-ref _%self106335%_ '2 '#f '#f)))
            (if ((lambda (_%key?106351%_
                          _%key106352%_
                          _%update106353%_
                          _%default106354%_)
                   (_%key?106351%_ _%key106352%_))
                 _%key?106348%_
                 _%key106329%_
                 _%update106330%_
                 _%default106331%_)
                (&HashTable-update!
                 _%h106346%_
                 _%key106329%_
                 _%update106330%_
                 _%default106331%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key106329%_
                         (cons _%update106330%_ (cons _%default106331%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!104082%_
       '#f))
    (define _%checked-hash-table::delete!104085%_
      (lambda (_%self104084106179%_ _%key106181%_)
        (let* ((_%self106183%_ _%self104084106179%_)
               (_%self106185%_ _%self106183%_))
          (declare (not safe))
          (let ((_%h106196%_
                 (##unchecked-structure-ref _%self106185%_ '1 '#f '#f))
                (_%key?106198%_
                 (##unchecked-structure-ref _%self106185%_ '2 '#f '#f)))
            (if ((lambda (_%key?106201%_ _%key106202%_)
                   (_%key?106201%_ _%key106202%_))
                 _%key?106198%_
                 _%key106181%_)
                (&HashTable-delete! _%h106196%_ _%key106181%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key106181%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!104085%_
       '#f))
    (define _%checked-hash-table::for-each104088%_
      (lambda (_%self104087106031%_ _%proc106033%_)
        (let* ((_%self106035%_ _%self104087106031%_)
               (_%self106037%_ _%self106035%_))
          (declare (not safe))
          (let ((_%h106048%_
                 (##unchecked-structure-ref _%self106037%_ '1 '#f '#f))
                (_%key?106050%_
                 (##unchecked-structure-ref _%self106037%_ '2 '#f '#f)))
            (if ((lambda (_%key?106053%_ _%proc106054%_) '#t)
                 _%key?106050%_
                 _%proc106033%_)
                (&HashTable-for-each _%h106048%_ _%proc106033%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc106033%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each104088%_
       '#f))
    (define _%checked-hash-table::length104091%_
      (lambda (_%self104090105887%_)
        (let* ((_%self105890%_ _%self104090105887%_)
               (_%self105892%_ _%self105890%_))
          (declare (not safe))
          (let ((_%h105903%_
                 (##unchecked-structure-ref _%self105892%_ '1 '#f '#f))
                (_%key?105905%_
                 (##unchecked-structure-ref _%self105892%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h105903%_)
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
       _%checked-hash-table::length104091%_
       '#f))
    (define _%checked-hash-table::copy104094%_
      (lambda (_%self104093105743%_)
        (let* ((_%self105746%_ _%self104093105743%_)
               (_%self105748%_ _%self105746%_))
          (declare (not safe))
          (let ((_%h105759%_
                 (##unchecked-structure-ref _%self105748%_ '1 '#f '#f))
                (_%key?105761%_
                 (##unchecked-structure-ref _%self105748%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h105759%_)
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
       _%checked-hash-table::copy104094%_
       '#f))
    (define _%checked-hash-table::clear!104097%_
      (lambda (_%self104096105599%_)
        (let* ((_%self105602%_ _%self104096105599%_)
               (_%self105604%_ _%self105602%_))
          (declare (not safe))
          (let ((_%h105615%_
                 (##unchecked-structure-ref _%self105604%_ '1 '#f '#f))
                (_%key?105617%_
                 (##unchecked-structure-ref _%self105604%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h105615%_)
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
       _%checked-hash-table::clear!104097%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table105469%_
               _%count105470%_
               _%free105471%_
               _%hash105472%_
               _%test105473%_
               _%seed105474%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table105469%_
           _%count105470%_
           _%free105471%_
           _%hash105472%_
           _%test105473%_
           _%seed105474%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords105230%_
               _%size-hint105220105231%_
               _%seed105221105233%_
               _%test105222105235%_
               _%hash105223105237%_
               _%lock105224105239%_
               _%check105225105241%_
               _%weak-keys105226105243%_
               _%weak-values105227105245%_)
        (let* ((_%size-hint105248%_
                (if (eq? _%size-hint105220105231%_ absent-value)
                    '#f
                    _%size-hint105220105231%_))
               (_%seed105250%_
                (if (eq? _%seed105221105233%_ absent-value)
                    '#f
                    _%seed105221105233%_))
               (_%test105252%_
                (if (eq? _%test105222105235%_ absent-value)
                    equal?
                    _%test105222105235%_))
               (_%hash105254%_
                (if (eq? _%hash105223105237%_ absent-value)
                    '#f
                    _%hash105223105237%_))
               (_%lock105256%_
                (if (eq? _%lock105224105239%_ absent-value)
                    '#f
                    _%lock105224105239%_))
               (_%check105258%_
                (if (eq? _%check105225105241%_ absent-value)
                    '#f
                    _%check105225105241%_))
               (_%weak-keys105260%_
                (if (eq? _%weak-keys105226105243%_ absent-value)
                    '#f
                    _%weak-keys105226105243%_))
               (_%weak-values105262%_
                (if (eq? _%weak-values105227105245%_ absent-value)
                    '#f
                    _%weak-values105227105245%_)))
          (letrec ((_%table-seed105265%_
                    (lambda ()
                      (if (fixnum? _%seed105250%_)
                          _%seed105250%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock105266%_
                    (lambda (_%ht105443%_)
                      (let ((_%ht105446%_ _%ht105443%_))
                        (_%__wrap-lock105267%_ _%ht105446%_))))
                   (_%__wrap-lock105267%_
                    (lambda (_%ht105425%_)
                      (let ((_%ht105428%_ _%ht105425%_))
                        (if _%lock105256%_
                            (let ((_%$obj105440%_
                                   (let ((__tmp108594
                                          (let ((_%$obj105437%_
                                                 _%lock105256%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj105437%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj105437%_)))
                                                     '#t)
                                                _%$obj105437%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj105437%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht105428%_
                                      __tmp108594))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj105440%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj105440%_)))
                                       '#t)
                                  _%$obj105440%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj105440%_))))
                            _%ht105428%_))))
                   (_%wrap-checked105268%_
                    (lambda (_%ht105412%_ _%implicit105413%_)
                      (let ((_%ht105416%_ _%ht105412%_))
                        (_%__wrap-checked105269%_
                         _%ht105416%_
                         _%implicit105413%_))))
                   (_%__wrap-checked105269%_
                    (lambda (_%ht105385%_ _%implicit105386%_)
                      (let ((_%ht105389%_ _%ht105385%_))
                        (if _%check105258%_
                            (let ((_%$obj105409%_
                                   (let ((__tmp108595
                                          (if (procedure? _%check105258%_)
                                              _%check105258%_
                                              _%implicit105386%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht105389%_
                                      __tmp108595))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj105409%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj105409%_)))
                                       '#t)
                                  _%$obj105409%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj105409%_))))
                            _%ht105389%_))))
                   (_%make105270%_
                    (lambda (_%kons105369%_
                             _%key?105370%_
                             _%hash105371%_
                             _%test105372%_)
                      (let* ((_%size105375%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint105248%_)))
                             (_%table105377%_
                              (let ((__tmp108596 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size105375%_ __tmp108596)))
                             (_%ht105382%_
                              (let ((_%$obj105379%_
                                     (_%kons105369%_
                                      _%table105377%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size105375%_ '2))
                                      _%hash105371%_
                                      _%test105372%_
                                      (_%table-seed105265%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj105379%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj105379%_)))
                                         '#t)
                                    _%$obj105379%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj105379%_))))))
                        (_%__wrap-checked105269%_
                         (_%__wrap-lock105267%_ _%ht105382%_)
                         _%key?105370%_))))
                   (_%make-gc-hash-table105271%_
                    (lambda ()
                      (let ((_%ht105367%_
                             (let ((_%$obj105364%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint105248%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj105364%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj105364%_)))
                                        '#t)
                                   _%$obj105364%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj105364%_))))))
                        (_%__wrap-checked105269%_
                         (_%__wrap-lock105267%_ _%ht105367%_)
                         true))))
                   (_%make-gambit-table105272%_
                    (lambda ()
                      (let* ((_%size105341%_
                              (let ((_%$e105338%_ _%size-hint105248%_))
                                (if _%$e105338%_
                                    _%$e105338%_
                                    (macro-absent-obj))))
                             (_%test105346%_
                              (let ((_%$e105343%_ _%test105252%_))
                                (if _%$e105343%_ _%$e105343%_ equal?)))
                             (_%hash105354%_
                              (let ((_%$e105348%_ _%hash105254%_))
                                (if _%$e105348%_
                                    _%$e105348%_
                                    (if (eq? _%test105346%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test105346%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht105359%_
                              (let ((_%$obj105356%_
                                     (make-table
                                      'size:
                                      _%size105341%_
                                      'test:
                                      _%test105346%_
                                      'hash:
                                      _%hash105354%_
                                      'weak-keys:
                                      _%weak-keys105260%_
                                      'weak-values:
                                      _%weak-values105262%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj105356%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj105356%_)))
                                         '#t)
                                    _%$obj105356%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj105356%_))))))
                        (_%__wrap-checked105269%_
                         (_%__wrap-lock105267%_ _%ht105359%_)
                         true)))))
            (if (or _%weak-keys105260%_ _%weak-values105262%_)
                (_%make-gambit-table105272%_)
                (if (and (or (eq? _%test105252%_ eq?)
                             (eq? _%test105252%_ ##eq?))
                         (or (not _%hash105254%_)
                             (eq? _%hash105254%_ eq?-hash)
                             (eq? _%hash105254%_ eq-hash))
                         (not _%seed105250%_))
                    (_%make-gc-hash-table105271%_)
                    (if (and (or (eq? _%test105252%_ eq?)
                                 (eq? _%test105252%_ ##eq?))
                             (or (not _%hash105254%_)
                                 (eq? _%hash105254%_ eq?-hash)
                                 (eq? _%hash105254%_ eq-hash)))
                        (_%make105270%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test105252%_ eqv?)
                                     (eq? _%test105252%_ ##eqv?))
                                 (or (not _%hash105254%_)
                                     (eq? _%hash105254%_ eqv?-hash)
                                     (eq? _%hash105254%_ eqv-hash)))
                            (_%make105270%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test105252%_ eq?)
                                         (eq? _%test105252%_ ##eq?))
                                     (or (eq? _%hash105254%_ symbolic-hash)
                                         (eq? _%hash105254%_ ##symbol-hash)))
                                (_%make105270%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test105252%_ eq?)
                                             (eq? _%test105252%_ ##eq?))
                                         (eq? _%hash105254%_ immediate-hash))
                                    (_%make105270%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test105252%_ equal?)
                                                 (eq? _%test105252%_ ##equal?)
                                                 (eq? _%test105252%_ string=?)
                                                 (eq? _%test105252%_
                                                      ##string=?))
                                             (or (eq? _%hash105254%_
                                                      string-hash)
                                                 (eq? _%hash105254%_
                                                      ##string=?-hash)))
                                        (_%make105270%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test105252%_ equal?)
                                                 (not _%hash105254%_))
                                            (_%make105270%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test105252%_)
                                                (if (procedure? _%hash105254%_)
                                                    (_%make105270%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash105254%_
                                                     _%test105252%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash105254%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test105252%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords105459%_ . _%args105460%_)
        (apply make-hash-table__%
               _%@@keywords105459%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105459%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105459%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105459%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105459%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105459%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105459%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105459%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105459%_
                  'weak-values:
                  absent-value))
               _%args105460%_)))
    (define make-hash-table
      (lambda _%args105228105466%_
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
               _%args105228105466%_)))
    (define make-hash-table-eq
      (lambda _%args105217%_
        (apply make-hash-table 'test: eq? _%args105217%_)))
    (define make-hash-table-eqv
      (lambda _%args105215%_
        (apply make-hash-table 'test: eqv? _%args105215%_)))
    (define make-hash-table-symbolic
      (lambda _%args105213%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args105213%_)))
    (define make-hash-table-string
      (lambda _%args105211%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args105211%_)))
    (define make-hash-table-immediate
      (lambda _%args105209%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args105209%_)))
    (define list->hash-table
      (lambda (_%lst105206%_ . _%args105207%_)
        (list->hash-table!
         _%lst105206%_
         (apply make-hash-table
                'size:
                (length _%lst105206%_)
                _%args105207%_))))
    (define list->hash-table-eq
      (lambda (_%lst105203%_ . _%args105204%_)
        (list->hash-table!
         _%lst105203%_
         (apply make-hash-table-eq
                'size:
                (length _%lst105203%_)
                _%args105204%_))))
    (define list->hash-table-eqv
      (lambda (_%lst105200%_ . _%args105201%_)
        (list->hash-table!
         _%lst105200%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst105200%_)
                _%args105201%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst105197%_ . _%args105198%_)
        (list->hash-table!
         _%lst105197%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst105197%_)
                _%args105198%_))))
    (define list->hash-table-string
      (lambda (_%lst105194%_ . _%args105195%_)
        (list->hash-table!
         _%lst105194%_
         (apply make-hash-table-string
                'size:
                (length _%lst105194%_)
                _%args105195%_))))
    (define list->hash-table-immediate
      (lambda (_%lst105191%_ . _%args105192%_)
        (list->hash-table!
         _%lst105191%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst105191%_)
                _%args105192%_))))
    (define list->hash-table!
      (lambda (_%lst105158%_ _%h105159%_)
        (for-each
         (lambda (_%el105161%_)
           (let* ((_%el105162105169%_ _%el105161%_)
                  (_%E105164105173%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el105162105169%_
                              '([k . v])))
                     '#!void))
                  (_%K105165105179%_
                   (lambda (_%v105176%_ _%k105177%_)
                     (&HashTable-set! _%h105159%_ _%k105177%_ _%v105176%_))))
             (if (let () (declare (not safe)) (##pair? _%el105162105169%_))
                 (let ((_%hd105166105182%_
                        (let ()
                          (declare (not safe))
                          (##car _%el105162105169%_)))
                       (_%tl105167105184%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el105162105169%_))))
                   (let* ((_%k105187%_ _%hd105166105182%_)
                          (_%v105189%_ _%tl105167105184%_))
                     (_%K105165105179%_ _%v105189%_ _%k105187%_)))
                 (_%E105164105173%_))))
         _%lst105158%_)
        _%h105159%_))
    (define plist->hash-table
      (lambda (_%lst105155%_ . _%args105156%_)
        (plist->hash-table!
         _%lst105155%_
         (apply make-hash-table
                'size:
                (length _%lst105155%_)
                _%args105156%_))))
    (define plist->hash-table-eq
      (lambda (_%lst105152%_ . _%args105153%_)
        (plist->hash-table!
         _%lst105152%_
         (apply make-hash-table-eq
                'size:
                (length _%lst105152%_)
                _%args105153%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst105149%_ . _%args105150%_)
        (plist->hash-table!
         _%lst105149%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst105149%_)
                _%args105150%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst105146%_ . _%args105147%_)
        (plist->hash-table!
         _%lst105146%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst105146%_)
                _%args105147%_))))
    (define plist->hash-table-string
      (lambda (_%lst105143%_ . _%args105144%_)
        (plist->hash-table!
         _%lst105143%_
         (apply make-hash-table-string
                'size:
                (length _%lst105143%_)
                _%args105144%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst105140%_ . _%args105141%_)
        (plist->hash-table!
         _%lst105140%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst105140%_)
                _%args105141%_))))
    (define plist->hash-table!
      (lambda (_%lst105080%_ _%h105081%_)
        (let _%loop105083%_ ((_%rest105085%_ _%lst105080%_))
          (let* ((_%rest105086105098%_ _%rest105085%_)
                 (_%else105089105106%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst105080%_)))))
            (let ((_%K105092105121%_
                   (lambda (_%rest105117%_ _%val105118%_ _%key105119%_)
                     (&HashTable-set! _%h105081%_ _%key105119%_ _%val105118%_)
                     (_%loop105083%_ _%rest105117%_)))
                  (_%K105091105111%_ (lambda () _%h105081%_)))
              (let ((_%try-match105088105114%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest105086105098%_))
                           (_%K105091105111%_)
                           (_%else105089105106%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest105086105098%_))
                    (let ((_%tl105094105126%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest105086105098%_)))
                          (_%hd105093105124%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest105086105098%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl105094105126%_))
                          (let ((_%tl105096105133%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl105094105126%_)))
                                (_%hd105095105131%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl105094105126%_))))
                            (let ((_%key105129%_ _%hd105093105124%_)
                                  (_%val105136%_ _%hd105095105131%_)
                                  (_%rest105138%_ _%tl105096105133%_))
                              (_%K105092105121%_
                               _%rest105138%_
                               _%val105136%_
                               _%key105129%_)))
                          (_%else105089105106%_)))
                    (_%try-match105088105114%_))))))))
    (define hash-length
      (lambda (_%h105062%_)
        (let* ((_%h105068%_
                (let ((_%$obj105065%_ _%h105062%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105065%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105065%_)))
                           '#t)
                      _%$obj105065%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105065%_)))))
               (_%h105070%_ _%h105068%_))
          (__hash-length _%h105070%_))))
    (define __hash-length
      (lambda (_%h105050%_)
        (let ((_%h105053%_ _%h105050%_)) (__HashTable-length _%h105053%_))))
    (define hash-ref__%
      (lambda (_%h105018%_ _%key105019%_ _%default105020%_)
        (let* ((_%h105026%_
                (let ((_%$obj105023%_ _%h105018%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj105023%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj105023%_)))
                           '#t)
                      _%$obj105023%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj105023%_)))))
               (_%h105028%_ _%h105026%_))
          (__hash-ref__% _%h105028%_ _%key105019%_ _%default105020%_))))
    (define hash-ref__0
      (lambda (_%h105041%_ _%key105042%_)
        (let ((_%default105044%_ (macro-absent-obj)))
          (hash-ref__% _%h105041%_ _%key105042%_ _%default105044%_))))
    (define hash-ref
      (lambda _g108598_
        (let ((_g108597_ (let () (declare (not safe)) (##length _g108598_))))
          (cond ((let () (declare (not safe)) (##fx= _g108597_ 2))
                 (apply hash-ref__0 _g108598_))
                ((let () (declare (not safe)) (##fx= _g108597_ 3))
                 (apply hash-ref__% _g108598_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g108598_))))))
    (define __hash-ref__%
      (lambda (_%h104989%_ _%key104990%_ _%default104991%_)
        (let* ((_%h104994%_ _%h104989%_)
               (_%result105003%_
                (&HashTable-ref _%h104994%_ _%key104990%_ _%default104991%_)))
          (if (eq? _%result105003%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h104994%_
               'key:
               _%key104990%_)
              _%result105003%_))))
    (define __hash-ref__0
      (lambda (_%h105008%_ _%key105009%_)
        (let ((_%default105011%_ (macro-absent-obj)))
          (__hash-ref__% _%h105008%_ _%key105009%_ _%default105011%_))))
    (define __hash-ref
      (lambda _g108600_
        (let ((_g108599_ (let () (declare (not safe)) (##length _g108600_))))
          (cond ((let () (declare (not safe)) (##fx= _g108599_ 2))
                 (apply __hash-ref__0 _g108600_))
                ((let () (declare (not safe)) (##fx= _g108599_ 3))
                 (apply __hash-ref__% _g108600_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g108600_))))))
    (define hash-get
      (lambda (_%h104969%_ _%key104970%_)
        (let* ((_%h104976%_
                (let ((_%$obj104973%_ _%h104969%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104973%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104973%_)))
                           '#t)
                      _%$obj104973%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104973%_)))))
               (_%h104978%_ _%h104976%_))
          (__hash-get _%h104978%_ _%key104970%_))))
    (define __hash-get
      (lambda (_%h104956%_ _%key104957%_)
        (let ((_%h104960%_ _%h104956%_))
          (&HashTable-ref _%h104960%_ _%key104957%_ '#f))))
    (define hash-put!
      (lambda (_%h104936%_ _%key104937%_ _%value104938%_)
        (let* ((_%h104944%_
                (let ((_%$obj104941%_ _%h104936%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104941%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104941%_)))
                           '#t)
                      _%$obj104941%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104941%_)))))
               (_%h104946%_ _%h104944%_))
          (__hash-put! _%h104946%_ _%key104937%_ _%value104938%_))))
    (define __hash-put!
      (lambda (_%h104922%_ _%key104923%_ _%value104924%_)
        (let ((_%h104927%_ _%h104922%_))
          (&HashTable-set! _%h104927%_ _%key104923%_ _%value104924%_))))
    (define hash-update!__%
      (lambda (_%h104887%_ _%key104888%_ _%update104889%_ _%default104890%_)
        (let* ((_%h104896%_
                (let ((_%$obj104893%_ _%h104887%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104893%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104893%_)))
                           '#t)
                      _%$obj104893%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104893%_)))))
               (_%h104898%_ _%h104896%_))
          (__hash-update!__%
           _%h104898%_
           _%key104888%_
           _%update104889%_
           _%default104890%_))))
    (define hash-update!__0
      (lambda (_%h104911%_ _%key104912%_ _%update104913%_)
        (let ((_%default104915%_ '#!void))
          (hash-update!__%
           _%h104911%_
           _%key104912%_
           _%update104913%_
           _%default104915%_))))
    (define hash-update!
      (lambda _g108602_
        (let ((_g108601_ (let () (declare (not safe)) (##length _g108602_))))
          (cond ((let () (declare (not safe)) (##fx= _g108601_ 3))
                 (apply hash-update!__0 _g108602_))
                ((let () (declare (not safe)) (##fx= _g108601_ 4))
                 (apply hash-update!__% _g108602_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g108602_))))))
    (define __hash-update!__%
      (lambda (_%h104857%_ _%key104858%_ _%update104859%_ _%default104860%_)
        (let ((_%h104863%_ _%h104857%_))
          (HashTable-update!
           _%h104863%_
           _%key104858%_
           _%update104859%_
           _%default104860%_))))
    (define __hash-update!__0
      (lambda (_%h104875%_ _%key104876%_ _%update104877%_)
        (let ((_%default104879%_ '#!void))
          (__hash-update!__%
           _%h104875%_
           _%key104876%_
           _%update104877%_
           _%default104879%_))))
    (define __hash-update!
      (lambda _g108604_
        (let ((_g108603_ (let () (declare (not safe)) (##length _g108604_))))
          (cond ((let () (declare (not safe)) (##fx= _g108603_ 3))
                 (apply __hash-update!__0 _g108604_))
                ((let () (declare (not safe)) (##fx= _g108603_ 4))
                 (apply __hash-update!__% _g108604_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g108604_))))))
    (define hash-remove!
      (lambda (_%h104837%_ _%key104838%_)
        (let* ((_%h104844%_
                (let ((_%$obj104841%_ _%h104837%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104841%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104841%_)))
                           '#t)
                      _%$obj104841%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104841%_)))))
               (_%h104846%_ _%h104844%_))
          (__hash-remove! _%h104846%_ _%key104838%_))))
    (define __hash-remove!
      (lambda (_%h104824%_ _%key104825%_)
        (let ((_%h104828%_ _%h104824%_))
          (&HashTable-delete! _%h104828%_ _%key104825%_))))
    (define hash-key?
      (lambda (_%h104805%_ _%k104806%_)
        (let* ((_%h104812%_
                (let ((_%$obj104809%_ _%h104805%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104809%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104809%_)))
                           '#t)
                      _%$obj104809%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104809%_)))))
               (_%h104814%_ _%h104812%_))
          (__hash-key? _%h104814%_ _%k104806%_))))
    (define __hash-key?
      (lambda (_%h104792%_ _%k104793%_)
        (let ((_%h104796%_ _%h104792%_))
          (not (eq? (&HashTable-ref _%h104796%_ _%k104793%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h104774%_)
        (let* ((_%h104780%_
                (let ((_%$obj104777%_ _%h104774%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104777%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104777%_)))
                           '#t)
                      _%$obj104777%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104777%_)))))
               (_%h104782%_ _%h104780%_))
          (__hash->list _%h104782%_))))
    (define __hash->list
      (lambda (_%h104757%_)
        (let* ((_%h104760%_ _%h104757%_) (_%lst104769%_ '()))
          (&HashTable-for-each
           _%h104760%_
           (lambda (_%k104771%_ _%v104772%_)
             (set! _%lst104769%_
                   (cons (cons _%k104771%_ _%v104772%_) _%lst104769%_))))
          _%lst104769%_)))
    (define hash->plist
      (lambda (_%h104739%_)
        (let* ((_%h104745%_
                (let ((_%$obj104742%_ _%h104739%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104742%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104742%_)))
                           '#t)
                      _%$obj104742%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104742%_)))))
               (_%h104747%_ _%h104745%_))
          (__hash->plist _%h104747%_))))
    (define __hash->plist
      (lambda (_%h104722%_)
        (let* ((_%h104725%_ _%h104722%_) (_%lst104734%_ '()))
          (&HashTable-for-each
           _%h104725%_
           (lambda (_%k104736%_ _%v104737%_)
             (set! _%lst104734%_
                   (cons _%k104736%_ (cons _%v104737%_ _%lst104734%_)))))
          _%lst104734%_)))
    (define hash-for-each
      (lambda (_%proc104693%_ _%h104694%_)
        (if (procedure? _%proc104693%_)
            (let* ((_%proc104698%_ _%proc104693%_)
                   (_%h104710%_
                    (let ((_%$obj104707%_ _%h104694%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104707%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104707%_)))
                               '#t)
                          _%$obj104707%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104707%_)))))
                   (_%h104712%_ _%h104710%_))
              (__hash-for-each _%proc104698%_ _%h104712%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@567.22-567.26"
               'contract:
               'procedure?
               'value:
               _%proc104693%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc104672%_ _%h104673%_)
        (let* ((_%proc104676%_ _%proc104672%_) (_%h104684%_ _%h104673%_))
          (&HashTable-for-each _%h104684%_ _%proc104676%_))))
    (define hash-map
      (lambda (_%proc104643%_ _%h104644%_)
        (if (procedure? _%proc104643%_)
            (let* ((_%proc104648%_ _%proc104643%_)
                   (_%h104660%_
                    (let ((_%$obj104657%_ _%h104644%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104657%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104657%_)))
                               '#t)
                          _%$obj104657%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104657%_)))))
                   (_%h104662%_ _%h104660%_))
              (__hash-map _%proc104648%_ _%h104662%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@570.17-570.21"
               'contract:
               'procedure?
               'value:
               _%proc104643%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc104617%_ _%h104618%_)
        (let* ((_%proc104621%_ _%proc104617%_)
               (_%h104629%_ _%h104618%_)
               (_%result104638%_ '()))
          (&HashTable-for-each
           _%h104629%_
           (lambda (_%k104640%_ _%v104641%_)
             (set! _%result104638%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc104621%_ _%k104640%_ _%v104641%_))
                         _%result104638%_))))
          _%result104638%_)))
    (define hash-fold
      (lambda (_%proc104587%_ _%iv104588%_ _%h104589%_)
        (if (procedure? _%proc104587%_)
            (let* ((_%proc104593%_ _%proc104587%_)
                   (_%h104605%_
                    (let ((_%$obj104602%_ _%h104589%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104602%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104602%_)))
                               '#t)
                          _%$obj104602%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104602%_)))))
                   (_%h104607%_ _%h104605%_))
              (__hash-fold _%proc104593%_ _%iv104588%_ _%h104607%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@575.18-575.22"
               'contract:
               'procedure?
               'value:
               _%proc104587%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc104560%_ _%iv104561%_ _%h104562%_)
        (let* ((_%proc104565%_ _%proc104560%_)
               (_%h104573%_ _%h104562%_)
               (_%result104582%_ _%iv104561%_))
          (&HashTable-for-each
           _%h104573%_
           (lambda (_%k104584%_ _%v104585%_)
             (set! _%result104582%_
                   (let ()
                     (declare (not safe))
                     (_%proc104565%_
                      _%k104584%_
                      _%v104585%_
                      _%result104582%_)))))
          _%result104582%_)))
    (define hash-find__%
      (lambda (_%proc104518%_ _%h104519%_ _%default-value104520%_)
        (if (procedure? _%proc104518%_)
            (let* ((_%proc104524%_ _%proc104518%_)
                   (_%h104536%_
                    (let ((_%$obj104533%_ _%h104519%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104533%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104533%_)))
                               '#t)
                          _%$obj104533%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104533%_)))))
                   (_%h104538%_ _%h104536%_))
              (__hash-find__%
               _%proc104524%_
               _%h104538%_
               _%default-value104520%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@580.18-580.22"
               'contract:
               'procedure?
               'value:
               _%proc104518%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc104551%_ _%h104552%_)
        (let ((_%default-value104554%_ '#f))
          (hash-find__% _%proc104551%_ _%h104552%_ _%default-value104554%_))))
    (define hash-find
      (lambda _g108606_
        (let ((_g108605_ (let () (declare (not safe)) (##length _g108606_))))
          (cond ((let () (declare (not safe)) (##fx= _g108605_ 2))
                 (apply hash-find__0 _g108606_))
                ((let () (declare (not safe)) (##fx= _g108605_ 3))
                 (apply hash-find__% _g108606_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g108606_))))))
    (define __hash-find__%
      (lambda (_%proc104475%_ _%h104476%_ _%default-value104477%_)
        (let* ((_%proc104480%_ _%proc104475%_)
               (_%h104488%_ _%h104476%_)
               (__tmp108607
                (lambda (_%return104497%_)
                  (&HashTable-for-each
                   _%h104488%_
                   (lambda (_%k104499%_ _%v104500%_)
                     (let ((_%$e104502%_
                            (let ()
                              (declare (not safe))
                              (_%proc104480%_ _%k104499%_ _%v104500%_))))
                       (if _%$e104502%_
                           (_%return104497%_ _%$e104502%_)
                           '#!void))))
                  _%default-value104477%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp108607))))
    (define __hash-find__0
      (lambda (_%proc104508%_ _%h104509%_)
        (let ((_%default-value104511%_ '#f))
          (__hash-find__%
           _%proc104508%_
           _%h104509%_
           _%default-value104511%_))))
    (define __hash-find
      (lambda _g108609_
        (let ((_g108608_ (let () (declare (not safe)) (##length _g108609_))))
          (cond ((let () (declare (not safe)) (##fx= _g108608_ 2))
                 (apply __hash-find__0 _g108609_))
                ((let () (declare (not safe)) (##fx= _g108608_ 3))
                 (apply __hash-find__% _g108609_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g108609_))))))
    (define hash-keys
      (lambda (_%h104456%_)
        (let* ((_%h104462%_
                (let ((_%$obj104459%_ _%h104456%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104459%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104459%_)))
                           '#t)
                      _%$obj104459%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104459%_)))))
               (_%h104464%_ _%h104462%_))
          (__hash-keys _%h104464%_))))
    (define __hash-keys
      (lambda (_%h104439%_)
        (let* ((_%h104442%_ _%h104439%_) (_%result104451%_ '()))
          (&HashTable-for-each
           _%h104442%_
           (lambda (_%k104453%_ _%v104454%_)
             (set! _%result104451%_ (cons _%k104453%_ _%result104451%_))))
          _%result104451%_)))
    (define hash-values
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
          (__hash-values _%h104429%_))))
    (define __hash-values
      (lambda (_%h104404%_)
        (let* ((_%h104407%_ _%h104404%_) (_%result104416%_ '()))
          (&HashTable-for-each
           _%h104407%_
           (lambda (_%k104418%_ _%v104419%_)
             (set! _%result104416%_ (cons _%v104419%_ _%result104416%_))))
          _%result104416%_)))
    (define hash-copy
      (lambda (_%h104386%_)
        (let* ((_%h104392%_
                (let ((_%$obj104389%_ _%h104386%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104389%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104389%_)))
                           '#t)
                      _%$obj104389%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104389%_)))))
               (_%h104394%_ _%h104392%_))
          (__hash-copy _%h104394%_))))
    (define __hash-copy
      (lambda (_%h104374%_)
        (let ((_%h104377%_ _%h104374%_)) (__HashTable-copy _%h104377%_))))
    (define hash-clear!
      (lambda (_%h104356%_)
        (let* ((_%h104362%_
                (let ((_%$obj104359%_ _%h104356%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104359%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104359%_)))
                           '#t)
                      _%$obj104359%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104359%_)))))
               (_%h104364%_ _%h104362%_))
          (__hash-clear! _%h104364%_))))
    (define __hash-clear!
      (lambda (_%h104344%_)
        (let ((_%h104347%_ _%h104344%_)) (&HashTable-clear! _%h104347%_))))
    (define hash-merge
      (lambda (_%h104325%_ . _%rest104326%_)
        (let* ((_%h104332%_
                (let ((_%$obj104329%_ _%h104325%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104329%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104329%_)))
                           '#t)
                      _%$obj104329%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104329%_)))))
               (_%h104334%_ _%h104332%_))
          (declare (not safe))
          (##apply __hash-merge _%h104334%_ _%rest104326%_))))
    (define __hash-merge
      (lambda (_%h104310%_ . _%rest104311%_)
        (let* ((_%h104314%_ _%h104310%_)
               (_%copy104323%_ (__HashTable-copy _%h104314%_)))
          (apply hash-merge! _%copy104323%_ _%rest104311%_)
          _%copy104323%_)))
    (define hash-merge!
      (lambda (_%h104291%_ . _%rest104292%_)
        (let* ((_%h104298%_
                (let ((_%$obj104295%_ _%h104291%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104295%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104295%_)))
                           '#t)
                      _%$obj104295%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104295%_)))))
               (_%h104300%_ _%h104298%_))
          (declare (not safe))
          (##apply __hash-merge! _%h104300%_ _%rest104292%_))))
    (define __hash-merge!
      (lambda (_%h104254%_ . _%rest104255%_)
        (let ((_%h104258%_ _%h104254%_))
          (let ((__tmp108610
                 (lambda (_%hr104267%_)
                   (let* ((_%hr104273%_
                           (let ((_%$obj104270%_ _%hr104267%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj104270%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj104270%_)))
                                      '#t)
                                 _%$obj104270%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj104270%_)))))
                          (_%hr104275%_ _%hr104273%_))
                     (&HashTable-for-each
                      _%hr104275%_
                      (lambda (_%k104288%_ _%v104289%_)
                        (if (__hash-key? _%h104258%_ _%k104288%_)
                            '#!void
                            (&HashTable-set!
                             _%h104258%_
                             _%k104288%_
                             _%v104289%_))))))))
            (declare (not safe))
            (##for-each __tmp108610 _%rest104255%_))
          _%h104258%_)))))
