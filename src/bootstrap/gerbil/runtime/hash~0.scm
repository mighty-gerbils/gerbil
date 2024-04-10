(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1712773524)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp106979 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp106979
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args106959%_
        (apply make-instance UnboundKeyError::t _%$args106959%_)))
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
      (lambda (_%where106833%_ _%message106834%_ . _%irritants106835%_)
        (let ((__tmp106980
               (let ((__obj106973
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (UnboundKeyError:::init!
                  __obj106973
                  _%message106834%_
                  'where:
                  _%where106833%_
                  'irritants:
                  _%irritants106835%_)
                 __obj106973)))
          (declare (not safe))
          (raise __tmp106980))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp106981 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp106981
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
      (lambda (_%obj106831%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj106831%_))))
    (define try-HashTable
      (lambda (_%obj106829%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj106829%_))))
    (define HashTable?
      (lambda (_%obj106827%_)
        (let ((__tmp106982
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106827%_ __tmp106982))))
    (define is-HashTable?
      (lambda (_%obj106825%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj106825%_))
            '#t
            '#f)))
    (define HashTable-clear!
      (lambda (_%self106809%_)
        (let* ((_%self106814%_
                (let ((_%$obj106811%_ _%self106809%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106811%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106811%_)))
                           '#t)
                      _%$obj106811%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106811%_)))))
               (_%self106816%_ _%self106814%_))
          (&HashTable-clear! _%self106816%_))))
    (define &HashTable-clear!
      (lambda (_%self106794%_)
        (let ((_%self106796%_ _%self106794%_))
          (declare (not safe))
          (let ((_%obj106806%_
                 (##unchecked-structure-ref _%self106796%_ '1 '#f 'clear!))
                (_%f106807%_
                 (##unchecked-structure-ref _%self106796%_ '2 '#f 'clear!)))
            (_%f106807%_ _%obj106806%_)))))
    (define HashTable-copy
      (lambda (_%self106778%_)
        (let* ((_%self106783%_
                (let ((_%$obj106780%_ _%self106778%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106780%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106780%_)))
                           '#t)
                      _%$obj106780%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106780%_)))))
               (_%self106785%_ _%self106783%_))
          (__HashTable-copy _%self106785%_))))
    (define __HashTable-copy
      (lambda (_%self106765%_)
        (let* ((_%self106767%_ _%self106765%_)
               (_%$obj106775%_ (&HashTable-copy _%self106767%_)))
          (if (and (let () (declare (not safe)) (##structure? _%$obj106775%_))
                   (eq? HashTable::t
                        (let ()
                          (declare (not safe))
                          (##structure-type _%$obj106775%_)))
                   '#t)
              _%$obj106775%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj106775%_))))))
    (define &HashTable-copy
      (lambda (_%self106750%_)
        (let ((_%self106752%_ _%self106750%_))
          (declare (not safe))
          (let ((_%obj106762%_
                 (##unchecked-structure-ref _%self106752%_ '1 '#f 'copy))
                (_%f106763%_
                 (##unchecked-structure-ref _%self106752%_ '3 '#f 'copy)))
            (_%f106763%_ _%obj106762%_)))))
    (define HashTable-delete!
      (lambda (_%self106733%_ _%key106734%_)
        (let* ((_%self106739%_
                (let ((_%$obj106736%_ _%self106733%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106736%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106736%_)))
                           '#t)
                      _%$obj106736%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106736%_)))))
               (_%self106741%_ _%self106739%_))
          (&HashTable-delete! _%self106741%_ _%key106734%_))))
    (define &HashTable-delete!
      (lambda (_%self106717%_ _%key106718%_)
        (let ((_%self106720%_ _%self106717%_))
          (declare (not safe))
          (let ((_%obj106730%_
                 (##unchecked-structure-ref _%self106720%_ '1 '#f 'delete!))
                (_%f106731%_
                 (##unchecked-structure-ref _%self106720%_ '4 '#f 'delete!)))
            (_%f106731%_ _%obj106730%_ _%key106718%_)))))
    (define HashTable-for-each
      (lambda (_%self106690%_ _%proc106691%_)
        (let* ((_%self106696%_
                (let ((_%$obj106693%_ _%self106690%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106693%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106693%_)))
                           '#t)
                      _%$obj106693%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106693%_)))))
               (_%self106698%_ _%self106696%_))
          (if (procedure? _%proc106691%_)
              (let ((_%proc106707%_ _%proc106691%_))
                (&HashTable-for-each _%self106698%_ _%proc106707%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc106691%_)
                '#!void)))))
    (define &HashTable-for-each
      (lambda (_%self106666%_ _%proc106667%_)
        (let* ((_%self106669%_ _%self106666%_) (_%proc106676%_ _%proc106667%_))
          (declare (not safe))
          (let ((_%obj106687%_
                 (##unchecked-structure-ref _%self106669%_ '1 '#f 'for-each))
                (_%f106688%_
                 (##unchecked-structure-ref _%self106669%_ '5 '#f 'for-each)))
            (_%f106688%_ _%obj106687%_ _%proc106676%_)))))
    (define HashTable-length
      (lambda (_%self106650%_)
        (let* ((_%self106655%_
                (let ((_%$obj106652%_ _%self106650%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106652%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106652%_)))
                           '#t)
                      _%$obj106652%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106652%_)))))
               (_%self106657%_ _%self106655%_))
          (__HashTable-length _%self106657%_))))
    (define __HashTable-length
      (lambda (_%self106637%_)
        (let* ((_%self106639%_ _%self106637%_)
               (_%val106647%_ (&HashTable-length _%self106639%_)))
          (if '#t
              _%val106647%_
              (let ()
                (declare (not safe))
                (error '"bad cast" fixnum::t _%val106647%_))))))
    (define &HashTable-length
      (lambda (_%self106622%_)
        (let ((_%self106624%_ _%self106622%_))
          (declare (not safe))
          (let ((_%obj106634%_
                 (##unchecked-structure-ref _%self106624%_ '1 '#f 'length))
                (_%f106635%_
                 (##unchecked-structure-ref _%self106624%_ '6 '#f 'length)))
            (_%f106635%_ _%obj106634%_)))))
    (define HashTable-ref
      (lambda (_%self106604%_ _%key106605%_ _%default106606%_)
        (let* ((_%self106611%_
                (let ((_%$obj106608%_ _%self106604%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106608%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106608%_)))
                           '#t)
                      _%$obj106608%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106608%_)))))
               (_%self106613%_ _%self106611%_))
          (&HashTable-ref _%self106613%_ _%key106605%_ _%default106606%_))))
    (define &HashTable-ref
      (lambda (_%self106587%_ _%key106588%_ _%default106589%_)
        (let ((_%self106591%_ _%self106587%_))
          (declare (not safe))
          (let ((_%obj106601%_
                 (##unchecked-structure-ref _%self106591%_ '1 '#f 'ref))
                (_%f106602%_
                 (##unchecked-structure-ref _%self106591%_ '7 '#f 'ref)))
            (_%f106602%_ _%obj106601%_ _%key106588%_ _%default106589%_)))))
    (define HashTable-set!
      (lambda (_%self106569%_ _%key106570%_ _%value106571%_)
        (let* ((_%self106576%_
                (let ((_%$obj106573%_ _%self106569%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106573%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106573%_)))
                           '#t)
                      _%$obj106573%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106573%_)))))
               (_%self106578%_ _%self106576%_))
          (&HashTable-set! _%self106578%_ _%key106570%_ _%value106571%_))))
    (define &HashTable-set!
      (lambda (_%self106552%_ _%key106553%_ _%value106554%_)
        (let ((_%self106556%_ _%self106552%_))
          (declare (not safe))
          (let ((_%obj106566%_
                 (##unchecked-structure-ref _%self106556%_ '1 '#f 'set!))
                (_%f106567%_
                 (##unchecked-structure-ref _%self106556%_ '8 '#f 'set!)))
            (_%f106567%_ _%obj106566%_ _%key106553%_ _%value106554%_)))))
    (define HashTable-update!
      (lambda (_%self106523%_ _%key106524%_ _%proc106525%_ _%default106526%_)
        (let* ((_%self106531%_
                (let ((_%$obj106528%_ _%self106523%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106528%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106528%_)))
                           '#t)
                      _%$obj106528%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj106528%_)))))
               (_%self106533%_ _%self106531%_))
          (if (procedure? _%proc106525%_)
              (let ((_%proc106542%_ _%proc106525%_))
                (&HashTable-update!
                 _%self106533%_
                 _%key106524%_
                 _%proc106542%_
                 _%default106526%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc106525%_)
                '#!void)))))
    (define &HashTable-update!
      (lambda (_%self106495%_ _%key106496%_ _%proc106497%_ _%default106498%_)
        (let* ((_%self106500%_ _%self106495%_) (_%proc106507%_ _%proc106497%_))
          (declare (not safe))
          (let ((_%obj106518%_
                 (##unchecked-structure-ref _%self106500%_ '1 '#f 'update!))
                (_%f106520%_
                 (##unchecked-structure-ref _%self106500%_ '9 '#f 'update!)))
            (_%f106520%_
             _%obj106518%_
             _%key106496%_
             _%proc106507%_
             _%default106498%_)))))
    (define Locker::t
      (let ((__tmp106983 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp106983
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
      (lambda (_%obj106493%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj106493%_))))
    (define try-Locker
      (lambda (_%obj106491%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj106491%_))))
    (define Locker?
      (lambda (_%obj106489%_)
        (let ((__tmp106984
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106489%_ __tmp106984))))
    (define is-Locker?
      (lambda (_%obj106487%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj106487%_))
            '#t
            '#f)))
    (define Locker-read-lock!
      (lambda (_%self106471%_)
        (let* ((_%self106476%_
                (let ((_%$obj106473%_ _%self106471%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106473%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106473%_)))
                           '#t)
                      _%$obj106473%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106473%_)))))
               (_%self106478%_ _%self106476%_))
          (&Locker-read-lock! _%self106478%_))))
    (define &Locker-read-lock!
      (lambda (_%self106456%_)
        (let ((_%self106458%_ _%self106456%_))
          (declare (not safe))
          (let ((_%obj106468%_
                 (##unchecked-structure-ref _%self106458%_ '1 '#f 'read-lock!))
                (_%f106469%_
                 (##unchecked-structure-ref
                  _%self106458%_
                  '2
                  '#f
                  'read-lock!)))
            (_%f106469%_ _%obj106468%_)))))
    (define Locker-read-unlock!
      (lambda (_%self106440%_)
        (let* ((_%self106445%_
                (let ((_%$obj106442%_ _%self106440%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106442%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106442%_)))
                           '#t)
                      _%$obj106442%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106442%_)))))
               (_%self106447%_ _%self106445%_))
          (&Locker-read-unlock! _%self106447%_))))
    (define &Locker-read-unlock!
      (lambda (_%self106425%_)
        (let ((_%self106427%_ _%self106425%_))
          (declare (not safe))
          (let ((_%obj106437%_
                 (##unchecked-structure-ref
                  _%self106427%_
                  '1
                  '#f
                  'read-unlock!))
                (_%f106438%_
                 (##unchecked-structure-ref
                  _%self106427%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%f106438%_ _%obj106437%_)))))
    (define Locker-write-lock!
      (lambda (_%self106409%_)
        (let* ((_%self106414%_
                (let ((_%$obj106411%_ _%self106409%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106411%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106411%_)))
                           '#t)
                      _%$obj106411%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106411%_)))))
               (_%self106416%_ _%self106414%_))
          (&Locker-write-lock! _%self106416%_))))
    (define &Locker-write-lock!
      (lambda (_%self106394%_)
        (let ((_%self106396%_ _%self106394%_))
          (declare (not safe))
          (let ((_%obj106406%_
                 (##unchecked-structure-ref
                  _%self106396%_
                  '1
                  '#f
                  'write-lock!))
                (_%f106407%_
                 (##unchecked-structure-ref
                  _%self106396%_
                  '4
                  '#f
                  'write-lock!)))
            (_%f106407%_ _%obj106406%_)))))
    (define Locker-write-unlock!
      (lambda (_%self106378%_)
        (let* ((_%self106383%_
                (let ((_%$obj106380%_ _%self106378%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj106380%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj106380%_)))
                           '#t)
                      _%$obj106380%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj106380%_)))))
               (_%self106385%_ _%self106383%_))
          (&Locker-write-unlock! _%self106385%_))))
    (define &Locker-write-unlock!
      (lambda (_%self106361%_)
        (let ((_%self106363%_ _%self106361%_))
          (declare (not safe))
          (let ((_%obj106373%_
                 (##unchecked-structure-ref
                  _%self106363%_
                  '1
                  '#f
                  'write-unlock!))
                (_%f106375%_
                 (##unchecked-structure-ref
                  _%self106363%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%f106375%_ _%obj106373%_)))))
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
      (lambda (_%table106354%_
               _%key106355%_
               _%update106356%_
               _%default106357%_)
        (let ((_%result106359%_
               (table-ref _%table106354%_ _%key106355%_ _%default106357%_)))
          (table-set!
           _%table106354%_
           _%key106355%_
           (_%update106356%_ _%default106357%_)))))
    (define gambit-table-for-each
      (lambda (_%table106351%_ _%proc106352%_)
        (table-for-each _%proc106352%_ _%table106351%_)))
    (define gambit-table-clear!
      (lambda (_%table106349%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table106349%_ '0 '5 '#f '#f))))
    (let ((__tmp106985 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106985 'ref table-ref))
    (let ((__tmp106986 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106986 'set! table-set!))
    (let ((__tmp106987 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106987 'update! gambit-table-update!))
    (let ((__tmp106988 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106988 'delete! table-set!))
    (let ((__tmp106989 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106989 'for-each gambit-table-for-each))
    (let ((__tmp106990 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106990 'length table-length))
    (let ((__tmp106991 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106991 'copy table-copy))
    (let ((__tmp106992 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp106992 'clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots106331%_ '(table count free hash test seed))
             (_%slot-vector106333%_ (list->vector (cons '#f _%slots106331%_)))
             (_%slot-table106340%_
              (let ((_%slot-table106335%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp106995
                       (lambda (_%slot106337%_ _%field106338%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106335%_
                            _%slot106337%_
                            _%field106338%_))
                         (let ((__tmp106996
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot106337%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106335%_
                            __tmp106996
                            _%field106338%_))))
                      (__tmp106993
                       (let ((__tmp106994
                              (let ()
                                (declare (not safe))
                                (##length _%slots106331%_))))
                         (declare (not safe))
                         (##iota __tmp106994 '1))))
                  (declare (not safe))
                  (##for-each __tmp106995 _%slots106331%_ __tmp106993))
                _%slot-table106335%_))
             (_%flags106342%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields106344%_ '#())
             (_%properties106346%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots106331%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp106997 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags106342%_
         __table::t
         _%fields106344%_
         __tmp106997
         _%slot-vector106333%_
         _%slot-table106340%_
         _%properties106346%_
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots106313%_ '(gcht immediate))
             (_%slot-vector106315%_ (list->vector (cons '#f _%slots106313%_)))
             (_%slot-table106322%_
              (let ((_%slot-table106317%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp107000
                       (lambda (_%slot106319%_ _%field106320%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106317%_
                            _%slot106319%_
                            _%field106320%_))
                         (let ((__tmp107001
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot106319%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106317%_
                            __tmp107001
                            _%field106320%_))))
                      (__tmp106998
                       (let ((__tmp106999
                              (let ()
                                (declare (not safe))
                                (##length _%slots106313%_))))
                         (declare (not safe))
                         (##iota __tmp106999 '1))))
                  (declare (not safe))
                  (##for-each __tmp107000 _%slots106313%_ __tmp106998))
                _%slot-table106317%_))
             (_%flags106324%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields106326%_ '#())
             (_%properties106328%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots106313%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp107002 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags106324%_
         __gc-table::t
         _%fields106326%_
         __tmp107002
         _%slot-vector106315%_
         _%slot-table106322%_
         _%properties106328%_
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp107004 (list))
            (__tmp107003
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp107004
         '(table lock)
         __tmp107003
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args106310%_
        (apply make-instance locked-hash-table::t _%$args106310%_)))
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
      (let ((__tmp107006 (list))
            (__tmp107005
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp107006
         '(table key-check)
         __tmp107005
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args106307%_
        (apply make-instance checked-hash-table::t _%$args106307%_)))
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
      (let ((__tmp107008 (list hash-table::t))
            (__tmp107007 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp107008
         '()
         __tmp107007
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args106304%_
        (apply make-instance eq-hash-table::t _%$args106304%_)))
    (define eqv-hash-table::t
      (let ((__tmp107010 (list hash-table::t))
            (__tmp107009 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp107010
         '()
         __tmp107009
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args106301%_
        (apply make-instance eqv-hash-table::t _%$args106301%_)))
    (define symbol-hash-table::t
      (let ((__tmp107012 (list hash-table::t))
            (__tmp107011 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp107012
         '()
         __tmp107011
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args106298%_
        (apply make-instance symbol-hash-table::t _%$args106298%_)))
    (define string-hash-table::t
      (let ((__tmp107014 (list hash-table::t))
            (__tmp107013 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp107014
         '()
         __tmp107013
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args106295%_
        (apply make-instance string-hash-table::t _%$args106295%_)))
    (define immediate-hash-table::t
      (let ((__tmp107016 (list hash-table::t))
            (__tmp107015 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp107016
         '()
         __tmp107015
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args106292%_
        (apply make-instance immediate-hash-table::t _%$args106292%_)))
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
      (lambda (_%obj106290%_)
        (let ()
          (declare (not safe))
          (##structure-direct-instance-of?
           _%obj106290%_
           'gerbil/runtime/hash#HashTable::t))))
    (define is-hash-table?
      (lambda (_%obj106288%_) (is-HashTable? _%obj106288%_)))
    (define _%locked-hash-table::ref102296%_
      (lambda (_%self102295106262%_ _%key106264%_ _%default106265%_)
        (let* ((_%self106267%_ _%self102295106262%_)
               (_%self106270%_ _%self106267%_))
          (let ((_%h106280%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106270%_ '1 '#f '#f)))
                (_%l106282%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106270%_ '2 '#f '#f))))
            (let ((__tmp107019 (lambda () (&Locker-read-lock! _%l106282%_)))
                  (__tmp107018
                   (lambda ()
                     (&HashTable-ref
                      _%h106280%_
                      _%key106264%_
                      _%default106265%_)))
                  (__tmp107017 (lambda () (&Locker-read-unlock! _%l106282%_))))
              (declare (not safe))
              (##dynamic-wind __tmp107019 __tmp107018 __tmp107017))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'ref
       _%locked-hash-table::ref102296%_
       '#f))
    (define _%locked-hash-table::set!102299%_
      (lambda (_%self102298106113%_ _%key106115%_ _%value106116%_)
        (let* ((_%self106118%_ _%self102298106113%_)
               (_%self106121%_ _%self106118%_))
          (let ((_%h106131%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106121%_ '1 '#f '#f)))
                (_%l106133%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self106121%_ '2 '#f '#f))))
            (let ((__tmp107022 (lambda () (&Locker-write-lock! _%l106133%_)))
                  (__tmp107021
                   (lambda ()
                     (&HashTable-set!
                      _%h106131%_
                      _%key106115%_
                      _%value106116%_)))
                  (__tmp107020
                   (lambda () (&Locker-write-unlock! _%l106133%_))))
              (declare (not safe))
              (##dynamic-wind __tmp107022 __tmp107021 __tmp107020))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'set!
       _%locked-hash-table::set!102299%_
       '#f))
    (define _%locked-hash-table::update!102302%_
      (lambda (_%self102301105963%_
               _%key105965%_
               _%update105966%_
               _%default105967%_)
        (let* ((_%self105969%_ _%self102301105963%_)
               (_%self105972%_ _%self105969%_))
          (let ((_%h105982%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105972%_ '1 '#f '#f)))
                (_%l105984%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105972%_ '2 '#f '#f))))
            (let ((__tmp107025 (lambda () (&Locker-write-lock! _%l105984%_)))
                  (__tmp107024
                   (lambda ()
                     (&HashTable-update!
                      _%h105982%_
                      _%key105965%_
                      _%update105966%_
                      _%default105967%_)))
                  (__tmp107023
                   (lambda () (&Locker-write-unlock! _%l105984%_))))
              (declare (not safe))
              (##dynamic-wind __tmp107025 __tmp107024 __tmp107023))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'update!
       _%locked-hash-table::update!102302%_
       '#f))
    (define _%locked-hash-table::delete!102305%_
      (lambda (_%self102304105815%_ _%key105817%_)
        (let* ((_%self105819%_ _%self102304105815%_)
               (_%self105822%_ _%self105819%_))
          (let ((_%h105832%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105822%_ '1 '#f '#f)))
                (_%l105834%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105822%_ '2 '#f '#f))))
            (let ((__tmp107028 (lambda () (&Locker-write-lock! _%l105834%_)))
                  (__tmp107027
                   (lambda () (&HashTable-delete! _%h105832%_ _%key105817%_)))
                  (__tmp107026
                   (lambda () (&Locker-write-unlock! _%l105834%_))))
              (declare (not safe))
              (##dynamic-wind __tmp107028 __tmp107027 __tmp107026))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'delete!
       _%locked-hash-table::delete!102305%_
       '#f))
    (define _%locked-hash-table::for-each102308%_
      (lambda (_%self102307105667%_ _%proc105669%_)
        (let* ((_%self105671%_ _%self102307105667%_)
               (_%self105674%_ _%self105671%_))
          (let ((_%h105684%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105674%_ '1 '#f '#f)))
                (_%l105686%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105674%_ '2 '#f '#f))))
            (let ((__tmp107031 (lambda () (&Locker-read-lock! _%l105686%_)))
                  (__tmp107030
                   (lambda ()
                     (&HashTable-for-each _%h105684%_ _%proc105669%_)))
                  (__tmp107029 (lambda () (&Locker-read-unlock! _%l105686%_))))
              (declare (not safe))
              (##dynamic-wind __tmp107031 __tmp107030 __tmp107029))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'for-each
       _%locked-hash-table::for-each102308%_
       '#f))
    (define _%locked-hash-table::length102311%_
      (lambda (_%self102310105520%_)
        (let* ((_%self105523%_ _%self102310105520%_)
               (_%self105526%_ _%self105523%_))
          (let ((_%h105536%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105526%_ '1 '#f '#f)))
                (_%l105538%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105526%_ '2 '#f '#f))))
            (let ((__tmp107034 (lambda () (&Locker-read-lock! _%l105538%_)))
                  (__tmp107033 (lambda () (&HashTable-length _%h105536%_)))
                  (__tmp107032 (lambda () (&Locker-read-unlock! _%l105538%_))))
              (declare (not safe))
              (##dynamic-wind __tmp107034 __tmp107033 __tmp107032))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'length
       _%locked-hash-table::length102311%_
       '#f))
    (define _%locked-hash-table::copy102314%_
      (lambda (_%self102313105373%_)
        (let* ((_%self105376%_ _%self102313105373%_)
               (_%self105379%_ _%self105376%_))
          (let ((_%h105389%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105379%_ '1 '#f '#f)))
                (_%l105391%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105379%_ '2 '#f '#f))))
            (let ((__tmp107037 (lambda () (&Locker-read-lock! _%l105391%_)))
                  (__tmp107036 (lambda () (&HashTable-copy _%h105389%_)))
                  (__tmp107035 (lambda () (&Locker-read-unlock! _%l105391%_))))
              (declare (not safe))
              (##dynamic-wind __tmp107037 __tmp107036 __tmp107035))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'copy
       _%locked-hash-table::copy102314%_
       '#f))
    (define _%locked-hash-table::clear!102317%_
      (lambda (_%self102316105226%_)
        (let* ((_%self105229%_ _%self102316105226%_)
               (_%self105232%_ _%self105229%_))
          (let ((_%h105242%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105232%_ '1 '#f '#f)))
                (_%l105244%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105232%_ '2 '#f '#f))))
            (let ((__tmp107040 (lambda () (&Locker-write-lock! _%l105244%_)))
                  (__tmp107039 (lambda () (&HashTable-clear! _%h105242%_)))
                  (__tmp107038
                   (lambda () (&Locker-write-unlock! _%l105244%_))))
              (declare (not safe))
              (##dynamic-wind __tmp107040 __tmp107039 __tmp107038))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       locked-hash-table::t
       'clear!
       _%locked-hash-table::clear!102317%_
       '#f))
    (let ((__tmp107041 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp107041 'read-lock! mutex-lock!))
    (let ((__tmp107042 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp107042 'read-unlock! mutex-unlock!))
    (let ((__tmp107043 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp107043 'write-lock! mutex-lock!))
    (let ((__tmp107044 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp107044 'write-unlock! mutex-unlock!))
    (define _%checked-hash-table::ref102596%_
      (lambda (_%self102595105077%_ _%key105079%_ _%default105080%_)
        (let* ((_%self105082%_ _%self102595105077%_)
               (_%self105084%_ _%self105082%_))
          (let ((_%h105094%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105084%_ '1 '#f '#f)))
                (_%key?105096%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self105084%_ '2 '#f '#f))))
            ((lambda (_%g105098105100%_)
               (if (_%g105098105100%_ _%key105079%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key105079%_))))
             _%key?105096%_)
            (&HashTable-ref _%h105094%_ _%key105079%_ _%default105080%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'ref
       _%checked-hash-table::ref102596%_
       '#f))
    (define _%checked-hash-table::set!102599%_
      (lambda (_%self102598104928%_ _%key104930%_ _%value104931%_)
        (let* ((_%self104933%_ _%self102598104928%_)
               (_%self104935%_ _%self104933%_))
          (let ((_%h104945%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104935%_ '1 '#f '#f)))
                (_%key?104947%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104935%_ '2 '#f '#f))))
            ((lambda (_%g104949104951%_)
               (if (_%g104949104951%_ _%key104930%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104930%_))))
             _%key?104947%_)
            (&HashTable-set! _%h104945%_ _%key104930%_ _%value104931%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'set!
       _%checked-hash-table::set!102599%_
       '#f))
    (define _%checked-hash-table::update!102602%_
      (lambda (_%self102601104780%_
               _%key104782%_
               _%update104783%_
               _%default104784%_)
        (let* ((_%self104786%_ _%self102601104780%_)
               (_%self104788%_ _%self104786%_))
          (let ((_%h104798%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104788%_ '1 '#f '#f)))
                (_%key?104800%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104788%_ '2 '#f '#f))))
            ((lambda (_%key?104803%_)
               (if (_%key?104803%_ _%key104782%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104782%_)))
               (if (procedure? _%update104783%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%update104783%_))))
             _%key?104800%_)
            (&HashTable-update!
             _%h104798%_
             _%key104782%_
             _%update104783%_
             _%default104784%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'update!
       _%checked-hash-table::update!102602%_
       '#f))
    (define _%checked-hash-table::delete!102605%_
      (lambda (_%self102604104632%_ _%key104634%_)
        (let* ((_%self104636%_ _%self102604104632%_)
               (_%self104638%_ _%self104636%_))
          (let ((_%h104648%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104638%_ '1 '#f '#f)))
                (_%key?104650%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104638%_ '2 '#f '#f))))
            ((lambda (_%g104652104654%_)
               (if (_%g104652104654%_ _%key104634%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%key104634%_))))
             _%key?104650%_)
            (&HashTable-delete! _%h104648%_ _%key104634%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'delete!
       _%checked-hash-table::delete!102605%_
       '#f))
    (define _%checked-hash-table::for-each102608%_
      (lambda (_%self102607104486%_ _%proc104488%_)
        (let* ((_%self104490%_ _%self102607104486%_)
               (_%self104492%_ _%self104490%_))
          (let ((_%h104502%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104492%_ '1 '#f '#f)))
                (_%key?104504%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104492%_ '2 '#f '#f))))
            ((lambda (_%_104507%_)
               (if (procedure? _%proc104488%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (error '"invalid argument" _%proc104488%_))))
             _%key?104504%_)
            (&HashTable-for-each _%h104502%_ _%proc104488%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'for-each
       _%checked-hash-table::for-each102608%_
       '#f))
    (define _%checked-hash-table::length102611%_
      (lambda (_%self102610104343%_)
        (let* ((_%self104346%_ _%self102610104343%_)
               (_%self104348%_ _%self104346%_))
          (let ((_%h104358%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104348%_ '1 '#f '#f)))
                (_%key?104360%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104348%_ '2 '#f '#f))))
            (&HashTable-length _%h104358%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'length
       _%checked-hash-table::length102611%_
       '#f))
    (define _%checked-hash-table::copy102614%_
      (lambda (_%self102613104200%_)
        (let* ((_%self104203%_ _%self102613104200%_)
               (_%self104205%_ _%self104203%_))
          (let ((_%h104215%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104205%_ '1 '#f '#f)))
                (_%key?104217%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104205%_ '2 '#f '#f))))
            (&HashTable-copy _%h104215%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'copy
       _%checked-hash-table::copy102614%_
       '#f))
    (define _%checked-hash-table::clear!102617%_
      (lambda (_%self102616104057%_)
        (let* ((_%self104060%_ _%self102616104057%_)
               (_%self104062%_ _%self104060%_))
          (let ((_%h104072%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104062%_ '1 '#f '#f)))
                (_%key?104074%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self104062%_ '2 '#f '#f))))
            (&HashTable-clear! _%h104072%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       checked-hash-table::t
       'clear!
       _%checked-hash-table::clear!102617%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table103927%_
               _%count103928%_
               _%free103929%_
               _%hash103930%_
               _%test103931%_
               _%seed103932%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table103927%_
           _%count103928%_
           _%free103929%_
           _%hash103930%_
           _%test103931%_
           _%seed103932%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords103750%_
               _%size-hint103740103751%_
               _%seed103741103753%_
               _%test103742103755%_
               _%hash103743103757%_
               _%lock103744103759%_
               _%check103745103761%_
               _%weak-keys103746103763%_
               _%weak-values103747103765%_)
        (let* ((_%size-hint103768%_
                (if (eq? _%size-hint103740103751%_ absent-value)
                    '#f
                    _%size-hint103740103751%_))
               (_%seed103770%_
                (if (eq? _%seed103741103753%_ absent-value)
                    '#f
                    _%seed103741103753%_))
               (_%test103772%_
                (if (eq? _%test103742103755%_ absent-value)
                    equal?
                    _%test103742103755%_))
               (_%hash103774%_
                (if (eq? _%hash103743103757%_ absent-value)
                    '#f
                    _%hash103743103757%_))
               (_%lock103776%_
                (if (eq? _%lock103744103759%_ absent-value)
                    '#f
                    _%lock103744103759%_))
               (_%check103778%_
                (if (eq? _%check103745103761%_ absent-value)
                    '#f
                    _%check103745103761%_))
               (_%weak-keys103780%_
                (if (eq? _%weak-keys103746103763%_ absent-value)
                    '#f
                    _%weak-keys103746103763%_))
               (_%weak-values103782%_
                (if (eq? _%weak-values103747103765%_ absent-value)
                    '#f
                    _%weak-values103747103765%_)))
          (letrec ((_%table-seed103784%_
                    (lambda ()
                      (if (fixnum? _%seed103770%_)
                          _%seed103770%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock103785%_
                    (lambda (_%ht103905%_)
                      (if _%lock103776%_
                          (let ((_%$obj103910%_
                                 (let ((__tmp107045
                                        (let ((_%$obj103907%_ _%lock103776%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (##structure?
                                                      _%$obj103907%_))
                                                   (eq? Locker::t
                                                        (let ()
                                                          (declare (not safe))
                                                          (##structure-type
                                                           _%$obj103907%_)))
                                                   '#t)
                                              _%$obj103907%_
                                              (let ()
                                                (declare (not safe))
                                                (cast Locker::interface
                                                      _%$obj103907%_))))))
                                   (declare (not safe))
                                   (##structure
                                    locked-hash-table::t
                                    _%ht103905%_
                                    __tmp107045))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103910%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103910%_)))
                                     '#t)
                                _%$obj103910%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103910%_))))
                          _%ht103905%_)))
                   (_%wrap-checked103786%_
                    (lambda (_%ht103899%_ _%implicit103900%_)
                      (if _%check103778%_
                          (let ((_%$obj103902%_
                                 (let ((__tmp107046
                                        (if (procedure? _%check103778%_)
                                            _%check103778%_
                                            _%implicit103900%_)))
                                   (declare (not safe))
                                   (##structure
                                    checked-hash-table::t
                                    _%ht103899%_
                                    __tmp107046))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj103902%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj103902%_)))
                                     '#t)
                                _%$obj103902%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface _%$obj103902%_))))
                          _%ht103899%_)))
                   (_%make103787%_
                    (lambda (_%kons103884%_
                             _%key?103885%_
                             _%hash103886%_
                             _%test103887%_)
                      (let* ((_%size103889%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint103768%_)))
                             (_%table103891%_
                              (let ((__tmp107047 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size103889%_ __tmp107047)))
                             (_%ht103896%_
                              (let ((_%$obj103893%_
                                     (_%kons103884%_
                                      _%table103891%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size103889%_ '2))
                                      _%hash103886%_
                                      _%test103887%_
                                      (_%table-seed103784%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103893%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103893%_)))
                                         '#t)
                                    _%$obj103893%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103893%_))))))
                        (_%wrap-checked103786%_
                         (_%wrap-lock103785%_ _%ht103896%_)
                         _%key?103885%_))))
                   (_%make-gc-hash-table103788%_
                    (lambda ()
                      (let ((_%ht103882%_
                             (let ((_%$obj103879%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint103768%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj103879%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj103879%_)))
                                        '#t)
                                   _%$obj103879%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj103879%_))))))
                        (_%wrap-checked103786%_
                         (_%wrap-lock103785%_ _%ht103882%_)
                         true))))
                   (_%make-gambit-table103789%_
                    (lambda ()
                      (let* ((_%size103857%_
                              (let ((_%$e103854%_ _%size-hint103768%_))
                                (if _%$e103854%_
                                    _%$e103854%_
                                    (macro-absent-obj))))
                             (_%test103862%_
                              (let ((_%$e103859%_ _%test103772%_))
                                (if _%$e103859%_ _%$e103859%_ equal?)))
                             (_%hash103870%_
                              (let ((_%$e103864%_ _%hash103774%_))
                                (if _%$e103864%_
                                    _%$e103864%_
                                    (if (eq? _%test103862%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test103862%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht103875%_
                              (let ((_%$obj103872%_
                                     (make-table
                                      'size:
                                      _%size103857%_
                                      'test:
                                      _%test103862%_
                                      'hash:
                                      _%hash103870%_
                                      'weak-keys:
                                      _%weak-keys103780%_
                                      'weak-values:
                                      _%weak-values103782%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj103872%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj103872%_)))
                                         '#t)
                                    _%$obj103872%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj103872%_))))))
                        (_%wrap-checked103786%_
                         (_%wrap-lock103785%_ _%ht103875%_)
                         true)))))
            (if (or _%weak-keys103780%_ _%weak-values103782%_)
                (_%make-gambit-table103789%_)
                (if (and (or (eq? _%test103772%_ eq?)
                             (eq? _%test103772%_ ##eq?))
                         (or (not _%hash103774%_)
                             (eq? _%hash103774%_ eq?-hash)
                             (eq? _%hash103774%_ eq-hash))
                         (not _%seed103770%_))
                    (_%make-gc-hash-table103788%_)
                    (if (and (or (eq? _%test103772%_ eq?)
                                 (eq? _%test103772%_ ##eq?))
                             (or (not _%hash103774%_)
                                 (eq? _%hash103774%_ eq?-hash)
                                 (eq? _%hash103774%_ eq-hash)))
                        (_%make103787%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test103772%_ eqv?)
                                     (eq? _%test103772%_ ##eqv?))
                                 (or (not _%hash103774%_)
                                     (eq? _%hash103774%_ eqv?-hash)
                                     (eq? _%hash103774%_ eqv-hash)))
                            (_%make103787%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test103772%_ eq?)
                                         (eq? _%test103772%_ ##eq?))
                                     (or (eq? _%hash103774%_ symbolic-hash)
                                         (eq? _%hash103774%_ ##symbol-hash)))
                                (_%make103787%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test103772%_ eq?)
                                             (eq? _%test103772%_ ##eq?))
                                         (eq? _%hash103774%_ immediate-hash))
                                    (_%make103787%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test103772%_ equal?)
                                                 (eq? _%test103772%_ ##equal?)
                                                 (eq? _%test103772%_ string=?)
                                                 (eq? _%test103772%_
                                                      ##string=?))
                                             (or (eq? _%hash103774%_
                                                      string-hash)
                                                 (eq? _%hash103774%_
                                                      ##string=?-hash)))
                                        (_%make103787%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test103772%_ equal?)
                                                 (not _%hash103774%_))
                                            (_%make103787%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (not (procedure?
                                                      _%test103772%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"bad hash table test function; expected procedure"
                                                         _%test103772%_))
                                                (if (not (procedure?
                                                          _%hash103774%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"bad hash table hash function; expected procedure"
                                                             _%hash103774%_))
                                                    (_%make103787%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash103774%_
                                                     _%test103772%_)))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords103917%_ . _%args103918%_)
        (apply make-hash-table__%
               _%@@keywords103917%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103917%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103917%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103917%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103917%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords103917%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103917%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103917%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103917%_
                  'weak-values:
                  absent-value))
               _%args103918%_)))
    (define make-hash-table
      (lambda _%args103748103924%_
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
               _%args103748103924%_)))
    (define make-hash-table-eq
      (lambda _%args103737%_
        (apply make-hash-table 'test: eq? _%args103737%_)))
    (define make-hash-table-eqv
      (lambda _%args103735%_
        (apply make-hash-table 'test: eqv? _%args103735%_)))
    (define make-hash-table-symbolic
      (lambda _%args103733%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args103733%_)))
    (define make-hash-table-string
      (lambda _%args103731%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args103731%_)))
    (define make-hash-table-immediate
      (lambda _%args103729%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args103729%_)))
    (define list->hash-table
      (lambda (_%lst103726%_ . _%args103727%_)
        (list->hash-table!
         _%lst103726%_
         (apply make-hash-table
                'size:
                (length _%lst103726%_)
                _%args103727%_))))
    (define list->hash-table-eq
      (lambda (_%lst103723%_ . _%args103724%_)
        (list->hash-table!
         _%lst103723%_
         (apply make-hash-table-eq
                'size:
                (length _%lst103723%_)
                _%args103724%_))))
    (define list->hash-table-eqv
      (lambda (_%lst103720%_ . _%args103721%_)
        (list->hash-table!
         _%lst103720%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst103720%_)
                _%args103721%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst103717%_ . _%args103718%_)
        (list->hash-table!
         _%lst103717%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst103717%_)
                _%args103718%_))))
    (define list->hash-table-string
      (lambda (_%lst103714%_ . _%args103715%_)
        (list->hash-table!
         _%lst103714%_
         (apply make-hash-table-string
                'size:
                (length _%lst103714%_)
                _%args103715%_))))
    (define list->hash-table-immediate
      (lambda (_%lst103711%_ . _%args103712%_)
        (list->hash-table!
         _%lst103711%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst103711%_)
                _%args103712%_))))
    (define list->hash-table!
      (lambda (_%lst103678%_ _%h103679%_)
        (for-each
         (lambda (_%el103681%_)
           (let* ((_%el103682103689%_ _%el103681%_)
                  (_%E103684103693%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el103682103689%_
                              '([k . v])))
                     '#!void))
                  (_%K103685103699%_
                   (lambda (_%v103696%_ _%k103697%_)
                     (&HashTable-set! _%h103679%_ _%k103697%_ _%v103696%_))))
             (if (let () (declare (not safe)) (##pair? _%el103682103689%_))
                 (let ((_%hd103686103702%_
                        (let ()
                          (declare (not safe))
                          (##car _%el103682103689%_)))
                       (_%tl103687103704%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el103682103689%_))))
                   (let* ((_%k103707%_ _%hd103686103702%_)
                          (_%v103709%_ _%tl103687103704%_))
                     (_%K103685103699%_ _%v103709%_ _%k103707%_)))
                 (_%E103684103693%_))))
         _%lst103678%_)
        _%h103679%_))
    (define plist->hash-table
      (lambda (_%lst103675%_ . _%args103676%_)
        (plist->hash-table!
         _%lst103675%_
         (apply make-hash-table
                'size:
                (length _%lst103675%_)
                _%args103676%_))))
    (define plist->hash-table-eq
      (lambda (_%lst103672%_ . _%args103673%_)
        (plist->hash-table!
         _%lst103672%_
         (apply make-hash-table-eq
                'size:
                (length _%lst103672%_)
                _%args103673%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst103669%_ . _%args103670%_)
        (plist->hash-table!
         _%lst103669%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst103669%_)
                _%args103670%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst103666%_ . _%args103667%_)
        (plist->hash-table!
         _%lst103666%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst103666%_)
                _%args103667%_))))
    (define plist->hash-table-string
      (lambda (_%lst103663%_ . _%args103664%_)
        (plist->hash-table!
         _%lst103663%_
         (apply make-hash-table-string
                'size:
                (length _%lst103663%_)
                _%args103664%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst103660%_ . _%args103661%_)
        (plist->hash-table!
         _%lst103660%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst103660%_)
                _%args103661%_))))
    (define plist->hash-table!
      (lambda (_%lst103600%_ _%h103601%_)
        (let _%loop103603%_ ((_%rest103605%_ _%lst103600%_))
          (let* ((_%rest103606103618%_ _%rest103605%_)
                 (_%else103609103626%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst103600%_)))))
            (let ((_%K103612103641%_
                   (lambda (_%rest103637%_ _%val103638%_ _%key103639%_)
                     (&HashTable-set! _%h103601%_ _%key103639%_ _%val103638%_)
                     (_%loop103603%_ _%rest103637%_)))
                  (_%K103611103631%_ (lambda () _%h103601%_)))
              (let ((_%try-match103608103634%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest103606103618%_))
                           (_%K103611103631%_)
                           (_%else103609103626%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest103606103618%_))
                    (let ((_%tl103614103646%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest103606103618%_)))
                          (_%hd103613103644%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest103606103618%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl103614103646%_))
                          (let ((_%tl103616103653%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl103614103646%_)))
                                (_%hd103615103651%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl103614103646%_))))
                            (let ((_%key103649%_ _%hd103613103644%_)
                                  (_%val103656%_ _%hd103615103651%_)
                                  (_%rest103658%_ _%tl103616103653%_))
                              (_%K103612103641%_
                               _%rest103658%_
                               _%val103656%_
                               _%key103649%_)))
                          (_%else103609103626%_)))
                    (_%try-match103608103634%_))))))))
    (define hash-length
      (lambda (_%h103582%_)
        (let* ((_%h103588%_
                (let ((_%$obj103585%_ _%h103582%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103585%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103585%_)))
                           '#t)
                      _%$obj103585%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103585%_)))))
               (_%h103590%_ _%h103588%_))
          (__hash-length _%h103590%_))))
    (define __hash-length
      (lambda (_%h103570%_)
        (let ((_%h103573%_ _%h103570%_)) (__HashTable-length _%h103573%_))))
    (define hash-ref__%
      (lambda (_%h103538%_ _%key103539%_ _%default103540%_)
        (let* ((_%h103546%_
                (let ((_%$obj103543%_ _%h103538%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103543%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103543%_)))
                           '#t)
                      _%$obj103543%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103543%_)))))
               (_%h103548%_ _%h103546%_))
          (__hash-ref__% _%h103548%_ _%key103539%_ _%default103540%_))))
    (define hash-ref__0
      (lambda (_%h103561%_ _%key103562%_)
        (let ((_%default103564%_ (macro-absent-obj)))
          (hash-ref__% _%h103561%_ _%key103562%_ _%default103564%_))))
    (define hash-ref
      (lambda _g107049_
        (let ((_g107048_ (let () (declare (not safe)) (##length _g107049_))))
          (cond ((let () (declare (not safe)) (##fx= _g107048_ 2))
                 (apply hash-ref__0 _g107049_))
                ((let () (declare (not safe)) (##fx= _g107048_ 3))
                 (apply hash-ref__% _g107049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g107049_))))))
    (define __hash-ref__%
      (lambda (_%h103509%_ _%key103510%_ _%default103511%_)
        (let* ((_%h103514%_ _%h103509%_)
               (_%result103523%_
                (&HashTable-ref _%h103514%_ _%key103510%_ _%default103511%_)))
          (if (eq? _%result103523%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h103514%_
               'key:
               _%key103510%_)
              _%result103523%_))))
    (define __hash-ref__0
      (lambda (_%h103528%_ _%key103529%_)
        (let ((_%default103531%_ (macro-absent-obj)))
          (__hash-ref__% _%h103528%_ _%key103529%_ _%default103531%_))))
    (define __hash-ref
      (lambda _g107051_
        (let ((_g107050_ (let () (declare (not safe)) (##length _g107051_))))
          (cond ((let () (declare (not safe)) (##fx= _g107050_ 2))
                 (apply __hash-ref__0 _g107051_))
                ((let () (declare (not safe)) (##fx= _g107050_ 3))
                 (apply __hash-ref__% _g107051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g107051_))))))
    (define hash-get
      (lambda (_%h103489%_ _%key103490%_)
        (let* ((_%h103496%_
                (let ((_%$obj103493%_ _%h103489%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103493%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103493%_)))
                           '#t)
                      _%$obj103493%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103493%_)))))
               (_%h103498%_ _%h103496%_))
          (__hash-get _%h103498%_ _%key103490%_))))
    (define __hash-get
      (lambda (_%h103476%_ _%key103477%_)
        (let ((_%h103480%_ _%h103476%_))
          (&HashTable-ref _%h103480%_ _%key103477%_ '#f))))
    (define hash-put!
      (lambda (_%h103456%_ _%key103457%_ _%value103458%_)
        (let* ((_%h103464%_
                (let ((_%$obj103461%_ _%h103456%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103461%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103461%_)))
                           '#t)
                      _%$obj103461%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103461%_)))))
               (_%h103466%_ _%h103464%_))
          (__hash-put! _%h103466%_ _%key103457%_ _%value103458%_))))
    (define __hash-put!
      (lambda (_%h103442%_ _%key103443%_ _%value103444%_)
        (let ((_%h103447%_ _%h103442%_))
          (&HashTable-set! _%h103447%_ _%key103443%_ _%value103444%_))))
    (define hash-update!__%
      (lambda (_%h103407%_ _%key103408%_ _%update103409%_ _%default103410%_)
        (let* ((_%h103416%_
                (let ((_%$obj103413%_ _%h103407%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103413%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103413%_)))
                           '#t)
                      _%$obj103413%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103413%_)))))
               (_%h103418%_ _%h103416%_))
          (__hash-update!__%
           _%h103418%_
           _%key103408%_
           _%update103409%_
           _%default103410%_))))
    (define hash-update!__0
      (lambda (_%h103431%_ _%key103432%_ _%update103433%_)
        (let ((_%default103435%_ '#!void))
          (hash-update!__%
           _%h103431%_
           _%key103432%_
           _%update103433%_
           _%default103435%_))))
    (define hash-update!
      (lambda _g107053_
        (let ((_g107052_ (let () (declare (not safe)) (##length _g107053_))))
          (cond ((let () (declare (not safe)) (##fx= _g107052_ 3))
                 (apply hash-update!__0 _g107053_))
                ((let () (declare (not safe)) (##fx= _g107052_ 4))
                 (apply hash-update!__% _g107053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g107053_))))))
    (define __hash-update!__%
      (lambda (_%h103377%_ _%key103378%_ _%update103379%_ _%default103380%_)
        (let ((_%h103383%_ _%h103377%_))
          (HashTable-update!
           _%h103383%_
           _%key103378%_
           _%update103379%_
           _%default103380%_))))
    (define __hash-update!__0
      (lambda (_%h103395%_ _%key103396%_ _%update103397%_)
        (let ((_%default103399%_ '#!void))
          (__hash-update!__%
           _%h103395%_
           _%key103396%_
           _%update103397%_
           _%default103399%_))))
    (define __hash-update!
      (lambda _g107055_
        (let ((_g107054_ (let () (declare (not safe)) (##length _g107055_))))
          (cond ((let () (declare (not safe)) (##fx= _g107054_ 3))
                 (apply __hash-update!__0 _g107055_))
                ((let () (declare (not safe)) (##fx= _g107054_ 4))
                 (apply __hash-update!__% _g107055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g107055_))))))
    (define hash-remove!
      (lambda (_%h103357%_ _%key103358%_)
        (let* ((_%h103364%_
                (let ((_%$obj103361%_ _%h103357%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103361%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103361%_)))
                           '#t)
                      _%$obj103361%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103361%_)))))
               (_%h103366%_ _%h103364%_))
          (__hash-remove! _%h103366%_ _%key103358%_))))
    (define __hash-remove!
      (lambda (_%h103344%_ _%key103345%_)
        (let ((_%h103348%_ _%h103344%_))
          (&HashTable-delete! _%h103348%_ _%key103345%_))))
    (define hash-key?
      (lambda (_%h103325%_ _%k103326%_)
        (let* ((_%h103332%_
                (let ((_%$obj103329%_ _%h103325%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103329%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103329%_)))
                           '#t)
                      _%$obj103329%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103329%_)))))
               (_%h103334%_ _%h103332%_))
          (__hash-key? _%h103334%_ _%k103326%_))))
    (define __hash-key?
      (lambda (_%h103312%_ _%k103313%_)
        (let ((_%h103316%_ _%h103312%_))
          (not (eq? (&HashTable-ref _%h103316%_ _%k103313%_ absent-value)
                    absent-value)))))
    (define hash->list
      (lambda (_%h103294%_)
        (let* ((_%h103300%_
                (let ((_%$obj103297%_ _%h103294%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103297%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103297%_)))
                           '#t)
                      _%$obj103297%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103297%_)))))
               (_%h103302%_ _%h103300%_))
          (__hash->list _%h103302%_))))
    (define __hash->list
      (lambda (_%h103277%_)
        (let* ((_%h103280%_ _%h103277%_) (_%lst103289%_ '()))
          (&HashTable-for-each
           _%h103280%_
           (lambda (_%k103291%_ _%v103292%_)
             (set! _%lst103289%_
                   (cons (cons _%k103291%_ _%v103292%_) _%lst103289%_))))
          _%lst103289%_)))
    (define hash->plist
      (lambda (_%h103259%_)
        (let* ((_%h103265%_
                (let ((_%$obj103262%_ _%h103259%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj103262%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj103262%_)))
                           '#t)
                      _%$obj103262%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj103262%_)))))
               (_%h103267%_ _%h103265%_))
          (__hash->plist _%h103267%_))))
    (define __hash->plist
      (lambda (_%h103242%_)
        (let* ((_%h103245%_ _%h103242%_) (_%lst103254%_ '()))
          (&HashTable-for-each
           _%h103245%_
           (lambda (_%k103256%_ _%v103257%_)
             (set! _%lst103254%_
                   (cons _%k103256%_ (cons _%v103257%_ _%lst103254%_)))))
          _%lst103254%_)))
    (define hash-for-each
      (lambda (_%proc103213%_ _%h103214%_)
        (if (procedure? _%proc103213%_)
            (let* ((_%proc103218%_ _%proc103213%_)
                   (_%h103230%_
                    (let ((_%$obj103227%_ _%h103214%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj103227%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj103227%_)))
                               '#t)
                          _%$obj103227%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj103227%_)))))
                   (_%h103232%_ _%h103230%_))
              (__hash-for-each _%proc103218%_ _%h103232%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@560.22-560.26"
               'contract:
               'procedure?
               'value:
               _%proc103213%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc103192%_ _%h103193%_)
        (let* ((_%proc103196%_ _%proc103192%_) (_%h103204%_ _%h103193%_))
          (&HashTable-for-each _%h103204%_ _%proc103196%_))))
    (define hash-map
      (lambda (_%proc103163%_ _%h103164%_)
        (if (procedure? _%proc103163%_)
            (let* ((_%proc103168%_ _%proc103163%_)
                   (_%h103180%_
                    (let ((_%$obj103177%_ _%h103164%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj103177%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj103177%_)))
                               '#t)
                          _%$obj103177%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj103177%_)))))
                   (_%h103182%_ _%h103180%_))
              (__hash-map _%proc103168%_ _%h103182%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@563.17-563.21"
               'contract:
               'procedure?
               'value:
               _%proc103163%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc103137%_ _%h103138%_)
        (let* ((_%proc103141%_ _%proc103137%_)
               (_%h103149%_ _%h103138%_)
               (_%result103158%_ '()))
          (&HashTable-for-each
           _%h103149%_
           (lambda (_%k103160%_ _%v103161%_)
             (set! _%result103158%_
                   (cons (let ()
                           (declare (not safe))
                           (_%proc103141%_ _%k103160%_ _%v103161%_))
                         _%result103158%_))))
          _%result103158%_)))
    (define hash-fold
      (lambda (_%proc103107%_ _%iv103108%_ _%h103109%_)
        (if (procedure? _%proc103107%_)
            (let* ((_%proc103113%_ _%proc103107%_)
                   (_%h103125%_
                    (let ((_%$obj103122%_ _%h103109%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj103122%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj103122%_)))
                               '#t)
                          _%$obj103122%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj103122%_)))))
                   (_%h103127%_ _%h103125%_))
              (__hash-fold _%proc103113%_ _%iv103108%_ _%h103127%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@568.18-568.22"
               'contract:
               'procedure?
               'value:
               _%proc103107%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc103080%_ _%iv103081%_ _%h103082%_)
        (let* ((_%proc103085%_ _%proc103080%_)
               (_%h103093%_ _%h103082%_)
               (_%result103102%_ _%iv103081%_))
          (&HashTable-for-each
           _%h103093%_
           (lambda (_%k103104%_ _%v103105%_)
             (set! _%result103102%_
                   (let ()
                     (declare (not safe))
                     (_%proc103085%_
                      _%k103104%_
                      _%v103105%_
                      _%result103102%_)))))
          _%result103102%_)))
    (define hash-find__%
      (lambda (_%proc103038%_ _%h103039%_ _%default-value103040%_)
        (if (procedure? _%proc103038%_)
            (let* ((_%proc103044%_ _%proc103038%_)
                   (_%h103056%_
                    (let ((_%$obj103053%_ _%h103039%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj103053%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj103053%_)))
                               '#t)
                          _%$obj103053%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj103053%_)))))
                   (_%h103058%_ _%h103056%_))
              (__hash-find__%
               _%proc103044%_
               _%h103058%_
               _%default-value103040%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@573.18-573.22"
               'contract:
               'procedure?
               'value:
               _%proc103038%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc103071%_ _%h103072%_)
        (let ((_%default-value103074%_ '#f))
          (hash-find__% _%proc103071%_ _%h103072%_ _%default-value103074%_))))
    (define hash-find
      (lambda _g107057_
        (let ((_g107056_ (let () (declare (not safe)) (##length _g107057_))))
          (cond ((let () (declare (not safe)) (##fx= _g107056_ 2))
                 (apply hash-find__0 _g107057_))
                ((let () (declare (not safe)) (##fx= _g107056_ 3))
                 (apply hash-find__% _g107057_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g107057_))))))
    (define __hash-find__%
      (lambda (_%proc102995%_ _%h102996%_ _%default-value102997%_)
        (let* ((_%proc103000%_ _%proc102995%_)
               (_%h103008%_ _%h102996%_)
               (__tmp107058
                (lambda (_%return103017%_)
                  (&HashTable-for-each
                   _%h103008%_
                   (lambda (_%k103019%_ _%v103020%_)
                     (let ((_%$e103022%_
                            (let ()
                              (declare (not safe))
                              (_%proc103000%_ _%k103019%_ _%v103020%_))))
                       (if _%$e103022%_
                           (_%return103017%_ _%$e103022%_)
                           '#!void))))
                  _%default-value102997%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp107058))))
    (define __hash-find__0
      (lambda (_%proc103028%_ _%h103029%_)
        (let ((_%default-value103031%_ '#f))
          (__hash-find__%
           _%proc103028%_
           _%h103029%_
           _%default-value103031%_))))
    (define __hash-find
      (lambda _g107060_
        (let ((_g107059_ (let () (declare (not safe)) (##length _g107060_))))
          (cond ((let () (declare (not safe)) (##fx= _g107059_ 2))
                 (apply __hash-find__0 _g107060_))
                ((let () (declare (not safe)) (##fx= _g107059_ 3))
                 (apply __hash-find__% _g107060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g107060_))))))
    (define hash-keys
      (lambda (_%h102976%_)
        (let* ((_%h102982%_
                (let ((_%$obj102979%_ _%h102976%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102979%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102979%_)))
                           '#t)
                      _%$obj102979%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102979%_)))))
               (_%h102984%_ _%h102982%_))
          (__hash-keys _%h102984%_))))
    (define __hash-keys
      (lambda (_%h102959%_)
        (let* ((_%h102962%_ _%h102959%_) (_%result102971%_ '()))
          (&HashTable-for-each
           _%h102962%_
           (lambda (_%k102973%_ _%v102974%_)
             (set! _%result102971%_ (cons _%k102973%_ _%result102971%_))))
          _%result102971%_)))
    (define hash-values
      (lambda (_%h102941%_)
        (let* ((_%h102947%_
                (let ((_%$obj102944%_ _%h102941%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102944%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102944%_)))
                           '#t)
                      _%$obj102944%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102944%_)))))
               (_%h102949%_ _%h102947%_))
          (__hash-values _%h102949%_))))
    (define __hash-values
      (lambda (_%h102924%_)
        (let* ((_%h102927%_ _%h102924%_) (_%result102936%_ '()))
          (&HashTable-for-each
           _%h102927%_
           (lambda (_%k102938%_ _%v102939%_)
             (set! _%result102936%_ (cons _%v102939%_ _%result102936%_))))
          _%result102936%_)))
    (define hash-copy
      (lambda (_%h102906%_)
        (let* ((_%h102912%_
                (let ((_%$obj102909%_ _%h102906%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102909%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102909%_)))
                           '#t)
                      _%$obj102909%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102909%_)))))
               (_%h102914%_ _%h102912%_))
          (__hash-copy _%h102914%_))))
    (define __hash-copy
      (lambda (_%h102894%_)
        (let ((_%h102897%_ _%h102894%_)) (__HashTable-copy _%h102897%_))))
    (define hash-clear!
      (lambda (_%h102876%_)
        (let* ((_%h102882%_
                (let ((_%$obj102879%_ _%h102876%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102879%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102879%_)))
                           '#t)
                      _%$obj102879%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102879%_)))))
               (_%h102884%_ _%h102882%_))
          (__hash-clear! _%h102884%_))))
    (define __hash-clear!
      (lambda (_%h102864%_)
        (let ((_%h102867%_ _%h102864%_)) (&HashTable-clear! _%h102867%_))))
    (define hash-merge
      (lambda (_%h102845%_ . _%rest102846%_)
        (let* ((_%h102852%_
                (let ((_%$obj102849%_ _%h102845%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102849%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102849%_)))
                           '#t)
                      _%$obj102849%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102849%_)))))
               (_%h102854%_ _%h102852%_))
          (declare (not safe))
          (##apply __hash-merge _%h102854%_ _%rest102846%_))))
    (define __hash-merge
      (lambda (_%h102830%_ . _%rest102831%_)
        (let* ((_%h102834%_ _%h102830%_)
               (_%copy102843%_ (__HashTable-copy _%h102834%_)))
          (apply hash-merge! _%copy102843%_ _%rest102831%_)
          _%copy102843%_)))
    (define hash-merge!
      (lambda (_%h102811%_ . _%rest102812%_)
        (let* ((_%h102818%_
                (let ((_%$obj102815%_ _%h102811%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj102815%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj102815%_)))
                           '#t)
                      _%$obj102815%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj102815%_)))))
               (_%h102820%_ _%h102818%_))
          (declare (not safe))
          (##apply __hash-merge! _%h102820%_ _%rest102812%_))))
    (define __hash-merge!
      (lambda (_%h102774%_ . _%rest102775%_)
        (let ((_%h102778%_ _%h102774%_))
          (let ((__tmp107061
                 (lambda (_%hr102787%_)
                   (let* ((_%hr102793%_
                           (let ((_%$obj102790%_ _%hr102787%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj102790%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj102790%_)))
                                      '#t)
                                 _%$obj102790%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj102790%_)))))
                          (_%hr102795%_ _%hr102793%_))
                     (&HashTable-for-each
                      _%hr102795%_
                      (lambda (_%k102808%_ _%v102809%_)
                        (if (__hash-key? _%h102778%_ _%k102808%_)
                            '#!void
                            (&HashTable-set!
                             _%h102778%_
                             _%k102808%_
                             _%v102809%_))))))))
            (declare (not safe))
            (##for-each __tmp107061 _%rest102775%_))
          _%h102778%_)))))
