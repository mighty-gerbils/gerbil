(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1756156299)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp118027 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp118027
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args117941%_
        (apply make-instance UnboundKeyError::t _%$args117941%_)))
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
      (lambda (_%where117815%_ _%message117816%_ . _%irritants117817%_)
        (let ((__tmp118028
               (let ((__obj118021
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj118021
                    _%message117816%_
                    'where:
                    _%where117815%_
                    'irritants:
                    _%irritants117817%_))
                 __obj118021)))
          (declare (not safe))
          (raise __tmp118028))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp118029 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp118029
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
      (lambda (_%obj117813%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj117813%_))))
    (define try-HashTable
      (lambda (_%obj117811%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj117811%_))))
    (define HashTable?
      (lambda (_%obj117809%_)
        (let ((__tmp118030
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj117809%_ __tmp118030))))
    (define is-HashTable?
      (lambda (_%obj117807%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj117807%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self117791%_)
        (let* ((_%self117796%_
                (let ((_%$obj117793%_ _%self117791%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117793%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117793%_)))
                           '#t)
                      _%$obj117793%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117793%_)))))
               (_%self117798%_ _%self117796%_))
          (&HashTable-clear! _%self117798%_))))
    (define &HashTable-clear!
      (lambda (_%self117776%_)
        (let ((_%self117778%_ _%self117776%_))
          (declare (not safe))
          (let ((_%obj117788%_
                 (##unchecked-structure-ref _%self117778%_ '1 '#f 'clear!))
                (_%f117789%_
                 (##unchecked-structure-ref _%self117778%_ '2 '#f 'clear!)))
            (_%f117789%_ _%obj117788%_)))))
    (define HashTable-copy
      (lambda (_%self117760%_)
        (let* ((_%self117765%_
                (let ((_%$obj117762%_ _%self117760%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117762%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117762%_)))
                           '#t)
                      _%$obj117762%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117762%_)))))
               (_%self117767%_ _%self117765%_))
          (__HashTable-copy _%self117767%_))))
    (define __HashTable-copy
      (lambda (_%self117747%_)
        (let* ((_%self117749%_ _%self117747%_)
               (_%$obj117757%_ (&HashTable-copy _%self117749%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj117757%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj117757%_)))
                   '#t)
              _%$obj117757%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj117757%_))))))
    (define &HashTable-copy
      (lambda (_%self117732%_)
        (let ((_%self117734%_ _%self117732%_))
          (declare (not safe))
          (let ((_%obj117744%_
                 (##unchecked-structure-ref _%self117734%_ '1 '#f 'copy))
                (_%f117745%_
                 (##unchecked-structure-ref _%self117734%_ '3 '#f 'copy)))
            (_%f117745%_ _%obj117744%_)))))
    (define HashTable-delete!
      (lambda (_%self117715%_ _%key117716%_)
        (let* ((_%self117721%_
                (let ((_%$obj117718%_ _%self117715%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117718%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117718%_)))
                           '#t)
                      _%$obj117718%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117718%_)))))
               (_%self117723%_ _%self117721%_))
          (&HashTable-delete! _%self117723%_ _%key117716%_))))
    (define &HashTable-delete!
      (lambda (_%self117699%_ _%key117700%_)
        (let ((_%self117702%_ _%self117699%_))
          (declare (not safe))
          (let ((_%obj117712%_
                 (##unchecked-structure-ref _%self117702%_ '1 '#f 'delete!))
                (_%f117713%_
                 (##unchecked-structure-ref _%self117702%_ '4 '#f 'delete!)))
            (_%f117713%_ _%obj117712%_ _%key117700%_)))))
    (define HashTable-for-each
      (lambda (_%self117672%_ _%proc117673%_)
        (let* ((_%self117678%_
                (let ((_%$obj117675%_ _%self117672%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117675%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117675%_)))
                           '#t)
                      _%$obj117675%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117675%_)))))
               (_%self117680%_ _%self117678%_))
          (if (procedure? _%proc117673%_)
              (let ((_%proc117689%_ _%proc117673%_))
                (&HashTable-for-each _%self117680%_ _%proc117689%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc117673%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self117648%_ _%proc117649%_)
        (let* ((_%self117651%_ _%self117648%_) (_%proc117658%_ _%proc117649%_))
          (declare (not safe))
          (let ((_%obj117669%_
                 (##unchecked-structure-ref _%self117651%_ '1 '#f 'for-each))
                (_%f117670%_
                 (##unchecked-structure-ref _%self117651%_ '5 '#f 'for-each)))
            (_%f117670%_ _%obj117669%_ _%proc117658%_)))))
    (define HashTable-length
      (lambda (_%self117632%_)
        (let* ((_%self117637%_
                (let ((_%$obj117634%_ _%self117632%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117634%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117634%_)))
                           '#t)
                      _%$obj117634%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117634%_)))))
               (_%self117639%_ _%self117637%_))
          (__HashTable-length _%self117639%_))))
    (define __HashTable-length
      (lambda (_%self117619%_)
        (let* ((_%self117621%_ _%self117619%_)
               (_%val117629%_ (&HashTable-length _%self117621%_)))
          _%val117629%_)))
    (define &HashTable-length
      (lambda (_%self117604%_)
        (let ((_%self117606%_ _%self117604%_))
          (declare (not safe))
          (let ((_%obj117616%_
                 (##unchecked-structure-ref _%self117606%_ '1 '#f 'length))
                (_%f117617%_
                 (##unchecked-structure-ref _%self117606%_ '6 '#f 'length)))
            (_%f117617%_ _%obj117616%_)))))
    (define HashTable-ref
      (lambda (_%self117586%_ _%key117587%_ _%default117588%_)
        (let* ((_%self117593%_
                (let ((_%$obj117590%_ _%self117586%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117590%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117590%_)))
                           '#t)
                      _%$obj117590%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117590%_)))))
               (_%self117595%_ _%self117593%_))
          (&HashTable-ref _%self117595%_ _%key117587%_ _%default117588%_))))
    (define &HashTable-ref
      (lambda (_%self117569%_ _%key117570%_ _%default117571%_)
        (let ((_%self117573%_ _%self117569%_))
          (declare (not safe))
          (let ((_%obj117583%_
                 (##unchecked-structure-ref _%self117573%_ '1 '#f 'ref))
                (_%f117584%_
                 (##unchecked-structure-ref _%self117573%_ '7 '#f 'ref)))
            (_%f117584%_ _%obj117583%_ _%key117570%_ _%default117571%_)))))
    (define HashTable-set!
      (lambda (_%self117551%_ _%key117552%_ _%value117553%_)
        (let* ((_%self117558%_
                (let ((_%$obj117555%_ _%self117551%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117555%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117555%_)))
                           '#t)
                      _%$obj117555%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117555%_)))))
               (_%self117560%_ _%self117558%_))
          (&HashTable-set! _%self117560%_ _%key117552%_ _%value117553%_))))
    (define &HashTable-set!
      (lambda (_%self117534%_ _%key117535%_ _%value117536%_)
        (let ((_%self117538%_ _%self117534%_))
          (declare (not safe))
          (let ((_%obj117548%_
                 (##unchecked-structure-ref _%self117538%_ '1 '#f 'set!))
                (_%f117549%_
                 (##unchecked-structure-ref _%self117538%_ '8 '#f 'set!)))
            (_%f117549%_ _%obj117548%_ _%key117535%_ _%value117536%_)))))
    (define HashTable-update!
      (lambda (_%self117505%_ _%key117506%_ _%proc117507%_ _%default117508%_)
        (let* ((_%self117513%_
                (let ((_%$obj117510%_ _%self117505%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117510%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117510%_)))
                           '#t)
                      _%$obj117510%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj117510%_)))))
               (_%self117515%_ _%self117513%_))
          (if (procedure? _%proc117507%_)
              (let ((_%proc117524%_ _%proc117507%_))
                (&HashTable-update!
                 _%self117515%_
                 _%key117506%_
                 _%proc117524%_
                 _%default117508%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc117507%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self117477%_ _%key117478%_ _%proc117479%_ _%default117480%_)
        (let* ((_%self117482%_ _%self117477%_) (_%proc117489%_ _%proc117479%_))
          (declare (not safe))
          (let ((_%obj117500%_
                 (##unchecked-structure-ref _%self117482%_ '1 '#f 'update!))
                (_%f117502%_
                 (##unchecked-structure-ref _%self117482%_ '9 '#f 'update!)))
            (_%f117502%_
             _%obj117500%_
             _%key117478%_
             _%proc117489%_
             _%default117480%_)))))
    (define Locker::t
      (let ((__tmp118031 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp118031
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
      (lambda (_%obj117475%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj117475%_))))
    (define try-Locker
      (lambda (_%obj117473%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj117473%_))))
    (define Locker?
      (lambda (_%obj117471%_)
        (let ((__tmp118032
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj117471%_ __tmp118032))))
    (define is-Locker?
      (lambda (_%obj117469%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj117469%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self117453%_)
        (let* ((_%self117458%_
                (let ((_%$obj117455%_ _%self117453%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117455%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117455%_)))
                           '#t)
                      _%$obj117455%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj117455%_)))))
               (_%self117460%_ _%self117458%_))
          (&Locker-read-lock! _%self117460%_))))
    (define &Locker-read-lock!
      (lambda (_%self117438%_)
        (let ((_%self117440%_ _%self117438%_))
          (declare (not safe))
          (let ((_%obj117450%_
                 (##unchecked-structure-ref _%self117440%_ '1 '#f 'read-lock!))
                (_%f117451%_
                 (##unchecked-structure-ref
                  _%self117440%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f117451%_ _%obj117450%_)))))
    (define Locker-read-unlock!
      (lambda (_%self117422%_)
        (let* ((_%self117427%_
                (let ((_%$obj117424%_ _%self117422%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117424%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117424%_)))
                           '#t)
                      _%$obj117424%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj117424%_)))))
               (_%self117429%_ _%self117427%_))
          (&Locker-read-unlock! _%self117429%_))))
    (define &Locker-read-unlock!
      (lambda (_%self117407%_)
        (let ((_%self117409%_ _%self117407%_))
          (declare (not safe))
          (let ((_%obj117419%_
                 (##unchecked-structure-ref
                  _%self117409%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f117420%_
                 (##unchecked-structure-ref
                  _%self117409%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f117420%_ _%obj117419%_)))))
    (define Locker-write-lock!
      (lambda (_%self117391%_)
        (let* ((_%self117396%_
                (let ((_%$obj117393%_ _%self117391%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117393%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117393%_)))
                           '#t)
                      _%$obj117393%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj117393%_)))))
               (_%self117398%_ _%self117396%_))
          (&Locker-write-lock! _%self117398%_))))
    (define &Locker-write-lock!
      (lambda (_%self117376%_)
        (let ((_%self117378%_ _%self117376%_))
          (declare (not safe))
          (let ((_%obj117388%_
                 (##unchecked-structure-ref
                  _%self117378%_
                  '1
                  '#f
                  'write-lock!))
                (_%f117389%_
                 (##unchecked-structure-ref
                  _%self117378%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f117389%_ _%obj117388%_)))))
    (define Locker-write-unlock!
      (lambda (_%self117360%_)
        (let* ((_%self117365%_
                (let ((_%$obj117362%_ _%self117360%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj117362%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj117362%_)))
                           '#t)
                      _%$obj117362%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj117362%_)))))
               (_%self117367%_ _%self117365%_))
          (&Locker-write-unlock! _%self117367%_))))
    (define &Locker-write-unlock!
      (lambda (_%self117343%_)
        (let ((_%self117345%_ _%self117343%_))
          (declare (not safe))
          (let ((_%obj117355%_
                 (##unchecked-structure-ref
                  _%self117345%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f117357%_
                 (##unchecked-structure-ref
                  _%self117345%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f117357%_ _%obj117355%_)))))
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
      (lambda (_%table117336%_
               _%key117337%_
               _%update117338%_
               _%default117339%_)
        (let ((_%result117341%_
               (table-ref _%table117336%_ _%key117337%_ _%default117339%_)))
          (table-set!
           _%table117336%_
           _%key117337%_
           (_%update117338%_ _%default117339%_)))))
    (define gambit-table-for-each
      (lambda (_%table117333%_ _%proc117334%_)
        (table-for-each _%proc117334%_ _%table117333%_)))
    (define gambit-table-clear!
      (lambda (_%table117331%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table117331%_ '0 '5 '#f '#f))))
    (let ((__tmp118033 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118033 'HashTable::ref table-ref))
    (let ((__tmp118034 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118034 'HashTable::set! table-set!))
    (let ((__tmp118035 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118035 'HashTable::update! gambit-table-update!))
    (let ((__tmp118036 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118036 'HashTable::delete! table-set!))
    (let ((__tmp118037 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118037 'HashTable::for-each gambit-table-for-each))
    (let ((__tmp118038 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118038 'HashTable::length table-length))
    (let ((__tmp118039 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118039 'HashTable::copy table-copy))
    (let ((__tmp118040 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp118040 'HashTable::clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots117313%_ '(table count free hash test seed))
             (_%slot-vector117315%_ (list->vector (cons '#f _%slots117313%_)))
             (_%slot-table117322%_
              (let ((_%slot-table117317%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp118043
                       (lambda (_%slot117319%_ _%field117320%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table117317%_
                            _%slot117319%_
                            _%field117320%_))
                         (let ((__tmp118044
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot117319%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table117317%_
                            __tmp118044
                            _%field117320%_))))
                      (__tmp118041
                       (let ((__tmp118042
                              (let ()
                                (declare (not safe))
                                (##length _%slots117313%_))))
                         (declare (not safe))
                         (##iota __tmp118042 '1))))
                  (declare (not safe))
                  (##for-each __tmp118043 _%slots117313%_ __tmp118041))
                _%slot-table117317%_))
             (_%flags117324%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields117326%_ '#())
             (_%properties117328%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots117313%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp118045 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags117324%_
         __table::t
         _%fields117326%_
         __tmp118045
         _%slot-vector117315%_
         _%slot-table117322%_
         _%properties117328%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots117295%_ '(gcht immediate))
             (_%slot-vector117297%_ (list->vector (cons '#f _%slots117295%_)))
             (_%slot-table117304%_
              (let ((_%slot-table117299%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp118048
                       (lambda (_%slot117301%_ _%field117302%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table117299%_
                            _%slot117301%_
                            _%field117302%_))
                         (let ((__tmp118049
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot117301%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table117299%_
                            __tmp118049
                            _%field117302%_))))
                      (__tmp118046
                       (let ((__tmp118047
                              (let ()
                                (declare (not safe))
                                (##length _%slots117295%_))))
                         (declare (not safe))
                         (##iota __tmp118047 '1))))
                  (declare (not safe))
                  (##for-each __tmp118048 _%slots117295%_ __tmp118046))
                _%slot-table117299%_))
             (_%flags117306%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields117308%_ '#())
             (_%properties117310%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots117295%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp118050 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags117306%_
         __gc-table::t
         _%fields117308%_
         __tmp118050
         _%slot-vector117297%_
         _%slot-table117304%_
         _%properties117310%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp118052 (list))
            (__tmp118051
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp118052
         '(table lock)
         __tmp118051
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args117292%_
        (apply make-instance locked-hash-table::t _%$args117292%_)))
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
      (let ((__tmp118054 (list))
            (__tmp118053
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp118054
         '(table key-check)
         __tmp118053
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args117289%_
        (apply make-instance checked-hash-table::t _%$args117289%_)))
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
      (let ((__tmp118056 (list hash-table::t))
            (__tmp118055 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp118056
         '()
         __tmp118055
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args117286%_
        (apply make-instance eq-hash-table::t _%$args117286%_)))
    (define eqv-hash-table::t
      (let ((__tmp118058 (list hash-table::t))
            (__tmp118057 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp118058
         '()
         __tmp118057
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args117283%_
        (apply make-instance eqv-hash-table::t _%$args117283%_)))
    (define symbol-hash-table::t
      (let ((__tmp118060 (list hash-table::t))
            (__tmp118059 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp118060
         '()
         __tmp118059
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args117280%_
        (apply make-instance symbol-hash-table::t _%$args117280%_)))
    (define string-hash-table::t
      (let ((__tmp118062 (list hash-table::t))
            (__tmp118061 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp118062
         '()
         __tmp118061
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args117277%_
        (apply make-instance string-hash-table::t _%$args117277%_)))
    (define immediate-hash-table::t
      (let ((__tmp118064 (list hash-table::t))
            (__tmp118063 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp118064
         '()
         __tmp118063
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args117274%_
        (apply make-instance immediate-hash-table::t _%$args117274%_)))
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
    (define _%locked-hash-table::HashTable::ref113069%_
      (lambda (_%self117234%_ _%key117236%_ _%default117237%_)
        (let* ((_%self117240%_ _%self117234%_)
               (_%key117249%_ _%key117236%_)
               (_%default117257%_ _%default117237%_))
          (let ((_%h117266%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117240%_ '1 '#f '#f)))
                (_%l117268%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117240%_ '2 '#f '#f))))
            (let ((__tmp118067 (lambda () (&Locker-read-lock! _%l117268%_)))
                  (__tmp118066
                   (lambda ()
                     (&HashTable-ref
                      _%h117266%_
                      _%key117249%_
                      _%default117257%_)))
                  (__tmp118065 (lambda () (&Locker-read-unlock! _%l117268%_))))
              (declare (not safe))
              (##dynamic-wind __tmp118067 __tmp118066 __tmp118065))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref113069%_
       '#f))
    (define _%locked-hash-table::HashTable::set!113071%_
      (lambda (_%self117071%_ _%key117073%_ _%value117074%_)
        (let* ((_%self117077%_ _%self117071%_)
               (_%key117086%_ _%key117073%_)
               (_%value117094%_ _%value117074%_))
          (let ((_%h117103%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117077%_ '1 '#f '#f)))
                (_%l117105%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self117077%_ '2 '#f '#f))))
            (let ((__tmp118070 (lambda () (&Locker-write-lock! _%l117105%_)))
                  (__tmp118069
                   (lambda ()
                     (&HashTable-set!
                      _%h117103%_
                      _%key117086%_
                      _%value117094%_)))
                  (__tmp118068
                   (lambda () (&Locker-write-unlock! _%l117105%_))))
              (declare (not safe))
              (##dynamic-wind __tmp118070 __tmp118069 __tmp118068))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!113071%_
       '#f))
    (define _%locked-hash-table::HashTable::update!113073%_
      (lambda (_%self116899%_ _%key116901%_ _%update116902%_ _%default116903%_)
        (let* ((_%self116906%_ _%self116899%_)
               (_%key116915%_ _%key116901%_)
               (_%update116923%_ _%update116902%_)
               (_%default116931%_ _%default116903%_))
          (let ((_%h116940%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116906%_ '1 '#f '#f)))
                (_%l116942%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116906%_ '2 '#f '#f))))
            (let ((__tmp118073 (lambda () (&Locker-write-lock! _%l116942%_)))
                  (__tmp118072
                   (lambda ()
                     (&HashTable-update!
                      _%h116940%_
                      _%key116915%_
                      _%update116923%_
                      _%default116931%_)))
                  (__tmp118071
                   (lambda () (&Locker-write-unlock! _%l116942%_))))
              (declare (not safe))
              (##dynamic-wind __tmp118073 __tmp118072 __tmp118071))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!113073%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!113075%_
      (lambda (_%self116745%_ _%key116747%_)
        (let* ((_%self116750%_ _%self116745%_) (_%key116759%_ _%key116747%_))
          (let ((_%h116768%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116750%_ '1 '#f '#f)))
                (_%l116770%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116750%_ '2 '#f '#f))))
            (let ((__tmp118076 (lambda () (&Locker-write-lock! _%l116770%_)))
                  (__tmp118075
                   (lambda () (&HashTable-delete! _%h116768%_ _%key116759%_)))
                  (__tmp118074
                   (lambda () (&Locker-write-unlock! _%l116770%_))))
              (declare (not safe))
              (##dynamic-wind __tmp118076 __tmp118075 __tmp118074))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!113075%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each113077%_
      (lambda (_%self116591%_ _%proc116593%_)
        (let* ((_%self116596%_ _%self116591%_) (_%proc116605%_ _%proc116593%_))
          (let ((_%h116614%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116596%_ '1 '#f '#f)))
                (_%l116616%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116596%_ '2 '#f '#f))))
            (let ((__tmp118079 (lambda () (&Locker-read-lock! _%l116616%_)))
                  (__tmp118078
                   (lambda ()
                     (&HashTable-for-each _%h116614%_ _%proc116605%_)))
                  (__tmp118077 (lambda () (&Locker-read-unlock! _%l116616%_))))
              (declare (not safe))
              (##dynamic-wind __tmp118079 __tmp118078 __tmp118077))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each113077%_
       '#f))
    (define _%locked-hash-table::HashTable::length113079%_
      (lambda (_%self116439%_)
        (let ((_%self116443%_ _%self116439%_))
          (let ((_%h116453%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116443%_ '1 '#f '#f)))
                (_%l116455%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116443%_ '2 '#f '#f))))
            ((lambda (_%g116457116459%_)
               (let ((_%val116462%_ _%g116457116459%_))
                 (if (fixnum? _%val116462%_)
                     _%val116462%_
                     (let ()
                       (declare (not safe))
                       (error '"bad cast" fixnum::t _%val116462%_)))))
             (let ((__tmp118082 (lambda () (&Locker-read-lock! _%l116455%_)))
                   (__tmp118081 (lambda () (&HashTable-length _%h116453%_)))
                   (__tmp118080
                    (lambda () (&Locker-read-unlock! _%l116455%_))))
               (declare (not safe))
               (##dynamic-wind __tmp118082 __tmp118081 __tmp118080)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length113079%_
       '#f))
    (define _%locked-hash-table::HashTable::copy113081%_
      (lambda (_%self116291%_)
        (let ((_%self116295%_ _%self116291%_))
          (let ((_%h116305%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116295%_ '1 '#f '#f)))
                (_%l116307%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116295%_ '2 '#f '#f))))
            (let ((_%$obj116313%_
                   (let ((__tmp118085
                          (lambda () (&Locker-read-lock! _%l116307%_)))
                         (__tmp118084
                          (lambda () (&HashTable-copy _%h116305%_)))
                         (__tmp118083
                          (lambda () (&Locker-read-unlock! _%l116307%_))))
                     (declare (not safe))
                     (##dynamic-wind __tmp118085 __tmp118084 __tmp118083))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj116313%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj116313%_)))
                       '#t)
                  _%$obj116313%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj116313%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy113081%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!113083%_
      (lambda (_%self116146%_)
        (let ((_%self116150%_ _%self116146%_))
          (let ((_%h116160%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116150%_ '1 '#f '#f)))
                (_%l116162%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self116150%_ '2 '#f '#f))))
            (let ((__tmp118088 (lambda () (&Locker-write-lock! _%l116162%_)))
                  (__tmp118087 (lambda () (&HashTable-clear! _%h116160%_)))
                  (__tmp118086
                   (lambda () (&Locker-write-unlock! _%l116162%_))))
              (declare (not safe))
              (##dynamic-wind __tmp118088 __tmp118087 __tmp118086))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!113083%_
       '#f))
    (let ((__tmp118089 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp118089 'Locker::read-lock! mutex-lock!))
    (let ((__tmp118090 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp118090 'Locker::read-unlock! mutex-unlock!))
    (let ((__tmp118091 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp118091 'Locker::write-lock! mutex-lock!))
    (let ((__tmp118092 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp118092 'Locker::write-unlock! mutex-unlock!))
    (define _%checked-hash-table::HashTable::ref113296%_
      (lambda (_%self115981%_ _%key115982%_ _%default115983%_)
        (let* ((_%self115986%_ _%self115981%_)
               (_%key115995%_ _%key115982%_)
               (_%default116003%_ _%default115983%_))
          (declare (not safe))
          (let ((_%h116014%_
                 (##unchecked-structure-ref _%self115986%_ '1 '#f '#f))
                (_%key?116016%_
                 (##unchecked-structure-ref _%self115986%_ '2 '#f '#f)))
            (if ((lambda (_%key?116019%_ _%key116020%_ _%default116021%_)
                   (_%key?116019%_ _%key116020%_))
                 _%key?116016%_
                 _%key115995%_
                 _%default116003%_)
                (&HashTable-ref _%h116014%_ _%key115995%_ _%default116003%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key115995%_ (cons _%default116003%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref113296%_
       '#f))
    (define _%checked-hash-table::HashTable::set!113298%_
      (lambda (_%self115816%_ _%key115817%_ _%value115818%_)
        (let* ((_%self115821%_ _%self115816%_)
               (_%key115830%_ _%key115817%_)
               (_%value115838%_ _%value115818%_))
          (declare (not safe))
          (let ((_%h115849%_
                 (##unchecked-structure-ref _%self115821%_ '1 '#f '#f))
                (_%key?115851%_
                 (##unchecked-structure-ref _%self115821%_ '2 '#f '#f)))
            (if ((lambda (_%key?115854%_ _%key115855%_ _%value115856%_)
                   (_%key?115854%_ _%key115855%_))
                 _%key?115851%_
                 _%key115830%_
                 _%value115838%_)
                (&HashTable-set! _%h115849%_ _%key115830%_ _%value115838%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key115830%_ (cons _%value115838%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!113298%_
       '#f))
    (define _%checked-hash-table::HashTable::update!113300%_
      (lambda (_%self115641%_ _%key115642%_ _%update115643%_ _%default115644%_)
        (let* ((_%self115647%_ _%self115641%_)
               (_%key115656%_ _%key115642%_)
               (_%update115664%_ _%update115643%_)
               (_%default115672%_ _%default115644%_))
          (declare (not safe))
          (let ((_%h115683%_
                 (##unchecked-structure-ref _%self115647%_ '1 '#f '#f))
                (_%key?115685%_
                 (##unchecked-structure-ref _%self115647%_ '2 '#f '#f)))
            (if ((lambda (_%key?115688%_
                          _%key115689%_
                          _%update115690%_
                          _%default115691%_)
                   (_%key?115688%_ _%key115689%_))
                 _%key?115685%_
                 _%key115656%_
                 _%update115664%_
                 _%default115672%_)
                (&HashTable-update!
                 _%h115683%_
                 _%key115656%_
                 _%update115664%_
                 _%default115672%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key115656%_
                         (cons _%update115664%_ (cons _%default115672%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!113300%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!113302%_
      (lambda (_%self115486%_ _%key115487%_)
        (let* ((_%self115490%_ _%self115486%_) (_%key115499%_ _%key115487%_))
          (declare (not safe))
          (let ((_%h115510%_
                 (##unchecked-structure-ref _%self115490%_ '1 '#f '#f))
                (_%key?115512%_
                 (##unchecked-structure-ref _%self115490%_ '2 '#f '#f)))
            (if ((lambda (_%key?115515%_ _%key115516%_)
                   (_%key?115515%_ _%key115516%_))
                 _%key?115512%_
                 _%key115499%_)
                (&HashTable-delete! _%h115510%_ _%key115499%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key115499%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!113302%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each113304%_
      (lambda (_%self115331%_ _%proc115332%_)
        (let* ((_%self115335%_ _%self115331%_) (_%proc115344%_ _%proc115332%_))
          (declare (not safe))
          (let ((_%h115355%_
                 (##unchecked-structure-ref _%self115335%_ '1 '#f '#f))
                (_%key?115357%_
                 (##unchecked-structure-ref _%self115335%_ '2 '#f '#f)))
            (if ((lambda (_%key?115360%_ _%proc115361%_) '#t)
                 _%key?115357%_
                 _%proc115344%_)
                (&HashTable-for-each _%h115355%_ _%proc115344%_)
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc115344%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each113304%_
       '#f))
    (define _%checked-hash-table::HashTable::length113306%_
      (lambda (_%self115188%_)
        (let ((_%self115191%_ _%self115188%_))
          (declare (not safe))
          (let ((_%h115203%_
                 (##unchecked-structure-ref _%self115191%_ '1 '#f '#f))
                (_%key?115205%_
                 (##unchecked-structure-ref _%self115191%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-length _%h115203%_)
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
       _%checked-hash-table::HashTable::length113306%_
       '#f))
    (define _%checked-hash-table::HashTable::copy113308%_
      (lambda (_%self115045%_)
        (let ((_%self115048%_ _%self115045%_))
          (declare (not safe))
          (let ((_%h115060%_
                 (##unchecked-structure-ref _%self115048%_ '1 '#f '#f))
                (_%key?115062%_
                 (##unchecked-structure-ref _%self115048%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-copy _%h115060%_)
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
       _%checked-hash-table::HashTable::copy113308%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!113310%_
      (lambda (_%self114902%_)
        (let ((_%self114905%_ _%self114902%_))
          (declare (not safe))
          (let ((_%h114917%_
                 (##unchecked-structure-ref _%self114905%_ '1 '#f '#f))
                (_%key?114919%_
                 (##unchecked-structure-ref _%self114905%_ '2 '#f '#f)))
            (if '#!void
                (&HashTable-clear! _%h114917%_)
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
       _%checked-hash-table::HashTable::clear!113310%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table114772%_
               _%count114773%_
               _%free114774%_
               _%hash114775%_
               _%test114776%_
               _%seed114777%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table114772%_
           _%count114773%_
           _%free114774%_
           _%hash114775%_
           _%test114776%_
           _%seed114777%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords114533%_
               _%size-hint114523114534%_
               _%seed114524114536%_
               _%test114525114538%_
               _%hash114526114540%_
               _%lock114527114542%_
               _%check114528114544%_
               _%weak-keys114529114546%_
               _%weak-values114530114548%_)
        (let* ((_%size-hint114551%_
                (if (eq? _%size-hint114523114534%_ absent-value)
                    '#f
                    _%size-hint114523114534%_))
               (_%seed114553%_
                (if (eq? _%seed114524114536%_ absent-value)
                    '#f
                    _%seed114524114536%_))
               (_%test114555%_
                (if (eq? _%test114525114538%_ absent-value)
                    equal?
                    _%test114525114538%_))
               (_%hash114557%_
                (if (eq? _%hash114526114540%_ absent-value)
                    '#f
                    _%hash114526114540%_))
               (_%lock114559%_
                (if (eq? _%lock114527114542%_ absent-value)
                    '#f
                    _%lock114527114542%_))
               (_%check114561%_
                (if (eq? _%check114528114544%_ absent-value)
                    '#f
                    _%check114528114544%_))
               (_%weak-keys114563%_
                (if (eq? _%weak-keys114529114546%_ absent-value)
                    '#f
                    _%weak-keys114529114546%_))
               (_%weak-values114565%_
                (if (eq? _%weak-values114530114548%_ absent-value)
                    '#f
                    _%weak-values114530114548%_)))
          (letrec ((_%table-seed114568%_
                    (lambda ()
                      (if (fixnum? _%seed114553%_)
                          _%seed114553%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock114569%_
                    (lambda (_%ht114746%_)
                      (let ((_%ht114749%_ _%ht114746%_))
                        (_%__wrap-lock114570%_ _%ht114749%_))))
                   (_%__wrap-lock114570%_
                    (lambda (_%ht114728%_)
                      (let ((_%ht114731%_ _%ht114728%_))
                        (if _%lock114559%_
                            (let ((_%$obj114743%_
                                   (let ((__tmp118093
                                          (let ((_%$obj114740%_
                                                 _%lock114559%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj114740%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj114740%_)))
                                                     '#t)
                                                _%$obj114740%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj114740%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht114731%_
                                      __tmp118093))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj114743%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj114743%_)))
                                       '#t)
                                  _%$obj114743%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj114743%_))))
                            _%ht114731%_))))
                   (_%wrap-checked114571%_
                    (lambda (_%ht114715%_ _%implicit114716%_)
                      (let ((_%ht114719%_ _%ht114715%_))
                        (_%__wrap-checked114572%_
                         _%ht114719%_
                         _%implicit114716%_))))
                   (_%__wrap-checked114572%_
                    (lambda (_%ht114688%_ _%implicit114689%_)
                      (let ((_%ht114692%_ _%ht114688%_))
                        (if _%check114561%_
                            (let ((_%$obj114712%_
                                   (let ((__tmp118094
                                          (if (procedure? _%check114561%_)
                                              _%check114561%_
                                              _%implicit114689%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht114692%_
                                      __tmp118094))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj114712%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj114712%_)))
                                       '#t)
                                  _%$obj114712%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj114712%_))))
                            _%ht114692%_))))
                   (_%make114573%_
                    (lambda (_%kons114672%_
                             _%key?114673%_
                             _%hash114674%_
                             _%test114675%_)
                      (let* ((_%size114678%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint114551%_)))
                             (_%table114680%_
                              (let ((__tmp118095 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size114678%_ __tmp118095)))
                             (_%ht114685%_
                              (let ((_%$obj114682%_
                                     (_%kons114672%_
                                      _%table114680%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size114678%_ '2))
                                      _%hash114674%_
                                      _%test114675%_
                                      (_%table-seed114568%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj114682%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj114682%_)))
                                         '#t)
                                    _%$obj114682%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj114682%_))))))
                        (_%__wrap-checked114572%_
                         (_%__wrap-lock114570%_ _%ht114685%_)
                         _%key?114673%_))))
                   (_%make-gc-hash-table114574%_
                    (lambda ()
                      (let ((_%ht114670%_
                             (let ((_%$obj114667%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint114551%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj114667%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj114667%_)))
                                        '#t)
                                   _%$obj114667%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj114667%_))))))
                        (_%__wrap-checked114572%_
                         (_%__wrap-lock114570%_ _%ht114670%_)
                         true))))
                   (_%make-gambit-table114575%_
                    (lambda ()
                      (let* ((_%size114644%_
                              (let ((_%$e114641%_ _%size-hint114551%_))
                                (if _%$e114641%_
                                    _%$e114641%_
                                    (macro-absent-obj))))
                             (_%test114649%_
                              (let ((_%$e114646%_ _%test114555%_))
                                (if _%$e114646%_ _%$e114646%_ equal?)))
                             (_%hash114657%_
                              (let ((_%$e114651%_ _%hash114557%_))
                                (if _%$e114651%_
                                    _%$e114651%_
                                    (if (eq? _%test114649%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test114649%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht114662%_
                              (let ((_%$obj114659%_
                                     (make-table
                                      'size:
                                      _%size114644%_
                                      'test:
                                      _%test114649%_
                                      'hash:
                                      _%hash114657%_
                                      'weak-keys:
                                      _%weak-keys114563%_
                                      'weak-values:
                                      _%weak-values114565%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj114659%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj114659%_)))
                                         '#t)
                                    _%$obj114659%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj114659%_))))))
                        (_%__wrap-checked114572%_
                         (_%__wrap-lock114570%_ _%ht114662%_)
                         true)))))
            (if (or _%weak-keys114563%_ _%weak-values114565%_)
                (_%make-gambit-table114575%_)
                (if (and (or (eq? _%test114555%_ eq?)
                             (eq? _%test114555%_ ##eq?))
                         (or (not _%hash114557%_)
                             (eq? _%hash114557%_ eq?-hash)
                             (eq? _%hash114557%_ eq-hash))
                         (not _%seed114553%_))
                    (_%make-gc-hash-table114574%_)
                    (if (and (or (eq? _%test114555%_ eq?)
                                 (eq? _%test114555%_ ##eq?))
                             (or (not _%hash114557%_)
                                 (eq? _%hash114557%_ eq?-hash)
                                 (eq? _%hash114557%_ eq-hash)))
                        (_%make114573%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test114555%_ eqv?)
                                     (eq? _%test114555%_ ##eqv?))
                                 (or (not _%hash114557%_)
                                     (eq? _%hash114557%_ eqv?-hash)
                                     (eq? _%hash114557%_ eqv-hash)))
                            (_%make114573%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test114555%_ eq?)
                                         (eq? _%test114555%_ ##eq?))
                                     (or (eq? _%hash114557%_ symbolic-hash)
                                         (eq? _%hash114557%_ ##symbol-hash)))
                                (_%make114573%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test114555%_ eq?)
                                             (eq? _%test114555%_ ##eq?))
                                         (eq? _%hash114557%_ immediate-hash))
                                    (_%make114573%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test114555%_ equal?)
                                                 (eq? _%test114555%_ ##equal?)
                                                 (eq? _%test114555%_ string=?)
                                                 (eq? _%test114555%_
                                                      ##string=?))
                                             (or (eq? _%hash114557%_
                                                      string-hash)
                                                 (eq? _%hash114557%_
                                                      ##string=?-hash)))
                                        (_%make114573%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test114555%_ equal?)
                                                 (not _%hash114557%_))
                                            (_%make114573%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test114555%_)
                                                (if (procedure? _%hash114557%_)
                                                    (_%make114573%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash114557%_
                                                     _%test114555%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash114557%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test114555%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords114762%_ . _%args114763%_)
        (apply make-hash-table__%
               _%@@keywords114762%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords114762%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords114762%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords114762%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords114762%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords114762%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords114762%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords114762%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords114762%_
                  'weak-values:
                  absent-value))
               _%args114763%_)))
    (define make-hash-table
      (lambda _%args114531114769%_
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
               _%args114531114769%_)))
    (define make-hash-table-eq
      (lambda _%args114520%_
        (apply make-hash-table 'test: eq? _%args114520%_)))
    (define make-hash-table-eqv
      (lambda _%args114518%_
        (apply make-hash-table 'test: eqv? _%args114518%_)))
    (define make-hash-table-symbolic
      (lambda _%args114516%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args114516%_)))
    (define make-hash-table-string
      (lambda _%args114514%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args114514%_)))
    (define make-hash-table-immediate
      (lambda _%args114512%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args114512%_)))
    (define list->hash-table
      (lambda (_%lst114509%_ . _%args114510%_)
        (list->hash-table!
         _%lst114509%_
         (apply make-hash-table
                'size:
                (length _%lst114509%_)
                _%args114510%_))))
    (define list->hash-table-eq
      (lambda (_%lst114506%_ . _%args114507%_)
        (list->hash-table!
         _%lst114506%_
         (apply make-hash-table-eq
                'size:
                (length _%lst114506%_)
                _%args114507%_))))
    (define list->hash-table-eqv
      (lambda (_%lst114503%_ . _%args114504%_)
        (list->hash-table!
         _%lst114503%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst114503%_)
                _%args114504%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst114500%_ . _%args114501%_)
        (list->hash-table!
         _%lst114500%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst114500%_)
                _%args114501%_))))
    (define list->hash-table-string
      (lambda (_%lst114497%_ . _%args114498%_)
        (list->hash-table!
         _%lst114497%_
         (apply make-hash-table-string
                'size:
                (length _%lst114497%_)
                _%args114498%_))))
    (define list->hash-table-immediate
      (lambda (_%lst114494%_ . _%args114495%_)
        (list->hash-table!
         _%lst114494%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst114494%_)
                _%args114495%_))))
    (define list->hash-table!
      (lambda (_%lst114461%_ _%h114462%_)
        (for-each
         (lambda (_%el114464%_)
           (let* ((_%el114465114472%_ _%el114464%_)
                  (_%E114467114476%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el114465114472%_
                              '([k . v])))
                     '#!void))
                  (_%K114468114482%_
                   (lambda (_%v114479%_ _%k114480%_)
                     (&HashTable-set! _%h114462%_ _%k114480%_ _%v114479%_))))
             (if (pair? _%el114465114472%_)
                 (let ((_%hd114469114485%_
                        (let ()
                          (declare (not safe))
                          (##car _%el114465114472%_)))
                       (_%tl114470114487%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el114465114472%_))))
                   (let* ((_%k114490%_ _%hd114469114485%_)
                          (_%v114492%_ _%tl114470114487%_))
                     (_%K114468114482%_ _%v114492%_ _%k114490%_)))
                 (_%E114467114476%_))))
         _%lst114461%_)
        _%h114462%_))
    (define plist->hash-table
      (lambda (_%lst114458%_ . _%args114459%_)
        (plist->hash-table!
         _%lst114458%_
         (apply make-hash-table
                'size:
                (length _%lst114458%_)
                _%args114459%_))))
    (define plist->hash-table-eq
      (lambda (_%lst114455%_ . _%args114456%_)
        (plist->hash-table!
         _%lst114455%_
         (apply make-hash-table-eq
                'size:
                (length _%lst114455%_)
                _%args114456%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst114452%_ . _%args114453%_)
        (plist->hash-table!
         _%lst114452%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst114452%_)
                _%args114453%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst114449%_ . _%args114450%_)
        (plist->hash-table!
         _%lst114449%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst114449%_)
                _%args114450%_))))
    (define plist->hash-table-string
      (lambda (_%lst114446%_ . _%args114447%_)
        (plist->hash-table!
         _%lst114446%_
         (apply make-hash-table-string
                'size:
                (length _%lst114446%_)
                _%args114447%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst114443%_ . _%args114444%_)
        (plist->hash-table!
         _%lst114443%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst114443%_)
                _%args114444%_))))
    (define plist->hash-table!
      (lambda (_%lst114383%_ _%h114384%_)
        (let _%loop114386%_ ((_%rest114388%_ _%lst114383%_))
          (let* ((_%rest114389114401%_ _%rest114388%_)
                 (_%else114392114409%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst114383%_)))))
            (let ((_%K114395114424%_
                   (lambda (_%rest114420%_ _%val114421%_ _%key114422%_)
                     (&HashTable-set! _%h114384%_ _%key114422%_ _%val114421%_)
                     (_%loop114386%_ _%rest114420%_)))
                  (_%K114394114414%_ (lambda () _%h114384%_)))
              (let ((_%try-match114391114417%_
                     (lambda ()
                       (if (null? _%rest114389114401%_)
                           (_%K114394114414%_)
                           (_%else114392114409%_)))))
                (if (pair? _%rest114389114401%_)
                    (let ((_%tl114397114429%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest114389114401%_)))
                          (_%hd114396114427%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest114389114401%_))))
                      (if (pair? _%tl114397114429%_)
                          (let ((_%tl114399114436%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl114397114429%_)))
                                (_%hd114398114434%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl114397114429%_))))
                            (let ((_%key114432%_ _%hd114396114427%_)
                                  (_%val114439%_ _%hd114398114434%_)
                                  (_%rest114441%_ _%tl114399114436%_))
                              (_%K114395114424%_
                               _%rest114441%_
                               _%val114439%_
                               _%key114432%_)))
                          (_%else114392114409%_)))
                    (_%try-match114391114417%_))))))))
    (define hash-length
      (lambda (_%h114365%_)
        (let* ((_%h114371%_
                (let ((_%$obj114368%_ _%h114365%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114368%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114368%_)))
                           '#t)
                      _%$obj114368%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114368%_)))))
               (_%h114373%_ _%h114371%_))
          (__hash-length _%h114373%_))))
    (define __hash-length
      (lambda (_%h114353%_)
        (let ((_%h114356%_ _%h114353%_)) (__HashTable-length _%h114356%_))))
    (define hash-ref__%
      (lambda (_%h114321%_ _%key114322%_ _%default114323%_)
        (let* ((_%h114329%_
                (let ((_%$obj114326%_ _%h114321%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114326%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114326%_)))
                           '#t)
                      _%$obj114326%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114326%_)))))
               (_%h114331%_ _%h114329%_))
          (__hash-ref__% _%h114331%_ _%key114322%_ _%default114323%_))))
    (define hash-ref__0
      (lambda (_%h114344%_ _%key114345%_)
        (let ((_%default114347%_ (macro-absent-obj)))
          (hash-ref__% _%h114344%_ _%key114345%_ _%default114347%_))))
    (define hash-ref
      (lambda _g118096_
        (let ((_g118097_ (let () (declare (not safe)) (##length _g118096_))))
          (cond ((let () (declare (not safe)) (##fx= _g118097_ 2))
                 (apply hash-ref__0 _g118096_))
                ((let () (declare (not safe)) (##fx= _g118097_ 3))
                 (apply hash-ref__% _g118096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g118096_))))))
    (define __hash-ref__%
      (lambda (_%h114292%_ _%key114293%_ _%default114294%_)
        (let* ((_%h114297%_ _%h114292%_)
               (_%result114306%_
                (&HashTable-ref _%h114297%_ _%key114293%_ _%default114294%_)))
          (if (eq? _%result114306%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h114297%_
               'key:
               _%key114293%_)
              _%result114306%_))))
    (define __hash-ref__0
      (lambda (_%h114311%_ _%key114312%_)
        (let ((_%default114314%_ (macro-absent-obj)))
          (__hash-ref__% _%h114311%_ _%key114312%_ _%default114314%_))))
    (define __hash-ref
      (lambda _g118098_
        (let ((_g118099_ (let () (declare (not safe)) (##length _g118098_))))
          (cond ((let () (declare (not safe)) (##fx= _g118099_ 2))
                 (apply __hash-ref__0 _g118098_))
                ((let () (declare (not safe)) (##fx= _g118099_ 3))
                 (apply __hash-ref__% _g118098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g118098_))))))
    (define hash-get
      (lambda (_%h114272%_ _%key114273%_)
        (let* ((_%h114279%_
                (let ((_%$obj114276%_ _%h114272%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114276%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114276%_)))
                           '#t)
                      _%$obj114276%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114276%_)))))
               (_%h114281%_ _%h114279%_))
          (__hash-get _%h114281%_ _%key114273%_))))
    (define __hash-get
      (lambda (_%h114259%_ _%key114260%_)
        (let ((_%h114263%_ _%h114259%_))
          (&HashTable-ref _%h114263%_ _%key114260%_ '#f))))
    (define hash-put!
      (lambda (_%h114239%_ _%key114240%_ _%value114241%_)
        (let* ((_%h114247%_
                (let ((_%$obj114244%_ _%h114239%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114244%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114244%_)))
                           '#t)
                      _%$obj114244%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114244%_)))))
               (_%h114249%_ _%h114247%_))
          (__hash-put! _%h114249%_ _%key114240%_ _%value114241%_))))
    (define __hash-put!
      (lambda (_%h114225%_ _%key114226%_ _%value114227%_)
        (let ((_%h114230%_ _%h114225%_))
          (&HashTable-set! _%h114230%_ _%key114226%_ _%value114227%_))))
    (define hash-update!__%
      (lambda (_%h114190%_ _%key114191%_ _%update114192%_ _%default114193%_)
        (let* ((_%h114199%_
                (let ((_%$obj114196%_ _%h114190%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114196%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114196%_)))
                           '#t)
                      _%$obj114196%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114196%_)))))
               (_%h114201%_ _%h114199%_))
          (__hash-update!__%
           _%h114201%_
           _%key114191%_
           _%update114192%_
           _%default114193%_))))
    (define hash-update!__0
      (lambda (_%h114214%_ _%key114215%_ _%update114216%_)
        (let ((_%default114218%_ '#!void))
          (hash-update!__%
           _%h114214%_
           _%key114215%_
           _%update114216%_
           _%default114218%_))))
    (define hash-update!
      (lambda _g118100_
        (let ((_g118101_ (let () (declare (not safe)) (##length _g118100_))))
          (cond ((let () (declare (not safe)) (##fx= _g118101_ 3))
                 (apply hash-update!__0 _g118100_))
                ((let () (declare (not safe)) (##fx= _g118101_ 4))
                 (apply hash-update!__% _g118100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g118100_))))))
    (define __hash-update!__%
      (lambda (_%h114160%_ _%key114161%_ _%update114162%_ _%default114163%_)
        (let ((_%h114166%_ _%h114160%_))
          (HashTable-update!
           _%h114166%_
           _%key114161%_
           _%update114162%_
           _%default114163%_))))
    (define __hash-update!__0
      (lambda (_%h114178%_ _%key114179%_ _%update114180%_)
        (let ((_%default114182%_ '#!void))
          (__hash-update!__%
           _%h114178%_
           _%key114179%_
           _%update114180%_
           _%default114182%_))))
    (define __hash-update!
      (lambda _g118102_
        (let ((_g118103_ (let () (declare (not safe)) (##length _g118102_))))
          (cond ((let () (declare (not safe)) (##fx= _g118103_ 3))
                 (apply __hash-update!__0 _g118102_))
                ((let () (declare (not safe)) (##fx= _g118103_ 4))
                 (apply __hash-update!__% _g118102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g118102_))))))
    (define hash-remove!
      (lambda (_%h114140%_ _%key114141%_)
        (let* ((_%h114147%_
                (let ((_%$obj114144%_ _%h114140%_))
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
          (__hash-remove! _%h114149%_ _%key114141%_))))
    (define __hash-remove!
      (lambda (_%h114127%_ _%key114128%_)
        (let ((_%h114131%_ _%h114127%_))
          (&HashTable-delete! _%h114131%_ _%key114128%_))))
    (define hash-key?
      (lambda (_%h114108%_ _%k114109%_)
        (let* ((_%h114115%_
                (let ((_%$obj114112%_ _%h114108%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114112%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114112%_)))
                           '#t)
                      _%$obj114112%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114112%_)))))
               (_%h114117%_ _%h114115%_))
          (__hash-key? _%h114117%_ _%k114109%_))))
    (define __hash-key?
      (lambda (_%h114095%_ _%k114096%_)
        (let ((_%h114099%_ _%h114095%_))
          (not (eq? (&HashTable-ref _%h114099%_ _%k114096%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h114077%_)
        (let* ((_%h114083%_
                (let ((_%$obj114080%_ _%h114077%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114080%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114080%_)))
                           '#t)
                      _%$obj114080%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114080%_)))))
               (_%h114085%_ _%h114083%_))
          (__hash->list _%h114085%_))))
    (define __hash->list
      (lambda (_%h114060%_)
        (let* ((_%h114063%_ _%h114060%_) (_%lst114072%_ '()))
          (&HashTable-for-each
           _%h114063%_
           (lambda (_%k114074%_ _%v114075%_)
             (set! _%lst114072%_
                   (cons (cons _%k114074%_ _%v114075%_) _%lst114072%_))))
          _%lst114072%_)))
    (define hash->plist
      (lambda (_%h114042%_)
        (let* ((_%h114048%_
                (let ((_%$obj114045%_ _%h114042%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj114045%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj114045%_)))
                           '#t)
                      _%$obj114045%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj114045%_)))))
               (_%h114050%_ _%h114048%_))
          (__hash->plist _%h114050%_))))
    (define __hash->plist
      (lambda (_%h114025%_)
        (let* ((_%h114028%_ _%h114025%_) (_%lst114037%_ '()))
          (&HashTable-for-each
           _%h114028%_
           (lambda (_%k114039%_ _%v114040%_)
             (set! _%lst114037%_
                   (cons _%k114039%_ (cons _%v114040%_ _%lst114037%_)))))
          _%lst114037%_)))
    (define hash-for-each
      (lambda (_%proc113996%_ _%h113997%_)
        (if (procedure? _%proc113996%_)
            (let* ((_%proc114001%_ _%proc113996%_)
                   (_%h114013%_
                    (let ((_%$obj114010%_ _%h113997%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj114010%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj114010%_)))
                               '#t)
                          _%$obj114010%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj114010%_)))))
                   (_%h114015%_ _%h114013%_))
              (__hash-for-each _%proc114001%_ _%h114015%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@583.22-583.26"
               'contract:
               'procedure?
               'value:
               _%proc113996%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc113975%_ _%h113976%_)
        (let* ((_%proc113979%_ _%proc113975%_) (_%h113987%_ _%h113976%_))
          (&HashTable-for-each _%h113987%_ _%proc113979%_))))
    (define hash-map
      (lambda (_%proc113946%_ _%h113947%_)
        (if (procedure? _%proc113946%_)
            (let* ((_%proc113951%_ _%proc113946%_)
                   (_%h113963%_
                    (let ((_%$obj113960%_ _%h113947%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj113960%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj113960%_)))
                               '#t)
                          _%$obj113960%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj113960%_)))))
                   (_%h113965%_ _%h113963%_))
              (__hash-map _%proc113951%_ _%h113965%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@586.17-586.21"
               'contract:
               'procedure?
               'value:
               _%proc113946%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc113920%_ _%h113921%_)
        (let* ((_%proc113924%_ _%proc113920%_)
               (_%h113932%_ _%h113921%_)
               (_%result113941%_ '()))
          (&HashTable-for-each
           _%h113932%_
           (lambda (_%k113943%_ _%v113944%_)
             (set! _%result113941%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc113924%_ _%k113943%_ _%v113944%_))
                         _%result113941%_))))
          _%result113941%_)))
    (define hash-fold
      (lambda (_%proc113890%_ _%iv113891%_ _%h113892%_)
        (if (procedure? _%proc113890%_)
            (let* ((_%proc113896%_ _%proc113890%_)
                   (_%h113908%_
                    (let ((_%$obj113905%_ _%h113892%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj113905%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj113905%_)))
                               '#t)
                          _%$obj113905%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj113905%_)))))
                   (_%h113910%_ _%h113908%_))
              (__hash-fold _%proc113896%_ _%iv113891%_ _%h113910%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.18-592.22"
               'contract:
               'procedure?
               'value:
               _%proc113890%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc113863%_ _%iv113864%_ _%h113865%_)
        (let* ((_%proc113868%_ _%proc113863%_)
               (_%h113876%_ _%h113865%_)
               (_%result113885%_ _%iv113864%_))
          (&HashTable-for-each
           _%h113876%_
           (lambda (_%k113887%_ _%v113888%_)
             (set! _%result113885%_
                   (let ()
                     (declare (not safe))
                     (_%proc113868%_
                      _%k113887%_
                      _%v113888%_
                      _%result113885%_)))))
          _%result113885%_)))
    (define hash-find__%
      (lambda (_%proc113821%_ _%h113822%_ _%default-value113823%_)
        (if (procedure? _%proc113821%_)
            (let* ((_%proc113827%_ _%proc113821%_)
                   (_%h113839%_
                    (let ((_%$obj113836%_ _%h113822%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj113836%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj113836%_)))
                               '#t)
                          _%$obj113836%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj113836%_)))))
                   (_%h113841%_ _%h113839%_))
              (__hash-find__%
               _%proc113827%_
               _%h113841%_
               _%default-value113823%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@597.18-597.22"
               'contract:
               'procedure?
               'value:
               _%proc113821%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc113854%_ _%h113855%_)
        (let ((_%default-value113857%_ '#f))
          (hash-find__% _%proc113854%_ _%h113855%_ _%default-value113857%_))))
    (define hash-find
      (lambda _g118104_
        (let ((_g118105_ (let () (declare (not safe)) (##length _g118104_))))
          (cond ((let () (declare (not safe)) (##fx= _g118105_ 2))
                 (apply hash-find__0 _g118104_))
                ((let () (declare (not safe)) (##fx= _g118105_ 3))
                 (apply hash-find__% _g118104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g118104_))))))
    (define __hash-find__%
      (lambda (_%proc113778%_ _%h113779%_ _%default-value113780%_)
        (let* ((_%proc113783%_ _%proc113778%_)
               (_%h113791%_ _%h113779%_)
               (__tmp118106
                (lambda (_%return113800%_)
                  (&HashTable-for-each
                   _%h113791%_
                   (lambda (_%k113802%_ _%v113803%_)
                     (let ((_%$e113805%_
                            (let ()
                              (declare (not safe))
                              (_%proc113783%_ _%k113802%_ _%v113803%_))))
                       (if _%$e113805%_
                           (_%return113800%_ _%$e113805%_)
                           '#!void))))
                  _%default-value113780%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp118106))))
    (define __hash-find__0
      (lambda (_%proc113811%_ _%h113812%_)
        (let ((_%default-value113814%_ '#f))
          (__hash-find__%
           _%proc113811%_
           _%h113812%_
           _%default-value113814%_))))
    (define __hash-find
      (lambda _g118107_
        (let ((_g118108_ (let () (declare (not safe)) (##length _g118107_))))
          (cond ((let () (declare (not safe)) (##fx= _g118108_ 2))
                 (apply __hash-find__0 _g118107_))
                ((let () (declare (not safe)) (##fx= _g118108_ 3))
                 (apply __hash-find__% _g118107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g118107_))))))
    (define hash-keys
      (lambda (_%h113759%_)
        (let* ((_%h113765%_
                (let ((_%$obj113762%_ _%h113759%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113762%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113762%_)))
                           '#t)
                      _%$obj113762%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj113762%_)))))
               (_%h113767%_ _%h113765%_))
          (__hash-keys _%h113767%_))))
    (define __hash-keys
      (lambda (_%h113742%_)
        (let* ((_%h113745%_ _%h113742%_) (_%result113754%_ '()))
          (&HashTable-for-each
           _%h113745%_
           (lambda (_%k113756%_ _%v113757%_)
             (set! _%result113754%_ (cons _%k113756%_ _%result113754%_))))
          _%result113754%_)))
    (define hash-values
      (lambda (_%h113724%_)
        (let* ((_%h113730%_
                (let ((_%$obj113727%_ _%h113724%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113727%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113727%_)))
                           '#t)
                      _%$obj113727%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj113727%_)))))
               (_%h113732%_ _%h113730%_))
          (__hash-values _%h113732%_))))
    (define __hash-values
      (lambda (_%h113707%_)
        (let* ((_%h113710%_ _%h113707%_) (_%result113719%_ '()))
          (&HashTable-for-each
           _%h113710%_
           (lambda (_%k113721%_ _%v113722%_)
             (set! _%result113719%_ (cons _%v113722%_ _%result113719%_))))
          _%result113719%_)))
    (define hash-copy
      (lambda (_%h113689%_)
        (let* ((_%h113695%_
                (let ((_%$obj113692%_ _%h113689%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113692%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113692%_)))
                           '#t)
                      _%$obj113692%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj113692%_)))))
               (_%h113697%_ _%h113695%_))
          (__hash-copy _%h113697%_))))
    (define __hash-copy
      (lambda (_%h113677%_)
        (let ((_%h113680%_ _%h113677%_)) (__HashTable-copy _%h113680%_))))
    (define hash-clear!
      (lambda (_%h113659%_)
        (let* ((_%h113665%_
                (let ((_%$obj113662%_ _%h113659%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113662%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113662%_)))
                           '#t)
                      _%$obj113662%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj113662%_)))))
               (_%h113667%_ _%h113665%_))
          (__hash-clear! _%h113667%_))))
    (define __hash-clear!
      (lambda (_%h113647%_)
        (let ((_%h113650%_ _%h113647%_)) (&HashTable-clear! _%h113650%_))))
    (define hash-merge
      (lambda (_%h113628%_ . _%rest113629%_)
        (let* ((_%h113635%_
                (let ((_%$obj113632%_ _%h113628%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113632%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113632%_)))
                           '#t)
                      _%$obj113632%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj113632%_)))))
               (_%h113637%_ _%h113635%_))
          (declare (not safe))
          (##apply __hash-merge _%h113637%_ _%rest113629%_))))
    (define __hash-merge
      (lambda (_%h113613%_ . _%rest113614%_)
        (let* ((_%h113617%_ _%h113613%_)
               (_%copy113626%_ (__HashTable-copy _%h113617%_)))
          (apply hash-merge! _%copy113626%_ _%rest113614%_)
          _%copy113626%_)))
    (define hash-merge-right
      (lambda (_%h113594%_ . _%rest113595%_)
        (let* ((_%h113601%_
                (let ((_%$obj113598%_ _%h113594%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113598%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113598%_)))
                           '#t)
                      _%$obj113598%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj113598%_)))))
               (_%h113603%_ _%h113601%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h113603%_ _%rest113595%_))))
    (define __hash-merge-right
      (lambda (_%h113579%_ . _%rest113580%_)
        (let* ((_%h113583%_ _%h113579%_)
               (_%copy113592%_ (__HashTable-copy _%h113583%_)))
          (apply hash-merge-right! _%copy113592%_ _%rest113580%_)
          _%copy113592%_)))
    (define hash-merge!
      (lambda (_%h113560%_ . _%rest113561%_)
        (let* ((_%h113567%_
                (let ((_%$obj113564%_ _%h113560%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113564%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113564%_)))
                           '#t)
                      _%$obj113564%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj113564%_)))))
               (_%h113569%_ _%h113567%_))
          (declare (not safe))
          (##apply __hash-merge! _%h113569%_ _%rest113561%_))))
    (define __hash-merge!
      (lambda (_%h113523%_ . _%rest113524%_)
        (let ((_%h113527%_ _%h113523%_))
          (let ((__tmp118109
                 (lambda (_%hr113536%_)
                   (let* ((_%hr113542%_
                           (let ((_%$obj113539%_ _%hr113536%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj113539%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj113539%_)))
                                      '#t)
                                 _%$obj113539%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj113539%_)))))
                          (_%hr113544%_ _%hr113542%_))
                     (&HashTable-for-each
                      _%hr113544%_
                      (lambda (_%k113557%_ _%v113558%_)
                        (if (__hash-key? _%h113527%_ _%k113557%_)
                            '#!void
                            (&HashTable-set!
                             _%h113527%_
                             _%k113557%_
                             _%v113558%_))))))))
            (declare (not safe))
            (##for-each __tmp118109 _%rest113524%_))
          _%h113527%_)))
    (define hash-merge-right!
      (lambda (_%h113504%_ . _%rest113505%_)
        (let* ((_%h113511%_
                (let ((_%$obj113508%_ _%h113504%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj113508%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj113508%_)))
                           '#t)
                      _%$obj113508%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj113508%_)))))
               (_%h113513%_ _%h113511%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h113513%_ _%rest113505%_))))
    (define __hash-merge-right!
      (lambda (_%h113467%_ . _%rest113468%_)
        (let ((_%h113471%_ _%h113467%_))
          (let ((__tmp118110
                 (lambda (_%hr113480%_)
                   (let* ((_%hr113486%_
                           (let ((_%$obj113483%_ _%hr113480%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj113483%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj113483%_)))
                                      '#t)
                                 _%$obj113483%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj113483%_)))))
                          (_%hr113488%_ _%hr113486%_))
                     (&HashTable-for-each
                      _%hr113488%_
                      (lambda (_%k113501%_ _%v113502%_)
                        (&HashTable-set!
                         _%h113471%_
                         _%k113501%_
                         _%v113502%_)))))))
            (declare (not safe))
            (##for-each __tmp118110 _%rest113468%_))
          _%h113471%_)))))
