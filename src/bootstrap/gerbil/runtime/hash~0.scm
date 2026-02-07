(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1770505714)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp158193 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp158193
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args156935%_
        (apply make-instance UnboundKeyError::t _%$args156935%_)))
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
      (lambda (_%where156809%_ _%message156810%_ . _%irritants156811%_)
        (let ((__tmp158194
               (let ((__obj158185
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj158185
                    _%message156810%_
                    'where:
                    _%where156809%_
                    'irritants:
                    _%irritants156811%_))
                 __obj158185)))
          (declare (not safe))
          (raise __tmp158194))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp158195 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp158195
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj158187
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj158187
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj158187))
    (define make-HashTable
      (lambda (_%obj156807%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj156807%_))))
    (define try-HashTable
      (lambda (_%obj156805%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj156805%_))))
    (define HashTable?
      (lambda (_%obj156803%_)
        (let ((__tmp158196
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj156803%_ __tmp158196))))
    (define is-HashTable?
      (lambda (_%obj156800%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj156800%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self141790142034%_)
        (let ((_%self141790142036%_ _%self141790142034%_))
          (declare (not safe))
          (let ((_%object142043142048%_
                 (##unchecked-structure-ref
                  _%self141790142036%_
                  '1
                  '#f
                  'clear!))
                (_%method142044142049%_
                 (##unchecked-structure-ref
                  _%self141790142036%_
                  '2
                  '#f
                  'clear!)))
            (_%method142044142049%_ _%object142043142048%_)))))
    (define ::HashTable-clear!
      (lambda (_%self141791142051%_)
        (let* ((_%self141791142056%_
                (let ((_%$obj142053%_ _%self141791142051%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj142053%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj142053%_)))
                           '#t)
                      _%$obj142053%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj142053%_)))))
               (_%self141791142058%_ _%self141791142056%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object142066142071%_
                       (##unchecked-structure-ref
                        _%self141791142058%_
                        '1
                        '#f
                        'clear!))
                      (_%method142067142072%_
                       (##unchecked-structure-ref
                        _%self141791142058%_
                        '2
                        '#f
                        'clear!)))
                  (_%method142067142072%_ _%object142066142071%_)))
              (let ()
                (declare (not safe))
                (let ((_%object142073142078%_
                       (##unchecked-structure-ref
                        _%self141791142058%_
                        '1
                        '#f
                        'clear!))
                      (_%method142074142079%_
                       (##unchecked-structure-ref
                        _%self141791142058%_
                        '2
                        '#f
                        'clear!)))
                  (_%method142074142079%_ _%object142073142078%_)))))))
    (define __HashTable-copy
      (lambda (_%self142082142325%_)
        (let ((_%self142082142327%_ _%self142082142325%_))
          (declare (not safe))
          (let ((_%object142334142339%_
                 (##unchecked-structure-ref _%self142082142327%_ '1 '#f 'copy))
                (_%method142335142340%_
                 (##unchecked-structure-ref
                  _%self142082142327%_
                  '3
                  '#f
                  'copy)))
            (_%method142335142340%_ _%object142334142339%_)))))
    (define ::HashTable-copy
      (lambda (_%self142083142342%_)
        (let* ((_%self142083142347%_
                (let ((_%$obj142344%_ _%self142083142342%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj142344%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj142344%_)))
                           '#t)
                      _%$obj142344%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj142344%_)))))
               (_%self142083142349%_ _%self142083142347%_))
          (if __DEBUG
              (let ((_%$obj142365%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object142357142362%_
                              (##unchecked-structure-ref
                               _%self142083142349%_
                               '1
                               '#f
                               'copy))
                             (_%method142358142363%_
                              (##unchecked-structure-ref
                               _%self142083142349%_
                               '3
                               '#f
                               'copy)))
                         (_%method142358142363%_ _%object142357142362%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj142365%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj142365%_)))
                         '#t)
                    _%$obj142365%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj142365%_))))
              (let ()
                (declare (not safe))
                (let ((_%object142367142372%_
                       (##unchecked-structure-ref
                        _%self142083142349%_
                        '1
                        '#f
                        'copy))
                      (_%method142368142373%_
                       (##unchecked-structure-ref
                        _%self142083142349%_
                        '3
                        '#f
                        'copy)))
                  (_%method142368142373%_ _%object142367142372%_)))))))
    (define __HashTable-delete!
      (lambda (_%self142376142619%_ _%key142620%_)
        (let ((_%self142376142622%_ _%self142376142619%_))
          (declare (not safe))
          (let ((_%object142629142634%_
                 (##unchecked-structure-ref
                  _%self142376142622%_
                  '1
                  '#f
                  'delete!))
                (_%method142630142635%_
                 (##unchecked-structure-ref
                  _%self142376142622%_
                  '4
                  '#f
                  'delete!)))
            (_%method142630142635%_ _%object142629142634%_ _%key142620%_)))))
    (define ::HashTable-delete!
      (lambda (_%self142377142637%_ _%key142638%_)
        (let* ((_%self142377142643%_
                (let ((_%$obj142640%_ _%self142377142637%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj142640%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj142640%_)))
                           '#t)
                      _%$obj142640%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj142640%_)))))
               (_%self142377142645%_ _%self142377142643%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object142653142658%_
                       (##unchecked-structure-ref
                        _%self142377142645%_
                        '1
                        '#f
                        'delete!))
                      (_%method142654142659%_
                       (##unchecked-structure-ref
                        _%self142377142645%_
                        '4
                        '#f
                        'delete!)))
                  (_%method142654142659%_
                   _%object142653142658%_
                   _%key142638%_)))
              (let ()
                (declare (not safe))
                (let ((_%object142660142665%_
                       (##unchecked-structure-ref
                        _%self142377142645%_
                        '1
                        '#f
                        'delete!))
                      (_%method142661142666%_
                       (##unchecked-structure-ref
                        _%self142377142645%_
                        '4
                        '#f
                        'delete!)))
                  (_%method142661142666%_
                   _%object142660142665%_
                   _%key142638%_)))))))
    (define __HashTable-for-each
      (lambda (_%self142669142912%_ _%proc142913%_)
        (let* ((_%self142669142915%_ _%self142669142912%_)
               (_%proc142922%_ _%proc142913%_))
          (declare (not safe))
          (let ((_%object142930142935%_
                 (##unchecked-structure-ref
                  _%self142669142915%_
                  '1
                  '#f
                  'for-each))
                (_%method142931142936%_
                 (##unchecked-structure-ref
                  _%self142669142915%_
                  '5
                  '#f
                  'for-each)))
            (_%method142931142936%_ _%object142930142935%_ _%proc142922%_)))))
    (define ::HashTable-for-each
      (lambda (_%self142670142938%_ _%proc142939%_)
        (let* ((_%self142670142944%_
                (let ((_%$obj142941%_ _%self142670142938%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj142941%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj142941%_)))
                           '#t)
                      _%$obj142941%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj142941%_)))))
               (_%self142670142946%_ _%self142670142944%_))
          (if (procedure? _%proc142939%_)
              (let ((_%proc142955%_ _%proc142939%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object142964142969%_
                             (##unchecked-structure-ref
                              _%self142670142946%_
                              '1
                              '#f
                              'for-each))
                            (_%method142965142970%_
                             (##unchecked-structure-ref
                              _%self142670142946%_
                              '5
                              '#f
                              'for-each)))
                        (_%method142965142970%_
                         _%object142964142969%_
                         _%proc142955%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object142971142976%_
                             (##unchecked-structure-ref
                              _%self142670142946%_
                              '1
                              '#f
                              'for-each))
                            (_%method142972142977%_
                             (##unchecked-structure-ref
                              _%self142670142946%_
                              '5
                              '#f
                              'for-each)))
                        (_%method142972142977%_
                         _%object142971142976%_
                         _%proc142955%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc142939%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self142980143223%_)
        (let ((_%self142980143225%_ _%self142980143223%_))
          (declare (not safe))
          (let ((_%object143232143237%_
                 (##unchecked-structure-ref
                  _%self142980143225%_
                  '1
                  '#f
                  'length))
                (_%method143233143238%_
                 (##unchecked-structure-ref
                  _%self142980143225%_
                  '6
                  '#f
                  'length)))
            (_%method143233143238%_ _%object143232143237%_)))))
    (define ::HashTable-length
      (lambda (_%self142981143240%_)
        (let* ((_%self142981143245%_
                (let ((_%$obj143242%_ _%self142981143240%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj143242%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj143242%_)))
                           '#t)
                      _%$obj143242%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj143242%_)))))
               (_%self142981143247%_ _%self142981143245%_))
          (if __DEBUG
              (let ((_%val143263%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object143255143260%_
                              (##unchecked-structure-ref
                               _%self142981143247%_
                               '1
                               '#f
                               'length))
                             (_%method143256143261%_
                              (##unchecked-structure-ref
                               _%self142981143247%_
                               '6
                               '#f
                               'length)))
                         (_%method143256143261%_ _%object143255143260%_)))))
                (if (fixnum? _%val143263%_)
                    _%val143263%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val143263%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object143265143270%_
                       (##unchecked-structure-ref
                        _%self142981143247%_
                        '1
                        '#f
                        'length))
                      (_%method143266143271%_
                       (##unchecked-structure-ref
                        _%self142981143247%_
                        '6
                        '#f
                        'length)))
                  (_%method143266143271%_ _%object143265143270%_)))))))
    (define __HashTable-ref
      (lambda (_%self143274143517%_ _%key143518%_ _%default143519%_)
        (let ((_%self143274143521%_ _%self143274143517%_))
          (declare (not safe))
          (let ((_%object143528143533%_
                 (##unchecked-structure-ref _%self143274143521%_ '1 '#f 'ref))
                (_%method143529143534%_
                 (##unchecked-structure-ref _%self143274143521%_ '7 '#f 'ref)))
            (_%method143529143534%_
             _%object143528143533%_
             _%key143518%_
             _%default143519%_)))))
    (define ::HashTable-ref
      (lambda (_%self143275143536%_ _%key143537%_ _%default143538%_)
        (let* ((_%self143275143543%_
                (let ((_%$obj143540%_ _%self143275143536%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj143540%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj143540%_)))
                           '#t)
                      _%$obj143540%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj143540%_)))))
               (_%self143275143545%_ _%self143275143543%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object143553143558%_
                       (##unchecked-structure-ref
                        _%self143275143545%_
                        '1
                        '#f
                        'ref))
                      (_%method143554143559%_
                       (##unchecked-structure-ref
                        _%self143275143545%_
                        '7
                        '#f
                        'ref)))
                  (_%method143554143559%_
                   _%object143553143558%_
                   _%key143537%_
                   _%default143538%_)))
              (let ()
                (declare (not safe))
                (let ((_%object143560143565%_
                       (##unchecked-structure-ref
                        _%self143275143545%_
                        '1
                        '#f
                        'ref))
                      (_%method143561143566%_
                       (##unchecked-structure-ref
                        _%self143275143545%_
                        '7
                        '#f
                        'ref)))
                  (_%method143561143566%_
                   _%object143560143565%_
                   _%key143537%_
                   _%default143538%_)))))))
    (define __HashTable-set!
      (lambda (_%self143569143812%_ _%key143813%_ _%value143814%_)
        (let ((_%self143569143816%_ _%self143569143812%_))
          (declare (not safe))
          (let ((_%object143823143828%_
                 (##unchecked-structure-ref _%self143569143816%_ '1 '#f 'set!))
                (_%method143824143829%_
                 (##unchecked-structure-ref
                  _%self143569143816%_
                  '8
                  '#f
                  'set!)))
            (_%method143824143829%_
             _%object143823143828%_
             _%key143813%_
             _%value143814%_)))))
    (define ::HashTable-set!
      (lambda (_%self143570143831%_ _%key143832%_ _%value143833%_)
        (let* ((_%self143570143838%_
                (let ((_%$obj143835%_ _%self143570143831%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj143835%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj143835%_)))
                           '#t)
                      _%$obj143835%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj143835%_)))))
               (_%self143570143840%_ _%self143570143838%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object143848143853%_
                       (##unchecked-structure-ref
                        _%self143570143840%_
                        '1
                        '#f
                        'set!))
                      (_%method143849143854%_
                       (##unchecked-structure-ref
                        _%self143570143840%_
                        '8
                        '#f
                        'set!)))
                  (_%method143849143854%_
                   _%object143848143853%_
                   _%key143832%_
                   _%value143833%_)))
              (let ()
                (declare (not safe))
                (let ((_%object143855143860%_
                       (##unchecked-structure-ref
                        _%self143570143840%_
                        '1
                        '#f
                        'set!))
                      (_%method143856143861%_
                       (##unchecked-structure-ref
                        _%self143570143840%_
                        '8
                        '#f
                        'set!)))
                  (_%method143856143861%_
                   _%object143855143860%_
                   _%key143832%_
                   _%value143833%_)))))))
    (define __HashTable-update!
      (lambda (_%self143864144107%_
               _%key144108%_
               _%proc144109%_
               _%default144110%_)
        (let* ((_%self143864144112%_ _%self143864144107%_)
               (_%proc144119%_ _%proc144109%_))
          (declare (not safe))
          (let ((_%object144127144132%_
                 (##unchecked-structure-ref
                  _%self143864144112%_
                  '1
                  '#f
                  'update!))
                (_%method144128144133%_
                 (##unchecked-structure-ref
                  _%self143864144112%_
                  '9
                  '#f
                  'update!)))
            (_%method144128144133%_
             _%object144127144132%_
             _%key144108%_
             _%proc144119%_
             _%default144110%_)))))
    (define ::HashTable-update!
      (lambda (_%self143865144135%_
               _%key144136%_
               _%proc144137%_
               _%default144138%_)
        (let* ((_%self143865144143%_
                (let ((_%$obj144140%_ _%self143865144135%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144140%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144140%_)))
                           '#t)
                      _%$obj144140%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj144140%_)))))
               (_%self143865144145%_ _%self143865144143%_))
          (if (procedure? _%proc144137%_)
              (let ((_%proc144154%_ _%proc144137%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object144163144168%_
                             (##unchecked-structure-ref
                              _%self143865144145%_
                              '1
                              '#f
                              'update!))
                            (_%method144164144169%_
                             (##unchecked-structure-ref
                              _%self143865144145%_
                              '9
                              '#f
                              'update!)))
                        (_%method144164144169%_
                         _%object144163144168%_
                         _%key144136%_
                         _%proc144154%_
                         _%default144138%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object144170144175%_
                             (##unchecked-structure-ref
                              _%self143865144145%_
                              '1
                              '#f
                              'update!))
                            (_%method144171144176%_
                             (##unchecked-structure-ref
                              _%self143865144145%_
                              '9
                              '#f
                              'update!)))
                        (_%method144171144176%_
                         _%object144170144175%_
                         _%key144136%_
                         _%proc144154%_
                         _%default144138%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc144137%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp158197 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp158197
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj158189
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj158189
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj158189))
    (define make-Locker
      (lambda (_%obj156798%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj156798%_))))
    (define try-Locker
      (lambda (_%obj156796%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj156796%_))))
    (define Locker?
      (lambda (_%obj156794%_)
        (let ((__tmp158198
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj156794%_ __tmp158198))))
    (define is-Locker?
      (lambda (_%obj156791%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj156791%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self144179144422%_)
        (let ((_%self144179144424%_ _%self144179144422%_))
          (declare (not safe))
          (let ((_%object144431144436%_
                 (##unchecked-structure-ref
                  _%self144179144424%_
                  '1
                  '#f
                  'read-lock!))
                (_%method144432144437%_
                 (##unchecked-structure-ref
                  _%self144179144424%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method144432144437%_ _%object144431144436%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self144180144439%_)
        (let* ((_%self144180144444%_
                (let ((_%$obj144441%_ _%self144180144439%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144441%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144441%_)))
                           '#t)
                      _%$obj144441%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj144441%_)))))
               (_%self144180144446%_ _%self144180144444%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object144454144459%_
                       (##unchecked-structure-ref
                        _%self144180144446%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method144455144460%_
                       (##unchecked-structure-ref
                        _%self144180144446%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method144455144460%_ _%object144454144459%_)))
              (let ()
                (declare (not safe))
                (let ((_%object144461144466%_
                       (##unchecked-structure-ref
                        _%self144180144446%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method144462144467%_
                       (##unchecked-structure-ref
                        _%self144180144446%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method144462144467%_ _%object144461144466%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self144470144713%_)
        (let ((_%self144470144715%_ _%self144470144713%_))
          (declare (not safe))
          (let ((_%object144722144727%_
                 (##unchecked-structure-ref
                  _%self144470144715%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method144723144728%_
                 (##unchecked-structure-ref
                  _%self144470144715%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method144723144728%_ _%object144722144727%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self144471144730%_)
        (let* ((_%self144471144735%_
                (let ((_%$obj144732%_ _%self144471144730%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144732%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144732%_)))
                           '#t)
                      _%$obj144732%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj144732%_)))))
               (_%self144471144737%_ _%self144471144735%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object144745144750%_
                       (##unchecked-structure-ref
                        _%self144471144737%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method144746144751%_
                       (##unchecked-structure-ref
                        _%self144471144737%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method144746144751%_ _%object144745144750%_)))
              (let ()
                (declare (not safe))
                (let ((_%object144752144757%_
                       (##unchecked-structure-ref
                        _%self144471144737%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method144753144758%_
                       (##unchecked-structure-ref
                        _%self144471144737%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method144753144758%_ _%object144752144757%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self144761145004%_)
        (let ((_%self144761145006%_ _%self144761145004%_))
          (declare (not safe))
          (let ((_%object145013145018%_
                 (##unchecked-structure-ref
                  _%self144761145006%_
                  '1
                  '#f
                  'write-lock!))
                (_%method145014145019%_
                 (##unchecked-structure-ref
                  _%self144761145006%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method145014145019%_ _%object145013145018%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self144762145021%_)
        (let* ((_%self144762145026%_
                (let ((_%$obj145023%_ _%self144762145021%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145023%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145023%_)))
                           '#t)
                      _%$obj145023%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj145023%_)))))
               (_%self144762145028%_ _%self144762145026%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object145036145041%_
                       (##unchecked-structure-ref
                        _%self144762145028%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method145037145042%_
                       (##unchecked-structure-ref
                        _%self144762145028%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method145037145042%_ _%object145036145041%_)))
              (let ()
                (declare (not safe))
                (let ((_%object145043145048%_
                       (##unchecked-structure-ref
                        _%self144762145028%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method145044145049%_
                       (##unchecked-structure-ref
                        _%self144762145028%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method145044145049%_ _%object145043145048%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self145052145295%_)
        (let ((_%self145052145297%_ _%self145052145295%_))
          (declare (not safe))
          (let ((_%object145304145309%_
                 (##unchecked-structure-ref
                  _%self145052145297%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method145305145310%_
                 (##unchecked-structure-ref
                  _%self145052145297%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method145305145310%_ _%object145304145309%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self145053145312%_)
        (let* ((_%self145053145317%_
                (let ((_%$obj145314%_ _%self145053145312%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145314%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145314%_)))
                           '#t)
                      _%$obj145314%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj145314%_)))))
               (_%self145053145319%_ _%self145053145317%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object145327145332%_
                       (##unchecked-structure-ref
                        _%self145053145319%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method145328145333%_
                       (##unchecked-structure-ref
                        _%self145053145319%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method145328145333%_ _%object145327145332%_)))
              (let ()
                (declare (not safe))
                (let ((_%object145334145339%_
                       (##unchecked-structure-ref
                        _%self145053145319%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method145335145340%_
                       (##unchecked-structure-ref
                        _%self145053145319%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method145335145340%_ _%object145334145339%_)))))))
    (let* ((_%klass156754%_ __table::t)
           (_%id156757%_ 'HashTable::ref)
           (_%proc156760%_ raw-table-ref)
           (_%rebind?156763%_ '#f)
           (_%id156768%_ _%id156757%_)
           (_%proc156781%_ _%proc156760%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156754%_
       _%id156768%_
       _%proc156781%_
       _%rebind?156763%_))
    (let* ((_%klass156717%_ __table::t)
           (_%id156720%_ 'HashTable::set!)
           (_%proc156723%_ raw-table-set!)
           (_%rebind?156726%_ '#f)
           (_%id156731%_ _%id156720%_)
           (_%proc156744%_ _%proc156723%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156717%_
       _%id156731%_
       _%proc156744%_
       _%rebind?156726%_))
    (let* ((_%klass156680%_ __table::t)
           (_%id156683%_ 'HashTable::update!)
           (_%proc156686%_ raw-table-update!)
           (_%rebind?156689%_ '#f)
           (_%id156694%_ _%id156683%_)
           (_%proc156707%_ _%proc156686%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156680%_
       _%id156694%_
       _%proc156707%_
       _%rebind?156689%_))
    (let* ((_%klass156643%_ __table::t)
           (_%id156646%_ 'HashTable::delete!)
           (_%proc156649%_ raw-table-delete!)
           (_%rebind?156652%_ '#f)
           (_%id156657%_ _%id156646%_)
           (_%proc156670%_ _%proc156649%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156643%_
       _%id156657%_
       _%proc156670%_
       _%rebind?156652%_))
    (let* ((_%klass156606%_ __table::t)
           (_%id156609%_ 'HashTable::for-each)
           (_%proc156612%_ raw-table-for-each)
           (_%rebind?156615%_ '#f)
           (_%id156620%_ _%id156609%_)
           (_%proc156633%_ _%proc156612%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156606%_
       _%id156620%_
       _%proc156633%_
       _%rebind?156615%_))
    (let* ((_%klass156569%_ __table::t)
           (_%id156572%_ 'HashTable::length)
           (_%proc156575%_ &raw-table-count)
           (_%rebind?156578%_ '#f)
           (_%id156583%_ _%id156572%_)
           (_%proc156596%_ _%proc156575%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156569%_
       _%id156583%_
       _%proc156596%_
       _%rebind?156578%_))
    (let* ((_%klass156532%_ __table::t)
           (_%id156535%_ 'HashTable::copy)
           (_%proc156538%_ raw-table-copy)
           (_%rebind?156541%_ '#f)
           (_%id156546%_ _%id156535%_)
           (_%proc156559%_ _%proc156538%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156532%_
       _%id156546%_
       _%proc156559%_
       _%rebind?156541%_))
    (let* ((_%klass156495%_ __table::t)
           (_%id156498%_ 'HashTable::clear!)
           (_%proc156501%_ raw-table-clear!)
           (_%rebind?156504%_ '#f)
           (_%id156509%_ _%id156498%_)
           (_%proc156522%_ _%proc156501%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156495%_
       _%id156509%_
       _%proc156522%_
       _%rebind?156504%_))
    (let* ((_%klass156458%_ __gc-table::t)
           (_%id156461%_ 'HashTable::ref)
           (_%proc156464%_ gc-table-ref)
           (_%rebind?156467%_ '#f)
           (_%id156472%_ _%id156461%_)
           (_%proc156485%_ _%proc156464%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156458%_
       _%id156472%_
       _%proc156485%_
       _%rebind?156467%_))
    (let* ((_%klass156421%_ __gc-table::t)
           (_%id156424%_ 'HashTable::set!)
           (_%proc156427%_ gc-table-set!)
           (_%rebind?156430%_ '#f)
           (_%id156435%_ _%id156424%_)
           (_%proc156448%_ _%proc156427%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156421%_
       _%id156435%_
       _%proc156448%_
       _%rebind?156430%_))
    (let* ((_%klass156384%_ __gc-table::t)
           (_%id156387%_ 'HashTable::update!)
           (_%proc156390%_ gc-table-update!)
           (_%rebind?156393%_ '#f)
           (_%id156398%_ _%id156387%_)
           (_%proc156411%_ _%proc156390%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156384%_
       _%id156398%_
       _%proc156411%_
       _%rebind?156393%_))
    (let* ((_%klass156347%_ __gc-table::t)
           (_%id156350%_ 'HashTable::delete!)
           (_%proc156353%_ gc-table-delete!)
           (_%rebind?156356%_ '#f)
           (_%id156361%_ _%id156350%_)
           (_%proc156374%_ _%proc156353%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156347%_
       _%id156361%_
       _%proc156374%_
       _%rebind?156356%_))
    (let* ((_%klass156310%_ __gc-table::t)
           (_%id156313%_ 'HashTable::for-each)
           (_%proc156316%_ gc-table-for-each)
           (_%rebind?156319%_ '#f)
           (_%id156324%_ _%id156313%_)
           (_%proc156337%_ _%proc156316%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156310%_
       _%id156324%_
       _%proc156337%_
       _%rebind?156319%_))
    (let* ((_%klass156273%_ __gc-table::t)
           (_%id156276%_ 'HashTable::length)
           (_%proc156279%_ gc-table-length)
           (_%rebind?156282%_ '#f)
           (_%id156287%_ _%id156276%_)
           (_%proc156300%_ _%proc156279%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156273%_
       _%id156287%_
       _%proc156300%_
       _%rebind?156282%_))
    (let* ((_%klass156236%_ __gc-table::t)
           (_%id156239%_ 'HashTable::copy)
           (_%proc156242%_ gc-table-copy)
           (_%rebind?156245%_ '#f)
           (_%id156250%_ _%id156239%_)
           (_%proc156263%_ _%proc156242%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156236%_
       _%id156250%_
       _%proc156263%_
       _%rebind?156245%_))
    (let* ((_%klass156199%_ __gc-table::t)
           (_%id156202%_ 'HashTable::clear!)
           (_%proc156205%_ gc-table-clear!)
           (_%rebind?156208%_ '#f)
           (_%id156213%_ _%id156202%_)
           (_%proc156226%_ _%proc156205%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156199%_
       _%id156213%_
       _%proc156226%_
       _%rebind?156208%_))
    (define gambit-table-update!
      (lambda (_%table156192%_
               _%key156193%_
               _%update156194%_
               _%default156195%_)
        (let ((_%result156197%_
               (table-ref _%table156192%_ _%key156193%_ _%default156195%_)))
          (table-set!
           _%table156192%_
           _%key156193%_
           (_%update156194%_ _%default156195%_)))))
    (define gambit-table-for-each
      (lambda (_%table156189%_ _%proc156190%_)
        (table-for-each _%proc156190%_ _%table156189%_)))
    (define gambit-table-clear!
      (lambda (_%table156187%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table156187%_ '0 '5 '#f '#f))))
    (let* ((_%klass156150%_ (macro-type-table))
           (_%id156153%_ 'HashTable::ref)
           (_%proc156156%_ table-ref)
           (_%rebind?156159%_ '#f)
           (_%id156164%_ _%id156153%_)
           (_%proc156177%_ _%proc156156%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156150%_
       _%id156164%_
       _%proc156177%_
       _%rebind?156159%_))
    (let* ((_%klass156113%_ (macro-type-table))
           (_%id156116%_ 'HashTable::set!)
           (_%proc156119%_ table-set!)
           (_%rebind?156122%_ '#f)
           (_%id156127%_ _%id156116%_)
           (_%proc156140%_ _%proc156119%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156113%_
       _%id156127%_
       _%proc156140%_
       _%rebind?156122%_))
    (let* ((_%klass156076%_ (macro-type-table))
           (_%id156079%_ 'HashTable::update!)
           (_%proc156082%_ gambit-table-update!)
           (_%rebind?156085%_ '#f)
           (_%id156090%_ _%id156079%_)
           (_%proc156103%_ _%proc156082%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156076%_
       _%id156090%_
       _%proc156103%_
       _%rebind?156085%_))
    (let* ((_%klass156039%_ (macro-type-table))
           (_%id156042%_ 'HashTable::delete!)
           (_%proc156045%_ table-set!)
           (_%rebind?156048%_ '#f)
           (_%id156053%_ _%id156042%_)
           (_%proc156066%_ _%proc156045%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156039%_
       _%id156053%_
       _%proc156066%_
       _%rebind?156048%_))
    (let* ((_%klass156002%_ (macro-type-table))
           (_%id156005%_ 'HashTable::for-each)
           (_%proc156008%_ gambit-table-for-each)
           (_%rebind?156011%_ '#f)
           (_%id156016%_ _%id156005%_)
           (_%proc156029%_ _%proc156008%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156002%_
       _%id156016%_
       _%proc156029%_
       _%rebind?156011%_))
    (let* ((_%klass155965%_ (macro-type-table))
           (_%id155968%_ 'HashTable::length)
           (_%proc155971%_ table-length)
           (_%rebind?155974%_ '#f)
           (_%id155979%_ _%id155968%_)
           (_%proc155992%_ _%proc155971%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155965%_
       _%id155979%_
       _%proc155992%_
       _%rebind?155974%_))
    (let* ((_%klass155928%_ (macro-type-table))
           (_%id155931%_ 'HashTable::copy)
           (_%proc155934%_ table-copy)
           (_%rebind?155937%_ '#f)
           (_%id155942%_ _%id155931%_)
           (_%proc155955%_ _%proc155934%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155928%_
       _%id155942%_
       _%proc155955%_
       _%rebind?155937%_))
    (let* ((_%klass155891%_ (macro-type-table))
           (_%id155894%_ 'HashTable::clear!)
           (_%proc155897%_ gambit-table-clear!)
           (_%rebind?155900%_ '#f)
           (_%id155905%_ _%id155894%_)
           (_%proc155918%_ _%proc155897%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155891%_
       _%id155905%_
       _%proc155918%_
       _%rebind?155900%_))
    (define hash-table::t
      (let* ((_%slots155854%_ '(table count free hash test seed))
             (_%slot-vector155856%_ (list->vector (cons '#f _%slots155854%_)))
             (_%slot-table155882%_
              (let ((_%slot-table155858%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp158201
                       (lambda (_%slot155860%_ _%field155861%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table155858%_
                            _%slot155860%_
                            _%field155861%_))
                         (let ((__tmp158202
                                (let ((_%sym155863%_ _%slot155860%_))
                                  (if (symbol? _%sym155863%_)
                                      (let ((_%sym155868%_ _%sym155863%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym155868%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym155863%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table155858%_
                            __tmp158202
                            _%field155861%_))))
                      (__tmp158199
                       (let ((__tmp158200
                              (let ()
                                (declare (not safe))
                                (##length _%slots155854%_))))
                         (declare (not safe))
                         (##iota __tmp158200 '1))))
                  (declare (not safe))
                  (##for-each __tmp158201 _%slots155854%_ __tmp158199))
                _%slot-table155858%_))
             (_%flags155884%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields155886%_ '#())
             (_%properties155888%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots155854%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp158203 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags155884%_
         __table::t
         _%fields155886%_
         __tmp158203
         _%slot-vector155856%_
         _%slot-table155882%_
         _%properties155888%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots155817%_ '(gcht immediate))
             (_%slot-vector155819%_ (list->vector (cons '#f _%slots155817%_)))
             (_%slot-table155845%_
              (let ((_%slot-table155821%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp158206
                       (lambda (_%slot155823%_ _%field155824%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table155821%_
                            _%slot155823%_
                            _%field155824%_))
                         (let ((__tmp158207
                                (let ((_%sym155826%_ _%slot155823%_))
                                  (if (symbol? _%sym155826%_)
                                      (let ((_%sym155831%_ _%sym155826%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym155831%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym155826%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table155821%_
                            __tmp158207
                            _%field155824%_))))
                      (__tmp158204
                       (let ((__tmp158205
                              (let ()
                                (declare (not safe))
                                (##length _%slots155817%_))))
                         (declare (not safe))
                         (##iota __tmp158205 '1))))
                  (declare (not safe))
                  (##for-each __tmp158206 _%slots155817%_ __tmp158204))
                _%slot-table155821%_))
             (_%flags155847%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields155849%_ '#())
             (_%properties155851%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots155817%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp158208 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags155847%_
         __gc-table::t
         _%fields155849%_
         __tmp158208
         _%slot-vector155819%_
         _%slot-table155845%_
         _%properties155851%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp158210 (list))
            (__tmp158209
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp158210
         '(table lock)
         __tmp158209
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args155814%_
        (apply make-instance locked-hash-table::t _%$args155814%_)))
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
      (let ((__tmp158212 (list))
            (__tmp158211
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp158212
         '(table key-check)
         __tmp158211
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args155811%_
        (apply make-instance checked-hash-table::t _%$args155811%_)))
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
      (let ((__tmp158214 (list hash-table::t))
            (__tmp158213 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp158214
         '()
         __tmp158213
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args155808%_
        (apply make-instance eq-hash-table::t _%$args155808%_)))
    (define eqv-hash-table::t
      (let ((__tmp158216 (list hash-table::t))
            (__tmp158215 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp158216
         '()
         __tmp158215
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args155805%_
        (apply make-instance eqv-hash-table::t _%$args155805%_)))
    (define symbol-hash-table::t
      (let ((__tmp158218 (list hash-table::t))
            (__tmp158217 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp158218
         '()
         __tmp158217
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args155802%_
        (apply make-instance symbol-hash-table::t _%$args155802%_)))
    (define string-hash-table::t
      (let ((__tmp158220 (list hash-table::t))
            (__tmp158219 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp158220
         '()
         __tmp158219
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args155799%_
        (apply make-instance string-hash-table::t _%$args155799%_)))
    (define immediate-hash-table::t
      (let ((__tmp158222 (list hash-table::t))
            (__tmp158221 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp158222
         '()
         __tmp158221
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args155796%_
        (apply make-instance immediate-hash-table::t _%$args155796%_)))
    (let* ((_%klass155759%_ hash-table::t)
           (_%id155762%_ 'HashTable::ref)
           (_%proc155765%_ raw-table-ref)
           (_%rebind?155768%_ '#f)
           (_%id155773%_ _%id155762%_)
           (_%proc155786%_ _%proc155765%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155759%_
       _%id155773%_
       _%proc155786%_
       _%rebind?155768%_))
    (let* ((_%klass155722%_ hash-table::t)
           (_%id155725%_ 'HashTable::set!)
           (_%proc155728%_ raw-table-set!)
           (_%rebind?155731%_ '#f)
           (_%id155736%_ _%id155725%_)
           (_%proc155749%_ _%proc155728%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155722%_
       _%id155736%_
       _%proc155749%_
       _%rebind?155731%_))
    (let* ((_%klass155685%_ hash-table::t)
           (_%id155688%_ 'HashTable::update!)
           (_%proc155691%_ raw-table-update!)
           (_%rebind?155694%_ '#f)
           (_%id155699%_ _%id155688%_)
           (_%proc155712%_ _%proc155691%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155685%_
       _%id155699%_
       _%proc155712%_
       _%rebind?155694%_))
    (let* ((_%klass155648%_ hash-table::t)
           (_%id155651%_ 'HashTable::delete!)
           (_%proc155654%_ raw-table-delete!)
           (_%rebind?155657%_ '#f)
           (_%id155662%_ _%id155651%_)
           (_%proc155675%_ _%proc155654%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155648%_
       _%id155662%_
       _%proc155675%_
       _%rebind?155657%_))
    (let* ((_%klass155611%_ hash-table::t)
           (_%id155614%_ 'HashTable::for-each)
           (_%proc155617%_ raw-table-for-each)
           (_%rebind?155620%_ '#f)
           (_%id155625%_ _%id155614%_)
           (_%proc155638%_ _%proc155617%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155611%_
       _%id155625%_
       _%proc155638%_
       _%rebind?155620%_))
    (let* ((_%klass155574%_ hash-table::t)
           (_%id155577%_ 'HashTable::length)
           (_%proc155580%_ &raw-table-count)
           (_%rebind?155583%_ '#f)
           (_%id155588%_ _%id155577%_)
           (_%proc155601%_ _%proc155580%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155574%_
       _%id155588%_
       _%proc155601%_
       _%rebind?155583%_))
    (let* ((_%klass155537%_ hash-table::t)
           (_%id155540%_ 'HashTable::copy)
           (_%proc155543%_ raw-table-copy)
           (_%rebind?155546%_ '#f)
           (_%id155551%_ _%id155540%_)
           (_%proc155564%_ _%proc155543%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155537%_
       _%id155551%_
       _%proc155564%_
       _%rebind?155546%_))
    (let* ((_%klass155500%_ hash-table::t)
           (_%id155503%_ 'HashTable::clear!)
           (_%proc155506%_ raw-table-clear!)
           (_%rebind?155509%_ '#f)
           (_%id155514%_ _%id155503%_)
           (_%proc155527%_ _%proc155506%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155500%_
       _%id155514%_
       _%proc155527%_
       _%rebind?155509%_))
    (let* ((_%klass155463%_ eq-hash-table::t)
           (_%id155466%_ 'HashTable::ref)
           (_%proc155469%_ eq-table-ref)
           (_%rebind?155472%_ '#f)
           (_%id155477%_ _%id155466%_)
           (_%proc155490%_ _%proc155469%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155463%_
       _%id155477%_
       _%proc155490%_
       _%rebind?155472%_))
    (let* ((_%klass155426%_ eq-hash-table::t)
           (_%id155429%_ 'HashTable::set!)
           (_%proc155432%_ eq-table-set!)
           (_%rebind?155435%_ '#f)
           (_%id155440%_ _%id155429%_)
           (_%proc155453%_ _%proc155432%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155426%_
       _%id155440%_
       _%proc155453%_
       _%rebind?155435%_))
    (let* ((_%klass155389%_ eq-hash-table::t)
           (_%id155392%_ 'HashTable::update!)
           (_%proc155395%_ eq-table-update!)
           (_%rebind?155398%_ '#f)
           (_%id155403%_ _%id155392%_)
           (_%proc155416%_ _%proc155395%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155389%_
       _%id155403%_
       _%proc155416%_
       _%rebind?155398%_))
    (let* ((_%klass155352%_ eq-hash-table::t)
           (_%id155355%_ 'HashTable::delete!)
           (_%proc155358%_ eq-table-delete!)
           (_%rebind?155361%_ '#f)
           (_%id155366%_ _%id155355%_)
           (_%proc155379%_ _%proc155358%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155352%_
       _%id155366%_
       _%proc155379%_
       _%rebind?155361%_))
    (let* ((_%klass155315%_ eqv-hash-table::t)
           (_%id155318%_ 'HashTable::ref)
           (_%proc155321%_ eqv-table-ref)
           (_%rebind?155324%_ '#f)
           (_%id155329%_ _%id155318%_)
           (_%proc155342%_ _%proc155321%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155315%_
       _%id155329%_
       _%proc155342%_
       _%rebind?155324%_))
    (let* ((_%klass155278%_ eqv-hash-table::t)
           (_%id155281%_ 'HashTable::set!)
           (_%proc155284%_ eqv-table-set!)
           (_%rebind?155287%_ '#f)
           (_%id155292%_ _%id155281%_)
           (_%proc155305%_ _%proc155284%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155278%_
       _%id155292%_
       _%proc155305%_
       _%rebind?155287%_))
    (let* ((_%klass155241%_ eqv-hash-table::t)
           (_%id155244%_ 'HashTable::update!)
           (_%proc155247%_ eqv-table-update!)
           (_%rebind?155250%_ '#f)
           (_%id155255%_ _%id155244%_)
           (_%proc155268%_ _%proc155247%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155241%_
       _%id155255%_
       _%proc155268%_
       _%rebind?155250%_))
    (let* ((_%klass155204%_ eqv-hash-table::t)
           (_%id155207%_ 'HashTable::delete!)
           (_%proc155210%_ eqv-table-delete!)
           (_%rebind?155213%_ '#f)
           (_%id155218%_ _%id155207%_)
           (_%proc155231%_ _%proc155210%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155204%_
       _%id155218%_
       _%proc155231%_
       _%rebind?155213%_))
    (let* ((_%klass155167%_ symbol-hash-table::t)
           (_%id155170%_ 'HashTable::ref)
           (_%proc155173%_ symbolic-table-ref)
           (_%rebind?155176%_ '#f)
           (_%id155181%_ _%id155170%_)
           (_%proc155194%_ _%proc155173%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155167%_
       _%id155181%_
       _%proc155194%_
       _%rebind?155176%_))
    (let* ((_%klass155130%_ symbol-hash-table::t)
           (_%id155133%_ 'HashTable::set!)
           (_%proc155136%_ symbolic-table-set!)
           (_%rebind?155139%_ '#f)
           (_%id155144%_ _%id155133%_)
           (_%proc155157%_ _%proc155136%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155130%_
       _%id155144%_
       _%proc155157%_
       _%rebind?155139%_))
    (let* ((_%klass155093%_ symbol-hash-table::t)
           (_%id155096%_ 'HashTable::update!)
           (_%proc155099%_ symbolic-table-update!)
           (_%rebind?155102%_ '#f)
           (_%id155107%_ _%id155096%_)
           (_%proc155120%_ _%proc155099%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155093%_
       _%id155107%_
       _%proc155120%_
       _%rebind?155102%_))
    (let* ((_%klass155056%_ symbol-hash-table::t)
           (_%id155059%_ 'HashTable::delete!)
           (_%proc155062%_ symbolic-table-delete!)
           (_%rebind?155065%_ '#f)
           (_%id155070%_ _%id155059%_)
           (_%proc155083%_ _%proc155062%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155056%_
       _%id155070%_
       _%proc155083%_
       _%rebind?155065%_))
    (let* ((_%klass155019%_ string-hash-table::t)
           (_%id155022%_ 'HashTable::ref)
           (_%proc155025%_ string-table-ref)
           (_%rebind?155028%_ '#f)
           (_%id155033%_ _%id155022%_)
           (_%proc155046%_ _%proc155025%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155019%_
       _%id155033%_
       _%proc155046%_
       _%rebind?155028%_))
    (let* ((_%klass154982%_ string-hash-table::t)
           (_%id154985%_ 'HashTable::set!)
           (_%proc154988%_ string-table-set!)
           (_%rebind?154991%_ '#f)
           (_%id154996%_ _%id154985%_)
           (_%proc155009%_ _%proc154988%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154982%_
       _%id154996%_
       _%proc155009%_
       _%rebind?154991%_))
    (let* ((_%klass154945%_ string-hash-table::t)
           (_%id154948%_ 'HashTable::update!)
           (_%proc154951%_ string-table-update!)
           (_%rebind?154954%_ '#f)
           (_%id154959%_ _%id154948%_)
           (_%proc154972%_ _%proc154951%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154945%_
       _%id154959%_
       _%proc154972%_
       _%rebind?154954%_))
    (let* ((_%klass154908%_ string-hash-table::t)
           (_%id154911%_ 'HashTable::delete!)
           (_%proc154914%_ string-table-delete!)
           (_%rebind?154917%_ '#f)
           (_%id154922%_ _%id154911%_)
           (_%proc154935%_ _%proc154914%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154908%_
       _%id154922%_
       _%proc154935%_
       _%rebind?154917%_))
    (let* ((_%klass154871%_ immediate-hash-table::t)
           (_%id154874%_ 'HashTable::ref)
           (_%proc154877%_ immediate-table-ref)
           (_%rebind?154880%_ '#f)
           (_%id154885%_ _%id154874%_)
           (_%proc154898%_ _%proc154877%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154871%_
       _%id154885%_
       _%proc154898%_
       _%rebind?154880%_))
    (let* ((_%klass154834%_ immediate-hash-table::t)
           (_%id154837%_ 'HashTable::set!)
           (_%proc154840%_ immediate-table-set!)
           (_%rebind?154843%_ '#f)
           (_%id154848%_ _%id154837%_)
           (_%proc154861%_ _%proc154840%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154834%_
       _%id154848%_
       _%proc154861%_
       _%rebind?154843%_))
    (let* ((_%klass154797%_ immediate-hash-table::t)
           (_%id154800%_ 'HashTable::update!)
           (_%proc154803%_ immediate-table-update!)
           (_%rebind?154806%_ '#f)
           (_%id154811%_ _%id154800%_)
           (_%proc154824%_ _%proc154803%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154797%_
       _%id154811%_
       _%proc154824%_
       _%rebind?154806%_))
    (let* ((_%klass154760%_ immediate-hash-table::t)
           (_%id154763%_ 'HashTable::delete!)
           (_%proc154766%_ immediate-table-delete!)
           (_%rebind?154769%_ '#f)
           (_%id154774%_ _%id154763%_)
           (_%proc154787%_ _%proc154766%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154760%_
       _%id154774%_
       _%proc154787%_
       _%rebind?154769%_))
    (let* ((_%klass154723%_ gc-hash-table::t)
           (_%id154726%_ 'HashTable::ref)
           (_%proc154729%_ gc-table-ref)
           (_%rebind?154732%_ '#f)
           (_%id154737%_ _%id154726%_)
           (_%proc154750%_ _%proc154729%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154723%_
       _%id154737%_
       _%proc154750%_
       _%rebind?154732%_))
    (let* ((_%klass154686%_ gc-hash-table::t)
           (_%id154689%_ 'HashTable::set!)
           (_%proc154692%_ gc-table-set!)
           (_%rebind?154695%_ '#f)
           (_%id154700%_ _%id154689%_)
           (_%proc154713%_ _%proc154692%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154686%_
       _%id154700%_
       _%proc154713%_
       _%rebind?154695%_))
    (let* ((_%klass154649%_ gc-hash-table::t)
           (_%id154652%_ 'HashTable::update!)
           (_%proc154655%_ gc-table-update!)
           (_%rebind?154658%_ '#f)
           (_%id154663%_ _%id154652%_)
           (_%proc154676%_ _%proc154655%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154649%_
       _%id154663%_
       _%proc154676%_
       _%rebind?154658%_))
    (let* ((_%klass154612%_ gc-hash-table::t)
           (_%id154615%_ 'HashTable::delete!)
           (_%proc154618%_ gc-table-delete!)
           (_%rebind?154621%_ '#f)
           (_%id154626%_ _%id154615%_)
           (_%proc154639%_ _%proc154618%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154612%_
       _%id154626%_
       _%proc154639%_
       _%rebind?154621%_))
    (let* ((_%klass154575%_ gc-hash-table::t)
           (_%id154578%_ 'HashTable::for-each)
           (_%proc154581%_ gc-table-for-each)
           (_%rebind?154584%_ '#f)
           (_%id154589%_ _%id154578%_)
           (_%proc154602%_ _%proc154581%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154575%_
       _%id154589%_
       _%proc154602%_
       _%rebind?154584%_))
    (let* ((_%klass154538%_ gc-hash-table::t)
           (_%id154541%_ 'HashTable::length)
           (_%proc154544%_ gc-table-length)
           (_%rebind?154547%_ '#f)
           (_%id154552%_ _%id154541%_)
           (_%proc154565%_ _%proc154544%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154538%_
       _%id154552%_
       _%proc154565%_
       _%rebind?154547%_))
    (let* ((_%klass154501%_ gc-hash-table::t)
           (_%id154504%_ 'HashTable::copy)
           (_%proc154507%_ gc-table-copy)
           (_%rebind?154510%_ '#f)
           (_%id154515%_ _%id154504%_)
           (_%proc154528%_ _%proc154507%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154501%_
       _%id154515%_
       _%proc154528%_
       _%rebind?154510%_))
    (let* ((_%klass154464%_ gc-hash-table::t)
           (_%id154467%_ 'HashTable::clear!)
           (_%proc154470%_ gc-table-clear!)
           (_%rebind?154473%_ '#f)
           (_%id154478%_ _%id154467%_)
           (_%proc154491%_ _%proc154470%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154464%_
       _%id154478%_
       _%proc154491%_
       _%rebind?154473%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref145725%_
      (lambda (_%self154385%_ _%key154387%_ _%default154388%_)
        (let* ((_%self154391%_ _%self154385%_)
               (_%key154400%_ _%key154387%_)
               (_%default154408%_ _%default154388%_))
          (let ((_%h154417%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154391%_ '1 '#f '#f)))
                (_%l154419%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154391%_ '2 '#f '#f))))
            (let ((__tmp158225
                   (lambda ()
                     (let ((_%self144177154423%_ _%l154419%_))
                       (declare (not safe))
                       (let ((_%object154426154431%_
                              (##unchecked-structure-ref
                               _%self144177154423%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method154427154432%_
                              (##unchecked-structure-ref
                               _%self144177154423%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method154427154432%_ _%object154426154431%_)))))
                  (__tmp158224
                   (lambda ()
                     (let* ((_%self143272154435%_ _%h154417%_)
                            (_%key154438%_ _%key154400%_)
                            (_%default154441%_ _%default154408%_))
                       (declare (not safe))
                       (let ((_%object154444154449%_
                              (##unchecked-structure-ref
                               _%self143272154435%_
                               '1
                               '#f
                               'ref))
                             (_%method154445154450%_
                              (##unchecked-structure-ref
                               _%self143272154435%_
                               '7
                               '#f
                               'ref)))
                         (_%method154445154450%_
                          _%object154444154449%_
                          _%key154438%_
                          _%default154441%_)))))
                  (__tmp158223
                   (lambda ()
                     (let ((_%self144468154453%_ _%l154419%_))
                       (declare (not safe))
                       (let ((_%object154456154461%_
                              (##unchecked-structure-ref
                               _%self144468154453%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method154457154462%_
                              (##unchecked-structure-ref
                               _%self144468154453%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method154457154462%_ _%object154456154461%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp158225 __tmp158224 __tmp158223))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref145725%_
       '#f))
    (define _%locked-hash-table::HashTable::set!145727%_
      (lambda (_%self154183%_ _%key154185%_ _%value154186%_)
        (let* ((_%self154189%_ _%self154183%_)
               (_%key154198%_ _%key154185%_)
               (_%value154206%_ _%value154186%_))
          (let ((_%h154215%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154189%_ '1 '#f '#f)))
                (_%l154217%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154189%_ '2 '#f '#f))))
            (let ((__tmp158228
                   (lambda ()
                     (let ((_%self144759154221%_ _%l154217%_))
                       (declare (not safe))
                       (let ((_%object154224154229%_
                              (##unchecked-structure-ref
                               _%self144759154221%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method154225154230%_
                              (##unchecked-structure-ref
                               _%self144759154221%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method154225154230%_ _%object154224154229%_)))))
                  (__tmp158227
                   (lambda ()
                     (let* ((_%self143567154233%_ _%h154215%_)
                            (_%key154236%_ _%key154198%_)
                            (_%value154239%_ _%value154206%_))
                       (declare (not safe))
                       (let ((_%object154242154247%_
                              (##unchecked-structure-ref
                               _%self143567154233%_
                               '1
                               '#f
                               'set!))
                             (_%method154243154248%_
                              (##unchecked-structure-ref
                               _%self143567154233%_
                               '8
                               '#f
                               'set!)))
                         (_%method154243154248%_
                          _%object154242154247%_
                          _%key154236%_
                          _%value154239%_)))))
                  (__tmp158226
                   (lambda ()
                     (let ((_%self145050154251%_ _%l154217%_))
                       (declare (not safe))
                       (let ((_%object154254154259%_
                              (##unchecked-structure-ref
                               _%self145050154251%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method154255154260%_
                              (##unchecked-structure-ref
                               _%self145050154251%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method154255154260%_ _%object154254154259%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp158228 __tmp158227 __tmp158226))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!145727%_
       '#f))
    (define _%locked-hash-table::HashTable::update!145729%_
      (lambda (_%self153969%_ _%key153971%_ _%update153972%_ _%default153973%_)
        (let* ((_%self153976%_ _%self153969%_)
               (_%key153985%_ _%key153971%_)
               (_%update153993%_ _%update153972%_)
               (_%default154001%_ _%default153973%_))
          (let ((_%h154010%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153976%_ '1 '#f '#f)))
                (_%l154012%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153976%_ '2 '#f '#f))))
            (let ((__tmp158231
                   (lambda ()
                     (let ((_%self144759154016%_ _%l154012%_))
                       (declare (not safe))
                       (let ((_%object154019154024%_
                              (##unchecked-structure-ref
                               _%self144759154016%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method154020154025%_
                              (##unchecked-structure-ref
                               _%self144759154016%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method154020154025%_ _%object154019154024%_)))))
                  (__tmp158230
                   (lambda ()
                     (let* ((_%self143862154028%_ _%h154010%_)
                            (_%key154031%_ _%key153985%_)
                            (_%proc154034%_ _%update153993%_)
                            (_%default154037%_ _%default154001%_))
                       (declare (not safe))
                       (let ((_%object154040154045%_
                              (##unchecked-structure-ref
                               _%self143862154028%_
                               '1
                               '#f
                               'update!))
                             (_%method154041154046%_
                              (##unchecked-structure-ref
                               _%self143862154028%_
                               '9
                               '#f
                               'update!)))
                         (_%method154041154046%_
                          _%object154040154045%_
                          _%key154031%_
                          _%proc154034%_
                          _%default154037%_)))))
                  (__tmp158229
                   (lambda ()
                     (let ((_%self145050154049%_ _%l154012%_))
                       (declare (not safe))
                       (let ((_%object154052154057%_
                              (##unchecked-structure-ref
                               _%self145050154049%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method154053154058%_
                              (##unchecked-structure-ref
                               _%self145050154049%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method154053154058%_ _%object154052154057%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp158231 __tmp158230 __tmp158229))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!145729%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!145731%_
      (lambda (_%self153779%_ _%key153781%_)
        (let* ((_%self153784%_ _%self153779%_) (_%key153793%_ _%key153781%_))
          (let ((_%h153802%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153784%_ '1 '#f '#f)))
                (_%l153804%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153784%_ '2 '#f '#f))))
            (let ((__tmp158234
                   (lambda ()
                     (let ((_%self144759153808%_ _%l153804%_))
                       (declare (not safe))
                       (let ((_%object153811153816%_
                              (##unchecked-structure-ref
                               _%self144759153808%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method153812153817%_
                              (##unchecked-structure-ref
                               _%self144759153808%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method153812153817%_ _%object153811153816%_)))))
                  (__tmp158233
                   (lambda ()
                     (let* ((_%self142374153820%_ _%h153802%_)
                            (_%key153823%_ _%key153793%_))
                       (declare (not safe))
                       (let ((_%object153826153831%_
                              (##unchecked-structure-ref
                               _%self142374153820%_
                               '1
                               '#f
                               'delete!))
                             (_%method153827153832%_
                              (##unchecked-structure-ref
                               _%self142374153820%_
                               '4
                               '#f
                               'delete!)))
                         (_%method153827153832%_
                          _%object153826153831%_
                          _%key153823%_)))))
                  (__tmp158232
                   (lambda ()
                     (let ((_%self145050153835%_ _%l153804%_))
                       (declare (not safe))
                       (let ((_%object153838153843%_
                              (##unchecked-structure-ref
                               _%self145050153835%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method153839153844%_
                              (##unchecked-structure-ref
                               _%self145050153835%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method153839153844%_ _%object153838153843%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp158234 __tmp158233 __tmp158232))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!145731%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each145733%_
      (lambda (_%self153589%_ _%proc153591%_)
        (let* ((_%self153594%_ _%self153589%_) (_%proc153603%_ _%proc153591%_))
          (let ((_%h153612%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153594%_ '1 '#f '#f)))
                (_%l153614%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153594%_ '2 '#f '#f))))
            (let ((__tmp158237
                   (lambda ()
                     (let ((_%self144177153618%_ _%l153614%_))
                       (declare (not safe))
                       (let ((_%object153621153626%_
                              (##unchecked-structure-ref
                               _%self144177153618%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method153622153627%_
                              (##unchecked-structure-ref
                               _%self144177153618%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method153622153627%_ _%object153621153626%_)))))
                  (__tmp158236
                   (lambda ()
                     (let* ((_%self142667153630%_ _%h153612%_)
                            (_%proc153633%_ _%proc153603%_))
                       (declare (not safe))
                       (let ((_%object153636153641%_
                              (##unchecked-structure-ref
                               _%self142667153630%_
                               '1
                               '#f
                               'for-each))
                             (_%method153637153642%_
                              (##unchecked-structure-ref
                               _%self142667153630%_
                               '5
                               '#f
                               'for-each)))
                         (_%method153637153642%_
                          _%object153636153641%_
                          _%proc153633%_)))))
                  (__tmp158235
                   (lambda ()
                     (let ((_%self144468153645%_ _%l153614%_))
                       (declare (not safe))
                       (let ((_%object153648153653%_
                              (##unchecked-structure-ref
                               _%self144468153645%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method153649153654%_
                              (##unchecked-structure-ref
                               _%self144468153645%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method153649153654%_ _%object153648153653%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp158237 __tmp158236 __tmp158235))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each145733%_
       '#f))
    (define _%locked-hash-table::HashTable::length145735%_
      (lambda (_%self153404%_)
        (let ((_%self153408%_ _%self153404%_))
          (let ((_%h153418%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153408%_ '1 '#f '#f)))
                (_%l153420%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153408%_ '2 '#f '#f))))
            ((lambda (_%g153422153424%_)
               (let ((_%val153427%_ _%g153422153424%_))
                 (if (fixnum? _%val153427%_)
                     _%val153427%_
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/hash
                        'contract:
                        '(fixnum? val)
                        'value:
                        _%val153427%_)
                       '#!void))))
             (let ((__tmp158240
                    (lambda ()
                      (let ((_%self144177153431%_ _%l153420%_))
                        (declare (not safe))
                        (let ((_%object153434153439%_
                               (##unchecked-structure-ref
                                _%self144177153431%_
                                '1
                                '#f
                                'read-lock!))
                              (_%method153435153440%_
                               (##unchecked-structure-ref
                                _%self144177153431%_
                                '2
                                '#f
                                'read-lock!)))
                          (_%method153435153440%_ _%object153434153439%_)))))
                   (__tmp158239
                    (lambda ()
                      (let ((_%self142978153443%_ _%h153418%_))
                        (declare (not safe))
                        (let ((_%object153446153451%_
                               (##unchecked-structure-ref
                                _%self142978153443%_
                                '1
                                '#f
                                'length))
                              (_%method153447153452%_
                               (##unchecked-structure-ref
                                _%self142978153443%_
                                '6
                                '#f
                                'length)))
                          (_%method153447153452%_ _%object153446153451%_)))))
                   (__tmp158238
                    (lambda ()
                      (let ((_%self144468153455%_ _%l153420%_))
                        (declare (not safe))
                        (let ((_%object153458153463%_
                               (##unchecked-structure-ref
                                _%self144468153455%_
                                '1
                                '#f
                                'read-unlock!))
                              (_%method153459153464%_
                               (##unchecked-structure-ref
                                _%self144468153455%_
                                '3
                                '#f
                                'read-unlock!)))
                          (_%method153459153464%_ _%object153458153463%_))))))
               (declare (not safe))
               (##dynamic-wind __tmp158240 __tmp158239 __tmp158238)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length145735%_
       '#f))
    (define _%locked-hash-table::HashTable::copy145737%_
      (lambda (_%self153223%_)
        (let ((_%self153227%_ _%self153223%_))
          (let ((_%h153237%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153227%_ '1 '#f '#f)))
                (_%l153239%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153227%_ '2 '#f '#f))))
            (let ((_%$obj153278%_
                   (let ((__tmp158243
                          (lambda ()
                            (let ((_%self144177153243%_ _%l153239%_))
                              (declare (not safe))
                              (let ((_%object153246153251%_
                                     (##unchecked-structure-ref
                                      _%self144177153243%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method153247153252%_
                                     (##unchecked-structure-ref
                                      _%self144177153243%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method153247153252%_
                                 _%object153246153251%_)))))
                         (__tmp158242
                          (lambda ()
                            (let ((_%self142080153255%_ _%h153237%_))
                              (declare (not safe))
                              (let ((_%object153258153263%_
                                     (##unchecked-structure-ref
                                      _%self142080153255%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method153259153264%_
                                     (##unchecked-structure-ref
                                      _%self142080153255%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method153259153264%_
                                 _%object153258153263%_)))))
                         (__tmp158241
                          (lambda ()
                            (let ((_%self144468153267%_ _%l153239%_))
                              (declare (not safe))
                              (let ((_%object153270153275%_
                                     (##unchecked-structure-ref
                                      _%self144468153267%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method153271153276%_
                                     (##unchecked-structure-ref
                                      _%self144468153267%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method153271153276%_
                                 _%object153270153275%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp158243 __tmp158242 __tmp158241))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj153278%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj153278%_)))
                       '#t)
                  _%$obj153278%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj153278%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy145737%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!145739%_
      (lambda (_%self153045%_)
        (let ((_%self153049%_ _%self153045%_))
          (let ((_%h153059%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153049%_ '1 '#f '#f)))
                (_%l153061%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153049%_ '2 '#f '#f))))
            (let ((__tmp158246
                   (lambda ()
                     (let ((_%self144759153065%_ _%l153061%_))
                       (declare (not safe))
                       (let ((_%object153068153073%_
                              (##unchecked-structure-ref
                               _%self144759153065%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method153069153074%_
                              (##unchecked-structure-ref
                               _%self144759153065%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method153069153074%_ _%object153068153073%_)))))
                  (__tmp158245
                   (lambda ()
                     (let ((_%self141788153077%_ _%h153059%_))
                       (declare (not safe))
                       (let ((_%object153080153085%_
                              (##unchecked-structure-ref
                               _%self141788153077%_
                               '1
                               '#f
                               'clear!))
                             (_%method153081153086%_
                              (##unchecked-structure-ref
                               _%self141788153077%_
                               '2
                               '#f
                               'clear!)))
                         (_%method153081153086%_ _%object153080153085%_)))))
                  (__tmp158244
                   (lambda ()
                     (let ((_%self145050153089%_ _%l153061%_))
                       (declare (not safe))
                       (let ((_%object153092153097%_
                              (##unchecked-structure-ref
                               _%self145050153089%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method153093153098%_
                              (##unchecked-structure-ref
                               _%self145050153089%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method153093153098%_ _%object153092153097%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp158246 __tmp158245 __tmp158244))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!145739%_
       '#f))
    (let* ((_%klass152885%_ (macro-type-mutex))
           (_%id152888%_ 'Locker::read-lock!)
           (_%proc152891%_ mutex-lock!)
           (_%rebind?152894%_ '#f)
           (_%id152899%_ _%id152888%_)
           (_%proc152912%_ _%proc152891%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass152885%_
       _%id152899%_
       _%proc152912%_
       _%rebind?152894%_))
    (let* ((_%klass152848%_ (macro-type-mutex))
           (_%id152851%_ 'Locker::read-unlock!)
           (_%proc152854%_ mutex-unlock!)
           (_%rebind?152857%_ '#f)
           (_%id152862%_ _%id152851%_)
           (_%proc152875%_ _%proc152854%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass152848%_
       _%id152862%_
       _%proc152875%_
       _%rebind?152857%_))
    (let* ((_%klass152811%_ (macro-type-mutex))
           (_%id152814%_ 'Locker::write-lock!)
           (_%proc152817%_ mutex-lock!)
           (_%rebind?152820%_ '#f)
           (_%id152825%_ _%id152814%_)
           (_%proc152838%_ _%proc152817%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass152811%_
       _%id152825%_
       _%proc152838%_
       _%rebind?152820%_))
    (let* ((_%klass152774%_ (macro-type-mutex))
           (_%id152777%_ 'Locker::write-unlock!)
           (_%proc152780%_ mutex-unlock!)
           (_%rebind?152783%_ '#f)
           (_%id152788%_ _%id152777%_)
           (_%proc152801%_ _%proc152780%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass152774%_
       _%id152788%_
       _%proc152801%_
       _%rebind?152783%_))
    (define _%checked-hash-table::HashTable::ref145950%_
      (lambda (_%self152715%_ _%key152716%_ _%default152717%_)
        (let* ((_%self152720%_ _%self152715%_)
               (_%key152729%_ _%key152716%_)
               (_%default152737%_ _%default152717%_))
          (declare (not safe))
          (let ((_%h152748%_
                 (##unchecked-structure-ref _%self152720%_ '1 '#f '#f))
                (_%key?152750%_
                 (##unchecked-structure-ref _%self152720%_ '2 '#f '#f)))
            (if ((lambda (_%key?152753%_ _%key152754%_ _%default152755%_)
                   (_%key?152753%_ _%key152754%_))
                 _%key?152750%_
                 _%key152729%_
                 _%default152737%_)
                (let* ((_%self143272152757%_ _%h152748%_)
                       (_%key152760%_ _%key152729%_)
                       (_%default152763%_ _%default152737%_))
                  (declare (not safe))
                  (let ((_%object152766152771%_
                         (##unchecked-structure-ref
                          _%self143272152757%_
                          '1
                          '#f
                          'ref))
                        (_%method152767152772%_
                         (##unchecked-structure-ref
                          _%self143272152757%_
                          '7
                          '#f
                          'ref)))
                    (_%method152767152772%_
                     _%object152766152771%_
                     _%key152760%_
                     _%default152763%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key152729%_ (cons _%default152737%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref145950%_
       '#f))
    (define _%checked-hash-table::HashTable::set!145952%_
      (lambda (_%self152533%_ _%key152534%_ _%value152535%_)
        (let* ((_%self152538%_ _%self152533%_)
               (_%key152547%_ _%key152534%_)
               (_%value152555%_ _%value152535%_))
          (declare (not safe))
          (let ((_%h152566%_
                 (##unchecked-structure-ref _%self152538%_ '1 '#f '#f))
                (_%key?152568%_
                 (##unchecked-structure-ref _%self152538%_ '2 '#f '#f)))
            (if ((lambda (_%key?152571%_ _%key152572%_ _%value152573%_)
                   (_%key?152571%_ _%key152572%_))
                 _%key?152568%_
                 _%key152547%_
                 _%value152555%_)
                (let* ((_%self143567152575%_ _%h152566%_)
                       (_%key152578%_ _%key152547%_)
                       (_%value152581%_ _%value152555%_))
                  (declare (not safe))
                  (let ((_%object152584152589%_
                         (##unchecked-structure-ref
                          _%self143567152575%_
                          '1
                          '#f
                          'set!))
                        (_%method152585152590%_
                         (##unchecked-structure-ref
                          _%self143567152575%_
                          '8
                          '#f
                          'set!)))
                    (_%method152585152590%_
                     _%object152584152589%_
                     _%key152578%_
                     _%value152581%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key152547%_ (cons _%value152555%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!145952%_
       '#f))
    (define _%checked-hash-table::HashTable::update!145954%_
      (lambda (_%self152338%_ _%key152339%_ _%update152340%_ _%default152341%_)
        (let* ((_%self152344%_ _%self152338%_)
               (_%key152353%_ _%key152339%_)
               (_%update152361%_ _%update152340%_)
               (_%default152369%_ _%default152341%_))
          (declare (not safe))
          (let ((_%h152380%_
                 (##unchecked-structure-ref _%self152344%_ '1 '#f '#f))
                (_%key?152382%_
                 (##unchecked-structure-ref _%self152344%_ '2 '#f '#f)))
            (if ((lambda (_%key?152385%_
                          _%key152386%_
                          _%update152387%_
                          _%default152388%_)
                   (_%key?152385%_ _%key152386%_))
                 _%key?152382%_
                 _%key152353%_
                 _%update152361%_
                 _%default152369%_)
                (let* ((_%self143862152390%_ _%h152380%_)
                       (_%key152393%_ _%key152353%_)
                       (_%proc152396%_ _%update152361%_)
                       (_%default152399%_ _%default152369%_))
                  (declare (not safe))
                  (let ((_%object152402152407%_
                         (##unchecked-structure-ref
                          _%self143862152390%_
                          '1
                          '#f
                          'update!))
                        (_%method152403152408%_
                         (##unchecked-structure-ref
                          _%self143862152390%_
                          '9
                          '#f
                          'update!)))
                    (_%method152403152408%_
                     _%object152402152407%_
                     _%key152393%_
                     _%proc152396%_
                     _%default152399%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key152353%_
                         (cons _%update152361%_ (cons _%default152369%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!145954%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!145956%_
      (lambda (_%self152169%_ _%key152170%_)
        (let* ((_%self152173%_ _%self152169%_) (_%key152182%_ _%key152170%_))
          (declare (not safe))
          (let ((_%h152193%_
                 (##unchecked-structure-ref _%self152173%_ '1 '#f '#f))
                (_%key?152195%_
                 (##unchecked-structure-ref _%self152173%_ '2 '#f '#f)))
            (if ((lambda (_%key?152198%_ _%key152199%_)
                   (_%key?152198%_ _%key152199%_))
                 _%key?152195%_
                 _%key152182%_)
                (let* ((_%self142374152201%_ _%h152193%_)
                       (_%key152204%_ _%key152182%_))
                  (declare (not safe))
                  (let ((_%object152207152212%_
                         (##unchecked-structure-ref
                          _%self142374152201%_
                          '1
                          '#f
                          'delete!))
                        (_%method152208152213%_
                         (##unchecked-structure-ref
                          _%self142374152201%_
                          '4
                          '#f
                          'delete!)))
                    (_%method152208152213%_
                     _%object152207152212%_
                     _%key152204%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key152182%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!145956%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each145958%_
      (lambda (_%self152000%_ _%proc152001%_)
        (let* ((_%self152004%_ _%self152000%_) (_%proc152013%_ _%proc152001%_))
          (declare (not safe))
          (let ((_%h152024%_
                 (##unchecked-structure-ref _%self152004%_ '1 '#f '#f))
                (_%key?152026%_
                 (##unchecked-structure-ref _%self152004%_ '2 '#f '#f)))
            (if ((lambda (_%key?152029%_ _%proc152030%_) '#t)
                 _%key?152026%_
                 _%proc152013%_)
                (let* ((_%self142667152032%_ _%h152024%_)
                       (_%proc152035%_ _%proc152013%_))
                  (declare (not safe))
                  (let ((_%object152038152043%_
                         (##unchecked-structure-ref
                          _%self142667152032%_
                          '1
                          '#f
                          'for-each))
                        (_%method152039152044%_
                         (##unchecked-structure-ref
                          _%self142667152032%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152039152044%_
                     _%object152038152043%_
                     _%proc152035%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc152013%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each145958%_
       '#f))
    (define _%checked-hash-table::HashTable::length145960%_
      (lambda (_%self151846%_)
        (let ((_%self151849%_ _%self151846%_))
          (declare (not safe))
          (let ((_%h151861%_
                 (##unchecked-structure-ref _%self151849%_ '1 '#f '#f))
                (_%key?151863%_
                 (##unchecked-structure-ref _%self151849%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self142978151866%_ _%h151861%_))
                  (declare (not safe))
                  (let ((_%object151869151874%_
                         (##unchecked-structure-ref
                          _%self142978151866%_
                          '1
                          '#f
                          'length))
                        (_%method151870151875%_
                         (##unchecked-structure-ref
                          _%self142978151866%_
                          '6
                          '#f
                          'length)))
                    (_%method151870151875%_ _%object151869151874%_)))
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
       _%checked-hash-table::HashTable::length145960%_
       '#f))
    (define _%checked-hash-table::HashTable::copy145962%_
      (lambda (_%self151692%_)
        (let ((_%self151695%_ _%self151692%_))
          (declare (not safe))
          (let ((_%h151707%_
                 (##unchecked-structure-ref _%self151695%_ '1 '#f '#f))
                (_%key?151709%_
                 (##unchecked-structure-ref _%self151695%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self142080151712%_ _%h151707%_))
                  (declare (not safe))
                  (let ((_%object151715151720%_
                         (##unchecked-structure-ref
                          _%self142080151712%_
                          '1
                          '#f
                          'copy))
                        (_%method151716151721%_
                         (##unchecked-structure-ref
                          _%self142080151712%_
                          '3
                          '#f
                          'copy)))
                    (_%method151716151721%_ _%object151715151720%_)))
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
       _%checked-hash-table::HashTable::copy145962%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!145964%_
      (lambda (_%self151538%_)
        (let ((_%self151541%_ _%self151538%_))
          (declare (not safe))
          (let ((_%h151553%_
                 (##unchecked-structure-ref _%self151541%_ '1 '#f '#f))
                (_%key?151555%_
                 (##unchecked-structure-ref _%self151541%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self141788151558%_ _%h151553%_))
                  (declare (not safe))
                  (let ((_%object151561151566%_
                         (##unchecked-structure-ref
                          _%self141788151558%_
                          '1
                          '#f
                          'clear!))
                        (_%method151562151567%_
                         (##unchecked-structure-ref
                          _%self141788151558%_
                          '2
                          '#f
                          'clear!)))
                    (_%method151562151567%_ _%object151561151566%_)))
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
       _%checked-hash-table::HashTable::clear!145964%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table151408%_
               _%count151409%_
               _%free151410%_
               _%hash151411%_
               _%test151412%_
               _%seed151413%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table151408%_
           _%count151409%_
           _%free151410%_
           _%hash151411%_
           _%test151412%_
           _%seed151413%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords150818%_
               _%size-hint150808150819%_
               _%seed150809150820%_
               _%test150810150821%_
               _%hash150811150822%_
               _%lock150812150823%_
               _%check150813150824%_
               _%weak-keys150814150825%_
               _%weak-values150815150826%_)
        (let* ((_%size-hint150828%_
                (if (eq? _%size-hint150808150819%_ absent-value)
                    '#f
                    _%size-hint150808150819%_))
               (_%seed150830%_
                (if (eq? _%seed150809150820%_ absent-value)
                    '#f
                    _%seed150809150820%_))
               (_%test150832%_
                (if (eq? _%test150810150821%_ absent-value)
                    equal?
                    _%test150810150821%_))
               (_%hash150834%_
                (if (eq? _%hash150811150822%_ absent-value)
                    '#f
                    _%hash150811150822%_))
               (_%lock150836%_
                (if (eq? _%lock150812150823%_ absent-value)
                    '#f
                    _%lock150812150823%_))
               (_%check150838%_
                (if (eq? _%check150813150824%_ absent-value)
                    '#f
                    _%check150813150824%_))
               (_%weak-keys150840%_
                (if (eq? _%weak-keys150814150825%_ absent-value)
                    '#f
                    _%weak-keys150814150825%_))
               (_%weak-values150842%_
                (if (eq? _%weak-values150815150826%_ absent-value)
                    '#f
                    _%weak-values150815150826%_)))
          (letrec ((_%table-seed150845%_
                    (lambda ()
                      (if (fixnum? _%seed150830%_)
                          _%seed150830%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock150989%_
                    (lambda (_%ht151376%_)
                      (let ((_%ht151379%_ _%ht151376%_))
                        (if _%lock150836%_
                            (let ((_%$obj151391%_
                                   (let ((__tmp158247
                                          (let ((_%$obj151388%_
                                                 _%lock150836%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj151388%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj151388%_)))
                                                     '#t)
                                                _%$obj151388%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj151388%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht151379%_
                                      __tmp158247))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj151391%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj151391%_)))
                                       '#t)
                                  _%$obj151391%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj151391%_))))
                            _%ht151379%_))))
                   (_%wrap-lock150990%_
                    (lambda (_%ht151364%_)
                      (let ((_%ht151367%_ _%ht151364%_))
                        (_%__wrap-lock150989%_ _%ht151367%_))))
                   (_%__wrap-checked151112%_
                    (lambda (_%ht151348%_ _%implicit151349%_)
                      (let ((_%ht151352%_ _%ht151348%_))
                        (if _%check150838%_
                            (let ((_%$obj151361%_
                                   (let ((__tmp158248
                                          (if (procedure? _%check150838%_)
                                              _%check150838%_
                                              _%implicit151349%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht151352%_
                                      __tmp158248))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj151361%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj151361%_)))
                                       '#t)
                                  _%$obj151361%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj151361%_))))
                            _%ht151352%_))))
                   (_%wrap-checked151113%_
                    (lambda (_%ht151335%_ _%implicit151336%_)
                      (let ((_%ht151339%_ _%ht151335%_))
                        (_%__wrap-checked151112%_
                         _%ht151339%_
                         _%implicit151336%_))))
                   (_%make151114%_
                    (lambda (_%kons151283%_
                             _%key?151284%_
                             _%hash151285%_
                             _%test151286%_)
                      (let* ((_%size151289%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint150828%_)))
                             (_%table151291%_
                              (let ((__tmp158249 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size151289%_ __tmp158249)))
                             (_%ht151296%_
                              (let ((_%$obj151293%_
                                     (_%kons151283%_
                                      _%table151291%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size151289%_ '2))
                                      _%hash151285%_
                                      _%test151286%_
                                      (_%table-seed150845%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj151293%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj151293%_)))
                                         '#t)
                                    _%$obj151293%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj151293%_)))))
                             (_%ht151318%_
                              (let* ((_%ht151299%_ _%ht151296%_)
                                     (_%ht151303%_ _%ht151299%_))
                                (_%__wrap-lock150989%_ _%ht151303%_)))
                             (_%implicit151321%_ _%key?151284%_)
                             (_%ht151325%_ _%ht151318%_))
                        (_%__wrap-checked151112%_
                         _%ht151325%_
                         _%implicit151321%_))))
                   (_%make-gc-hash-table151115%_
                    (lambda ()
                      (let* ((_%ht151248%_
                              (let ((_%$obj151245%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint150828%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj151245%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj151245%_)))
                                         '#t)
                                    _%$obj151245%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj151245%_)))))
                             (_%ht151266%_
                              (let* ((_%ht151250%_ _%ht151248%_)
                                     (_%ht151254%_ _%ht151250%_))
                                (_%__wrap-lock150989%_ _%ht151254%_)))
                             (_%implicit151269%_ true)
                             (_%ht151273%_ _%ht151266%_))
                        (_%__wrap-checked151112%_
                         _%ht151273%_
                         _%implicit151269%_))))
                   (_%make-gambit-table151116%_
                    (lambda ()
                      (let* ((_%size151185%_
                              (let ((_%$e151182%_ _%size-hint150828%_))
                                (if _%$e151182%_
                                    _%$e151182%_
                                    (macro-absent-obj))))
                             (_%test151190%_
                              (let ((_%$e151187%_ _%test150832%_))
                                (if _%$e151187%_ _%$e151187%_ equal?)))
                             (_%hash151198%_
                              (let ((_%$e151192%_ _%hash150834%_))
                                (if _%$e151192%_
                                    _%$e151192%_
                                    (if (eq? _%test151190%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test151190%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht151203%_
                              (let ((_%$obj151200%_
                                     (make-table
                                      'size:
                                      _%size151185%_
                                      'test:
                                      _%test151190%_
                                      'hash:
                                      _%hash151198%_
                                      'weak-keys:
                                      _%weak-keys150840%_
                                      'weak-values:
                                      _%weak-values150842%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj151200%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj151200%_)))
                                         '#t)
                                    _%$obj151200%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj151200%_)))))
                             (_%ht151226%_
                              (let* ((_%ht151206%_ _%ht151203%_)
                                     (_%ht151210%_ _%ht151206%_))
                                (_%__wrap-lock150989%_ _%ht151210%_)))
                             (_%implicit151229%_ true)
                             (_%ht151233%_ _%ht151226%_))
                        (_%__wrap-checked151112%_
                         _%ht151233%_
                         _%implicit151229%_)))))
            (if (or _%weak-keys150840%_ _%weak-values150842%_)
                (_%make-gambit-table151116%_)
                (if (and (or (eq? _%test150832%_ eq?)
                             (eq? _%test150832%_ ##eq?))
                         (or (not _%hash150834%_)
                             (eq? _%hash150834%_ eq?-hash)
                             (eq? _%hash150834%_ eq-hash))
                         (not _%seed150830%_))
                    (_%make-gc-hash-table151115%_)
                    (if (and (or (eq? _%test150832%_ eq?)
                                 (eq? _%test150832%_ ##eq?))
                             (or (not _%hash150834%_)
                                 (eq? _%hash150834%_ eq?-hash)
                                 (eq? _%hash150834%_ eq-hash)))
                        (_%make151114%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test150832%_ eqv?)
                                     (eq? _%test150832%_ ##eqv?))
                                 (or (not _%hash150834%_)
                                     (eq? _%hash150834%_ eqv?-hash)
                                     (eq? _%hash150834%_ eqv-hash)))
                            (_%make151114%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test150832%_ eq?)
                                         (eq? _%test150832%_ ##eq?))
                                     (or (eq? _%hash150834%_ symbolic-hash)
                                         (eq? _%hash150834%_ ##symbol-hash)))
                                (_%make151114%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test150832%_ eq?)
                                             (eq? _%test150832%_ ##eq?))
                                         (eq? _%hash150834%_ immediate-hash))
                                    (_%make151114%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test150832%_ equal?)
                                                 (eq? _%test150832%_ ##equal?)
                                                 (eq? _%test150832%_ string=?)
                                                 (eq? _%test150832%_
                                                      ##string=?))
                                             (or (eq? _%hash150834%_
                                                      string-hash)
                                                 (eq? _%hash150834%_
                                                      ##string=?-hash)))
                                        (_%make151114%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test150832%_ equal?)
                                                 (not _%hash150834%_))
                                            (_%make151114%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test150832%_)
                                                (if (procedure? _%hash150834%_)
                                                    (_%make151114%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash150834%_
                                                     _%test150832%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash150834%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test150832%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords151398%_ . _%args151399%_)
        (apply make-hash-table__%
               _%@@keywords151398%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151398%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151398%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151398%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151398%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151398%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151398%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151398%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151398%_
                  'weak-values:
                  absent-value))
               _%args151399%_)))
    (define make-hash-table
      (lambda _%args150816151405%_
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
               _%args150816151405%_)))
    (define make-hash-table-eq
      (lambda _%args150805%_
        (apply make-hash-table 'test: eq? _%args150805%_)))
    (define make-hash-table-eqv
      (lambda _%args150803%_
        (apply make-hash-table 'test: eqv? _%args150803%_)))
    (define make-hash-table-symbolic
      (lambda _%args150801%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args150801%_)))
    (define make-hash-table-string
      (lambda _%args150799%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args150799%_)))
    (define make-hash-table-immediate
      (lambda _%args150797%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args150797%_)))
    (define list->hash-table
      (lambda (_%lst150794%_ . _%args150795%_)
        (list->hash-table!
         _%lst150794%_
         (apply make-hash-table
                'size:
                (length _%lst150794%_)
                _%args150795%_))))
    (define list->hash-table-eq
      (lambda (_%lst150791%_ . _%args150792%_)
        (list->hash-table!
         _%lst150791%_
         (apply make-hash-table-eq
                'size:
                (length _%lst150791%_)
                _%args150792%_))))
    (define list->hash-table-eqv
      (lambda (_%lst150788%_ . _%args150789%_)
        (list->hash-table!
         _%lst150788%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst150788%_)
                _%args150789%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst150785%_ . _%args150786%_)
        (list->hash-table!
         _%lst150785%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst150785%_)
                _%args150786%_))))
    (define list->hash-table-string
      (lambda (_%lst150782%_ . _%args150783%_)
        (list->hash-table!
         _%lst150782%_
         (apply make-hash-table-string
                'size:
                (length _%lst150782%_)
                _%args150783%_))))
    (define list->hash-table-immediate
      (lambda (_%lst150779%_ . _%args150780%_)
        (list->hash-table!
         _%lst150779%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst150779%_)
                _%args150780%_))))
    (define list->hash-table!
      (lambda (_%lst150730%_ _%h150731%_)
        (for-each
         (lambda (_%el150733%_)
           (let* ((_%el150734150741%_ _%el150733%_)
                  (_%E150736150744%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el150734150741%_
                              '([k . v])))
                     '#!void))
                  (_%K150737150767%_
                   (lambda (_%v150747%_ _%k150748%_)
                     (let* ((_%self143567150750%_ _%h150731%_)
                            (_%key150753%_ _%k150748%_)
                            (_%value150756%_ _%v150747%_))
                       (declare (not safe))
                       (let ((_%object150759150764%_
                              (##unchecked-structure-ref
                               _%self143567150750%_
                               '1
                               '#f
                               'set!))
                             (_%method150760150765%_
                              (##unchecked-structure-ref
                               _%self143567150750%_
                               '8
                               '#f
                               'set!)))
                         (_%method150760150765%_
                          _%object150759150764%_
                          _%key150753%_
                          _%value150756%_))))))
             (if (pair? _%el150734150741%_)
                 (let ((_%hd150738150770%_
                        (let ()
                          (declare (not safe))
                          (##car _%el150734150741%_)))
                       (_%tl150739150772%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el150734150741%_))))
                   (let* ((_%k150775%_ _%hd150738150770%_)
                          (_%v150777%_ _%tl150739150772%_))
                     (_%K150737150767%_ _%v150777%_ _%k150775%_)))
                 (_%E150736150744%_))))
         _%lst150730%_)
        _%h150731%_))
    (define plist->hash-table
      (lambda (_%lst150727%_ . _%args150728%_)
        (plist->hash-table!
         _%lst150727%_
         (apply make-hash-table
                'size:
                (length _%lst150727%_)
                _%args150728%_))))
    (define plist->hash-table-eq
      (lambda (_%lst150724%_ . _%args150725%_)
        (plist->hash-table!
         _%lst150724%_
         (apply make-hash-table-eq
                'size:
                (length _%lst150724%_)
                _%args150725%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst150721%_ . _%args150722%_)
        (plist->hash-table!
         _%lst150721%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst150721%_)
                _%args150722%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst150718%_ . _%args150719%_)
        (plist->hash-table!
         _%lst150718%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst150718%_)
                _%args150719%_))))
    (define plist->hash-table-string
      (lambda (_%lst150715%_ . _%args150716%_)
        (plist->hash-table!
         _%lst150715%_
         (apply make-hash-table-string
                'size:
                (length _%lst150715%_)
                _%args150716%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst150712%_ . _%args150713%_)
        (plist->hash-table!
         _%lst150712%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst150712%_)
                _%args150713%_))))
    (define plist->hash-table!
      (lambda (_%lst150635%_ _%h150636%_)
        (let _%loop150638%_ ((_%rest150640%_ _%lst150635%_))
          (let* ((_%rest150641150653%_ _%rest150640%_)
                 (_%else150644150661%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst150635%_)))))
            (let ((_%K150647150693%_
                   (lambda (_%rest150672%_ _%val150673%_ _%key150674%_)
                     (let* ((_%self143567150676%_ _%h150636%_)
                            (_%key150679%_ _%key150674%_)
                            (_%value150682%_ _%val150673%_))
                       (declare (not safe))
                       (let ((_%object150685150690%_
                              (##unchecked-structure-ref
                               _%self143567150676%_
                               '1
                               '#f
                               'set!))
                             (_%method150686150691%_
                              (##unchecked-structure-ref
                               _%self143567150676%_
                               '8
                               '#f
                               'set!)))
                         (_%method150686150691%_
                          _%object150685150690%_
                          _%key150679%_
                          _%value150682%_)))
                     (_%loop150638%_ _%rest150672%_)))
                  (_%K150646150666%_ (lambda () _%h150636%_)))
              (let ((_%try-match150643150669%_
                     (lambda ()
                       (if (null? _%rest150641150653%_)
                           (_%K150646150666%_)
                           (_%else150644150661%_)))))
                (if (pair? _%rest150641150653%_)
                    (let ((_%tl150649150698%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest150641150653%_)))
                          (_%hd150648150696%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest150641150653%_))))
                      (if (pair? _%tl150649150698%_)
                          (let ((_%tl150651150705%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl150649150698%_)))
                                (_%hd150650150703%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl150649150698%_))))
                            (let ((_%key150701%_ _%hd150648150696%_)
                                  (_%val150708%_ _%hd150650150703%_)
                                  (_%rest150710%_ _%tl150651150705%_))
                              (_%K150647150693%_
                               _%rest150710%_
                               _%val150708%_
                               _%key150701%_)))
                          (_%else150644150661%_)))
                    (_%try-match150643150669%_))))))))
    (define __hash-length
      (lambda (_%h150584%_)
        (let* ((_%h150587%_ _%h150584%_)
               (_%self142979150596%_ _%h150587%_)
               (_%self142979150603%_
                (let ((_%$obj150600%_ _%self142979150596%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150600%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150600%_)))
                           '#t)
                      _%$obj150600%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150600%_)))))
               (_%self142979150605%_ _%self142979150603%_))
          (if __DEBUG
              (let ((_%val150625%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object150617150622%_
                              (##unchecked-structure-ref
                               _%self142979150605%_
                               '1
                               '#f
                               'length))
                             (_%method150618150623%_
                              (##unchecked-structure-ref
                               _%self142979150605%_
                               '6
                               '#f
                               'length)))
                         (_%method150618150623%_ _%object150617150622%_)))))
                (if (fixnum? _%val150625%_)
                    _%val150625%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val150625%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object150627150632%_
                       (##unchecked-structure-ref
                        _%self142979150605%_
                        '1
                        '#f
                        'length))
                      (_%method150628150633%_
                       (##unchecked-structure-ref
                        _%self142979150605%_
                        '6
                        '#f
                        'length)))
                  (_%method150628150633%_ _%object150627150632%_)))))))
    (define hash-length
      (lambda (_%h146239%_)
        (let* ((_%h146245%_
                (let ((_%$obj146242%_ _%h146239%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146242%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146242%_)))
                           '#t)
                      _%$obj146242%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146242%_)))))
               (_%h146247%_ _%h146245%_))
          (__hash-length _%h146247%_))))
    (define __hash-ref__%
      (lambda (_%h150512%_ _%key150513%_ _%default150514%_)
        (let* ((_%h150517%_ _%h150512%_)
               (_%result150570%_
                (let* ((_%self143273150526%_ _%h150517%_)
                       (_%key150529%_ _%key150513%_)
                       (_%default150532%_ _%default150514%_)
                       (_%self143273150539%_
                        (let ((_%$obj150536%_ _%self143273150526%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj150536%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj150536%_)))
                                   '#t)
                              _%$obj150536%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj150536%_)))))
                       (_%self143273150541%_ _%self143273150539%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object150555150560%_
                               (##unchecked-structure-ref
                                _%self143273150541%_
                                '1
                                '#f
                                'ref))
                              (_%method150556150561%_
                               (##unchecked-structure-ref
                                _%self143273150541%_
                                '7
                                '#f
                                'ref)))
                          (_%method150556150561%_
                           _%object150555150560%_
                           _%key150529%_
                           _%default150532%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object150562150567%_
                               (##unchecked-structure-ref
                                _%self143273150541%_
                                '1
                                '#f
                                'ref))
                              (_%method150563150568%_
                               (##unchecked-structure-ref
                                _%self143273150541%_
                                '7
                                '#f
                                'ref)))
                          (_%method150563150568%_
                           _%object150562150567%_
                           _%key150529%_
                           _%default150532%_)))))))
          (if (eq? _%result150570%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h150517%_
               'key:
               _%key150513%_)
              _%result150570%_))))
    (define __hash-ref__0
      (lambda (_%h150575%_ _%key150576%_)
        (let ((_%default150578%_ (macro-absent-obj)))
          (__hash-ref__% _%h150575%_ _%key150576%_ _%default150578%_))))
    (define __hash-ref
      (lambda _g158250_
        (let ((_g158251_ (let () (declare (not safe)) (##length _g158250_))))
          (cond ((let () (declare (not safe)) (##fx= _g158251_ 2))
                 (apply __hash-ref__0 _g158250_))
                ((let () (declare (not safe)) (##fx= _g158251_ 3))
                 (apply __hash-ref__% _g158250_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g158250_))))))
    (define hash-ref__%
      (lambda (_%h146378%_ _%key146379%_ _%default146380%_)
        (let* ((_%h146386%_
                (let ((_%$obj146383%_ _%h146378%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146383%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146383%_)))
                           '#t)
                      _%$obj146383%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146383%_)))))
               (_%h146388%_ _%h146386%_))
          (__hash-ref__% _%h146388%_ _%key146379%_ _%default146380%_))))
    (define hash-ref__0
      (lambda (_%h146401%_ _%key146402%_)
        (let ((_%default146404%_ (macro-absent-obj)))
          (hash-ref__% _%h146401%_ _%key146402%_ _%default146404%_))))
    (define hash-ref
      (lambda _g158252_
        (let ((_g158253_ (let () (declare (not safe)) (##length _g158252_))))
          (cond ((let () (declare (not safe)) (##fx= _g158253_ 2))
                 (apply hash-ref__0 _g158252_))
                ((let () (declare (not safe)) (##fx= _g158253_ 3))
                 (apply hash-ref__% _g158252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g158252_))))))
    (define __hash-get
      (lambda (_%h150454%_ _%key150455%_)
        (let* ((_%h150458%_ _%h150454%_)
               (_%self143273150467%_ _%h150458%_)
               (_%key150470%_ _%key150455%_)
               (_%default150473%_ '#f)
               (_%self143273150480%_
                (let ((_%$obj150477%_ _%self143273150467%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150477%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150477%_)))
                           '#t)
                      _%$obj150477%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150477%_)))))
               (_%self143273150482%_ _%self143273150480%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object150496150501%_
                       (##unchecked-structure-ref
                        _%self143273150482%_
                        '1
                        '#f
                        'ref))
                      (_%method150497150502%_
                       (##unchecked-structure-ref
                        _%self143273150482%_
                        '7
                        '#f
                        'ref)))
                  (_%method150497150502%_
                   _%object150496150501%_
                   _%key150470%_
                   _%default150473%_)))
              (let ()
                (declare (not safe))
                (let ((_%object150503150508%_
                       (##unchecked-structure-ref
                        _%self143273150482%_
                        '1
                        '#f
                        'ref))
                      (_%method150504150509%_
                       (##unchecked-structure-ref
                        _%self143273150482%_
                        '7
                        '#f
                        'ref)))
                  (_%method150504150509%_
                   _%object150503150508%_
                   _%key150470%_
                   _%default150473%_)))))))
    (define hash-get
      (lambda (_%h146530%_ _%key146531%_)
        (let* ((_%h146537%_
                (let ((_%$obj146534%_ _%h146530%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146534%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146534%_)))
                           '#t)
                      _%$obj146534%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146534%_)))))
               (_%h146539%_ _%h146537%_))
          (__hash-get _%h146539%_ _%key146531%_))))
    (define __hash-put!
      (lambda (_%h150396%_ _%key150397%_ _%value150398%_)
        (let* ((_%h150401%_ _%h150396%_)
               (_%self143568150410%_ _%h150401%_)
               (_%key150413%_ _%key150397%_)
               (_%value150416%_ _%value150398%_)
               (_%self143568150423%_
                (let ((_%$obj150420%_ _%self143568150410%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150420%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150420%_)))
                           '#t)
                      _%$obj150420%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150420%_)))))
               (_%self143568150425%_ _%self143568150423%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object150439150444%_
                       (##unchecked-structure-ref
                        _%self143568150425%_
                        '1
                        '#f
                        'set!))
                      (_%method150440150445%_
                       (##unchecked-structure-ref
                        _%self143568150425%_
                        '8
                        '#f
                        'set!)))
                  (_%method150440150445%_
                   _%object150439150444%_
                   _%key150413%_
                   _%value150416%_)))
              (let ()
                (declare (not safe))
                (let ((_%object150446150451%_
                       (##unchecked-structure-ref
                        _%self143568150425%_
                        '1
                        '#f
                        'set!))
                      (_%method150447150452%_
                       (##unchecked-structure-ref
                        _%self143568150425%_
                        '8
                        '#f
                        'set!)))
                  (_%method150447150452%_
                   _%object150446150451%_
                   _%key150413%_
                   _%value150416%_)))))))
    (define hash-put!
      (lambda (_%h146669%_ _%key146670%_ _%value146671%_)
        (let* ((_%h146677%_
                (let ((_%$obj146674%_ _%h146669%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146674%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146674%_)))
                           '#t)
                      _%$obj146674%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146674%_)))))
               (_%h146679%_ _%h146677%_))
          (__hash-put! _%h146679%_ _%key146670%_ _%value146671%_))))
    (define __hash-update!__%
      (lambda (_%h150309%_ _%key150310%_ _%update150311%_ _%default150312%_)
        (let* ((_%h150315%_ _%h150309%_)
               (_%self143863150324%_ _%h150315%_)
               (_%key150327%_ _%key150310%_)
               (_%proc150330%_ _%update150311%_)
               (_%default150333%_ _%default150312%_)
               (_%self143863150340%_
                (let ((_%$obj150337%_ _%self143863150324%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150337%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150337%_)))
                           '#t)
                      _%$obj150337%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150337%_)))))
               (_%self143863150342%_ _%self143863150340%_))
          (if (procedure? _%proc150330%_)
              (let ((_%proc150358%_ _%proc150330%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object150367150372%_
                             (##unchecked-structure-ref
                              _%self143863150342%_
                              '1
                              '#f
                              'update!))
                            (_%method150368150373%_
                             (##unchecked-structure-ref
                              _%self143863150342%_
                              '9
                              '#f
                              'update!)))
                        (_%method150368150373%_
                         _%object150367150372%_
                         _%key150327%_
                         _%proc150358%_
                         _%default150333%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object150374150379%_
                             (##unchecked-structure-ref
                              _%self143863150342%_
                              '1
                              '#f
                              'update!))
                            (_%method150375150380%_
                             (##unchecked-structure-ref
                              _%self143863150342%_
                              '9
                              '#f
                              'update!)))
                        (_%method150375150380%_
                         _%object150374150379%_
                         _%key150327%_
                         _%proc150358%_
                         _%default150333%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc150330%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h150385%_ _%key150386%_ _%update150387%_)
        (let ((_%default150389%_ '#!void))
          (__hash-update!__%
           _%h150385%_
           _%key150386%_
           _%update150387%_
           _%default150389%_))))
    (define __hash-update!
      (lambda _g158254_
        (let ((_g158255_ (let () (declare (not safe)) (##length _g158254_))))
          (cond ((let () (declare (not safe)) (##fx= _g158255_ 3))
                 (apply __hash-update!__0 _g158254_))
                ((let () (declare (not safe)) (##fx= _g158255_ 4))
                 (apply __hash-update!__% _g158254_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g158254_))))))
    (define hash-update!__%
      (lambda (_%h146810%_ _%key146811%_ _%update146812%_ _%default146813%_)
        (let* ((_%h146819%_
                (let ((_%$obj146816%_ _%h146810%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146816%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146816%_)))
                           '#t)
                      _%$obj146816%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146816%_)))))
               (_%h146821%_ _%h146819%_))
          (__hash-update!__%
           _%h146821%_
           _%key146811%_
           _%update146812%_
           _%default146813%_))))
    (define hash-update!__0
      (lambda (_%h146834%_ _%key146835%_ _%update146836%_)
        (let ((_%default146838%_ '#!void))
          (hash-update!__%
           _%h146834%_
           _%key146835%_
           _%update146836%_
           _%default146838%_))))
    (define hash-update!
      (lambda _g158256_
        (let ((_g158257_ (let () (declare (not safe)) (##length _g158256_))))
          (cond ((let () (declare (not safe)) (##fx= _g158257_ 3))
                 (apply hash-update!__0 _g158256_))
                ((let () (declare (not safe)) (##fx= _g158257_ 4))
                 (apply hash-update!__% _g158256_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g158256_))))))
    (define __hash-remove!
      (lambda (_%h150255%_ _%key150256%_)
        (let* ((_%h150259%_ _%h150255%_)
               (_%self142375150268%_ _%h150259%_)
               (_%key150271%_ _%key150256%_)
               (_%self142375150278%_
                (let ((_%$obj150275%_ _%self142375150268%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150275%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150275%_)))
                           '#t)
                      _%$obj150275%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150275%_)))))
               (_%self142375150280%_ _%self142375150278%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object150293150298%_
                       (##unchecked-structure-ref
                        _%self142375150280%_
                        '1
                        '#f
                        'delete!))
                      (_%method150294150299%_
                       (##unchecked-structure-ref
                        _%self142375150280%_
                        '4
                        '#f
                        'delete!)))
                  (_%method150294150299%_
                   _%object150293150298%_
                   _%key150271%_)))
              (let ()
                (declare (not safe))
                (let ((_%object150300150305%_
                       (##unchecked-structure-ref
                        _%self142375150280%_
                        '1
                        '#f
                        'delete!))
                      (_%method150301150306%_
                       (##unchecked-structure-ref
                        _%self142375150280%_
                        '4
                        '#f
                        'delete!)))
                  (_%method150301150306%_
                   _%object150300150305%_
                   _%key150271%_)))))))
    (define hash-remove!
      (lambda (_%h146965%_ _%key146966%_)
        (let* ((_%h146972%_
                (let ((_%$obj146969%_ _%h146965%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146969%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146969%_)))
                           '#t)
                      _%$obj146969%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146969%_)))))
               (_%h146974%_ _%h146972%_))
          (__hash-remove! _%h146974%_ _%key146966%_))))
    (define __hash-key?
      (lambda (_%h150198%_ _%k150199%_)
        (let ((_%h150202%_ _%h150198%_))
          (not (eq? (let* ((_%self143273150211%_ _%h150202%_)
                           (_%key150214%_ _%k150199%_)
                           (_%default150217%_ absent-value)
                           (_%self143273150224%_
                            (let ((_%$obj150221%_ _%self143273150211%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj150221%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj150221%_)))
                                       '#t)
                                  _%$obj150221%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj150221%_)))))
                           (_%self143273150226%_ _%self143273150224%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object150240150245%_
                                   (##unchecked-structure-ref
                                    _%self143273150226%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method150241150246%_
                                   (##unchecked-structure-ref
                                    _%self143273150226%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method150241150246%_
                               _%object150240150245%_
                               _%key150214%_
                               _%default150217%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object150247150252%_
                                   (##unchecked-structure-ref
                                    _%self143273150226%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method150248150253%_
                                   (##unchecked-structure-ref
                                    _%self143273150226%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method150248150253%_
                               _%object150247150252%_
                               _%key150214%_
                               _%default150217%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h147104%_ _%k147105%_)
        (let* ((_%h147111%_
                (let ((_%$obj147108%_ _%h147104%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147108%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147108%_)))
                           '#t)
                      _%$obj147108%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147108%_)))))
               (_%h147113%_ _%h147111%_))
          (__hash-key? _%h147113%_ _%k147105%_))))
    (define __hash->list
      (lambda (_%h150130%_)
        (let* ((_%h150133%_ _%h150130%_) (_%lst150142%_ '()))
          (let* ((_%self142668150144%_ _%h150133%_)
                 (_%proc150150%_
                  (lambda (_%k150147%_ _%v150148%_)
                    (set! _%lst150142%_
                          (cons (cons _%k150147%_ _%v150148%_)
                                _%lst150142%_))))
                 (_%self142668150157%_
                  (let ((_%$obj150154%_ _%self142668150144%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj150154%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj150154%_)))
                             '#t)
                        _%$obj150154%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj150154%_)))))
                 (_%self142668150159%_ _%self142668150157%_)
                 (_%proc150174%_ _%proc150150%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object150183150188%_
                         (##unchecked-structure-ref
                          _%self142668150159%_
                          '1
                          '#f
                          'for-each))
                        (_%method150184150189%_
                         (##unchecked-structure-ref
                          _%self142668150159%_
                          '5
                          '#f
                          'for-each)))
                    (_%method150184150189%_
                     _%object150183150188%_
                     _%proc150174%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object150190150195%_
                         (##unchecked-structure-ref
                          _%self142668150159%_
                          '1
                          '#f
                          'for-each))
                        (_%method150191150196%_
                         (##unchecked-structure-ref
                          _%self142668150159%_
                          '5
                          '#f
                          'for-each)))
                    (_%method150191150196%_
                     _%object150190150195%_
                     _%proc150174%_)))))
          _%lst150142%_)))
    (define hash->list
      (lambda (_%h147243%_)
        (let* ((_%h147249%_
                (let ((_%$obj147246%_ _%h147243%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147246%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147246%_)))
                           '#t)
                      _%$obj147246%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147246%_)))))
               (_%h147251%_ _%h147249%_))
          (__hash->list _%h147251%_))))
    (define __hash->plist
      (lambda (_%h150062%_)
        (let* ((_%h150065%_ _%h150062%_) (_%lst150074%_ '()))
          (let* ((_%self142668150076%_ _%h150065%_)
                 (_%proc150082%_
                  (lambda (_%k150079%_ _%v150080%_)
                    (set! _%lst150074%_
                          (cons _%k150079%_
                                (cons _%v150080%_ _%lst150074%_)))))
                 (_%self142668150089%_
                  (let ((_%$obj150086%_ _%self142668150076%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj150086%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj150086%_)))
                             '#t)
                        _%$obj150086%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj150086%_)))))
                 (_%self142668150091%_ _%self142668150089%_)
                 (_%proc150106%_ _%proc150082%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object150115150120%_
                         (##unchecked-structure-ref
                          _%self142668150091%_
                          '1
                          '#f
                          'for-each))
                        (_%method150116150121%_
                         (##unchecked-structure-ref
                          _%self142668150091%_
                          '5
                          '#f
                          'for-each)))
                    (_%method150116150121%_
                     _%object150115150120%_
                     _%proc150106%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object150122150127%_
                         (##unchecked-structure-ref
                          _%self142668150091%_
                          '1
                          '#f
                          'for-each))
                        (_%method150123150128%_
                         (##unchecked-structure-ref
                          _%self142668150091%_
                          '5
                          '#f
                          'for-each)))
                    (_%method150123150128%_
                     _%object150122150127%_
                     _%proc150106%_)))))
          _%lst150074%_)))
    (define hash->plist
      (lambda (_%h147381%_)
        (let* ((_%h147387%_
                (let ((_%$obj147384%_ _%h147381%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147384%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147384%_)))
                           '#t)
                      _%$obj147384%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147384%_)))))
               (_%h147389%_ _%h147387%_))
          (__hash->plist _%h147389%_))))
    (define __hash-for-each
      (lambda (_%proc149991%_ _%h149992%_)
        (let* ((_%proc149995%_ _%proc149991%_)
               (_%h150003%_ _%h149992%_)
               (_%self142668150012%_ _%h150003%_)
               (_%proc150015%_ _%proc149995%_)
               (_%self142668150022%_
                (let ((_%$obj150019%_ _%self142668150012%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150019%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150019%_)))
                           '#t)
                      _%$obj150019%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150019%_)))))
               (_%self142668150024%_ _%self142668150022%_)
               (_%proc150038%_ _%proc150015%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object150047150052%_
                       (##unchecked-structure-ref
                        _%self142668150024%_
                        '1
                        '#f
                        'for-each))
                      (_%method150048150053%_
                       (##unchecked-structure-ref
                        _%self142668150024%_
                        '5
                        '#f
                        'for-each)))
                  (_%method150048150053%_
                   _%object150047150052%_
                   _%proc150038%_)))
              (let ()
                (declare (not safe))
                (let ((_%object150054150059%_
                       (##unchecked-structure-ref
                        _%self142668150024%_
                        '1
                        '#f
                        'for-each))
                      (_%method150055150060%_
                       (##unchecked-structure-ref
                        _%self142668150024%_
                        '5
                        '#f
                        'for-each)))
                  (_%method150055150060%_
                   _%object150054150059%_
                   _%proc150038%_)))))))
    (define hash-for-each
      (lambda (_%proc147519%_ _%h147520%_)
        (if (procedure? _%proc147519%_)
            (let* ((_%proc147524%_ _%proc147519%_)
                   (_%h147536%_
                    (let ((_%$obj147533%_ _%h147520%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj147533%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj147533%_)))
                               '#t)
                          _%$obj147533%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj147533%_)))))
                   (_%h147538%_ _%h147536%_))
              (__hash-for-each _%proc147524%_ _%h147538%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc147519%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc149914%_ _%h149915%_)
        (let* ((_%proc149918%_ _%proc149914%_)
               (_%h149926%_ _%h149915%_)
               (_%result149935%_ '()))
          (let* ((_%self142668149937%_ _%h149926%_)
                 (_%proc149943%_
                  (lambda (_%k149940%_ _%v149941%_)
                    (set! _%result149935%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc149918%_ _%k149940%_ _%v149941%_))
                                _%result149935%_))))
                 (_%self142668149950%_
                  (let ((_%$obj149947%_ _%self142668149937%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj149947%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj149947%_)))
                             '#t)
                        _%$obj149947%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj149947%_)))))
                 (_%self142668149952%_ _%self142668149950%_)
                 (_%proc149967%_ _%proc149943%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object149976149981%_
                         (##unchecked-structure-ref
                          _%self142668149952%_
                          '1
                          '#f
                          'for-each))
                        (_%method149977149982%_
                         (##unchecked-structure-ref
                          _%self142668149952%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149977149982%_
                     _%object149976149981%_
                     _%proc149967%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object149983149988%_
                         (##unchecked-structure-ref
                          _%self142668149952%_
                          '1
                          '#f
                          'for-each))
                        (_%method149984149989%_
                         (##unchecked-structure-ref
                          _%self142668149952%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149984149989%_
                     _%object149983149988%_
                     _%proc149967%_)))))
          _%result149935%_)))
    (define hash-map
      (lambda (_%proc147668%_ _%h147669%_)
        (if (procedure? _%proc147668%_)
            (let* ((_%proc147673%_ _%proc147668%_)
                   (_%h147685%_
                    (let ((_%$obj147682%_ _%h147669%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj147682%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj147682%_)))
                               '#t)
                          _%$obj147682%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj147682%_)))))
                   (_%h147687%_ _%h147685%_))
              (__hash-map _%proc147673%_ _%h147687%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc147668%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc149836%_ _%iv149837%_ _%h149838%_)
        (let* ((_%proc149841%_ _%proc149836%_)
               (_%h149849%_ _%h149838%_)
               (_%result149858%_ _%iv149837%_))
          (let* ((_%self142668149860%_ _%h149849%_)
                 (_%proc149866%_
                  (lambda (_%k149863%_ _%v149864%_)
                    (set! _%result149858%_
                          (let ()
                            (declare (not safe))
                            (_%proc149841%_
                             _%k149863%_
                             _%v149864%_
                             _%result149858%_)))))
                 (_%self142668149873%_
                  (let ((_%$obj149870%_ _%self142668149860%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj149870%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj149870%_)))
                             '#t)
                        _%$obj149870%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj149870%_)))))
                 (_%self142668149875%_ _%self142668149873%_)
                 (_%proc149890%_ _%proc149866%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object149899149904%_
                         (##unchecked-structure-ref
                          _%self142668149875%_
                          '1
                          '#f
                          'for-each))
                        (_%method149900149905%_
                         (##unchecked-structure-ref
                          _%self142668149875%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149900149905%_
                     _%object149899149904%_
                     _%proc149890%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object149906149911%_
                         (##unchecked-structure-ref
                          _%self142668149875%_
                          '1
                          '#f
                          'for-each))
                        (_%method149907149912%_
                         (##unchecked-structure-ref
                          _%self142668149875%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149907149912%_
                     _%object149906149911%_
                     _%proc149890%_)))))
          _%result149858%_)))
    (define hash-fold
      (lambda (_%proc147817%_ _%iv147818%_ _%h147819%_)
        (if (procedure? _%proc147817%_)
            (let* ((_%proc147823%_ _%proc147817%_)
                   (_%h147835%_
                    (let ((_%$obj147832%_ _%h147819%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj147832%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj147832%_)))
                               '#t)
                          _%$obj147832%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj147832%_)))))
                   (_%h147837%_ _%h147835%_))
              (__hash-fold _%proc147823%_ _%iv147818%_ _%h147837%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc147817%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc149743%_ _%h149744%_ _%default-value149745%_)
        (let* ((_%proc149748%_ _%proc149743%_)
               (_%h149756%_ _%h149744%_)
               (__tmp158258
                (lambda (_%return149765%_)
                  (let* ((_%self142668149767%_ _%h149756%_)
                         (_%proc149776%_
                          (lambda (_%k149770%_ _%v149771%_)
                            (let ((_%$e149773%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc149748%_
                                      _%k149770%_
                                      _%v149771%_))))
                              (if _%$e149773%_
                                  (_%return149765%_ _%$e149773%_)
                                  '#!void))))
                         (_%self142668149783%_
                          (let ((_%$obj149780%_ _%self142668149767%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj149780%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj149780%_)))
                                     '#t)
                                _%$obj149780%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj149780%_)))))
                         (_%self142668149785%_ _%self142668149783%_)
                         (_%proc149800%_ _%proc149776%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object149809149814%_
                                 (##unchecked-structure-ref
                                  _%self142668149785%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method149810149815%_
                                 (##unchecked-structure-ref
                                  _%self142668149785%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method149810149815%_
                             _%object149809149814%_
                             _%proc149800%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object149816149821%_
                                 (##unchecked-structure-ref
                                  _%self142668149785%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method149817149822%_
                                 (##unchecked-structure-ref
                                  _%self142668149785%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method149817149822%_
                             _%object149816149821%_
                             _%proc149800%_)))))
                  _%default-value149745%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp158258))))
    (define __hash-find__0
      (lambda (_%proc149827%_ _%h149828%_)
        (let ((_%default-value149830%_ '#f))
          (__hash-find__%
           _%proc149827%_
           _%h149828%_
           _%default-value149830%_))))
    (define __hash-find
      (lambda _g158259_
        (let ((_g158260_ (let () (declare (not safe)) (##length _g158259_))))
          (cond ((let () (declare (not safe)) (##fx= _g158260_ 2))
                 (apply __hash-find__0 _g158259_))
                ((let () (declare (not safe)) (##fx= _g158260_ 3))
                 (apply __hash-find__% _g158259_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g158259_))))))
    (define hash-find__%
      (lambda (_%proc147968%_ _%h147969%_ _%default-value147970%_)
        (if (procedure? _%proc147968%_)
            (let* ((_%proc147974%_ _%proc147968%_)
                   (_%h147986%_
                    (let ((_%$obj147983%_ _%h147969%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj147983%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj147983%_)))
                               '#t)
                          _%$obj147983%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj147983%_)))))
                   (_%h147988%_ _%h147986%_))
              (__hash-find__%
               _%proc147974%_
               _%h147988%_
               _%default-value147970%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc147968%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc148001%_ _%h148002%_)
        (let ((_%default-value148004%_ '#f))
          (hash-find__% _%proc148001%_ _%h148002%_ _%default-value148004%_))))
    (define hash-find
      (lambda _g158261_
        (let ((_g158262_ (let () (declare (not safe)) (##length _g158261_))))
          (cond ((let () (declare (not safe)) (##fx= _g158262_ 2))
                 (apply hash-find__0 _g158261_))
                ((let () (declare (not safe)) (##fx= _g158262_ 3))
                 (apply hash-find__% _g158261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g158261_))))))
    (define __hash-keys
      (lambda (_%h149674%_)
        (let* ((_%h149677%_ _%h149674%_) (_%result149686%_ '()))
          (let* ((_%self142668149688%_ _%h149677%_)
                 (_%proc149694%_
                  (lambda (_%k149691%_ _%v149692%_)
                    (set! _%result149686%_
                          (cons _%k149691%_ _%result149686%_))))
                 (_%self142668149701%_
                  (let ((_%$obj149698%_ _%self142668149688%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj149698%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj149698%_)))
                             '#t)
                        _%$obj149698%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj149698%_)))))
                 (_%self142668149703%_ _%self142668149701%_)
                 (_%proc149718%_ _%proc149694%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object149727149732%_
                         (##unchecked-structure-ref
                          _%self142668149703%_
                          '1
                          '#f
                          'for-each))
                        (_%method149728149733%_
                         (##unchecked-structure-ref
                          _%self142668149703%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149728149733%_
                     _%object149727149732%_
                     _%proc149718%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object149734149739%_
                         (##unchecked-structure-ref
                          _%self142668149703%_
                          '1
                          '#f
                          'for-each))
                        (_%method149735149740%_
                         (##unchecked-structure-ref
                          _%self142668149703%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149735149740%_
                     _%object149734149739%_
                     _%proc149718%_)))))
          _%result149686%_)))
    (define hash-keys
      (lambda (_%h148130%_)
        (let* ((_%h148136%_
                (let ((_%$obj148133%_ _%h148130%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148133%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148133%_)))
                           '#t)
                      _%$obj148133%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148133%_)))))
               (_%h148138%_ _%h148136%_))
          (__hash-keys _%h148138%_))))
    (define __hash-values
      (lambda (_%h149606%_)
        (let* ((_%h149609%_ _%h149606%_) (_%result149618%_ '()))
          (let* ((_%self142668149620%_ _%h149609%_)
                 (_%proc149626%_
                  (lambda (_%k149623%_ _%v149624%_)
                    (set! _%result149618%_
                          (cons _%v149624%_ _%result149618%_))))
                 (_%self142668149633%_
                  (let ((_%$obj149630%_ _%self142668149620%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj149630%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj149630%_)))
                             '#t)
                        _%$obj149630%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj149630%_)))))
                 (_%self142668149635%_ _%self142668149633%_)
                 (_%proc149650%_ _%proc149626%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object149659149664%_
                         (##unchecked-structure-ref
                          _%self142668149635%_
                          '1
                          '#f
                          'for-each))
                        (_%method149660149665%_
                         (##unchecked-structure-ref
                          _%self142668149635%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149660149665%_
                     _%object149659149664%_
                     _%proc149650%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object149666149671%_
                         (##unchecked-structure-ref
                          _%self142668149635%_
                          '1
                          '#f
                          'for-each))
                        (_%method149667149672%_
                         (##unchecked-structure-ref
                          _%self142668149635%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149667149672%_
                     _%object149666149671%_
                     _%proc149650%_)))))
          _%result149618%_)))
    (define hash-values
      (lambda (_%h148268%_)
        (let* ((_%h148274%_
                (let ((_%$obj148271%_ _%h148268%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148271%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148271%_)))
                           '#t)
                      _%$obj148271%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148271%_)))))
               (_%h148276%_ _%h148274%_))
          (__hash-values _%h148276%_))))
    (define __hash-copy
      (lambda (_%h149555%_)
        (let* ((_%h149558%_ _%h149555%_)
               (_%self142081149567%_ _%h149558%_)
               (_%self142081149574%_
                (let ((_%$obj149571%_ _%self142081149567%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149571%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149571%_)))
                           '#t)
                      _%$obj149571%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149571%_)))))
               (_%self142081149576%_ _%self142081149574%_))
          (if __DEBUG
              (let ((_%$obj149596%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object149588149593%_
                              (##unchecked-structure-ref
                               _%self142081149576%_
                               '1
                               '#f
                               'copy))
                             (_%method149589149594%_
                              (##unchecked-structure-ref
                               _%self142081149576%_
                               '3
                               '#f
                               'copy)))
                         (_%method149589149594%_ _%object149588149593%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj149596%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj149596%_)))
                         '#t)
                    _%$obj149596%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj149596%_))))
              (let ()
                (declare (not safe))
                (let ((_%object149598149603%_
                       (##unchecked-structure-ref
                        _%self142081149576%_
                        '1
                        '#f
                        'copy))
                      (_%method149599149604%_
                       (##unchecked-structure-ref
                        _%self142081149576%_
                        '3
                        '#f
                        'copy)))
                  (_%method149599149604%_ _%object149598149603%_)))))))
    (define hash-copy
      (lambda (_%h148406%_)
        (let* ((_%h148412%_
                (let ((_%$obj148409%_ _%h148406%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148409%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148409%_)))
                           '#t)
                      _%$obj148409%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148409%_)))))
               (_%h148414%_ _%h148412%_))
          (__hash-copy _%h148414%_))))
    (define __hash-clear!
      (lambda (_%h149507%_)
        (let* ((_%h149510%_ _%h149507%_)
               (_%self141789149519%_ _%h149510%_)
               (_%self141789149526%_
                (let ((_%$obj149523%_ _%self141789149519%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149523%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149523%_)))
                           '#t)
                      _%$obj149523%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149523%_)))))
               (_%self141789149528%_ _%self141789149526%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object149540149545%_
                       (##unchecked-structure-ref
                        _%self141789149528%_
                        '1
                        '#f
                        'clear!))
                      (_%method149541149546%_
                       (##unchecked-structure-ref
                        _%self141789149528%_
                        '2
                        '#f
                        'clear!)))
                  (_%method149541149546%_ _%object149540149545%_)))
              (let ()
                (declare (not safe))
                (let ((_%object149547149552%_
                       (##unchecked-structure-ref
                        _%self141789149528%_
                        '1
                        '#f
                        'clear!))
                      (_%method149548149553%_
                       (##unchecked-structure-ref
                        _%self141789149528%_
                        '2
                        '#f
                        'clear!)))
                  (_%method149548149553%_ _%object149547149552%_)))))))
    (define hash-clear!
      (lambda (_%h148544%_)
        (let* ((_%h148550%_
                (let ((_%$obj148547%_ _%h148544%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148547%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148547%_)))
                           '#t)
                      _%$obj148547%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148547%_)))))
               (_%h148552%_ _%h148550%_))
          (__hash-clear! _%h148552%_))))
    (define __hash-merge
      (lambda (_%h149453%_ . _%rest149454%_)
        (let* ((_%h149457%_ _%h149453%_)
               (_%copy149505%_
                (let* ((_%self142081149466%_ _%h149457%_)
                       (_%self142081149473%_
                        (let ((_%$obj149470%_ _%self142081149466%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj149470%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj149470%_)))
                                   '#t)
                              _%$obj149470%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj149470%_)))))
                       (_%self142081149475%_ _%self142081149473%_))
                  (if __DEBUG
                      (let ((_%$obj149495%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object149487149492%_
                                      (##unchecked-structure-ref
                                       _%self142081149475%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method149488149493%_
                                      (##unchecked-structure-ref
                                       _%self142081149475%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method149488149493%_
                                  _%object149487149492%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj149495%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj149495%_)))
                                 '#t)
                            _%$obj149495%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj149495%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object149497149502%_
                               (##unchecked-structure-ref
                                _%self142081149475%_
                                '1
                                '#f
                                'copy))
                              (_%method149498149503%_
                               (##unchecked-structure-ref
                                _%self142081149475%_
                                '3
                                '#f
                                'copy)))
                          (_%method149498149503%_ _%object149497149502%_)))))))
          (apply hash-merge! _%copy149505%_ _%rest149454%_)
          _%copy149505%_)))
    (define hash-merge
      (lambda (_%h148682%_ . _%rest148683%_)
        (let* ((_%h148689%_
                (let ((_%$obj148686%_ _%h148682%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148686%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148686%_)))
                           '#t)
                      _%$obj148686%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148686%_)))))
               (_%h148691%_ _%h148689%_))
          (declare (not safe))
          (##apply __hash-merge _%h148691%_ _%rest148683%_))))
    (define __hash-merge-right
      (lambda (_%h149399%_ . _%rest149400%_)
        (let* ((_%h149403%_ _%h149399%_)
               (_%copy149451%_
                (let* ((_%self142081149412%_ _%h149403%_)
                       (_%self142081149419%_
                        (let ((_%$obj149416%_ _%self142081149412%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj149416%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj149416%_)))
                                   '#t)
                              _%$obj149416%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj149416%_)))))
                       (_%self142081149421%_ _%self142081149419%_))
                  (if __DEBUG
                      (let ((_%$obj149441%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object149433149438%_
                                      (##unchecked-structure-ref
                                       _%self142081149421%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method149434149439%_
                                      (##unchecked-structure-ref
                                       _%self142081149421%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method149434149439%_
                                  _%object149433149438%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj149441%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj149441%_)))
                                 '#t)
                            _%$obj149441%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj149441%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object149443149448%_
                               (##unchecked-structure-ref
                                _%self142081149421%_
                                '1
                                '#f
                                'copy))
                              (_%method149444149449%_
                               (##unchecked-structure-ref
                                _%self142081149421%_
                                '3
                                '#f
                                'copy)))
                          (_%method149444149449%_ _%object149443149448%_)))))))
          (apply hash-merge-right! _%copy149451%_ _%rest149400%_)
          _%copy149451%_)))
    (define hash-merge-right
      (lambda (_%h148821%_ . _%rest148822%_)
        (let* ((_%h148828%_
                (let ((_%$obj148825%_ _%h148821%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148825%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148825%_)))
                           '#t)
                      _%$obj148825%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148825%_)))))
               (_%h148830%_ _%h148828%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h148830%_ _%rest148822%_))))
    (define __hash-merge!
      (lambda (_%h149247%_ . _%rest149248%_)
        (let ((_%h149251%_ _%h149247%_))
          (let ((__tmp158263
                 (lambda (_%hr149260%_)
                   (let* ((_%hr149266%_
                           (let ((_%$obj149263%_ _%hr149260%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj149263%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj149263%_)))
                                      '#t)
                                 _%$obj149263%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj149263%_)))))
                          (_%hr149268%_ _%hr149266%_)
                          (_%self142668149281%_ _%hr149268%_)
                          (_%proc149356%_
                           (lambda (_%k149284%_ _%v149285%_)
                             (if (let* ((_%h149287%_ _%h149251%_)
                                        (_%k149290%_ _%k149284%_)
                                        (_%h149297%_
                                         (let ((_%$obj149294%_ _%h149287%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj149294%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj149294%_)))
                                                    '#t)
                                               _%$obj149294%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj149294%_)))))
                                        (_%h149299%_ _%h149297%_))
                                   (__hash-key? _%h149299%_ _%k149290%_))
                                 '#!void
                                 (let* ((_%self143568149315%_ _%h149251%_)
                                        (_%key149318%_ _%k149284%_)
                                        (_%value149321%_ _%v149285%_)
                                        (_%self143568149328%_
                                         (let ((_%$obj149325%_
                                                _%self143568149315%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj149325%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj149325%_)))
                                                    '#t)
                                               _%$obj149325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj149325%_)))))
                                        (_%self143568149330%_
                                         _%self143568149328%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object149341149346%_
                                                (##unchecked-structure-ref
                                                 _%self143568149330%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method149342149347%_
                                                (##unchecked-structure-ref
                                                 _%self143568149330%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method149342149347%_
                                            _%object149341149346%_
                                            _%key149318%_
                                            _%value149321%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object149348149353%_
                                                (##unchecked-structure-ref
                                                 _%self143568149330%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method149349149354%_
                                                (##unchecked-structure-ref
                                                 _%self143568149330%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method149349149354%_
                                            _%object149348149353%_
                                            _%key149318%_
                                            _%value149321%_))))))))
                          (_%self142668149363%_
                           (let ((_%$obj149360%_ _%self142668149281%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj149360%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj149360%_)))
                                      '#t)
                                 _%$obj149360%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj149360%_)))))
                          (_%self142668149365%_ _%self142668149363%_)
                          (_%proc149375%_ _%proc149356%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object149384149389%_
                                  (##unchecked-structure-ref
                                   _%self142668149365%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method149385149390%_
                                  (##unchecked-structure-ref
                                   _%self142668149365%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method149385149390%_
                              _%object149384149389%_
                              _%proc149375%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object149391149396%_
                                  (##unchecked-structure-ref
                                   _%self142668149365%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method149392149397%_
                                  (##unchecked-structure-ref
                                   _%self142668149365%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method149392149397%_
                              _%object149391149396%_
                              _%proc149375%_))))))))
            (declare (not safe))
            (##for-each __tmp158263 _%rest149248%_))
          _%h149251%_)))
    (define hash-merge!
      (lambda (_%h148960%_ . _%rest148961%_)
        (let* ((_%h148967%_
                (let ((_%$obj148964%_ _%h148960%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148964%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148964%_)))
                           '#t)
                      _%$obj148964%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148964%_)))))
               (_%h148969%_ _%h148967%_))
          (declare (not safe))
          (##apply __hash-merge! _%h148969%_ _%rest148961%_))))
    (define __hash-merge-right!
      (lambda (_%h149118%_ . _%rest149119%_)
        (let ((_%h149122%_ _%h149118%_))
          (let ((__tmp158264
                 (lambda (_%hr149131%_)
                   (let* ((_%hr149137%_
                           (let ((_%$obj149134%_ _%hr149131%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj149134%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj149134%_)))
                                      '#t)
                                 _%$obj149134%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj149134%_)))))
                          (_%hr149139%_ _%hr149137%_)
                          (_%self142668149152%_ _%hr149139%_)
                          (_%proc149204%_
                           (lambda (_%k149155%_ _%v149156%_)
                             (let* ((_%self143568149158%_ _%h149122%_)
                                    (_%key149161%_ _%k149155%_)
                                    (_%value149164%_ _%v149156%_)
                                    (_%self143568149171%_
                                     (let ((_%$obj149168%_
                                            _%self143568149158%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj149168%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj149168%_)))
                                                '#t)
                                           _%$obj149168%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj149168%_)))))
                                    (_%self143568149173%_
                                     _%self143568149171%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object149189149194%_
                                            (##unchecked-structure-ref
                                             _%self143568149173%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method149190149195%_
                                            (##unchecked-structure-ref
                                             _%self143568149173%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method149190149195%_
                                        _%object149189149194%_
                                        _%key149161%_
                                        _%value149164%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object149196149201%_
                                            (##unchecked-structure-ref
                                             _%self143568149173%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method149197149202%_
                                            (##unchecked-structure-ref
                                             _%self143568149173%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method149197149202%_
                                        _%object149196149201%_
                                        _%key149161%_
                                        _%value149164%_)))))))
                          (_%self142668149211%_
                           (let ((_%$obj149208%_ _%self142668149152%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj149208%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj149208%_)))
                                      '#t)
                                 _%$obj149208%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj149208%_)))))
                          (_%self142668149213%_ _%self142668149211%_)
                          (_%proc149223%_ _%proc149204%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object149232149237%_
                                  (##unchecked-structure-ref
                                   _%self142668149213%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method149233149238%_
                                  (##unchecked-structure-ref
                                   _%self142668149213%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method149233149238%_
                              _%object149232149237%_
                              _%proc149223%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object149239149244%_
                                  (##unchecked-structure-ref
                                   _%self142668149213%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method149240149245%_
                                  (##unchecked-structure-ref
                                   _%self142668149213%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method149240149245%_
                              _%object149239149244%_
                              _%proc149223%_))))))))
            (declare (not safe))
            (##for-each __tmp158264 _%rest149119%_))
          _%h149122%_)))
    (define hash-merge-right!
      (lambda (_%h149099%_ . _%rest149100%_)
        (let* ((_%h149106%_
                (let ((_%$obj149103%_ _%h149099%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149103%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149103%_)))
                           '#t)
                      _%$obj149103%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149103%_)))))
               (_%h149108%_ _%h149106%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h149108%_ _%rest149100%_))))))
