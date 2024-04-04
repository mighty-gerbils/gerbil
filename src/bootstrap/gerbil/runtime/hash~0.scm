(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1712256086)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp106898 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp106898
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args106878%_
        (apply make-instance UnboundKeyError::t _%$args106878%_)))
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
      (lambda (_%where106752%_ _%message106753%_ . _%irritants106754%_)
        (let ((__tmp106899
               (let ((__obj106892
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj106892
                  _%message106753%_
                  'where:
                  _%where106752%_
                  'irritants:
                  _%irritants106754%_)
                 __obj106892)))
          (declare (not safe))
          (raise __tmp106899))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp106900 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp106900
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
      (lambda (_%obj106750%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj106750%_))))
    (define try-HashTable
      (lambda (_%obj106748%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj106748%_))))
    (define HashTable?
      (lambda (_%obj106746%_)
        (let ((__tmp106901
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106746%_ __tmp106901))))
    (define is-HashTable?
      (lambda (_%obj106744%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj106744%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self106728%_)
        (let* ((_%self106733%_
                (let ((_%$obj106730%_ _%self106728%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106730%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106730%_)))
                           '#t)
                      _%$obj106730%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106730%_)))))
               (_%self106735%_ _%self106733%_))
          (declare (not safe))
          (&HashTable-clear! _%self106735%_))))
    (define &HashTable-clear!
      (lambda (_%self106713%_)
        (let ((_%self106715%_ _%self106713%_))
          (declare (not safe))
          (let ((_%obj106725%_
                 (##unchecked-structure-ref _%self106715%_ '1 '#f 'clear!))
                (_%f106726%_
                 (##unchecked-structure-ref _%self106715%_ '2 '#f 'clear!)))
            (_%f106726%_ _%obj106725%_)))))
    (define HashTable-copy
      (lambda (_%self106697%_)
        (let* ((_%self106702%_
                (let ((_%$obj106699%_ _%self106697%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106699%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106699%_)))
                           '#t)
                      _%$obj106699%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106699%_)))))
               (_%self106704%_ _%self106702%_))
          (declare (not safe))
          (__HashTable-copy _%self106704%_))))
    (define __HashTable-copy
      (lambda (_%self106684%_)
        (let* ((_%self106686%_ _%self106684%_)
               (_%$obj106694%_
                (let ()
                  (declare (not safe))
                  (&HashTable-copy _%self106686%_))))
          (if (and (let () (declare (not safe)) (##structure? _%$obj106694%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj106694%_)))
                   '#t)
              _%$obj106694%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj106694%_))))))
    (define &HashTable-copy
      (lambda (_%self106669%_)
        (let ((_%self106671%_ _%self106669%_))
          (declare (not safe))
          (let ((_%obj106681%_
                 (##unchecked-structure-ref _%self106671%_ '1 '#f 'copy))
                (_%f106682%_
                 (##unchecked-structure-ref _%self106671%_ '3 '#f 'copy)))
            (_%f106682%_ _%obj106681%_)))))
    (define HashTable-delete!
      (lambda (_%self106652%_ _%key106653%_)
        (let* ((_%self106658%_
                (let ((_%$obj106655%_ _%self106652%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106655%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106655%_)))
                           '#t)
                      _%$obj106655%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106655%_)))))
               (_%self106660%_ _%self106658%_))
          (declare (not safe))
          (&HashTable-delete! _%self106660%_ _%key106653%_))))
    (define &HashTable-delete!
      (lambda (_%self106636%_ _%key106637%_)
        (let ((_%self106639%_ _%self106636%_))
          (declare (not safe))
          (let ((_%obj106649%_
                 (##unchecked-structure-ref _%self106639%_ '1 '#f 'delete!))
                (_%f106650%_
                 (##unchecked-structure-ref _%self106639%_ '4 '#f 'delete!)))
            (_%f106650%_ _%obj106649%_ _%key106637%_)))))
    (define HashTable-for-each
      (lambda (_%self106609%_ _%proc106610%_)
        (let* ((_%self106615%_
                (let ((_%$obj106612%_ _%self106609%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106612%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106612%_)))
                           '#t)
                      _%$obj106612%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106612%_)))))
               (_%self106617%_ _%self106615%_))
          (if (let () (declare (not safe)) (procedure? _%proc106610%_))
              (let ((_%proc106626%_ _%proc106610%_))
                (declare (not safe))
                (&HashTable-for-each _%self106617%_ _%proc106626%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc106610%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self106585%_ _%proc106586%_)
        (let* ((_%self106588%_ _%self106585%_) (_%proc106595%_ _%proc106586%_))
          (declare (not safe))
          (let ((_%obj106606%_
                 (##unchecked-structure-ref _%self106588%_ '1 '#f 'for-each))
                (_%f106607%_
                 (##unchecked-structure-ref _%self106588%_ '5 '#f 'for-each)))
            (_%f106607%_ _%obj106606%_ _%proc106595%_)))))
    (define HashTable-length
      (lambda (_%self106569%_)
        (let* ((_%self106574%_
                (let ((_%$obj106571%_ _%self106569%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106571%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106571%_)))
                           '#t)
                      _%$obj106571%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106571%_)))))
               (_%self106576%_ _%self106574%_))
          (declare (not safe))
          (__HashTable-length _%self106576%_))))
    (define __HashTable-length
      (lambda (_%self106556%_)
        (let* ((_%self106558%_ _%self106556%_)
               (_%val106566%_
                (let ()
                  (declare (not safe))
                  (&HashTable-length _%self106558%_))))
          (if (let () (declare (not safe)) (fixnum? _%val106566%_))
              _%val106566%_
              (let ()
                (declare (not safe))
                (error '"bad cast" fixnum::t _%val106566%_))))))
    (define &HashTable-length
      (lambda (_%self106541%_)
        (let ((_%self106543%_ _%self106541%_))
          (declare (not safe))
          (let ((_%obj106553%_
                 (##unchecked-structure-ref _%self106543%_ '1 '#f 'length))
                (_%f106554%_
                 (##unchecked-structure-ref _%self106543%_ '6 '#f 'length)))
            (_%f106554%_ _%obj106553%_)))))
    (define HashTable-ref
      (lambda (_%self106523%_ _%key106524%_ _%default106525%_)
        (let* ((_%self106530%_
                (let ((_%$obj106527%_ _%self106523%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106527%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106527%_)))
                           '#t)
                      _%$obj106527%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106527%_)))))
               (_%self106532%_ _%self106530%_))
          (declare (not safe))
          (&HashTable-ref _%self106532%_ _%key106524%_ _%default106525%_))))
    (define &HashTable-ref
      (lambda (_%self106506%_ _%key106507%_ _%default106508%_)
        (let ((_%self106510%_ _%self106506%_))
          (declare (not safe))
          (let ((_%obj106520%_
                 (##unchecked-structure-ref _%self106510%_ '1 '#f 'ref))
                (_%f106521%_
                 (##unchecked-structure-ref _%self106510%_ '7 '#f 'ref)))
            (_%f106521%_ _%obj106520%_ _%key106507%_ _%default106508%_)))))
    (define HashTable-set!
      (lambda (_%self106488%_ _%key106489%_ _%value106490%_)
        (let* ((_%self106495%_
                (let ((_%$obj106492%_ _%self106488%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106492%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106492%_)))
                           '#t)
                      _%$obj106492%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106492%_)))))
               (_%self106497%_ _%self106495%_))
          (declare (not safe))
          (&HashTable-set! _%self106497%_ _%key106489%_ _%value106490%_))))
    (define &HashTable-set!
      (lambda (_%self106471%_ _%key106472%_ _%value106473%_)
        (let ((_%self106475%_ _%self106471%_))
          (declare (not safe))
          (let ((_%obj106485%_
                 (##unchecked-structure-ref _%self106475%_ '1 '#f 'set!))
                (_%f106486%_
                 (##unchecked-structure-ref _%self106475%_ '8 '#f 'set!)))
            (_%f106486%_ _%obj106485%_ _%key106472%_ _%value106473%_)))))
    (define HashTable-update!
      (lambda (_%self106442%_ _%key106443%_ _%proc106444%_ _%default106445%_)
        (let* ((_%self106450%_
                (let ((_%$obj106447%_ _%self106442%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106447%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106447%_)))
                           '#t)
                      _%$obj106447%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106447%_)))))
               (_%self106452%_ _%self106450%_))
          (if (let () (declare (not safe)) (procedure? _%proc106444%_))
              (let ((_%proc106461%_ _%proc106444%_))
                (declare (not safe))
                (&HashTable-update!
                 _%self106452%_
                 _%key106443%_
                 _%proc106461%_
                 _%default106445%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc106444%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self106414%_ _%key106415%_ _%proc106416%_ _%default106417%_)
        (let* ((_%self106419%_ _%self106414%_) (_%proc106426%_ _%proc106416%_))
          (declare (not safe))
          (let ((_%obj106437%_
                 (##unchecked-structure-ref _%self106419%_ '1 '#f 'update!))
                (_%f106439%_
                 (##unchecked-structure-ref _%self106419%_ '9 '#f 'update!)))
            (_%f106439%_
             _%obj106437%_
             _%key106415%_
             _%proc106426%_
             _%default106417%_)))))
    (define Locker::t
      (let ((__tmp106902 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp106902
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
      (lambda (_%obj106412%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj106412%_))))
    (define try-Locker
      (lambda (_%obj106410%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj106410%_))))
    (define Locker?
      (lambda (_%obj106408%_)
        (let ((__tmp106903
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106408%_ __tmp106903))))
    (define is-Locker?
      (lambda (_%obj106406%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj106406%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self106390%_)
        (let* ((_%self106395%_
                (let ((_%$obj106392%_ _%self106390%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106392%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106392%_)))
                           '#t)
                      _%$obj106392%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106392%_)))))
               (_%self106397%_ _%self106395%_))
          (declare (not safe))
          (&Locker-read-lock! _%self106397%_))))
    (define &Locker-read-lock!
      (lambda (_%self106375%_)
        (let ((_%self106377%_ _%self106375%_))
          (declare (not safe))
          (let ((_%obj106387%_
                 (##unchecked-structure-ref _%self106377%_ '1 '#f 'read-lock!))
                (_%f106388%_
                 (##unchecked-structure-ref
                  _%self106377%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f106388%_ _%obj106387%_)))))
    (define Locker-read-unlock!
      (lambda (_%self106359%_)
        (let* ((_%self106364%_
                (let ((_%$obj106361%_ _%self106359%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106361%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106361%_)))
                           '#t)
                      _%$obj106361%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106361%_)))))
               (_%self106366%_ _%self106364%_))
          (declare (not safe))
          (&Locker-read-unlock! _%self106366%_))))
    (define &Locker-read-unlock!
      (lambda (_%self106344%_)
        (let ((_%self106346%_ _%self106344%_))
          (declare (not safe))
          (let ((_%obj106356%_
                 (##unchecked-structure-ref
                  _%self106346%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f106357%_
                 (##unchecked-structure-ref
                  _%self106346%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f106357%_ _%obj106356%_)))))
    (define Locker-write-lock!
      (lambda (_%self106328%_)
        (let* ((_%self106333%_
                (let ((_%$obj106330%_ _%self106328%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106330%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106330%_)))
                           '#t)
                      _%$obj106330%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106330%_)))))
               (_%self106335%_ _%self106333%_))
          (declare (not safe))
          (&Locker-write-lock! _%self106335%_))))
    (define &Locker-write-lock!
      (lambda (_%self106313%_)
        (let ((_%self106315%_ _%self106313%_))
          (declare (not safe))
          (let ((_%obj106325%_
                 (##unchecked-structure-ref
                  _%self106315%_
                  '1
                  '#f
                  'write-lock!))
                (_%f106326%_
                 (##unchecked-structure-ref
                  _%self106315%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f106326%_ _%obj106325%_)))))
    (define Locker-write-unlock!
      (lambda (_%self106297%_)
        (let* ((_%self106302%_
                (let ((_%$obj106299%_ _%self106297%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106299%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106299%_)))
                           '#t)
                      _%$obj106299%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106299%_)))))
               (_%self106304%_ _%self106302%_))
          (declare (not safe))
          (&Locker-write-unlock! _%self106304%_))))
    (define &Locker-write-unlock!
      (lambda (_%self106280%_)
        (let ((_%self106282%_ _%self106280%_))
          (declare (not safe))
          (let ((_%obj106292%_
                 (##unchecked-structure-ref
                  _%self106282%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f106294%_
                 (##unchecked-structure-ref
                  _%self106282%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f106294%_ _%obj106292%_)))))
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
      (lambda (_%table106273%_
               _%key106274%_
               _%update106275%_
               _%default106276%_)
        (let ((_%result106278%_
               (table-ref _%table106273%_ _%key106274%_ _%default106276%_)))
          (table-set!
           _%table106273%_
           _%key106274%_
           (_%update106275%_ _%default106276%_)))))
    (define gambit-table-for-each
      (lambda (_%table106270%_ _%proc106271%_)
        (table-for-each _%proc106271%_ _%table106270%_)))
    (define gambit-table-clear!
      (lambda (_%table106268%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table106268%_ '0 '5 '#f '#f))))
    (let ((__tmp106904 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106904 'ref table-ref))
    (let ((__tmp106905 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106905 'set! table-set!))
    (let ((__tmp106906 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106906 'update! gambit-table-update!))
    (let ((__tmp106907 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106907 'delete! table-set!))
    (let ((__tmp106908 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106908 'for-each gambit-table-for-each))
    (let ((__tmp106909 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106909 'length table-length))
    (let ((__tmp106910 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106910 'copy table-copy))
    (let ((__tmp106911 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106911 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots106250%_ '(table count free hash test seed))
             (_%slot-vector106252%_ (list->vector (cons '#f _%slots106250%_)))
             (_%slot-table106259%_
              (let ((_%slot-table106254%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106914
                       (lambda (_%slot106256%_ _%field106257%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106254%_
                            _%slot106256%_
                            _%field106257%_))
                         (let ((__tmp106915
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot106256%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106254%_
                            __tmp106915
                            _%field106257%_))))
                      (__tmp106912
                       (let ((__tmp106913
                              (let ()
                                (declare (not safe))
                                (##length _%slots106250%_))))
                         (declare (not safe))
                         (##iota __tmp106913 '1))))
                  (declare (not safe))
                  (##for-each __tmp106914 _%slots106250%_ __tmp106912))
                _%slot-table106254%_))
             (_%flags106261%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields106263%_ '#())
             (_%properties106265%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots106250%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp106916 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags106261%_
         __table::t
         _%fields106263%_
         __tmp106916
         _%slot-vector106252%_
         _%slot-table106259%_
         _%properties106265%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots106232%_ '(gcht immediate))
             (_%slot-vector106234%_ (list->vector (cons '#f _%slots106232%_)))
             (_%slot-table106241%_
              (let ((_%slot-table106236%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106919
                       (lambda (_%slot106238%_ _%field106239%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106236%_
                            _%slot106238%_
                            _%field106239%_))
                         (let ((__tmp106920
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot106238%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106236%_
                            __tmp106920
                            _%field106239%_))))
                      (__tmp106917
                       (let ((__tmp106918
                              (let ()
                                (declare (not safe))
                                (##length _%slots106232%_))))
                         (declare (not safe))
                         (##iota __tmp106918 '1))))
                  (declare (not safe))
                  (##for-each __tmp106919 _%slots106232%_ __tmp106917))
                _%slot-table106236%_))
             (_%flags106243%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields106245%_ '#())
             (_%properties106247%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots106232%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp106921 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags106243%_
         __gc-table::t
         _%fields106245%_
         __tmp106921
         _%slot-vector106234%_
         _%slot-table106241%_
         _%properties106247%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp106923 (list))
            (__tmp106922
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp106923
         '(table lock)
         __tmp106922
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args106229%_
        (apply make-instance locked-hash-table::t _%$args106229%_)))
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
      (let ((__tmp106925 (list))
            (__tmp106924
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp106925
         '(table key-check)
         __tmp106924
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args106226%_
        (apply make-instance checked-hash-table::t _%$args106226%_)))
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
      (let ((__tmp106927 (list hash-table::t))
            (__tmp106926 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp106927
         '()
         __tmp106926
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args106223%_
        (apply make-instance eq-hash-table::t _%$args106223%_)))
    (define eqv-hash-table::t
      (let ((__tmp106929 (list hash-table::t))
            (__tmp106928 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp106929
         '()
         __tmp106928
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args106220%_
        (apply make-instance eqv-hash-table::t _%$args106220%_)))
    (define symbol-hash-table::t
      (let ((__tmp106931 (list hash-table::t))
            (__tmp106930 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp106931
         '()
         __tmp106930
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args106217%_
        (apply make-instance symbol-hash-table::t _%$args106217%_)))
    (define string-hash-table::t
      (let ((__tmp106933 (list hash-table::t))
            (__tmp106932 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp106933
         '()
         __tmp106932
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args106214%_
        (apply make-instance string-hash-table::t _%$args106214%_)))
    (define immediate-hash-table::t
      (let ((__tmp106935 (list hash-table::t))
            (__tmp106934 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp106935
         '()
         __tmp106934
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args106211%_
        (apply make-instance immediate-hash-table::t _%$args106211%_)))
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
      (lambda (_%obj106209%_)
        (let ()
          (declare (not safe))
          (##structure-direct-instance-of?
           _%obj106209%_
           'gerbil/runtime/hash#HashTable::t))))
    (define is-hash-table?
      (lambda (_%obj106207%_)
        (let () (declare (not safe)) (is-HashTable? _%obj106207%_))))
    (define _%locked-hash-table::ref102262%_
      (lambda (_%self106183%_ _%key106185%_ _%default106186%_)
        (let ((_%self106189%_ _%self106183%_))
          (let ((_%h106199%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106189%_ '1 '#f '#f)))
                (_%l106201%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106189%_ '2 '#f '#f))))
            (let ((__tmp106938
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l106201%_))))
                  (__tmp106937
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-ref
                        _%h106199%_
                        _%key106185%_
                        _%default106186%_))))
                  (__tmp106936
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l106201%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106938 __tmp106937 __tmp106936))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref102262%_
       '#f))
    (define _%locked-hash-table::set!102264%_
      (lambda (_%self106036%_ _%key106038%_ _%value106039%_)
        (let ((_%self106042%_ _%self106036%_))
          (let ((_%h106052%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106042%_ '1 '#f '#f)))
                (_%l106054%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106042%_ '2 '#f '#f))))
            (let ((__tmp106941
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l106054%_))))
                  (__tmp106940
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h106052%_
                        _%key106038%_
                        _%value106039%_))))
                  (__tmp106939
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l106054%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106941 __tmp106940 __tmp106939))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!102264%_
       '#f))
    (define _%locked-hash-table::update!102266%_
      (lambda (_%self105888%_ _%key105890%_ _%update105891%_ _%default105892%_)
        (let ((_%self105895%_ _%self105888%_))
          (let ((_%h105905%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105895%_ '1 '#f '#f)))
                (_%l105907%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105895%_ '2 '#f '#f))))
            (let ((__tmp106944
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l105907%_))))
                  (__tmp106943
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-update!
                        _%h105905%_
                        _%key105890%_
                        _%update105891%_
                        _%default105892%_))))
                  (__tmp106942
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l105907%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106944 __tmp106943 __tmp106942))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!102266%_
       '#f))
    (define _%locked-hash-table::delete!102268%_
      (lambda (_%self105742%_ _%key105744%_)
        (let ((_%self105747%_ _%self105742%_))
          (let ((_%h105757%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105747%_ '1 '#f '#f)))
                (_%l105759%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105747%_ '2 '#f '#f))))
            (let ((__tmp106947
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l105759%_))))
                  (__tmp106946
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-delete! _%h105757%_ _%key105744%_))))
                  (__tmp106945
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l105759%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106947 __tmp106946 __tmp106945))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!102268%_
       '#f))
    (define _%locked-hash-table::for-each102270%_
      (lambda (_%self105596%_ _%proc105598%_)
        (let ((_%self105601%_ _%self105596%_))
          (let ((_%h105611%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105601%_ '1 '#f '#f)))
                (_%l105613%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105601%_ '2 '#f '#f))))
            (let ((__tmp106950
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l105613%_))))
                  (__tmp106949
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-for-each _%h105611%_ _%proc105598%_))))
                  (__tmp106948
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l105613%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106950 __tmp106949 __tmp106948))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each102270%_
       '#f))
    (define _%locked-hash-table::length102272%_
      (lambda (_%self105451%_)
        (let ((_%self105455%_ _%self105451%_))
          (let ((_%h105465%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105455%_ '1 '#f '#f)))
                (_%l105467%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105455%_ '2 '#f '#f))))
            (let ((__tmp106953
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l105467%_))))
                  (__tmp106952
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-length _%h105465%_))))
                  (__tmp106951
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l105467%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106953 __tmp106952 __tmp106951))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'length
       _%locked-hash-table::length102272%_
       '#f))
    (define _%locked-hash-table::copy102274%_
      (lambda (_%self105306%_)
        (let ((_%self105310%_ _%self105306%_))
          (let ((_%h105320%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105310%_ '1 '#f '#f)))
                (_%l105322%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105310%_ '2 '#f '#f))))
            (let ((__tmp106956
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-lock! _%l105322%_))))
                  (__tmp106955
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-copy _%h105320%_))))
                  (__tmp106954
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-read-unlock! _%l105322%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106956 __tmp106955 __tmp106954))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy102274%_
       '#f))
    (define _%locked-hash-table::clear!102276%_
      (lambda (_%self105161%_)
        (let ((_%self105165%_ _%self105161%_))
          (let ((_%h105175%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105165%_ '1 '#f '#f)))
                (_%l105177%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105165%_ '2 '#f '#f))))
            (let ((__tmp106959
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-lock! _%l105177%_))))
                  (__tmp106958
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&HashTable-clear! _%h105175%_))))
                  (__tmp106957
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (&Locker-write-unlock! _%l105177%_)))))
              (declare (not safe))
              (##dynamic-wind __tmp106959 __tmp106958 __tmp106957))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!102276%_
       '#f))
    (let ((__tmp106960 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106960 'read-lock! mutex-lock!))
    (let ((__tmp106961 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106961 'read-unlock! mutex-unlock!))
    (let ((__tmp106962 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106962 'write-lock! mutex-lock!))
    (let ((__tmp106963 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp106963 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref102554%_
      (lambda (_%self105014%_ _%key105015%_ _%default105016%_)
        (let ((_%self105019%_ _%self105014%_))
          (let ((_%h105029%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105019%_ '1 '#f '#f)))
                (_%key?105031%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105019%_ '2 '#f '#f))))
            ((lambda (_%g105033105035%_)
               (if (_%g105033105035%_ _%key105015%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key105015%_))))
             _%key?105031%_)
            (let ()
              (declare (not safe))
              (&HashTable-ref _%h105029%_ _%key105015%_ _%default105016%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref102554%_
       '#f))
    (define _%checked-hash-table::set!102556%_
      (lambda (_%self104867%_ _%key104868%_ _%value104869%_)
        (let ((_%self104872%_ _%self104867%_))
          (let ((_%h104882%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104872%_ '1 '#f '#f)))
                (_%key?104884%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104872%_ '2 '#f '#f))))
            ((lambda (_%g104886104888%_)
               (if (_%g104886104888%_ _%key104868%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104868%_))))
             _%key?104884%_)
            (let ()
              (declare (not safe))
              (&HashTable-set! _%h104882%_ _%key104868%_ _%value104869%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!102556%_
       '#f))
    (define _%checked-hash-table::update!102558%_
      (lambda (_%self104721%_ _%key104722%_ _%update104723%_ _%default104724%_)
        (let ((_%self104727%_ _%self104721%_))
          (let ((_%h104737%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104727%_ '1 '#f '#f)))
                (_%key?104739%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104727%_ '2 '#f '#f))))
            ((lambda (_%key?104742%_)
               (if (_%key?104742%_ _%key104722%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104722%_)))
               (if (let () (declare (not safe)) (procedure? _%update104723%_))
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%update104723%_))))
             _%key?104739%_)
            (let ()
              (declare (not safe))
              (&HashTable-update!
               _%h104737%_
               _%key104722%_
               _%update104723%_
               _%default104724%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!102558%_
       '#f))
    (define _%checked-hash-table::delete!102560%_
      (lambda (_%self104575%_ _%key104576%_)
        (let ((_%self104579%_ _%self104575%_))
          (let ((_%h104589%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104579%_ '1 '#f '#f)))
                (_%key?104591%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104579%_ '2 '#f '#f))))
            ((lambda (_%g104593104595%_)
               (if (_%g104593104595%_ _%key104576%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104576%_))))
             _%key?104591%_)
            (let ()
              (declare (not safe))
              (&HashTable-delete! _%h104589%_ _%key104576%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!102560%_
       '#f))
    (define _%checked-hash-table::for-each102562%_
      (lambda (_%self104431%_ _%proc104432%_)
        (let ((_%self104435%_ _%self104431%_))
          (let ((_%h104445%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104435%_ '1 '#f '#f)))
                (_%key?104447%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104435%_ '2 '#f '#f))))
            ((lambda (_%_104450%_)
               (if (let () (declare (not safe)) (procedure? _%proc104432%_))
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%proc104432%_))))
             _%key?104447%_)
            (let ()
              (declare (not safe))
              (&HashTable-for-each _%h104445%_ _%proc104432%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each102562%_
       '#f))
    (define _%checked-hash-table::length102564%_
      (lambda (_%self104290%_)
        (let ((_%self104293%_ _%self104290%_))
          (let ((_%h104303%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104293%_ '1 '#f '#f)))
                (_%key?104305%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104293%_ '2 '#f '#f))))
            (let () (declare (not safe)) (&HashTable-length _%h104303%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'length
       _%checked-hash-table::length102564%_
       '#f))
    (define _%checked-hash-table::copy102566%_
      (lambda (_%self104149%_)
        (let ((_%self104152%_ _%self104149%_))
          (let ((_%h104162%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104152%_ '1 '#f '#f)))
                (_%key?104164%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104152%_ '2 '#f '#f))))
            (let () (declare (not safe)) (&HashTable-copy _%h104162%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'copy
       _%checked-hash-table::copy102566%_
       '#f))
    (define _%checked-hash-table::clear!102568%_
      (lambda (_%self104008%_)
        (let ((_%self104011%_ _%self104008%_))
          (let ((_%h104021%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104011%_ '1 '#f '#f)))
                (_%key?104023%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104011%_ '2 '#f '#f))))
            (let () (declare (not safe)) (&HashTable-clear! _%h104021%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'clear!
       _%checked-hash-table::clear!102568%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table103878%_
               _%count103879%_
               _%free103880%_
               _%hash103881%_
               _%test103882%_
               _%seed103883%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table103878%_
           _%count103879%_
           _%free103880%_
           _%hash103881%_
           _%test103882%_
           _%seed103883%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords103701%_
               _%size-hint103691103702%_
               _%seed103692103704%_
               _%test103693103706%_
               _%hash103694103708%_
               _%lock103695103710%_
               _%check103696103712%_
               _%weak-keys103697103714%_
               _%weak-values103698103716%_)
        (let* ((_%size-hint103719%_
                (if (eq? _%size-hint103691103702%_ absent-value)
                    '#f
                    _%size-hint103691103702%_))
               (_%seed103721%_
                (if (eq? _%seed103692103704%_ absent-value)
                    '#f
                    _%seed103692103704%_))
               (_%test103723%_
                (if (eq? _%test103693103706%_ absent-value)
                    equal?
                    _%test103693103706%_))
               (_%hash103725%_
                (if (eq? _%hash103694103708%_ absent-value)
                    '#f
                    _%hash103694103708%_))
               (_%lock103727%_
                (if (eq? _%lock103695103710%_ absent-value)
                    '#f
                    _%lock103695103710%_))
               (_%check103729%_
                (if (eq? _%check103696103712%_ absent-value)
                    '#f
                    _%check103696103712%_))
               (_%weak-keys103731%_
                (if (eq? _%weak-keys103697103714%_ absent-value)
                    '#f
                    _%weak-keys103697103714%_))
               (_%weak-values103733%_
                (if (eq? _%weak-values103698103716%_ absent-value)
                    '#f
                    _%weak-values103698103716%_)))
          (letrec ((_%table-seed103735%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (fixnum? _%seed103721%_))
                          _%seed103721%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock103736%_
                    (lambda (_%ht103856%_)
                      (if _%lock103727%_
                          (let ((_%$obj103861%_
                                 (let ((__tmp106964
                                        (let ((_%$obj103858%_ _%lock103727%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (##structure?
                                                      _%$obj103858%_))
                                                   (eq? Locker::t
                                                        (let ()
                                                          (declare (not safe))
                                                          (##structure-type
                                                           _%$obj103858%_)))
                                                   '#t)
                                              _%$obj103858%_
                                              (let ()
                                                (declare (not safe))
                                                (cast Locker::interface
                                                      _%$obj103858%_))))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _%ht103856%_
                                    __tmp106964))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103861%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103861%_)))
                                     '#t)
                                _%$obj103861%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103861%_))))
                          _%ht103856%_)))
                   (_%wrap-checked103737%_
                    (lambda (_%ht103850%_ _%implicit103851%_)
                      (if _%check103729%_
                          (let ((_%$obj103853%_
                                 (let ((__tmp106965
                                        (if (let ()
                                              (declare (not safe))
                                              (procedure? _%check103729%_))
                                            _%check103729%_
                                            _%implicit103851%_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _%ht103850%_
                                    __tmp106965))))
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
                          _%ht103850%_)))
                   (_%make103738%_
                    (lambda (_%kons103835%_
                             _%key?103836%_
                             _%hash103837%_
                             _%test103838%_)
                      (let* ((_%size103840%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint103719%_)))
                             (_%table103842%_
                              (let ((__tmp106966 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size103840%_ __tmp106966)))
                             (_%ht103847%_
                              (let ((_%$obj103844%_
                                     (_%kons103835%_
                                      _%table103842%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size103840%_ '2))
                                      _%hash103837%_
                                      _%test103838%_
                                      (let ()
                                        (declare (not safe))
                                        (_%table-seed103735%_)))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103844%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103844%_)))
                                         '#t)
                                    _%$obj103844%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103844%_)))))
                             (__tmp106967
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103736%_ _%ht103847%_))))
                        (declare (not safe))
                        (_%wrap-checked103737%_ __tmp106967 _%key?103836%_))))
                   (_%make-gc-hash-table103739%_
                    (lambda ()
                      (let* ((_%ht103833%_
                              (let ((_%$obj103830%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint103719%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103830%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103830%_)))
                                         '#t)
                                    _%$obj103830%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103830%_)))))
                             (__tmp106968
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103736%_ _%ht103833%_))))
                        (declare (not safe))
                        (_%wrap-checked103737%_ __tmp106968 true))))
                   (_%make-gambit-table103740%_
                    (lambda ()
                      (let* ((_%size103808%_
                              (let ((_%$e103805%_ _%size-hint103719%_))
                                (if _%$e103805%_
                                    _%$e103805%_
                                    (macro-absent-obj))))
                             (_%test103813%_
                              (let ((_%$e103810%_ _%test103723%_))
                                (if _%$e103810%_ _%$e103810%_ equal?)))
                             (_%hash103821%_
                              (let ((_%$e103815%_ _%hash103725%_))
                                (if _%$e103815%_
                                    _%$e103815%_
                                    (if (eq? _%test103813%_ eq?)
                                        (let () eq?-hash)
                                        (if (eq? _%test103813%_ eqv?)
                                            (let () eqv?-hash)
                                            (let () equal?-hash))))))
                             (_%ht103826%_
                              (let ((_%$obj103823%_
                                     (make-table
                                      'size:
                                      _%size103808%_
                                      'test:
                                      _%test103813%_
                                      'hash:
                                      _%hash103821%_
                                      'weak-keys:
                                      _%weak-keys103731%_
                                      'weak-values:
                                      _%weak-values103733%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103823%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103823%_)))
                                         '#t)
                                    _%$obj103823%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103823%_)))))
                             (__tmp106969
                              (let ()
                                (declare (not safe))
                                (_%wrap-lock103736%_ _%ht103826%_))))
                        (declare (not safe))
                        (_%wrap-checked103737%_ __tmp106969 true)))))
            (if (or _%weak-keys103731%_ _%weak-values103733%_)
                (let () (declare (not safe)) (_%make-gambit-table103740%_))
                (if (and (or (eq? _%test103723%_ eq?)
                             (eq? _%test103723%_ ##eq?))
                         (or (let () (declare (not safe)) (not _%hash103725%_))
                             (eq? _%hash103725%_ eq?-hash)
                             (eq? _%hash103725%_ eq-hash))
                         (let () (declare (not safe)) (not _%seed103721%_)))
                    (let ()
                      (declare (not safe))
                      (_%make-gc-hash-table103739%_))
                    (if (and (or (eq? _%test103723%_ eq?)
                                 (eq? _%test103723%_ ##eq?))
                             (or (let ()
                                   (declare (not safe))
                                   (not _%hash103725%_))
                                 (eq? _%hash103725%_ eq?-hash)
                                 (eq? _%hash103725%_ eq-hash)))
                        (let ()
                          (declare (not safe))
                          (_%make103738%_ make-eq-hash-table true eq-hash eq?))
                        (if (and (or (eq? _%test103723%_ eqv?)
                                     (eq? _%test103723%_ ##eqv?))
                                 (or (let ()
                                       (declare (not safe))
                                       (not _%hash103725%_))
                                     (eq? _%hash103725%_ eqv?-hash)
                                     (eq? _%hash103725%_ eqv-hash)))
                            (let ()
                              (declare (not safe))
                              (_%make103738%_
                               make-eqv-hash-table
                               true
                               eqv-hash
                               eqv?))
                            (if (and (or (eq? _%test103723%_ eq?)
                                         (eq? _%test103723%_ ##eq?))
                                     (or (eq? _%hash103725%_ symbolic-hash)
                                         (eq? _%hash103725%_ ##symbol-hash)))
                                (let ()
                                  (declare (not safe))
                                  (_%make103738%_
                                   make-symbol-hash-table
                                   symbolic?
                                   symbolic-hash
                                   eq?))
                                (if (and (or (eq? _%test103723%_ eq?)
                                             (eq? _%test103723%_ ##eq?))
                                         (eq? _%hash103725%_ immediate-hash))
                                    (let ()
                                      (declare (not safe))
                                      (_%make103738%_
                                       make-immediate-hash-table
                                       immediate?
                                       immediate-hash
                                       eq?))
                                    (if (and (or (eq? _%test103723%_ equal?)
                                                 (eq? _%test103723%_ ##equal?)
                                                 (eq? _%test103723%_ string=?)
                                                 (eq? _%test103723%_
                                                      ##string=?))
                                             (or (eq? _%hash103725%_
                                                      string-hash)
                                                 (eq? _%hash103725%_
                                                      ##string=?-hash)))
                                        (let ()
                                          (declare (not safe))
                                          (_%make103738%_
                                           make-string-hash-table
                                           string?
                                           string-hash
                                           ##string=?))
                                        (if (and (eq? _%test103723%_ equal?)
                                                 (let ()
                                                   (declare (not safe))
                                                   (not _%hash103725%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%make103738%_
                                               make-generic-hash-table
                                               true
                                               equal?-hash
                                               equal?))
                                            (if (let ((__tmp106970
                                                       (let ()
                                                         (declare (not safe))
                                                         (procedure?
                                                          _%test103723%_))))
                                                  (declare (not safe))
                                                  (not __tmp106970))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _%test103723%_))
                                                (if (let ((__tmp106971
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (procedure?
                                                              _%hash103725%_))))
                                                      (declare (not safe))
                                                      (not __tmp106971))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _%hash103725%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%make103738%_
                                                       make-generic-hash-table
                                                       true
                                                       _%hash103725%_
                                                       _%test103723%_))))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords103868%_ . _%args103869%_)
        (apply make-hash-table__%
               _%@@keywords103868%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103868%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103868%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103868%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103868%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103868%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103868%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103868%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103868%_
                  'weak-values:
                  absent-value))
               _%args103869%_)))
    (define make-hash-table
      (lambda _%args103699103875%_
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
               _%args103699103875%_)))
    (define make-hash-table-eq
      (lambda _%args103688%_
        (apply make-hash-table 'test: eq? _%args103688%_)))
    (define make-hash-table-eqv
      (lambda _%args103686%_
        (apply make-hash-table 'test: eqv? _%args103686%_)))
    (define make-hash-table-symbolic
      (lambda _%args103684%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args103684%_)))
    (define make-hash-table-string
      (lambda _%args103682%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args103682%_)))
    (define make-hash-table-immediate
      (lambda _%args103680%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args103680%_)))
    (define list->hash-table
      (lambda (_%lst103677%_ . _%args103678%_)
        (let ((__tmp106972
               (apply make-hash-table
                      'size:
                      (length _%lst103677%_)
                      _%args103678%_)))
          (declare (not safe))
          (list->hash-table! _%lst103677%_ __tmp106972))))
    (define list->hash-table-eq
      (lambda (_%lst103674%_ . _%args103675%_)
        (let ((__tmp106973
               (apply make-hash-table-eq
                      'size:
                      (length _%lst103674%_)
                      _%args103675%_)))
          (declare (not safe))
          (list->hash-table! _%lst103674%_ __tmp106973))))
    (define list->hash-table-eqv
      (lambda (_%lst103671%_ . _%args103672%_)
        (let ((__tmp106974
               (apply make-hash-table-eqv
                      'size:
                      (length _%lst103671%_)
                      _%args103672%_)))
          (declare (not safe))
          (list->hash-table! _%lst103671%_ __tmp106974))))
    (define list->hash-table-symbolic
      (lambda (_%lst103668%_ . _%args103669%_)
        (let ((__tmp106975
               (apply make-hash-table-symbolic
                      'size:
                      (length _%lst103668%_)
                      _%args103669%_)))
          (declare (not safe))
          (list->hash-table! _%lst103668%_ __tmp106975))))
    (define list->hash-table-string
      (lambda (_%lst103665%_ . _%args103666%_)
        (let ((__tmp106976
               (apply make-hash-table-string
                      'size:
                      (length _%lst103665%_)
                      _%args103666%_)))
          (declare (not safe))
          (list->hash-table! _%lst103665%_ __tmp106976))))
    (define list->hash-table-immediate
      (lambda (_%lst103662%_ . _%args103663%_)
        (let ((__tmp106977
               (apply make-hash-table-immediate
                      'size:
                      (length _%lst103662%_)
                      _%args103663%_)))
          (declare (not safe))
          (list->hash-table! _%lst103662%_ __tmp106977))))
    (define list->hash-table!
      (lambda (_%lst103629%_ _%h103630%_)
        (for-each
         (lambda (_%el103632%_)
           (let* ((_%el103633103640%_ _%el103632%_)
                  (_%E103635103644%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el103633103640%_
                              '([k . v])))
                     '#!void))
                  (_%K103636103650%_
                   (lambda (_%v103647%_ _%k103648%_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h103630%_
                        _%k103648%_
                        _%v103647%_)))))
             (if (let () (declare (not safe)) (##pair? _%el103633103640%_))
                 (let ((_%hd103637103653%_
                        (let ()
                          (declare (not safe))
                          (##car _%el103633103640%_)))
                       (_%tl103638103655%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el103633103640%_))))
                   (let* ((_%k103658%_ _%hd103637103653%_)
                          (_%v103660%_ _%tl103638103655%_))
                     (declare (not safe))
                     (_%K103636103650%_ _%v103660%_ _%k103658%_)))
                 (let () (declare (not safe)) (_%E103635103644%_)))))
         _%lst103629%_)
        _%h103630%_))
    (define plist->hash-table
      (lambda (_%lst103626%_ . _%args103627%_)
        (let ((__tmp106978
               (apply make-hash-table
                      'size:
                      (length _%lst103626%_)
                      _%args103627%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103626%_ __tmp106978))))
    (define plist->hash-table-eq
      (lambda (_%lst103623%_ . _%args103624%_)
        (let ((__tmp106979
               (apply make-hash-table-eq
                      'size:
                      (length _%lst103623%_)
                      _%args103624%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103623%_ __tmp106979))))
    (define plist->hash-table-eqv
      (lambda (_%lst103620%_ . _%args103621%_)
        (let ((__tmp106980
               (apply make-hash-table-eqv
                      'size:
                      (length _%lst103620%_)
                      _%args103621%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103620%_ __tmp106980))))
    (define plist->hash-table-symbolic
      (lambda (_%lst103617%_ . _%args103618%_)
        (let ((__tmp106981
               (apply make-hash-table-symbolic
                      'size:
                      (length _%lst103617%_)
                      _%args103618%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103617%_ __tmp106981))))
    (define plist->hash-table-string
      (lambda (_%lst103614%_ . _%args103615%_)
        (let ((__tmp106982
               (apply make-hash-table-string
                      'size:
                      (length _%lst103614%_)
                      _%args103615%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103614%_ __tmp106982))))
    (define plist->hash-table-immediate
      (lambda (_%lst103611%_ . _%args103612%_)
        (let ((__tmp106983
               (apply make-hash-table-immediate
                      'size:
                      (length _%lst103611%_)
                      _%args103612%_)))
          (declare (not safe))
          (plist->hash-table! _%lst103611%_ __tmp106983))))
    (define plist->hash-table!
      (lambda (_%lst103551%_ _%h103552%_)
        (let _%loop103554%_ ((_%rest103556%_ _%lst103551%_))
          (let* ((_%rest103557103569%_ _%rest103556%_)
                 (_%else103560103577%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst103551%_)))))
            (let ((_%K103563103592%_
                   (lambda (_%rest103588%_ _%val103589%_ _%key103590%_)
                     (let ()
                       (declare (not safe))
                       (&HashTable-set!
                        _%h103552%_
                        _%key103590%_
                        _%val103589%_))
                     (let ()
                       (declare (not safe))
                       (_%loop103554%_ _%rest103588%_))))
                  (_%K103562103582%_ (lambda () _%h103552%_)))
              (let ((_%try-match103559103585%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest103557103569%_))
                           (let () (declare (not safe)) (_%K103562103582%_))
                           (let ()
                             (declare (not safe))
                             (_%else103560103577%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest103557103569%_))
                    (let ((_%tl103565103597%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest103557103569%_)))
                          (_%hd103564103595%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest103557103569%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl103565103597%_))
                          (let ((_%tl103567103604%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl103565103597%_)))
                                (_%hd103566103602%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl103565103597%_))))
                            (let ((_%key103600%_ _%hd103564103595%_)
                                  (_%val103607%_ _%hd103566103602%_)
                                  (_%rest103609%_ _%tl103567103604%_))
                              (let ()
                                (declare (not safe))
                                (_%K103563103592%_
                                 _%rest103609%_
                                 _%val103607%_
                                 _%key103600%_))))
                          (let ()
                            (declare (not safe))
                            (_%else103560103577%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match103559103585%_)))))))))
    (define hash-length
      (lambda (_%h103533%_)
        (let ()
          (let* ((_%h103539%_
                  (let ((_%$obj103536%_ _%h103533%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103536%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103536%_)))
                             '#t)
                        _%$obj103536%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103536%_)))))
                 (_%h103541%_ _%h103539%_))
            (declare (not safe))
            (__hash-length _%h103541%_)))))
    (define __hash-length
      (lambda (_%h103521%_)
        (let ((_%h103524%_ _%h103521%_))
          (declare (not safe))
          (__HashTable-length _%h103524%_))))
    (define hash-ref__%
      (lambda (_%h103489%_ _%key103490%_ _%default103491%_)
        (let ()
          (let* ((_%h103497%_
                  (let ((_%$obj103494%_ _%h103489%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103494%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103494%_)))
                             '#t)
                        _%$obj103494%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103494%_)))))
                 (_%h103499%_ _%h103497%_))
            (declare (not safe))
            (__hash-ref__% _%h103499%_ _%key103490%_ _%default103491%_)))))
    (define hash-ref__0
      (lambda (_%h103512%_ _%key103513%_)
        (let ((_%default103515%_ (macro-absent-obj)))
          (declare (not safe))
          (hash-ref__% _%h103512%_ _%key103513%_ _%default103515%_))))
    (define hash-ref
      (lambda _g106985_
        (let ((_g106984_ (let () (declare (not safe)) (##length _g106985_))))
          (cond ((let () (declare (not safe)) (##fx= _g106984_ 2))
                 (apply (lambda (_%h103512%_ _%key103513%_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__0 _%h103512%_ _%key103513%_)))
                        _g106985_))
                ((let () (declare (not safe)) (##fx= _g106984_ 3))
                 (apply (lambda (_%h103517%_ _%key103518%_ _%default103519%_)
                          (let ()
                            (declare (not safe))
                            (hash-ref__%
                             _%h103517%_
                             _%key103518%_
                             _%default103519%_)))
                        _g106985_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g106985_))))))
    (define __hash-ref__%
      (lambda (_%h103460%_ _%key103461%_ _%default103462%_)
        (let ()
          (let* ((_%h103465%_ _%h103460%_)
                 (_%result103474%_
                  (let ()
                    (declare (not safe))
                    (&HashTable-ref
                     _%h103465%_
                     _%key103461%_
                     _%default103462%_))))
            (if (eq? _%result103474%_ (macro-absent-obj))
                (let ()
                  (declare (not safe))
                  (raise-unbound-key-error
                   'hash-ref
                   '"unknown hash key"
                   'hash:
                   _%h103465%_
                   'key:
                   _%key103461%_))
                _%result103474%_)))))
    (define __hash-ref__0
      (lambda (_%h103479%_ _%key103480%_)
        (let ((_%default103482%_ (macro-absent-obj)))
          (declare (not safe))
          (__hash-ref__% _%h103479%_ _%key103480%_ _%default103482%_))))
    (define __hash-ref
      (lambda _g106987_
        (let ((_g106986_ (let () (declare (not safe)) (##length _g106987_))))
          (cond ((let () (declare (not safe)) (##fx= _g106986_ 2))
                 (apply (lambda (_%h103479%_ _%key103480%_)
                          (let ()
                            (declare (not safe))
                            (__hash-ref__0 _%h103479%_ _%key103480%_)))
                        _g106987_))
                ((let () (declare (not safe)) (##fx= _g106986_ 3))
                 (apply (lambda (_%h103484%_ _%key103485%_ _%default103486%_)
                          (let ()
                            (declare (not safe))
                            (__hash-ref__%
                             _%h103484%_
                             _%key103485%_
                             _%default103486%_)))
                        _g106987_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g106987_))))))
    (define hash-get
      (lambda (_%h103440%_ _%key103441%_)
        (let ()
          (let* ((_%h103447%_
                  (let ((_%$obj103444%_ _%h103440%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103444%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103444%_)))
                             '#t)
                        _%$obj103444%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103444%_)))))
                 (_%h103449%_ _%h103447%_))
            (declare (not safe))
            (__hash-get _%h103449%_ _%key103441%_)))))
    (define __hash-get
      (lambda (_%h103427%_ _%key103428%_)
        (let ((_%h103431%_ _%h103427%_))
          (declare (not safe))
          (&HashTable-ref _%h103431%_ _%key103428%_ '#f))))
    (define hash-put!
      (lambda (_%h103407%_ _%key103408%_ _%value103409%_)
        (let ()
          (let* ((_%h103415%_
                  (let ((_%$obj103412%_ _%h103407%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103412%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103412%_)))
                             '#t)
                        _%$obj103412%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103412%_)))))
                 (_%h103417%_ _%h103415%_))
            (declare (not safe))
            (__hash-put! _%h103417%_ _%key103408%_ _%value103409%_)))))
    (define __hash-put!
      (lambda (_%h103393%_ _%key103394%_ _%value103395%_)
        (let ((_%h103398%_ _%h103393%_))
          (declare (not safe))
          (&HashTable-set! _%h103398%_ _%key103394%_ _%value103395%_))))
    (define hash-update!__%
      (lambda (_%h103358%_ _%key103359%_ _%update103360%_ _%default103361%_)
        (let ()
          (let* ((_%h103367%_
                  (let ((_%$obj103364%_ _%h103358%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103364%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103364%_)))
                             '#t)
                        _%$obj103364%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103364%_)))))
                 (_%h103369%_ _%h103367%_))
            (declare (not safe))
            (__hash-update!__%
             _%h103369%_
             _%key103359%_
             _%update103360%_
             _%default103361%_)))))
    (define hash-update!__0
      (lambda (_%h103382%_ _%key103383%_ _%update103384%_)
        (let ((_%default103386%_ '#!void))
          (declare (not safe))
          (hash-update!__%
           _%h103382%_
           _%key103383%_
           _%update103384%_
           _%default103386%_))))
    (define hash-update!
      (lambda _g106989_
        (let ((_g106988_ (let () (declare (not safe)) (##length _g106989_))))
          (cond ((let () (declare (not safe)) (##fx= _g106988_ 3))
                 (apply (lambda (_%h103382%_ _%key103383%_ _%update103384%_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _%h103382%_
                             _%key103383%_
                             _%update103384%_)))
                        _g106989_))
                ((let () (declare (not safe)) (##fx= _g106988_ 4))
                 (apply (lambda (_%h103388%_
                                 _%key103389%_
                                 _%update103390%_
                                 _%default103391%_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _%h103388%_
                             _%key103389%_
                             _%update103390%_
                             _%default103391%_)))
                        _g106989_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g106989_))))))
    (define __hash-update!__%
      (lambda (_%h103328%_ _%key103329%_ _%update103330%_ _%default103331%_)
        (let ((_%h103334%_ _%h103328%_))
          (declare (not safe))
          (HashTable-update!
           _%h103334%_
           _%key103329%_
           _%update103330%_
           _%default103331%_))))
    (define __hash-update!__0
      (lambda (_%h103346%_ _%key103347%_ _%update103348%_)
        (let ((_%default103350%_ '#!void))
          (declare (not safe))
          (__hash-update!__%
           _%h103346%_
           _%key103347%_
           _%update103348%_
           _%default103350%_))))
    (define __hash-update!
      (lambda _g106991_
        (let ((_g106990_ (let () (declare (not safe)) (##length _g106991_))))
          (cond ((let () (declare (not safe)) (##fx= _g106990_ 3))
                 (apply (lambda (_%h103346%_ _%key103347%_ _%update103348%_)
                          (let ()
                            (declare (not safe))
                            (__hash-update!__0
                             _%h103346%_
                             _%key103347%_
                             _%update103348%_)))
                        _g106991_))
                ((let () (declare (not safe)) (##fx= _g106990_ 4))
                 (apply (lambda (_%h103352%_
                                 _%key103353%_
                                 _%update103354%_
                                 _%default103355%_)
                          (let ()
                            (declare (not safe))
                            (__hash-update!__%
                             _%h103352%_
                             _%key103353%_
                             _%update103354%_
                             _%default103355%_)))
                        _g106991_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g106991_))))))
    (define hash-remove!
      (lambda (_%h103308%_ _%key103309%_)
        (let ()
          (let* ((_%h103315%_
                  (let ((_%$obj103312%_ _%h103308%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103312%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103312%_)))
                             '#t)
                        _%$obj103312%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103312%_)))))
                 (_%h103317%_ _%h103315%_))
            (declare (not safe))
            (__hash-remove! _%h103317%_ _%key103309%_)))))
    (define __hash-remove!
      (lambda (_%h103295%_ _%key103296%_)
        (let ((_%h103299%_ _%h103295%_))
          (declare (not safe))
          (&HashTable-delete! _%h103299%_ _%key103296%_))))
    (define hash-key?
      (lambda (_%h103276%_ _%k103277%_)
        (let ()
          (let* ((_%h103283%_
                  (let ((_%$obj103280%_ _%h103276%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103280%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103280%_)))
                             '#t)
                        _%$obj103280%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103280%_)))))
                 (_%h103285%_ _%h103283%_))
            (declare (not safe))
            (__hash-key? _%h103285%_ _%k103277%_)))))
    (define __hash-key?
      (lambda (_%h103263%_ _%k103264%_)
        (let ()
          (let* ((_%h103267%_ _%h103263%_)
                 (__tmp106992
                  (eq? (let ()
                         (declare (not safe))
                         (&HashTable-ref _%h103267%_ _%k103264%_ absent-value))
                       absent-value)))
            (declare (not safe))
            (not __tmp106992)))))
    (define hash->list
      (lambda (_%h103245%_)
        (let ()
          (let* ((_%h103251%_
                  (let ((_%$obj103248%_ _%h103245%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103248%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103248%_)))
                             '#t)
                        _%$obj103248%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103248%_)))))
                 (_%h103253%_ _%h103251%_))
            (declare (not safe))
            (__hash->list _%h103253%_)))))
    (define __hash->list
      (lambda (_%h103228%_)
        (let ()
          (let* ((_%h103231%_ _%h103228%_) (_%lst103240%_ '()))
            (let ((__tmp106993
                   (lambda (_%k103242%_ _%v103243%_)
                     (set! _%lst103240%_
                           (cons (cons _%k103242%_ _%v103243%_)
                                 _%lst103240%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h103231%_ __tmp106993))
            _%lst103240%_))))
    (define hash->plist
      (lambda (_%h103210%_)
        (let ()
          (let* ((_%h103216%_
                  (let ((_%$obj103213%_ _%h103210%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj103213%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj103213%_)))
                             '#t)
                        _%$obj103213%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj103213%_)))))
                 (_%h103218%_ _%h103216%_))
            (declare (not safe))
            (__hash->plist _%h103218%_)))))
    (define __hash->plist
      (lambda (_%h103193%_)
        (let ()
          (let* ((_%h103196%_ _%h103193%_) (_%lst103205%_ '()))
            (let ((__tmp106994
                   (lambda (_%k103207%_ _%v103208%_)
                     (set! _%lst103205%_
                           (let ((__tmp106995
                                  (let ()
                                    (declare (not safe))
                                    (cons _%v103208%_ _%lst103205%_))))
                             (declare (not safe))
                             (cons _%k103207%_ __tmp106995))))))
              (declare (not safe))
              (&HashTable-for-each _%h103196%_ __tmp106994))
            _%lst103205%_))))
    (define hash-for-each
      (lambda (_%proc103164%_ _%h103165%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc103164%_))
              (let ((_%proc103169%_ _%proc103164%_))
                (let* ((_%h103181%_
                        (let ((_%$obj103178%_ _%h103165%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj103178%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj103178%_)))
                                   '#t)
                              _%$obj103178%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj103178%_)))))
                       (_%h103183%_ _%h103181%_))
                  (declare (not safe))
                  (__hash-for-each _%proc103169%_ _%h103183%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@560.22-560.26"
                 'contract:
                 'procedure?
                 'value:
                 _%proc103164%_)
                '#!void)))))
    (define __hash-for-each
      (lambda (_%proc103143%_ _%h103144%_)
        (let ()
          (let* ((_%proc103147%_ _%proc103143%_) (_%h103155%_ _%h103144%_))
            (declare (not safe))
            (&HashTable-for-each _%h103155%_ _%proc103147%_)))))
    (define hash-map
      (lambda (_%proc103114%_ _%h103115%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc103114%_))
              (let ((_%proc103119%_ _%proc103114%_))
                (let* ((_%h103131%_
                        (let ((_%$obj103128%_ _%h103115%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj103128%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj103128%_)))
                                   '#t)
                              _%$obj103128%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj103128%_)))))
                       (_%h103133%_ _%h103131%_))
                  (declare (not safe))
                  (__hash-map _%proc103119%_ _%h103133%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@563.17-563.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc103114%_)
                '#!void)))))
    (define __hash-map
      (lambda (_%proc103088%_ _%h103089%_)
        (let ((_%proc103092%_ _%proc103088%_))
          (let* ((_%h103100%_ _%h103089%_) (_%result103109%_ '()))
            (let ((__tmp106996
                   (lambda (_%k103111%_ _%v103112%_)
                     (set! _%result103109%_
                           (cons (let ()
                                   (declare (not safe))
                                   (_%proc103092%_ _%k103111%_ _%v103112%_))
                                 _%result103109%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h103100%_ __tmp106996))
            _%result103109%_))))
    (define hash-fold
      (lambda (_%proc103058%_ _%iv103059%_ _%h103060%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc103058%_))
              (let ((_%proc103064%_ _%proc103058%_))
                (let* ((_%h103076%_
                        (let ((_%$obj103073%_ _%h103060%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj103073%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj103073%_)))
                                   '#t)
                              _%$obj103073%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj103073%_)))))
                       (_%h103078%_ _%h103076%_))
                  (declare (not safe))
                  (__hash-fold _%proc103064%_ _%iv103059%_ _%h103078%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@568.18-568.22"
                 'contract:
                 'procedure?
                 'value:
                 _%proc103058%_)
                '#!void)))))
    (define __hash-fold
      (lambda (_%proc103031%_ _%iv103032%_ _%h103033%_)
        (let ((_%proc103036%_ _%proc103031%_))
          (let* ((_%h103044%_ _%h103033%_) (_%result103053%_ _%iv103032%_))
            (let ((__tmp106997
                   (lambda (_%k103055%_ _%v103056%_)
                     (set! _%result103053%_
                           (let ()
                             (declare (not safe))
                             (_%proc103036%_
                              _%k103055%_
                              _%v103056%_
                              _%result103053%_))))))
              (declare (not safe))
              (&HashTable-for-each _%h103044%_ __tmp106997))
            _%result103053%_))))
    (define hash-find__%
      (lambda (_%proc102989%_ _%h102990%_ _%default-value102991%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc102989%_))
              (let ((_%proc102995%_ _%proc102989%_))
                (let* ((_%h103007%_
                        (let ((_%$obj103004%_ _%h102990%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj103004%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj103004%_)))
                                   '#t)
                              _%$obj103004%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj103004%_)))))
                       (_%h103009%_ _%h103007%_))
                  (declare (not safe))
                  (__hash-find__%
                   _%proc102995%_
                   _%h103009%_
                   _%default-value102991%_)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@573.18-573.22"
                 'contract:
                 'procedure?
                 'value:
                 _%proc102989%_)
                '#!void)))))
    (define hash-find__0
      (lambda (_%proc103022%_ _%h103023%_)
        (let ((_%default-value103025%_ '#f))
          (declare (not safe))
          (hash-find__% _%proc103022%_ _%h103023%_ _%default-value103025%_))))
    (define hash-find
      (lambda _g106999_
        (let ((_g106998_ (let () (declare (not safe)) (##length _g106999_))))
          (cond ((let () (declare (not safe)) (##fx= _g106998_ 2))
                 (apply (lambda (_%proc103022%_ _%h103023%_)
                          (let ()
                            (declare (not safe))
                            (hash-find__0 _%proc103022%_ _%h103023%_)))
                        _g106999_))
                ((let () (declare (not safe)) (##fx= _g106998_ 3))
                 (apply (lambda (_%proc103027%_
                                 _%h103028%_
                                 _%default-value103029%_)
                          (let ()
                            (declare (not safe))
                            (hash-find__%
                             _%proc103027%_
                             _%h103028%_
                             _%default-value103029%_)))
                        _g106999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g106999_))))))
    (define __hash-find__%
      (lambda (_%proc102946%_ _%h102947%_ _%default-value102948%_)
        (let ((_%proc102951%_ _%proc102946%_))
          (let* ((_%h102959%_ _%h102947%_)
                 (__tmp107000
                  (lambda (_%return102968%_)
                    (let ((__tmp107001
                           (lambda (_%k102970%_ _%v102971%_)
                             (let ((_%$e102973%_
                                    (let ()
                                      (declare (not safe))
                                      (_%proc102951%_
                                       _%k102970%_
                                       _%v102971%_))))
                               (if _%$e102973%_
                                   (_%return102968%_ _%$e102973%_)
                                   '#!void)))))
                      (declare (not safe))
                      (&HashTable-for-each _%h102959%_ __tmp107001))
                    _%default-value102948%_)))
            (declare (not safe))
            (##call-with-current-continuation __tmp107000)))))
    (define __hash-find__0
      (lambda (_%proc102979%_ _%h102980%_)
        (let ((_%default-value102982%_ '#f))
          (declare (not safe))
          (__hash-find__%
           _%proc102979%_
           _%h102980%_
           _%default-value102982%_))))
    (define __hash-find
      (lambda _g107003_
        (let ((_g107002_ (let () (declare (not safe)) (##length _g107003_))))
          (cond ((let () (declare (not safe)) (##fx= _g107002_ 2))
                 (apply (lambda (_%proc102979%_ _%h102980%_)
                          (let ()
                            (declare (not safe))
                            (__hash-find__0 _%proc102979%_ _%h102980%_)))
                        _g107003_))
                ((let () (declare (not safe)) (##fx= _g107002_ 3))
                 (apply (lambda (_%proc102984%_
                                 _%h102985%_
                                 _%default-value102986%_)
                          (let ()
                            (declare (not safe))
                            (__hash-find__%
                             _%proc102984%_
                             _%h102985%_
                             _%default-value102986%_)))
                        _g107003_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g107003_))))))
    (define hash-keys
      (lambda (_%h102927%_)
        (let ()
          (let* ((_%h102933%_
                  (let ((_%$obj102930%_ _%h102927%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102930%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102930%_)))
                             '#t)
                        _%$obj102930%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102930%_)))))
                 (_%h102935%_ _%h102933%_))
            (declare (not safe))
            (__hash-keys _%h102935%_)))))
    (define __hash-keys
      (lambda (_%h102910%_)
        (let ()
          (let* ((_%h102913%_ _%h102910%_) (_%result102922%_ '()))
            (let ((__tmp107004
                   (lambda (_%k102924%_ _%v102925%_)
                     (set! _%result102922%_
                           (cons _%k102924%_ _%result102922%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h102913%_ __tmp107004))
            _%result102922%_))))
    (define hash-values
      (lambda (_%h102892%_)
        (let ()
          (let* ((_%h102898%_
                  (let ((_%$obj102895%_ _%h102892%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102895%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102895%_)))
                             '#t)
                        _%$obj102895%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102895%_)))))
                 (_%h102900%_ _%h102898%_))
            (declare (not safe))
            (__hash-values _%h102900%_)))))
    (define __hash-values
      (lambda (_%h102875%_)
        (let ()
          (let* ((_%h102878%_ _%h102875%_) (_%result102887%_ '()))
            (let ((__tmp107005
                   (lambda (_%k102889%_ _%v102890%_)
                     (set! _%result102887%_
                           (cons _%v102890%_ _%result102887%_)))))
              (declare (not safe))
              (&HashTable-for-each _%h102878%_ __tmp107005))
            _%result102887%_))))
    (define hash-copy
      (lambda (_%h102857%_)
        (let ()
          (let* ((_%h102863%_
                  (let ((_%$obj102860%_ _%h102857%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102860%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102860%_)))
                             '#t)
                        _%$obj102860%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102860%_)))))
                 (_%h102865%_ _%h102863%_))
            (declare (not safe))
            (__hash-copy _%h102865%_)))))
    (define __hash-copy
      (lambda (_%h102845%_)
        (let ((_%h102848%_ _%h102845%_))
          (declare (not safe))
          (__HashTable-copy _%h102848%_))))
    (define hash-clear!
      (lambda (_%h102827%_)
        (let ()
          (let* ((_%h102833%_
                  (let ((_%$obj102830%_ _%h102827%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102830%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102830%_)))
                             '#t)
                        _%$obj102830%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102830%_)))))
                 (_%h102835%_ _%h102833%_))
            (declare (not safe))
            (__hash-clear! _%h102835%_)))))
    (define __hash-clear!
      (lambda (_%h102815%_)
        (let ((_%h102818%_ _%h102815%_))
          (declare (not safe))
          (&HashTable-clear! _%h102818%_))))
    (define hash-merge
      (lambda (_%h102796%_ . _%rest102797%_)
        (let ()
          (let* ((_%h102803%_
                  (let ((_%$obj102800%_ _%h102796%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102800%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102800%_)))
                             '#t)
                        _%$obj102800%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102800%_)))))
                 (_%h102805%_ _%h102803%_))
            (declare (not safe))
            (##apply __hash-merge _%h102805%_ _%rest102797%_)))))
    (define __hash-merge
      (lambda (_%h102781%_ . _%rest102782%_)
        (let ()
          (let* ((_%h102785%_ _%h102781%_)
                 (_%copy102794%_
                  (let ()
                    (declare (not safe))
                    (__HashTable-copy _%h102785%_))))
            (apply hash-merge! _%copy102794%_ _%rest102782%_)
            _%copy102794%_))))
    (define hash-merge!
      (lambda (_%h102762%_ . _%rest102763%_)
        (let ()
          (let* ((_%h102769%_
                  (let ((_%$obj102766%_ _%h102762%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj102766%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj102766%_)))
                             '#t)
                        _%$obj102766%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj102766%_)))))
                 (_%h102771%_ _%h102769%_))
            (declare (not safe))
            (##apply __hash-merge! _%h102771%_ _%rest102763%_)))))
    (define __hash-merge!
      (lambda (_%h102725%_ . _%rest102726%_)
        (let ((_%h102729%_ _%h102725%_))
          (for-each
           (lambda (_%hr102738%_)
             (let ()
               (let* ((_%hr102744%_
                       (let ((_%$obj102741%_ _%hr102738%_))
                         (if (and (let ()
                                    (declare (not safe))
                                    (##structure? _%$obj102741%_))
                                  (eq? HashTable::t
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _%$obj102741%_)))
                                  '#t)
                             _%$obj102741%_
                             (let ()
                               (declare (not safe))
                               (cast HashTable::interface _%$obj102741%_)))))
                      (_%hr102746%_ _%hr102744%_)
                      (__tmp107006
                       (lambda (_%k102759%_ _%v102760%_)
                         (if (let ()
                               (declare (not safe))
                               (__hash-key? _%h102729%_ _%k102759%_))
                             '#!void
                             (let ()
                               (declare (not safe))
                               (&HashTable-set!
                                _%h102729%_
                                _%k102759%_
                                _%v102760%_))))))
                 (declare (not safe))
                 (&HashTable-for-each _%hr102746%_ __tmp107006))))
           _%rest102726%_)
          _%h102729%_)))))
