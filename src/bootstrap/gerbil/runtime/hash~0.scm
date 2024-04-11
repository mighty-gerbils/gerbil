(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1712846033)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp108134 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp108134
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args108114%_
        (apply make-instance UnboundKeyError::t _%$args108114%_)))
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
      (lambda (_%where107988%_ _%message107989%_ . _%irritants107990%_)
        (let ((__tmp108135
               (let ((__obj108128
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj108128
                    _%message107989%_
                    'where:
                    _%where107988%_
                    'irritants:
                    _%irritants107990%_))
                 __obj108128)))
          (declare (not safe))
          (raise __tmp108135))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp108136 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp108136
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
      (lambda (_%obj107986%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj107986%_))))
    (define try-HashTable
      (lambda (_%obj107984%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj107984%_))))
    (define HashTable?
      (lambda (_%obj107982%_)
        (let ((__tmp108137
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj107982%_ __tmp108137))))
    (define is-HashTable?
      (lambda (_%obj107980%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj107980%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self107964%_)
        (let* ((_%self107969%_
                (let ((_%$obj107966%_ _%self107964%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107966%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107966%_)))
                           '#t)
                      _%$obj107966%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107966%_)))))
               (_%self107971%_ _%self107969%_))
          (&HashTable-clear! _%self107971%_))))
    (define &HashTable-clear!
      (lambda (_%self107949%_)
        (let ((_%self107951%_ _%self107949%_))
          (declare (not safe))
          (let ((_%obj107961%_
                 (##unchecked-structure-ref _%self107951%_ '1 '#f 'clear!))
                (_%f107962%_
                 (##unchecked-structure-ref _%self107951%_ '2 '#f 'clear!)))
            (_%f107962%_ _%obj107961%_)))))
    (define HashTable-copy
      (lambda (_%self107933%_)
        (let* ((_%self107938%_
                (let ((_%$obj107935%_ _%self107933%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107935%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107935%_)))
                           '#t)
                      _%$obj107935%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107935%_)))))
               (_%self107940%_ _%self107938%_))
          (__HashTable-copy _%self107940%_))))
    (define __HashTable-copy
      (lambda (_%self107920%_)
        (let* ((_%self107922%_ _%self107920%_)
               (_%$obj107930%_ (&HashTable-copy _%self107922%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj107930%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj107930%_)))
                   '#t)
              _%$obj107930%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj107930%_))))))
    (define &HashTable-copy
      (lambda (_%self107905%_)
        (let ((_%self107907%_ _%self107905%_))
          (declare (not safe))
          (let ((_%obj107917%_
                 (##unchecked-structure-ref _%self107907%_ '1 '#f 'copy))
                (_%f107918%_
                 (##unchecked-structure-ref _%self107907%_ '3 '#f 'copy)))
            (_%f107918%_ _%obj107917%_)))))
    (define HashTable-delete!
      (lambda (_%self107888%_ _%key107889%_)
        (let* ((_%self107894%_
                (let ((_%$obj107891%_ _%self107888%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107891%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107891%_)))
                           '#t)
                      _%$obj107891%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107891%_)))))
               (_%self107896%_ _%self107894%_))
          (&HashTable-delete! _%self107896%_ _%key107889%_))))
    (define &HashTable-delete!
      (lambda (_%self107872%_ _%key107873%_)
        (let ((_%self107875%_ _%self107872%_))
          (declare (not safe))
          (let ((_%obj107885%_
                 (##unchecked-structure-ref _%self107875%_ '1 '#f 'delete!))
                (_%f107886%_
                 (##unchecked-structure-ref _%self107875%_ '4 '#f 'delete!)))
            (_%f107886%_ _%obj107885%_ _%key107873%_)))))
    (define HashTable-for-each
      (lambda (_%self107845%_ _%proc107846%_)
        (let* ((_%self107851%_
                (let ((_%$obj107848%_ _%self107845%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107848%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107848%_)))
                           '#t)
                      _%$obj107848%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107848%_)))))
               (_%self107853%_ _%self107851%_))
          (if (procedure? _%proc107846%_)
              (let ((_%proc107862%_ _%proc107846%_))
                (&HashTable-for-each _%self107853%_ _%proc107862%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc107846%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self107821%_ _%proc107822%_)
        (let* ((_%self107824%_ _%self107821%_) (_%proc107831%_ _%proc107822%_))
          (declare (not safe))
          (let ((_%obj107842%_
                 (##unchecked-structure-ref _%self107824%_ '1 '#f 'for-each))
                (_%f107843%_
                 (##unchecked-structure-ref _%self107824%_ '5 '#f 'for-each)))
            (_%f107843%_ _%obj107842%_ _%proc107831%_)))))
    (define HashTable-length
      (lambda (_%self107805%_)
        (let* ((_%self107810%_
                (let ((_%$obj107807%_ _%self107805%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107807%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107807%_)))
                           '#t)
                      _%$obj107807%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107807%_)))))
               (_%self107812%_ _%self107810%_))
          (__HashTable-length _%self107812%_))))
    (define __HashTable-length
      (lambda (_%self107792%_)
        (let* ((_%self107794%_ _%self107792%_)
               (_%val107802%_ (&HashTable-length _%self107794%_)))
          _%val107802%_)))
    (define &HashTable-length
      (lambda (_%self107777%_)
        (let ((_%self107779%_ _%self107777%_))
          (declare (not safe))
          (let ((_%obj107789%_
                 (##unchecked-structure-ref _%self107779%_ '1 '#f 'length))
                (_%f107790%_
                 (##unchecked-structure-ref _%self107779%_ '6 '#f 'length)))
            (_%f107790%_ _%obj107789%_)))))
    (define HashTable-ref
      (lambda (_%self107759%_ _%key107760%_ _%default107761%_)
        (let* ((_%self107766%_
                (let ((_%$obj107763%_ _%self107759%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107763%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107763%_)))
                           '#t)
                      _%$obj107763%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107763%_)))))
               (_%self107768%_ _%self107766%_))
          (&HashTable-ref _%self107768%_ _%key107760%_ _%default107761%_))))
    (define &HashTable-ref
      (lambda (_%self107742%_ _%key107743%_ _%default107744%_)
        (let ((_%self107746%_ _%self107742%_))
          (declare (not safe))
          (let ((_%obj107756%_
                 (##unchecked-structure-ref _%self107746%_ '1 '#f 'ref))
                (_%f107757%_
                 (##unchecked-structure-ref _%self107746%_ '7 '#f 'ref)))
            (_%f107757%_ _%obj107756%_ _%key107743%_ _%default107744%_)))))
    (define HashTable-set!
      (lambda (_%self107724%_ _%key107725%_ _%value107726%_)
        (let* ((_%self107731%_
                (let ((_%$obj107728%_ _%self107724%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107728%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107728%_)))
                           '#t)
                      _%$obj107728%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107728%_)))))
               (_%self107733%_ _%self107731%_))
          (&HashTable-set! _%self107733%_ _%key107725%_ _%value107726%_))))
    (define &HashTable-set!
      (lambda (_%self107707%_ _%key107708%_ _%value107709%_)
        (let ((_%self107711%_ _%self107707%_))
          (declare (not safe))
          (let ((_%obj107721%_
                 (##unchecked-structure-ref _%self107711%_ '1 '#f 'set!))
                (_%f107722%_
                 (##unchecked-structure-ref _%self107711%_ '8 '#f 'set!)))
            (_%f107722%_ _%obj107721%_ _%key107708%_ _%value107709%_)))))
    (define HashTable-update!
      (lambda (_%self107678%_ _%key107679%_ _%proc107680%_ _%default107681%_)
        (let* ((_%self107686%_
                (let ((_%$obj107683%_ _%self107678%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107683%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107683%_)))
                           '#t)
                      _%$obj107683%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj107683%_)))))
               (_%self107688%_ _%self107686%_))
          (if (procedure? _%proc107680%_)
              (let ((_%proc107697%_ _%proc107680%_))
                (&HashTable-update!
                 _%self107688%_
                 _%key107679%_
                 _%proc107697%_
                 _%default107681%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc107680%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self107650%_ _%key107651%_ _%proc107652%_ _%default107653%_)
        (let* ((_%self107655%_ _%self107650%_) (_%proc107662%_ _%proc107652%_))
          (declare (not safe))
          (let ((_%obj107673%_
                 (##unchecked-structure-ref _%self107655%_ '1 '#f 'update!))
                (_%f107675%_
                 (##unchecked-structure-ref _%self107655%_ '9 '#f 'update!)))
            (_%f107675%_
             _%obj107673%_
             _%key107651%_
             _%proc107662%_
             _%default107653%_)))))
    (define Locker::t
      (let ((__tmp108138 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp108138
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
      (lambda (_%obj107648%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj107648%_))))
    (define try-Locker
      (lambda (_%obj107646%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj107646%_))))
    (define Locker?
      (lambda (_%obj107644%_)
        (let ((__tmp108139
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj107644%_ __tmp108139))))
    (define is-Locker?
      (lambda (_%obj107642%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj107642%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self107626%_)
        (let* ((_%self107631%_
                (let ((_%$obj107628%_ _%self107626%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107628%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107628%_)))
                           '#t)
                      _%$obj107628%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj107628%_)))))
               (_%self107633%_ _%self107631%_))
          (&Locker-read-lock! _%self107633%_))))
    (define &Locker-read-lock!
      (lambda (_%self107611%_)
        (let ((_%self107613%_ _%self107611%_))
          (declare (not safe))
          (let ((_%obj107623%_
                 (##unchecked-structure-ref _%self107613%_ '1 '#f 'read-lock!))
                (_%f107624%_
                 (##unchecked-structure-ref
                  _%self107613%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f107624%_ _%obj107623%_)))))
    (define Locker-read-unlock!
      (lambda (_%self107595%_)
        (let* ((_%self107600%_
                (let ((_%$obj107597%_ _%self107595%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107597%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107597%_)))
                           '#t)
                      _%$obj107597%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj107597%_)))))
               (_%self107602%_ _%self107600%_))
          (&Locker-read-unlock! _%self107602%_))))
    (define &Locker-read-unlock!
      (lambda (_%self107580%_)
        (let ((_%self107582%_ _%self107580%_))
          (declare (not safe))
          (let ((_%obj107592%_
                 (##unchecked-structure-ref
                  _%self107582%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f107593%_
                 (##unchecked-structure-ref
                  _%self107582%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f107593%_ _%obj107592%_)))))
    (define Locker-write-lock!
      (lambda (_%self107564%_)
        (let* ((_%self107569%_
                (let ((_%$obj107566%_ _%self107564%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107566%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107566%_)))
                           '#t)
                      _%$obj107566%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj107566%_)))))
               (_%self107571%_ _%self107569%_))
          (&Locker-write-lock! _%self107571%_))))
    (define &Locker-write-lock!
      (lambda (_%self107549%_)
        (let ((_%self107551%_ _%self107549%_))
          (declare (not safe))
          (let ((_%obj107561%_
                 (##unchecked-structure-ref
                  _%self107551%_
                  '1
                  '#f
                  'write-lock!))
                (_%f107562%_
                 (##unchecked-structure-ref
                  _%self107551%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f107562%_ _%obj107561%_)))))
    (define Locker-write-unlock!
      (lambda (_%self107533%_)
        (let* ((_%self107538%_
                (let ((_%$obj107535%_ _%self107533%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj107535%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj107535%_)))
                           '#t)
                      _%$obj107535%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj107535%_)))))
               (_%self107540%_ _%self107538%_))
          (&Locker-write-unlock! _%self107540%_))))
    (define &Locker-write-unlock!
      (lambda (_%self107516%_)
        (let ((_%self107518%_ _%self107516%_))
          (declare (not safe))
          (let ((_%obj107528%_
                 (##unchecked-structure-ref
                  _%self107518%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f107530%_
                 (##unchecked-structure-ref
                  _%self107518%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f107530%_ _%obj107528%_)))))
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
      (lambda (_%table107509%_
               _%key107510%_
               _%update107511%_
               _%default107512%_)
        (let ((_%result107514%_
               (table-ref _%table107509%_ _%key107510%_ _%default107512%_)))
          (table-set!
           _%table107509%_
           _%key107510%_
           (_%update107511%_ _%default107512%_)))))
    (define gambit-table-for-each
      (lambda (_%table107506%_ _%proc107507%_)
        (table-for-each _%proc107507%_ _%table107506%_)))
    (define gambit-table-clear!
      (lambda (_%table107504%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table107504%_ '0 '5 '#f '#f))))
    (let ((__tmp108140 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108140 'ref table-ref))
    (let ((__tmp108141 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108141 'set! table-set!))
    (let ((__tmp108142 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108142 'update! gambit-table-update!))
    (let ((__tmp108143 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108143 'delete! table-set!))
    (let ((__tmp108144 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108144 'for-each gambit-table-for-each))
    (let ((__tmp108145 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108145 'length table-length))
    (let ((__tmp108146 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108146 'copy table-copy))
    (let ((__tmp108147 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp108147 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots107486%_ '(table count free hash test seed))
             (_%slot-vector107488%_ (list->vector (cons '#f _%slots107486%_)))
             (_%slot-table107495%_
              (let ((_%slot-table107490%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp108150
                       (lambda (_%slot107492%_ _%field107493%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107490%_
                            _%slot107492%_
                            _%field107493%_))
                         (let ((__tmp108151
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot107492%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107490%_
                            __tmp108151
                            _%field107493%_))))
                      (__tmp108148
                       (let ((__tmp108149
                              (let ()
                                (declare (not safe))
                                (##length _%slots107486%_))))
                         (declare (not safe))
                         (##iota __tmp108149 '1))))
                  (declare (not safe))
                  (##for-each __tmp108150 _%slots107486%_ __tmp108148))
                _%slot-table107490%_))
             (_%flags107497%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields107499%_ '#())
             (_%properties107501%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots107486%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp108152 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags107497%_
         __table::t
         _%fields107499%_
         __tmp108152
         _%slot-vector107488%_
         _%slot-table107495%_
         _%properties107501%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots107468%_ '(gcht immediate))
             (_%slot-vector107470%_ (list->vector (cons '#f _%slots107468%_)))
             (_%slot-table107477%_
              (let ((_%slot-table107472%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp108155
                       (lambda (_%slot107474%_ _%field107475%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107472%_
                            _%slot107474%_
                            _%field107475%_))
                         (let ((__tmp108156
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot107474%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107472%_
                            __tmp108156
                            _%field107475%_))))
                      (__tmp108153
                       (let ((__tmp108154
                              (let ()
                                (declare (not safe))
                                (##length _%slots107468%_))))
                         (declare (not safe))
                         (##iota __tmp108154 '1))))
                  (declare (not safe))
                  (##for-each __tmp108155 _%slots107468%_ __tmp108153))
                _%slot-table107472%_))
             (_%flags107479%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields107481%_ '#())
             (_%properties107483%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots107468%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp108157 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags107479%_
         __gc-table::t
         _%fields107481%_
         __tmp108157
         _%slot-vector107470%_
         _%slot-table107477%_
         _%properties107483%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp108159 (list))
            (__tmp108158
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp108159
         '(table lock)
         __tmp108158
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args107465%_
        (apply make-instance locked-hash-table::t _%$args107465%_)))
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
      (let ((__tmp108161 (list))
            (__tmp108160
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp108161
         '(table key-check)
         __tmp108160
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args107462%_
        (apply make-instance checked-hash-table::t _%$args107462%_)))
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
      (let ((__tmp108163 (list hash-table::t))
            (__tmp108162 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp108163
         '()
         __tmp108162
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args107459%_
        (apply make-instance eq-hash-table::t _%$args107459%_)))
    (define eqv-hash-table::t
      (let ((__tmp108165 (list hash-table::t))
            (__tmp108164 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp108165
         '()
         __tmp108164
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args107456%_
        (apply make-instance eqv-hash-table::t _%$args107456%_)))
    (define symbol-hash-table::t
      (let ((__tmp108167 (list hash-table::t))
            (__tmp108166 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp108167
         '()
         __tmp108166
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args107453%_
        (apply make-instance symbol-hash-table::t _%$args107453%_)))
    (define string-hash-table::t
      (let ((__tmp108169 (list hash-table::t))
            (__tmp108168 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp108169
         '()
         __tmp108168
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args107450%_
        (apply make-instance string-hash-table::t _%$args107450%_)))
    (define immediate-hash-table::t
      (let ((__tmp108171 (list hash-table::t))
            (__tmp108170 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp108171
         '()
         __tmp108170
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args107447%_
        (apply make-instance immediate-hash-table::t _%$args107447%_)))
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
      (lambda (_%obj107445%_)
        (let ()
          (declare (not safe))
          (##structure-direct-instance-of?
           _%obj107445%_
           'gerbil/runtime/hash#HashTable::t))))
    (define is-hash-table?
      (lambda (_%obj107443%_) (is-HashTable? _%obj107443%_)))
    (define _%locked-hash-table::ref103451%_
      (lambda (_%self103450107417%_ _%key107419%_ _%default107420%_)
        (let* ((_%self107422%_ _%self103450107417%_)
               (_%self107425%_ _%self107422%_))
          (let ((_%h107435%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107425%_ '1 '#f '#f)))
                (_%l107437%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107425%_ '2 '#f '#f))))
            (let ((__tmp108174 (lambda () (&Locker-read-lock! _%l107437%_)))
                  (__tmp108173
                   (lambda ()
                     (&HashTable-ref
                      _%h107435%_
                      _%key107419%_
                      _%default107420%_)))
                  (__tmp108172 (lambda () (&Locker-read-unlock! _%l107437%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108174 __tmp108173 __tmp108172))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref103451%_
       '#f))
    (define _%locked-hash-table::set!103454%_
      (lambda (_%self103453107268%_ _%key107270%_ _%value107271%_)
        (let* ((_%self107273%_ _%self103453107268%_)
               (_%self107276%_ _%self107273%_))
          (let ((_%h107286%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107276%_ '1 '#f '#f)))
                (_%l107288%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107276%_ '2 '#f '#f))))
            (let ((__tmp108177 (lambda () (&Locker-write-lock! _%l107288%_)))
                  (__tmp108176
                   (lambda ()
                     (&HashTable-set!
                      _%h107286%_
                      _%key107270%_
                      _%value107271%_)))
                  (__tmp108175
                   (lambda () (&Locker-write-unlock! _%l107288%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108177 __tmp108176 __tmp108175))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!103454%_
       '#f))
    (define _%locked-hash-table::update!103457%_
      (lambda (_%self103456107118%_
               _%key107120%_
               _%update107121%_
               _%default107122%_)
        (let* ((_%self107124%_ _%self103456107118%_)
               (_%self107127%_ _%self107124%_))
          (let ((_%h107137%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107127%_ '1 '#f '#f)))
                (_%l107139%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self107127%_ '2 '#f '#f))))
            (let ((__tmp108180 (lambda () (&Locker-write-lock! _%l107139%_)))
                  (__tmp108179
                   (lambda ()
                     (&HashTable-update!
                      _%h107137%_
                      _%key107120%_
                      _%update107121%_
                      _%default107122%_)))
                  (__tmp108178
                   (lambda () (&Locker-write-unlock! _%l107139%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108180 __tmp108179 __tmp108178))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!103457%_
       '#f))
    (define _%locked-hash-table::delete!103460%_
      (lambda (_%self103459106970%_ _%key106972%_)
        (let* ((_%self106974%_ _%self103459106970%_)
               (_%self106977%_ _%self106974%_))
          (let ((_%h106987%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106977%_ '1 '#f '#f)))
                (_%l106989%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106977%_ '2 '#f '#f))))
            (let ((__tmp108183 (lambda () (&Locker-write-lock! _%l106989%_)))
                  (__tmp108182
                   (lambda () (&HashTable-delete! _%h106987%_ _%key106972%_)))
                  (__tmp108181
                   (lambda () (&Locker-write-unlock! _%l106989%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108183 __tmp108182 __tmp108181))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!103460%_
       '#f))
    (define _%locked-hash-table::for-each103463%_
      (lambda (_%self103462106822%_ _%proc106824%_)
        (let* ((_%self106826%_ _%self103462106822%_)
               (_%self106829%_ _%self106826%_))
          (let ((_%h106839%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106829%_ '1 '#f '#f)))
                (_%l106841%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106829%_ '2 '#f '#f))))
            (let ((__tmp108186 (lambda () (&Locker-read-lock! _%l106841%_)))
                  (__tmp108185
                   (lambda ()
                     (&HashTable-for-each _%h106839%_ _%proc106824%_)))
                  (__tmp108184 (lambda () (&Locker-read-unlock! _%l106841%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108186 __tmp108185 __tmp108184))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each103463%_
       '#f))
    (define _%locked-hash-table::length103466%_
      (lambda (_%self103465106675%_)
        (let* ((_%self106678%_ _%self103465106675%_)
               (_%self106681%_ _%self106678%_))
          (let ((_%h106691%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106681%_ '1 '#f '#f)))
                (_%l106693%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106681%_ '2 '#f '#f))))
            (let ((__tmp108189 (lambda () (&Locker-read-lock! _%l106693%_)))
                  (__tmp108188 (lambda () (&HashTable-length _%h106691%_)))
                  (__tmp108187 (lambda () (&Locker-read-unlock! _%l106693%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108189 __tmp108188 __tmp108187))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'length
       _%locked-hash-table::length103466%_
       '#f))
    (define _%locked-hash-table::copy103469%_
      (lambda (_%self103468106528%_)
        (let* ((_%self106531%_ _%self103468106528%_)
               (_%self106534%_ _%self106531%_))
          (let ((_%h106544%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106534%_ '1 '#f '#f)))
                (_%l106546%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106534%_ '2 '#f '#f))))
            (let ((__tmp108192 (lambda () (&Locker-read-lock! _%l106546%_)))
                  (__tmp108191 (lambda () (&HashTable-copy _%h106544%_)))
                  (__tmp108190 (lambda () (&Locker-read-unlock! _%l106546%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108192 __tmp108191 __tmp108190))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy103469%_
       '#f))
    (define _%locked-hash-table::clear!103472%_
      (lambda (_%self103471106381%_)
        (let* ((_%self106384%_ _%self103471106381%_)
               (_%self106387%_ _%self106384%_))
          (let ((_%h106397%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106387%_ '1 '#f '#f)))
                (_%l106399%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106387%_ '2 '#f '#f))))
            (let ((__tmp108195 (lambda () (&Locker-write-lock! _%l106399%_)))
                  (__tmp108194 (lambda () (&HashTable-clear! _%h106397%_)))
                  (__tmp108193
                   (lambda () (&Locker-write-unlock! _%l106399%_))))
              (declare (not safe))
              (##dynamic-wind __tmp108195 __tmp108194 __tmp108193))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!103472%_
       '#f))
    (let ((__tmp108196 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108196 'read-lock! mutex-lock!))
    (let ((__tmp108197 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108197 'read-unlock! mutex-unlock!))
    (let ((__tmp108198 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108198 'write-lock! mutex-lock!))
    (let ((__tmp108199 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp108199 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref103751%_
      (lambda (_%self103750106232%_ _%key106234%_ _%default106235%_)
        (let* ((_%self106237%_ _%self103750106232%_)
               (_%self106239%_ _%self106237%_))
          (let ((_%h106249%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106239%_ '1 '#f '#f)))
                (_%key?106251%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106239%_ '2 '#f '#f))))
            ((lambda (_%g106253106255%_)
               (if (_%g106253106255%_ _%key106234%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key106234%_))))
             _%key?106251%_)
            (&HashTable-ref _%h106249%_ _%key106234%_ _%default106235%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref103751%_
       '#f))
    (define _%checked-hash-table::set!103754%_
      (lambda (_%self103753106083%_ _%key106085%_ _%value106086%_)
        (let* ((_%self106088%_ _%self103753106083%_)
               (_%self106090%_ _%self106088%_))
          (let ((_%h106100%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106090%_ '1 '#f '#f)))
                (_%key?106102%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106090%_ '2 '#f '#f))))
            ((lambda (_%g106104106106%_)
               (if (_%g106104106106%_ _%key106085%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key106085%_))))
             _%key?106102%_)
            (&HashTable-set! _%h106100%_ _%key106085%_ _%value106086%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!103754%_
       '#f))
    (define _%checked-hash-table::update!103757%_
      (lambda (_%self103756105935%_
               _%key105937%_
               _%update105938%_
               _%default105939%_)
        (let* ((_%self105941%_ _%self103756105935%_)
               (_%self105943%_ _%self105941%_))
          (let ((_%h105953%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105943%_ '1 '#f '#f)))
                (_%key?105955%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105943%_ '2 '#f '#f))))
            ((lambda (_%key?105958%_)
               (if (_%key?105958%_ _%key105937%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key105937%_)))
               (if (procedure? _%update105938%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%update105938%_))))
             _%key?105955%_)
            (&HashTable-update!
             _%h105953%_
             _%key105937%_
             _%update105938%_
             _%default105939%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!103757%_
       '#f))
    (define _%checked-hash-table::delete!103760%_
      (lambda (_%self103759105787%_ _%key105789%_)
        (let* ((_%self105791%_ _%self103759105787%_)
               (_%self105793%_ _%self105791%_))
          (let ((_%h105803%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105793%_ '1 '#f '#f)))
                (_%key?105805%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105793%_ '2 '#f '#f))))
            ((lambda (_%g105807105809%_)
               (if (_%g105807105809%_ _%key105789%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key105789%_))))
             _%key?105805%_)
            (&HashTable-delete! _%h105803%_ _%key105789%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!103760%_
       '#f))
    (define _%checked-hash-table::for-each103763%_
      (lambda (_%self103762105641%_ _%proc105643%_)
        (let* ((_%self105645%_ _%self103762105641%_)
               (_%self105647%_ _%self105645%_))
          (let ((_%h105657%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105647%_ '1 '#f '#f)))
                (_%key?105659%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105647%_ '2 '#f '#f))))
            ((lambda (_%_105662%_)
               (if (procedure? _%proc105643%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%proc105643%_))))
             _%key?105659%_)
            (&HashTable-for-each _%h105657%_ _%proc105643%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each103763%_
       '#f))
    (define _%checked-hash-table::length103766%_
      (lambda (_%self103765105498%_)
        (let* ((_%self105501%_ _%self103765105498%_)
               (_%self105503%_ _%self105501%_))
          (let ((_%h105513%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105503%_ '1 '#f '#f)))
                (_%key?105515%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105503%_ '2 '#f '#f))))
            (&HashTable-length _%h105513%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'length
       _%checked-hash-table::length103766%_
       '#f))
    (define _%checked-hash-table::copy103769%_
      (lambda (_%self103768105355%_)
        (let* ((_%self105358%_ _%self103768105355%_)
               (_%self105360%_ _%self105358%_))
          (let ((_%h105370%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105360%_ '1 '#f '#f)))
                (_%key?105372%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105360%_ '2 '#f '#f))))
            (&HashTable-copy _%h105370%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'copy
       _%checked-hash-table::copy103769%_
       '#f))
    (define _%checked-hash-table::clear!103772%_
      (lambda (_%self103771105212%_)
        (let* ((_%self105215%_ _%self103771105212%_)
               (_%self105217%_ _%self105215%_))
          (let ((_%h105227%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105217%_ '1 '#f '#f)))
                (_%key?105229%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105217%_ '2 '#f '#f))))
            (&HashTable-clear! _%h105227%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'clear!
       _%checked-hash-table::clear!103772%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table105082%_
               _%count105083%_
               _%free105084%_
               _%hash105085%_
               _%test105086%_
               _%seed105087%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table105082%_
           _%count105083%_
           _%free105084%_
           _%hash105085%_
           _%test105086%_
           _%seed105087%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords104905%_
               _%size-hint104895104906%_
               _%seed104896104908%_
               _%test104897104910%_
               _%hash104898104912%_
               _%lock104899104914%_
               _%check104900104916%_
               _%weak-keys104901104918%_
               _%weak-values104902104920%_)
        (let* ((_%size-hint104923%_
                (if (eq? _%size-hint104895104906%_ absent-value)
                    '#f
                    _%size-hint104895104906%_))
               (_%seed104925%_
                (if (eq? _%seed104896104908%_ absent-value)
                    '#f
                    _%seed104896104908%_))
               (_%test104927%_
                (if (eq? _%test104897104910%_ absent-value)
                    equal?
                    _%test104897104910%_))
               (_%hash104929%_
                (if (eq? _%hash104898104912%_ absent-value)
                    '#f
                    _%hash104898104912%_))
               (_%lock104931%_
                (if (eq? _%lock104899104914%_ absent-value)
                    '#f
                    _%lock104899104914%_))
               (_%check104933%_
                (if (eq? _%check104900104916%_ absent-value)
                    '#f
                    _%check104900104916%_))
               (_%weak-keys104935%_
                (if (eq? _%weak-keys104901104918%_ absent-value)
                    '#f
                    _%weak-keys104901104918%_))
               (_%weak-values104937%_
                (if (eq? _%weak-values104902104920%_ absent-value)
                    '#f
                    _%weak-values104902104920%_)))
          (letrec ((_%table-seed104939%_
                    (lambda ()
                      (if (fixnum? _%seed104925%_)
                          _%seed104925%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock104940%_
                    (lambda (_%ht105060%_)
                      (if _%lock104931%_
                          (let ((_%$obj105065%_
                                 (let ((__tmp108200
                                        (let ((_%$obj105062%_ _%lock104931%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (##structure?
                                                      _%$obj105062%_))
                                                   (eq? Locker::t
                                                        (let ()
                                                          (declare (not safe))
                                                          (##structure-type
                                                           _%$obj105062%_)))
                                                   '#t)
                                              _%$obj105062%_
                                              (let ()
                                                (declare (not safe))
                                                (cast Locker::interface
                                                      _%$obj105062%_))))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _%ht105060%_
                                    __tmp108200))))
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
                                  (cast HashTable::interface _%$obj105065%_))))
                          _%ht105060%_)))
                   (_%wrap-checked104941%_
                    (lambda (_%ht105054%_ _%implicit105055%_)
                      (if _%check104933%_
                          (let ((_%$obj105057%_
                                 (let ((__tmp108201
                                        (if (procedure? _%check104933%_)
                                            _%check104933%_
                                            _%implicit105055%_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _%ht105054%_
                                    __tmp108201))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj105057%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj105057%_)))
                                     '#t)
                                _%$obj105057%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj105057%_))))
                          _%ht105054%_)))
                   (_%make104942%_
                    (lambda (_%kons105039%_
                             _%key?105040%_
                             _%hash105041%_
                             _%test105042%_)
                      (let* ((_%size105044%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint104923%_)))
                             (_%table105046%_
                              (let ((__tmp108202 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size105044%_ __tmp108202)))
                             (_%ht105051%_
                              (let ((_%$obj105048%_
                                     (_%kons105039%_
                                      _%table105046%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size105044%_ '2))
                                      _%hash105041%_
                                      _%test105042%_
                                      (_%table-seed104939%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj105048%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj105048%_)))
                                         '#t)
                                    _%$obj105048%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj105048%_))))))
                        (_%wrap-checked104941%_
                         (_%wrap-lock104940%_ _%ht105051%_)
                         _%key?105040%_))))
                   (_%make-gc-hash-table104943%_
                    (lambda ()
                      (let ((_%ht105037%_
                             (let ((_%$obj105034%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint104923%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj105034%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj105034%_)))
                                        '#t)
                                   _%$obj105034%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj105034%_))))))
                        (_%wrap-checked104941%_
                         (_%wrap-lock104940%_ _%ht105037%_)
                         true))))
                   (_%make-gambit-table104944%_
                    (lambda ()
                      (let* ((_%size105012%_
                              (let ((_%$e105009%_ _%size-hint104923%_))
                                (if _%$e105009%_
                                    _%$e105009%_
                                    (macro-absent-obj))))
                             (_%test105017%_
                              (let ((_%$e105014%_ _%test104927%_))
                                (if _%$e105014%_ _%$e105014%_ equal?)))
                             (_%hash105025%_
                              (let ((_%$e105019%_ _%hash104929%_))
                                (if _%$e105019%_
                                    _%$e105019%_
                                    (if (eq? _%test105017%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test105017%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht105030%_
                              (let ((_%$obj105027%_
                                     (make-table
                                      'size:
                                      _%size105012%_
                                      'test:
                                      _%test105017%_
                                      'hash:
                                      _%hash105025%_
                                      'weak-keys:
                                      _%weak-keys104935%_
                                      'weak-values:
                                      _%weak-values104937%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj105027%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj105027%_)))
                                         '#t)
                                    _%$obj105027%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj105027%_))))))
                        (_%wrap-checked104941%_
                         (_%wrap-lock104940%_ _%ht105030%_)
                         true)))))
            (if (or _%weak-keys104935%_ _%weak-values104937%_)
                (_%make-gambit-table104944%_)
                (if (and (or (eq? _%test104927%_ eq?)
                             (eq? _%test104927%_ ##eq?))
                         (or (not _%hash104929%_)
                             (eq? _%hash104929%_ eq?-hash)
                             (eq? _%hash104929%_ eq-hash))
                         (not _%seed104925%_))
                    (_%make-gc-hash-table104943%_)
                    (if (and (or (eq? _%test104927%_ eq?)
                                 (eq? _%test104927%_ ##eq?))
                             (or (not _%hash104929%_)
                                 (eq? _%hash104929%_ eq?-hash)
                                 (eq? _%hash104929%_ eq-hash)))
                        (_%make104942%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test104927%_ eqv?)
                                     (eq? _%test104927%_ ##eqv?))
                                 (or (not _%hash104929%_)
                                     (eq? _%hash104929%_ eqv?-hash)
                                     (eq? _%hash104929%_ eqv-hash)))
                            (_%make104942%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test104927%_ eq?)
                                         (eq? _%test104927%_ ##eq?))
                                     (or (eq? _%hash104929%_ symbolic-hash)
                                         (eq? _%hash104929%_ ##symbol-hash)))
                                (_%make104942%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test104927%_ eq?)
                                             (eq? _%test104927%_ ##eq?))
                                         (eq? _%hash104929%_ immediate-hash))
                                    (_%make104942%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test104927%_ equal?)
                                                 (eq? _%test104927%_ ##equal?)
                                                 (eq? _%test104927%_ string=?)
                                                 (eq? _%test104927%_
                                                      ##string=?))
                                             (or (eq? _%hash104929%_
                                                      string-hash)
                                                 (eq? _%hash104929%_
                                                      ##string=?-hash)))
                                        (_%make104942%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test104927%_ equal?)
                                                 (not _%hash104929%_))
                                            (_%make104942%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test104927%_)
                                                (if (procedure? _%hash104929%_)
                                                    (_%make104942%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash104929%_
                                                     _%test104927%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _%hash104929%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _%test104927%_)))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords105072%_ . _%args105073%_)
        (apply make-hash-table__%
               _%@@keywords105072%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105072%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105072%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105072%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105072%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords105072%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105072%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105072%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords105072%_
                  'weak-values:
                  absent-value))
               _%args105073%_)))
    (define make-hash-table
      (lambda _%args104903105079%_
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
               _%args104903105079%_)))
    (define make-hash-table-eq
      (lambda _%args104892%_
        (apply make-hash-table 'test: eq? _%args104892%_)))
    (define make-hash-table-eqv
      (lambda _%args104890%_
        (apply make-hash-table 'test: eqv? _%args104890%_)))
    (define make-hash-table-symbolic
      (lambda _%args104888%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args104888%_)))
    (define make-hash-table-string
      (lambda _%args104886%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args104886%_)))
    (define make-hash-table-immediate
      (lambda _%args104884%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args104884%_)))
    (define list->hash-table
      (lambda (_%lst104881%_ . _%args104882%_)
        (list->hash-table!
         _%lst104881%_
         (apply make-hash-table
                'size:
                (length _%lst104881%_)
                _%args104882%_))))
    (define list->hash-table-eq
      (lambda (_%lst104878%_ . _%args104879%_)
        (list->hash-table!
         _%lst104878%_
         (apply make-hash-table-eq
                'size:
                (length _%lst104878%_)
                _%args104879%_))))
    (define list->hash-table-eqv
      (lambda (_%lst104875%_ . _%args104876%_)
        (list->hash-table!
         _%lst104875%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst104875%_)
                _%args104876%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst104872%_ . _%args104873%_)
        (list->hash-table!
         _%lst104872%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst104872%_)
                _%args104873%_))))
    (define list->hash-table-string
      (lambda (_%lst104869%_ . _%args104870%_)
        (list->hash-table!
         _%lst104869%_
         (apply make-hash-table-string
                'size:
                (length _%lst104869%_)
                _%args104870%_))))
    (define list->hash-table-immediate
      (lambda (_%lst104866%_ . _%args104867%_)
        (list->hash-table!
         _%lst104866%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst104866%_)
                _%args104867%_))))
    (define list->hash-table!
      (lambda (_%lst104833%_ _%h104834%_)
        (for-each
         (lambda (_%el104836%_)
           (let* ((_%el104837104844%_ _%el104836%_)
                  (_%E104839104848%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el104837104844%_
                              '([k . v])))
                     '#!void))
                  (_%K104840104854%_
                   (lambda (_%v104851%_ _%k104852%_)
                     (&HashTable-set! _%h104834%_ _%k104852%_ _%v104851%_))))
             (if (let () (declare (not safe)) (##pair? _%el104837104844%_))
                 (let ((_%hd104841104857%_
                        (let ()
                          (declare (not safe))
                          (##car _%el104837104844%_)))
                       (_%tl104842104859%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el104837104844%_))))
                   (let* ((_%k104862%_ _%hd104841104857%_)
                          (_%v104864%_ _%tl104842104859%_))
                     (_%K104840104854%_ _%v104864%_ _%k104862%_)))
                 (_%E104839104848%_))))
         _%lst104833%_)
        _%h104834%_))
    (define plist->hash-table
      (lambda (_%lst104830%_ . _%args104831%_)
        (plist->hash-table!
         _%lst104830%_
         (apply make-hash-table
                'size:
                (length _%lst104830%_)
                _%args104831%_))))
    (define plist->hash-table-eq
      (lambda (_%lst104827%_ . _%args104828%_)
        (plist->hash-table!
         _%lst104827%_
         (apply make-hash-table-eq
                'size:
                (length _%lst104827%_)
                _%args104828%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst104824%_ . _%args104825%_)
        (plist->hash-table!
         _%lst104824%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst104824%_)
                _%args104825%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst104821%_ . _%args104822%_)
        (plist->hash-table!
         _%lst104821%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst104821%_)
                _%args104822%_))))
    (define plist->hash-table-string
      (lambda (_%lst104818%_ . _%args104819%_)
        (plist->hash-table!
         _%lst104818%_
         (apply make-hash-table-string
                'size:
                (length _%lst104818%_)
                _%args104819%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst104815%_ . _%args104816%_)
        (plist->hash-table!
         _%lst104815%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst104815%_)
                _%args104816%_))))
    (define plist->hash-table!
      (lambda (_%lst104755%_ _%h104756%_)
        (let _%loop104758%_ ((_%rest104760%_ _%lst104755%_))
          (let* ((_%rest104761104773%_ _%rest104760%_)
                 (_%else104764104781%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst104755%_)))))
            (let ((_%K104767104796%_
                   (lambda (_%rest104792%_ _%val104793%_ _%key104794%_)
                     (&HashTable-set! _%h104756%_ _%key104794%_ _%val104793%_)
                     (_%loop104758%_ _%rest104792%_)))
                  (_%K104766104786%_ (lambda () _%h104756%_)))
              (let ((_%try-match104763104789%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest104761104773%_))
                           (_%K104766104786%_)
                           (_%else104764104781%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest104761104773%_))
                    (let ((_%tl104769104801%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest104761104773%_)))
                          (_%hd104768104799%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest104761104773%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl104769104801%_))
                          (let ((_%tl104771104808%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl104769104801%_)))
                                (_%hd104770104806%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl104769104801%_))))
                            (let ((_%key104804%_ _%hd104768104799%_)
                                  (_%val104811%_ _%hd104770104806%_)
                                  (_%rest104813%_ _%tl104771104808%_))
                              (_%K104767104796%_
                               _%rest104813%_
                               _%val104811%_
                               _%key104804%_)))
                          (_%else104764104781%_)))
                    (_%try-match104763104789%_))))))))
    (define hash-length
      (lambda (_%h104737%_)
        (let* ((_%h104743%_
                (let ((_%$obj104740%_ _%h104737%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104740%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104740%_)))
                           '#t)
                      _%$obj104740%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104740%_)))))
               (_%h104745%_ _%h104743%_))
          (__hash-length _%h104745%_))))
    (define __hash-length
      (lambda (_%h104725%_)
        (let ((_%h104728%_ _%h104725%_)) (__HashTable-length _%h104728%_))))
    (define hash-ref__%
      (lambda (_%h104693%_ _%key104694%_ _%default104695%_)
        (let* ((_%h104701%_
                (let ((_%$obj104698%_ _%h104693%_))
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
          (__hash-ref__% _%h104703%_ _%key104694%_ _%default104695%_))))
    (define hash-ref__0
      (lambda (_%h104716%_ _%key104717%_)
        (let ((_%default104719%_ (macro-absent-obj)))
          (hash-ref__% _%h104716%_ _%key104717%_ _%default104719%_))))
    (define hash-ref
      (lambda _g108204_
        (let ((_g108203_ (let () (declare (not safe)) (##length _g108204_))))
          (cond ((let () (declare (not safe)) (##fx= _g108203_ 2))
                 (apply hash-ref__0 _g108204_))
                ((let () (declare (not safe)) (##fx= _g108203_ 3))
                 (apply hash-ref__% _g108204_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g108204_))))))
    (define __hash-ref__%
      (lambda (_%h104664%_ _%key104665%_ _%default104666%_)
        (let* ((_%h104669%_ _%h104664%_)
               (_%result104678%_
                (&HashTable-ref _%h104669%_ _%key104665%_ _%default104666%_)))
          (if (eq? _%result104678%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h104669%_
               'key:
               _%key104665%_)
              _%result104678%_))))
    (define __hash-ref__0
      (lambda (_%h104683%_ _%key104684%_)
        (let ((_%default104686%_ (macro-absent-obj)))
          (__hash-ref__% _%h104683%_ _%key104684%_ _%default104686%_))))
    (define __hash-ref
      (lambda _g108206_
        (let ((_g108205_ (let () (declare (not safe)) (##length _g108206_))))
          (cond ((let () (declare (not safe)) (##fx= _g108205_ 2))
                 (apply __hash-ref__0 _g108206_))
                ((let () (declare (not safe)) (##fx= _g108205_ 3))
                 (apply __hash-ref__% _g108206_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g108206_))))))
    (define hash-get
      (lambda (_%h104644%_ _%key104645%_)
        (let* ((_%h104651%_
                (let ((_%$obj104648%_ _%h104644%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104648%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104648%_)))
                           '#t)
                      _%$obj104648%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104648%_)))))
               (_%h104653%_ _%h104651%_))
          (__hash-get _%h104653%_ _%key104645%_))))
    (define __hash-get
      (lambda (_%h104631%_ _%key104632%_)
        (let ((_%h104635%_ _%h104631%_))
          (&HashTable-ref _%h104635%_ _%key104632%_ '#f))))
    (define hash-put!
      (lambda (_%h104611%_ _%key104612%_ _%value104613%_)
        (let* ((_%h104619%_
                (let ((_%$obj104616%_ _%h104611%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104616%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104616%_)))
                           '#t)
                      _%$obj104616%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104616%_)))))
               (_%h104621%_ _%h104619%_))
          (__hash-put! _%h104621%_ _%key104612%_ _%value104613%_))))
    (define __hash-put!
      (lambda (_%h104597%_ _%key104598%_ _%value104599%_)
        (let ((_%h104602%_ _%h104597%_))
          (&HashTable-set! _%h104602%_ _%key104598%_ _%value104599%_))))
    (define hash-update!__%
      (lambda (_%h104562%_ _%key104563%_ _%update104564%_ _%default104565%_)
        (let* ((_%h104571%_
                (let ((_%$obj104568%_ _%h104562%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104568%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104568%_)))
                           '#t)
                      _%$obj104568%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104568%_)))))
               (_%h104573%_ _%h104571%_))
          (__hash-update!__%
           _%h104573%_
           _%key104563%_
           _%update104564%_
           _%default104565%_))))
    (define hash-update!__0
      (lambda (_%h104586%_ _%key104587%_ _%update104588%_)
        (let ((_%default104590%_ '#!void))
          (hash-update!__%
           _%h104586%_
           _%key104587%_
           _%update104588%_
           _%default104590%_))))
    (define hash-update!
      (lambda _g108208_
        (let ((_g108207_ (let () (declare (not safe)) (##length _g108208_))))
          (cond ((let () (declare (not safe)) (##fx= _g108207_ 3))
                 (apply hash-update!__0 _g108208_))
                ((let () (declare (not safe)) (##fx= _g108207_ 4))
                 (apply hash-update!__% _g108208_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g108208_))))))
    (define __hash-update!__%
      (lambda (_%h104532%_ _%key104533%_ _%update104534%_ _%default104535%_)
        (let ((_%h104538%_ _%h104532%_))
          (HashTable-update!
           _%h104538%_
           _%key104533%_
           _%update104534%_
           _%default104535%_))))
    (define __hash-update!__0
      (lambda (_%h104550%_ _%key104551%_ _%update104552%_)
        (let ((_%default104554%_ '#!void))
          (__hash-update!__%
           _%h104550%_
           _%key104551%_
           _%update104552%_
           _%default104554%_))))
    (define __hash-update!
      (lambda _g108210_
        (let ((_g108209_ (let () (declare (not safe)) (##length _g108210_))))
          (cond ((let () (declare (not safe)) (##fx= _g108209_ 3))
                 (apply __hash-update!__0 _g108210_))
                ((let () (declare (not safe)) (##fx= _g108209_ 4))
                 (apply __hash-update!__% _g108210_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g108210_))))))
    (define hash-remove!
      (lambda (_%h104512%_ _%key104513%_)
        (let* ((_%h104519%_
                (let ((_%$obj104516%_ _%h104512%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104516%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104516%_)))
                           '#t)
                      _%$obj104516%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104516%_)))))
               (_%h104521%_ _%h104519%_))
          (__hash-remove! _%h104521%_ _%key104513%_))))
    (define __hash-remove!
      (lambda (_%h104499%_ _%key104500%_)
        (let ((_%h104503%_ _%h104499%_))
          (&HashTable-delete! _%h104503%_ _%key104500%_))))
    (define hash-key?
      (lambda (_%h104480%_ _%k104481%_)
        (let* ((_%h104487%_
                (let ((_%$obj104484%_ _%h104480%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104484%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104484%_)))
                           '#t)
                      _%$obj104484%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104484%_)))))
               (_%h104489%_ _%h104487%_))
          (__hash-key? _%h104489%_ _%k104481%_))))
    (define __hash-key?
      (lambda (_%h104467%_ _%k104468%_)
        (let ((_%h104471%_ _%h104467%_))
          (not (eq? (&HashTable-ref _%h104471%_ _%k104468%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h104449%_)
        (let* ((_%h104455%_
                (let ((_%$obj104452%_ _%h104449%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104452%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104452%_)))
                           '#t)
                      _%$obj104452%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104452%_)))))
               (_%h104457%_ _%h104455%_))
          (__hash->list _%h104457%_))))
    (define __hash->list
      (lambda (_%h104432%_)
        (let* ((_%h104435%_ _%h104432%_) (_%lst104444%_ '()))
          (&HashTable-for-each
           _%h104435%_
           (lambda (_%k104446%_ _%v104447%_)
             (set! _%lst104444%_
                   (cons (cons _%k104446%_ _%v104447%_) _%lst104444%_))))
          _%lst104444%_)))
    (define hash->plist
      (lambda (_%h104414%_)
        (let* ((_%h104420%_
                (let ((_%$obj104417%_ _%h104414%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104417%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104417%_)))
                           '#t)
                      _%$obj104417%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104417%_)))))
               (_%h104422%_ _%h104420%_))
          (__hash->plist _%h104422%_))))
    (define __hash->plist
      (lambda (_%h104397%_)
        (let* ((_%h104400%_ _%h104397%_) (_%lst104409%_ '()))
          (&HashTable-for-each
           _%h104400%_
           (lambda (_%k104411%_ _%v104412%_)
             (set! _%lst104409%_
                   (cons _%k104411%_ (cons _%v104412%_ _%lst104409%_)))))
          _%lst104409%_)))
    (define hash-for-each
      (lambda (_%proc104368%_ _%h104369%_)
        (if (procedure? _%proc104368%_)
            (let* ((_%proc104373%_ _%proc104368%_)
                   (_%h104385%_
                    (let ((_%$obj104382%_ _%h104369%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104382%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104382%_)))
                               '#t)
                          _%$obj104382%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104382%_)))))
                   (_%h104387%_ _%h104385%_))
              (__hash-for-each _%proc104373%_ _%h104387%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@560.22-560.26"
               'contract:
               'procedure?
               'value:
               _%proc104368%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc104347%_ _%h104348%_)
        (let* ((_%proc104351%_ _%proc104347%_) (_%h104359%_ _%h104348%_))
          (&HashTable-for-each _%h104359%_ _%proc104351%_))))
    (define hash-map
      (lambda (_%proc104318%_ _%h104319%_)
        (if (procedure? _%proc104318%_)
            (let* ((_%proc104323%_ _%proc104318%_)
                   (_%h104335%_
                    (let ((_%$obj104332%_ _%h104319%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104332%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104332%_)))
                               '#t)
                          _%$obj104332%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104332%_)))))
                   (_%h104337%_ _%h104335%_))
              (__hash-map _%proc104323%_ _%h104337%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@563.17-563.21"
               'contract:
               'procedure?
               'value:
               _%proc104318%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc104292%_ _%h104293%_)
        (let* ((_%proc104296%_ _%proc104292%_)
               (_%h104304%_ _%h104293%_)
               (_%result104313%_ '()))
          (&HashTable-for-each
           _%h104304%_
           (lambda (_%k104315%_ _%v104316%_)
             (set! _%result104313%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc104296%_ _%k104315%_ _%v104316%_))
                         _%result104313%_))))
          _%result104313%_)))
    (define hash-fold
      (lambda (_%proc104262%_ _%iv104263%_ _%h104264%_)
        (if (procedure? _%proc104262%_)
            (let* ((_%proc104268%_ _%proc104262%_)
                   (_%h104280%_
                    (let ((_%$obj104277%_ _%h104264%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104277%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104277%_)))
                               '#t)
                          _%$obj104277%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104277%_)))))
                   (_%h104282%_ _%h104280%_))
              (__hash-fold _%proc104268%_ _%iv104263%_ _%h104282%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@568.18-568.22"
               'contract:
               'procedure?
               'value:
               _%proc104262%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc104235%_ _%iv104236%_ _%h104237%_)
        (let* ((_%proc104240%_ _%proc104235%_)
               (_%h104248%_ _%h104237%_)
               (_%result104257%_ _%iv104236%_))
          (&HashTable-for-each
           _%h104248%_
           (lambda (_%k104259%_ _%v104260%_)
             (set! _%result104257%_
                   (let ()
                     (declare (not safe))
                     (_%proc104240%_
                      _%k104259%_
                      _%v104260%_
                      _%result104257%_)))))
          _%result104257%_)))
    (define hash-find__%
      (lambda (_%proc104193%_ _%h104194%_ _%default-value104195%_)
        (if (procedure? _%proc104193%_)
            (let* ((_%proc104199%_ _%proc104193%_)
                   (_%h104211%_
                    (let ((_%$obj104208%_ _%h104194%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj104208%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj104208%_)))
                               '#t)
                          _%$obj104208%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj104208%_)))))
                   (_%h104213%_ _%h104211%_))
              (__hash-find__%
               _%proc104199%_
               _%h104213%_
               _%default-value104195%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@573.18-573.22"
               'contract:
               'procedure?
               'value:
               _%proc104193%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc104226%_ _%h104227%_)
        (let ((_%default-value104229%_ '#f))
          (hash-find__% _%proc104226%_ _%h104227%_ _%default-value104229%_))))
    (define hash-find
      (lambda _g108212_
        (let ((_g108211_ (let () (declare (not safe)) (##length _g108212_))))
          (cond ((let () (declare (not safe)) (##fx= _g108211_ 2))
                 (apply hash-find__0 _g108212_))
                ((let () (declare (not safe)) (##fx= _g108211_ 3))
                 (apply hash-find__% _g108212_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g108212_))))))
    (define __hash-find__%
      (lambda (_%proc104150%_ _%h104151%_ _%default-value104152%_)
        (let* ((_%proc104155%_ _%proc104150%_)
               (_%h104163%_ _%h104151%_)
               (__tmp108213
                (lambda (_%return104172%_)
                  (&HashTable-for-each
                   _%h104163%_
                   (lambda (_%k104174%_ _%v104175%_)
                     (let ((_%$e104177%_
                            (let ()
                              (declare (not safe))
                              (_%proc104155%_ _%k104174%_ _%v104175%_))))
                       (if _%$e104177%_
                           (_%return104172%_ _%$e104177%_)
                           '#!void))))
                  _%default-value104152%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp108213))))
    (define __hash-find__0
      (lambda (_%proc104183%_ _%h104184%_)
        (let ((_%default-value104186%_ '#f))
          (__hash-find__%
           _%proc104183%_
           _%h104184%_
           _%default-value104186%_))))
    (define __hash-find
      (lambda _g108215_
        (let ((_g108214_ (let () (declare (not safe)) (##length _g108215_))))
          (cond ((let () (declare (not safe)) (##fx= _g108214_ 2))
                 (apply __hash-find__0 _g108215_))
                ((let () (declare (not safe)) (##fx= _g108214_ 3))
                 (apply __hash-find__% _g108215_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g108215_))))))
    (define hash-keys
      (lambda (_%h104131%_)
        (let* ((_%h104137%_
                (let ((_%$obj104134%_ _%h104131%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104134%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104134%_)))
                           '#t)
                      _%$obj104134%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104134%_)))))
               (_%h104139%_ _%h104137%_))
          (__hash-keys _%h104139%_))))
    (define __hash-keys
      (lambda (_%h104114%_)
        (let* ((_%h104117%_ _%h104114%_) (_%result104126%_ '()))
          (&HashTable-for-each
           _%h104117%_
           (lambda (_%k104128%_ _%v104129%_)
             (set! _%result104126%_ (cons _%k104128%_ _%result104126%_))))
          _%result104126%_)))
    (define hash-values
      (lambda (_%h104096%_)
        (let* ((_%h104102%_
                (let ((_%$obj104099%_ _%h104096%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104099%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104099%_)))
                           '#t)
                      _%$obj104099%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104099%_)))))
               (_%h104104%_ _%h104102%_))
          (__hash-values _%h104104%_))))
    (define __hash-values
      (lambda (_%h104079%_)
        (let* ((_%h104082%_ _%h104079%_) (_%result104091%_ '()))
          (&HashTable-for-each
           _%h104082%_
           (lambda (_%k104093%_ _%v104094%_)
             (set! _%result104091%_ (cons _%v104094%_ _%result104091%_))))
          _%result104091%_)))
    (define hash-copy
      (lambda (_%h104061%_)
        (let* ((_%h104067%_
                (let ((_%$obj104064%_ _%h104061%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104064%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104064%_)))
                           '#t)
                      _%$obj104064%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104064%_)))))
               (_%h104069%_ _%h104067%_))
          (__hash-copy _%h104069%_))))
    (define __hash-copy
      (lambda (_%h104049%_)
        (let ((_%h104052%_ _%h104049%_)) (__HashTable-copy _%h104052%_))))
    (define hash-clear!
      (lambda (_%h104031%_)
        (let* ((_%h104037%_
                (let ((_%$obj104034%_ _%h104031%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104034%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104034%_)))
                           '#t)
                      _%$obj104034%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104034%_)))))
               (_%h104039%_ _%h104037%_))
          (__hash-clear! _%h104039%_))))
    (define __hash-clear!
      (lambda (_%h104019%_)
        (let ((_%h104022%_ _%h104019%_)) (&HashTable-clear! _%h104022%_))))
    (define hash-merge
      (lambda (_%h104000%_ . _%rest104001%_)
        (let* ((_%h104007%_
                (let ((_%$obj104004%_ _%h104000%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj104004%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj104004%_)))
                           '#t)
                      _%$obj104004%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj104004%_)))))
               (_%h104009%_ _%h104007%_))
          (declare (not safe))
          (##apply __hash-merge _%h104009%_ _%rest104001%_))))
    (define __hash-merge
      (lambda (_%h103985%_ . _%rest103986%_)
        (let* ((_%h103989%_ _%h103985%_)
               (_%copy103998%_ (__HashTable-copy _%h103989%_)))
          (apply hash-merge! _%copy103998%_ _%rest103986%_)
          _%copy103998%_)))
    (define hash-merge!
      (lambda (_%h103966%_ . _%rest103967%_)
        (let* ((_%h103973%_
                (let ((_%$obj103970%_ _%h103966%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103970%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103970%_)))
                           '#t)
                      _%$obj103970%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103970%_)))))
               (_%h103975%_ _%h103973%_))
          (declare (not safe))
          (##apply __hash-merge! _%h103975%_ _%rest103967%_))))
    (define __hash-merge!
      (lambda (_%h103929%_ . _%rest103930%_)
        (let ((_%h103933%_ _%h103929%_))
          (let ((__tmp108216
                 (lambda (_%hr103942%_)
                   (let* ((_%hr103948%_
                           (let ((_%$obj103945%_ _%hr103942%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj103945%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj103945%_)))
                                      '#t)
                                 _%$obj103945%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj103945%_)))))
                          (_%hr103950%_ _%hr103948%_))
                     (&HashTable-for-each
                      _%hr103950%_
                      (lambda (_%k103963%_ _%v103964%_)
                        (if (__hash-key? _%h103933%_ _%k103963%_)
                            '#!void
                            (&HashTable-set!
                             _%h103933%_
                             _%k103963%_
                             _%v103964%_))))))))
            (declare (not safe))
            (##for-each __tmp108216 _%rest103930%_))
          _%h103933%_)))))
