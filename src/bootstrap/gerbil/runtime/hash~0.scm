(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1712823026)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp108132 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp108132
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args108112%_
        (apply make-instance UnboundKeyError::t _%$args108112%_)))
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
      (lambda (_%where107986%_ _%message107987%_ . _%irritants107988%_)
        (let ((__tmp108133
               (let ((__obj108126
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj108126
                    _%message107987%_
                    'where:
                    _%where107986%_
                    'irritants:
                    _%irritants107988%_))
                 __obj108126)))
          (declare (not safe))
          (raise __tmp108133))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp108134 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp108134
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
      (lambda (_%obj107984%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj107984%_))))
    (define try-HashTable
      (lambda (_%obj107982%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj107982%_))))
    (define HashTable?
      (lambda (_%obj107980%_)
        (let ((__tmp108135
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj107980%_ __tmp108135))))
    (define is-HashTable?
      (lambda (_%obj107978%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj107978%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self107962%_)
        (let* ((_%self107967%_
                (let ((_%$obj107964%_ _%self107962%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107964%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107964%_)))
                           '#t)
                      _%$obj107964%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107964%_)))))
               (_%self107969%_ _%self107967%_))
          (&HashTable-clear! _%self107969%_))))
    (define &HashTable-clear!
      (lambda (_%self107947%_)
        (let ((_%self107949%_ _%self107947%_))
          (declare (not safe))
          (let ((_%obj107959%_
                 (##unchecked-structure-ref _%self107949%_ '1 '#f 'clear!))
                (_%f107960%_
                 (##unchecked-structure-ref _%self107949%_ '2 '#f 'clear!)))
            (_%f107960%_ _%obj107959%_)))))
    (define HashTable-copy
      (lambda (_%self107931%_)
        (let* ((_%self107936%_
                (let ((_%$obj107933%_ _%self107931%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107933%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107933%_)))
                           '#t)
                      _%$obj107933%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107933%_)))))
               (_%self107938%_ _%self107936%_))
          (__HashTable-copy _%self107938%_))))
    (define __HashTable-copy
      (lambda (_%self107918%_)
        (let* ((_%self107920%_ _%self107918%_)
               (_%$obj107928%_ (&HashTable-copy _%self107920%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj107928%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj107928%_)))
                   '#t)
              _%$obj107928%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj107928%_))))))
    (define &HashTable-copy
      (lambda (_%self107903%_)
        (let ((_%self107905%_ _%self107903%_))
          (declare (not safe))
          (let ((_%obj107915%_
                 (##unchecked-structure-ref _%self107905%_ '1 '#f 'copy))
                (_%f107916%_
                 (##unchecked-structure-ref _%self107905%_ '3 '#f 'copy)))
            (_%f107916%_ _%obj107915%_)))))
    (define HashTable-delete!
      (lambda (_%self107886%_ _%key107887%_)
        (let* ((_%self107892%_
                (let ((_%$obj107889%_ _%self107886%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107889%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107889%_)))
                           '#t)
                      _%$obj107889%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107889%_)))))
               (_%self107894%_ _%self107892%_))
          (&HashTable-delete! _%self107894%_ _%key107887%_))))
    (define &HashTable-delete!
      (lambda (_%self107870%_ _%key107871%_)
        (let ((_%self107873%_ _%self107870%_))
          (declare (not safe))
          (let ((_%obj107883%_
                 (##unchecked-structure-ref _%self107873%_ '1 '#f 'delete!))
                (_%f107884%_
                 (##unchecked-structure-ref _%self107873%_ '4 '#f 'delete!)))
            (_%f107884%_ _%obj107883%_ _%key107871%_)))))
    (define HashTable-for-each
      (lambda (_%self107843%_ _%proc107844%_)
        (let* ((_%self107849%_
                (let ((_%$obj107846%_ _%self107843%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107846%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107846%_)))
                           '#t)
                      _%$obj107846%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107846%_)))))
               (_%self107851%_ _%self107849%_))
          (if (procedure? _%proc107844%_)
              (let ((_%proc107860%_ _%proc107844%_))
                (&HashTable-for-each _%self107851%_ _%proc107860%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc107844%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self107819%_ _%proc107820%_)
        (let* ((_%self107822%_ _%self107819%_) (_%proc107829%_ _%proc107820%_))
          (declare (not safe))
          (let ((_%obj107840%_
                 (##unchecked-structure-ref _%self107822%_ '1 '#f 'for-each))
                (_%f107841%_
                 (##unchecked-structure-ref _%self107822%_ '5 '#f 'for-each)))
            (_%f107841%_ _%obj107840%_ _%proc107829%_)))))
    (define HashTable-length
      (lambda (_%self107803%_)
        (let* ((_%self107808%_
                (let ((_%$obj107805%_ _%self107803%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107805%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107805%_)))
                           '#t)
                      _%$obj107805%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107805%_)))))
               (_%self107810%_ _%self107808%_))
          (__HashTable-length _%self107810%_))))
    (define __HashTable-length
      (lambda (_%self107790%_)
        (let* ((_%self107792%_ _%self107790%_)
               (_%val107800%_ (&HashTable-length _%self107792%_)))
          (if '#t
              _%val107800%_
              (let ()
                (declare (not safe))
                (error '"bad cast" fixnum::t _%val107800%_))))))
    (define &HashTable-length
      (lambda (_%self107775%_)
        (let ((_%self107777%_ _%self107775%_))
          (declare (not safe))
          (let ((_%obj107787%_
                 (##unchecked-structure-ref _%self107777%_ '1 '#f 'length))
                (_%f107788%_
                 (##unchecked-structure-ref _%self107777%_ '6 '#f 'length)))
            (_%f107788%_ _%obj107787%_)))))
    (define HashTable-ref
      (lambda (_%self107757%_ _%key107758%_ _%default107759%_)
        (let* ((_%self107764%_
                (let ((_%$obj107761%_ _%self107757%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107761%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107761%_)))
                           '#t)
                      _%$obj107761%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107761%_)))))
               (_%self107766%_ _%self107764%_))
          (&HashTable-ref _%self107766%_ _%key107758%_ _%default107759%_))))
    (define &HashTable-ref
      (lambda (_%self107740%_ _%key107741%_ _%default107742%_)
        (let ((_%self107744%_ _%self107740%_))
          (declare (not safe))
          (let ((_%obj107754%_
                 (##unchecked-structure-ref _%self107744%_ '1 '#f 'ref))
                (_%f107755%_
                 (##unchecked-structure-ref _%self107744%_ '7 '#f 'ref)))
            (_%f107755%_ _%obj107754%_ _%key107741%_ _%default107742%_)))))
    (define HashTable-set!
      (lambda (_%self107722%_ _%key107723%_ _%value107724%_)
        (let* ((_%self107729%_
                (let ((_%$obj107726%_ _%self107722%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107726%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107726%_)))
                           '#t)
                      _%$obj107726%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107726%_)))))
               (_%self107731%_ _%self107729%_))
          (&HashTable-set! _%self107731%_ _%key107723%_ _%value107724%_))))
    (define &HashTable-set!
      (lambda (_%self107705%_ _%key107706%_ _%value107707%_)
        (let ((_%self107709%_ _%self107705%_))
          (declare (not safe))
          (let ((_%obj107719%_
                 (##unchecked-structure-ref _%self107709%_ '1 '#f 'set!))
                (_%f107720%_
                 (##unchecked-structure-ref _%self107709%_ '8 '#f 'set!)))
            (_%f107720%_ _%obj107719%_ _%key107706%_ _%value107707%_)))))
    (define HashTable-update!
      (lambda (_%self107676%_ _%key107677%_ _%proc107678%_ _%default107679%_)
        (let* ((_%self107684%_
                (let ((_%$obj107681%_ _%self107676%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107681%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107681%_)))
                           '#t)
                      _%$obj107681%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107681%_)))))
               (_%self107686%_ _%self107684%_))
          (if (procedure? _%proc107678%_)
              (let ((_%proc107695%_ _%proc107678%_))
                (&HashTable-update!
                 _%self107686%_
                 _%key107677%_
                 _%proc107695%_
                 _%default107679%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc107678%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self107648%_ _%key107649%_ _%proc107650%_ _%default107651%_)
        (let* ((_%self107653%_ _%self107648%_) (_%proc107660%_ _%proc107650%_))
          (declare (not safe))
          (let ((_%obj107671%_
                 (##unchecked-structure-ref _%self107653%_ '1 '#f 'update!))
                (_%f107673%_
                 (##unchecked-structure-ref _%self107653%_ '9 '#f 'update!)))
            (_%f107673%_
             _%obj107671%_
             _%key107649%_
             _%proc107660%_
             _%default107651%_)))))
    (define Locker::t
      (let ((__tmp108136 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp108136
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
      (lambda (_%obj107646%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj107646%_))))
    (define try-Locker
      (lambda (_%obj107644%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj107644%_))))
    (define Locker?
      (lambda (_%obj107642%_)
        (let ((__tmp108137
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj107642%_ __tmp108137))))
    (define is-Locker?
      (lambda (_%obj107640%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj107640%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self107624%_)
        (let* ((_%self107629%_
                (let ((_%$obj107626%_ _%self107624%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107626%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107626%_)))
                           '#t)
                      _%$obj107626%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj107626%_)))))
               (_%self107631%_ _%self107629%_))
          (&Locker-read-lock! _%self107631%_))))
    (define &Locker-read-lock!
      (lambda (_%self107609%_)
        (let ((_%self107611%_ _%self107609%_))
          (declare (not safe))
          (let ((_%obj107621%_
                 (##unchecked-structure-ref _%self107611%_ '1 '#f 'read-lock!))
                (_%f107622%_
                 (##unchecked-structure-ref
                  _%self107611%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f107622%_ _%obj107621%_)))))
    (define Locker-read-unlock!
      (lambda (_%self107593%_)
        (let* ((_%self107598%_
                (let ((_%$obj107595%_ _%self107593%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107595%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107595%_)))
                           '#t)
                      _%$obj107595%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj107595%_)))))
               (_%self107600%_ _%self107598%_))
          (&Locker-read-unlock! _%self107600%_))))
    (define &Locker-read-unlock!
      (lambda (_%self107578%_)
        (let ((_%self107580%_ _%self107578%_))
          (declare (not safe))
          (let ((_%obj107590%_
                 (##unchecked-structure-ref
                  _%self107580%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f107591%_
                 (##unchecked-structure-ref
                  _%self107580%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f107591%_ _%obj107590%_)))))
    (define Locker-write-lock!
      (lambda (_%self107562%_)
        (let* ((_%self107567%_
                (let ((_%$obj107564%_ _%self107562%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107564%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107564%_)))
                           '#t)
                      _%$obj107564%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj107564%_)))))
               (_%self107569%_ _%self107567%_))
          (&Locker-write-lock! _%self107569%_))))
    (define &Locker-write-lock!
      (lambda (_%self107547%_)
        (let ((_%self107549%_ _%self107547%_))
          (declare (not safe))
          (let ((_%obj107559%_
                 (##unchecked-structure-ref
                  _%self107549%_
                  '1
                  '#f
                  'write-lock!))
                (_%f107560%_
                 (##unchecked-structure-ref
                  _%self107549%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f107560%_ _%obj107559%_)))))
    (define Locker-write-unlock!
      (lambda (_%self107531%_)
        (let* ((_%self107536%_
                (let ((_%$obj107533%_ _%self107531%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107533%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107533%_)))
                           '#t)
                      _%$obj107533%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj107533%_)))))
               (_%self107538%_ _%self107536%_))
          (&Locker-write-unlock! _%self107538%_))))
    (define &Locker-write-unlock!
      (lambda (_%self107514%_)
        (let ((_%self107516%_ _%self107514%_))
          (declare (not safe))
          (let ((_%obj107526%_
                 (##unchecked-structure-ref
                  _%self107516%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f107528%_
                 (##unchecked-structure-ref
                  _%self107516%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f107528%_ _%obj107526%_)))))
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
      (lambda (_%table107507%_
               _%key107508%_
               _%update107509%_
               _%default107510%_)
        (let ((_%result107512%_
               (table-ref _%table107507%_ _%key107508%_ _%default107510%_)))
          (table-set!
           _%table107507%_
           _%key107508%_
           (_%update107509%_ _%default107510%_)))))
    (define gambit-table-for-each
      (lambda (_%table107504%_ _%proc107505%_)
        (table-for-each _%proc107505%_ _%table107504%_)))
    (define gambit-table-clear!
      (lambda (_%table107502%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table107502%_ '0 '5 '#f '#f))))
    (let ((__tmp108138 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108138 'ref table-ref))
    (let ((__tmp108139 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108139 'set! table-set!))
    (let ((__tmp108140 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108140 'update! gambit-table-update!))
    (let ((__tmp108141 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108141 'delete! table-set!))
    (let ((__tmp108142 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108142 'for-each gambit-table-for-each))
    (let ((__tmp108143 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108143 'length table-length))
    (let ((__tmp108144 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108144 'copy table-copy))
    (let ((__tmp108145 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108145 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots107484%_ '(table count free hash test seed))
             (_%slot-vector107486%_ (list->vector (cons '#f _%slots107484%_)))
             (_%slot-table107493%_
              (let ((_%slot-table107488%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp108148
                       (lambda (_%slot107490%_ _%field107491%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107488%_
                            _%slot107490%_
                            _%field107491%_))
                         (let ((__tmp108149
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot107490%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107488%_
                            __tmp108149
                            _%field107491%_))))
                      (__tmp108146
                       (let ((__tmp108147
                              (let ()
                                (declare (not safe))
                                (##length _%slots107484%_))))
                         (declare (not safe))
                         (##iota __tmp108147 '1))))
                  (declare (not safe))
                  (##for-each __tmp108148 _%slots107484%_ __tmp108146))
                _%slot-table107488%_))
             (_%flags107495%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields107497%_ '#())
             (_%properties107499%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots107484%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp108150 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags107495%_
         __table::t
         _%fields107497%_
         __tmp108150
         _%slot-vector107486%_
         _%slot-table107493%_
         _%properties107499%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots107466%_ '(gcht immediate))
             (_%slot-vector107468%_ (list->vector (cons '#f _%slots107466%_)))
             (_%slot-table107475%_
              (let ((_%slot-table107470%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp108153
                       (lambda (_%slot107472%_ _%field107473%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107470%_
                            _%slot107472%_
                            _%field107473%_))
                         (let ((__tmp108154
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot107472%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107470%_
                            __tmp108154
                            _%field107473%_))))
                      (__tmp108151
                       (let ((__tmp108152
                              (let ()
                                (declare (not safe))
                                (##length _%slots107466%_))))
                         (declare (not safe))
                         (##iota __tmp108152 '1))))
                  (declare (not safe))
                  (##for-each __tmp108153 _%slots107466%_ __tmp108151))
                _%slot-table107470%_))
             (_%flags107477%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields107479%_ '#())
             (_%properties107481%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots107466%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp108155 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags107477%_
         __gc-table::t
         _%fields107479%_
         __tmp108155
         _%slot-vector107468%_
         _%slot-table107475%_
         _%properties107481%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp108157 (list))
            (__tmp108156
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp108157
         '(table lock)
         __tmp108156
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args107463%_
        (apply make-instance locked-hash-table::t _%$args107463%_)))
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
      (let ((__tmp108159 (list))
            (__tmp108158
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp108159
         '(table key-check)
         __tmp108158
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args107460%_
        (apply make-instance checked-hash-table::t _%$args107460%_)))
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
      (let ((__tmp108161 (list hash-table::t))
            (__tmp108160 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp108161
         '()
         __tmp108160
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args107457%_
        (apply make-instance eq-hash-table::t _%$args107457%_)))
    (define eqv-hash-table::t
      (let ((__tmp108163 (list hash-table::t))
            (__tmp108162 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp108163
         '()
         __tmp108162
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args107454%_
        (apply make-instance eqv-hash-table::t _%$args107454%_)))
    (define symbol-hash-table::t
      (let ((__tmp108165 (list hash-table::t))
            (__tmp108164 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp108165
         '()
         __tmp108164
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args107451%_
        (apply make-instance symbol-hash-table::t _%$args107451%_)))
    (define string-hash-table::t
      (let ((__tmp108167 (list hash-table::t))
            (__tmp108166 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp108167
         '()
         __tmp108166
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args107448%_
        (apply make-instance string-hash-table::t _%$args107448%_)))
    (define immediate-hash-table::t
      (let ((__tmp108169 (list hash-table::t))
            (__tmp108168 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp108169
         '()
         __tmp108168
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args107445%_
        (apply make-instance immediate-hash-table::t _%$args107445%_)))
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
      (lambda (_%obj107443%_)
        (let ()
          (declare (not safe))
          (##structure-direct-instance-of?
           _%obj107443%_
           'gerbil/runtime/hash#HashTable::t))))
    (define is-hash-table?
      (lambda (_%obj107441%_) (is-HashTable? _%obj107441%_)))
    (define _%locked-hash-table::ref103449%_
      (lambda (_%self103448107415%_ _%key107417%_ _%default107418%_)
        (let* ((_%self107420%_ _%self103448107415%_)
               (_%self107423%_ _%self107420%_))
          (let ((_%h107433%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107423%_ '1 '#f '#f)))
                (_%l107435%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107423%_ '2 '#f '#f))))
            (let ((__tmp108172 (lambda () (&Locker-read-lock! _%l107435%_)))
                  (__tmp108171
                   (lambda ()
                     (&HashTable-ref
                      _%h107433%_
                      _%key107417%_
                      _%default107418%_)))
                  (__tmp108170 (lambda () (&Locker-read-unlock! _%l107435%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108172 __tmp108171 __tmp108170))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref103449%_
       '#f))
    (define _%locked-hash-table::set!103452%_
      (lambda (_%self103451107266%_ _%key107268%_ _%value107269%_)
        (let* ((_%self107271%_ _%self103451107266%_)
               (_%self107274%_ _%self107271%_))
          (let ((_%h107284%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107274%_ '1 '#f '#f)))
                (_%l107286%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107274%_ '2 '#f '#f))))
            (let ((__tmp108175 (lambda () (&Locker-write-lock! _%l107286%_)))
                  (__tmp108174
                   (lambda ()
                     (&HashTable-set!
                      _%h107284%_
                      _%key107268%_
                      _%value107269%_)))
                  (__tmp108173
                   (lambda () (&Locker-write-unlock! _%l107286%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108175 __tmp108174 __tmp108173))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!103452%_
       '#f))
    (define _%locked-hash-table::update!103455%_
      (lambda (_%self103454107116%_
               _%key107118%_
               _%update107119%_
               _%default107120%_)
        (let* ((_%self107122%_ _%self103454107116%_)
               (_%self107125%_ _%self107122%_))
          (let ((_%h107135%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107125%_ '1 '#f '#f)))
                (_%l107137%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107125%_ '2 '#f '#f))))
            (let ((__tmp108178 (lambda () (&Locker-write-lock! _%l107137%_)))
                  (__tmp108177
                   (lambda ()
                     (&HashTable-update!
                      _%h107135%_
                      _%key107118%_
                      _%update107119%_
                      _%default107120%_)))
                  (__tmp108176
                   (lambda () (&Locker-write-unlock! _%l107137%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108178 __tmp108177 __tmp108176))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!103455%_
       '#f))
    (define _%locked-hash-table::delete!103458%_
      (lambda (_%self103457106968%_ _%key106970%_)
        (let* ((_%self106972%_ _%self103457106968%_)
               (_%self106975%_ _%self106972%_))
          (let ((_%h106985%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106975%_ '1 '#f '#f)))
                (_%l106987%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106975%_ '2 '#f '#f))))
            (let ((__tmp108181 (lambda () (&Locker-write-lock! _%l106987%_)))
                  (__tmp108180
                   (lambda () (&HashTable-delete! _%h106985%_ _%key106970%_)))
                  (__tmp108179
                   (lambda () (&Locker-write-unlock! _%l106987%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108181 __tmp108180 __tmp108179))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!103458%_
       '#f))
    (define _%locked-hash-table::for-each103461%_
      (lambda (_%self103460106820%_ _%proc106822%_)
        (let* ((_%self106824%_ _%self103460106820%_)
               (_%self106827%_ _%self106824%_))
          (let ((_%h106837%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106827%_ '1 '#f '#f)))
                (_%l106839%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106827%_ '2 '#f '#f))))
            (let ((__tmp108184 (lambda () (&Locker-read-lock! _%l106839%_)))
                  (__tmp108183
                   (lambda ()
                     (&HashTable-for-each _%h106837%_ _%proc106822%_)))
                  (__tmp108182 (lambda () (&Locker-read-unlock! _%l106839%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108184 __tmp108183 __tmp108182))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each103461%_
       '#f))
    (define _%locked-hash-table::length103464%_
      (lambda (_%self103463106673%_)
        (let* ((_%self106676%_ _%self103463106673%_)
               (_%self106679%_ _%self106676%_))
          (let ((_%h106689%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106679%_ '1 '#f '#f)))
                (_%l106691%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106679%_ '2 '#f '#f))))
            (let ((__tmp108187 (lambda () (&Locker-read-lock! _%l106691%_)))
                  (__tmp108186 (lambda () (&HashTable-length _%h106689%_)))
                  (__tmp108185 (lambda () (&Locker-read-unlock! _%l106691%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108187 __tmp108186 __tmp108185))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'length
       _%locked-hash-table::length103464%_
       '#f))
    (define _%locked-hash-table::copy103467%_
      (lambda (_%self103466106526%_)
        (let* ((_%self106529%_ _%self103466106526%_)
               (_%self106532%_ _%self106529%_))
          (let ((_%h106542%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106532%_ '1 '#f '#f)))
                (_%l106544%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106532%_ '2 '#f '#f))))
            (let ((__tmp108190 (lambda () (&Locker-read-lock! _%l106544%_)))
                  (__tmp108189 (lambda () (&HashTable-copy _%h106542%_)))
                  (__tmp108188 (lambda () (&Locker-read-unlock! _%l106544%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108190 __tmp108189 __tmp108188))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy103467%_
       '#f))
    (define _%locked-hash-table::clear!103470%_
      (lambda (_%self103469106379%_)
        (let* ((_%self106382%_ _%self103469106379%_)
               (_%self106385%_ _%self106382%_))
          (let ((_%h106395%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106385%_ '1 '#f '#f)))
                (_%l106397%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106385%_ '2 '#f '#f))))
            (let ((__tmp108193 (lambda () (&Locker-write-lock! _%l106397%_)))
                  (__tmp108192 (lambda () (&HashTable-clear! _%h106395%_)))
                  (__tmp108191
                   (lambda () (&Locker-write-unlock! _%l106397%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108193 __tmp108192 __tmp108191))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!103470%_
       '#f))
    (let ((__tmp108194 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108194 'read-lock! mutex-lock!))
    (let ((__tmp108195 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108195 'read-unlock! mutex-unlock!))
    (let ((__tmp108196 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108196 'write-lock! mutex-lock!))
    (let ((__tmp108197 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108197 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref103749%_
      (lambda (_%self103748106230%_ _%key106232%_ _%default106233%_)
        (let* ((_%self106235%_ _%self103748106230%_)
               (_%self106237%_ _%self106235%_))
          (let ((_%h106247%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106237%_ '1 '#f '#f)))
                (_%key?106249%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106237%_ '2 '#f '#f))))
            ((lambda (_%g106251106253%_)
               (if (_%g106251106253%_ _%key106232%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key106232%_))))
             _%key?106249%_)
            (&HashTable-ref _%h106247%_ _%key106232%_ _%default106233%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref103749%_
       '#f))
    (define _%checked-hash-table::set!103752%_
      (lambda (_%self103751106081%_ _%key106083%_ _%value106084%_)
        (let* ((_%self106086%_ _%self103751106081%_)
               (_%self106088%_ _%self106086%_))
          (let ((_%h106098%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106088%_ '1 '#f '#f)))
                (_%key?106100%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106088%_ '2 '#f '#f))))
            ((lambda (_%g106102106104%_)
               (if (_%g106102106104%_ _%key106083%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key106083%_))))
             _%key?106100%_)
            (&HashTable-set! _%h106098%_ _%key106083%_ _%value106084%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!103752%_
       '#f))
    (define _%checked-hash-table::update!103755%_
      (lambda (_%self103754105933%_
               _%key105935%_
               _%update105936%_
               _%default105937%_)
        (let* ((_%self105939%_ _%self103754105933%_)
               (_%self105941%_ _%self105939%_))
          (let ((_%h105951%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105941%_ '1 '#f '#f)))
                (_%key?105953%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105941%_ '2 '#f '#f))))
            ((lambda (_%key?105956%_)
               (if (_%key?105956%_ _%key105935%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key105935%_)))
               (if (procedure? _%update105936%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%update105936%_))))
             _%key?105953%_)
            (&HashTable-update!
             _%h105951%_
             _%key105935%_
             _%update105936%_
             _%default105937%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!103755%_
       '#f))
    (define _%checked-hash-table::delete!103758%_
      (lambda (_%self103757105785%_ _%key105787%_)
        (let* ((_%self105789%_ _%self103757105785%_)
               (_%self105791%_ _%self105789%_))
          (let ((_%h105801%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105791%_ '1 '#f '#f)))
                (_%key?105803%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105791%_ '2 '#f '#f))))
            ((lambda (_%g105805105807%_)
               (if (_%g105805105807%_ _%key105787%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key105787%_))))
             _%key?105803%_)
            (&HashTable-delete! _%h105801%_ _%key105787%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!103758%_
       '#f))
    (define _%checked-hash-table::for-each103761%_
      (lambda (_%self103760105639%_ _%proc105641%_)
        (let* ((_%self105643%_ _%self103760105639%_)
               (_%self105645%_ _%self105643%_))
          (let ((_%h105655%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105645%_ '1 '#f '#f)))
                (_%key?105657%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105645%_ '2 '#f '#f))))
            ((lambda (_%_105660%_)
               (if (procedure? _%proc105641%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%proc105641%_))))
             _%key?105657%_)
            (&HashTable-for-each _%h105655%_ _%proc105641%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each103761%_
       '#f))
    (define _%checked-hash-table::length103764%_
      (lambda (_%self103763105496%_)
        (let* ((_%self105499%_ _%self103763105496%_)
               (_%self105501%_ _%self105499%_))
          (let ((_%h105511%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105501%_ '1 '#f '#f)))
                (_%key?105513%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105501%_ '2 '#f '#f))))
            (&HashTable-length _%h105511%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'length
       _%checked-hash-table::length103764%_
       '#f))
    (define _%checked-hash-table::copy103767%_
      (lambda (_%self103766105353%_)
        (let* ((_%self105356%_ _%self103766105353%_)
               (_%self105358%_ _%self105356%_))
          (let ((_%h105368%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105358%_ '1 '#f '#f)))
                (_%key?105370%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105358%_ '2 '#f '#f))))
            (&HashTable-copy _%h105368%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'copy
       _%checked-hash-table::copy103767%_
       '#f))
    (define _%checked-hash-table::clear!103770%_
      (lambda (_%self103769105210%_)
        (let* ((_%self105213%_ _%self103769105210%_)
               (_%self105215%_ _%self105213%_))
          (let ((_%h105225%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105215%_ '1 '#f '#f)))
                (_%key?105227%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105215%_ '2 '#f '#f))))
            (&HashTable-clear! _%h105225%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'clear!
       _%checked-hash-table::clear!103770%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table105080%_
               _%count105081%_
               _%free105082%_
               _%hash105083%_
               _%test105084%_
               _%seed105085%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table105080%_
           _%count105081%_
           _%free105082%_
           _%hash105083%_
           _%test105084%_
           _%seed105085%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords104903%_
               _%size-hint104893104904%_
               _%seed104894104906%_
               _%test104895104908%_
               _%hash104896104910%_
               _%lock104897104912%_
               _%check104898104914%_
               _%weak-keys104899104916%_
               _%weak-values104900104918%_)
        (let* ((_%size-hint104921%_
                (if (eq? _%size-hint104893104904%_ absent-value)
                    '#f
                    _%size-hint104893104904%_))
               (_%seed104923%_
                (if (eq? _%seed104894104906%_ absent-value)
                    '#f
                    _%seed104894104906%_))
               (_%test104925%_
                (if (eq? _%test104895104908%_ absent-value)
                    equal?
                    _%test104895104908%_))
               (_%hash104927%_
                (if (eq? _%hash104896104910%_ absent-value)
                    '#f
                    _%hash104896104910%_))
               (_%lock104929%_
                (if (eq? _%lock104897104912%_ absent-value)
                    '#f
                    _%lock104897104912%_))
               (_%check104931%_
                (if (eq? _%check104898104914%_ absent-value)
                    '#f
                    _%check104898104914%_))
               (_%weak-keys104933%_
                (if (eq? _%weak-keys104899104916%_ absent-value)
                    '#f
                    _%weak-keys104899104916%_))
               (_%weak-values104935%_
                (if (eq? _%weak-values104900104918%_ absent-value)
                    '#f
                    _%weak-values104900104918%_)))
          (letrec ((_%table-seed104937%_
                    (lambda ()
                      (if (fixnum? _%seed104923%_)
                          _%seed104923%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock104938%_
                    (lambda (_%ht105058%_)
                      (if _%lock104929%_
                          (let ((_%$obj105063%_
                                 (let ((__tmp108198
                                        (let ((_%$obj105060%_ _%lock104929%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (##structure?
                                                      _%$obj105060%_))
                                                   (eq? Locker::t
                                                        (let ()
                                                          (declare (not safe))
                                                          (##structure-type
                                                           _%$obj105060%_)))
                                                   '#t)
                                              _%$obj105060%_
                                              (let ()
                                                (declare (not safe))
                                                (cast Locker::interface
                                                      _%$obj105060%_))))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _%ht105058%_
                                    __tmp108198))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj105063%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj105063%_)))
                                     '#t)
                                _%$obj105063%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj105063%_))))
                          _%ht105058%_)))
                   (_%wrap-checked104939%_
                    (lambda (_%ht105052%_ _%implicit105053%_)
                      (if _%check104931%_
                          (let ((_%$obj105055%_
                                 (let ((__tmp108199
                                        (if (procedure? _%check104931%_)
                                            _%check104931%_
                                            _%implicit105053%_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _%ht105052%_
                                    __tmp108199))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj105055%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj105055%_)))
                                     '#t)
                                _%$obj105055%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj105055%_))))
                          _%ht105052%_)))
                   (_%make104940%_
                    (lambda (_%kons105037%_
                             _%key?105038%_
                             _%hash105039%_
                             _%test105040%_)
                      (let* ((_%size105042%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint104921%_)))
                             (_%table105044%_
                              (let ((__tmp108200 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size105042%_ __tmp108200)))
                             (_%ht105049%_
                              (let ((_%$obj105046%_
                                     (_%kons105037%_
                                      _%table105044%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size105042%_ '2))
                                      _%hash105039%_
                                      _%test105040%_
                                      (_%table-seed104937%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj105046%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj105046%_)))
                                         '#t)
                                    _%$obj105046%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj105046%_))))))
                        (_%wrap-checked104939%_
                         (_%wrap-lock104938%_ _%ht105049%_)
                         _%key?105038%_))))
                   (_%make-gc-hash-table104941%_
                    (lambda ()
                      (let ((_%ht105035%_
                             (let ((_%$obj105032%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint104921%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj105032%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj105032%_)))
                                        '#t)
                                   _%$obj105032%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj105032%_))))))
                        (_%wrap-checked104939%_
                         (_%wrap-lock104938%_ _%ht105035%_)
                         true))))
                   (_%make-gambit-table104942%_
                    (lambda ()
                      (let* ((_%size105010%_
                              (let ((_%$e105007%_ _%size-hint104921%_))
                                (if _%$e105007%_
                                    _%$e105007%_
                                    (macro-absent-obj))))
                             (_%test105015%_
                              (let ((_%$e105012%_ _%test104925%_))
                                (if _%$e105012%_ _%$e105012%_ equal?)))
                             (_%hash105023%_
                              (let ((_%$e105017%_ _%hash104927%_))
                                (if _%$e105017%_
                                    _%$e105017%_
                                    (if (eq? _%test105015%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test105015%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht105028%_
                              (let ((_%$obj105025%_
                                     (make-table
                                      'size:
                                      _%size105010%_
                                      'test:
                                      _%test105015%_
                                      'hash:
                                      _%hash105023%_
                                      'weak-keys:
                                      _%weak-keys104933%_
                                      'weak-values:
                                      _%weak-values104935%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj105025%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj105025%_)))
                                         '#t)
                                    _%$obj105025%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj105025%_))))))
                        (_%wrap-checked104939%_
                         (_%wrap-lock104938%_ _%ht105028%_)
                         true)))))
            (if (or _%weak-keys104933%_ _%weak-values104935%_)
                (_%make-gambit-table104942%_)
                (if (and (or (eq? _%test104925%_ eq?)
                             (eq? _%test104925%_ ##eq?))
                         (or (not _%hash104927%_)
                             (eq? _%hash104927%_ eq?-hash)
                             (eq? _%hash104927%_ eq-hash))
                         (not _%seed104923%_))
                    (_%make-gc-hash-table104941%_)
                    (if (and (or (eq? _%test104925%_ eq?)
                                 (eq? _%test104925%_ ##eq?))
                             (or (not _%hash104927%_)
                                 (eq? _%hash104927%_ eq?-hash)
                                 (eq? _%hash104927%_ eq-hash)))
                        (_%make104940%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test104925%_ eqv?)
                                     (eq? _%test104925%_ ##eqv?))
                                 (or (not _%hash104927%_)
                                     (eq? _%hash104927%_ eqv?-hash)
                                     (eq? _%hash104927%_ eqv-hash)))
                            (_%make104940%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test104925%_ eq?)
                                         (eq? _%test104925%_ ##eq?))
                                     (or (eq? _%hash104927%_ symbolic-hash)
                                         (eq? _%hash104927%_ ##symbol-hash)))
                                (_%make104940%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test104925%_ eq?)
                                             (eq? _%test104925%_ ##eq?))
                                         (eq? _%hash104927%_ immediate-hash))
                                    (_%make104940%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test104925%_ equal?)
                                                 (eq? _%test104925%_ ##equal?)
                                                 (eq? _%test104925%_ string=?)
                                                 (eq? _%test104925%_
                                                      ##string=?))
                                             (or (eq? _%hash104927%_
                                                      string-hash)
                                                 (eq? _%hash104927%_
                                                      ##string=?-hash)))
                                        (_%make104940%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test104925%_ equal?)
                                                 (not _%hash104927%_))
                                            (_%make104940%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (not (procedure?
                                                      _%test104925%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _%test104925%_))
                                                (if (not (procedure?
                                                          _%hash104927%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _%hash104927%_))
                                                    (_%make104940%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash104927%_
                                                     _%test104925%_)))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords105070%_ . _%args105071%_)
        (apply make-hash-table__%
               _%@@keywords105070%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105070%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105070%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105070%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105070%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105070%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105070%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105070%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105070%_
                  'weak-values:
                  absent-value))
               _%args105071%_)))
    (define make-hash-table
      (lambda _%args104901105077%_
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
               _%args104901105077%_)))
    (define make-hash-table-eq
      (lambda _%args104890%_
        (apply make-hash-table 'test: eq? _%args104890%_)))
    (define make-hash-table-eqv
      (lambda _%args104888%_
        (apply make-hash-table 'test: eqv? _%args104888%_)))
    (define make-hash-table-symbolic
      (lambda _%args104886%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args104886%_)))
    (define make-hash-table-string
      (lambda _%args104884%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args104884%_)))
    (define make-hash-table-immediate
      (lambda _%args104882%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args104882%_)))
    (define list->hash-table
      (lambda (_%lst104879%_ . _%args104880%_)
        (list->hash-table!
         _%lst104879%_
         (apply make-hash-table
                'size:
                (length _%lst104879%_)
                _%args104880%_))))
    (define list->hash-table-eq
      (lambda (_%lst104876%_ . _%args104877%_)
        (list->hash-table!
         _%lst104876%_
         (apply make-hash-table-eq
                'size:
                (length _%lst104876%_)
                _%args104877%_))))
    (define list->hash-table-eqv
      (lambda (_%lst104873%_ . _%args104874%_)
        (list->hash-table!
         _%lst104873%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst104873%_)
                _%args104874%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst104870%_ . _%args104871%_)
        (list->hash-table!
         _%lst104870%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst104870%_)
                _%args104871%_))))
    (define list->hash-table-string
      (lambda (_%lst104867%_ . _%args104868%_)
        (list->hash-table!
         _%lst104867%_
         (apply make-hash-table-string
                'size:
                (length _%lst104867%_)
                _%args104868%_))))
    (define list->hash-table-immediate
      (lambda (_%lst104864%_ . _%args104865%_)
        (list->hash-table!
         _%lst104864%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst104864%_)
                _%args104865%_))))
    (define list->hash-table!
      (lambda (_%lst104831%_ _%h104832%_)
        (for-each
         (lambda (_%el104834%_)
           (let* ((_%el104835104842%_ _%el104834%_)
                  (_%E104837104846%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el104835104842%_
                              '([k . v])))
                     '#!void))
                  (_%K104838104852%_
                   (lambda (_%v104849%_ _%k104850%_)
                     (&HashTable-set! _%h104832%_ _%k104850%_ _%v104849%_))))
             (if (let () (declare (not safe)) (##pair? _%el104835104842%_))
                 (let ((_%hd104839104855%_
                        (let ()
                          (declare (not safe))
                          (##car _%el104835104842%_)))
                       (_%tl104840104857%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el104835104842%_))))
                   (let* ((_%k104860%_ _%hd104839104855%_)
                          (_%v104862%_ _%tl104840104857%_))
                     (_%K104838104852%_ _%v104862%_ _%k104860%_)))
                 (_%E104837104846%_))))
         _%lst104831%_)
        _%h104832%_))
    (define plist->hash-table
      (lambda (_%lst104828%_ . _%args104829%_)
        (plist->hash-table!
         _%lst104828%_
         (apply make-hash-table
                'size:
                (length _%lst104828%_)
                _%args104829%_))))
    (define plist->hash-table-eq
      (lambda (_%lst104825%_ . _%args104826%_)
        (plist->hash-table!
         _%lst104825%_
         (apply make-hash-table-eq
                'size:
                (length _%lst104825%_)
                _%args104826%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst104822%_ . _%args104823%_)
        (plist->hash-table!
         _%lst104822%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst104822%_)
                _%args104823%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst104819%_ . _%args104820%_)
        (plist->hash-table!
         _%lst104819%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst104819%_)
                _%args104820%_))))
    (define plist->hash-table-string
      (lambda (_%lst104816%_ . _%args104817%_)
        (plist->hash-table!
         _%lst104816%_
         (apply make-hash-table-string
                'size:
                (length _%lst104816%_)
                _%args104817%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst104813%_ . _%args104814%_)
        (plist->hash-table!
         _%lst104813%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst104813%_)
                _%args104814%_))))
    (define plist->hash-table!
      (lambda (_%lst104753%_ _%h104754%_)
        (let _%loop104756%_ ((_%rest104758%_ _%lst104753%_))
          (let* ((_%rest104759104771%_ _%rest104758%_)
                 (_%else104762104779%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst104753%_)))))
            (let ((_%K104765104794%_
                   (lambda (_%rest104790%_ _%val104791%_ _%key104792%_)
                     (&HashTable-set! _%h104754%_ _%key104792%_ _%val104791%_)
                     (_%loop104756%_ _%rest104790%_)))
                  (_%K104764104784%_ (lambda () _%h104754%_)))
              (let ((_%try-match104761104787%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest104759104771%_))
                           (_%K104764104784%_)
                           (_%else104762104779%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest104759104771%_))
                    (let ((_%tl104767104799%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest104759104771%_)))
                          (_%hd104766104797%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest104759104771%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl104767104799%_))
                          (let ((_%tl104769104806%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl104767104799%_)))
                                (_%hd104768104804%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl104767104799%_))))
                            (let ((_%key104802%_ _%hd104766104797%_)
                                  (_%val104809%_ _%hd104768104804%_)
                                  (_%rest104811%_ _%tl104769104806%_))
                              (_%K104765104794%_
                               _%rest104811%_
                               _%val104809%_
                               _%key104802%_)))
                          (_%else104762104779%_)))
                    (_%try-match104761104787%_))))))))
    (define hash-length
      (lambda (_%h104735%_)
        (let* ((_%h104741%_
                (let ((_%$obj104738%_ _%h104735%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104738%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104738%_)))
                           '#t)
                      _%$obj104738%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104738%_)))))
               (_%h104743%_ _%h104741%_))
          (__hash-length _%h104743%_))))
    (define __hash-length
      (lambda (_%h104723%_)
        (let ((_%h104726%_ _%h104723%_)) (__HashTable-length _%h104726%_))))
    (define hash-ref__%
      (lambda (_%h104691%_ _%key104692%_ _%default104693%_)
        (let* ((_%h104699%_
                (let ((_%$obj104696%_ _%h104691%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104696%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104696%_)))
                           '#t)
                      _%$obj104696%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104696%_)))))
               (_%h104701%_ _%h104699%_))
          (__hash-ref__% _%h104701%_ _%key104692%_ _%default104693%_))))
    (define hash-ref__0
      (lambda (_%h104714%_ _%key104715%_)
        (let ((_%default104717%_ (macro-absent-obj)))
          (hash-ref__% _%h104714%_ _%key104715%_ _%default104717%_))))
    (define hash-ref
      (lambda _g108202_
        (let ((_g108201_ (let () (declare (not safe)) (##length _g108202_))))
          (cond ((let () (declare (not safe)) (##fx= _g108201_ 2))
                 (apply hash-ref__0 _g108202_))
                ((let () (declare (not safe)) (##fx= _g108201_ 3))
                 (apply hash-ref__% _g108202_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g108202_))))))
    (define __hash-ref__%
      (lambda (_%h104662%_ _%key104663%_ _%default104664%_)
        (let* ((_%h104667%_ _%h104662%_)
               (_%result104676%_
                (&HashTable-ref _%h104667%_ _%key104663%_ _%default104664%_)))
          (if (eq? _%result104676%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h104667%_
               'key:
               _%key104663%_)
              _%result104676%_))))
    (define __hash-ref__0
      (lambda (_%h104681%_ _%key104682%_)
        (let ((_%default104684%_ (macro-absent-obj)))
          (__hash-ref__% _%h104681%_ _%key104682%_ _%default104684%_))))
    (define __hash-ref
      (lambda _g108204_
        (let ((_g108203_ (let () (declare (not safe)) (##length _g108204_))))
          (cond ((let () (declare (not safe)) (##fx= _g108203_ 2))
                 (apply __hash-ref__0 _g108204_))
                ((let () (declare (not safe)) (##fx= _g108203_ 3))
                 (apply __hash-ref__% _g108204_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g108204_))))))
    (define hash-get
      (lambda (_%h104642%_ _%key104643%_)
        (let* ((_%h104649%_
                (let ((_%$obj104646%_ _%h104642%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104646%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104646%_)))
                           '#t)
                      _%$obj104646%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104646%_)))))
               (_%h104651%_ _%h104649%_))
          (__hash-get _%h104651%_ _%key104643%_))))
    (define __hash-get
      (lambda (_%h104629%_ _%key104630%_)
        (let ((_%h104633%_ _%h104629%_))
          (&HashTable-ref _%h104633%_ _%key104630%_ '#f))))
    (define hash-put!
      (lambda (_%h104609%_ _%key104610%_ _%value104611%_)
        (let* ((_%h104617%_
                (let ((_%$obj104614%_ _%h104609%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104614%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104614%_)))
                           '#t)
                      _%$obj104614%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104614%_)))))
               (_%h104619%_ _%h104617%_))
          (__hash-put! _%h104619%_ _%key104610%_ _%value104611%_))))
    (define __hash-put!
      (lambda (_%h104595%_ _%key104596%_ _%value104597%_)
        (let ((_%h104600%_ _%h104595%_))
          (&HashTable-set! _%h104600%_ _%key104596%_ _%value104597%_))))
    (define hash-update!__%
      (lambda (_%h104560%_ _%key104561%_ _%update104562%_ _%default104563%_)
        (let* ((_%h104569%_
                (let ((_%$obj104566%_ _%h104560%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104566%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104566%_)))
                           '#t)
                      _%$obj104566%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104566%_)))))
               (_%h104571%_ _%h104569%_))
          (__hash-update!__%
           _%h104571%_
           _%key104561%_
           _%update104562%_
           _%default104563%_))))
    (define hash-update!__0
      (lambda (_%h104584%_ _%key104585%_ _%update104586%_)
        (let ((_%default104588%_ '#!void))
          (hash-update!__%
           _%h104584%_
           _%key104585%_
           _%update104586%_
           _%default104588%_))))
    (define hash-update!
      (lambda _g108206_
        (let ((_g108205_ (let () (declare (not safe)) (##length _g108206_))))
          (cond ((let () (declare (not safe)) (##fx= _g108205_ 3))
                 (apply hash-update!__0 _g108206_))
                ((let () (declare (not safe)) (##fx= _g108205_ 4))
                 (apply hash-update!__% _g108206_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g108206_))))))
    (define __hash-update!__%
      (lambda (_%h104530%_ _%key104531%_ _%update104532%_ _%default104533%_)
        (let ((_%h104536%_ _%h104530%_))
          (HashTable-update!
           _%h104536%_
           _%key104531%_
           _%update104532%_
           _%default104533%_))))
    (define __hash-update!__0
      (lambda (_%h104548%_ _%key104549%_ _%update104550%_)
        (let ((_%default104552%_ '#!void))
          (__hash-update!__%
           _%h104548%_
           _%key104549%_
           _%update104550%_
           _%default104552%_))))
    (define __hash-update!
      (lambda _g108208_
        (let ((_g108207_ (let () (declare (not safe)) (##length _g108208_))))
          (cond ((let () (declare (not safe)) (##fx= _g108207_ 3))
                 (apply __hash-update!__0 _g108208_))
                ((let () (declare (not safe)) (##fx= _g108207_ 4))
                 (apply __hash-update!__% _g108208_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g108208_))))))
    (define hash-remove!
      (lambda (_%h104510%_ _%key104511%_)
        (let* ((_%h104517%_
                (let ((_%$obj104514%_ _%h104510%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104514%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104514%_)))
                           '#t)
                      _%$obj104514%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104514%_)))))
               (_%h104519%_ _%h104517%_))
          (__hash-remove! _%h104519%_ _%key104511%_))))
    (define __hash-remove!
      (lambda (_%h104497%_ _%key104498%_)
        (let ((_%h104501%_ _%h104497%_))
          (&HashTable-delete! _%h104501%_ _%key104498%_))))
    (define hash-key?
      (lambda (_%h104478%_ _%k104479%_)
        (let* ((_%h104485%_
                (let ((_%$obj104482%_ _%h104478%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104482%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104482%_)))
                           '#t)
                      _%$obj104482%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104482%_)))))
               (_%h104487%_ _%h104485%_))
          (__hash-key? _%h104487%_ _%k104479%_))))
    (define __hash-key?
      (lambda (_%h104465%_ _%k104466%_)
        (let ((_%h104469%_ _%h104465%_))
          (not (eq? (&HashTable-ref _%h104469%_ _%k104466%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h104447%_)
        (let* ((_%h104453%_
                (let ((_%$obj104450%_ _%h104447%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104450%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104450%_)))
                           '#t)
                      _%$obj104450%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104450%_)))))
               (_%h104455%_ _%h104453%_))
          (__hash->list _%h104455%_))))
    (define __hash->list
      (lambda (_%h104430%_)
        (let* ((_%h104433%_ _%h104430%_) (_%lst104442%_ '()))
          (&HashTable-for-each
           _%h104433%_
           (lambda (_%k104444%_ _%v104445%_)
             (set! _%lst104442%_
                   (cons (cons _%k104444%_ _%v104445%_) _%lst104442%_))))
          _%lst104442%_)))
    (define hash->plist
      (lambda (_%h104412%_)
        (let* ((_%h104418%_
                (let ((_%$obj104415%_ _%h104412%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104415%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104415%_)))
                           '#t)
                      _%$obj104415%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104415%_)))))
               (_%h104420%_ _%h104418%_))
          (__hash->plist _%h104420%_))))
    (define __hash->plist
      (lambda (_%h104395%_)
        (let* ((_%h104398%_ _%h104395%_) (_%lst104407%_ '()))
          (&HashTable-for-each
           _%h104398%_
           (lambda (_%k104409%_ _%v104410%_)
             (set! _%lst104407%_
                   (cons _%k104409%_ (cons _%v104410%_ _%lst104407%_)))))
          _%lst104407%_)))
    (define hash-for-each
      (lambda (_%proc104366%_ _%h104367%_)
        (if (procedure? _%proc104366%_)
            (let* ((_%proc104371%_ _%proc104366%_)
                   (_%h104383%_
                    (let ((_%$obj104380%_ _%h104367%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104380%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104380%_)))
                               '#t)
                          _%$obj104380%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104380%_)))))
                   (_%h104385%_ _%h104383%_))
              (__hash-for-each _%proc104371%_ _%h104385%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@560.22-560.26"
               'contract:
               'procedure?
               'value:
               _%proc104366%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc104345%_ _%h104346%_)
        (let* ((_%proc104349%_ _%proc104345%_) (_%h104357%_ _%h104346%_))
          (&HashTable-for-each _%h104357%_ _%proc104349%_))))
    (define hash-map
      (lambda (_%proc104316%_ _%h104317%_)
        (if (procedure? _%proc104316%_)
            (let* ((_%proc104321%_ _%proc104316%_)
                   (_%h104333%_
                    (let ((_%$obj104330%_ _%h104317%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104330%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104330%_)))
                               '#t)
                          _%$obj104330%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104330%_)))))
                   (_%h104335%_ _%h104333%_))
              (__hash-map _%proc104321%_ _%h104335%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@563.17-563.21"
               'contract:
               'procedure?
               'value:
               _%proc104316%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc104290%_ _%h104291%_)
        (let* ((_%proc104294%_ _%proc104290%_)
               (_%h104302%_ _%h104291%_)
               (_%result104311%_ '()))
          (&HashTable-for-each
           _%h104302%_
           (lambda (_%k104313%_ _%v104314%_)
             (set! _%result104311%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc104294%_ _%k104313%_ _%v104314%_))
                         _%result104311%_))))
          _%result104311%_)))
    (define hash-fold
      (lambda (_%proc104260%_ _%iv104261%_ _%h104262%_)
        (if (procedure? _%proc104260%_)
            (let* ((_%proc104266%_ _%proc104260%_)
                   (_%h104278%_
                    (let ((_%$obj104275%_ _%h104262%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104275%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104275%_)))
                               '#t)
                          _%$obj104275%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104275%_)))))
                   (_%h104280%_ _%h104278%_))
              (__hash-fold _%proc104266%_ _%iv104261%_ _%h104280%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@568.18-568.22"
               'contract:
               'procedure?
               'value:
               _%proc104260%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc104233%_ _%iv104234%_ _%h104235%_)
        (let* ((_%proc104238%_ _%proc104233%_)
               (_%h104246%_ _%h104235%_)
               (_%result104255%_ _%iv104234%_))
          (&HashTable-for-each
           _%h104246%_
           (lambda (_%k104257%_ _%v104258%_)
             (set! _%result104255%_
                   (let ()
                     (declare (not safe))
                     (_%proc104238%_
                      _%k104257%_
                      _%v104258%_
                      _%result104255%_)))))
          _%result104255%_)))
    (define hash-find__%
      (lambda (_%proc104191%_ _%h104192%_ _%default-value104193%_)
        (if (procedure? _%proc104191%_)
            (let* ((_%proc104197%_ _%proc104191%_)
                   (_%h104209%_
                    (let ((_%$obj104206%_ _%h104192%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104206%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104206%_)))
                               '#t)
                          _%$obj104206%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104206%_)))))
                   (_%h104211%_ _%h104209%_))
              (__hash-find__%
               _%proc104197%_
               _%h104211%_
               _%default-value104193%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@573.18-573.22"
               'contract:
               'procedure?
               'value:
               _%proc104191%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc104224%_ _%h104225%_)
        (let ((_%default-value104227%_ '#f))
          (hash-find__% _%proc104224%_ _%h104225%_ _%default-value104227%_))))
    (define hash-find
      (lambda _g108210_
        (let ((_g108209_ (let () (declare (not safe)) (##length _g108210_))))
          (cond ((let () (declare (not safe)) (##fx= _g108209_ 2))
                 (apply hash-find__0 _g108210_))
                ((let () (declare (not safe)) (##fx= _g108209_ 3))
                 (apply hash-find__% _g108210_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g108210_))))))
    (define __hash-find__%
      (lambda (_%proc104148%_ _%h104149%_ _%default-value104150%_)
        (let* ((_%proc104153%_ _%proc104148%_)
               (_%h104161%_ _%h104149%_)
               (__tmp108211
                (lambda (_%return104170%_)
                  (&HashTable-for-each
                   _%h104161%_
                   (lambda (_%k104172%_ _%v104173%_)
                     (let ((_%$e104175%_
                            (let ()
                              (declare (not safe))
                              (_%proc104153%_ _%k104172%_ _%v104173%_))))
                       (if _%$e104175%_
                           (_%return104170%_ _%$e104175%_)
                           '#!void))))
                  _%default-value104150%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp108211))))
    (define __hash-find__0
      (lambda (_%proc104181%_ _%h104182%_)
        (let ((_%default-value104184%_ '#f))
          (__hash-find__%
           _%proc104181%_
           _%h104182%_
           _%default-value104184%_))))
    (define __hash-find
      (lambda _g108213_
        (let ((_g108212_ (let () (declare (not safe)) (##length _g108213_))))
          (cond ((let () (declare (not safe)) (##fx= _g108212_ 2))
                 (apply __hash-find__0 _g108213_))
                ((let () (declare (not safe)) (##fx= _g108212_ 3))
                 (apply __hash-find__% _g108213_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g108213_))))))
    (define hash-keys
      (lambda (_%h104129%_)
        (let* ((_%h104135%_
                (let ((_%$obj104132%_ _%h104129%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104132%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104132%_)))
                           '#t)
                      _%$obj104132%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104132%_)))))
               (_%h104137%_ _%h104135%_))
          (__hash-keys _%h104137%_))))
    (define __hash-keys
      (lambda (_%h104112%_)
        (let* ((_%h104115%_ _%h104112%_) (_%result104124%_ '()))
          (&HashTable-for-each
           _%h104115%_
           (lambda (_%k104126%_ _%v104127%_)
             (set! _%result104124%_ (cons _%k104126%_ _%result104124%_))))
          _%result104124%_)))
    (define hash-values
      (lambda (_%h104094%_)
        (let* ((_%h104100%_
                (let ((_%$obj104097%_ _%h104094%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104097%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104097%_)))
                           '#t)
                      _%$obj104097%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104097%_)))))
               (_%h104102%_ _%h104100%_))
          (__hash-values _%h104102%_))))
    (define __hash-values
      (lambda (_%h104077%_)
        (let* ((_%h104080%_ _%h104077%_) (_%result104089%_ '()))
          (&HashTable-for-each
           _%h104080%_
           (lambda (_%k104091%_ _%v104092%_)
             (set! _%result104089%_ (cons _%v104092%_ _%result104089%_))))
          _%result104089%_)))
    (define hash-copy
      (lambda (_%h104059%_)
        (let* ((_%h104065%_
                (let ((_%$obj104062%_ _%h104059%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104062%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104062%_)))
                           '#t)
                      _%$obj104062%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104062%_)))))
               (_%h104067%_ _%h104065%_))
          (__hash-copy _%h104067%_))))
    (define __hash-copy
      (lambda (_%h104047%_)
        (let ((_%h104050%_ _%h104047%_)) (__HashTable-copy _%h104050%_))))
    (define hash-clear!
      (lambda (_%h104029%_)
        (let* ((_%h104035%_
                (let ((_%$obj104032%_ _%h104029%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104032%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104032%_)))
                           '#t)
                      _%$obj104032%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104032%_)))))
               (_%h104037%_ _%h104035%_))
          (__hash-clear! _%h104037%_))))
    (define __hash-clear!
      (lambda (_%h104017%_)
        (let ((_%h104020%_ _%h104017%_)) (&HashTable-clear! _%h104020%_))))
    (define hash-merge
      (lambda (_%h103998%_ . _%rest103999%_)
        (let* ((_%h104005%_
                (let ((_%$obj104002%_ _%h103998%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104002%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104002%_)))
                           '#t)
                      _%$obj104002%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104002%_)))))
               (_%h104007%_ _%h104005%_))
          (declare (not safe))
          (##apply __hash-merge _%h104007%_ _%rest103999%_))))
    (define __hash-merge
      (lambda (_%h103983%_ . _%rest103984%_)
        (let* ((_%h103987%_ _%h103983%_)
               (_%copy103996%_ (__HashTable-copy _%h103987%_)))
          (apply hash-merge! _%copy103996%_ _%rest103984%_)
          _%copy103996%_)))
    (define hash-merge!
      (lambda (_%h103964%_ . _%rest103965%_)
        (let* ((_%h103971%_
                (let ((_%$obj103968%_ _%h103964%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103968%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103968%_)))
                           '#t)
                      _%$obj103968%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103968%_)))))
               (_%h103973%_ _%h103971%_))
          (declare (not safe))
          (##apply __hash-merge! _%h103973%_ _%rest103965%_))))
    (define __hash-merge!
      (lambda (_%h103927%_ . _%rest103928%_)
        (let ((_%h103931%_ _%h103927%_))
          (let ((__tmp108214
                 (lambda (_%hr103940%_)
                   (let* ((_%hr103946%_
                           (let ((_%$obj103943%_ _%hr103940%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj103943%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj103943%_)))
                                      '#t)
                                 _%$obj103943%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj103943%_)))))
                          (_%hr103948%_ _%hr103946%_))
                     (&HashTable-for-each
                      _%hr103948%_
                      (lambda (_%k103961%_ _%v103962%_)
                        (if (__hash-key? _%h103931%_ _%k103961%_)
                            '#!void
                            (&HashTable-set!
                             _%h103931%_
                             _%k103961%_
                             _%v103962%_))))))))
            (declare (not safe))
            (##for-each __tmp108214 _%rest103928%_))
          _%h103931%_)))))
