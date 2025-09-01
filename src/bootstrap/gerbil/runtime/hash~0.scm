(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1756715352)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp118444 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp118444
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args118358%_
        (apply make-instance UnboundKeyError::t _%$args118358%_)))
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
      (lambda (_%where118232%_ _%message118233%_ . _%irritants118234%_)
        (let ((__tmp118445
               (let ((__obj118438
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj118438
                    _%message118233%_
                    'where:
                    _%where118232%_
                    'irritants:
                    _%irritants118234%_))
                 __obj118438)))
          (declare (not safe))
          (raise __tmp118445))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp118446 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp118446
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
      (lambda (_%obj118230%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj118230%_))))
    (define try-HashTable
      (lambda (_%obj118228%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj118228%_))))
    (define HashTable?
      (lambda (_%obj118226%_)
        (let ((__tmp118447
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj118226%_ __tmp118447))))
    (define is-HashTable?
      (lambda (_%obj118224%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj118224%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self118208%_)
        (let* ((_%self118213%_
                (let ((_%$obj118210%_ _%self118208%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118210%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118210%_)))
                           '#t)
                      _%$obj118210%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118210%_)))))
               (_%self118215%_ _%self118213%_))
          (&HashTable-clear! _%self118215%_))))
    (define &HashTable-clear!
      (lambda (_%self118193%_)
        (let ((_%self118195%_ _%self118193%_))
          (declare (not safe))
          (let ((_%obj118205%_
                 (##unchecked-structure-ref _%self118195%_ '1 '#f 'clear!))
                (_%f118206%_
                 (##unchecked-structure-ref _%self118195%_ '2 '#f 'clear!)))
            (_%f118206%_ _%obj118205%_)))))
    (define HashTable-copy
      (lambda (_%self118177%_)
        (let* ((_%self118182%_
                (let ((_%$obj118179%_ _%self118177%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118179%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118179%_)))
                           '#t)
                      _%$obj118179%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118179%_)))))
               (_%self118184%_ _%self118182%_))
          (__HashTable-copy _%self118184%_))))
    (define __HashTable-copy
      (lambda (_%self118164%_)
        (let* ((_%self118166%_ _%self118164%_)
               (_%$obj118174%_ (&HashTable-copy _%self118166%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj118174%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj118174%_)))
                   '#t)
              _%$obj118174%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj118174%_))))))
    (define &HashTable-copy
      (lambda (_%self118149%_)
        (let ((_%self118151%_ _%self118149%_))
          (declare (not safe))
          (let ((_%obj118161%_
                 (##unchecked-structure-ref _%self118151%_ '1 '#f 'copy))
                (_%f118162%_
                 (##unchecked-structure-ref _%self118151%_ '3 '#f 'copy)))
            (_%f118162%_ _%obj118161%_)))))
    (define HashTable-delete!
      (lambda (_%self118132%_ _%key118133%_)
        (let* ((_%self118138%_
                (let ((_%$obj118135%_ _%self118132%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118135%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118135%_)))
                           '#t)
                      _%$obj118135%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118135%_)))))
               (_%self118140%_ _%self118138%_))
          (&HashTable-delete! _%self118140%_ _%key118133%_))))
    (define &HashTable-delete!
      (lambda (_%self118116%_ _%key118117%_)
        (let ((_%self118119%_ _%self118116%_))
          (declare (not safe))
          (let ((_%obj118129%_
                 (##unchecked-structure-ref _%self118119%_ '1 '#f 'delete!))
                (_%f118130%_
                 (##unchecked-structure-ref _%self118119%_ '4 '#f 'delete!)))
            (_%f118130%_ _%obj118129%_ _%key118117%_)))))
    (define HashTable-for-each
      (lambda (_%self118089%_ _%proc118090%_)
        (let* ((_%self118095%_
                (let ((_%$obj118092%_ _%self118089%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118092%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118092%_)))
                           '#t)
                      _%$obj118092%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118092%_)))))
               (_%self118097%_ _%self118095%_))
          (if (procedure? _%proc118090%_)
              (let ((_%proc118106%_ _%proc118090%_))
                (&HashTable-for-each _%self118097%_ _%proc118106%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc118090%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self118065%_ _%proc118066%_)
        (let* ((_%self118068%_ _%self118065%_) (_%proc118075%_ _%proc118066%_))
          (declare (not safe))
          (let ((_%obj118086%_
                 (##unchecked-structure-ref _%self118068%_ '1 '#f 'for-each))
                (_%f118087%_
                 (##unchecked-structure-ref _%self118068%_ '5 '#f 'for-each)))
            (_%f118087%_ _%obj118086%_ _%proc118075%_)))))
    (define HashTable-length
      (lambda (_%self118049%_)
        (let* ((_%self118054%_
                (let ((_%$obj118051%_ _%self118049%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118051%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118051%_)))
                           '#t)
                      _%$obj118051%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118051%_)))))
               (_%self118056%_ _%self118054%_))
          (__HashTable-length _%self118056%_))))
    (define __HashTable-length
      (lambda (_%self118036%_)
        (let* ((_%self118038%_ _%self118036%_)
               (_%val118046%_ (&HashTable-length _%self118038%_)))
          _%val118046%_)))
    (define &HashTable-length
      (lambda (_%self118021%_)
        (let ((_%self118023%_ _%self118021%_))
          (declare (not safe))
          (let ((_%obj118033%_
                 (##unchecked-structure-ref _%self118023%_ '1 '#f 'length))
                (_%f118034%_
                 (##unchecked-structure-ref _%self118023%_ '6 '#f 'length)))
            (_%f118034%_ _%obj118033%_)))))
    (define HashTable-ref
      (lambda (_%self118003%_ _%key118004%_ _%default118005%_)
        (let* ((_%self118010%_
                (let ((_%$obj118007%_ _%self118003%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj118007%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj118007%_)))
                           '#t)
                      _%$obj118007%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj118007%_)))))
               (_%self118012%_ _%self118010%_))
          (&HashTable-ref _%self118012%_ _%key118004%_ _%default118005%_))))
    (define &HashTable-ref
      (lambda (_%self117986%_ _%key117987%_ _%default117988%_)
        (let ((_%self117990%_ _%self117986%_))
          (declare (not safe))
          (let ((_%obj118000%_
                 (##unchecked-structure-ref _%self117990%_ '1 '#f 'ref))
                (_%f118001%_
                 (##unchecked-structure-ref _%self117990%_ '7 '#f 'ref)))
            (_%f118001%_ _%obj118000%_ _%key117987%_ _%default117988%_)))))
    (define HashTable-set!
      (lambda (_%self117968%_ _%key117969%_ _%value117970%_)
        (let* ((_%self117975%_
                (let ((_%$obj117972%_ _%self117968%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117972%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117972%_)))
                           '#t)
                      _%$obj117972%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117972%_)))))
               (_%self117977%_ _%self117975%_))
          (&HashTable-set! _%self117977%_ _%key117969%_ _%value117970%_))))
    (define &HashTable-set!
      (lambda (_%self117951%_ _%key117952%_ _%value117953%_)
        (let ((_%self117955%_ _%self117951%_))
          (declare (not safe))
          (let ((_%obj117965%_
                 (##unchecked-structure-ref _%self117955%_ '1 '#f 'set!))
                (_%f117966%_
                 (##unchecked-structure-ref _%self117955%_ '8 '#f 'set!)))
            (_%f117966%_ _%obj117965%_ _%key117952%_ _%value117953%_)))))
    (define HashTable-update!
      (lambda (_%self117922%_ _%key117923%_ _%proc117924%_ _%default117925%_)
        (let* ((_%self117930%_
                (let ((_%$obj117927%_ _%self117922%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117927%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117927%_)))
                           '#t)
                      _%$obj117927%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117927%_)))))
               (_%self117932%_ _%self117930%_))
          (if (procedure? _%proc117924%_)
              (let ((_%proc117941%_ _%proc117924%_))
                (&HashTable-update!
                 _%self117932%_
                 _%key117923%_
                 _%proc117941%_
                 _%default117925%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc117924%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self117894%_ _%key117895%_ _%proc117896%_ _%default117897%_)
        (let* ((_%self117899%_ _%self117894%_) (_%proc117906%_ _%proc117896%_))
          (declare (not safe))
          (let ((_%obj117917%_
                 (##unchecked-structure-ref _%self117899%_ '1 '#f 'update!))
                (_%f117919%_
                 (##unchecked-structure-ref _%self117899%_ '9 '#f 'update!)))
            (_%f117919%_
             _%obj117917%_
             _%key117895%_
             _%proc117906%_
             _%default117897%_)))))
    (define Locker::t
      (let ((__tmp118448 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp118448
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
      (lambda (_%obj117892%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj117892%_))))
    (define try-Locker
      (lambda (_%obj117890%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj117890%_))))
    (define Locker?
      (lambda (_%obj117888%_)
        (let ((__tmp118449
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj117888%_ __tmp118449))))
    (define is-Locker?
      (lambda (_%obj117886%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj117886%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self117870%_)
        (let* ((_%self117875%_
                (let ((_%$obj117872%_ _%self117870%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117872%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117872%_)))
                           '#t)
                      _%$obj117872%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj117872%_)))))
               (_%self117877%_ _%self117875%_))
          (&Locker-read-lock! _%self117877%_))))
    (define &Locker-read-lock!
      (lambda (_%self117855%_)
        (let ((_%self117857%_ _%self117855%_))
          (declare (not safe))
          (let ((_%obj117867%_
                 (##unchecked-structure-ref _%self117857%_ '1 '#f 'read-lock!))
                (_%f117868%_
                 (##unchecked-structure-ref
                  _%self117857%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f117868%_ _%obj117867%_)))))
    (define Locker-read-unlock!
      (lambda (_%self117839%_)
        (let* ((_%self117844%_
                (let ((_%$obj117841%_ _%self117839%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117841%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117841%_)))
                           '#t)
                      _%$obj117841%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj117841%_)))))
               (_%self117846%_ _%self117844%_))
          (&Locker-read-unlock! _%self117846%_))))
    (define &Locker-read-unlock!
      (lambda (_%self117824%_)
        (let ((_%self117826%_ _%self117824%_))
          (declare (not safe))
          (let ((_%obj117836%_
                 (##unchecked-structure-ref
                  _%self117826%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f117837%_
                 (##unchecked-structure-ref
                  _%self117826%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f117837%_ _%obj117836%_)))))
    (define Locker-write-lock!
      (lambda (_%self117808%_)
        (let* ((_%self117813%_
                (let ((_%$obj117810%_ _%self117808%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117810%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117810%_)))
                           '#t)
                      _%$obj117810%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj117810%_)))))
               (_%self117815%_ _%self117813%_))
          (&Locker-write-lock! _%self117815%_))))
    (define &Locker-write-lock!
      (lambda (_%self117793%_)
        (let ((_%self117795%_ _%self117793%_))
          (declare (not safe))
          (let ((_%obj117805%_
                 (##unchecked-structure-ref
                  _%self117795%_
                  '1
                  '#f
                  'write-lock!))
                (_%f117806%_
                 (##unchecked-structure-ref
                  _%self117795%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f117806%_ _%obj117805%_)))))
    (define Locker-write-unlock!
      (lambda (_%self117777%_)
        (let* ((_%self117782%_
                (let ((_%$obj117779%_ _%self117777%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117779%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117779%_)))
                           '#t)
                      _%$obj117779%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj117779%_)))))
               (_%self117784%_ _%self117782%_))
          (&Locker-write-unlock! _%self117784%_))))
    (define &Locker-write-unlock!
      (lambda (_%self117760%_)
        (let ((_%self117762%_ _%self117760%_))
          (declare (not safe))
          (let ((_%obj117772%_
                 (##unchecked-structure-ref
                  _%self117762%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f117774%_
                 (##unchecked-structure-ref
                  _%self117762%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f117774%_ _%obj117772%_)))))
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
      (lambda (_%table117753%_
               _%key117754%_
               _%update117755%_
               _%default117756%_)
        (let ((_%result117758%_
               (table-ref _%table117753%_ _%key117754%_ _%default117756%_)))
          (table-set!
           _%table117753%_
           _%key117754%_
           (_%update117755%_ _%default117756%_)))))
    (define gambit-table-for-each
      (lambda (_%table117750%_ _%proc117751%_)
        (table-for-each _%proc117751%_ _%table117750%_)))
    (define gambit-table-clear!
      (lambda (_%table117748%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table117748%_ '0 '5 '#f '#f))))
    (let ((__tmp118450 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118450 'HashTable::ref table-ref))
    (let ((__tmp118451 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118451 'HashTable::set! table-set!))
    (let ((__tmp118452 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118452 'HashTable::update! gambit-table-update!))
    (let ((__tmp118453 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118453 'HashTable::delete! table-set!))
    (let ((__tmp118454 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118454 'HashTable::for-each gambit-table-for-each))
    (let ((__tmp118455 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118455 'HashTable::length table-length))
    (let ((__tmp118456 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118456 'HashTable::copy table-copy))
    (let ((__tmp118457 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118457 'HashTable::clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots117730%_ '(table count free hash test seed))
             (_%slot-vector117732%_ (list->vector (cons '#f _%slots117730%_)))
             (_%slot-table117739%_
              (let ((_%slot-table117734%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp118460
                       (lambda (_%slot117736%_ _%field117737%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table117734%_
                            _%slot117736%_
                            _%field117737%_))
                         (let ((__tmp118461
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot117736%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table117734%_
                            __tmp118461
                            _%field117737%_))))
                      (__tmp118458
                       (let ((__tmp118459
                              (let ()
                                (declare (not safe))
                                (##length _%slots117730%_))))
                         (declare (not safe))
                         (##iota __tmp118459 '1))))
                  (declare (not safe))
                  (##for-each __tmp118460 _%slots117730%_ __tmp118458))
                _%slot-table117734%_))
             (_%flags117741%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields117743%_ '#())
             (_%properties117745%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots117730%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp118462 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags117741%_
         __table::t
         _%fields117743%_
         __tmp118462
         _%slot-vector117732%_
         _%slot-table117739%_
         _%properties117745%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots117712%_ '(gcht immediate))
             (_%slot-vector117714%_ (list->vector (cons '#f _%slots117712%_)))
             (_%slot-table117721%_
              (let ((_%slot-table117716%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp118465
                       (lambda (_%slot117718%_ _%field117719%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table117716%_
                            _%slot117718%_
                            _%field117719%_))
                         (let ((__tmp118466
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot117718%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table117716%_
                            __tmp118466
                            _%field117719%_))))
                      (__tmp118463
                       (let ((__tmp118464
                              (let ()
                                (declare (not safe))
                                (##length _%slots117712%_))))
                         (declare (not safe))
                         (##iota __tmp118464 '1))))
                  (declare (not safe))
                  (##for-each __tmp118465 _%slots117712%_ __tmp118463))
                _%slot-table117716%_))
             (_%flags117723%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields117725%_ '#())
             (_%properties117727%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots117712%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp118467 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags117723%_
         __gc-table::t
         _%fields117725%_
         __tmp118467
         _%slot-vector117714%_
         _%slot-table117721%_
         _%properties117727%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp118469 (list))
            (__tmp118468
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp118469
         '(table lock)
         __tmp118468
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args117709%_
        (apply make-instance locked-hash-table::t _%$args117709%_)))
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
      (let ((__tmp118471 (list))
            (__tmp118470
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp118471
         '(table key-check)
         __tmp118470
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args117706%_
        (apply make-instance checked-hash-table::t _%$args117706%_)))
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
      (let ((__tmp118473 (list hash-table::t))
            (__tmp118472 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp118473
         '()
         __tmp118472
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args117703%_
        (apply make-instance eq-hash-table::t _%$args117703%_)))
    (define eqv-hash-table::t
      (let ((__tmp118475 (list hash-table::t))
            (__tmp118474 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp118475
         '()
         __tmp118474
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args117700%_
        (apply make-instance eqv-hash-table::t _%$args117700%_)))
    (define symbol-hash-table::t
      (let ((__tmp118477 (list hash-table::t))
            (__tmp118476 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp118477
         '()
         __tmp118476
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args117697%_
        (apply make-instance symbol-hash-table::t _%$args117697%_)))
    (define string-hash-table::t
      (let ((__tmp118479 (list hash-table::t))
            (__tmp118478 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp118479
         '()
         __tmp118478
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args117694%_
        (apply make-instance string-hash-table::t _%$args117694%_)))
    (define immediate-hash-table::t
      (let ((__tmp118481 (list hash-table::t))
            (__tmp118480 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp118481
         '()
         __tmp118480
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args117691%_
        (apply make-instance immediate-hash-table::t _%$args117691%_)))
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
    (define _%locked-hash-table::HashTable::ref113486%_
      (lambda (_%self117651%_ _%key117653%_ _%default117654%_)
        (let* ((_%self117657%_ _%self117651%_)
               (_%key117666%_ _%key117653%_)
               (_%default117674%_ _%default117654%_))
          (let ((_%h117683%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117657%_ '1 '#f '#f)))
                (_%l117685%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117657%_ '2 '#f '#f))))
            (let ((__tmp118484 (lambda () (&Locker-read-lock! _%l117685%_)))
                  (__tmp118483
                   (lambda ()
                     (&HashTable-ref
                      _%h117683%_
                      _%key117666%_
                      _%default117674%_)))
                  (__tmp118482 (lambda () (&Locker-read-unlock! _%l117685%_))))
              (declare (not safe))
              (##dynamic-wind __tmp118484 __tmp118483 __tmp118482))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref113486%_
       '#f))
    (define _%locked-hash-table::HashTable::set!113488%_
      (lambda (_%self117488%_ _%key117490%_ _%value117491%_)
        (let* ((_%self117494%_ _%self117488%_)
               (_%key117503%_ _%key117490%_)
               (_%value117511%_ _%value117491%_))
          (let ((_%h117520%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117494%_ '1 '#f '#f)))
                (_%l117522%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117494%_ '2 '#f '#f))))
            (let ((__tmp118487 (lambda () (&Locker-write-lock! _%l117522%_)))
                  (__tmp118486
                   (lambda ()
                     (&HashTable-set!
                      _%h117520%_
                      _%key117503%_
                      _%value117511%_)))
                  (__tmp118485
                   (lambda () (&Locker-write-unlock! _%l117522%_))))
              (declare (not safe))
              (##dynamic-wind __tmp118487 __tmp118486 __tmp118485))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!113488%_
       '#f))
    (define _%locked-hash-table::HashTable::update!113490%_
      (lambda (_%self117316%_ _%key117318%_ _%update117319%_ _%default117320%_)
        (let* ((_%self117323%_ _%self117316%_)
               (_%key117332%_ _%key117318%_)
               (_%update117340%_ _%update117319%_)
               (_%default117348%_ _%default117320%_))
          (let ((_%h117357%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117323%_ '1 '#f '#f)))
                (_%l117359%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117323%_ '2 '#f '#f))))
            (let ((__tmp118490 (lambda () (&Locker-write-lock! _%l117359%_)))
                  (__tmp118489
                   (lambda ()
                     (&HashTable-update!
                      _%h117357%_
                      _%key117332%_
                      _%update117340%_
                      _%default117348%_)))
                  (__tmp118488
                   (lambda () (&Locker-write-unlock! _%l117359%_))))
              (declare (not safe))
              (##dynamic-wind __tmp118490 __tmp118489 __tmp118488))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!113490%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!113492%_
      (lambda (_%self117162%_ _%key117164%_)
        (let* ((_%self117167%_ _%self117162%_) (_%key117176%_ _%key117164%_))
          (let ((_%h117185%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117167%_ '1 '#f '#f)))
                (_%l117187%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117167%_ '2 '#f '#f))))
            (let ((__tmp118493 (lambda () (&Locker-write-lock! _%l117187%_)))
                  (__tmp118492
                   (lambda () (&HashTable-delete! _%h117185%_ _%key117176%_)))
                  (__tmp118491
                   (lambda () (&Locker-write-unlock! _%l117187%_))))
              (declare (not safe))
              (##dynamic-wind __tmp118493 __tmp118492 __tmp118491))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!113492%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each113494%_
      (lambda (_%self117008%_ _%proc117010%_)
        (let* ((_%self117013%_ _%self117008%_) (_%proc117022%_ _%proc117010%_))
          (let ((_%h117031%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117013%_ '1 '#f '#f)))
                (_%l117033%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117013%_ '2 '#f '#f))))
            (let ((__tmp118496 (lambda () (&Locker-read-lock! _%l117033%_)))
                  (__tmp118495
                   (lambda ()
                     (&HashTable-for-each _%h117031%_ _%proc117022%_)))
                  (__tmp118494 (lambda () (&Locker-read-unlock! _%l117033%_))))
              (declare (not safe))
              (##dynamic-wind __tmp118496 __tmp118495 __tmp118494))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each113494%_
       '#f))
    (define _%locked-hash-table::HashTable::length113496%_
      (lambda (_%self116856%_)
        (let ((_%self116860%_ _%self116856%_))
          (let ((_%h116870%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116860%_ '1 '#f '#f)))
                (_%l116872%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116860%_ '2 '#f '#f))))
            ((lambda (_%g116874116876%_)
               (let ((_%val116879%_ _%g116874116876%_))
                 (if (fixnum? _%val116879%_)
                     _%val116879%_
                     (let ()
                       (declare (not safe))
                       (error '"bad cast" fixnum::t _%val116879%_)))))
             (let ((__tmp118499 (lambda () (&Locker-read-lock! _%l116872%_)))
                   (__tmp118498 (lambda () (&HashTable-length _%h116870%_)))
                   (__tmp118497
                    (lambda () (&Locker-read-unlock! _%l116872%_))))
               (declare (not safe))
               (##dynamic-wind __tmp118499 __tmp118498 __tmp118497)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length113496%_
       '#f))
    (define _%locked-hash-table::HashTable::copy113498%_
      (lambda (_%self116708%_)
        (let ((_%self116712%_ _%self116708%_))
          (let ((_%h116722%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116712%_ '1 '#f '#f)))
                (_%l116724%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116712%_ '2 '#f '#f))))
            (let ((_%$obj116730%_
                   (let ((__tmp118502
                          (lambda () (&Locker-read-lock! _%l116724%_)))
                         (__tmp118501
                          (lambda () (&HashTable-copy _%h116722%_)))
                         (__tmp118500
                          (lambda () (&Locker-read-unlock! _%l116724%_))))
                     (declare (not safe))
                     (##dynamic-wind __tmp118502 __tmp118501 __tmp118500))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj116730%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj116730%_)))
                       '#t)
                  _%$obj116730%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj116730%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy113498%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!113500%_
      (lambda (_%self116563%_)
        (let ((_%self116567%_ _%self116563%_))
          (let ((_%h116577%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116567%_ '1 '#f '#f)))
                (_%l116579%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116567%_ '2 '#f '#f))))
            (let ((__tmp118505 (lambda () (&Locker-write-lock! _%l116579%_)))
                  (__tmp118504 (lambda () (&HashTable-clear! _%h116577%_)))
                  (__tmp118503
                   (lambda () (&Locker-write-unlock! _%l116579%_))))
              (declare (not safe))
              (##dynamic-wind __tmp118505 __tmp118504 __tmp118503))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!113500%_
       '#f))
    (let ((__tmp118506 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp118506 'Locker::read-lock! mutex-lock!))
    (let ((__tmp118507 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp118507 'Locker::read-unlock! mutex-unlock!))
    (let ((__tmp118508 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp118508 'Locker::write-lock! mutex-lock!))
    (let ((__tmp118509 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp118509 'Locker::write-unlock! mutex-unlock!))
    (define _%checked-hash-table::HashTable::ref113713%_
      (lambda (_%self116398%_ _%key116399%_ _%default116400%_)
        (let* ((_%self116403%_ _%self116398%_)
               (_%key116412%_ _%key116399%_)
               (_%default116420%_ _%default116400%_))
          (declare (not safe))
          (let ((_%h116431%_
                 (##unchecked-structure-ref _%self116403%_ '1 '#f '#f))
                (_%key?116433%_
                 (##unchecked-structure-ref _%self116403%_ '2 '#f '#f)))
            (if ((lambda (_%key?116436%_ _%key116437%_ _%default116438%_)
                   (_%key?116436%_ _%key116437%_))
                 _%key?116433%_
                 _%key116412%_
                 _%default116420%_)
                (&HashTable-ref _%h116431%_ _%key116412%_ _%default116420%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key116412%_ (cons _%default116420%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref113713%_
       '#f))
    (define _%checked-hash-table::HashTable::set!113715%_
      (lambda (_%self116233%_ _%key116234%_ _%value116235%_)
        (let* ((_%self116238%_ _%self116233%_)
               (_%key116247%_ _%key116234%_)
               (_%value116255%_ _%value116235%_))
          (declare (not safe))
          (let ((_%h116266%_
                 (##unchecked-structure-ref _%self116238%_ '1 '#f '#f))
                (_%key?116268%_
                 (##unchecked-structure-ref _%self116238%_ '2 '#f '#f)))
            (if ((lambda (_%key?116271%_ _%key116272%_ _%value116273%_)
                   (_%key?116271%_ _%key116272%_))
                 _%key?116268%_
                 _%key116247%_
                 _%value116255%_)
                (&HashTable-set! _%h116266%_ _%key116247%_ _%value116255%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key116247%_ (cons _%value116255%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!113715%_
       '#f))
    (define _%checked-hash-table::HashTable::update!113717%_
      (lambda (_%self116058%_ _%key116059%_ _%update116060%_ _%default116061%_)
        (let* ((_%self116064%_ _%self116058%_)
               (_%key116073%_ _%key116059%_)
               (_%update116081%_ _%update116060%_)
               (_%default116089%_ _%default116061%_))
          (declare (not safe))
          (let ((_%h116100%_
                 (##unchecked-structure-ref _%self116064%_ '1 '#f '#f))
                (_%key?116102%_
                 (##unchecked-structure-ref _%self116064%_ '2 '#f '#f)))
            (if ((lambda (_%key?116105%_
                          _%key116106%_
                          _%update116107%_
                          _%default116108%_)
                   (_%key?116105%_ _%key116106%_))
                 _%key?116102%_
                 _%key116073%_
                 _%update116081%_
                 _%default116089%_)
                (&HashTable-update!
                 _%h116100%_
                 _%key116073%_
                 _%update116081%_
                 _%default116089%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key116073%_
                         (cons _%update116081%_ (cons _%default116089%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!113717%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!113719%_
      (lambda (_%self115903%_ _%key115904%_)
        (let* ((_%self115907%_ _%self115903%_) (_%key115916%_ _%key115904%_))
          (declare (not safe))
          (let ((_%h115927%_
                 (##unchecked-structure-ref _%self115907%_ '1 '#f '#f))
                (_%key?115929%_
                 (##unchecked-structure-ref _%self115907%_ '2 '#f '#f)))
            (if ((lambda (_%key?115932%_ _%key115933%_)
                   (_%key?115932%_ _%key115933%_))
                 _%key?115929%_
                 _%key115916%_)
                (&HashTable-delete! _%h115927%_ _%key115916%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key115916%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!113719%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each113721%_
      (lambda (_%self115748%_ _%proc115749%_)
        (let* ((_%self115752%_ _%self115748%_) (_%proc115761%_ _%proc115749%_))
          (declare (not safe))
          (let ((_%h115772%_
                 (##unchecked-structure-ref _%self115752%_ '1 '#f '#f))
                (_%key?115774%_
                 (##unchecked-structure-ref _%self115752%_ '2 '#f '#f)))
            (if ((lambda (_%key?115777%_ _%proc115778%_) '#t)
                 _%key?115774%_
                 _%proc115761%_)
                (&HashTable-for-each _%h115772%_ _%proc115761%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc115761%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each113721%_
       '#f))
    (define _%checked-hash-table::HashTable::length113723%_
      (lambda (_%self115605%_)
        (let ((_%self115608%_ _%self115605%_))
          (declare (not safe))
          (let ((_%h115620%_
                 (##unchecked-structure-ref _%self115608%_ '1 '#f '#f))
                (_%key?115622%_
                 (##unchecked-structure-ref _%self115608%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h115620%_)
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
       _%checked-hash-table::HashTable::length113723%_
       '#f))
    (define _%checked-hash-table::HashTable::copy113725%_
      (lambda (_%self115462%_)
        (let ((_%self115465%_ _%self115462%_))
          (declare (not safe))
          (let ((_%h115477%_
                 (##unchecked-structure-ref _%self115465%_ '1 '#f '#f))
                (_%key?115479%_
                 (##unchecked-structure-ref _%self115465%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h115477%_)
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
       _%checked-hash-table::HashTable::copy113725%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!113727%_
      (lambda (_%self115319%_)
        (let ((_%self115322%_ _%self115319%_))
          (declare (not safe))
          (let ((_%h115334%_
                 (##unchecked-structure-ref _%self115322%_ '1 '#f '#f))
                (_%key?115336%_
                 (##unchecked-structure-ref _%self115322%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h115334%_)
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
       _%checked-hash-table::HashTable::clear!113727%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table115189%_
               _%count115190%_
               _%free115191%_
               _%hash115192%_
               _%test115193%_
               _%seed115194%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table115189%_
           _%count115190%_
           _%free115191%_
           _%hash115192%_
           _%test115193%_
           _%seed115194%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords114950%_
               _%size-hint114940114951%_
               _%seed114941114953%_
               _%test114942114955%_
               _%hash114943114957%_
               _%lock114944114959%_
               _%check114945114961%_
               _%weak-keys114946114963%_
               _%weak-values114947114965%_)
        (let* ((_%size-hint114968%_
                (if (eq? _%size-hint114940114951%_ absent-value)
                    '#f
                    _%size-hint114940114951%_))
               (_%seed114970%_
                (if (eq? _%seed114941114953%_ absent-value)
                    '#f
                    _%seed114941114953%_))
               (_%test114972%_
                (if (eq? _%test114942114955%_ absent-value)
                    equal?
                    _%test114942114955%_))
               (_%hash114974%_
                (if (eq? _%hash114943114957%_ absent-value)
                    '#f
                    _%hash114943114957%_))
               (_%lock114976%_
                (if (eq? _%lock114944114959%_ absent-value)
                    '#f
                    _%lock114944114959%_))
               (_%check114978%_
                (if (eq? _%check114945114961%_ absent-value)
                    '#f
                    _%check114945114961%_))
               (_%weak-keys114980%_
                (if (eq? _%weak-keys114946114963%_ absent-value)
                    '#f
                    _%weak-keys114946114963%_))
               (_%weak-values114982%_
                (if (eq? _%weak-values114947114965%_ absent-value)
                    '#f
                    _%weak-values114947114965%_)))
          (letrec ((_%table-seed114985%_
                    (lambda ()
                      (if (fixnum? _%seed114970%_)
                          _%seed114970%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock114986%_
                    (lambda (_%ht115163%_)
                      (let ((_%ht115166%_ _%ht115163%_))
                        (_%__wrap-lock114987%_ _%ht115166%_))))
                   (_%__wrap-lock114987%_
                    (lambda (_%ht115145%_)
                      (let ((_%ht115148%_ _%ht115145%_))
                        (if _%lock114976%_
                            (let ((_%$obj115160%_
                                   (let ((__tmp118510
                                          (let ((_%$obj115157%_
                                                 _%lock114976%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj115157%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj115157%_)))
                                                     '#t)
                                                _%$obj115157%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj115157%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht115148%_
                                      __tmp118510))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj115160%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj115160%_)))
                                       '#t)
                                  _%$obj115160%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj115160%_))))
                            _%ht115148%_))))
                   (_%wrap-checked114988%_
                    (lambda (_%ht115132%_ _%implicit115133%_)
                      (let ((_%ht115136%_ _%ht115132%_))
                        (_%__wrap-checked114989%_
                         _%ht115136%_
                         _%implicit115133%_))))
                   (_%__wrap-checked114989%_
                    (lambda (_%ht115105%_ _%implicit115106%_)
                      (let ((_%ht115109%_ _%ht115105%_))
                        (if _%check114978%_
                            (let ((_%$obj115129%_
                                   (let ((__tmp118511
                                          (if (procedure? _%check114978%_)
                                              _%check114978%_
                                              _%implicit115106%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht115109%_
                                      __tmp118511))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj115129%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj115129%_)))
                                       '#t)
                                  _%$obj115129%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj115129%_))))
                            _%ht115109%_))))
                   (_%make114990%_
                    (lambda (_%kons115089%_
                             _%key?115090%_
                             _%hash115091%_
                             _%test115092%_)
                      (let* ((_%size115095%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint114968%_)))
                             (_%table115097%_
                              (let ((__tmp118512 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size115095%_ __tmp118512)))
                             (_%ht115102%_
                              (let ((_%$obj115099%_
                                     (_%kons115089%_
                                      _%table115097%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size115095%_ '2))
                                      _%hash115091%_
                                      _%test115092%_
                                      (_%table-seed114985%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj115099%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj115099%_)))
                                         '#t)
                                    _%$obj115099%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj115099%_))))))
                        (_%__wrap-checked114989%_
                         (_%__wrap-lock114987%_ _%ht115102%_)
                         _%key?115090%_))))
                   (_%make-gc-hash-table114991%_
                    (lambda ()
                      (let ((_%ht115087%_
                             (let ((_%$obj115084%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint114968%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj115084%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj115084%_)))
                                        '#t)
                                   _%$obj115084%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj115084%_))))))
                        (_%__wrap-checked114989%_
                         (_%__wrap-lock114987%_ _%ht115087%_)
                         true))))
                   (_%make-gambit-table114992%_
                    (lambda ()
                      (let* ((_%size115061%_
                              (let ((_%$e115058%_ _%size-hint114968%_))
                                (if _%$e115058%_
                                    _%$e115058%_
                                    (macro-absent-obj))))
                             (_%test115066%_
                              (let ((_%$e115063%_ _%test114972%_))
                                (if _%$e115063%_ _%$e115063%_ equal?)))
                             (_%hash115074%_
                              (let ((_%$e115068%_ _%hash114974%_))
                                (if _%$e115068%_
                                    _%$e115068%_
                                    (if (eq? _%test115066%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test115066%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht115079%_
                              (let ((_%$obj115076%_
                                     (make-table
                                      'size:
                                      _%size115061%_
                                      'test:
                                      _%test115066%_
                                      'hash:
                                      _%hash115074%_
                                      'weak-keys:
                                      _%weak-keys114980%_
                                      'weak-values:
                                      _%weak-values114982%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj115076%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj115076%_)))
                                         '#t)
                                    _%$obj115076%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj115076%_))))))
                        (_%__wrap-checked114989%_
                         (_%__wrap-lock114987%_ _%ht115079%_)
                         true)))))
            (if (or _%weak-keys114980%_ _%weak-values114982%_)
                (_%make-gambit-table114992%_)
                (if (and (or (eq? _%test114972%_ eq?)
                             (eq? _%test114972%_ ##eq?))
                         (or (not _%hash114974%_)
                             (eq? _%hash114974%_ eq?-hash)
                             (eq? _%hash114974%_ eq-hash))
                         (not _%seed114970%_))
                    (_%make-gc-hash-table114991%_)
                    (if (and (or (eq? _%test114972%_ eq?)
                                 (eq? _%test114972%_ ##eq?))
                             (or (not _%hash114974%_)
                                 (eq? _%hash114974%_ eq?-hash)
                                 (eq? _%hash114974%_ eq-hash)))
                        (_%make114990%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test114972%_ eqv?)
                                     (eq? _%test114972%_ ##eqv?))
                                 (or (not _%hash114974%_)
                                     (eq? _%hash114974%_ eqv?-hash)
                                     (eq? _%hash114974%_ eqv-hash)))
                            (_%make114990%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test114972%_ eq?)
                                         (eq? _%test114972%_ ##eq?))
                                     (or (eq? _%hash114974%_ symbolic-hash)
                                         (eq? _%hash114974%_ ##symbol-hash)))
                                (_%make114990%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test114972%_ eq?)
                                             (eq? _%test114972%_ ##eq?))
                                         (eq? _%hash114974%_ immediate-hash))
                                    (_%make114990%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test114972%_ equal?)
                                                 (eq? _%test114972%_ ##equal?)
                                                 (eq? _%test114972%_ string=?)
                                                 (eq? _%test114972%_
                                                      ##string=?))
                                             (or (eq? _%hash114974%_
                                                      string-hash)
                                                 (eq? _%hash114974%_
                                                      ##string=?-hash)))
                                        (_%make114990%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test114972%_ equal?)
                                                 (not _%hash114974%_))
                                            (_%make114990%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test114972%_)
                                                (if (procedure? _%hash114974%_)
                                                    (_%make114990%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash114974%_
                                                     _%test114972%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash114974%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test114972%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords115179%_ . _%args115180%_)
        (apply make-hash-table__%
               _%@@keywords115179%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords115179%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords115179%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords115179%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords115179%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords115179%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords115179%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords115179%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords115179%_
                  'weak-values:
                  absent-value))
               _%args115180%_)))
    (define make-hash-table
      (lambda _%args114948115186%_
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
               _%args114948115186%_)))
    (define make-hash-table-eq
      (lambda _%args114937%_
        (apply make-hash-table 'test: eq? _%args114937%_)))
    (define make-hash-table-eqv
      (lambda _%args114935%_
        (apply make-hash-table 'test: eqv? _%args114935%_)))
    (define make-hash-table-symbolic
      (lambda _%args114933%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args114933%_)))
    (define make-hash-table-string
      (lambda _%args114931%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args114931%_)))
    (define make-hash-table-immediate
      (lambda _%args114929%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args114929%_)))
    (define list->hash-table
      (lambda (_%lst114926%_ . _%args114927%_)
        (list->hash-table!
         _%lst114926%_
         (apply make-hash-table
                'size:
                (length _%lst114926%_)
                _%args114927%_))))
    (define list->hash-table-eq
      (lambda (_%lst114923%_ . _%args114924%_)
        (list->hash-table!
         _%lst114923%_
         (apply make-hash-table-eq
                'size:
                (length _%lst114923%_)
                _%args114924%_))))
    (define list->hash-table-eqv
      (lambda (_%lst114920%_ . _%args114921%_)
        (list->hash-table!
         _%lst114920%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst114920%_)
                _%args114921%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst114917%_ . _%args114918%_)
        (list->hash-table!
         _%lst114917%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst114917%_)
                _%args114918%_))))
    (define list->hash-table-string
      (lambda (_%lst114914%_ . _%args114915%_)
        (list->hash-table!
         _%lst114914%_
         (apply make-hash-table-string
                'size:
                (length _%lst114914%_)
                _%args114915%_))))
    (define list->hash-table-immediate
      (lambda (_%lst114911%_ . _%args114912%_)
        (list->hash-table!
         _%lst114911%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst114911%_)
                _%args114912%_))))
    (define list->hash-table!
      (lambda (_%lst114878%_ _%h114879%_)
        (for-each
         (lambda (_%el114881%_)
           (let* ((_%el114882114889%_ _%el114881%_)
                  (_%E114884114893%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el114882114889%_
                              '([k . v])))
                     '#!void))
                  (_%K114885114899%_
                   (lambda (_%v114896%_ _%k114897%_)
                     (&HashTable-set! _%h114879%_ _%k114897%_ _%v114896%_))))
             (if (pair? _%el114882114889%_)
                 (let ((_%hd114886114902%_
                        (let ()
                          (declare (not safe))
                          (##car _%el114882114889%_)))
                       (_%tl114887114904%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el114882114889%_))))
                   (let* ((_%k114907%_ _%hd114886114902%_)
                          (_%v114909%_ _%tl114887114904%_))
                     (_%K114885114899%_ _%v114909%_ _%k114907%_)))
                 (_%E114884114893%_))))
         _%lst114878%_)
        _%h114879%_))
    (define plist->hash-table
      (lambda (_%lst114875%_ . _%args114876%_)
        (plist->hash-table!
         _%lst114875%_
         (apply make-hash-table
                'size:
                (length _%lst114875%_)
                _%args114876%_))))
    (define plist->hash-table-eq
      (lambda (_%lst114872%_ . _%args114873%_)
        (plist->hash-table!
         _%lst114872%_
         (apply make-hash-table-eq
                'size:
                (length _%lst114872%_)
                _%args114873%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst114869%_ . _%args114870%_)
        (plist->hash-table!
         _%lst114869%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst114869%_)
                _%args114870%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst114866%_ . _%args114867%_)
        (plist->hash-table!
         _%lst114866%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst114866%_)
                _%args114867%_))))
    (define plist->hash-table-string
      (lambda (_%lst114863%_ . _%args114864%_)
        (plist->hash-table!
         _%lst114863%_
         (apply make-hash-table-string
                'size:
                (length _%lst114863%_)
                _%args114864%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst114860%_ . _%args114861%_)
        (plist->hash-table!
         _%lst114860%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst114860%_)
                _%args114861%_))))
    (define plist->hash-table!
      (lambda (_%lst114800%_ _%h114801%_)
        (let _%loop114803%_ ((_%rest114805%_ _%lst114800%_))
          (let* ((_%rest114806114818%_ _%rest114805%_)
                 (_%else114809114826%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst114800%_)))))
            (let ((_%K114812114841%_
                   (lambda (_%rest114837%_ _%val114838%_ _%key114839%_)
                     (&HashTable-set! _%h114801%_ _%key114839%_ _%val114838%_)
                     (_%loop114803%_ _%rest114837%_)))
                  (_%K114811114831%_ (lambda () _%h114801%_)))
              (let ((_%try-match114808114834%_
                     (lambda ()
                       (if (null? _%rest114806114818%_)
                           (_%K114811114831%_)
                           (_%else114809114826%_)))))
                (if (pair? _%rest114806114818%_)
                    (let ((_%tl114814114846%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest114806114818%_)))
                          (_%hd114813114844%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest114806114818%_))))
                      (if (pair? _%tl114814114846%_)
                          (let ((_%tl114816114853%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl114814114846%_)))
                                (_%hd114815114851%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl114814114846%_))))
                            (let ((_%key114849%_ _%hd114813114844%_)
                                  (_%val114856%_ _%hd114815114851%_)
                                  (_%rest114858%_ _%tl114816114853%_))
                              (_%K114812114841%_
                               _%rest114858%_
                               _%val114856%_
                               _%key114849%_)))
                          (_%else114809114826%_)))
                    (_%try-match114808114834%_))))))))
    (define hash-length
      (lambda (_%h114782%_)
        (let* ((_%h114788%_
                (let ((_%$obj114785%_ _%h114782%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114785%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114785%_)))
                           '#t)
                      _%$obj114785%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114785%_)))))
               (_%h114790%_ _%h114788%_))
          (__hash-length _%h114790%_))))
    (define __hash-length
      (lambda (_%h114770%_)
        (let ((_%h114773%_ _%h114770%_)) (__HashTable-length _%h114773%_))))
    (define hash-ref__%
      (lambda (_%h114738%_ _%key114739%_ _%default114740%_)
        (let* ((_%h114746%_
                (let ((_%$obj114743%_ _%h114738%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114743%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114743%_)))
                           '#t)
                      _%$obj114743%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114743%_)))))
               (_%h114748%_ _%h114746%_))
          (__hash-ref__% _%h114748%_ _%key114739%_ _%default114740%_))))
    (define hash-ref__0
      (lambda (_%h114761%_ _%key114762%_)
        (let ((_%default114764%_ (macro-absent-obj)))
          (hash-ref__% _%h114761%_ _%key114762%_ _%default114764%_))))
    (define hash-ref
      (lambda _g118513_
        (let ((_g118514_ (let () (declare (not safe)) (##length _g118513_))))
          (cond ((let () (declare (not safe)) (##fx= _g118514_ 2))
                 (apply hash-ref__0 _g118513_))
                ((let () (declare (not safe)) (##fx= _g118514_ 3))
                 (apply hash-ref__% _g118513_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g118513_))))))
    (define __hash-ref__%
      (lambda (_%h114709%_ _%key114710%_ _%default114711%_)
        (let* ((_%h114714%_ _%h114709%_)
               (_%result114723%_
                (&HashTable-ref _%h114714%_ _%key114710%_ _%default114711%_)))
          (if (eq? _%result114723%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h114714%_
               'key:
               _%key114710%_)
              _%result114723%_))))
    (define __hash-ref__0
      (lambda (_%h114728%_ _%key114729%_)
        (let ((_%default114731%_ (macro-absent-obj)))
          (__hash-ref__% _%h114728%_ _%key114729%_ _%default114731%_))))
    (define __hash-ref
      (lambda _g118515_
        (let ((_g118516_ (let () (declare (not safe)) (##length _g118515_))))
          (cond ((let () (declare (not safe)) (##fx= _g118516_ 2))
                 (apply __hash-ref__0 _g118515_))
                ((let () (declare (not safe)) (##fx= _g118516_ 3))
                 (apply __hash-ref__% _g118515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g118515_))))))
    (define hash-get
      (lambda (_%h114689%_ _%key114690%_)
        (let* ((_%h114696%_
                (let ((_%$obj114693%_ _%h114689%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114693%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114693%_)))
                           '#t)
                      _%$obj114693%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114693%_)))))
               (_%h114698%_ _%h114696%_))
          (__hash-get _%h114698%_ _%key114690%_))))
    (define __hash-get
      (lambda (_%h114676%_ _%key114677%_)
        (let ((_%h114680%_ _%h114676%_))
          (&HashTable-ref _%h114680%_ _%key114677%_ '#f))))
    (define hash-put!
      (lambda (_%h114656%_ _%key114657%_ _%value114658%_)
        (let* ((_%h114664%_
                (let ((_%$obj114661%_ _%h114656%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114661%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114661%_)))
                           '#t)
                      _%$obj114661%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114661%_)))))
               (_%h114666%_ _%h114664%_))
          (__hash-put! _%h114666%_ _%key114657%_ _%value114658%_))))
    (define __hash-put!
      (lambda (_%h114642%_ _%key114643%_ _%value114644%_)
        (let ((_%h114647%_ _%h114642%_))
          (&HashTable-set! _%h114647%_ _%key114643%_ _%value114644%_))))
    (define hash-update!__%
      (lambda (_%h114607%_ _%key114608%_ _%update114609%_ _%default114610%_)
        (let* ((_%h114616%_
                (let ((_%$obj114613%_ _%h114607%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114613%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114613%_)))
                           '#t)
                      _%$obj114613%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114613%_)))))
               (_%h114618%_ _%h114616%_))
          (__hash-update!__%
           _%h114618%_
           _%key114608%_
           _%update114609%_
           _%default114610%_))))
    (define hash-update!__0
      (lambda (_%h114631%_ _%key114632%_ _%update114633%_)
        (let ((_%default114635%_ '#!void))
          (hash-update!__%
           _%h114631%_
           _%key114632%_
           _%update114633%_
           _%default114635%_))))
    (define hash-update!
      (lambda _g118517_
        (let ((_g118518_ (let () (declare (not safe)) (##length _g118517_))))
          (cond ((let () (declare (not safe)) (##fx= _g118518_ 3))
                 (apply hash-update!__0 _g118517_))
                ((let () (declare (not safe)) (##fx= _g118518_ 4))
                 (apply hash-update!__% _g118517_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g118517_))))))
    (define __hash-update!__%
      (lambda (_%h114577%_ _%key114578%_ _%update114579%_ _%default114580%_)
        (let ((_%h114583%_ _%h114577%_))
          (HashTable-update!
           _%h114583%_
           _%key114578%_
           _%update114579%_
           _%default114580%_))))
    (define __hash-update!__0
      (lambda (_%h114595%_ _%key114596%_ _%update114597%_)
        (let ((_%default114599%_ '#!void))
          (__hash-update!__%
           _%h114595%_
           _%key114596%_
           _%update114597%_
           _%default114599%_))))
    (define __hash-update!
      (lambda _g118519_
        (let ((_g118520_ (let () (declare (not safe)) (##length _g118519_))))
          (cond ((let () (declare (not safe)) (##fx= _g118520_ 3))
                 (apply __hash-update!__0 _g118519_))
                ((let () (declare (not safe)) (##fx= _g118520_ 4))
                 (apply __hash-update!__% _g118519_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g118519_))))))
    (define hash-remove!
      (lambda (_%h114557%_ _%key114558%_)
        (let* ((_%h114564%_
                (let ((_%$obj114561%_ _%h114557%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114561%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114561%_)))
                           '#t)
                      _%$obj114561%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114561%_)))))
               (_%h114566%_ _%h114564%_))
          (__hash-remove! _%h114566%_ _%key114558%_))))
    (define __hash-remove!
      (lambda (_%h114544%_ _%key114545%_)
        (let ((_%h114548%_ _%h114544%_))
          (&HashTable-delete! _%h114548%_ _%key114545%_))))
    (define hash-key?
      (lambda (_%h114525%_ _%k114526%_)
        (let* ((_%h114532%_
                (let ((_%$obj114529%_ _%h114525%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114529%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114529%_)))
                           '#t)
                      _%$obj114529%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114529%_)))))
               (_%h114534%_ _%h114532%_))
          (__hash-key? _%h114534%_ _%k114526%_))))
    (define __hash-key?
      (lambda (_%h114512%_ _%k114513%_)
        (let ((_%h114516%_ _%h114512%_))
          (not (eq? (&HashTable-ref _%h114516%_ _%k114513%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h114494%_)
        (let* ((_%h114500%_
                (let ((_%$obj114497%_ _%h114494%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114497%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114497%_)))
                           '#t)
                      _%$obj114497%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114497%_)))))
               (_%h114502%_ _%h114500%_))
          (__hash->list _%h114502%_))))
    (define __hash->list
      (lambda (_%h114477%_)
        (let* ((_%h114480%_ _%h114477%_) (_%lst114489%_ '()))
          (&HashTable-for-each
           _%h114480%_
           (lambda (_%k114491%_ _%v114492%_)
             (set! _%lst114489%_
                   (cons (cons _%k114491%_ _%v114492%_) _%lst114489%_))))
          _%lst114489%_)))
    (define hash->plist
      (lambda (_%h114459%_)
        (let* ((_%h114465%_
                (let ((_%$obj114462%_ _%h114459%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114462%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114462%_)))
                           '#t)
                      _%$obj114462%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114462%_)))))
               (_%h114467%_ _%h114465%_))
          (__hash->plist _%h114467%_))))
    (define __hash->plist
      (lambda (_%h114442%_)
        (let* ((_%h114445%_ _%h114442%_) (_%lst114454%_ '()))
          (&HashTable-for-each
           _%h114445%_
           (lambda (_%k114456%_ _%v114457%_)
             (set! _%lst114454%_
                   (cons _%k114456%_ (cons _%v114457%_ _%lst114454%_)))))
          _%lst114454%_)))
    (define hash-for-each
      (lambda (_%proc114413%_ _%h114414%_)
        (if (procedure? _%proc114413%_)
            (let* ((_%proc114418%_ _%proc114413%_)
                   (_%h114430%_
                    (let ((_%$obj114427%_ _%h114414%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj114427%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj114427%_)))
                               '#t)
                          _%$obj114427%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj114427%_)))))
                   (_%h114432%_ _%h114430%_))
              (__hash-for-each _%proc114418%_ _%h114432%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@583.22-583.26"
               'contract:
               'procedure?
               'value:
               _%proc114413%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc114392%_ _%h114393%_)
        (let* ((_%proc114396%_ _%proc114392%_) (_%h114404%_ _%h114393%_))
          (&HashTable-for-each _%h114404%_ _%proc114396%_))))
    (define hash-map
      (lambda (_%proc114363%_ _%h114364%_)
        (if (procedure? _%proc114363%_)
            (let* ((_%proc114368%_ _%proc114363%_)
                   (_%h114380%_
                    (let ((_%$obj114377%_ _%h114364%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj114377%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj114377%_)))
                               '#t)
                          _%$obj114377%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj114377%_)))))
                   (_%h114382%_ _%h114380%_))
              (__hash-map _%proc114368%_ _%h114382%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@586.17-586.21"
               'contract:
               'procedure?
               'value:
               _%proc114363%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc114337%_ _%h114338%_)
        (let* ((_%proc114341%_ _%proc114337%_)
               (_%h114349%_ _%h114338%_)
               (_%result114358%_ '()))
          (&HashTable-for-each
           _%h114349%_
           (lambda (_%k114360%_ _%v114361%_)
             (set! _%result114358%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc114341%_ _%k114360%_ _%v114361%_))
                         _%result114358%_))))
          _%result114358%_)))
    (define hash-fold
      (lambda (_%proc114307%_ _%iv114308%_ _%h114309%_)
        (if (procedure? _%proc114307%_)
            (let* ((_%proc114313%_ _%proc114307%_)
                   (_%h114325%_
                    (let ((_%$obj114322%_ _%h114309%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj114322%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj114322%_)))
                               '#t)
                          _%$obj114322%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj114322%_)))))
                   (_%h114327%_ _%h114325%_))
              (__hash-fold _%proc114313%_ _%iv114308%_ _%h114327%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.18-592.22"
               'contract:
               'procedure?
               'value:
               _%proc114307%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc114280%_ _%iv114281%_ _%h114282%_)
        (let* ((_%proc114285%_ _%proc114280%_)
               (_%h114293%_ _%h114282%_)
               (_%result114302%_ _%iv114281%_))
          (&HashTable-for-each
           _%h114293%_
           (lambda (_%k114304%_ _%v114305%_)
             (set! _%result114302%_
                   (let ()
                     (declare (not safe))
                     (_%proc114285%_
                      _%k114304%_
                      _%v114305%_
                      _%result114302%_)))))
          _%result114302%_)))
    (define hash-find__%
      (lambda (_%proc114238%_ _%h114239%_ _%default-value114240%_)
        (if (procedure? _%proc114238%_)
            (let* ((_%proc114244%_ _%proc114238%_)
                   (_%h114256%_
                    (let ((_%$obj114253%_ _%h114239%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj114253%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj114253%_)))
                               '#t)
                          _%$obj114253%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj114253%_)))))
                   (_%h114258%_ _%h114256%_))
              (__hash-find__%
               _%proc114244%_
               _%h114258%_
               _%default-value114240%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@597.18-597.22"
               'contract:
               'procedure?
               'value:
               _%proc114238%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc114271%_ _%h114272%_)
        (let ((_%default-value114274%_ '#f))
          (hash-find__% _%proc114271%_ _%h114272%_ _%default-value114274%_))))
    (define hash-find
      (lambda _g118521_
        (let ((_g118522_ (let () (declare (not safe)) (##length _g118521_))))
          (cond ((let () (declare (not safe)) (##fx= _g118522_ 2))
                 (apply hash-find__0 _g118521_))
                ((let () (declare (not safe)) (##fx= _g118522_ 3))
                 (apply hash-find__% _g118521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g118521_))))))
    (define __hash-find__%
      (lambda (_%proc114195%_ _%h114196%_ _%default-value114197%_)
        (let* ((_%proc114200%_ _%proc114195%_)
               (_%h114208%_ _%h114196%_)
               (__tmp118523
                (lambda (_%return114217%_)
                  (&HashTable-for-each
                   _%h114208%_
                   (lambda (_%k114219%_ _%v114220%_)
                     (let ((_%$e114222%_
                            (let ()
                              (declare (not safe))
                              (_%proc114200%_ _%k114219%_ _%v114220%_))))
                       (if _%$e114222%_
                           (_%return114217%_ _%$e114222%_)
                           '#!void))))
                  _%default-value114197%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp118523))))
    (define __hash-find__0
      (lambda (_%proc114228%_ _%h114229%_)
        (let ((_%default-value114231%_ '#f))
          (__hash-find__%
           _%proc114228%_
           _%h114229%_
           _%default-value114231%_))))
    (define __hash-find
      (lambda _g118524_
        (let ((_g118525_ (let () (declare (not safe)) (##length _g118524_))))
          (cond ((let () (declare (not safe)) (##fx= _g118525_ 2))
                 (apply __hash-find__0 _g118524_))
                ((let () (declare (not safe)) (##fx= _g118525_ 3))
                 (apply __hash-find__% _g118524_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g118524_))))))
    (define hash-keys
      (lambda (_%h114176%_)
        (let* ((_%h114182%_
                (let ((_%$obj114179%_ _%h114176%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114179%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114179%_)))
                           '#t)
                      _%$obj114179%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114179%_)))))
               (_%h114184%_ _%h114182%_))
          (__hash-keys _%h114184%_))))
    (define __hash-keys
      (lambda (_%h114159%_)
        (let* ((_%h114162%_ _%h114159%_) (_%result114171%_ '()))
          (&HashTable-for-each
           _%h114162%_
           (lambda (_%k114173%_ _%v114174%_)
             (set! _%result114171%_ (cons _%k114173%_ _%result114171%_))))
          _%result114171%_)))
    (define hash-values
      (lambda (_%h114141%_)
        (let* ((_%h114147%_
                (let ((_%$obj114144%_ _%h114141%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114144%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114144%_)))
                           '#t)
                      _%$obj114144%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114144%_)))))
               (_%h114149%_ _%h114147%_))
          (__hash-values _%h114149%_))))
    (define __hash-values
      (lambda (_%h114124%_)
        (let* ((_%h114127%_ _%h114124%_) (_%result114136%_ '()))
          (&HashTable-for-each
           _%h114127%_
           (lambda (_%k114138%_ _%v114139%_)
             (set! _%result114136%_ (cons _%v114139%_ _%result114136%_))))
          _%result114136%_)))
    (define hash-copy
      (lambda (_%h114106%_)
        (let* ((_%h114112%_
                (let ((_%$obj114109%_ _%h114106%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114109%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114109%_)))
                           '#t)
                      _%$obj114109%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114109%_)))))
               (_%h114114%_ _%h114112%_))
          (__hash-copy _%h114114%_))))
    (define __hash-copy
      (lambda (_%h114094%_)
        (let ((_%h114097%_ _%h114094%_)) (__HashTable-copy _%h114097%_))))
    (define hash-clear!
      (lambda (_%h114076%_)
        (let* ((_%h114082%_
                (let ((_%$obj114079%_ _%h114076%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114079%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114079%_)))
                           '#t)
                      _%$obj114079%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114079%_)))))
               (_%h114084%_ _%h114082%_))
          (__hash-clear! _%h114084%_))))
    (define __hash-clear!
      (lambda (_%h114064%_)
        (let ((_%h114067%_ _%h114064%_)) (&HashTable-clear! _%h114067%_))))
    (define hash-merge
      (lambda (_%h114045%_ . _%rest114046%_)
        (let* ((_%h114052%_
                (let ((_%$obj114049%_ _%h114045%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114049%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114049%_)))
                           '#t)
                      _%$obj114049%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114049%_)))))
               (_%h114054%_ _%h114052%_))
          (declare (not safe))
          (##apply __hash-merge _%h114054%_ _%rest114046%_))))
    (define __hash-merge
      (lambda (_%h114030%_ . _%rest114031%_)
        (let* ((_%h114034%_ _%h114030%_)
               (_%copy114043%_ (__HashTable-copy _%h114034%_)))
          (apply hash-merge! _%copy114043%_ _%rest114031%_)
          _%copy114043%_)))
    (define hash-merge-right
      (lambda (_%h114011%_ . _%rest114012%_)
        (let* ((_%h114018%_
                (let ((_%$obj114015%_ _%h114011%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114015%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114015%_)))
                           '#t)
                      _%$obj114015%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114015%_)))))
               (_%h114020%_ _%h114018%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h114020%_ _%rest114012%_))))
    (define __hash-merge-right
      (lambda (_%h113996%_ . _%rest113997%_)
        (let* ((_%h114000%_ _%h113996%_)
               (_%copy114009%_ (__HashTable-copy _%h114000%_)))
          (apply hash-merge-right! _%copy114009%_ _%rest113997%_)
          _%copy114009%_)))
    (define hash-merge!
      (lambda (_%h113977%_ . _%rest113978%_)
        (let* ((_%h113984%_
                (let ((_%$obj113981%_ _%h113977%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113981%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113981%_)))
                           '#t)
                      _%$obj113981%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj113981%_)))))
               (_%h113986%_ _%h113984%_))
          (declare (not safe))
          (##apply __hash-merge! _%h113986%_ _%rest113978%_))))
    (define __hash-merge!
      (lambda (_%h113940%_ . _%rest113941%_)
        (let ((_%h113944%_ _%h113940%_))
          (let ((__tmp118526
                 (lambda (_%hr113953%_)
                   (let* ((_%hr113959%_
                           (let ((_%$obj113956%_ _%hr113953%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj113956%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj113956%_)))
                                      '#t)
                                 _%$obj113956%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj113956%_)))))
                          (_%hr113961%_ _%hr113959%_))
                     (&HashTable-for-each
                      _%hr113961%_
                      (lambda (_%k113974%_ _%v113975%_)
                        (if (__hash-key? _%h113944%_ _%k113974%_)
                            '#!void
                            (&HashTable-set!
                             _%h113944%_
                             _%k113974%_
                             _%v113975%_))))))))
            (declare (not safe))
            (##for-each __tmp118526 _%rest113941%_))
          _%h113944%_)))
    (define hash-merge-right!
      (lambda (_%h113921%_ . _%rest113922%_)
        (let* ((_%h113928%_
                (let ((_%$obj113925%_ _%h113921%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113925%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113925%_)))
                           '#t)
                      _%$obj113925%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj113925%_)))))
               (_%h113930%_ _%h113928%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h113930%_ _%rest113922%_))))
    (define __hash-merge-right!
      (lambda (_%h113884%_ . _%rest113885%_)
        (let ((_%h113888%_ _%h113884%_))
          (let ((__tmp118527
                 (lambda (_%hr113897%_)
                   (let* ((_%hr113903%_
                           (let ((_%$obj113900%_ _%hr113897%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj113900%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj113900%_)))
                                      '#t)
                                 _%$obj113900%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj113900%_)))))
                          (_%hr113905%_ _%hr113903%_))
                     (&HashTable-for-each
                      _%hr113905%_
                      (lambda (_%k113918%_ _%v113919%_)
                        (&HashTable-set!
                         _%h113888%_
                         _%k113918%_
                         _%v113919%_)))))))
            (declare (not safe))
            (##for-each __tmp118527 _%rest113885%_))
          _%h113888%_)))))
