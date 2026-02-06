(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1770405372)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp158185 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp158185
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args156927%_
        (apply make-instance UnboundKeyError::t _%$args156927%_)))
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
      (lambda (_%where156801%_ _%message156802%_ . _%irritants156803%_)
        (let ((__tmp158186
               (let ((__obj158177
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj158177
                    _%message156802%_
                    'where:
                    _%where156801%_
                    'irritants:
                    _%irritants156803%_))
                 __obj158177)))
          (declare (not safe))
          (raise __tmp158186))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp158187 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp158187
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj158179
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj158179
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj158179))
    (define make-HashTable
      (lambda (_%obj156799%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj156799%_))))
    (define try-HashTable
      (lambda (_%obj156797%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj156797%_))))
    (define HashTable?
      (lambda (_%obj156795%_)
        (let ((__tmp158188
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj156795%_ __tmp158188))))
    (define is-HashTable?
      (lambda (_%obj156792%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj156792%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self141782142026%_)
        (let ((_%self141782142028%_ _%self141782142026%_))
          (declare (not safe))
          (let ((_%object142035142040%_
                 (##unchecked-structure-ref
                  _%self141782142028%_
                  '1
                  '#f
                  'clear!))
                (_%method142036142041%_
                 (##unchecked-structure-ref
                  _%self141782142028%_
                  '2
                  '#f
                  'clear!)))
            (_%method142036142041%_ _%object142035142040%_)))))
    (define ::HashTable-clear!
      (lambda (_%self141783142043%_)
        (let* ((_%self141783142048%_
                (let ((_%$obj142045%_ _%self141783142043%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj142045%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj142045%_)))
                           '#t)
                      _%$obj142045%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj142045%_)))))
               (_%self141783142050%_ _%self141783142048%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object142058142063%_
                       (##unchecked-structure-ref
                        _%self141783142050%_
                        '1
                        '#f
                        'clear!))
                      (_%method142059142064%_
                       (##unchecked-structure-ref
                        _%self141783142050%_
                        '2
                        '#f
                        'clear!)))
                  (_%method142059142064%_ _%object142058142063%_)))
              (let ()
                (declare (not safe))
                (let ((_%object142065142070%_
                       (##unchecked-structure-ref
                        _%self141783142050%_
                        '1
                        '#f
                        'clear!))
                      (_%method142066142071%_
                       (##unchecked-structure-ref
                        _%self141783142050%_
                        '2
                        '#f
                        'clear!)))
                  (_%method142066142071%_ _%object142065142070%_)))))))
    (define __HashTable-copy
      (lambda (_%self142074142317%_)
        (let ((_%self142074142319%_ _%self142074142317%_))
          (declare (not safe))
          (let ((_%object142326142331%_
                 (##unchecked-structure-ref _%self142074142319%_ '1 '#f 'copy))
                (_%method142327142332%_
                 (##unchecked-structure-ref
                  _%self142074142319%_
                  '3
                  '#f
                  'copy)))
            (_%method142327142332%_ _%object142326142331%_)))))
    (define ::HashTable-copy
      (lambda (_%self142075142334%_)
        (let* ((_%self142075142339%_
                (let ((_%$obj142336%_ _%self142075142334%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj142336%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj142336%_)))
                           '#t)
                      _%$obj142336%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj142336%_)))))
               (_%self142075142341%_ _%self142075142339%_))
          (if __DEBUG
              (let ((_%$obj142357%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object142349142354%_
                              (##unchecked-structure-ref
                               _%self142075142341%_
                               '1
                               '#f
                               'copy))
                             (_%method142350142355%_
                              (##unchecked-structure-ref
                               _%self142075142341%_
                               '3
                               '#f
                               'copy)))
                         (_%method142350142355%_ _%object142349142354%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj142357%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj142357%_)))
                         '#t)
                    _%$obj142357%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj142357%_))))
              (let ()
                (declare (not safe))
                (let ((_%object142359142364%_
                       (##unchecked-structure-ref
                        _%self142075142341%_
                        '1
                        '#f
                        'copy))
                      (_%method142360142365%_
                       (##unchecked-structure-ref
                        _%self142075142341%_
                        '3
                        '#f
                        'copy)))
                  (_%method142360142365%_ _%object142359142364%_)))))))
    (define __HashTable-delete!
      (lambda (_%self142368142611%_ _%key142612%_)
        (let ((_%self142368142614%_ _%self142368142611%_))
          (declare (not safe))
          (let ((_%object142621142626%_
                 (##unchecked-structure-ref
                  _%self142368142614%_
                  '1
                  '#f
                  'delete!))
                (_%method142622142627%_
                 (##unchecked-structure-ref
                  _%self142368142614%_
                  '4
                  '#f
                  'delete!)))
            (_%method142622142627%_ _%object142621142626%_ _%key142612%_)))))
    (define ::HashTable-delete!
      (lambda (_%self142369142629%_ _%key142630%_)
        (let* ((_%self142369142635%_
                (let ((_%$obj142632%_ _%self142369142629%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj142632%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj142632%_)))
                           '#t)
                      _%$obj142632%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj142632%_)))))
               (_%self142369142637%_ _%self142369142635%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object142645142650%_
                       (##unchecked-structure-ref
                        _%self142369142637%_
                        '1
                        '#f
                        'delete!))
                      (_%method142646142651%_
                       (##unchecked-structure-ref
                        _%self142369142637%_
                        '4
                        '#f
                        'delete!)))
                  (_%method142646142651%_
                   _%object142645142650%_
                   _%key142630%_)))
              (let ()
                (declare (not safe))
                (let ((_%object142652142657%_
                       (##unchecked-structure-ref
                        _%self142369142637%_
                        '1
                        '#f
                        'delete!))
                      (_%method142653142658%_
                       (##unchecked-structure-ref
                        _%self142369142637%_
                        '4
                        '#f
                        'delete!)))
                  (_%method142653142658%_
                   _%object142652142657%_
                   _%key142630%_)))))))
    (define __HashTable-for-each
      (lambda (_%self142661142904%_ _%proc142905%_)
        (let* ((_%self142661142907%_ _%self142661142904%_)
               (_%proc142914%_ _%proc142905%_))
          (declare (not safe))
          (let ((_%object142922142927%_
                 (##unchecked-structure-ref
                  _%self142661142907%_
                  '1
                  '#f
                  'for-each))
                (_%method142923142928%_
                 (##unchecked-structure-ref
                  _%self142661142907%_
                  '5
                  '#f
                  'for-each)))
            (_%method142923142928%_ _%object142922142927%_ _%proc142914%_)))))
    (define ::HashTable-for-each
      (lambda (_%self142662142930%_ _%proc142931%_)
        (let* ((_%self142662142936%_
                (let ((_%$obj142933%_ _%self142662142930%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj142933%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj142933%_)))
                           '#t)
                      _%$obj142933%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj142933%_)))))
               (_%self142662142938%_ _%self142662142936%_))
          (if (procedure? _%proc142931%_)
              (let ((_%proc142947%_ _%proc142931%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object142956142961%_
                             (##unchecked-structure-ref
                              _%self142662142938%_
                              '1
                              '#f
                              'for-each))
                            (_%method142957142962%_
                             (##unchecked-structure-ref
                              _%self142662142938%_
                              '5
                              '#f
                              'for-each)))
                        (_%method142957142962%_
                         _%object142956142961%_
                         _%proc142947%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object142963142968%_
                             (##unchecked-structure-ref
                              _%self142662142938%_
                              '1
                              '#f
                              'for-each))
                            (_%method142964142969%_
                             (##unchecked-structure-ref
                              _%self142662142938%_
                              '5
                              '#f
                              'for-each)))
                        (_%method142964142969%_
                         _%object142963142968%_
                         _%proc142947%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc142931%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self142972143215%_)
        (let ((_%self142972143217%_ _%self142972143215%_))
          (declare (not safe))
          (let ((_%object143224143229%_
                 (##unchecked-structure-ref
                  _%self142972143217%_
                  '1
                  '#f
                  'length))
                (_%method143225143230%_
                 (##unchecked-structure-ref
                  _%self142972143217%_
                  '6
                  '#f
                  'length)))
            (_%method143225143230%_ _%object143224143229%_)))))
    (define ::HashTable-length
      (lambda (_%self142973143232%_)
        (let* ((_%self142973143237%_
                (let ((_%$obj143234%_ _%self142973143232%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj143234%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj143234%_)))
                           '#t)
                      _%$obj143234%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj143234%_)))))
               (_%self142973143239%_ _%self142973143237%_))
          (if __DEBUG
              (let ((_%val143255%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object143247143252%_
                              (##unchecked-structure-ref
                               _%self142973143239%_
                               '1
                               '#f
                               'length))
                             (_%method143248143253%_
                              (##unchecked-structure-ref
                               _%self142973143239%_
                               '6
                               '#f
                               'length)))
                         (_%method143248143253%_ _%object143247143252%_)))))
                (if (fixnum? _%val143255%_)
                    _%val143255%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val143255%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object143257143262%_
                       (##unchecked-structure-ref
                        _%self142973143239%_
                        '1
                        '#f
                        'length))
                      (_%method143258143263%_
                       (##unchecked-structure-ref
                        _%self142973143239%_
                        '6
                        '#f
                        'length)))
                  (_%method143258143263%_ _%object143257143262%_)))))))
    (define __HashTable-ref
      (lambda (_%self143266143509%_ _%key143510%_ _%default143511%_)
        (let ((_%self143266143513%_ _%self143266143509%_))
          (declare (not safe))
          (let ((_%object143520143525%_
                 (##unchecked-structure-ref _%self143266143513%_ '1 '#f 'ref))
                (_%method143521143526%_
                 (##unchecked-structure-ref _%self143266143513%_ '7 '#f 'ref)))
            (_%method143521143526%_
             _%object143520143525%_
             _%key143510%_
             _%default143511%_)))))
    (define ::HashTable-ref
      (lambda (_%self143267143528%_ _%key143529%_ _%default143530%_)
        (let* ((_%self143267143535%_
                (let ((_%$obj143532%_ _%self143267143528%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj143532%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj143532%_)))
                           '#t)
                      _%$obj143532%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj143532%_)))))
               (_%self143267143537%_ _%self143267143535%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object143545143550%_
                       (##unchecked-structure-ref
                        _%self143267143537%_
                        '1
                        '#f
                        'ref))
                      (_%method143546143551%_
                       (##unchecked-structure-ref
                        _%self143267143537%_
                        '7
                        '#f
                        'ref)))
                  (_%method143546143551%_
                   _%object143545143550%_
                   _%key143529%_
                   _%default143530%_)))
              (let ()
                (declare (not safe))
                (let ((_%object143552143557%_
                       (##unchecked-structure-ref
                        _%self143267143537%_
                        '1
                        '#f
                        'ref))
                      (_%method143553143558%_
                       (##unchecked-structure-ref
                        _%self143267143537%_
                        '7
                        '#f
                        'ref)))
                  (_%method143553143558%_
                   _%object143552143557%_
                   _%key143529%_
                   _%default143530%_)))))))
    (define __HashTable-set!
      (lambda (_%self143561143804%_ _%key143805%_ _%value143806%_)
        (let ((_%self143561143808%_ _%self143561143804%_))
          (declare (not safe))
          (let ((_%object143815143820%_
                 (##unchecked-structure-ref _%self143561143808%_ '1 '#f 'set!))
                (_%method143816143821%_
                 (##unchecked-structure-ref
                  _%self143561143808%_
                  '8
                  '#f
                  'set!)))
            (_%method143816143821%_
             _%object143815143820%_
             _%key143805%_
             _%value143806%_)))))
    (define ::HashTable-set!
      (lambda (_%self143562143823%_ _%key143824%_ _%value143825%_)
        (let* ((_%self143562143830%_
                (let ((_%$obj143827%_ _%self143562143823%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj143827%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj143827%_)))
                           '#t)
                      _%$obj143827%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj143827%_)))))
               (_%self143562143832%_ _%self143562143830%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object143840143845%_
                       (##unchecked-structure-ref
                        _%self143562143832%_
                        '1
                        '#f
                        'set!))
                      (_%method143841143846%_
                       (##unchecked-structure-ref
                        _%self143562143832%_
                        '8
                        '#f
                        'set!)))
                  (_%method143841143846%_
                   _%object143840143845%_
                   _%key143824%_
                   _%value143825%_)))
              (let ()
                (declare (not safe))
                (let ((_%object143847143852%_
                       (##unchecked-structure-ref
                        _%self143562143832%_
                        '1
                        '#f
                        'set!))
                      (_%method143848143853%_
                       (##unchecked-structure-ref
                        _%self143562143832%_
                        '8
                        '#f
                        'set!)))
                  (_%method143848143853%_
                   _%object143847143852%_
                   _%key143824%_
                   _%value143825%_)))))))
    (define __HashTable-update!
      (lambda (_%self143856144099%_
               _%key144100%_
               _%proc144101%_
               _%default144102%_)
        (let* ((_%self143856144104%_ _%self143856144099%_)
               (_%proc144111%_ _%proc144101%_))
          (declare (not safe))
          (let ((_%object144119144124%_
                 (##unchecked-structure-ref
                  _%self143856144104%_
                  '1
                  '#f
                  'update!))
                (_%method144120144125%_
                 (##unchecked-structure-ref
                  _%self143856144104%_
                  '9
                  '#f
                  'update!)))
            (_%method144120144125%_
             _%object144119144124%_
             _%key144100%_
             _%proc144111%_
             _%default144102%_)))))
    (define ::HashTable-update!
      (lambda (_%self143857144127%_
               _%key144128%_
               _%proc144129%_
               _%default144130%_)
        (let* ((_%self143857144135%_
                (let ((_%$obj144132%_ _%self143857144127%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144132%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144132%_)))
                           '#t)
                      _%$obj144132%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj144132%_)))))
               (_%self143857144137%_ _%self143857144135%_))
          (if (procedure? _%proc144129%_)
              (let ((_%proc144146%_ _%proc144129%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object144155144160%_
                             (##unchecked-structure-ref
                              _%self143857144137%_
                              '1
                              '#f
                              'update!))
                            (_%method144156144161%_
                             (##unchecked-structure-ref
                              _%self143857144137%_
                              '9
                              '#f
                              'update!)))
                        (_%method144156144161%_
                         _%object144155144160%_
                         _%key144128%_
                         _%proc144146%_
                         _%default144130%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object144162144167%_
                             (##unchecked-structure-ref
                              _%self143857144137%_
                              '1
                              '#f
                              'update!))
                            (_%method144163144168%_
                             (##unchecked-structure-ref
                              _%self143857144137%_
                              '9
                              '#f
                              'update!)))
                        (_%method144163144168%_
                         _%object144162144167%_
                         _%key144128%_
                         _%proc144146%_
                         _%default144130%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc144129%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp158189 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp158189
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj158181
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj158181
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj158181))
    (define make-Locker
      (lambda (_%obj156790%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj156790%_))))
    (define try-Locker
      (lambda (_%obj156788%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj156788%_))))
    (define Locker?
      (lambda (_%obj156786%_)
        (let ((__tmp158190
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj156786%_ __tmp158190))))
    (define is-Locker?
      (lambda (_%obj156783%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj156783%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self144171144414%_)
        (let ((_%self144171144416%_ _%self144171144414%_))
          (declare (not safe))
          (let ((_%object144423144428%_
                 (##unchecked-structure-ref
                  _%self144171144416%_
                  '1
                  '#f
                  'read-lock!))
                (_%method144424144429%_
                 (##unchecked-structure-ref
                  _%self144171144416%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method144424144429%_ _%object144423144428%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self144172144431%_)
        (let* ((_%self144172144436%_
                (let ((_%$obj144433%_ _%self144172144431%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144433%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144433%_)))
                           '#t)
                      _%$obj144433%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj144433%_)))))
               (_%self144172144438%_ _%self144172144436%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object144446144451%_
                       (##unchecked-structure-ref
                        _%self144172144438%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method144447144452%_
                       (##unchecked-structure-ref
                        _%self144172144438%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method144447144452%_ _%object144446144451%_)))
              (let ()
                (declare (not safe))
                (let ((_%object144453144458%_
                       (##unchecked-structure-ref
                        _%self144172144438%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method144454144459%_
                       (##unchecked-structure-ref
                        _%self144172144438%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method144454144459%_ _%object144453144458%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self144462144705%_)
        (let ((_%self144462144707%_ _%self144462144705%_))
          (declare (not safe))
          (let ((_%object144714144719%_
                 (##unchecked-structure-ref
                  _%self144462144707%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method144715144720%_
                 (##unchecked-structure-ref
                  _%self144462144707%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method144715144720%_ _%object144714144719%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self144463144722%_)
        (let* ((_%self144463144727%_
                (let ((_%$obj144724%_ _%self144463144722%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144724%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144724%_)))
                           '#t)
                      _%$obj144724%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj144724%_)))))
               (_%self144463144729%_ _%self144463144727%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object144737144742%_
                       (##unchecked-structure-ref
                        _%self144463144729%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method144738144743%_
                       (##unchecked-structure-ref
                        _%self144463144729%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method144738144743%_ _%object144737144742%_)))
              (let ()
                (declare (not safe))
                (let ((_%object144744144749%_
                       (##unchecked-structure-ref
                        _%self144463144729%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method144745144750%_
                       (##unchecked-structure-ref
                        _%self144463144729%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method144745144750%_ _%object144744144749%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self144753144996%_)
        (let ((_%self144753144998%_ _%self144753144996%_))
          (declare (not safe))
          (let ((_%object145005145010%_
                 (##unchecked-structure-ref
                  _%self144753144998%_
                  '1
                  '#f
                  'write-lock!))
                (_%method145006145011%_
                 (##unchecked-structure-ref
                  _%self144753144998%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method145006145011%_ _%object145005145010%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self144754145013%_)
        (let* ((_%self144754145018%_
                (let ((_%$obj145015%_ _%self144754145013%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145015%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145015%_)))
                           '#t)
                      _%$obj145015%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj145015%_)))))
               (_%self144754145020%_ _%self144754145018%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object145028145033%_
                       (##unchecked-structure-ref
                        _%self144754145020%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method145029145034%_
                       (##unchecked-structure-ref
                        _%self144754145020%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method145029145034%_ _%object145028145033%_)))
              (let ()
                (declare (not safe))
                (let ((_%object145035145040%_
                       (##unchecked-structure-ref
                        _%self144754145020%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method145036145041%_
                       (##unchecked-structure-ref
                        _%self144754145020%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method145036145041%_ _%object145035145040%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self145044145287%_)
        (let ((_%self145044145289%_ _%self145044145287%_))
          (declare (not safe))
          (let ((_%object145296145301%_
                 (##unchecked-structure-ref
                  _%self145044145289%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method145297145302%_
                 (##unchecked-structure-ref
                  _%self145044145289%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method145297145302%_ _%object145296145301%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self145045145304%_)
        (let* ((_%self145045145309%_
                (let ((_%$obj145306%_ _%self145045145304%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145306%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145306%_)))
                           '#t)
                      _%$obj145306%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj145306%_)))))
               (_%self145045145311%_ _%self145045145309%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object145319145324%_
                       (##unchecked-structure-ref
                        _%self145045145311%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method145320145325%_
                       (##unchecked-structure-ref
                        _%self145045145311%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method145320145325%_ _%object145319145324%_)))
              (let ()
                (declare (not safe))
                (let ((_%object145326145331%_
                       (##unchecked-structure-ref
                        _%self145045145311%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method145327145332%_
                       (##unchecked-structure-ref
                        _%self145045145311%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method145327145332%_ _%object145326145331%_)))))))
    (let* ((_%klass156746%_ __table::t)
           (_%id156749%_ 'HashTable::ref)
           (_%proc156752%_ raw-table-ref)
           (_%rebind?156755%_ '#f)
           (_%id156760%_ _%id156749%_)
           (_%proc156773%_ _%proc156752%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156746%_
       _%id156760%_
       _%proc156773%_
       _%rebind?156755%_))
    (let* ((_%klass156709%_ __table::t)
           (_%id156712%_ 'HashTable::set!)
           (_%proc156715%_ raw-table-set!)
           (_%rebind?156718%_ '#f)
           (_%id156723%_ _%id156712%_)
           (_%proc156736%_ _%proc156715%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156709%_
       _%id156723%_
       _%proc156736%_
       _%rebind?156718%_))
    (let* ((_%klass156672%_ __table::t)
           (_%id156675%_ 'HashTable::update!)
           (_%proc156678%_ raw-table-update!)
           (_%rebind?156681%_ '#f)
           (_%id156686%_ _%id156675%_)
           (_%proc156699%_ _%proc156678%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156672%_
       _%id156686%_
       _%proc156699%_
       _%rebind?156681%_))
    (let* ((_%klass156635%_ __table::t)
           (_%id156638%_ 'HashTable::delete!)
           (_%proc156641%_ raw-table-delete!)
           (_%rebind?156644%_ '#f)
           (_%id156649%_ _%id156638%_)
           (_%proc156662%_ _%proc156641%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156635%_
       _%id156649%_
       _%proc156662%_
       _%rebind?156644%_))
    (let* ((_%klass156598%_ __table::t)
           (_%id156601%_ 'HashTable::for-each)
           (_%proc156604%_ raw-table-for-each)
           (_%rebind?156607%_ '#f)
           (_%id156612%_ _%id156601%_)
           (_%proc156625%_ _%proc156604%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156598%_
       _%id156612%_
       _%proc156625%_
       _%rebind?156607%_))
    (let* ((_%klass156561%_ __table::t)
           (_%id156564%_ 'HashTable::length)
           (_%proc156567%_ &raw-table-count)
           (_%rebind?156570%_ '#f)
           (_%id156575%_ _%id156564%_)
           (_%proc156588%_ _%proc156567%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156561%_
       _%id156575%_
       _%proc156588%_
       _%rebind?156570%_))
    (let* ((_%klass156524%_ __table::t)
           (_%id156527%_ 'HashTable::copy)
           (_%proc156530%_ raw-table-copy)
           (_%rebind?156533%_ '#f)
           (_%id156538%_ _%id156527%_)
           (_%proc156551%_ _%proc156530%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156524%_
       _%id156538%_
       _%proc156551%_
       _%rebind?156533%_))
    (let* ((_%klass156487%_ __table::t)
           (_%id156490%_ 'HashTable::clear!)
           (_%proc156493%_ raw-table-clear!)
           (_%rebind?156496%_ '#f)
           (_%id156501%_ _%id156490%_)
           (_%proc156514%_ _%proc156493%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156487%_
       _%id156501%_
       _%proc156514%_
       _%rebind?156496%_))
    (let* ((_%klass156450%_ __gc-table::t)
           (_%id156453%_ 'HashTable::ref)
           (_%proc156456%_ gc-table-ref)
           (_%rebind?156459%_ '#f)
           (_%id156464%_ _%id156453%_)
           (_%proc156477%_ _%proc156456%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156450%_
       _%id156464%_
       _%proc156477%_
       _%rebind?156459%_))
    (let* ((_%klass156413%_ __gc-table::t)
           (_%id156416%_ 'HashTable::set!)
           (_%proc156419%_ gc-table-set!)
           (_%rebind?156422%_ '#f)
           (_%id156427%_ _%id156416%_)
           (_%proc156440%_ _%proc156419%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156413%_
       _%id156427%_
       _%proc156440%_
       _%rebind?156422%_))
    (let* ((_%klass156376%_ __gc-table::t)
           (_%id156379%_ 'HashTable::update!)
           (_%proc156382%_ gc-table-update!)
           (_%rebind?156385%_ '#f)
           (_%id156390%_ _%id156379%_)
           (_%proc156403%_ _%proc156382%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156376%_
       _%id156390%_
       _%proc156403%_
       _%rebind?156385%_))
    (let* ((_%klass156339%_ __gc-table::t)
           (_%id156342%_ 'HashTable::delete!)
           (_%proc156345%_ gc-table-delete!)
           (_%rebind?156348%_ '#f)
           (_%id156353%_ _%id156342%_)
           (_%proc156366%_ _%proc156345%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156339%_
       _%id156353%_
       _%proc156366%_
       _%rebind?156348%_))
    (let* ((_%klass156302%_ __gc-table::t)
           (_%id156305%_ 'HashTable::for-each)
           (_%proc156308%_ gc-table-for-each)
           (_%rebind?156311%_ '#f)
           (_%id156316%_ _%id156305%_)
           (_%proc156329%_ _%proc156308%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156302%_
       _%id156316%_
       _%proc156329%_
       _%rebind?156311%_))
    (let* ((_%klass156265%_ __gc-table::t)
           (_%id156268%_ 'HashTable::length)
           (_%proc156271%_ gc-table-length)
           (_%rebind?156274%_ '#f)
           (_%id156279%_ _%id156268%_)
           (_%proc156292%_ _%proc156271%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156265%_
       _%id156279%_
       _%proc156292%_
       _%rebind?156274%_))
    (let* ((_%klass156228%_ __gc-table::t)
           (_%id156231%_ 'HashTable::copy)
           (_%proc156234%_ gc-table-copy)
           (_%rebind?156237%_ '#f)
           (_%id156242%_ _%id156231%_)
           (_%proc156255%_ _%proc156234%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156228%_
       _%id156242%_
       _%proc156255%_
       _%rebind?156237%_))
    (let* ((_%klass156191%_ __gc-table::t)
           (_%id156194%_ 'HashTable::clear!)
           (_%proc156197%_ gc-table-clear!)
           (_%rebind?156200%_ '#f)
           (_%id156205%_ _%id156194%_)
           (_%proc156218%_ _%proc156197%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156191%_
       _%id156205%_
       _%proc156218%_
       _%rebind?156200%_))
    (define gambit-table-update!
      (lambda (_%table156184%_
               _%key156185%_
               _%update156186%_
               _%default156187%_)
        (let ((_%result156189%_
               (table-ref _%table156184%_ _%key156185%_ _%default156187%_)))
          (table-set!
           _%table156184%_
           _%key156185%_
           (_%update156186%_ _%default156187%_)))))
    (define gambit-table-for-each
      (lambda (_%table156181%_ _%proc156182%_)
        (table-for-each _%proc156182%_ _%table156181%_)))
    (define gambit-table-clear!
      (lambda (_%table156179%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table156179%_ '0 '5 '#f '#f))))
    (let* ((_%klass156142%_ (macro-type-table))
           (_%id156145%_ 'HashTable::ref)
           (_%proc156148%_ table-ref)
           (_%rebind?156151%_ '#f)
           (_%id156156%_ _%id156145%_)
           (_%proc156169%_ _%proc156148%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156142%_
       _%id156156%_
       _%proc156169%_
       _%rebind?156151%_))
    (let* ((_%klass156105%_ (macro-type-table))
           (_%id156108%_ 'HashTable::set!)
           (_%proc156111%_ table-set!)
           (_%rebind?156114%_ '#f)
           (_%id156119%_ _%id156108%_)
           (_%proc156132%_ _%proc156111%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156105%_
       _%id156119%_
       _%proc156132%_
       _%rebind?156114%_))
    (let* ((_%klass156068%_ (macro-type-table))
           (_%id156071%_ 'HashTable::update!)
           (_%proc156074%_ gambit-table-update!)
           (_%rebind?156077%_ '#f)
           (_%id156082%_ _%id156071%_)
           (_%proc156095%_ _%proc156074%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156068%_
       _%id156082%_
       _%proc156095%_
       _%rebind?156077%_))
    (let* ((_%klass156031%_ (macro-type-table))
           (_%id156034%_ 'HashTable::delete!)
           (_%proc156037%_ table-set!)
           (_%rebind?156040%_ '#f)
           (_%id156045%_ _%id156034%_)
           (_%proc156058%_ _%proc156037%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156031%_
       _%id156045%_
       _%proc156058%_
       _%rebind?156040%_))
    (let* ((_%klass155994%_ (macro-type-table))
           (_%id155997%_ 'HashTable::for-each)
           (_%proc156000%_ gambit-table-for-each)
           (_%rebind?156003%_ '#f)
           (_%id156008%_ _%id155997%_)
           (_%proc156021%_ _%proc156000%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155994%_
       _%id156008%_
       _%proc156021%_
       _%rebind?156003%_))
    (let* ((_%klass155957%_ (macro-type-table))
           (_%id155960%_ 'HashTable::length)
           (_%proc155963%_ table-length)
           (_%rebind?155966%_ '#f)
           (_%id155971%_ _%id155960%_)
           (_%proc155984%_ _%proc155963%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155957%_
       _%id155971%_
       _%proc155984%_
       _%rebind?155966%_))
    (let* ((_%klass155920%_ (macro-type-table))
           (_%id155923%_ 'HashTable::copy)
           (_%proc155926%_ table-copy)
           (_%rebind?155929%_ '#f)
           (_%id155934%_ _%id155923%_)
           (_%proc155947%_ _%proc155926%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155920%_
       _%id155934%_
       _%proc155947%_
       _%rebind?155929%_))
    (let* ((_%klass155883%_ (macro-type-table))
           (_%id155886%_ 'HashTable::clear!)
           (_%proc155889%_ gambit-table-clear!)
           (_%rebind?155892%_ '#f)
           (_%id155897%_ _%id155886%_)
           (_%proc155910%_ _%proc155889%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155883%_
       _%id155897%_
       _%proc155910%_
       _%rebind?155892%_))
    (define hash-table::t
      (let* ((_%slots155846%_ '(table count free hash test seed))
             (_%slot-vector155848%_ (list->vector (cons '#f _%slots155846%_)))
             (_%slot-table155874%_
              (let ((_%slot-table155850%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp158193
                       (lambda (_%slot155852%_ _%field155853%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table155850%_
                            _%slot155852%_
                            _%field155853%_))
                         (let ((__tmp158194
                                (let ((_%sym155855%_ _%slot155852%_))
                                  (if (symbol? _%sym155855%_)
                                      (let ((_%sym155860%_ _%sym155855%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym155860%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym155855%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table155850%_
                            __tmp158194
                            _%field155853%_))))
                      (__tmp158191
                       (let ((__tmp158192
                              (let ()
                                (declare (not safe))
                                (##length _%slots155846%_))))
                         (declare (not safe))
                         (##iota __tmp158192 '1))))
                  (declare (not safe))
                  (##for-each __tmp158193 _%slots155846%_ __tmp158191))
                _%slot-table155850%_))
             (_%flags155876%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields155878%_ '#())
             (_%properties155880%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots155846%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp158195 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags155876%_
         __table::t
         _%fields155878%_
         __tmp158195
         _%slot-vector155848%_
         _%slot-table155874%_
         _%properties155880%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots155809%_ '(gcht immediate))
             (_%slot-vector155811%_ (list->vector (cons '#f _%slots155809%_)))
             (_%slot-table155837%_
              (let ((_%slot-table155813%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp158198
                       (lambda (_%slot155815%_ _%field155816%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table155813%_
                            _%slot155815%_
                            _%field155816%_))
                         (let ((__tmp158199
                                (let ((_%sym155818%_ _%slot155815%_))
                                  (if (symbol? _%sym155818%_)
                                      (let ((_%sym155823%_ _%sym155818%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym155823%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym155818%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table155813%_
                            __tmp158199
                            _%field155816%_))))
                      (__tmp158196
                       (let ((__tmp158197
                              (let ()
                                (declare (not safe))
                                (##length _%slots155809%_))))
                         (declare (not safe))
                         (##iota __tmp158197 '1))))
                  (declare (not safe))
                  (##for-each __tmp158198 _%slots155809%_ __tmp158196))
                _%slot-table155813%_))
             (_%flags155839%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields155841%_ '#())
             (_%properties155843%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots155809%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp158200 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags155839%_
         __gc-table::t
         _%fields155841%_
         __tmp158200
         _%slot-vector155811%_
         _%slot-table155837%_
         _%properties155843%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp158202 (list))
            (__tmp158201
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp158202
         '(table lock)
         __tmp158201
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args155806%_
        (apply make-instance locked-hash-table::t _%$args155806%_)))
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
      (let ((__tmp158204 (list))
            (__tmp158203
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp158204
         '(table key-check)
         __tmp158203
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args155803%_
        (apply make-instance checked-hash-table::t _%$args155803%_)))
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
      (let ((__tmp158206 (list hash-table::t))
            (__tmp158205 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp158206
         '()
         __tmp158205
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args155800%_
        (apply make-instance eq-hash-table::t _%$args155800%_)))
    (define eqv-hash-table::t
      (let ((__tmp158208 (list hash-table::t))
            (__tmp158207 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp158208
         '()
         __tmp158207
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args155797%_
        (apply make-instance eqv-hash-table::t _%$args155797%_)))
    (define symbol-hash-table::t
      (let ((__tmp158210 (list hash-table::t))
            (__tmp158209 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp158210
         '()
         __tmp158209
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args155794%_
        (apply make-instance symbol-hash-table::t _%$args155794%_)))
    (define string-hash-table::t
      (let ((__tmp158212 (list hash-table::t))
            (__tmp158211 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp158212
         '()
         __tmp158211
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args155791%_
        (apply make-instance string-hash-table::t _%$args155791%_)))
    (define immediate-hash-table::t
      (let ((__tmp158214 (list hash-table::t))
            (__tmp158213 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp158214
         '()
         __tmp158213
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args155788%_
        (apply make-instance immediate-hash-table::t _%$args155788%_)))
    (let* ((_%klass155751%_ hash-table::t)
           (_%id155754%_ 'HashTable::ref)
           (_%proc155757%_ raw-table-ref)
           (_%rebind?155760%_ '#f)
           (_%id155765%_ _%id155754%_)
           (_%proc155778%_ _%proc155757%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155751%_
       _%id155765%_
       _%proc155778%_
       _%rebind?155760%_))
    (let* ((_%klass155714%_ hash-table::t)
           (_%id155717%_ 'HashTable::set!)
           (_%proc155720%_ raw-table-set!)
           (_%rebind?155723%_ '#f)
           (_%id155728%_ _%id155717%_)
           (_%proc155741%_ _%proc155720%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155714%_
       _%id155728%_
       _%proc155741%_
       _%rebind?155723%_))
    (let* ((_%klass155677%_ hash-table::t)
           (_%id155680%_ 'HashTable::update!)
           (_%proc155683%_ raw-table-update!)
           (_%rebind?155686%_ '#f)
           (_%id155691%_ _%id155680%_)
           (_%proc155704%_ _%proc155683%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155677%_
       _%id155691%_
       _%proc155704%_
       _%rebind?155686%_))
    (let* ((_%klass155640%_ hash-table::t)
           (_%id155643%_ 'HashTable::delete!)
           (_%proc155646%_ raw-table-delete!)
           (_%rebind?155649%_ '#f)
           (_%id155654%_ _%id155643%_)
           (_%proc155667%_ _%proc155646%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155640%_
       _%id155654%_
       _%proc155667%_
       _%rebind?155649%_))
    (let* ((_%klass155603%_ hash-table::t)
           (_%id155606%_ 'HashTable::for-each)
           (_%proc155609%_ raw-table-for-each)
           (_%rebind?155612%_ '#f)
           (_%id155617%_ _%id155606%_)
           (_%proc155630%_ _%proc155609%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155603%_
       _%id155617%_
       _%proc155630%_
       _%rebind?155612%_))
    (let* ((_%klass155566%_ hash-table::t)
           (_%id155569%_ 'HashTable::length)
           (_%proc155572%_ &raw-table-count)
           (_%rebind?155575%_ '#f)
           (_%id155580%_ _%id155569%_)
           (_%proc155593%_ _%proc155572%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155566%_
       _%id155580%_
       _%proc155593%_
       _%rebind?155575%_))
    (let* ((_%klass155529%_ hash-table::t)
           (_%id155532%_ 'HashTable::copy)
           (_%proc155535%_ raw-table-copy)
           (_%rebind?155538%_ '#f)
           (_%id155543%_ _%id155532%_)
           (_%proc155556%_ _%proc155535%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155529%_
       _%id155543%_
       _%proc155556%_
       _%rebind?155538%_))
    (let* ((_%klass155492%_ hash-table::t)
           (_%id155495%_ 'HashTable::clear!)
           (_%proc155498%_ raw-table-clear!)
           (_%rebind?155501%_ '#f)
           (_%id155506%_ _%id155495%_)
           (_%proc155519%_ _%proc155498%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155492%_
       _%id155506%_
       _%proc155519%_
       _%rebind?155501%_))
    (let* ((_%klass155455%_ eq-hash-table::t)
           (_%id155458%_ 'HashTable::ref)
           (_%proc155461%_ eq-table-ref)
           (_%rebind?155464%_ '#f)
           (_%id155469%_ _%id155458%_)
           (_%proc155482%_ _%proc155461%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155455%_
       _%id155469%_
       _%proc155482%_
       _%rebind?155464%_))
    (let* ((_%klass155418%_ eq-hash-table::t)
           (_%id155421%_ 'HashTable::set!)
           (_%proc155424%_ eq-table-set!)
           (_%rebind?155427%_ '#f)
           (_%id155432%_ _%id155421%_)
           (_%proc155445%_ _%proc155424%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155418%_
       _%id155432%_
       _%proc155445%_
       _%rebind?155427%_))
    (let* ((_%klass155381%_ eq-hash-table::t)
           (_%id155384%_ 'HashTable::update!)
           (_%proc155387%_ eq-table-update!)
           (_%rebind?155390%_ '#f)
           (_%id155395%_ _%id155384%_)
           (_%proc155408%_ _%proc155387%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155381%_
       _%id155395%_
       _%proc155408%_
       _%rebind?155390%_))
    (let* ((_%klass155344%_ eq-hash-table::t)
           (_%id155347%_ 'HashTable::delete!)
           (_%proc155350%_ eq-table-delete!)
           (_%rebind?155353%_ '#f)
           (_%id155358%_ _%id155347%_)
           (_%proc155371%_ _%proc155350%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155344%_
       _%id155358%_
       _%proc155371%_
       _%rebind?155353%_))
    (let* ((_%klass155307%_ eqv-hash-table::t)
           (_%id155310%_ 'HashTable::ref)
           (_%proc155313%_ eqv-table-ref)
           (_%rebind?155316%_ '#f)
           (_%id155321%_ _%id155310%_)
           (_%proc155334%_ _%proc155313%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155307%_
       _%id155321%_
       _%proc155334%_
       _%rebind?155316%_))
    (let* ((_%klass155270%_ eqv-hash-table::t)
           (_%id155273%_ 'HashTable::set!)
           (_%proc155276%_ eqv-table-set!)
           (_%rebind?155279%_ '#f)
           (_%id155284%_ _%id155273%_)
           (_%proc155297%_ _%proc155276%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155270%_
       _%id155284%_
       _%proc155297%_
       _%rebind?155279%_))
    (let* ((_%klass155233%_ eqv-hash-table::t)
           (_%id155236%_ 'HashTable::update!)
           (_%proc155239%_ eqv-table-update!)
           (_%rebind?155242%_ '#f)
           (_%id155247%_ _%id155236%_)
           (_%proc155260%_ _%proc155239%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155233%_
       _%id155247%_
       _%proc155260%_
       _%rebind?155242%_))
    (let* ((_%klass155196%_ eqv-hash-table::t)
           (_%id155199%_ 'HashTable::delete!)
           (_%proc155202%_ eqv-table-delete!)
           (_%rebind?155205%_ '#f)
           (_%id155210%_ _%id155199%_)
           (_%proc155223%_ _%proc155202%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155196%_
       _%id155210%_
       _%proc155223%_
       _%rebind?155205%_))
    (let* ((_%klass155159%_ symbol-hash-table::t)
           (_%id155162%_ 'HashTable::ref)
           (_%proc155165%_ symbolic-table-ref)
           (_%rebind?155168%_ '#f)
           (_%id155173%_ _%id155162%_)
           (_%proc155186%_ _%proc155165%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155159%_
       _%id155173%_
       _%proc155186%_
       _%rebind?155168%_))
    (let* ((_%klass155122%_ symbol-hash-table::t)
           (_%id155125%_ 'HashTable::set!)
           (_%proc155128%_ symbolic-table-set!)
           (_%rebind?155131%_ '#f)
           (_%id155136%_ _%id155125%_)
           (_%proc155149%_ _%proc155128%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155122%_
       _%id155136%_
       _%proc155149%_
       _%rebind?155131%_))
    (let* ((_%klass155085%_ symbol-hash-table::t)
           (_%id155088%_ 'HashTable::update!)
           (_%proc155091%_ symbolic-table-update!)
           (_%rebind?155094%_ '#f)
           (_%id155099%_ _%id155088%_)
           (_%proc155112%_ _%proc155091%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155085%_
       _%id155099%_
       _%proc155112%_
       _%rebind?155094%_))
    (let* ((_%klass155048%_ symbol-hash-table::t)
           (_%id155051%_ 'HashTable::delete!)
           (_%proc155054%_ symbolic-table-delete!)
           (_%rebind?155057%_ '#f)
           (_%id155062%_ _%id155051%_)
           (_%proc155075%_ _%proc155054%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155048%_
       _%id155062%_
       _%proc155075%_
       _%rebind?155057%_))
    (let* ((_%klass155011%_ string-hash-table::t)
           (_%id155014%_ 'HashTable::ref)
           (_%proc155017%_ string-table-ref)
           (_%rebind?155020%_ '#f)
           (_%id155025%_ _%id155014%_)
           (_%proc155038%_ _%proc155017%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155011%_
       _%id155025%_
       _%proc155038%_
       _%rebind?155020%_))
    (let* ((_%klass154974%_ string-hash-table::t)
           (_%id154977%_ 'HashTable::set!)
           (_%proc154980%_ string-table-set!)
           (_%rebind?154983%_ '#f)
           (_%id154988%_ _%id154977%_)
           (_%proc155001%_ _%proc154980%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154974%_
       _%id154988%_
       _%proc155001%_
       _%rebind?154983%_))
    (let* ((_%klass154937%_ string-hash-table::t)
           (_%id154940%_ 'HashTable::update!)
           (_%proc154943%_ string-table-update!)
           (_%rebind?154946%_ '#f)
           (_%id154951%_ _%id154940%_)
           (_%proc154964%_ _%proc154943%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154937%_
       _%id154951%_
       _%proc154964%_
       _%rebind?154946%_))
    (let* ((_%klass154900%_ string-hash-table::t)
           (_%id154903%_ 'HashTable::delete!)
           (_%proc154906%_ string-table-delete!)
           (_%rebind?154909%_ '#f)
           (_%id154914%_ _%id154903%_)
           (_%proc154927%_ _%proc154906%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154900%_
       _%id154914%_
       _%proc154927%_
       _%rebind?154909%_))
    (let* ((_%klass154863%_ immediate-hash-table::t)
           (_%id154866%_ 'HashTable::ref)
           (_%proc154869%_ immediate-table-ref)
           (_%rebind?154872%_ '#f)
           (_%id154877%_ _%id154866%_)
           (_%proc154890%_ _%proc154869%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154863%_
       _%id154877%_
       _%proc154890%_
       _%rebind?154872%_))
    (let* ((_%klass154826%_ immediate-hash-table::t)
           (_%id154829%_ 'HashTable::set!)
           (_%proc154832%_ immediate-table-set!)
           (_%rebind?154835%_ '#f)
           (_%id154840%_ _%id154829%_)
           (_%proc154853%_ _%proc154832%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154826%_
       _%id154840%_
       _%proc154853%_
       _%rebind?154835%_))
    (let* ((_%klass154789%_ immediate-hash-table::t)
           (_%id154792%_ 'HashTable::update!)
           (_%proc154795%_ immediate-table-update!)
           (_%rebind?154798%_ '#f)
           (_%id154803%_ _%id154792%_)
           (_%proc154816%_ _%proc154795%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154789%_
       _%id154803%_
       _%proc154816%_
       _%rebind?154798%_))
    (let* ((_%klass154752%_ immediate-hash-table::t)
           (_%id154755%_ 'HashTable::delete!)
           (_%proc154758%_ immediate-table-delete!)
           (_%rebind?154761%_ '#f)
           (_%id154766%_ _%id154755%_)
           (_%proc154779%_ _%proc154758%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154752%_
       _%id154766%_
       _%proc154779%_
       _%rebind?154761%_))
    (let* ((_%klass154715%_ gc-hash-table::t)
           (_%id154718%_ 'HashTable::ref)
           (_%proc154721%_ gc-table-ref)
           (_%rebind?154724%_ '#f)
           (_%id154729%_ _%id154718%_)
           (_%proc154742%_ _%proc154721%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154715%_
       _%id154729%_
       _%proc154742%_
       _%rebind?154724%_))
    (let* ((_%klass154678%_ gc-hash-table::t)
           (_%id154681%_ 'HashTable::set!)
           (_%proc154684%_ gc-table-set!)
           (_%rebind?154687%_ '#f)
           (_%id154692%_ _%id154681%_)
           (_%proc154705%_ _%proc154684%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154678%_
       _%id154692%_
       _%proc154705%_
       _%rebind?154687%_))
    (let* ((_%klass154641%_ gc-hash-table::t)
           (_%id154644%_ 'HashTable::update!)
           (_%proc154647%_ gc-table-update!)
           (_%rebind?154650%_ '#f)
           (_%id154655%_ _%id154644%_)
           (_%proc154668%_ _%proc154647%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154641%_
       _%id154655%_
       _%proc154668%_
       _%rebind?154650%_))
    (let* ((_%klass154604%_ gc-hash-table::t)
           (_%id154607%_ 'HashTable::delete!)
           (_%proc154610%_ gc-table-delete!)
           (_%rebind?154613%_ '#f)
           (_%id154618%_ _%id154607%_)
           (_%proc154631%_ _%proc154610%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154604%_
       _%id154618%_
       _%proc154631%_
       _%rebind?154613%_))
    (let* ((_%klass154567%_ gc-hash-table::t)
           (_%id154570%_ 'HashTable::for-each)
           (_%proc154573%_ gc-table-for-each)
           (_%rebind?154576%_ '#f)
           (_%id154581%_ _%id154570%_)
           (_%proc154594%_ _%proc154573%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154567%_
       _%id154581%_
       _%proc154594%_
       _%rebind?154576%_))
    (let* ((_%klass154530%_ gc-hash-table::t)
           (_%id154533%_ 'HashTable::length)
           (_%proc154536%_ gc-table-length)
           (_%rebind?154539%_ '#f)
           (_%id154544%_ _%id154533%_)
           (_%proc154557%_ _%proc154536%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154530%_
       _%id154544%_
       _%proc154557%_
       _%rebind?154539%_))
    (let* ((_%klass154493%_ gc-hash-table::t)
           (_%id154496%_ 'HashTable::copy)
           (_%proc154499%_ gc-table-copy)
           (_%rebind?154502%_ '#f)
           (_%id154507%_ _%id154496%_)
           (_%proc154520%_ _%proc154499%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154493%_
       _%id154507%_
       _%proc154520%_
       _%rebind?154502%_))
    (let* ((_%klass154456%_ gc-hash-table::t)
           (_%id154459%_ 'HashTable::clear!)
           (_%proc154462%_ gc-table-clear!)
           (_%rebind?154465%_ '#f)
           (_%id154470%_ _%id154459%_)
           (_%proc154483%_ _%proc154462%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154456%_
       _%id154470%_
       _%proc154483%_
       _%rebind?154465%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref145717%_
      (lambda (_%self154377%_ _%key154379%_ _%default154380%_)
        (let* ((_%self154383%_ _%self154377%_)
               (_%key154392%_ _%key154379%_)
               (_%default154400%_ _%default154380%_))
          (let ((_%h154409%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154383%_ '1 '#f '#f)))
                (_%l154411%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154383%_ '2 '#f '#f))))
            (let ((__tmp158217
                   (lambda ()
                     (let ((_%self144169154415%_ _%l154411%_))
                       (declare (not safe))
                       (let ((_%object154418154423%_
                              (##unchecked-structure-ref
                               _%self144169154415%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method154419154424%_
                              (##unchecked-structure-ref
                               _%self144169154415%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method154419154424%_ _%object154418154423%_)))))
                  (__tmp158216
                   (lambda ()
                     (let* ((_%self143264154427%_ _%h154409%_)
                            (_%key154430%_ _%key154392%_)
                            (_%default154433%_ _%default154400%_))
                       (declare (not safe))
                       (let ((_%object154436154441%_
                              (##unchecked-structure-ref
                               _%self143264154427%_
                               '1
                               '#f
                               'ref))
                             (_%method154437154442%_
                              (##unchecked-structure-ref
                               _%self143264154427%_
                               '7
                               '#f
                               'ref)))
                         (_%method154437154442%_
                          _%object154436154441%_
                          _%key154430%_
                          _%default154433%_)))))
                  (__tmp158215
                   (lambda ()
                     (let ((_%self144460154445%_ _%l154411%_))
                       (declare (not safe))
                       (let ((_%object154448154453%_
                              (##unchecked-structure-ref
                               _%self144460154445%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method154449154454%_
                              (##unchecked-structure-ref
                               _%self144460154445%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method154449154454%_ _%object154448154453%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp158217 __tmp158216 __tmp158215))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref145717%_
       '#f))
    (define _%locked-hash-table::HashTable::set!145719%_
      (lambda (_%self154175%_ _%key154177%_ _%value154178%_)
        (let* ((_%self154181%_ _%self154175%_)
               (_%key154190%_ _%key154177%_)
               (_%value154198%_ _%value154178%_))
          (let ((_%h154207%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154181%_ '1 '#f '#f)))
                (_%l154209%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154181%_ '2 '#f '#f))))
            (let ((__tmp158220
                   (lambda ()
                     (let ((_%self144751154213%_ _%l154209%_))
                       (declare (not safe))
                       (let ((_%object154216154221%_
                              (##unchecked-structure-ref
                               _%self144751154213%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method154217154222%_
                              (##unchecked-structure-ref
                               _%self144751154213%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method154217154222%_ _%object154216154221%_)))))
                  (__tmp158219
                   (lambda ()
                     (let* ((_%self143559154225%_ _%h154207%_)
                            (_%key154228%_ _%key154190%_)
                            (_%value154231%_ _%value154198%_))
                       (declare (not safe))
                       (let ((_%object154234154239%_
                              (##unchecked-structure-ref
                               _%self143559154225%_
                               '1
                               '#f
                               'set!))
                             (_%method154235154240%_
                              (##unchecked-structure-ref
                               _%self143559154225%_
                               '8
                               '#f
                               'set!)))
                         (_%method154235154240%_
                          _%object154234154239%_
                          _%key154228%_
                          _%value154231%_)))))
                  (__tmp158218
                   (lambda ()
                     (let ((_%self145042154243%_ _%l154209%_))
                       (declare (not safe))
                       (let ((_%object154246154251%_
                              (##unchecked-structure-ref
                               _%self145042154243%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method154247154252%_
                              (##unchecked-structure-ref
                               _%self145042154243%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method154247154252%_ _%object154246154251%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp158220 __tmp158219 __tmp158218))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!145719%_
       '#f))
    (define _%locked-hash-table::HashTable::update!145721%_
      (lambda (_%self153961%_ _%key153963%_ _%update153964%_ _%default153965%_)
        (let* ((_%self153968%_ _%self153961%_)
               (_%key153977%_ _%key153963%_)
               (_%update153985%_ _%update153964%_)
               (_%default153993%_ _%default153965%_))
          (let ((_%h154002%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153968%_ '1 '#f '#f)))
                (_%l154004%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153968%_ '2 '#f '#f))))
            (let ((__tmp158223
                   (lambda ()
                     (let ((_%self144751154008%_ _%l154004%_))
                       (declare (not safe))
                       (let ((_%object154011154016%_
                              (##unchecked-structure-ref
                               _%self144751154008%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method154012154017%_
                              (##unchecked-structure-ref
                               _%self144751154008%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method154012154017%_ _%object154011154016%_)))))
                  (__tmp158222
                   (lambda ()
                     (let* ((_%self143854154020%_ _%h154002%_)
                            (_%key154023%_ _%key153977%_)
                            (_%proc154026%_ _%update153985%_)
                            (_%default154029%_ _%default153993%_))
                       (declare (not safe))
                       (let ((_%object154032154037%_
                              (##unchecked-structure-ref
                               _%self143854154020%_
                               '1
                               '#f
                               'update!))
                             (_%method154033154038%_
                              (##unchecked-structure-ref
                               _%self143854154020%_
                               '9
                               '#f
                               'update!)))
                         (_%method154033154038%_
                          _%object154032154037%_
                          _%key154023%_
                          _%proc154026%_
                          _%default154029%_)))))
                  (__tmp158221
                   (lambda ()
                     (let ((_%self145042154041%_ _%l154004%_))
                       (declare (not safe))
                       (let ((_%object154044154049%_
                              (##unchecked-structure-ref
                               _%self145042154041%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method154045154050%_
                              (##unchecked-structure-ref
                               _%self145042154041%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method154045154050%_ _%object154044154049%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp158223 __tmp158222 __tmp158221))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!145721%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!145723%_
      (lambda (_%self153771%_ _%key153773%_)
        (let* ((_%self153776%_ _%self153771%_) (_%key153785%_ _%key153773%_))
          (let ((_%h153794%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153776%_ '1 '#f '#f)))
                (_%l153796%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153776%_ '2 '#f '#f))))
            (let ((__tmp158226
                   (lambda ()
                     (let ((_%self144751153800%_ _%l153796%_))
                       (declare (not safe))
                       (let ((_%object153803153808%_
                              (##unchecked-structure-ref
                               _%self144751153800%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method153804153809%_
                              (##unchecked-structure-ref
                               _%self144751153800%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method153804153809%_ _%object153803153808%_)))))
                  (__tmp158225
                   (lambda ()
                     (let* ((_%self142366153812%_ _%h153794%_)
                            (_%key153815%_ _%key153785%_))
                       (declare (not safe))
                       (let ((_%object153818153823%_
                              (##unchecked-structure-ref
                               _%self142366153812%_
                               '1
                               '#f
                               'delete!))
                             (_%method153819153824%_
                              (##unchecked-structure-ref
                               _%self142366153812%_
                               '4
                               '#f
                               'delete!)))
                         (_%method153819153824%_
                          _%object153818153823%_
                          _%key153815%_)))))
                  (__tmp158224
                   (lambda ()
                     (let ((_%self145042153827%_ _%l153796%_))
                       (declare (not safe))
                       (let ((_%object153830153835%_
                              (##unchecked-structure-ref
                               _%self145042153827%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method153831153836%_
                              (##unchecked-structure-ref
                               _%self145042153827%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method153831153836%_ _%object153830153835%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp158226 __tmp158225 __tmp158224))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!145723%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each145725%_
      (lambda (_%self153581%_ _%proc153583%_)
        (let* ((_%self153586%_ _%self153581%_) (_%proc153595%_ _%proc153583%_))
          (let ((_%h153604%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153586%_ '1 '#f '#f)))
                (_%l153606%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153586%_ '2 '#f '#f))))
            (let ((__tmp158229
                   (lambda ()
                     (let ((_%self144169153610%_ _%l153606%_))
                       (declare (not safe))
                       (let ((_%object153613153618%_
                              (##unchecked-structure-ref
                               _%self144169153610%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method153614153619%_
                              (##unchecked-structure-ref
                               _%self144169153610%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method153614153619%_ _%object153613153618%_)))))
                  (__tmp158228
                   (lambda ()
                     (let* ((_%self142659153622%_ _%h153604%_)
                            (_%proc153625%_ _%proc153595%_))
                       (declare (not safe))
                       (let ((_%object153628153633%_
                              (##unchecked-structure-ref
                               _%self142659153622%_
                               '1
                               '#f
                               'for-each))
                             (_%method153629153634%_
                              (##unchecked-structure-ref
                               _%self142659153622%_
                               '5
                               '#f
                               'for-each)))
                         (_%method153629153634%_
                          _%object153628153633%_
                          _%proc153625%_)))))
                  (__tmp158227
                   (lambda ()
                     (let ((_%self144460153637%_ _%l153606%_))
                       (declare (not safe))
                       (let ((_%object153640153645%_
                              (##unchecked-structure-ref
                               _%self144460153637%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method153641153646%_
                              (##unchecked-structure-ref
                               _%self144460153637%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method153641153646%_ _%object153640153645%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp158229 __tmp158228 __tmp158227))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each145725%_
       '#f))
    (define _%locked-hash-table::HashTable::length145727%_
      (lambda (_%self153396%_)
        (let ((_%self153400%_ _%self153396%_))
          (let ((_%h153410%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153400%_ '1 '#f '#f)))
                (_%l153412%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153400%_ '2 '#f '#f))))
            ((lambda (_%g153414153416%_)
               (let ((_%val153419%_ _%g153414153416%_))
                 (if (fixnum? _%val153419%_)
                     _%val153419%_
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/hash
                        'contract:
                        '(fixnum? val)
                        'value:
                        _%val153419%_)
                       '#!void))))
             (let ((__tmp158232
                    (lambda ()
                      (let ((_%self144169153423%_ _%l153412%_))
                        (declare (not safe))
                        (let ((_%object153426153431%_
                               (##unchecked-structure-ref
                                _%self144169153423%_
                                '1
                                '#f
                                'read-lock!))
                              (_%method153427153432%_
                               (##unchecked-structure-ref
                                _%self144169153423%_
                                '2
                                '#f
                                'read-lock!)))
                          (_%method153427153432%_ _%object153426153431%_)))))
                   (__tmp158231
                    (lambda ()
                      (let ((_%self142970153435%_ _%h153410%_))
                        (declare (not safe))
                        (let ((_%object153438153443%_
                               (##unchecked-structure-ref
                                _%self142970153435%_
                                '1
                                '#f
                                'length))
                              (_%method153439153444%_
                               (##unchecked-structure-ref
                                _%self142970153435%_
                                '6
                                '#f
                                'length)))
                          (_%method153439153444%_ _%object153438153443%_)))))
                   (__tmp158230
                    (lambda ()
                      (let ((_%self144460153447%_ _%l153412%_))
                        (declare (not safe))
                        (let ((_%object153450153455%_
                               (##unchecked-structure-ref
                                _%self144460153447%_
                                '1
                                '#f
                                'read-unlock!))
                              (_%method153451153456%_
                               (##unchecked-structure-ref
                                _%self144460153447%_
                                '3
                                '#f
                                'read-unlock!)))
                          (_%method153451153456%_ _%object153450153455%_))))))
               (declare (not safe))
               (##dynamic-wind __tmp158232 __tmp158231 __tmp158230)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length145727%_
       '#f))
    (define _%locked-hash-table::HashTable::copy145729%_
      (lambda (_%self153215%_)
        (let ((_%self153219%_ _%self153215%_))
          (let ((_%h153229%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153219%_ '1 '#f '#f)))
                (_%l153231%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153219%_ '2 '#f '#f))))
            (let ((_%$obj153270%_
                   (let ((__tmp158235
                          (lambda ()
                            (let ((_%self144169153235%_ _%l153231%_))
                              (declare (not safe))
                              (let ((_%object153238153243%_
                                     (##unchecked-structure-ref
                                      _%self144169153235%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method153239153244%_
                                     (##unchecked-structure-ref
                                      _%self144169153235%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method153239153244%_
                                 _%object153238153243%_)))))
                         (__tmp158234
                          (lambda ()
                            (let ((_%self142072153247%_ _%h153229%_))
                              (declare (not safe))
                              (let ((_%object153250153255%_
                                     (##unchecked-structure-ref
                                      _%self142072153247%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method153251153256%_
                                     (##unchecked-structure-ref
                                      _%self142072153247%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method153251153256%_
                                 _%object153250153255%_)))))
                         (__tmp158233
                          (lambda ()
                            (let ((_%self144460153259%_ _%l153231%_))
                              (declare (not safe))
                              (let ((_%object153262153267%_
                                     (##unchecked-structure-ref
                                      _%self144460153259%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method153263153268%_
                                     (##unchecked-structure-ref
                                      _%self144460153259%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method153263153268%_
                                 _%object153262153267%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp158235 __tmp158234 __tmp158233))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj153270%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj153270%_)))
                       '#t)
                  _%$obj153270%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj153270%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy145729%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!145731%_
      (lambda (_%self153037%_)
        (let ((_%self153041%_ _%self153037%_))
          (let ((_%h153051%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153041%_ '1 '#f '#f)))
                (_%l153053%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153041%_ '2 '#f '#f))))
            (let ((__tmp158238
                   (lambda ()
                     (let ((_%self144751153057%_ _%l153053%_))
                       (declare (not safe))
                       (let ((_%object153060153065%_
                              (##unchecked-structure-ref
                               _%self144751153057%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method153061153066%_
                              (##unchecked-structure-ref
                               _%self144751153057%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method153061153066%_ _%object153060153065%_)))))
                  (__tmp158237
                   (lambda ()
                     (let ((_%self141780153069%_ _%h153051%_))
                       (declare (not safe))
                       (let ((_%object153072153077%_
                              (##unchecked-structure-ref
                               _%self141780153069%_
                               '1
                               '#f
                               'clear!))
                             (_%method153073153078%_
                              (##unchecked-structure-ref
                               _%self141780153069%_
                               '2
                               '#f
                               'clear!)))
                         (_%method153073153078%_ _%object153072153077%_)))))
                  (__tmp158236
                   (lambda ()
                     (let ((_%self145042153081%_ _%l153053%_))
                       (declare (not safe))
                       (let ((_%object153084153089%_
                              (##unchecked-structure-ref
                               _%self145042153081%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method153085153090%_
                              (##unchecked-structure-ref
                               _%self145042153081%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method153085153090%_ _%object153084153089%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp158238 __tmp158237 __tmp158236))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!145731%_
       '#f))
    (let* ((_%klass152877%_ (macro-type-mutex))
           (_%id152880%_ 'Locker::read-lock!)
           (_%proc152883%_ mutex-lock!)
           (_%rebind?152886%_ '#f)
           (_%id152891%_ _%id152880%_)
           (_%proc152904%_ _%proc152883%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass152877%_
       _%id152891%_
       _%proc152904%_
       _%rebind?152886%_))
    (let* ((_%klass152840%_ (macro-type-mutex))
           (_%id152843%_ 'Locker::read-unlock!)
           (_%proc152846%_ mutex-unlock!)
           (_%rebind?152849%_ '#f)
           (_%id152854%_ _%id152843%_)
           (_%proc152867%_ _%proc152846%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass152840%_
       _%id152854%_
       _%proc152867%_
       _%rebind?152849%_))
    (let* ((_%klass152803%_ (macro-type-mutex))
           (_%id152806%_ 'Locker::write-lock!)
           (_%proc152809%_ mutex-lock!)
           (_%rebind?152812%_ '#f)
           (_%id152817%_ _%id152806%_)
           (_%proc152830%_ _%proc152809%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass152803%_
       _%id152817%_
       _%proc152830%_
       _%rebind?152812%_))
    (let* ((_%klass152766%_ (macro-type-mutex))
           (_%id152769%_ 'Locker::write-unlock!)
           (_%proc152772%_ mutex-unlock!)
           (_%rebind?152775%_ '#f)
           (_%id152780%_ _%id152769%_)
           (_%proc152793%_ _%proc152772%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass152766%_
       _%id152780%_
       _%proc152793%_
       _%rebind?152775%_))
    (define _%checked-hash-table::HashTable::ref145942%_
      (lambda (_%self152707%_ _%key152708%_ _%default152709%_)
        (let* ((_%self152712%_ _%self152707%_)
               (_%key152721%_ _%key152708%_)
               (_%default152729%_ _%default152709%_))
          (declare (not safe))
          (let ((_%h152740%_
                 (##unchecked-structure-ref _%self152712%_ '1 '#f '#f))
                (_%key?152742%_
                 (##unchecked-structure-ref _%self152712%_ '2 '#f '#f)))
            (if ((lambda (_%key?152745%_ _%key152746%_ _%default152747%_)
                   (_%key?152745%_ _%key152746%_))
                 _%key?152742%_
                 _%key152721%_
                 _%default152729%_)
                (let* ((_%self143264152749%_ _%h152740%_)
                       (_%key152752%_ _%key152721%_)
                       (_%default152755%_ _%default152729%_))
                  (declare (not safe))
                  (let ((_%object152758152763%_
                         (##unchecked-structure-ref
                          _%self143264152749%_
                          '1
                          '#f
                          'ref))
                        (_%method152759152764%_
                         (##unchecked-structure-ref
                          _%self143264152749%_
                          '7
                          '#f
                          'ref)))
                    (_%method152759152764%_
                     _%object152758152763%_
                     _%key152752%_
                     _%default152755%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key152721%_ (cons _%default152729%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref145942%_
       '#f))
    (define _%checked-hash-table::HashTable::set!145944%_
      (lambda (_%self152525%_ _%key152526%_ _%value152527%_)
        (let* ((_%self152530%_ _%self152525%_)
               (_%key152539%_ _%key152526%_)
               (_%value152547%_ _%value152527%_))
          (declare (not safe))
          (let ((_%h152558%_
                 (##unchecked-structure-ref _%self152530%_ '1 '#f '#f))
                (_%key?152560%_
                 (##unchecked-structure-ref _%self152530%_ '2 '#f '#f)))
            (if ((lambda (_%key?152563%_ _%key152564%_ _%value152565%_)
                   (_%key?152563%_ _%key152564%_))
                 _%key?152560%_
                 _%key152539%_
                 _%value152547%_)
                (let* ((_%self143559152567%_ _%h152558%_)
                       (_%key152570%_ _%key152539%_)
                       (_%value152573%_ _%value152547%_))
                  (declare (not safe))
                  (let ((_%object152576152581%_
                         (##unchecked-structure-ref
                          _%self143559152567%_
                          '1
                          '#f
                          'set!))
                        (_%method152577152582%_
                         (##unchecked-structure-ref
                          _%self143559152567%_
                          '8
                          '#f
                          'set!)))
                    (_%method152577152582%_
                     _%object152576152581%_
                     _%key152570%_
                     _%value152573%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key152539%_ (cons _%value152547%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!145944%_
       '#f))
    (define _%checked-hash-table::HashTable::update!145946%_
      (lambda (_%self152330%_ _%key152331%_ _%update152332%_ _%default152333%_)
        (let* ((_%self152336%_ _%self152330%_)
               (_%key152345%_ _%key152331%_)
               (_%update152353%_ _%update152332%_)
               (_%default152361%_ _%default152333%_))
          (declare (not safe))
          (let ((_%h152372%_
                 (##unchecked-structure-ref _%self152336%_ '1 '#f '#f))
                (_%key?152374%_
                 (##unchecked-structure-ref _%self152336%_ '2 '#f '#f)))
            (if ((lambda (_%key?152377%_
                          _%key152378%_
                          _%update152379%_
                          _%default152380%_)
                   (_%key?152377%_ _%key152378%_))
                 _%key?152374%_
                 _%key152345%_
                 _%update152353%_
                 _%default152361%_)
                (let* ((_%self143854152382%_ _%h152372%_)
                       (_%key152385%_ _%key152345%_)
                       (_%proc152388%_ _%update152353%_)
                       (_%default152391%_ _%default152361%_))
                  (declare (not safe))
                  (let ((_%object152394152399%_
                         (##unchecked-structure-ref
                          _%self143854152382%_
                          '1
                          '#f
                          'update!))
                        (_%method152395152400%_
                         (##unchecked-structure-ref
                          _%self143854152382%_
                          '9
                          '#f
                          'update!)))
                    (_%method152395152400%_
                     _%object152394152399%_
                     _%key152385%_
                     _%proc152388%_
                     _%default152391%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key152345%_
                         (cons _%update152353%_ (cons _%default152361%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!145946%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!145948%_
      (lambda (_%self152161%_ _%key152162%_)
        (let* ((_%self152165%_ _%self152161%_) (_%key152174%_ _%key152162%_))
          (declare (not safe))
          (let ((_%h152185%_
                 (##unchecked-structure-ref _%self152165%_ '1 '#f '#f))
                (_%key?152187%_
                 (##unchecked-structure-ref _%self152165%_ '2 '#f '#f)))
            (if ((lambda (_%key?152190%_ _%key152191%_)
                   (_%key?152190%_ _%key152191%_))
                 _%key?152187%_
                 _%key152174%_)
                (let* ((_%self142366152193%_ _%h152185%_)
                       (_%key152196%_ _%key152174%_))
                  (declare (not safe))
                  (let ((_%object152199152204%_
                         (##unchecked-structure-ref
                          _%self142366152193%_
                          '1
                          '#f
                          'delete!))
                        (_%method152200152205%_
                         (##unchecked-structure-ref
                          _%self142366152193%_
                          '4
                          '#f
                          'delete!)))
                    (_%method152200152205%_
                     _%object152199152204%_
                     _%key152196%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key152174%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!145948%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each145950%_
      (lambda (_%self151992%_ _%proc151993%_)
        (let* ((_%self151996%_ _%self151992%_) (_%proc152005%_ _%proc151993%_))
          (declare (not safe))
          (let ((_%h152016%_
                 (##unchecked-structure-ref _%self151996%_ '1 '#f '#f))
                (_%key?152018%_
                 (##unchecked-structure-ref _%self151996%_ '2 '#f '#f)))
            (if ((lambda (_%key?152021%_ _%proc152022%_) '#t)
                 _%key?152018%_
                 _%proc152005%_)
                (let* ((_%self142659152024%_ _%h152016%_)
                       (_%proc152027%_ _%proc152005%_))
                  (declare (not safe))
                  (let ((_%object152030152035%_
                         (##unchecked-structure-ref
                          _%self142659152024%_
                          '1
                          '#f
                          'for-each))
                        (_%method152031152036%_
                         (##unchecked-structure-ref
                          _%self142659152024%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152031152036%_
                     _%object152030152035%_
                     _%proc152027%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc152005%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each145950%_
       '#f))
    (define _%checked-hash-table::HashTable::length145952%_
      (lambda (_%self151838%_)
        (let ((_%self151841%_ _%self151838%_))
          (declare (not safe))
          (let ((_%h151853%_
                 (##unchecked-structure-ref _%self151841%_ '1 '#f '#f))
                (_%key?151855%_
                 (##unchecked-structure-ref _%self151841%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self142970151858%_ _%h151853%_))
                  (declare (not safe))
                  (let ((_%object151861151866%_
                         (##unchecked-structure-ref
                          _%self142970151858%_
                          '1
                          '#f
                          'length))
                        (_%method151862151867%_
                         (##unchecked-structure-ref
                          _%self142970151858%_
                          '6
                          '#f
                          'length)))
                    (_%method151862151867%_ _%object151861151866%_)))
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
       _%checked-hash-table::HashTable::length145952%_
       '#f))
    (define _%checked-hash-table::HashTable::copy145954%_
      (lambda (_%self151684%_)
        (let ((_%self151687%_ _%self151684%_))
          (declare (not safe))
          (let ((_%h151699%_
                 (##unchecked-structure-ref _%self151687%_ '1 '#f '#f))
                (_%key?151701%_
                 (##unchecked-structure-ref _%self151687%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self142072151704%_ _%h151699%_))
                  (declare (not safe))
                  (let ((_%object151707151712%_
                         (##unchecked-structure-ref
                          _%self142072151704%_
                          '1
                          '#f
                          'copy))
                        (_%method151708151713%_
                         (##unchecked-structure-ref
                          _%self142072151704%_
                          '3
                          '#f
                          'copy)))
                    (_%method151708151713%_ _%object151707151712%_)))
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
       _%checked-hash-table::HashTable::copy145954%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!145956%_
      (lambda (_%self151530%_)
        (let ((_%self151533%_ _%self151530%_))
          (declare (not safe))
          (let ((_%h151545%_
                 (##unchecked-structure-ref _%self151533%_ '1 '#f '#f))
                (_%key?151547%_
                 (##unchecked-structure-ref _%self151533%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self141780151550%_ _%h151545%_))
                  (declare (not safe))
                  (let ((_%object151553151558%_
                         (##unchecked-structure-ref
                          _%self141780151550%_
                          '1
                          '#f
                          'clear!))
                        (_%method151554151559%_
                         (##unchecked-structure-ref
                          _%self141780151550%_
                          '2
                          '#f
                          'clear!)))
                    (_%method151554151559%_ _%object151553151558%_)))
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
       _%checked-hash-table::HashTable::clear!145956%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table151400%_
               _%count151401%_
               _%free151402%_
               _%hash151403%_
               _%test151404%_
               _%seed151405%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table151400%_
           _%count151401%_
           _%free151402%_
           _%hash151403%_
           _%test151404%_
           _%seed151405%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords150810%_
               _%size-hint150800150811%_
               _%seed150801150812%_
               _%test150802150813%_
               _%hash150803150814%_
               _%lock150804150815%_
               _%check150805150816%_
               _%weak-keys150806150817%_
               _%weak-values150807150818%_)
        (let* ((_%size-hint150820%_
                (if (eq? _%size-hint150800150811%_ absent-value)
                    '#f
                    _%size-hint150800150811%_))
               (_%seed150822%_
                (if (eq? _%seed150801150812%_ absent-value)
                    '#f
                    _%seed150801150812%_))
               (_%test150824%_
                (if (eq? _%test150802150813%_ absent-value)
                    equal?
                    _%test150802150813%_))
               (_%hash150826%_
                (if (eq? _%hash150803150814%_ absent-value)
                    '#f
                    _%hash150803150814%_))
               (_%lock150828%_
                (if (eq? _%lock150804150815%_ absent-value)
                    '#f
                    _%lock150804150815%_))
               (_%check150830%_
                (if (eq? _%check150805150816%_ absent-value)
                    '#f
                    _%check150805150816%_))
               (_%weak-keys150832%_
                (if (eq? _%weak-keys150806150817%_ absent-value)
                    '#f
                    _%weak-keys150806150817%_))
               (_%weak-values150834%_
                (if (eq? _%weak-values150807150818%_ absent-value)
                    '#f
                    _%weak-values150807150818%_)))
          (letrec ((_%table-seed150837%_
                    (lambda ()
                      (if (fixnum? _%seed150822%_)
                          _%seed150822%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock150981%_
                    (lambda (_%ht151368%_)
                      (let ((_%ht151371%_ _%ht151368%_))
                        (if _%lock150828%_
                            (let ((_%$obj151383%_
                                   (let ((__tmp158239
                                          (let ((_%$obj151380%_
                                                 _%lock150828%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj151380%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj151380%_)))
                                                     '#t)
                                                _%$obj151380%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj151380%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht151371%_
                                      __tmp158239))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj151383%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj151383%_)))
                                       '#t)
                                  _%$obj151383%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj151383%_))))
                            _%ht151371%_))))
                   (_%wrap-lock150982%_
                    (lambda (_%ht151356%_)
                      (let ((_%ht151359%_ _%ht151356%_))
                        (_%__wrap-lock150981%_ _%ht151359%_))))
                   (_%__wrap-checked151104%_
                    (lambda (_%ht151340%_ _%implicit151341%_)
                      (let ((_%ht151344%_ _%ht151340%_))
                        (if _%check150830%_
                            (let ((_%$obj151353%_
                                   (let ((__tmp158240
                                          (if (procedure? _%check150830%_)
                                              _%check150830%_
                                              _%implicit151341%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht151344%_
                                      __tmp158240))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj151353%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj151353%_)))
                                       '#t)
                                  _%$obj151353%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj151353%_))))
                            _%ht151344%_))))
                   (_%wrap-checked151105%_
                    (lambda (_%ht151327%_ _%implicit151328%_)
                      (let ((_%ht151331%_ _%ht151327%_))
                        (_%__wrap-checked151104%_
                         _%ht151331%_
                         _%implicit151328%_))))
                   (_%make151106%_
                    (lambda (_%kons151275%_
                             _%key?151276%_
                             _%hash151277%_
                             _%test151278%_)
                      (let* ((_%size151281%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint150820%_)))
                             (_%table151283%_
                              (let ((__tmp158241 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size151281%_ __tmp158241)))
                             (_%ht151288%_
                              (let ((_%$obj151285%_
                                     (_%kons151275%_
                                      _%table151283%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size151281%_ '2))
                                      _%hash151277%_
                                      _%test151278%_
                                      (_%table-seed150837%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj151285%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj151285%_)))
                                         '#t)
                                    _%$obj151285%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj151285%_)))))
                             (_%ht151310%_
                              (let* ((_%ht151291%_ _%ht151288%_)
                                     (_%ht151295%_ _%ht151291%_))
                                (_%__wrap-lock150981%_ _%ht151295%_)))
                             (_%implicit151313%_ _%key?151276%_)
                             (_%ht151317%_ _%ht151310%_))
                        (_%__wrap-checked151104%_
                         _%ht151317%_
                         _%implicit151313%_))))
                   (_%make-gc-hash-table151107%_
                    (lambda ()
                      (let* ((_%ht151240%_
                              (let ((_%$obj151237%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint150820%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj151237%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj151237%_)))
                                         '#t)
                                    _%$obj151237%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj151237%_)))))
                             (_%ht151258%_
                              (let* ((_%ht151242%_ _%ht151240%_)
                                     (_%ht151246%_ _%ht151242%_))
                                (_%__wrap-lock150981%_ _%ht151246%_)))
                             (_%implicit151261%_ true)
                             (_%ht151265%_ _%ht151258%_))
                        (_%__wrap-checked151104%_
                         _%ht151265%_
                         _%implicit151261%_))))
                   (_%make-gambit-table151108%_
                    (lambda ()
                      (let* ((_%size151177%_
                              (let ((_%$e151174%_ _%size-hint150820%_))
                                (if _%$e151174%_
                                    _%$e151174%_
                                    (macro-absent-obj))))
                             (_%test151182%_
                              (let ((_%$e151179%_ _%test150824%_))
                                (if _%$e151179%_ _%$e151179%_ equal?)))
                             (_%hash151190%_
                              (let ((_%$e151184%_ _%hash150826%_))
                                (if _%$e151184%_
                                    _%$e151184%_
                                    (if (eq? _%test151182%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test151182%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht151195%_
                              (let ((_%$obj151192%_
                                     (make-table
                                      'size:
                                      _%size151177%_
                                      'test:
                                      _%test151182%_
                                      'hash:
                                      _%hash151190%_
                                      'weak-keys:
                                      _%weak-keys150832%_
                                      'weak-values:
                                      _%weak-values150834%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj151192%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj151192%_)))
                                         '#t)
                                    _%$obj151192%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj151192%_)))))
                             (_%ht151218%_
                              (let* ((_%ht151198%_ _%ht151195%_)
                                     (_%ht151202%_ _%ht151198%_))
                                (_%__wrap-lock150981%_ _%ht151202%_)))
                             (_%implicit151221%_ true)
                             (_%ht151225%_ _%ht151218%_))
                        (_%__wrap-checked151104%_
                         _%ht151225%_
                         _%implicit151221%_)))))
            (if (or _%weak-keys150832%_ _%weak-values150834%_)
                (_%make-gambit-table151108%_)
                (if (and (or (eq? _%test150824%_ eq?)
                             (eq? _%test150824%_ ##eq?))
                         (or (not _%hash150826%_)
                             (eq? _%hash150826%_ eq?-hash)
                             (eq? _%hash150826%_ eq-hash))
                         (not _%seed150822%_))
                    (_%make-gc-hash-table151107%_)
                    (if (and (or (eq? _%test150824%_ eq?)
                                 (eq? _%test150824%_ ##eq?))
                             (or (not _%hash150826%_)
                                 (eq? _%hash150826%_ eq?-hash)
                                 (eq? _%hash150826%_ eq-hash)))
                        (_%make151106%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test150824%_ eqv?)
                                     (eq? _%test150824%_ ##eqv?))
                                 (or (not _%hash150826%_)
                                     (eq? _%hash150826%_ eqv?-hash)
                                     (eq? _%hash150826%_ eqv-hash)))
                            (_%make151106%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test150824%_ eq?)
                                         (eq? _%test150824%_ ##eq?))
                                     (or (eq? _%hash150826%_ symbolic-hash)
                                         (eq? _%hash150826%_ ##symbol-hash)))
                                (_%make151106%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test150824%_ eq?)
                                             (eq? _%test150824%_ ##eq?))
                                         (eq? _%hash150826%_ immediate-hash))
                                    (_%make151106%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test150824%_ equal?)
                                                 (eq? _%test150824%_ ##equal?)
                                                 (eq? _%test150824%_ string=?)
                                                 (eq? _%test150824%_
                                                      ##string=?))
                                             (or (eq? _%hash150826%_
                                                      string-hash)
                                                 (eq? _%hash150826%_
                                                      ##string=?-hash)))
                                        (_%make151106%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test150824%_ equal?)
                                                 (not _%hash150826%_))
                                            (_%make151106%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test150824%_)
                                                (if (procedure? _%hash150826%_)
                                                    (_%make151106%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash150826%_
                                                     _%test150824%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash150826%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test150824%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords151390%_ . _%args151391%_)
        (apply make-hash-table__%
               _%@@keywords151390%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151390%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151390%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151390%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151390%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151390%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151390%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151390%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151390%_
                  'weak-values:
                  absent-value))
               _%args151391%_)))
    (define make-hash-table
      (lambda _%args150808151397%_
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
               _%args150808151397%_)))
    (define make-hash-table-eq
      (lambda _%args150797%_
        (apply make-hash-table 'test: eq? _%args150797%_)))
    (define make-hash-table-eqv
      (lambda _%args150795%_
        (apply make-hash-table 'test: eqv? _%args150795%_)))
    (define make-hash-table-symbolic
      (lambda _%args150793%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args150793%_)))
    (define make-hash-table-string
      (lambda _%args150791%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args150791%_)))
    (define make-hash-table-immediate
      (lambda _%args150789%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args150789%_)))
    (define list->hash-table
      (lambda (_%lst150786%_ . _%args150787%_)
        (list->hash-table!
         _%lst150786%_
         (apply make-hash-table
                'size:
                (length _%lst150786%_)
                _%args150787%_))))
    (define list->hash-table-eq
      (lambda (_%lst150783%_ . _%args150784%_)
        (list->hash-table!
         _%lst150783%_
         (apply make-hash-table-eq
                'size:
                (length _%lst150783%_)
                _%args150784%_))))
    (define list->hash-table-eqv
      (lambda (_%lst150780%_ . _%args150781%_)
        (list->hash-table!
         _%lst150780%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst150780%_)
                _%args150781%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst150777%_ . _%args150778%_)
        (list->hash-table!
         _%lst150777%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst150777%_)
                _%args150778%_))))
    (define list->hash-table-string
      (lambda (_%lst150774%_ . _%args150775%_)
        (list->hash-table!
         _%lst150774%_
         (apply make-hash-table-string
                'size:
                (length _%lst150774%_)
                _%args150775%_))))
    (define list->hash-table-immediate
      (lambda (_%lst150771%_ . _%args150772%_)
        (list->hash-table!
         _%lst150771%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst150771%_)
                _%args150772%_))))
    (define list->hash-table!
      (lambda (_%lst150722%_ _%h150723%_)
        (for-each
         (lambda (_%el150725%_)
           (let* ((_%el150726150733%_ _%el150725%_)
                  (_%E150728150736%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el150726150733%_
                              '([k . v])))
                     '#!void))
                  (_%K150729150759%_
                   (lambda (_%v150739%_ _%k150740%_)
                     (let* ((_%self143559150742%_ _%h150723%_)
                            (_%key150745%_ _%k150740%_)
                            (_%value150748%_ _%v150739%_))
                       (declare (not safe))
                       (let ((_%object150751150756%_
                              (##unchecked-structure-ref
                               _%self143559150742%_
                               '1
                               '#f
                               'set!))
                             (_%method150752150757%_
                              (##unchecked-structure-ref
                               _%self143559150742%_
                               '8
                               '#f
                               'set!)))
                         (_%method150752150757%_
                          _%object150751150756%_
                          _%key150745%_
                          _%value150748%_))))))
             (if (pair? _%el150726150733%_)
                 (let ((_%hd150730150762%_
                        (let ()
                          (declare (not safe))
                          (##car _%el150726150733%_)))
                       (_%tl150731150764%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el150726150733%_))))
                   (let* ((_%k150767%_ _%hd150730150762%_)
                          (_%v150769%_ _%tl150731150764%_))
                     (_%K150729150759%_ _%v150769%_ _%k150767%_)))
                 (_%E150728150736%_))))
         _%lst150722%_)
        _%h150723%_))
    (define plist->hash-table
      (lambda (_%lst150719%_ . _%args150720%_)
        (plist->hash-table!
         _%lst150719%_
         (apply make-hash-table
                'size:
                (length _%lst150719%_)
                _%args150720%_))))
    (define plist->hash-table-eq
      (lambda (_%lst150716%_ . _%args150717%_)
        (plist->hash-table!
         _%lst150716%_
         (apply make-hash-table-eq
                'size:
                (length _%lst150716%_)
                _%args150717%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst150713%_ . _%args150714%_)
        (plist->hash-table!
         _%lst150713%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst150713%_)
                _%args150714%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst150710%_ . _%args150711%_)
        (plist->hash-table!
         _%lst150710%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst150710%_)
                _%args150711%_))))
    (define plist->hash-table-string
      (lambda (_%lst150707%_ . _%args150708%_)
        (plist->hash-table!
         _%lst150707%_
         (apply make-hash-table-string
                'size:
                (length _%lst150707%_)
                _%args150708%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst150704%_ . _%args150705%_)
        (plist->hash-table!
         _%lst150704%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst150704%_)
                _%args150705%_))))
    (define plist->hash-table!
      (lambda (_%lst150627%_ _%h150628%_)
        (let _%loop150630%_ ((_%rest150632%_ _%lst150627%_))
          (let* ((_%rest150633150645%_ _%rest150632%_)
                 (_%else150636150653%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst150627%_)))))
            (let ((_%K150639150685%_
                   (lambda (_%rest150664%_ _%val150665%_ _%key150666%_)
                     (let* ((_%self143559150668%_ _%h150628%_)
                            (_%key150671%_ _%key150666%_)
                            (_%value150674%_ _%val150665%_))
                       (declare (not safe))
                       (let ((_%object150677150682%_
                              (##unchecked-structure-ref
                               _%self143559150668%_
                               '1
                               '#f
                               'set!))
                             (_%method150678150683%_
                              (##unchecked-structure-ref
                               _%self143559150668%_
                               '8
                               '#f
                               'set!)))
                         (_%method150678150683%_
                          _%object150677150682%_
                          _%key150671%_
                          _%value150674%_)))
                     (_%loop150630%_ _%rest150664%_)))
                  (_%K150638150658%_ (lambda () _%h150628%_)))
              (let ((_%try-match150635150661%_
                     (lambda ()
                       (if (null? _%rest150633150645%_)
                           (_%K150638150658%_)
                           (_%else150636150653%_)))))
                (if (pair? _%rest150633150645%_)
                    (let ((_%tl150641150690%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest150633150645%_)))
                          (_%hd150640150688%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest150633150645%_))))
                      (if (pair? _%tl150641150690%_)
                          (let ((_%tl150643150697%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl150641150690%_)))
                                (_%hd150642150695%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl150641150690%_))))
                            (let ((_%key150693%_ _%hd150640150688%_)
                                  (_%val150700%_ _%hd150642150695%_)
                                  (_%rest150702%_ _%tl150643150697%_))
                              (_%K150639150685%_
                               _%rest150702%_
                               _%val150700%_
                               _%key150693%_)))
                          (_%else150636150653%_)))
                    (_%try-match150635150661%_))))))))
    (define __hash-length
      (lambda (_%h150576%_)
        (let* ((_%h150579%_ _%h150576%_)
               (_%self142971150588%_ _%h150579%_)
               (_%self142971150595%_
                (let ((_%$obj150592%_ _%self142971150588%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150592%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150592%_)))
                           '#t)
                      _%$obj150592%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150592%_)))))
               (_%self142971150597%_ _%self142971150595%_))
          (if __DEBUG
              (let ((_%val150617%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object150609150614%_
                              (##unchecked-structure-ref
                               _%self142971150597%_
                               '1
                               '#f
                               'length))
                             (_%method150610150615%_
                              (##unchecked-structure-ref
                               _%self142971150597%_
                               '6
                               '#f
                               'length)))
                         (_%method150610150615%_ _%object150609150614%_)))))
                (if (fixnum? _%val150617%_)
                    _%val150617%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val150617%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object150619150624%_
                       (##unchecked-structure-ref
                        _%self142971150597%_
                        '1
                        '#f
                        'length))
                      (_%method150620150625%_
                       (##unchecked-structure-ref
                        _%self142971150597%_
                        '6
                        '#f
                        'length)))
                  (_%method150620150625%_ _%object150619150624%_)))))))
    (define hash-length
      (lambda (_%h146231%_)
        (let* ((_%h146237%_
                (let ((_%$obj146234%_ _%h146231%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146234%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146234%_)))
                           '#t)
                      _%$obj146234%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146234%_)))))
               (_%h146239%_ _%h146237%_))
          (__hash-length _%h146239%_))))
    (define __hash-ref__%
      (lambda (_%h150504%_ _%key150505%_ _%default150506%_)
        (let* ((_%h150509%_ _%h150504%_)
               (_%result150562%_
                (let* ((_%self143265150518%_ _%h150509%_)
                       (_%key150521%_ _%key150505%_)
                       (_%default150524%_ _%default150506%_)
                       (_%self143265150531%_
                        (let ((_%$obj150528%_ _%self143265150518%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj150528%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj150528%_)))
                                   '#t)
                              _%$obj150528%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj150528%_)))))
                       (_%self143265150533%_ _%self143265150531%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object150547150552%_
                               (##unchecked-structure-ref
                                _%self143265150533%_
                                '1
                                '#f
                                'ref))
                              (_%method150548150553%_
                               (##unchecked-structure-ref
                                _%self143265150533%_
                                '7
                                '#f
                                'ref)))
                          (_%method150548150553%_
                           _%object150547150552%_
                           _%key150521%_
                           _%default150524%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object150554150559%_
                               (##unchecked-structure-ref
                                _%self143265150533%_
                                '1
                                '#f
                                'ref))
                              (_%method150555150560%_
                               (##unchecked-structure-ref
                                _%self143265150533%_
                                '7
                                '#f
                                'ref)))
                          (_%method150555150560%_
                           _%object150554150559%_
                           _%key150521%_
                           _%default150524%_)))))))
          (if (eq? _%result150562%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h150509%_
               'key:
               _%key150505%_)
              _%result150562%_))))
    (define __hash-ref__0
      (lambda (_%h150567%_ _%key150568%_)
        (let ((_%default150570%_ (macro-absent-obj)))
          (__hash-ref__% _%h150567%_ _%key150568%_ _%default150570%_))))
    (define __hash-ref
      (lambda _g158242_
        (let ((_g158243_ (let () (declare (not safe)) (##length _g158242_))))
          (cond ((let () (declare (not safe)) (##fx= _g158243_ 2))
                 (apply __hash-ref__0 _g158242_))
                ((let () (declare (not safe)) (##fx= _g158243_ 3))
                 (apply __hash-ref__% _g158242_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g158242_))))))
    (define hash-ref__%
      (lambda (_%h146370%_ _%key146371%_ _%default146372%_)
        (let* ((_%h146378%_
                (let ((_%$obj146375%_ _%h146370%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146375%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146375%_)))
                           '#t)
                      _%$obj146375%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146375%_)))))
               (_%h146380%_ _%h146378%_))
          (__hash-ref__% _%h146380%_ _%key146371%_ _%default146372%_))))
    (define hash-ref__0
      (lambda (_%h146393%_ _%key146394%_)
        (let ((_%default146396%_ (macro-absent-obj)))
          (hash-ref__% _%h146393%_ _%key146394%_ _%default146396%_))))
    (define hash-ref
      (lambda _g158244_
        (let ((_g158245_ (let () (declare (not safe)) (##length _g158244_))))
          (cond ((let () (declare (not safe)) (##fx= _g158245_ 2))
                 (apply hash-ref__0 _g158244_))
                ((let () (declare (not safe)) (##fx= _g158245_ 3))
                 (apply hash-ref__% _g158244_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g158244_))))))
    (define __hash-get
      (lambda (_%h150446%_ _%key150447%_)
        (let* ((_%h150450%_ _%h150446%_)
               (_%self143265150459%_ _%h150450%_)
               (_%key150462%_ _%key150447%_)
               (_%default150465%_ '#f)
               (_%self143265150472%_
                (let ((_%$obj150469%_ _%self143265150459%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150469%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150469%_)))
                           '#t)
                      _%$obj150469%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150469%_)))))
               (_%self143265150474%_ _%self143265150472%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object150488150493%_
                       (##unchecked-structure-ref
                        _%self143265150474%_
                        '1
                        '#f
                        'ref))
                      (_%method150489150494%_
                       (##unchecked-structure-ref
                        _%self143265150474%_
                        '7
                        '#f
                        'ref)))
                  (_%method150489150494%_
                   _%object150488150493%_
                   _%key150462%_
                   _%default150465%_)))
              (let ()
                (declare (not safe))
                (let ((_%object150495150500%_
                       (##unchecked-structure-ref
                        _%self143265150474%_
                        '1
                        '#f
                        'ref))
                      (_%method150496150501%_
                       (##unchecked-structure-ref
                        _%self143265150474%_
                        '7
                        '#f
                        'ref)))
                  (_%method150496150501%_
                   _%object150495150500%_
                   _%key150462%_
                   _%default150465%_)))))))
    (define hash-get
      (lambda (_%h146522%_ _%key146523%_)
        (let* ((_%h146529%_
                (let ((_%$obj146526%_ _%h146522%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146526%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146526%_)))
                           '#t)
                      _%$obj146526%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146526%_)))))
               (_%h146531%_ _%h146529%_))
          (__hash-get _%h146531%_ _%key146523%_))))
    (define __hash-put!
      (lambda (_%h150388%_ _%key150389%_ _%value150390%_)
        (let* ((_%h150393%_ _%h150388%_)
               (_%self143560150402%_ _%h150393%_)
               (_%key150405%_ _%key150389%_)
               (_%value150408%_ _%value150390%_)
               (_%self143560150415%_
                (let ((_%$obj150412%_ _%self143560150402%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150412%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150412%_)))
                           '#t)
                      _%$obj150412%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150412%_)))))
               (_%self143560150417%_ _%self143560150415%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object150431150436%_
                       (##unchecked-structure-ref
                        _%self143560150417%_
                        '1
                        '#f
                        'set!))
                      (_%method150432150437%_
                       (##unchecked-structure-ref
                        _%self143560150417%_
                        '8
                        '#f
                        'set!)))
                  (_%method150432150437%_
                   _%object150431150436%_
                   _%key150405%_
                   _%value150408%_)))
              (let ()
                (declare (not safe))
                (let ((_%object150438150443%_
                       (##unchecked-structure-ref
                        _%self143560150417%_
                        '1
                        '#f
                        'set!))
                      (_%method150439150444%_
                       (##unchecked-structure-ref
                        _%self143560150417%_
                        '8
                        '#f
                        'set!)))
                  (_%method150439150444%_
                   _%object150438150443%_
                   _%key150405%_
                   _%value150408%_)))))))
    (define hash-put!
      (lambda (_%h146661%_ _%key146662%_ _%value146663%_)
        (let* ((_%h146669%_
                (let ((_%$obj146666%_ _%h146661%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146666%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146666%_)))
                           '#t)
                      _%$obj146666%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146666%_)))))
               (_%h146671%_ _%h146669%_))
          (__hash-put! _%h146671%_ _%key146662%_ _%value146663%_))))
    (define __hash-update!__%
      (lambda (_%h150301%_ _%key150302%_ _%update150303%_ _%default150304%_)
        (let* ((_%h150307%_ _%h150301%_)
               (_%self143855150316%_ _%h150307%_)
               (_%key150319%_ _%key150302%_)
               (_%proc150322%_ _%update150303%_)
               (_%default150325%_ _%default150304%_)
               (_%self143855150332%_
                (let ((_%$obj150329%_ _%self143855150316%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150329%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150329%_)))
                           '#t)
                      _%$obj150329%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150329%_)))))
               (_%self143855150334%_ _%self143855150332%_))
          (if (procedure? _%proc150322%_)
              (let ((_%proc150350%_ _%proc150322%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object150359150364%_
                             (##unchecked-structure-ref
                              _%self143855150334%_
                              '1
                              '#f
                              'update!))
                            (_%method150360150365%_
                             (##unchecked-structure-ref
                              _%self143855150334%_
                              '9
                              '#f
                              'update!)))
                        (_%method150360150365%_
                         _%object150359150364%_
                         _%key150319%_
                         _%proc150350%_
                         _%default150325%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object150366150371%_
                             (##unchecked-structure-ref
                              _%self143855150334%_
                              '1
                              '#f
                              'update!))
                            (_%method150367150372%_
                             (##unchecked-structure-ref
                              _%self143855150334%_
                              '9
                              '#f
                              'update!)))
                        (_%method150367150372%_
                         _%object150366150371%_
                         _%key150319%_
                         _%proc150350%_
                         _%default150325%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc150322%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h150377%_ _%key150378%_ _%update150379%_)
        (let ((_%default150381%_ '#!void))
          (__hash-update!__%
           _%h150377%_
           _%key150378%_
           _%update150379%_
           _%default150381%_))))
    (define __hash-update!
      (lambda _g158246_
        (let ((_g158247_ (let () (declare (not safe)) (##length _g158246_))))
          (cond ((let () (declare (not safe)) (##fx= _g158247_ 3))
                 (apply __hash-update!__0 _g158246_))
                ((let () (declare (not safe)) (##fx= _g158247_ 4))
                 (apply __hash-update!__% _g158246_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g158246_))))))
    (define hash-update!__%
      (lambda (_%h146802%_ _%key146803%_ _%update146804%_ _%default146805%_)
        (let* ((_%h146811%_
                (let ((_%$obj146808%_ _%h146802%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146808%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146808%_)))
                           '#t)
                      _%$obj146808%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146808%_)))))
               (_%h146813%_ _%h146811%_))
          (__hash-update!__%
           _%h146813%_
           _%key146803%_
           _%update146804%_
           _%default146805%_))))
    (define hash-update!__0
      (lambda (_%h146826%_ _%key146827%_ _%update146828%_)
        (let ((_%default146830%_ '#!void))
          (hash-update!__%
           _%h146826%_
           _%key146827%_
           _%update146828%_
           _%default146830%_))))
    (define hash-update!
      (lambda _g158248_
        (let ((_g158249_ (let () (declare (not safe)) (##length _g158248_))))
          (cond ((let () (declare (not safe)) (##fx= _g158249_ 3))
                 (apply hash-update!__0 _g158248_))
                ((let () (declare (not safe)) (##fx= _g158249_ 4))
                 (apply hash-update!__% _g158248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g158248_))))))
    (define __hash-remove!
      (lambda (_%h150247%_ _%key150248%_)
        (let* ((_%h150251%_ _%h150247%_)
               (_%self142367150260%_ _%h150251%_)
               (_%key150263%_ _%key150248%_)
               (_%self142367150270%_
                (let ((_%$obj150267%_ _%self142367150260%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150267%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150267%_)))
                           '#t)
                      _%$obj150267%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150267%_)))))
               (_%self142367150272%_ _%self142367150270%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object150285150290%_
                       (##unchecked-structure-ref
                        _%self142367150272%_
                        '1
                        '#f
                        'delete!))
                      (_%method150286150291%_
                       (##unchecked-structure-ref
                        _%self142367150272%_
                        '4
                        '#f
                        'delete!)))
                  (_%method150286150291%_
                   _%object150285150290%_
                   _%key150263%_)))
              (let ()
                (declare (not safe))
                (let ((_%object150292150297%_
                       (##unchecked-structure-ref
                        _%self142367150272%_
                        '1
                        '#f
                        'delete!))
                      (_%method150293150298%_
                       (##unchecked-structure-ref
                        _%self142367150272%_
                        '4
                        '#f
                        'delete!)))
                  (_%method150293150298%_
                   _%object150292150297%_
                   _%key150263%_)))))))
    (define hash-remove!
      (lambda (_%h146957%_ _%key146958%_)
        (let* ((_%h146964%_
                (let ((_%$obj146961%_ _%h146957%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146961%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146961%_)))
                           '#t)
                      _%$obj146961%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146961%_)))))
               (_%h146966%_ _%h146964%_))
          (__hash-remove! _%h146966%_ _%key146958%_))))
    (define __hash-key?
      (lambda (_%h150190%_ _%k150191%_)
        (let ((_%h150194%_ _%h150190%_))
          (not (eq? (let* ((_%self143265150203%_ _%h150194%_)
                           (_%key150206%_ _%k150191%_)
                           (_%default150209%_ absent-value)
                           (_%self143265150216%_
                            (let ((_%$obj150213%_ _%self143265150203%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj150213%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj150213%_)))
                                       '#t)
                                  _%$obj150213%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj150213%_)))))
                           (_%self143265150218%_ _%self143265150216%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object150232150237%_
                                   (##unchecked-structure-ref
                                    _%self143265150218%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method150233150238%_
                                   (##unchecked-structure-ref
                                    _%self143265150218%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method150233150238%_
                               _%object150232150237%_
                               _%key150206%_
                               _%default150209%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object150239150244%_
                                   (##unchecked-structure-ref
                                    _%self143265150218%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method150240150245%_
                                   (##unchecked-structure-ref
                                    _%self143265150218%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method150240150245%_
                               _%object150239150244%_
                               _%key150206%_
                               _%default150209%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h147096%_ _%k147097%_)
        (let* ((_%h147103%_
                (let ((_%$obj147100%_ _%h147096%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147100%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147100%_)))
                           '#t)
                      _%$obj147100%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147100%_)))))
               (_%h147105%_ _%h147103%_))
          (__hash-key? _%h147105%_ _%k147097%_))))
    (define __hash->list
      (lambda (_%h150122%_)
        (let* ((_%h150125%_ _%h150122%_) (_%lst150134%_ '()))
          (let* ((_%self142660150136%_ _%h150125%_)
                 (_%proc150142%_
                  (lambda (_%k150139%_ _%v150140%_)
                    (set! _%lst150134%_
                          (cons (cons _%k150139%_ _%v150140%_)
                                _%lst150134%_))))
                 (_%self142660150149%_
                  (let ((_%$obj150146%_ _%self142660150136%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj150146%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj150146%_)))
                             '#t)
                        _%$obj150146%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj150146%_)))))
                 (_%self142660150151%_ _%self142660150149%_)
                 (_%proc150166%_ _%proc150142%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object150175150180%_
                         (##unchecked-structure-ref
                          _%self142660150151%_
                          '1
                          '#f
                          'for-each))
                        (_%method150176150181%_
                         (##unchecked-structure-ref
                          _%self142660150151%_
                          '5
                          '#f
                          'for-each)))
                    (_%method150176150181%_
                     _%object150175150180%_
                     _%proc150166%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object150182150187%_
                         (##unchecked-structure-ref
                          _%self142660150151%_
                          '1
                          '#f
                          'for-each))
                        (_%method150183150188%_
                         (##unchecked-structure-ref
                          _%self142660150151%_
                          '5
                          '#f
                          'for-each)))
                    (_%method150183150188%_
                     _%object150182150187%_
                     _%proc150166%_)))))
          _%lst150134%_)))
    (define hash->list
      (lambda (_%h147235%_)
        (let* ((_%h147241%_
                (let ((_%$obj147238%_ _%h147235%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147238%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147238%_)))
                           '#t)
                      _%$obj147238%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147238%_)))))
               (_%h147243%_ _%h147241%_))
          (__hash->list _%h147243%_))))
    (define __hash->plist
      (lambda (_%h150054%_)
        (let* ((_%h150057%_ _%h150054%_) (_%lst150066%_ '()))
          (let* ((_%self142660150068%_ _%h150057%_)
                 (_%proc150074%_
                  (lambda (_%k150071%_ _%v150072%_)
                    (set! _%lst150066%_
                          (cons _%k150071%_
                                (cons _%v150072%_ _%lst150066%_)))))
                 (_%self142660150081%_
                  (let ((_%$obj150078%_ _%self142660150068%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj150078%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj150078%_)))
                             '#t)
                        _%$obj150078%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj150078%_)))))
                 (_%self142660150083%_ _%self142660150081%_)
                 (_%proc150098%_ _%proc150074%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object150107150112%_
                         (##unchecked-structure-ref
                          _%self142660150083%_
                          '1
                          '#f
                          'for-each))
                        (_%method150108150113%_
                         (##unchecked-structure-ref
                          _%self142660150083%_
                          '5
                          '#f
                          'for-each)))
                    (_%method150108150113%_
                     _%object150107150112%_
                     _%proc150098%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object150114150119%_
                         (##unchecked-structure-ref
                          _%self142660150083%_
                          '1
                          '#f
                          'for-each))
                        (_%method150115150120%_
                         (##unchecked-structure-ref
                          _%self142660150083%_
                          '5
                          '#f
                          'for-each)))
                    (_%method150115150120%_
                     _%object150114150119%_
                     _%proc150098%_)))))
          _%lst150066%_)))
    (define hash->plist
      (lambda (_%h147373%_)
        (let* ((_%h147379%_
                (let ((_%$obj147376%_ _%h147373%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147376%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147376%_)))
                           '#t)
                      _%$obj147376%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147376%_)))))
               (_%h147381%_ _%h147379%_))
          (__hash->plist _%h147381%_))))
    (define __hash-for-each
      (lambda (_%proc149983%_ _%h149984%_)
        (let* ((_%proc149987%_ _%proc149983%_)
               (_%h149995%_ _%h149984%_)
               (_%self142660150004%_ _%h149995%_)
               (_%proc150007%_ _%proc149987%_)
               (_%self142660150014%_
                (let ((_%$obj150011%_ _%self142660150004%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150011%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150011%_)))
                           '#t)
                      _%$obj150011%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150011%_)))))
               (_%self142660150016%_ _%self142660150014%_)
               (_%proc150030%_ _%proc150007%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object150039150044%_
                       (##unchecked-structure-ref
                        _%self142660150016%_
                        '1
                        '#f
                        'for-each))
                      (_%method150040150045%_
                       (##unchecked-structure-ref
                        _%self142660150016%_
                        '5
                        '#f
                        'for-each)))
                  (_%method150040150045%_
                   _%object150039150044%_
                   _%proc150030%_)))
              (let ()
                (declare (not safe))
                (let ((_%object150046150051%_
                       (##unchecked-structure-ref
                        _%self142660150016%_
                        '1
                        '#f
                        'for-each))
                      (_%method150047150052%_
                       (##unchecked-structure-ref
                        _%self142660150016%_
                        '5
                        '#f
                        'for-each)))
                  (_%method150047150052%_
                   _%object150046150051%_
                   _%proc150030%_)))))))
    (define hash-for-each
      (lambda (_%proc147511%_ _%h147512%_)
        (if (procedure? _%proc147511%_)
            (let* ((_%proc147516%_ _%proc147511%_)
                   (_%h147528%_
                    (let ((_%$obj147525%_ _%h147512%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj147525%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj147525%_)))
                               '#t)
                          _%$obj147525%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj147525%_)))))
                   (_%h147530%_ _%h147528%_))
              (__hash-for-each _%proc147516%_ _%h147530%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc147511%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc149906%_ _%h149907%_)
        (let* ((_%proc149910%_ _%proc149906%_)
               (_%h149918%_ _%h149907%_)
               (_%result149927%_ '()))
          (let* ((_%self142660149929%_ _%h149918%_)
                 (_%proc149935%_
                  (lambda (_%k149932%_ _%v149933%_)
                    (set! _%result149927%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc149910%_ _%k149932%_ _%v149933%_))
                                _%result149927%_))))
                 (_%self142660149942%_
                  (let ((_%$obj149939%_ _%self142660149929%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj149939%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj149939%_)))
                             '#t)
                        _%$obj149939%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj149939%_)))))
                 (_%self142660149944%_ _%self142660149942%_)
                 (_%proc149959%_ _%proc149935%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object149968149973%_
                         (##unchecked-structure-ref
                          _%self142660149944%_
                          '1
                          '#f
                          'for-each))
                        (_%method149969149974%_
                         (##unchecked-structure-ref
                          _%self142660149944%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149969149974%_
                     _%object149968149973%_
                     _%proc149959%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object149975149980%_
                         (##unchecked-structure-ref
                          _%self142660149944%_
                          '1
                          '#f
                          'for-each))
                        (_%method149976149981%_
                         (##unchecked-structure-ref
                          _%self142660149944%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149976149981%_
                     _%object149975149980%_
                     _%proc149959%_)))))
          _%result149927%_)))
    (define hash-map
      (lambda (_%proc147660%_ _%h147661%_)
        (if (procedure? _%proc147660%_)
            (let* ((_%proc147665%_ _%proc147660%_)
                   (_%h147677%_
                    (let ((_%$obj147674%_ _%h147661%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj147674%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj147674%_)))
                               '#t)
                          _%$obj147674%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj147674%_)))))
                   (_%h147679%_ _%h147677%_))
              (__hash-map _%proc147665%_ _%h147679%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc147660%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc149828%_ _%iv149829%_ _%h149830%_)
        (let* ((_%proc149833%_ _%proc149828%_)
               (_%h149841%_ _%h149830%_)
               (_%result149850%_ _%iv149829%_))
          (let* ((_%self142660149852%_ _%h149841%_)
                 (_%proc149858%_
                  (lambda (_%k149855%_ _%v149856%_)
                    (set! _%result149850%_
                          (let ()
                            (declare (not safe))
                            (_%proc149833%_
                             _%k149855%_
                             _%v149856%_
                             _%result149850%_)))))
                 (_%self142660149865%_
                  (let ((_%$obj149862%_ _%self142660149852%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj149862%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj149862%_)))
                             '#t)
                        _%$obj149862%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj149862%_)))))
                 (_%self142660149867%_ _%self142660149865%_)
                 (_%proc149882%_ _%proc149858%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object149891149896%_
                         (##unchecked-structure-ref
                          _%self142660149867%_
                          '1
                          '#f
                          'for-each))
                        (_%method149892149897%_
                         (##unchecked-structure-ref
                          _%self142660149867%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149892149897%_
                     _%object149891149896%_
                     _%proc149882%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object149898149903%_
                         (##unchecked-structure-ref
                          _%self142660149867%_
                          '1
                          '#f
                          'for-each))
                        (_%method149899149904%_
                         (##unchecked-structure-ref
                          _%self142660149867%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149899149904%_
                     _%object149898149903%_
                     _%proc149882%_)))))
          _%result149850%_)))
    (define hash-fold
      (lambda (_%proc147809%_ _%iv147810%_ _%h147811%_)
        (if (procedure? _%proc147809%_)
            (let* ((_%proc147815%_ _%proc147809%_)
                   (_%h147827%_
                    (let ((_%$obj147824%_ _%h147811%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj147824%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj147824%_)))
                               '#t)
                          _%$obj147824%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj147824%_)))))
                   (_%h147829%_ _%h147827%_))
              (__hash-fold _%proc147815%_ _%iv147810%_ _%h147829%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc147809%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc149735%_ _%h149736%_ _%default-value149737%_)
        (let* ((_%proc149740%_ _%proc149735%_)
               (_%h149748%_ _%h149736%_)
               (__tmp158250
                (lambda (_%return149757%_)
                  (let* ((_%self142660149759%_ _%h149748%_)
                         (_%proc149768%_
                          (lambda (_%k149762%_ _%v149763%_)
                            (let ((_%$e149765%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc149740%_
                                      _%k149762%_
                                      _%v149763%_))))
                              (if _%$e149765%_
                                  (_%return149757%_ _%$e149765%_)
                                  '#!void))))
                         (_%self142660149775%_
                          (let ((_%$obj149772%_ _%self142660149759%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj149772%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj149772%_)))
                                     '#t)
                                _%$obj149772%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj149772%_)))))
                         (_%self142660149777%_ _%self142660149775%_)
                         (_%proc149792%_ _%proc149768%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object149801149806%_
                                 (##unchecked-structure-ref
                                  _%self142660149777%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method149802149807%_
                                 (##unchecked-structure-ref
                                  _%self142660149777%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method149802149807%_
                             _%object149801149806%_
                             _%proc149792%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object149808149813%_
                                 (##unchecked-structure-ref
                                  _%self142660149777%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method149809149814%_
                                 (##unchecked-structure-ref
                                  _%self142660149777%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method149809149814%_
                             _%object149808149813%_
                             _%proc149792%_)))))
                  _%default-value149737%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp158250))))
    (define __hash-find__0
      (lambda (_%proc149819%_ _%h149820%_)
        (let ((_%default-value149822%_ '#f))
          (__hash-find__%
           _%proc149819%_
           _%h149820%_
           _%default-value149822%_))))
    (define __hash-find
      (lambda _g158251_
        (let ((_g158252_ (let () (declare (not safe)) (##length _g158251_))))
          (cond ((let () (declare (not safe)) (##fx= _g158252_ 2))
                 (apply __hash-find__0 _g158251_))
                ((let () (declare (not safe)) (##fx= _g158252_ 3))
                 (apply __hash-find__% _g158251_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g158251_))))))
    (define hash-find__%
      (lambda (_%proc147960%_ _%h147961%_ _%default-value147962%_)
        (if (procedure? _%proc147960%_)
            (let* ((_%proc147966%_ _%proc147960%_)
                   (_%h147978%_
                    (let ((_%$obj147975%_ _%h147961%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj147975%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj147975%_)))
                               '#t)
                          _%$obj147975%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj147975%_)))))
                   (_%h147980%_ _%h147978%_))
              (__hash-find__%
               _%proc147966%_
               _%h147980%_
               _%default-value147962%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc147960%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc147993%_ _%h147994%_)
        (let ((_%default-value147996%_ '#f))
          (hash-find__% _%proc147993%_ _%h147994%_ _%default-value147996%_))))
    (define hash-find
      (lambda _g158253_
        (let ((_g158254_ (let () (declare (not safe)) (##length _g158253_))))
          (cond ((let () (declare (not safe)) (##fx= _g158254_ 2))
                 (apply hash-find__0 _g158253_))
                ((let () (declare (not safe)) (##fx= _g158254_ 3))
                 (apply hash-find__% _g158253_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g158253_))))))
    (define __hash-keys
      (lambda (_%h149666%_)
        (let* ((_%h149669%_ _%h149666%_) (_%result149678%_ '()))
          (let* ((_%self142660149680%_ _%h149669%_)
                 (_%proc149686%_
                  (lambda (_%k149683%_ _%v149684%_)
                    (set! _%result149678%_
                          (cons _%k149683%_ _%result149678%_))))
                 (_%self142660149693%_
                  (let ((_%$obj149690%_ _%self142660149680%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj149690%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj149690%_)))
                             '#t)
                        _%$obj149690%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj149690%_)))))
                 (_%self142660149695%_ _%self142660149693%_)
                 (_%proc149710%_ _%proc149686%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object149719149724%_
                         (##unchecked-structure-ref
                          _%self142660149695%_
                          '1
                          '#f
                          'for-each))
                        (_%method149720149725%_
                         (##unchecked-structure-ref
                          _%self142660149695%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149720149725%_
                     _%object149719149724%_
                     _%proc149710%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object149726149731%_
                         (##unchecked-structure-ref
                          _%self142660149695%_
                          '1
                          '#f
                          'for-each))
                        (_%method149727149732%_
                         (##unchecked-structure-ref
                          _%self142660149695%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149727149732%_
                     _%object149726149731%_
                     _%proc149710%_)))))
          _%result149678%_)))
    (define hash-keys
      (lambda (_%h148122%_)
        (let* ((_%h148128%_
                (let ((_%$obj148125%_ _%h148122%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148125%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148125%_)))
                           '#t)
                      _%$obj148125%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148125%_)))))
               (_%h148130%_ _%h148128%_))
          (__hash-keys _%h148130%_))))
    (define __hash-values
      (lambda (_%h149598%_)
        (let* ((_%h149601%_ _%h149598%_) (_%result149610%_ '()))
          (let* ((_%self142660149612%_ _%h149601%_)
                 (_%proc149618%_
                  (lambda (_%k149615%_ _%v149616%_)
                    (set! _%result149610%_
                          (cons _%v149616%_ _%result149610%_))))
                 (_%self142660149625%_
                  (let ((_%$obj149622%_ _%self142660149612%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj149622%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj149622%_)))
                             '#t)
                        _%$obj149622%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj149622%_)))))
                 (_%self142660149627%_ _%self142660149625%_)
                 (_%proc149642%_ _%proc149618%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object149651149656%_
                         (##unchecked-structure-ref
                          _%self142660149627%_
                          '1
                          '#f
                          'for-each))
                        (_%method149652149657%_
                         (##unchecked-structure-ref
                          _%self142660149627%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149652149657%_
                     _%object149651149656%_
                     _%proc149642%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object149658149663%_
                         (##unchecked-structure-ref
                          _%self142660149627%_
                          '1
                          '#f
                          'for-each))
                        (_%method149659149664%_
                         (##unchecked-structure-ref
                          _%self142660149627%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149659149664%_
                     _%object149658149663%_
                     _%proc149642%_)))))
          _%result149610%_)))
    (define hash-values
      (lambda (_%h148260%_)
        (let* ((_%h148266%_
                (let ((_%$obj148263%_ _%h148260%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148263%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148263%_)))
                           '#t)
                      _%$obj148263%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148263%_)))))
               (_%h148268%_ _%h148266%_))
          (__hash-values _%h148268%_))))
    (define __hash-copy
      (lambda (_%h149547%_)
        (let* ((_%h149550%_ _%h149547%_)
               (_%self142073149559%_ _%h149550%_)
               (_%self142073149566%_
                (let ((_%$obj149563%_ _%self142073149559%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149563%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149563%_)))
                           '#t)
                      _%$obj149563%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149563%_)))))
               (_%self142073149568%_ _%self142073149566%_))
          (if __DEBUG
              (let ((_%$obj149588%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object149580149585%_
                              (##unchecked-structure-ref
                               _%self142073149568%_
                               '1
                               '#f
                               'copy))
                             (_%method149581149586%_
                              (##unchecked-structure-ref
                               _%self142073149568%_
                               '3
                               '#f
                               'copy)))
                         (_%method149581149586%_ _%object149580149585%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj149588%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj149588%_)))
                         '#t)
                    _%$obj149588%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj149588%_))))
              (let ()
                (declare (not safe))
                (let ((_%object149590149595%_
                       (##unchecked-structure-ref
                        _%self142073149568%_
                        '1
                        '#f
                        'copy))
                      (_%method149591149596%_
                       (##unchecked-structure-ref
                        _%self142073149568%_
                        '3
                        '#f
                        'copy)))
                  (_%method149591149596%_ _%object149590149595%_)))))))
    (define hash-copy
      (lambda (_%h148398%_)
        (let* ((_%h148404%_
                (let ((_%$obj148401%_ _%h148398%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148401%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148401%_)))
                           '#t)
                      _%$obj148401%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148401%_)))))
               (_%h148406%_ _%h148404%_))
          (__hash-copy _%h148406%_))))
    (define __hash-clear!
      (lambda (_%h149499%_)
        (let* ((_%h149502%_ _%h149499%_)
               (_%self141781149511%_ _%h149502%_)
               (_%self141781149518%_
                (let ((_%$obj149515%_ _%self141781149511%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149515%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149515%_)))
                           '#t)
                      _%$obj149515%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149515%_)))))
               (_%self141781149520%_ _%self141781149518%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object149532149537%_
                       (##unchecked-structure-ref
                        _%self141781149520%_
                        '1
                        '#f
                        'clear!))
                      (_%method149533149538%_
                       (##unchecked-structure-ref
                        _%self141781149520%_
                        '2
                        '#f
                        'clear!)))
                  (_%method149533149538%_ _%object149532149537%_)))
              (let ()
                (declare (not safe))
                (let ((_%object149539149544%_
                       (##unchecked-structure-ref
                        _%self141781149520%_
                        '1
                        '#f
                        'clear!))
                      (_%method149540149545%_
                       (##unchecked-structure-ref
                        _%self141781149520%_
                        '2
                        '#f
                        'clear!)))
                  (_%method149540149545%_ _%object149539149544%_)))))))
    (define hash-clear!
      (lambda (_%h148536%_)
        (let* ((_%h148542%_
                (let ((_%$obj148539%_ _%h148536%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148539%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148539%_)))
                           '#t)
                      _%$obj148539%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148539%_)))))
               (_%h148544%_ _%h148542%_))
          (__hash-clear! _%h148544%_))))
    (define __hash-merge
      (lambda (_%h149445%_ . _%rest149446%_)
        (let* ((_%h149449%_ _%h149445%_)
               (_%copy149497%_
                (let* ((_%self142073149458%_ _%h149449%_)
                       (_%self142073149465%_
                        (let ((_%$obj149462%_ _%self142073149458%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj149462%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj149462%_)))
                                   '#t)
                              _%$obj149462%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj149462%_)))))
                       (_%self142073149467%_ _%self142073149465%_))
                  (if __DEBUG
                      (let ((_%$obj149487%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object149479149484%_
                                      (##unchecked-structure-ref
                                       _%self142073149467%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method149480149485%_
                                      (##unchecked-structure-ref
                                       _%self142073149467%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method149480149485%_
                                  _%object149479149484%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj149487%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj149487%_)))
                                 '#t)
                            _%$obj149487%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj149487%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object149489149494%_
                               (##unchecked-structure-ref
                                _%self142073149467%_
                                '1
                                '#f
                                'copy))
                              (_%method149490149495%_
                               (##unchecked-structure-ref
                                _%self142073149467%_
                                '3
                                '#f
                                'copy)))
                          (_%method149490149495%_ _%object149489149494%_)))))))
          (apply hash-merge! _%copy149497%_ _%rest149446%_)
          _%copy149497%_)))
    (define hash-merge
      (lambda (_%h148674%_ . _%rest148675%_)
        (let* ((_%h148681%_
                (let ((_%$obj148678%_ _%h148674%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148678%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148678%_)))
                           '#t)
                      _%$obj148678%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148678%_)))))
               (_%h148683%_ _%h148681%_))
          (declare (not safe))
          (##apply __hash-merge _%h148683%_ _%rest148675%_))))
    (define __hash-merge-right
      (lambda (_%h149391%_ . _%rest149392%_)
        (let* ((_%h149395%_ _%h149391%_)
               (_%copy149443%_
                (let* ((_%self142073149404%_ _%h149395%_)
                       (_%self142073149411%_
                        (let ((_%$obj149408%_ _%self142073149404%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj149408%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj149408%_)))
                                   '#t)
                              _%$obj149408%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj149408%_)))))
                       (_%self142073149413%_ _%self142073149411%_))
                  (if __DEBUG
                      (let ((_%$obj149433%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object149425149430%_
                                      (##unchecked-structure-ref
                                       _%self142073149413%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method149426149431%_
                                      (##unchecked-structure-ref
                                       _%self142073149413%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method149426149431%_
                                  _%object149425149430%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj149433%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj149433%_)))
                                 '#t)
                            _%$obj149433%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj149433%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object149435149440%_
                               (##unchecked-structure-ref
                                _%self142073149413%_
                                '1
                                '#f
                                'copy))
                              (_%method149436149441%_
                               (##unchecked-structure-ref
                                _%self142073149413%_
                                '3
                                '#f
                                'copy)))
                          (_%method149436149441%_ _%object149435149440%_)))))))
          (apply hash-merge-right! _%copy149443%_ _%rest149392%_)
          _%copy149443%_)))
    (define hash-merge-right
      (lambda (_%h148813%_ . _%rest148814%_)
        (let* ((_%h148820%_
                (let ((_%$obj148817%_ _%h148813%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148817%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148817%_)))
                           '#t)
                      _%$obj148817%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148817%_)))))
               (_%h148822%_ _%h148820%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h148822%_ _%rest148814%_))))
    (define __hash-merge!
      (lambda (_%h149239%_ . _%rest149240%_)
        (let ((_%h149243%_ _%h149239%_))
          (let ((__tmp158255
                 (lambda (_%hr149252%_)
                   (let* ((_%hr149258%_
                           (let ((_%$obj149255%_ _%hr149252%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj149255%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj149255%_)))
                                      '#t)
                                 _%$obj149255%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj149255%_)))))
                          (_%hr149260%_ _%hr149258%_)
                          (_%self142660149273%_ _%hr149260%_)
                          (_%proc149348%_
                           (lambda (_%k149276%_ _%v149277%_)
                             (if (let* ((_%h149279%_ _%h149243%_)
                                        (_%k149282%_ _%k149276%_)
                                        (_%h149289%_
                                         (let ((_%$obj149286%_ _%h149279%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj149286%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj149286%_)))
                                                    '#t)
                                               _%$obj149286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj149286%_)))))
                                        (_%h149291%_ _%h149289%_))
                                   (__hash-key? _%h149291%_ _%k149282%_))
                                 '#!void
                                 (let* ((_%self143560149307%_ _%h149243%_)
                                        (_%key149310%_ _%k149276%_)
                                        (_%value149313%_ _%v149277%_)
                                        (_%self143560149320%_
                                         (let ((_%$obj149317%_
                                                _%self143560149307%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj149317%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj149317%_)))
                                                    '#t)
                                               _%$obj149317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj149317%_)))))
                                        (_%self143560149322%_
                                         _%self143560149320%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object149333149338%_
                                                (##unchecked-structure-ref
                                                 _%self143560149322%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method149334149339%_
                                                (##unchecked-structure-ref
                                                 _%self143560149322%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method149334149339%_
                                            _%object149333149338%_
                                            _%key149310%_
                                            _%value149313%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object149340149345%_
                                                (##unchecked-structure-ref
                                                 _%self143560149322%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method149341149346%_
                                                (##unchecked-structure-ref
                                                 _%self143560149322%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method149341149346%_
                                            _%object149340149345%_
                                            _%key149310%_
                                            _%value149313%_))))))))
                          (_%self142660149355%_
                           (let ((_%$obj149352%_ _%self142660149273%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj149352%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj149352%_)))
                                      '#t)
                                 _%$obj149352%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj149352%_)))))
                          (_%self142660149357%_ _%self142660149355%_)
                          (_%proc149367%_ _%proc149348%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object149376149381%_
                                  (##unchecked-structure-ref
                                   _%self142660149357%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method149377149382%_
                                  (##unchecked-structure-ref
                                   _%self142660149357%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method149377149382%_
                              _%object149376149381%_
                              _%proc149367%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object149383149388%_
                                  (##unchecked-structure-ref
                                   _%self142660149357%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method149384149389%_
                                  (##unchecked-structure-ref
                                   _%self142660149357%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method149384149389%_
                              _%object149383149388%_
                              _%proc149367%_))))))))
            (declare (not safe))
            (##for-each __tmp158255 _%rest149240%_))
          _%h149243%_)))
    (define hash-merge!
      (lambda (_%h148952%_ . _%rest148953%_)
        (let* ((_%h148959%_
                (let ((_%$obj148956%_ _%h148952%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148956%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148956%_)))
                           '#t)
                      _%$obj148956%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148956%_)))))
               (_%h148961%_ _%h148959%_))
          (declare (not safe))
          (##apply __hash-merge! _%h148961%_ _%rest148953%_))))
    (define __hash-merge-right!
      (lambda (_%h149110%_ . _%rest149111%_)
        (let ((_%h149114%_ _%h149110%_))
          (let ((__tmp158256
                 (lambda (_%hr149123%_)
                   (let* ((_%hr149129%_
                           (let ((_%$obj149126%_ _%hr149123%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj149126%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj149126%_)))
                                      '#t)
                                 _%$obj149126%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj149126%_)))))
                          (_%hr149131%_ _%hr149129%_)
                          (_%self142660149144%_ _%hr149131%_)
                          (_%proc149196%_
                           (lambda (_%k149147%_ _%v149148%_)
                             (let* ((_%self143560149150%_ _%h149114%_)
                                    (_%key149153%_ _%k149147%_)
                                    (_%value149156%_ _%v149148%_)
                                    (_%self143560149163%_
                                     (let ((_%$obj149160%_
                                            _%self143560149150%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj149160%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj149160%_)))
                                                '#t)
                                           _%$obj149160%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj149160%_)))))
                                    (_%self143560149165%_
                                     _%self143560149163%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object149181149186%_
                                            (##unchecked-structure-ref
                                             _%self143560149165%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method149182149187%_
                                            (##unchecked-structure-ref
                                             _%self143560149165%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method149182149187%_
                                        _%object149181149186%_
                                        _%key149153%_
                                        _%value149156%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object149188149193%_
                                            (##unchecked-structure-ref
                                             _%self143560149165%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method149189149194%_
                                            (##unchecked-structure-ref
                                             _%self143560149165%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method149189149194%_
                                        _%object149188149193%_
                                        _%key149153%_
                                        _%value149156%_)))))))
                          (_%self142660149203%_
                           (let ((_%$obj149200%_ _%self142660149144%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj149200%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj149200%_)))
                                      '#t)
                                 _%$obj149200%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj149200%_)))))
                          (_%self142660149205%_ _%self142660149203%_)
                          (_%proc149215%_ _%proc149196%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object149224149229%_
                                  (##unchecked-structure-ref
                                   _%self142660149205%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method149225149230%_
                                  (##unchecked-structure-ref
                                   _%self142660149205%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method149225149230%_
                              _%object149224149229%_
                              _%proc149215%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object149231149236%_
                                  (##unchecked-structure-ref
                                   _%self142660149205%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method149232149237%_
                                  (##unchecked-structure-ref
                                   _%self142660149205%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method149232149237%_
                              _%object149231149236%_
                              _%proc149215%_))))))))
            (declare (not safe))
            (##for-each __tmp158256 _%rest149111%_))
          _%h149114%_)))
    (define hash-merge-right!
      (lambda (_%h149091%_ . _%rest149092%_)
        (let* ((_%h149098%_
                (let ((_%$obj149095%_ _%h149091%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149095%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149095%_)))
                           '#t)
                      _%$obj149095%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149095%_)))))
               (_%h149100%_ _%h149098%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h149100%_ _%rest149092%_))))))
