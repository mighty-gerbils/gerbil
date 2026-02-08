(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1770513295)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp158277 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp158277
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args157019%_
        (apply make-instance UnboundKeyError::t _%$args157019%_)))
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
      (lambda (_%where156893%_ _%message156894%_ . _%irritants156895%_)
        (let ((__tmp158278
               (let ((__obj158269
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj158269
                    _%message156894%_
                    'where:
                    _%where156893%_
                    'irritants:
                    _%irritants156895%_))
                 __obj158269)))
          (declare (not safe))
          (raise __tmp158278))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp158279 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp158279
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj158271
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj158271
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj158271))
    (define make-HashTable
      (lambda (_%obj156891%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj156891%_))))
    (define try-HashTable
      (lambda (_%obj156889%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj156889%_))))
    (define HashTable?
      (lambda (_%obj156887%_)
        (let ((__tmp158280
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj156887%_ __tmp158280))))
    (define is-HashTable?
      (lambda (_%obj156884%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj156884%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self141874142118%_)
        (let ((_%self141874142120%_ _%self141874142118%_))
          (declare (not safe))
          (let ((_%object142127142132%_
                 (##unchecked-structure-ref
                  _%self141874142120%_
                  '1
                  '#f
                  'clear!))
                (_%method142128142133%_
                 (##unchecked-structure-ref
                  _%self141874142120%_
                  '2
                  '#f
                  'clear!)))
            (_%method142128142133%_ _%object142127142132%_)))))
    (define ::HashTable-clear!
      (lambda (_%self141875142135%_)
        (let* ((_%self141875142140%_
                (let ((_%$obj142137%_ _%self141875142135%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj142137%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj142137%_)))
                           '#t)
                      _%$obj142137%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj142137%_)))))
               (_%self141875142142%_ _%self141875142140%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object142150142155%_
                       (##unchecked-structure-ref
                        _%self141875142142%_
                        '1
                        '#f
                        'clear!))
                      (_%method142151142156%_
                       (##unchecked-structure-ref
                        _%self141875142142%_
                        '2
                        '#f
                        'clear!)))
                  (_%method142151142156%_ _%object142150142155%_)))
              (let ()
                (declare (not safe))
                (let ((_%object142157142162%_
                       (##unchecked-structure-ref
                        _%self141875142142%_
                        '1
                        '#f
                        'clear!))
                      (_%method142158142163%_
                       (##unchecked-structure-ref
                        _%self141875142142%_
                        '2
                        '#f
                        'clear!)))
                  (_%method142158142163%_ _%object142157142162%_)))))))
    (define __HashTable-copy
      (lambda (_%self142166142409%_)
        (let ((_%self142166142411%_ _%self142166142409%_))
          (declare (not safe))
          (let ((_%object142418142423%_
                 (##unchecked-structure-ref _%self142166142411%_ '1 '#f 'copy))
                (_%method142419142424%_
                 (##unchecked-structure-ref
                  _%self142166142411%_
                  '3
                  '#f
                  'copy)))
            (_%method142419142424%_ _%object142418142423%_)))))
    (define ::HashTable-copy
      (lambda (_%self142167142426%_)
        (let* ((_%self142167142431%_
                (let ((_%$obj142428%_ _%self142167142426%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj142428%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj142428%_)))
                           '#t)
                      _%$obj142428%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj142428%_)))))
               (_%self142167142433%_ _%self142167142431%_))
          (if __DEBUG
              (let ((_%$obj142449%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object142441142446%_
                              (##unchecked-structure-ref
                               _%self142167142433%_
                               '1
                               '#f
                               'copy))
                             (_%method142442142447%_
                              (##unchecked-structure-ref
                               _%self142167142433%_
                               '3
                               '#f
                               'copy)))
                         (_%method142442142447%_ _%object142441142446%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj142449%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj142449%_)))
                         '#t)
                    _%$obj142449%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj142449%_))))
              (let ()
                (declare (not safe))
                (let ((_%object142451142456%_
                       (##unchecked-structure-ref
                        _%self142167142433%_
                        '1
                        '#f
                        'copy))
                      (_%method142452142457%_
                       (##unchecked-structure-ref
                        _%self142167142433%_
                        '3
                        '#f
                        'copy)))
                  (_%method142452142457%_ _%object142451142456%_)))))))
    (define __HashTable-delete!
      (lambda (_%self142460142703%_ _%key142704%_)
        (let ((_%self142460142706%_ _%self142460142703%_))
          (declare (not safe))
          (let ((_%object142713142718%_
                 (##unchecked-structure-ref
                  _%self142460142706%_
                  '1
                  '#f
                  'delete!))
                (_%method142714142719%_
                 (##unchecked-structure-ref
                  _%self142460142706%_
                  '4
                  '#f
                  'delete!)))
            (_%method142714142719%_ _%object142713142718%_ _%key142704%_)))))
    (define ::HashTable-delete!
      (lambda (_%self142461142721%_ _%key142722%_)
        (let* ((_%self142461142727%_
                (let ((_%$obj142724%_ _%self142461142721%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj142724%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj142724%_)))
                           '#t)
                      _%$obj142724%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj142724%_)))))
               (_%self142461142729%_ _%self142461142727%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object142737142742%_
                       (##unchecked-structure-ref
                        _%self142461142729%_
                        '1
                        '#f
                        'delete!))
                      (_%method142738142743%_
                       (##unchecked-structure-ref
                        _%self142461142729%_
                        '4
                        '#f
                        'delete!)))
                  (_%method142738142743%_
                   _%object142737142742%_
                   _%key142722%_)))
              (let ()
                (declare (not safe))
                (let ((_%object142744142749%_
                       (##unchecked-structure-ref
                        _%self142461142729%_
                        '1
                        '#f
                        'delete!))
                      (_%method142745142750%_
                       (##unchecked-structure-ref
                        _%self142461142729%_
                        '4
                        '#f
                        'delete!)))
                  (_%method142745142750%_
                   _%object142744142749%_
                   _%key142722%_)))))))
    (define __HashTable-for-each
      (lambda (_%self142753142996%_ _%proc142997%_)
        (let* ((_%self142753142999%_ _%self142753142996%_)
               (_%proc143006%_ _%proc142997%_))
          (declare (not safe))
          (let ((_%object143014143019%_
                 (##unchecked-structure-ref
                  _%self142753142999%_
                  '1
                  '#f
                  'for-each))
                (_%method143015143020%_
                 (##unchecked-structure-ref
                  _%self142753142999%_
                  '5
                  '#f
                  'for-each)))
            (_%method143015143020%_ _%object143014143019%_ _%proc143006%_)))))
    (define ::HashTable-for-each
      (lambda (_%self142754143022%_ _%proc143023%_)
        (let* ((_%self142754143028%_
                (let ((_%$obj143025%_ _%self142754143022%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj143025%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj143025%_)))
                           '#t)
                      _%$obj143025%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj143025%_)))))
               (_%self142754143030%_ _%self142754143028%_))
          (if (procedure? _%proc143023%_)
              (let ((_%proc143039%_ _%proc143023%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object143048143053%_
                             (##unchecked-structure-ref
                              _%self142754143030%_
                              '1
                              '#f
                              'for-each))
                            (_%method143049143054%_
                             (##unchecked-structure-ref
                              _%self142754143030%_
                              '5
                              '#f
                              'for-each)))
                        (_%method143049143054%_
                         _%object143048143053%_
                         _%proc143039%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object143055143060%_
                             (##unchecked-structure-ref
                              _%self142754143030%_
                              '1
                              '#f
                              'for-each))
                            (_%method143056143061%_
                             (##unchecked-structure-ref
                              _%self142754143030%_
                              '5
                              '#f
                              'for-each)))
                        (_%method143056143061%_
                         _%object143055143060%_
                         _%proc143039%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc143023%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self143064143307%_)
        (let ((_%self143064143309%_ _%self143064143307%_))
          (declare (not safe))
          (let ((_%object143316143321%_
                 (##unchecked-structure-ref
                  _%self143064143309%_
                  '1
                  '#f
                  'length))
                (_%method143317143322%_
                 (##unchecked-structure-ref
                  _%self143064143309%_
                  '6
                  '#f
                  'length)))
            (_%method143317143322%_ _%object143316143321%_)))))
    (define ::HashTable-length
      (lambda (_%self143065143324%_)
        (let* ((_%self143065143329%_
                (let ((_%$obj143326%_ _%self143065143324%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj143326%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj143326%_)))
                           '#t)
                      _%$obj143326%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj143326%_)))))
               (_%self143065143331%_ _%self143065143329%_))
          (if __DEBUG
              (let ((_%val143347%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object143339143344%_
                              (##unchecked-structure-ref
                               _%self143065143331%_
                               '1
                               '#f
                               'length))
                             (_%method143340143345%_
                              (##unchecked-structure-ref
                               _%self143065143331%_
                               '6
                               '#f
                               'length)))
                         (_%method143340143345%_ _%object143339143344%_)))))
                (if (fixnum? _%val143347%_)
                    _%val143347%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val143347%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object143349143354%_
                       (##unchecked-structure-ref
                        _%self143065143331%_
                        '1
                        '#f
                        'length))
                      (_%method143350143355%_
                       (##unchecked-structure-ref
                        _%self143065143331%_
                        '6
                        '#f
                        'length)))
                  (_%method143350143355%_ _%object143349143354%_)))))))
    (define __HashTable-ref
      (lambda (_%self143358143601%_ _%key143602%_ _%default143603%_)
        (let ((_%self143358143605%_ _%self143358143601%_))
          (declare (not safe))
          (let ((_%object143612143617%_
                 (##unchecked-structure-ref _%self143358143605%_ '1 '#f 'ref))
                (_%method143613143618%_
                 (##unchecked-structure-ref _%self143358143605%_ '7 '#f 'ref)))
            (_%method143613143618%_
             _%object143612143617%_
             _%key143602%_
             _%default143603%_)))))
    (define ::HashTable-ref
      (lambda (_%self143359143620%_ _%key143621%_ _%default143622%_)
        (let* ((_%self143359143627%_
                (let ((_%$obj143624%_ _%self143359143620%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj143624%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj143624%_)))
                           '#t)
                      _%$obj143624%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj143624%_)))))
               (_%self143359143629%_ _%self143359143627%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object143637143642%_
                       (##unchecked-structure-ref
                        _%self143359143629%_
                        '1
                        '#f
                        'ref))
                      (_%method143638143643%_
                       (##unchecked-structure-ref
                        _%self143359143629%_
                        '7
                        '#f
                        'ref)))
                  (_%method143638143643%_
                   _%object143637143642%_
                   _%key143621%_
                   _%default143622%_)))
              (let ()
                (declare (not safe))
                (let ((_%object143644143649%_
                       (##unchecked-structure-ref
                        _%self143359143629%_
                        '1
                        '#f
                        'ref))
                      (_%method143645143650%_
                       (##unchecked-structure-ref
                        _%self143359143629%_
                        '7
                        '#f
                        'ref)))
                  (_%method143645143650%_
                   _%object143644143649%_
                   _%key143621%_
                   _%default143622%_)))))))
    (define __HashTable-set!
      (lambda (_%self143653143896%_ _%key143897%_ _%value143898%_)
        (let ((_%self143653143900%_ _%self143653143896%_))
          (declare (not safe))
          (let ((_%object143907143912%_
                 (##unchecked-structure-ref _%self143653143900%_ '1 '#f 'set!))
                (_%method143908143913%_
                 (##unchecked-structure-ref
                  _%self143653143900%_
                  '8
                  '#f
                  'set!)))
            (_%method143908143913%_
             _%object143907143912%_
             _%key143897%_
             _%value143898%_)))))
    (define ::HashTable-set!
      (lambda (_%self143654143915%_ _%key143916%_ _%value143917%_)
        (let* ((_%self143654143922%_
                (let ((_%$obj143919%_ _%self143654143915%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj143919%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj143919%_)))
                           '#t)
                      _%$obj143919%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj143919%_)))))
               (_%self143654143924%_ _%self143654143922%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object143932143937%_
                       (##unchecked-structure-ref
                        _%self143654143924%_
                        '1
                        '#f
                        'set!))
                      (_%method143933143938%_
                       (##unchecked-structure-ref
                        _%self143654143924%_
                        '8
                        '#f
                        'set!)))
                  (_%method143933143938%_
                   _%object143932143937%_
                   _%key143916%_
                   _%value143917%_)))
              (let ()
                (declare (not safe))
                (let ((_%object143939143944%_
                       (##unchecked-structure-ref
                        _%self143654143924%_
                        '1
                        '#f
                        'set!))
                      (_%method143940143945%_
                       (##unchecked-structure-ref
                        _%self143654143924%_
                        '8
                        '#f
                        'set!)))
                  (_%method143940143945%_
                   _%object143939143944%_
                   _%key143916%_
                   _%value143917%_)))))))
    (define __HashTable-update!
      (lambda (_%self143948144191%_
               _%key144192%_
               _%proc144193%_
               _%default144194%_)
        (let* ((_%self143948144196%_ _%self143948144191%_)
               (_%proc144203%_ _%proc144193%_))
          (declare (not safe))
          (let ((_%object144211144216%_
                 (##unchecked-structure-ref
                  _%self143948144196%_
                  '1
                  '#f
                  'update!))
                (_%method144212144217%_
                 (##unchecked-structure-ref
                  _%self143948144196%_
                  '9
                  '#f
                  'update!)))
            (_%method144212144217%_
             _%object144211144216%_
             _%key144192%_
             _%proc144203%_
             _%default144194%_)))))
    (define ::HashTable-update!
      (lambda (_%self143949144219%_
               _%key144220%_
               _%proc144221%_
               _%default144222%_)
        (let* ((_%self143949144227%_
                (let ((_%$obj144224%_ _%self143949144219%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144224%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144224%_)))
                           '#t)
                      _%$obj144224%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj144224%_)))))
               (_%self143949144229%_ _%self143949144227%_))
          (if (procedure? _%proc144221%_)
              (let ((_%proc144238%_ _%proc144221%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object144247144252%_
                             (##unchecked-structure-ref
                              _%self143949144229%_
                              '1
                              '#f
                              'update!))
                            (_%method144248144253%_
                             (##unchecked-structure-ref
                              _%self143949144229%_
                              '9
                              '#f
                              'update!)))
                        (_%method144248144253%_
                         _%object144247144252%_
                         _%key144220%_
                         _%proc144238%_
                         _%default144222%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object144254144259%_
                             (##unchecked-structure-ref
                              _%self143949144229%_
                              '1
                              '#f
                              'update!))
                            (_%method144255144260%_
                             (##unchecked-structure-ref
                              _%self143949144229%_
                              '9
                              '#f
                              'update!)))
                        (_%method144255144260%_
                         _%object144254144259%_
                         _%key144220%_
                         _%proc144238%_
                         _%default144222%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc144221%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp158281 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp158281
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj158273
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj158273
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj158273))
    (define make-Locker
      (lambda (_%obj156882%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj156882%_))))
    (define try-Locker
      (lambda (_%obj156880%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj156880%_))))
    (define Locker?
      (lambda (_%obj156878%_)
        (let ((__tmp158282
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj156878%_ __tmp158282))))
    (define is-Locker?
      (lambda (_%obj156875%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj156875%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self144263144506%_)
        (let ((_%self144263144508%_ _%self144263144506%_))
          (declare (not safe))
          (let ((_%object144515144520%_
                 (##unchecked-structure-ref
                  _%self144263144508%_
                  '1
                  '#f
                  'read-lock!))
                (_%method144516144521%_
                 (##unchecked-structure-ref
                  _%self144263144508%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method144516144521%_ _%object144515144520%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self144264144523%_)
        (let* ((_%self144264144528%_
                (let ((_%$obj144525%_ _%self144264144523%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144525%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144525%_)))
                           '#t)
                      _%$obj144525%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj144525%_)))))
               (_%self144264144530%_ _%self144264144528%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object144538144543%_
                       (##unchecked-structure-ref
                        _%self144264144530%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method144539144544%_
                       (##unchecked-structure-ref
                        _%self144264144530%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method144539144544%_ _%object144538144543%_)))
              (let ()
                (declare (not safe))
                (let ((_%object144545144550%_
                       (##unchecked-structure-ref
                        _%self144264144530%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method144546144551%_
                       (##unchecked-structure-ref
                        _%self144264144530%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method144546144551%_ _%object144545144550%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self144554144797%_)
        (let ((_%self144554144799%_ _%self144554144797%_))
          (declare (not safe))
          (let ((_%object144806144811%_
                 (##unchecked-structure-ref
                  _%self144554144799%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method144807144812%_
                 (##unchecked-structure-ref
                  _%self144554144799%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method144807144812%_ _%object144806144811%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self144555144814%_)
        (let* ((_%self144555144819%_
                (let ((_%$obj144816%_ _%self144555144814%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj144816%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj144816%_)))
                           '#t)
                      _%$obj144816%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj144816%_)))))
               (_%self144555144821%_ _%self144555144819%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object144829144834%_
                       (##unchecked-structure-ref
                        _%self144555144821%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method144830144835%_
                       (##unchecked-structure-ref
                        _%self144555144821%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method144830144835%_ _%object144829144834%_)))
              (let ()
                (declare (not safe))
                (let ((_%object144836144841%_
                       (##unchecked-structure-ref
                        _%self144555144821%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method144837144842%_
                       (##unchecked-structure-ref
                        _%self144555144821%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method144837144842%_ _%object144836144841%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self144845145088%_)
        (let ((_%self144845145090%_ _%self144845145088%_))
          (declare (not safe))
          (let ((_%object145097145102%_
                 (##unchecked-structure-ref
                  _%self144845145090%_
                  '1
                  '#f
                  'write-lock!))
                (_%method145098145103%_
                 (##unchecked-structure-ref
                  _%self144845145090%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method145098145103%_ _%object145097145102%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self144846145105%_)
        (let* ((_%self144846145110%_
                (let ((_%$obj145107%_ _%self144846145105%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145107%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145107%_)))
                           '#t)
                      _%$obj145107%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj145107%_)))))
               (_%self144846145112%_ _%self144846145110%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object145120145125%_
                       (##unchecked-structure-ref
                        _%self144846145112%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method145121145126%_
                       (##unchecked-structure-ref
                        _%self144846145112%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method145121145126%_ _%object145120145125%_)))
              (let ()
                (declare (not safe))
                (let ((_%object145127145132%_
                       (##unchecked-structure-ref
                        _%self144846145112%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method145128145133%_
                       (##unchecked-structure-ref
                        _%self144846145112%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method145128145133%_ _%object145127145132%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self145136145379%_)
        (let ((_%self145136145381%_ _%self145136145379%_))
          (declare (not safe))
          (let ((_%object145388145393%_
                 (##unchecked-structure-ref
                  _%self145136145381%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method145389145394%_
                 (##unchecked-structure-ref
                  _%self145136145381%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method145389145394%_ _%object145388145393%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self145137145396%_)
        (let* ((_%self145137145401%_
                (let ((_%$obj145398%_ _%self145137145396%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145398%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145398%_)))
                           '#t)
                      _%$obj145398%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj145398%_)))))
               (_%self145137145403%_ _%self145137145401%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object145411145416%_
                       (##unchecked-structure-ref
                        _%self145137145403%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method145412145417%_
                       (##unchecked-structure-ref
                        _%self145137145403%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method145412145417%_ _%object145411145416%_)))
              (let ()
                (declare (not safe))
                (let ((_%object145418145423%_
                       (##unchecked-structure-ref
                        _%self145137145403%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method145419145424%_
                       (##unchecked-structure-ref
                        _%self145137145403%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method145419145424%_ _%object145418145423%_)))))))
    (let* ((_%klass156838%_ __table::t)
           (_%id156841%_ 'HashTable::ref)
           (_%proc156844%_ raw-table-ref)
           (_%rebind?156847%_ '#f)
           (_%id156852%_ _%id156841%_)
           (_%proc156865%_ _%proc156844%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156838%_
       _%id156852%_
       _%proc156865%_
       _%rebind?156847%_))
    (let* ((_%klass156801%_ __table::t)
           (_%id156804%_ 'HashTable::set!)
           (_%proc156807%_ raw-table-set!)
           (_%rebind?156810%_ '#f)
           (_%id156815%_ _%id156804%_)
           (_%proc156828%_ _%proc156807%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156801%_
       _%id156815%_
       _%proc156828%_
       _%rebind?156810%_))
    (let* ((_%klass156764%_ __table::t)
           (_%id156767%_ 'HashTable::update!)
           (_%proc156770%_ raw-table-update!)
           (_%rebind?156773%_ '#f)
           (_%id156778%_ _%id156767%_)
           (_%proc156791%_ _%proc156770%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156764%_
       _%id156778%_
       _%proc156791%_
       _%rebind?156773%_))
    (let* ((_%klass156727%_ __table::t)
           (_%id156730%_ 'HashTable::delete!)
           (_%proc156733%_ raw-table-delete!)
           (_%rebind?156736%_ '#f)
           (_%id156741%_ _%id156730%_)
           (_%proc156754%_ _%proc156733%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156727%_
       _%id156741%_
       _%proc156754%_
       _%rebind?156736%_))
    (let* ((_%klass156690%_ __table::t)
           (_%id156693%_ 'HashTable::for-each)
           (_%proc156696%_ raw-table-for-each)
           (_%rebind?156699%_ '#f)
           (_%id156704%_ _%id156693%_)
           (_%proc156717%_ _%proc156696%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156690%_
       _%id156704%_
       _%proc156717%_
       _%rebind?156699%_))
    (let* ((_%klass156653%_ __table::t)
           (_%id156656%_ 'HashTable::length)
           (_%proc156659%_ &raw-table-count)
           (_%rebind?156662%_ '#f)
           (_%id156667%_ _%id156656%_)
           (_%proc156680%_ _%proc156659%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156653%_
       _%id156667%_
       _%proc156680%_
       _%rebind?156662%_))
    (let* ((_%klass156616%_ __table::t)
           (_%id156619%_ 'HashTable::copy)
           (_%proc156622%_ raw-table-copy)
           (_%rebind?156625%_ '#f)
           (_%id156630%_ _%id156619%_)
           (_%proc156643%_ _%proc156622%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156616%_
       _%id156630%_
       _%proc156643%_
       _%rebind?156625%_))
    (let* ((_%klass156579%_ __table::t)
           (_%id156582%_ 'HashTable::clear!)
           (_%proc156585%_ raw-table-clear!)
           (_%rebind?156588%_ '#f)
           (_%id156593%_ _%id156582%_)
           (_%proc156606%_ _%proc156585%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156579%_
       _%id156593%_
       _%proc156606%_
       _%rebind?156588%_))
    (let* ((_%klass156542%_ __gc-table::t)
           (_%id156545%_ 'HashTable::ref)
           (_%proc156548%_ gc-table-ref)
           (_%rebind?156551%_ '#f)
           (_%id156556%_ _%id156545%_)
           (_%proc156569%_ _%proc156548%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156542%_
       _%id156556%_
       _%proc156569%_
       _%rebind?156551%_))
    (let* ((_%klass156505%_ __gc-table::t)
           (_%id156508%_ 'HashTable::set!)
           (_%proc156511%_ gc-table-set!)
           (_%rebind?156514%_ '#f)
           (_%id156519%_ _%id156508%_)
           (_%proc156532%_ _%proc156511%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156505%_
       _%id156519%_
       _%proc156532%_
       _%rebind?156514%_))
    (let* ((_%klass156468%_ __gc-table::t)
           (_%id156471%_ 'HashTable::update!)
           (_%proc156474%_ gc-table-update!)
           (_%rebind?156477%_ '#f)
           (_%id156482%_ _%id156471%_)
           (_%proc156495%_ _%proc156474%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156468%_
       _%id156482%_
       _%proc156495%_
       _%rebind?156477%_))
    (let* ((_%klass156431%_ __gc-table::t)
           (_%id156434%_ 'HashTable::delete!)
           (_%proc156437%_ gc-table-delete!)
           (_%rebind?156440%_ '#f)
           (_%id156445%_ _%id156434%_)
           (_%proc156458%_ _%proc156437%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156431%_
       _%id156445%_
       _%proc156458%_
       _%rebind?156440%_))
    (let* ((_%klass156394%_ __gc-table::t)
           (_%id156397%_ 'HashTable::for-each)
           (_%proc156400%_ gc-table-for-each)
           (_%rebind?156403%_ '#f)
           (_%id156408%_ _%id156397%_)
           (_%proc156421%_ _%proc156400%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156394%_
       _%id156408%_
       _%proc156421%_
       _%rebind?156403%_))
    (let* ((_%klass156357%_ __gc-table::t)
           (_%id156360%_ 'HashTable::length)
           (_%proc156363%_ gc-table-length)
           (_%rebind?156366%_ '#f)
           (_%id156371%_ _%id156360%_)
           (_%proc156384%_ _%proc156363%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156357%_
       _%id156371%_
       _%proc156384%_
       _%rebind?156366%_))
    (let* ((_%klass156320%_ __gc-table::t)
           (_%id156323%_ 'HashTable::copy)
           (_%proc156326%_ gc-table-copy)
           (_%rebind?156329%_ '#f)
           (_%id156334%_ _%id156323%_)
           (_%proc156347%_ _%proc156326%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156320%_
       _%id156334%_
       _%proc156347%_
       _%rebind?156329%_))
    (let* ((_%klass156283%_ __gc-table::t)
           (_%id156286%_ 'HashTable::clear!)
           (_%proc156289%_ gc-table-clear!)
           (_%rebind?156292%_ '#f)
           (_%id156297%_ _%id156286%_)
           (_%proc156310%_ _%proc156289%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156283%_
       _%id156297%_
       _%proc156310%_
       _%rebind?156292%_))
    (define gambit-table-update!
      (lambda (_%table156276%_
               _%key156277%_
               _%update156278%_
               _%default156279%_)
        (let ((_%result156281%_
               (table-ref _%table156276%_ _%key156277%_ _%default156279%_)))
          (table-set!
           _%table156276%_
           _%key156277%_
           (_%update156278%_ _%default156279%_)))))
    (define gambit-table-for-each
      (lambda (_%table156273%_ _%proc156274%_)
        (table-for-each _%proc156274%_ _%table156273%_)))
    (define gambit-table-clear!
      (lambda (_%table156271%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table156271%_ '0 '5 '#f '#f))))
    (let* ((_%klass156234%_ (macro-type-table))
           (_%id156237%_ 'HashTable::ref)
           (_%proc156240%_ table-ref)
           (_%rebind?156243%_ '#f)
           (_%id156248%_ _%id156237%_)
           (_%proc156261%_ _%proc156240%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156234%_
       _%id156248%_
       _%proc156261%_
       _%rebind?156243%_))
    (let* ((_%klass156197%_ (macro-type-table))
           (_%id156200%_ 'HashTable::set!)
           (_%proc156203%_ table-set!)
           (_%rebind?156206%_ '#f)
           (_%id156211%_ _%id156200%_)
           (_%proc156224%_ _%proc156203%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156197%_
       _%id156211%_
       _%proc156224%_
       _%rebind?156206%_))
    (let* ((_%klass156160%_ (macro-type-table))
           (_%id156163%_ 'HashTable::update!)
           (_%proc156166%_ gambit-table-update!)
           (_%rebind?156169%_ '#f)
           (_%id156174%_ _%id156163%_)
           (_%proc156187%_ _%proc156166%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156160%_
       _%id156174%_
       _%proc156187%_
       _%rebind?156169%_))
    (let* ((_%klass156123%_ (macro-type-table))
           (_%id156126%_ 'HashTable::delete!)
           (_%proc156129%_ table-set!)
           (_%rebind?156132%_ '#f)
           (_%id156137%_ _%id156126%_)
           (_%proc156150%_ _%proc156129%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156123%_
       _%id156137%_
       _%proc156150%_
       _%rebind?156132%_))
    (let* ((_%klass156086%_ (macro-type-table))
           (_%id156089%_ 'HashTable::for-each)
           (_%proc156092%_ gambit-table-for-each)
           (_%rebind?156095%_ '#f)
           (_%id156100%_ _%id156089%_)
           (_%proc156113%_ _%proc156092%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156086%_
       _%id156100%_
       _%proc156113%_
       _%rebind?156095%_))
    (let* ((_%klass156049%_ (macro-type-table))
           (_%id156052%_ 'HashTable::length)
           (_%proc156055%_ table-length)
           (_%rebind?156058%_ '#f)
           (_%id156063%_ _%id156052%_)
           (_%proc156076%_ _%proc156055%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156049%_
       _%id156063%_
       _%proc156076%_
       _%rebind?156058%_))
    (let* ((_%klass156012%_ (macro-type-table))
           (_%id156015%_ 'HashTable::copy)
           (_%proc156018%_ table-copy)
           (_%rebind?156021%_ '#f)
           (_%id156026%_ _%id156015%_)
           (_%proc156039%_ _%proc156018%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156012%_
       _%id156026%_
       _%proc156039%_
       _%rebind?156021%_))
    (let* ((_%klass155975%_ (macro-type-table))
           (_%id155978%_ 'HashTable::clear!)
           (_%proc155981%_ gambit-table-clear!)
           (_%rebind?155984%_ '#f)
           (_%id155989%_ _%id155978%_)
           (_%proc156002%_ _%proc155981%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155975%_
       _%id155989%_
       _%proc156002%_
       _%rebind?155984%_))
    (define hash-table::t
      (let* ((_%slots155938%_ '(table count free hash test seed))
             (_%slot-vector155940%_ (list->vector (cons '#f _%slots155938%_)))
             (_%slot-table155966%_
              (let ((_%slot-table155942%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp158285
                       (lambda (_%slot155944%_ _%field155945%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table155942%_
                            _%slot155944%_
                            _%field155945%_))
                         (let ((__tmp158286
                                (let ((_%sym155947%_ _%slot155944%_))
                                  (if (symbol? _%sym155947%_)
                                      (let ((_%sym155952%_ _%sym155947%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym155952%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym155947%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table155942%_
                            __tmp158286
                            _%field155945%_))))
                      (__tmp158283
                       (let ((__tmp158284
                              (let ()
                                (declare (not safe))
                                (##length _%slots155938%_))))
                         (declare (not safe))
                         (##iota __tmp158284 '1))))
                  (declare (not safe))
                  (##for-each __tmp158285 _%slots155938%_ __tmp158283))
                _%slot-table155942%_))
             (_%flags155968%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields155970%_ '#())
             (_%properties155972%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots155938%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp158287 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags155968%_
         __table::t
         _%fields155970%_
         __tmp158287
         _%slot-vector155940%_
         _%slot-table155966%_
         _%properties155972%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots155901%_ '(gcht immediate))
             (_%slot-vector155903%_ (list->vector (cons '#f _%slots155901%_)))
             (_%slot-table155929%_
              (let ((_%slot-table155905%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp158290
                       (lambda (_%slot155907%_ _%field155908%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table155905%_
                            _%slot155907%_
                            _%field155908%_))
                         (let ((__tmp158291
                                (let ((_%sym155910%_ _%slot155907%_))
                                  (if (symbol? _%sym155910%_)
                                      (let ((_%sym155915%_ _%sym155910%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym155915%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym155910%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table155905%_
                            __tmp158291
                            _%field155908%_))))
                      (__tmp158288
                       (let ((__tmp158289
                              (let ()
                                (declare (not safe))
                                (##length _%slots155901%_))))
                         (declare (not safe))
                         (##iota __tmp158289 '1))))
                  (declare (not safe))
                  (##for-each __tmp158290 _%slots155901%_ __tmp158288))
                _%slot-table155905%_))
             (_%flags155931%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields155933%_ '#())
             (_%properties155935%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots155901%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp158292 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags155931%_
         __gc-table::t
         _%fields155933%_
         __tmp158292
         _%slot-vector155903%_
         _%slot-table155929%_
         _%properties155935%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp158294 (list))
            (__tmp158293
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp158294
         '(table lock)
         __tmp158293
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args155898%_
        (apply make-instance locked-hash-table::t _%$args155898%_)))
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
      (let ((__tmp158296 (list))
            (__tmp158295
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp158296
         '(table key-check)
         __tmp158295
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args155895%_
        (apply make-instance checked-hash-table::t _%$args155895%_)))
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
      (let ((__tmp158298 (list hash-table::t))
            (__tmp158297 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp158298
         '()
         __tmp158297
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args155892%_
        (apply make-instance eq-hash-table::t _%$args155892%_)))
    (define eqv-hash-table::t
      (let ((__tmp158300 (list hash-table::t))
            (__tmp158299 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp158300
         '()
         __tmp158299
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args155889%_
        (apply make-instance eqv-hash-table::t _%$args155889%_)))
    (define symbol-hash-table::t
      (let ((__tmp158302 (list hash-table::t))
            (__tmp158301 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp158302
         '()
         __tmp158301
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args155886%_
        (apply make-instance symbol-hash-table::t _%$args155886%_)))
    (define string-hash-table::t
      (let ((__tmp158304 (list hash-table::t))
            (__tmp158303 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp158304
         '()
         __tmp158303
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args155883%_
        (apply make-instance string-hash-table::t _%$args155883%_)))
    (define immediate-hash-table::t
      (let ((__tmp158306 (list hash-table::t))
            (__tmp158305 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp158306
         '()
         __tmp158305
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args155880%_
        (apply make-instance immediate-hash-table::t _%$args155880%_)))
    (let* ((_%klass155843%_ hash-table::t)
           (_%id155846%_ 'HashTable::ref)
           (_%proc155849%_ raw-table-ref)
           (_%rebind?155852%_ '#f)
           (_%id155857%_ _%id155846%_)
           (_%proc155870%_ _%proc155849%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155843%_
       _%id155857%_
       _%proc155870%_
       _%rebind?155852%_))
    (let* ((_%klass155806%_ hash-table::t)
           (_%id155809%_ 'HashTable::set!)
           (_%proc155812%_ raw-table-set!)
           (_%rebind?155815%_ '#f)
           (_%id155820%_ _%id155809%_)
           (_%proc155833%_ _%proc155812%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155806%_
       _%id155820%_
       _%proc155833%_
       _%rebind?155815%_))
    (let* ((_%klass155769%_ hash-table::t)
           (_%id155772%_ 'HashTable::update!)
           (_%proc155775%_ raw-table-update!)
           (_%rebind?155778%_ '#f)
           (_%id155783%_ _%id155772%_)
           (_%proc155796%_ _%proc155775%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155769%_
       _%id155783%_
       _%proc155796%_
       _%rebind?155778%_))
    (let* ((_%klass155732%_ hash-table::t)
           (_%id155735%_ 'HashTable::delete!)
           (_%proc155738%_ raw-table-delete!)
           (_%rebind?155741%_ '#f)
           (_%id155746%_ _%id155735%_)
           (_%proc155759%_ _%proc155738%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155732%_
       _%id155746%_
       _%proc155759%_
       _%rebind?155741%_))
    (let* ((_%klass155695%_ hash-table::t)
           (_%id155698%_ 'HashTable::for-each)
           (_%proc155701%_ raw-table-for-each)
           (_%rebind?155704%_ '#f)
           (_%id155709%_ _%id155698%_)
           (_%proc155722%_ _%proc155701%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155695%_
       _%id155709%_
       _%proc155722%_
       _%rebind?155704%_))
    (let* ((_%klass155658%_ hash-table::t)
           (_%id155661%_ 'HashTable::length)
           (_%proc155664%_ &raw-table-count)
           (_%rebind?155667%_ '#f)
           (_%id155672%_ _%id155661%_)
           (_%proc155685%_ _%proc155664%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155658%_
       _%id155672%_
       _%proc155685%_
       _%rebind?155667%_))
    (let* ((_%klass155621%_ hash-table::t)
           (_%id155624%_ 'HashTable::copy)
           (_%proc155627%_ raw-table-copy)
           (_%rebind?155630%_ '#f)
           (_%id155635%_ _%id155624%_)
           (_%proc155648%_ _%proc155627%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155621%_
       _%id155635%_
       _%proc155648%_
       _%rebind?155630%_))
    (let* ((_%klass155584%_ hash-table::t)
           (_%id155587%_ 'HashTable::clear!)
           (_%proc155590%_ raw-table-clear!)
           (_%rebind?155593%_ '#f)
           (_%id155598%_ _%id155587%_)
           (_%proc155611%_ _%proc155590%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155584%_
       _%id155598%_
       _%proc155611%_
       _%rebind?155593%_))
    (let* ((_%klass155547%_ eq-hash-table::t)
           (_%id155550%_ 'HashTable::ref)
           (_%proc155553%_ eq-table-ref)
           (_%rebind?155556%_ '#f)
           (_%id155561%_ _%id155550%_)
           (_%proc155574%_ _%proc155553%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155547%_
       _%id155561%_
       _%proc155574%_
       _%rebind?155556%_))
    (let* ((_%klass155510%_ eq-hash-table::t)
           (_%id155513%_ 'HashTable::set!)
           (_%proc155516%_ eq-table-set!)
           (_%rebind?155519%_ '#f)
           (_%id155524%_ _%id155513%_)
           (_%proc155537%_ _%proc155516%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155510%_
       _%id155524%_
       _%proc155537%_
       _%rebind?155519%_))
    (let* ((_%klass155473%_ eq-hash-table::t)
           (_%id155476%_ 'HashTable::update!)
           (_%proc155479%_ eq-table-update!)
           (_%rebind?155482%_ '#f)
           (_%id155487%_ _%id155476%_)
           (_%proc155500%_ _%proc155479%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155473%_
       _%id155487%_
       _%proc155500%_
       _%rebind?155482%_))
    (let* ((_%klass155436%_ eq-hash-table::t)
           (_%id155439%_ 'HashTable::delete!)
           (_%proc155442%_ eq-table-delete!)
           (_%rebind?155445%_ '#f)
           (_%id155450%_ _%id155439%_)
           (_%proc155463%_ _%proc155442%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155436%_
       _%id155450%_
       _%proc155463%_
       _%rebind?155445%_))
    (let* ((_%klass155399%_ eqv-hash-table::t)
           (_%id155402%_ 'HashTable::ref)
           (_%proc155405%_ eqv-table-ref)
           (_%rebind?155408%_ '#f)
           (_%id155413%_ _%id155402%_)
           (_%proc155426%_ _%proc155405%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155399%_
       _%id155413%_
       _%proc155426%_
       _%rebind?155408%_))
    (let* ((_%klass155362%_ eqv-hash-table::t)
           (_%id155365%_ 'HashTable::set!)
           (_%proc155368%_ eqv-table-set!)
           (_%rebind?155371%_ '#f)
           (_%id155376%_ _%id155365%_)
           (_%proc155389%_ _%proc155368%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155362%_
       _%id155376%_
       _%proc155389%_
       _%rebind?155371%_))
    (let* ((_%klass155325%_ eqv-hash-table::t)
           (_%id155328%_ 'HashTable::update!)
           (_%proc155331%_ eqv-table-update!)
           (_%rebind?155334%_ '#f)
           (_%id155339%_ _%id155328%_)
           (_%proc155352%_ _%proc155331%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155325%_
       _%id155339%_
       _%proc155352%_
       _%rebind?155334%_))
    (let* ((_%klass155288%_ eqv-hash-table::t)
           (_%id155291%_ 'HashTable::delete!)
           (_%proc155294%_ eqv-table-delete!)
           (_%rebind?155297%_ '#f)
           (_%id155302%_ _%id155291%_)
           (_%proc155315%_ _%proc155294%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155288%_
       _%id155302%_
       _%proc155315%_
       _%rebind?155297%_))
    (let* ((_%klass155251%_ symbol-hash-table::t)
           (_%id155254%_ 'HashTable::ref)
           (_%proc155257%_ symbolic-table-ref)
           (_%rebind?155260%_ '#f)
           (_%id155265%_ _%id155254%_)
           (_%proc155278%_ _%proc155257%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155251%_
       _%id155265%_
       _%proc155278%_
       _%rebind?155260%_))
    (let* ((_%klass155214%_ symbol-hash-table::t)
           (_%id155217%_ 'HashTable::set!)
           (_%proc155220%_ symbolic-table-set!)
           (_%rebind?155223%_ '#f)
           (_%id155228%_ _%id155217%_)
           (_%proc155241%_ _%proc155220%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155214%_
       _%id155228%_
       _%proc155241%_
       _%rebind?155223%_))
    (let* ((_%klass155177%_ symbol-hash-table::t)
           (_%id155180%_ 'HashTable::update!)
           (_%proc155183%_ symbolic-table-update!)
           (_%rebind?155186%_ '#f)
           (_%id155191%_ _%id155180%_)
           (_%proc155204%_ _%proc155183%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155177%_
       _%id155191%_
       _%proc155204%_
       _%rebind?155186%_))
    (let* ((_%klass155140%_ symbol-hash-table::t)
           (_%id155143%_ 'HashTable::delete!)
           (_%proc155146%_ symbolic-table-delete!)
           (_%rebind?155149%_ '#f)
           (_%id155154%_ _%id155143%_)
           (_%proc155167%_ _%proc155146%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155140%_
       _%id155154%_
       _%proc155167%_
       _%rebind?155149%_))
    (let* ((_%klass155103%_ string-hash-table::t)
           (_%id155106%_ 'HashTable::ref)
           (_%proc155109%_ string-table-ref)
           (_%rebind?155112%_ '#f)
           (_%id155117%_ _%id155106%_)
           (_%proc155130%_ _%proc155109%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155103%_
       _%id155117%_
       _%proc155130%_
       _%rebind?155112%_))
    (let* ((_%klass155066%_ string-hash-table::t)
           (_%id155069%_ 'HashTable::set!)
           (_%proc155072%_ string-table-set!)
           (_%rebind?155075%_ '#f)
           (_%id155080%_ _%id155069%_)
           (_%proc155093%_ _%proc155072%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155066%_
       _%id155080%_
       _%proc155093%_
       _%rebind?155075%_))
    (let* ((_%klass155029%_ string-hash-table::t)
           (_%id155032%_ 'HashTable::update!)
           (_%proc155035%_ string-table-update!)
           (_%rebind?155038%_ '#f)
           (_%id155043%_ _%id155032%_)
           (_%proc155056%_ _%proc155035%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass155029%_
       _%id155043%_
       _%proc155056%_
       _%rebind?155038%_))
    (let* ((_%klass154992%_ string-hash-table::t)
           (_%id154995%_ 'HashTable::delete!)
           (_%proc154998%_ string-table-delete!)
           (_%rebind?155001%_ '#f)
           (_%id155006%_ _%id154995%_)
           (_%proc155019%_ _%proc154998%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154992%_
       _%id155006%_
       _%proc155019%_
       _%rebind?155001%_))
    (let* ((_%klass154955%_ immediate-hash-table::t)
           (_%id154958%_ 'HashTable::ref)
           (_%proc154961%_ immediate-table-ref)
           (_%rebind?154964%_ '#f)
           (_%id154969%_ _%id154958%_)
           (_%proc154982%_ _%proc154961%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154955%_
       _%id154969%_
       _%proc154982%_
       _%rebind?154964%_))
    (let* ((_%klass154918%_ immediate-hash-table::t)
           (_%id154921%_ 'HashTable::set!)
           (_%proc154924%_ immediate-table-set!)
           (_%rebind?154927%_ '#f)
           (_%id154932%_ _%id154921%_)
           (_%proc154945%_ _%proc154924%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154918%_
       _%id154932%_
       _%proc154945%_
       _%rebind?154927%_))
    (let* ((_%klass154881%_ immediate-hash-table::t)
           (_%id154884%_ 'HashTable::update!)
           (_%proc154887%_ immediate-table-update!)
           (_%rebind?154890%_ '#f)
           (_%id154895%_ _%id154884%_)
           (_%proc154908%_ _%proc154887%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154881%_
       _%id154895%_
       _%proc154908%_
       _%rebind?154890%_))
    (let* ((_%klass154844%_ immediate-hash-table::t)
           (_%id154847%_ 'HashTable::delete!)
           (_%proc154850%_ immediate-table-delete!)
           (_%rebind?154853%_ '#f)
           (_%id154858%_ _%id154847%_)
           (_%proc154871%_ _%proc154850%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154844%_
       _%id154858%_
       _%proc154871%_
       _%rebind?154853%_))
    (let* ((_%klass154807%_ gc-hash-table::t)
           (_%id154810%_ 'HashTable::ref)
           (_%proc154813%_ gc-table-ref)
           (_%rebind?154816%_ '#f)
           (_%id154821%_ _%id154810%_)
           (_%proc154834%_ _%proc154813%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154807%_
       _%id154821%_
       _%proc154834%_
       _%rebind?154816%_))
    (let* ((_%klass154770%_ gc-hash-table::t)
           (_%id154773%_ 'HashTable::set!)
           (_%proc154776%_ gc-table-set!)
           (_%rebind?154779%_ '#f)
           (_%id154784%_ _%id154773%_)
           (_%proc154797%_ _%proc154776%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154770%_
       _%id154784%_
       _%proc154797%_
       _%rebind?154779%_))
    (let* ((_%klass154733%_ gc-hash-table::t)
           (_%id154736%_ 'HashTable::update!)
           (_%proc154739%_ gc-table-update!)
           (_%rebind?154742%_ '#f)
           (_%id154747%_ _%id154736%_)
           (_%proc154760%_ _%proc154739%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154733%_
       _%id154747%_
       _%proc154760%_
       _%rebind?154742%_))
    (let* ((_%klass154696%_ gc-hash-table::t)
           (_%id154699%_ 'HashTable::delete!)
           (_%proc154702%_ gc-table-delete!)
           (_%rebind?154705%_ '#f)
           (_%id154710%_ _%id154699%_)
           (_%proc154723%_ _%proc154702%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154696%_
       _%id154710%_
       _%proc154723%_
       _%rebind?154705%_))
    (let* ((_%klass154659%_ gc-hash-table::t)
           (_%id154662%_ 'HashTable::for-each)
           (_%proc154665%_ gc-table-for-each)
           (_%rebind?154668%_ '#f)
           (_%id154673%_ _%id154662%_)
           (_%proc154686%_ _%proc154665%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154659%_
       _%id154673%_
       _%proc154686%_
       _%rebind?154668%_))
    (let* ((_%klass154622%_ gc-hash-table::t)
           (_%id154625%_ 'HashTable::length)
           (_%proc154628%_ gc-table-length)
           (_%rebind?154631%_ '#f)
           (_%id154636%_ _%id154625%_)
           (_%proc154649%_ _%proc154628%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154622%_
       _%id154636%_
       _%proc154649%_
       _%rebind?154631%_))
    (let* ((_%klass154585%_ gc-hash-table::t)
           (_%id154588%_ 'HashTable::copy)
           (_%proc154591%_ gc-table-copy)
           (_%rebind?154594%_ '#f)
           (_%id154599%_ _%id154588%_)
           (_%proc154612%_ _%proc154591%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154585%_
       _%id154599%_
       _%proc154612%_
       _%rebind?154594%_))
    (let* ((_%klass154548%_ gc-hash-table::t)
           (_%id154551%_ 'HashTable::clear!)
           (_%proc154554%_ gc-table-clear!)
           (_%rebind?154557%_ '#f)
           (_%id154562%_ _%id154551%_)
           (_%proc154575%_ _%proc154554%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass154548%_
       _%id154562%_
       _%proc154575%_
       _%rebind?154557%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref145809%_
      (lambda (_%self154469%_ _%key154471%_ _%default154472%_)
        (let* ((_%self154475%_ _%self154469%_)
               (_%key154484%_ _%key154471%_)
               (_%default154492%_ _%default154472%_))
          (let ((_%h154501%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154475%_ '1 '#f '#f)))
                (_%l154503%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154475%_ '2 '#f '#f))))
            (let ((__tmp158309
                   (lambda ()
                     (let ((_%self144261154507%_ _%l154503%_))
                       (declare (not safe))
                       (let ((_%object154510154515%_
                              (##unchecked-structure-ref
                               _%self144261154507%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method154511154516%_
                              (##unchecked-structure-ref
                               _%self144261154507%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method154511154516%_ _%object154510154515%_)))))
                  (__tmp158308
                   (lambda ()
                     (let* ((_%self143356154519%_ _%h154501%_)
                            (_%key154522%_ _%key154484%_)
                            (_%default154525%_ _%default154492%_))
                       (declare (not safe))
                       (let ((_%object154528154533%_
                              (##unchecked-structure-ref
                               _%self143356154519%_
                               '1
                               '#f
                               'ref))
                             (_%method154529154534%_
                              (##unchecked-structure-ref
                               _%self143356154519%_
                               '7
                               '#f
                               'ref)))
                         (_%method154529154534%_
                          _%object154528154533%_
                          _%key154522%_
                          _%default154525%_)))))
                  (__tmp158307
                   (lambda ()
                     (let ((_%self144552154537%_ _%l154503%_))
                       (declare (not safe))
                       (let ((_%object154540154545%_
                              (##unchecked-structure-ref
                               _%self144552154537%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method154541154546%_
                              (##unchecked-structure-ref
                               _%self144552154537%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method154541154546%_ _%object154540154545%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp158309 __tmp158308 __tmp158307))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref145809%_
       '#f))
    (define _%locked-hash-table::HashTable::set!145811%_
      (lambda (_%self154267%_ _%key154269%_ _%value154270%_)
        (let* ((_%self154273%_ _%self154267%_)
               (_%key154282%_ _%key154269%_)
               (_%value154290%_ _%value154270%_))
          (let ((_%h154299%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154273%_ '1 '#f '#f)))
                (_%l154301%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154273%_ '2 '#f '#f))))
            (let ((__tmp158312
                   (lambda ()
                     (let ((_%self144843154305%_ _%l154301%_))
                       (declare (not safe))
                       (let ((_%object154308154313%_
                              (##unchecked-structure-ref
                               _%self144843154305%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method154309154314%_
                              (##unchecked-structure-ref
                               _%self144843154305%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method154309154314%_ _%object154308154313%_)))))
                  (__tmp158311
                   (lambda ()
                     (let* ((_%self143651154317%_ _%h154299%_)
                            (_%key154320%_ _%key154282%_)
                            (_%value154323%_ _%value154290%_))
                       (declare (not safe))
                       (let ((_%object154326154331%_
                              (##unchecked-structure-ref
                               _%self143651154317%_
                               '1
                               '#f
                               'set!))
                             (_%method154327154332%_
                              (##unchecked-structure-ref
                               _%self143651154317%_
                               '8
                               '#f
                               'set!)))
                         (_%method154327154332%_
                          _%object154326154331%_
                          _%key154320%_
                          _%value154323%_)))))
                  (__tmp158310
                   (lambda ()
                     (let ((_%self145134154335%_ _%l154301%_))
                       (declare (not safe))
                       (let ((_%object154338154343%_
                              (##unchecked-structure-ref
                               _%self145134154335%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method154339154344%_
                              (##unchecked-structure-ref
                               _%self145134154335%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method154339154344%_ _%object154338154343%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp158312 __tmp158311 __tmp158310))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!145811%_
       '#f))
    (define _%locked-hash-table::HashTable::update!145813%_
      (lambda (_%self154053%_ _%key154055%_ _%update154056%_ _%default154057%_)
        (let* ((_%self154060%_ _%self154053%_)
               (_%key154069%_ _%key154055%_)
               (_%update154077%_ _%update154056%_)
               (_%default154085%_ _%default154057%_))
          (let ((_%h154094%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154060%_ '1 '#f '#f)))
                (_%l154096%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self154060%_ '2 '#f '#f))))
            (let ((__tmp158315
                   (lambda ()
                     (let ((_%self144843154100%_ _%l154096%_))
                       (declare (not safe))
                       (let ((_%object154103154108%_
                              (##unchecked-structure-ref
                               _%self144843154100%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method154104154109%_
                              (##unchecked-structure-ref
                               _%self144843154100%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method154104154109%_ _%object154103154108%_)))))
                  (__tmp158314
                   (lambda ()
                     (let* ((_%self143946154112%_ _%h154094%_)
                            (_%key154115%_ _%key154069%_)
                            (_%proc154118%_ _%update154077%_)
                            (_%default154121%_ _%default154085%_))
                       (declare (not safe))
                       (let ((_%object154124154129%_
                              (##unchecked-structure-ref
                               _%self143946154112%_
                               '1
                               '#f
                               'update!))
                             (_%method154125154130%_
                              (##unchecked-structure-ref
                               _%self143946154112%_
                               '9
                               '#f
                               'update!)))
                         (_%method154125154130%_
                          _%object154124154129%_
                          _%key154115%_
                          _%proc154118%_
                          _%default154121%_)))))
                  (__tmp158313
                   (lambda ()
                     (let ((_%self145134154133%_ _%l154096%_))
                       (declare (not safe))
                       (let ((_%object154136154141%_
                              (##unchecked-structure-ref
                               _%self145134154133%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method154137154142%_
                              (##unchecked-structure-ref
                               _%self145134154133%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method154137154142%_ _%object154136154141%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp158315 __tmp158314 __tmp158313))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!145813%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!145815%_
      (lambda (_%self153863%_ _%key153865%_)
        (let* ((_%self153868%_ _%self153863%_) (_%key153877%_ _%key153865%_))
          (let ((_%h153886%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153868%_ '1 '#f '#f)))
                (_%l153888%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153868%_ '2 '#f '#f))))
            (let ((__tmp158318
                   (lambda ()
                     (let ((_%self144843153892%_ _%l153888%_))
                       (declare (not safe))
                       (let ((_%object153895153900%_
                              (##unchecked-structure-ref
                               _%self144843153892%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method153896153901%_
                              (##unchecked-structure-ref
                               _%self144843153892%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method153896153901%_ _%object153895153900%_)))))
                  (__tmp158317
                   (lambda ()
                     (let* ((_%self142458153904%_ _%h153886%_)
                            (_%key153907%_ _%key153877%_))
                       (declare (not safe))
                       (let ((_%object153910153915%_
                              (##unchecked-structure-ref
                               _%self142458153904%_
                               '1
                               '#f
                               'delete!))
                             (_%method153911153916%_
                              (##unchecked-structure-ref
                               _%self142458153904%_
                               '4
                               '#f
                               'delete!)))
                         (_%method153911153916%_
                          _%object153910153915%_
                          _%key153907%_)))))
                  (__tmp158316
                   (lambda ()
                     (let ((_%self145134153919%_ _%l153888%_))
                       (declare (not safe))
                       (let ((_%object153922153927%_
                              (##unchecked-structure-ref
                               _%self145134153919%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method153923153928%_
                              (##unchecked-structure-ref
                               _%self145134153919%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method153923153928%_ _%object153922153927%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp158318 __tmp158317 __tmp158316))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!145815%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each145817%_
      (lambda (_%self153673%_ _%proc153675%_)
        (let* ((_%self153678%_ _%self153673%_) (_%proc153687%_ _%proc153675%_))
          (let ((_%h153696%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153678%_ '1 '#f '#f)))
                (_%l153698%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153678%_ '2 '#f '#f))))
            (let ((__tmp158321
                   (lambda ()
                     (let ((_%self144261153702%_ _%l153698%_))
                       (declare (not safe))
                       (let ((_%object153705153710%_
                              (##unchecked-structure-ref
                               _%self144261153702%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method153706153711%_
                              (##unchecked-structure-ref
                               _%self144261153702%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method153706153711%_ _%object153705153710%_)))))
                  (__tmp158320
                   (lambda ()
                     (let* ((_%self142751153714%_ _%h153696%_)
                            (_%proc153717%_ _%proc153687%_))
                       (declare (not safe))
                       (let ((_%object153720153725%_
                              (##unchecked-structure-ref
                               _%self142751153714%_
                               '1
                               '#f
                               'for-each))
                             (_%method153721153726%_
                              (##unchecked-structure-ref
                               _%self142751153714%_
                               '5
                               '#f
                               'for-each)))
                         (_%method153721153726%_
                          _%object153720153725%_
                          _%proc153717%_)))))
                  (__tmp158319
                   (lambda ()
                     (let ((_%self144552153729%_ _%l153698%_))
                       (declare (not safe))
                       (let ((_%object153732153737%_
                              (##unchecked-structure-ref
                               _%self144552153729%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method153733153738%_
                              (##unchecked-structure-ref
                               _%self144552153729%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method153733153738%_ _%object153732153737%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp158321 __tmp158320 __tmp158319))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each145817%_
       '#f))
    (define _%locked-hash-table::HashTable::length145819%_
      (lambda (_%self153488%_)
        (let ((_%self153492%_ _%self153488%_))
          (let ((_%h153502%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153492%_ '1 '#f '#f)))
                (_%l153504%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153492%_ '2 '#f '#f))))
            ((lambda (_%g153506153508%_)
               (let ((_%val153511%_ _%g153506153508%_))
                 (if (fixnum? _%val153511%_)
                     _%val153511%_
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/hash
                        'contract:
                        '(fixnum? val)
                        'value:
                        _%val153511%_)
                       '#!void))))
             (let ((__tmp158324
                    (lambda ()
                      (let ((_%self144261153515%_ _%l153504%_))
                        (declare (not safe))
                        (let ((_%object153518153523%_
                               (##unchecked-structure-ref
                                _%self144261153515%_
                                '1
                                '#f
                                'read-lock!))
                              (_%method153519153524%_
                               (##unchecked-structure-ref
                                _%self144261153515%_
                                '2
                                '#f
                                'read-lock!)))
                          (_%method153519153524%_ _%object153518153523%_)))))
                   (__tmp158323
                    (lambda ()
                      (let ((_%self143062153527%_ _%h153502%_))
                        (declare (not safe))
                        (let ((_%object153530153535%_
                               (##unchecked-structure-ref
                                _%self143062153527%_
                                '1
                                '#f
                                'length))
                              (_%method153531153536%_
                               (##unchecked-structure-ref
                                _%self143062153527%_
                                '6
                                '#f
                                'length)))
                          (_%method153531153536%_ _%object153530153535%_)))))
                   (__tmp158322
                    (lambda ()
                      (let ((_%self144552153539%_ _%l153504%_))
                        (declare (not safe))
                        (let ((_%object153542153547%_
                               (##unchecked-structure-ref
                                _%self144552153539%_
                                '1
                                '#f
                                'read-unlock!))
                              (_%method153543153548%_
                               (##unchecked-structure-ref
                                _%self144552153539%_
                                '3
                                '#f
                                'read-unlock!)))
                          (_%method153543153548%_ _%object153542153547%_))))))
               (declare (not safe))
               (##dynamic-wind __tmp158324 __tmp158323 __tmp158322)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length145819%_
       '#f))
    (define _%locked-hash-table::HashTable::copy145821%_
      (lambda (_%self153307%_)
        (let ((_%self153311%_ _%self153307%_))
          (let ((_%h153321%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153311%_ '1 '#f '#f)))
                (_%l153323%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153311%_ '2 '#f '#f))))
            (let ((_%$obj153362%_
                   (let ((__tmp158327
                          (lambda ()
                            (let ((_%self144261153327%_ _%l153323%_))
                              (declare (not safe))
                              (let ((_%object153330153335%_
                                     (##unchecked-structure-ref
                                      _%self144261153327%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method153331153336%_
                                     (##unchecked-structure-ref
                                      _%self144261153327%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method153331153336%_
                                 _%object153330153335%_)))))
                         (__tmp158326
                          (lambda ()
                            (let ((_%self142164153339%_ _%h153321%_))
                              (declare (not safe))
                              (let ((_%object153342153347%_
                                     (##unchecked-structure-ref
                                      _%self142164153339%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method153343153348%_
                                     (##unchecked-structure-ref
                                      _%self142164153339%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method153343153348%_
                                 _%object153342153347%_)))))
                         (__tmp158325
                          (lambda ()
                            (let ((_%self144552153351%_ _%l153323%_))
                              (declare (not safe))
                              (let ((_%object153354153359%_
                                     (##unchecked-structure-ref
                                      _%self144552153351%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method153355153360%_
                                     (##unchecked-structure-ref
                                      _%self144552153351%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method153355153360%_
                                 _%object153354153359%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp158327 __tmp158326 __tmp158325))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj153362%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj153362%_)))
                       '#t)
                  _%$obj153362%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj153362%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy145821%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!145823%_
      (lambda (_%self153129%_)
        (let ((_%self153133%_ _%self153129%_))
          (let ((_%h153143%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153133%_ '1 '#f '#f)))
                (_%l153145%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self153133%_ '2 '#f '#f))))
            (let ((__tmp158330
                   (lambda ()
                     (let ((_%self144843153149%_ _%l153145%_))
                       (declare (not safe))
                       (let ((_%object153152153157%_
                              (##unchecked-structure-ref
                               _%self144843153149%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method153153153158%_
                              (##unchecked-structure-ref
                               _%self144843153149%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method153153153158%_ _%object153152153157%_)))))
                  (__tmp158329
                   (lambda ()
                     (let ((_%self141872153161%_ _%h153143%_))
                       (declare (not safe))
                       (let ((_%object153164153169%_
                              (##unchecked-structure-ref
                               _%self141872153161%_
                               '1
                               '#f
                               'clear!))
                             (_%method153165153170%_
                              (##unchecked-structure-ref
                               _%self141872153161%_
                               '2
                               '#f
                               'clear!)))
                         (_%method153165153170%_ _%object153164153169%_)))))
                  (__tmp158328
                   (lambda ()
                     (let ((_%self145134153173%_ _%l153145%_))
                       (declare (not safe))
                       (let ((_%object153176153181%_
                              (##unchecked-structure-ref
                               _%self145134153173%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method153177153182%_
                              (##unchecked-structure-ref
                               _%self145134153173%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method153177153182%_ _%object153176153181%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp158330 __tmp158329 __tmp158328))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!145823%_
       '#f))
    (let* ((_%klass152969%_ (macro-type-mutex))
           (_%id152972%_ 'Locker::read-lock!)
           (_%proc152975%_ mutex-lock!)
           (_%rebind?152978%_ '#f)
           (_%id152983%_ _%id152972%_)
           (_%proc152996%_ _%proc152975%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass152969%_
       _%id152983%_
       _%proc152996%_
       _%rebind?152978%_))
    (let* ((_%klass152932%_ (macro-type-mutex))
           (_%id152935%_ 'Locker::read-unlock!)
           (_%proc152938%_ mutex-unlock!)
           (_%rebind?152941%_ '#f)
           (_%id152946%_ _%id152935%_)
           (_%proc152959%_ _%proc152938%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass152932%_
       _%id152946%_
       _%proc152959%_
       _%rebind?152941%_))
    (let* ((_%klass152895%_ (macro-type-mutex))
           (_%id152898%_ 'Locker::write-lock!)
           (_%proc152901%_ mutex-lock!)
           (_%rebind?152904%_ '#f)
           (_%id152909%_ _%id152898%_)
           (_%proc152922%_ _%proc152901%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass152895%_
       _%id152909%_
       _%proc152922%_
       _%rebind?152904%_))
    (let* ((_%klass152858%_ (macro-type-mutex))
           (_%id152861%_ 'Locker::write-unlock!)
           (_%proc152864%_ mutex-unlock!)
           (_%rebind?152867%_ '#f)
           (_%id152872%_ _%id152861%_)
           (_%proc152885%_ _%proc152864%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass152858%_
       _%id152872%_
       _%proc152885%_
       _%rebind?152867%_))
    (define _%checked-hash-table::HashTable::ref146034%_
      (lambda (_%self152799%_ _%key152800%_ _%default152801%_)
        (let* ((_%self152804%_ _%self152799%_)
               (_%key152813%_ _%key152800%_)
               (_%default152821%_ _%default152801%_))
          (declare (not safe))
          (let ((_%h152832%_
                 (##unchecked-structure-ref _%self152804%_ '1 '#f '#f))
                (_%key?152834%_
                 (##unchecked-structure-ref _%self152804%_ '2 '#f '#f)))
            (if ((lambda (_%key?152837%_ _%key152838%_ _%default152839%_)
                   (_%key?152837%_ _%key152838%_))
                 _%key?152834%_
                 _%key152813%_
                 _%default152821%_)
                (let* ((_%self143356152841%_ _%h152832%_)
                       (_%key152844%_ _%key152813%_)
                       (_%default152847%_ _%default152821%_))
                  (declare (not safe))
                  (let ((_%object152850152855%_
                         (##unchecked-structure-ref
                          _%self143356152841%_
                          '1
                          '#f
                          'ref))
                        (_%method152851152856%_
                         (##unchecked-structure-ref
                          _%self143356152841%_
                          '7
                          '#f
                          'ref)))
                    (_%method152851152856%_
                     _%object152850152855%_
                     _%key152844%_
                     _%default152847%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key152813%_ (cons _%default152821%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref146034%_
       '#f))
    (define _%checked-hash-table::HashTable::set!146036%_
      (lambda (_%self152617%_ _%key152618%_ _%value152619%_)
        (let* ((_%self152622%_ _%self152617%_)
               (_%key152631%_ _%key152618%_)
               (_%value152639%_ _%value152619%_))
          (declare (not safe))
          (let ((_%h152650%_
                 (##unchecked-structure-ref _%self152622%_ '1 '#f '#f))
                (_%key?152652%_
                 (##unchecked-structure-ref _%self152622%_ '2 '#f '#f)))
            (if ((lambda (_%key?152655%_ _%key152656%_ _%value152657%_)
                   (_%key?152655%_ _%key152656%_))
                 _%key?152652%_
                 _%key152631%_
                 _%value152639%_)
                (let* ((_%self143651152659%_ _%h152650%_)
                       (_%key152662%_ _%key152631%_)
                       (_%value152665%_ _%value152639%_))
                  (declare (not safe))
                  (let ((_%object152668152673%_
                         (##unchecked-structure-ref
                          _%self143651152659%_
                          '1
                          '#f
                          'set!))
                        (_%method152669152674%_
                         (##unchecked-structure-ref
                          _%self143651152659%_
                          '8
                          '#f
                          'set!)))
                    (_%method152669152674%_
                     _%object152668152673%_
                     _%key152662%_
                     _%value152665%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key152631%_ (cons _%value152639%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!146036%_
       '#f))
    (define _%checked-hash-table::HashTable::update!146038%_
      (lambda (_%self152422%_ _%key152423%_ _%update152424%_ _%default152425%_)
        (let* ((_%self152428%_ _%self152422%_)
               (_%key152437%_ _%key152423%_)
               (_%update152445%_ _%update152424%_)
               (_%default152453%_ _%default152425%_))
          (declare (not safe))
          (let ((_%h152464%_
                 (##unchecked-structure-ref _%self152428%_ '1 '#f '#f))
                (_%key?152466%_
                 (##unchecked-structure-ref _%self152428%_ '2 '#f '#f)))
            (if ((lambda (_%key?152469%_
                          _%key152470%_
                          _%update152471%_
                          _%default152472%_)
                   (_%key?152469%_ _%key152470%_))
                 _%key?152466%_
                 _%key152437%_
                 _%update152445%_
                 _%default152453%_)
                (let* ((_%self143946152474%_ _%h152464%_)
                       (_%key152477%_ _%key152437%_)
                       (_%proc152480%_ _%update152445%_)
                       (_%default152483%_ _%default152453%_))
                  (declare (not safe))
                  (let ((_%object152486152491%_
                         (##unchecked-structure-ref
                          _%self143946152474%_
                          '1
                          '#f
                          'update!))
                        (_%method152487152492%_
                         (##unchecked-structure-ref
                          _%self143946152474%_
                          '9
                          '#f
                          'update!)))
                    (_%method152487152492%_
                     _%object152486152491%_
                     _%key152477%_
                     _%proc152480%_
                     _%default152483%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key152437%_
                         (cons _%update152445%_ (cons _%default152453%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!146038%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!146040%_
      (lambda (_%self152253%_ _%key152254%_)
        (let* ((_%self152257%_ _%self152253%_) (_%key152266%_ _%key152254%_))
          (declare (not safe))
          (let ((_%h152277%_
                 (##unchecked-structure-ref _%self152257%_ '1 '#f '#f))
                (_%key?152279%_
                 (##unchecked-structure-ref _%self152257%_ '2 '#f '#f)))
            (if ((lambda (_%key?152282%_ _%key152283%_)
                   (_%key?152282%_ _%key152283%_))
                 _%key?152279%_
                 _%key152266%_)
                (let* ((_%self142458152285%_ _%h152277%_)
                       (_%key152288%_ _%key152266%_))
                  (declare (not safe))
                  (let ((_%object152291152296%_
                         (##unchecked-structure-ref
                          _%self142458152285%_
                          '1
                          '#f
                          'delete!))
                        (_%method152292152297%_
                         (##unchecked-structure-ref
                          _%self142458152285%_
                          '4
                          '#f
                          'delete!)))
                    (_%method152292152297%_
                     _%object152291152296%_
                     _%key152288%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key152266%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!146040%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each146042%_
      (lambda (_%self152084%_ _%proc152085%_)
        (let* ((_%self152088%_ _%self152084%_) (_%proc152097%_ _%proc152085%_))
          (declare (not safe))
          (let ((_%h152108%_
                 (##unchecked-structure-ref _%self152088%_ '1 '#f '#f))
                (_%key?152110%_
                 (##unchecked-structure-ref _%self152088%_ '2 '#f '#f)))
            (if ((lambda (_%key?152113%_ _%proc152114%_) '#t)
                 _%key?152110%_
                 _%proc152097%_)
                (let* ((_%self142751152116%_ _%h152108%_)
                       (_%proc152119%_ _%proc152097%_))
                  (declare (not safe))
                  (let ((_%object152122152127%_
                         (##unchecked-structure-ref
                          _%self142751152116%_
                          '1
                          '#f
                          'for-each))
                        (_%method152123152128%_
                         (##unchecked-structure-ref
                          _%self142751152116%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152123152128%_
                     _%object152122152127%_
                     _%proc152119%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc152097%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each146042%_
       '#f))
    (define _%checked-hash-table::HashTable::length146044%_
      (lambda (_%self151930%_)
        (let ((_%self151933%_ _%self151930%_))
          (declare (not safe))
          (let ((_%h151945%_
                 (##unchecked-structure-ref _%self151933%_ '1 '#f '#f))
                (_%key?151947%_
                 (##unchecked-structure-ref _%self151933%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self143062151950%_ _%h151945%_))
                  (declare (not safe))
                  (let ((_%object151953151958%_
                         (##unchecked-structure-ref
                          _%self143062151950%_
                          '1
                          '#f
                          'length))
                        (_%method151954151959%_
                         (##unchecked-structure-ref
                          _%self143062151950%_
                          '6
                          '#f
                          'length)))
                    (_%method151954151959%_ _%object151953151958%_)))
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
       _%checked-hash-table::HashTable::length146044%_
       '#f))
    (define _%checked-hash-table::HashTable::copy146046%_
      (lambda (_%self151776%_)
        (let ((_%self151779%_ _%self151776%_))
          (declare (not safe))
          (let ((_%h151791%_
                 (##unchecked-structure-ref _%self151779%_ '1 '#f '#f))
                (_%key?151793%_
                 (##unchecked-structure-ref _%self151779%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self142164151796%_ _%h151791%_))
                  (declare (not safe))
                  (let ((_%object151799151804%_
                         (##unchecked-structure-ref
                          _%self142164151796%_
                          '1
                          '#f
                          'copy))
                        (_%method151800151805%_
                         (##unchecked-structure-ref
                          _%self142164151796%_
                          '3
                          '#f
                          'copy)))
                    (_%method151800151805%_ _%object151799151804%_)))
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
       _%checked-hash-table::HashTable::copy146046%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!146048%_
      (lambda (_%self151622%_)
        (let ((_%self151625%_ _%self151622%_))
          (declare (not safe))
          (let ((_%h151637%_
                 (##unchecked-structure-ref _%self151625%_ '1 '#f '#f))
                (_%key?151639%_
                 (##unchecked-structure-ref _%self151625%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self141872151642%_ _%h151637%_))
                  (declare (not safe))
                  (let ((_%object151645151650%_
                         (##unchecked-structure-ref
                          _%self141872151642%_
                          '1
                          '#f
                          'clear!))
                        (_%method151646151651%_
                         (##unchecked-structure-ref
                          _%self141872151642%_
                          '2
                          '#f
                          'clear!)))
                    (_%method151646151651%_ _%object151645151650%_)))
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
       _%checked-hash-table::HashTable::clear!146048%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table151492%_
               _%count151493%_
               _%free151494%_
               _%hash151495%_
               _%test151496%_
               _%seed151497%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table151492%_
           _%count151493%_
           _%free151494%_
           _%hash151495%_
           _%test151496%_
           _%seed151497%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords150902%_
               _%size-hint150892150903%_
               _%seed150893150904%_
               _%test150894150905%_
               _%hash150895150906%_
               _%lock150896150907%_
               _%check150897150908%_
               _%weak-keys150898150909%_
               _%weak-values150899150910%_)
        (let* ((_%size-hint150912%_
                (if (eq? _%size-hint150892150903%_ absent-value)
                    '#f
                    _%size-hint150892150903%_))
               (_%seed150914%_
                (if (eq? _%seed150893150904%_ absent-value)
                    '#f
                    _%seed150893150904%_))
               (_%test150916%_
                (if (eq? _%test150894150905%_ absent-value)
                    equal?
                    _%test150894150905%_))
               (_%hash150918%_
                (if (eq? _%hash150895150906%_ absent-value)
                    '#f
                    _%hash150895150906%_))
               (_%lock150920%_
                (if (eq? _%lock150896150907%_ absent-value)
                    '#f
                    _%lock150896150907%_))
               (_%check150922%_
                (if (eq? _%check150897150908%_ absent-value)
                    '#f
                    _%check150897150908%_))
               (_%weak-keys150924%_
                (if (eq? _%weak-keys150898150909%_ absent-value)
                    '#f
                    _%weak-keys150898150909%_))
               (_%weak-values150926%_
                (if (eq? _%weak-values150899150910%_ absent-value)
                    '#f
                    _%weak-values150899150910%_)))
          (letrec ((_%table-seed150929%_
                    (lambda ()
                      (if (fixnum? _%seed150914%_)
                          _%seed150914%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock151073%_
                    (lambda (_%ht151460%_)
                      (let ((_%ht151463%_ _%ht151460%_))
                        (if _%lock150920%_
                            (let ((_%$obj151475%_
                                   (let ((__tmp158331
                                          (let ((_%$obj151472%_
                                                 _%lock150920%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj151472%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj151472%_)))
                                                     '#t)
                                                _%$obj151472%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj151472%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht151463%_
                                      __tmp158331))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj151475%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj151475%_)))
                                       '#t)
                                  _%$obj151475%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj151475%_))))
                            _%ht151463%_))))
                   (_%wrap-lock151074%_
                    (lambda (_%ht151448%_)
                      (let ((_%ht151451%_ _%ht151448%_))
                        (_%__wrap-lock151073%_ _%ht151451%_))))
                   (_%__wrap-checked151196%_
                    (lambda (_%ht151432%_ _%implicit151433%_)
                      (let ((_%ht151436%_ _%ht151432%_))
                        (if _%check150922%_
                            (let ((_%$obj151445%_
                                   (let ((__tmp158332
                                          (if (procedure? _%check150922%_)
                                              _%check150922%_
                                              _%implicit151433%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht151436%_
                                      __tmp158332))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj151445%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj151445%_)))
                                       '#t)
                                  _%$obj151445%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj151445%_))))
                            _%ht151436%_))))
                   (_%wrap-checked151197%_
                    (lambda (_%ht151419%_ _%implicit151420%_)
                      (let ((_%ht151423%_ _%ht151419%_))
                        (_%__wrap-checked151196%_
                         _%ht151423%_
                         _%implicit151420%_))))
                   (_%make151198%_
                    (lambda (_%kons151367%_
                             _%key?151368%_
                             _%hash151369%_
                             _%test151370%_)
                      (let* ((_%size151373%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint150912%_)))
                             (_%table151375%_
                              (let ((__tmp158333 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size151373%_ __tmp158333)))
                             (_%ht151380%_
                              (let ((_%$obj151377%_
                                     (_%kons151367%_
                                      _%table151375%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size151373%_ '2))
                                      _%hash151369%_
                                      _%test151370%_
                                      (_%table-seed150929%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj151377%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj151377%_)))
                                         '#t)
                                    _%$obj151377%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj151377%_)))))
                             (_%ht151402%_
                              (let* ((_%ht151383%_ _%ht151380%_)
                                     (_%ht151387%_ _%ht151383%_))
                                (_%__wrap-lock151073%_ _%ht151387%_)))
                             (_%implicit151405%_ _%key?151368%_)
                             (_%ht151409%_ _%ht151402%_))
                        (_%__wrap-checked151196%_
                         _%ht151409%_
                         _%implicit151405%_))))
                   (_%make-gc-hash-table151199%_
                    (lambda ()
                      (let* ((_%ht151332%_
                              (let ((_%$obj151329%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint150912%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj151329%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj151329%_)))
                                         '#t)
                                    _%$obj151329%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj151329%_)))))
                             (_%ht151350%_
                              (let* ((_%ht151334%_ _%ht151332%_)
                                     (_%ht151338%_ _%ht151334%_))
                                (_%__wrap-lock151073%_ _%ht151338%_)))
                             (_%implicit151353%_ true)
                             (_%ht151357%_ _%ht151350%_))
                        (_%__wrap-checked151196%_
                         _%ht151357%_
                         _%implicit151353%_))))
                   (_%make-gambit-table151200%_
                    (lambda ()
                      (let* ((_%size151269%_
                              (let ((_%$e151266%_ _%size-hint150912%_))
                                (if _%$e151266%_
                                    _%$e151266%_
                                    (macro-absent-obj))))
                             (_%test151274%_
                              (let ((_%$e151271%_ _%test150916%_))
                                (if _%$e151271%_ _%$e151271%_ equal?)))
                             (_%hash151282%_
                              (let ((_%$e151276%_ _%hash150918%_))
                                (if _%$e151276%_
                                    _%$e151276%_
                                    (if (eq? _%test151274%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test151274%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht151287%_
                              (let ((_%$obj151284%_
                                     (make-table
                                      'size:
                                      _%size151269%_
                                      'test:
                                      _%test151274%_
                                      'hash:
                                      _%hash151282%_
                                      'weak-keys:
                                      _%weak-keys150924%_
                                      'weak-values:
                                      _%weak-values150926%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj151284%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj151284%_)))
                                         '#t)
                                    _%$obj151284%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj151284%_)))))
                             (_%ht151310%_
                              (let* ((_%ht151290%_ _%ht151287%_)
                                     (_%ht151294%_ _%ht151290%_))
                                (_%__wrap-lock151073%_ _%ht151294%_)))
                             (_%implicit151313%_ true)
                             (_%ht151317%_ _%ht151310%_))
                        (_%__wrap-checked151196%_
                         _%ht151317%_
                         _%implicit151313%_)))))
            (if (or _%weak-keys150924%_ _%weak-values150926%_)
                (_%make-gambit-table151200%_)
                (if (and (or (eq? _%test150916%_ eq?)
                             (eq? _%test150916%_ ##eq?))
                         (or (not _%hash150918%_)
                             (eq? _%hash150918%_ eq?-hash)
                             (eq? _%hash150918%_ eq-hash))
                         (not _%seed150914%_))
                    (_%make-gc-hash-table151199%_)
                    (if (and (or (eq? _%test150916%_ eq?)
                                 (eq? _%test150916%_ ##eq?))
                             (or (not _%hash150918%_)
                                 (eq? _%hash150918%_ eq?-hash)
                                 (eq? _%hash150918%_ eq-hash)))
                        (_%make151198%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test150916%_ eqv?)
                                     (eq? _%test150916%_ ##eqv?))
                                 (or (not _%hash150918%_)
                                     (eq? _%hash150918%_ eqv?-hash)
                                     (eq? _%hash150918%_ eqv-hash)))
                            (_%make151198%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test150916%_ eq?)
                                         (eq? _%test150916%_ ##eq?))
                                     (or (eq? _%hash150918%_ symbolic-hash)
                                         (eq? _%hash150918%_ ##symbol-hash)))
                                (_%make151198%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test150916%_ eq?)
                                             (eq? _%test150916%_ ##eq?))
                                         (eq? _%hash150918%_ immediate-hash))
                                    (_%make151198%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test150916%_ equal?)
                                                 (eq? _%test150916%_ ##equal?)
                                                 (eq? _%test150916%_ string=?)
                                                 (eq? _%test150916%_
                                                      ##string=?))
                                             (or (eq? _%hash150918%_
                                                      string-hash)
                                                 (eq? _%hash150918%_
                                                      ##string=?-hash)))
                                        (_%make151198%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test150916%_ equal?)
                                                 (not _%hash150918%_))
                                            (_%make151198%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test150916%_)
                                                (if (procedure? _%hash150918%_)
                                                    (_%make151198%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash150918%_
                                                     _%test150916%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash150918%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test150916%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords151482%_ . _%args151483%_)
        (apply make-hash-table__%
               _%@@keywords151482%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151482%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151482%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151482%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151482%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151482%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151482%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151482%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151482%_
                  'weak-values:
                  absent-value))
               _%args151483%_)))
    (define make-hash-table
      (lambda _%args150900151489%_
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
               _%args150900151489%_)))
    (define make-hash-table-eq
      (lambda _%args150889%_
        (apply make-hash-table 'test: eq? _%args150889%_)))
    (define make-hash-table-eqv
      (lambda _%args150887%_
        (apply make-hash-table 'test: eqv? _%args150887%_)))
    (define make-hash-table-symbolic
      (lambda _%args150885%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args150885%_)))
    (define make-hash-table-string
      (lambda _%args150883%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args150883%_)))
    (define make-hash-table-immediate
      (lambda _%args150881%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args150881%_)))
    (define list->hash-table
      (lambda (_%lst150878%_ . _%args150879%_)
        (list->hash-table!
         _%lst150878%_
         (apply make-hash-table
                'size:
                (length _%lst150878%_)
                _%args150879%_))))
    (define list->hash-table-eq
      (lambda (_%lst150875%_ . _%args150876%_)
        (list->hash-table!
         _%lst150875%_
         (apply make-hash-table-eq
                'size:
                (length _%lst150875%_)
                _%args150876%_))))
    (define list->hash-table-eqv
      (lambda (_%lst150872%_ . _%args150873%_)
        (list->hash-table!
         _%lst150872%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst150872%_)
                _%args150873%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst150869%_ . _%args150870%_)
        (list->hash-table!
         _%lst150869%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst150869%_)
                _%args150870%_))))
    (define list->hash-table-string
      (lambda (_%lst150866%_ . _%args150867%_)
        (list->hash-table!
         _%lst150866%_
         (apply make-hash-table-string
                'size:
                (length _%lst150866%_)
                _%args150867%_))))
    (define list->hash-table-immediate
      (lambda (_%lst150863%_ . _%args150864%_)
        (list->hash-table!
         _%lst150863%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst150863%_)
                _%args150864%_))))
    (define list->hash-table!
      (lambda (_%lst150814%_ _%h150815%_)
        (for-each
         (lambda (_%el150817%_)
           (let* ((_%el150818150825%_ _%el150817%_)
                  (_%E150820150828%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el150818150825%_
                              '([k . v])))
                     '#!void))
                  (_%K150821150851%_
                   (lambda (_%v150831%_ _%k150832%_)
                     (let* ((_%self143651150834%_ _%h150815%_)
                            (_%key150837%_ _%k150832%_)
                            (_%value150840%_ _%v150831%_))
                       (declare (not safe))
                       (let ((_%object150843150848%_
                              (##unchecked-structure-ref
                               _%self143651150834%_
                               '1
                               '#f
                               'set!))
                             (_%method150844150849%_
                              (##unchecked-structure-ref
                               _%self143651150834%_
                               '8
                               '#f
                               'set!)))
                         (_%method150844150849%_
                          _%object150843150848%_
                          _%key150837%_
                          _%value150840%_))))))
             (if (pair? _%el150818150825%_)
                 (let ((_%hd150822150854%_
                        (let ()
                          (declare (not safe))
                          (##car _%el150818150825%_)))
                       (_%tl150823150856%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el150818150825%_))))
                   (let* ((_%k150859%_ _%hd150822150854%_)
                          (_%v150861%_ _%tl150823150856%_))
                     (_%K150821150851%_ _%v150861%_ _%k150859%_)))
                 (_%E150820150828%_))))
         _%lst150814%_)
        _%h150815%_))
    (define plist->hash-table
      (lambda (_%lst150811%_ . _%args150812%_)
        (plist->hash-table!
         _%lst150811%_
         (apply make-hash-table
                'size:
                (length _%lst150811%_)
                _%args150812%_))))
    (define plist->hash-table-eq
      (lambda (_%lst150808%_ . _%args150809%_)
        (plist->hash-table!
         _%lst150808%_
         (apply make-hash-table-eq
                'size:
                (length _%lst150808%_)
                _%args150809%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst150805%_ . _%args150806%_)
        (plist->hash-table!
         _%lst150805%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst150805%_)
                _%args150806%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst150802%_ . _%args150803%_)
        (plist->hash-table!
         _%lst150802%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst150802%_)
                _%args150803%_))))
    (define plist->hash-table-string
      (lambda (_%lst150799%_ . _%args150800%_)
        (plist->hash-table!
         _%lst150799%_
         (apply make-hash-table-string
                'size:
                (length _%lst150799%_)
                _%args150800%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst150796%_ . _%args150797%_)
        (plist->hash-table!
         _%lst150796%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst150796%_)
                _%args150797%_))))
    (define plist->hash-table!
      (lambda (_%lst150719%_ _%h150720%_)
        (let _%loop150722%_ ((_%rest150724%_ _%lst150719%_))
          (let* ((_%rest150725150737%_ _%rest150724%_)
                 (_%else150728150745%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst150719%_)))))
            (let ((_%K150731150777%_
                   (lambda (_%rest150756%_ _%val150757%_ _%key150758%_)
                     (let* ((_%self143651150760%_ _%h150720%_)
                            (_%key150763%_ _%key150758%_)
                            (_%value150766%_ _%val150757%_))
                       (declare (not safe))
                       (let ((_%object150769150774%_
                              (##unchecked-structure-ref
                               _%self143651150760%_
                               '1
                               '#f
                               'set!))
                             (_%method150770150775%_
                              (##unchecked-structure-ref
                               _%self143651150760%_
                               '8
                               '#f
                               'set!)))
                         (_%method150770150775%_
                          _%object150769150774%_
                          _%key150763%_
                          _%value150766%_)))
                     (_%loop150722%_ _%rest150756%_)))
                  (_%K150730150750%_ (lambda () _%h150720%_)))
              (let ((_%try-match150727150753%_
                     (lambda ()
                       (if (null? _%rest150725150737%_)
                           (_%K150730150750%_)
                           (_%else150728150745%_)))))
                (if (pair? _%rest150725150737%_)
                    (let ((_%tl150733150782%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest150725150737%_)))
                          (_%hd150732150780%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest150725150737%_))))
                      (if (pair? _%tl150733150782%_)
                          (let ((_%tl150735150789%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl150733150782%_)))
                                (_%hd150734150787%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl150733150782%_))))
                            (let ((_%key150785%_ _%hd150732150780%_)
                                  (_%val150792%_ _%hd150734150787%_)
                                  (_%rest150794%_ _%tl150735150789%_))
                              (_%K150731150777%_
                               _%rest150794%_
                               _%val150792%_
                               _%key150785%_)))
                          (_%else150728150745%_)))
                    (_%try-match150727150753%_))))))))
    (define __hash-length
      (lambda (_%h150668%_)
        (let* ((_%h150671%_ _%h150668%_)
               (_%self143063150680%_ _%h150671%_)
               (_%self143063150687%_
                (let ((_%$obj150684%_ _%self143063150680%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150684%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150684%_)))
                           '#t)
                      _%$obj150684%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150684%_)))))
               (_%self143063150689%_ _%self143063150687%_))
          (if __DEBUG
              (let ((_%val150709%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object150701150706%_
                              (##unchecked-structure-ref
                               _%self143063150689%_
                               '1
                               '#f
                               'length))
                             (_%method150702150707%_
                              (##unchecked-structure-ref
                               _%self143063150689%_
                               '6
                               '#f
                               'length)))
                         (_%method150702150707%_ _%object150701150706%_)))))
                (if (fixnum? _%val150709%_)
                    _%val150709%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val150709%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object150711150716%_
                       (##unchecked-structure-ref
                        _%self143063150689%_
                        '1
                        '#f
                        'length))
                      (_%method150712150717%_
                       (##unchecked-structure-ref
                        _%self143063150689%_
                        '6
                        '#f
                        'length)))
                  (_%method150712150717%_ _%object150711150716%_)))))))
    (define hash-length
      (lambda (_%h146323%_)
        (let* ((_%h146329%_
                (let ((_%$obj146326%_ _%h146323%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146326%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146326%_)))
                           '#t)
                      _%$obj146326%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146326%_)))))
               (_%h146331%_ _%h146329%_))
          (__hash-length _%h146331%_))))
    (define __hash-ref__%
      (lambda (_%h150596%_ _%key150597%_ _%default150598%_)
        (let* ((_%h150601%_ _%h150596%_)
               (_%result150654%_
                (let* ((_%self143357150610%_ _%h150601%_)
                       (_%key150613%_ _%key150597%_)
                       (_%default150616%_ _%default150598%_)
                       (_%self143357150623%_
                        (let ((_%$obj150620%_ _%self143357150610%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj150620%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj150620%_)))
                                   '#t)
                              _%$obj150620%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj150620%_)))))
                       (_%self143357150625%_ _%self143357150623%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object150639150644%_
                               (##unchecked-structure-ref
                                _%self143357150625%_
                                '1
                                '#f
                                'ref))
                              (_%method150640150645%_
                               (##unchecked-structure-ref
                                _%self143357150625%_
                                '7
                                '#f
                                'ref)))
                          (_%method150640150645%_
                           _%object150639150644%_
                           _%key150613%_
                           _%default150616%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object150646150651%_
                               (##unchecked-structure-ref
                                _%self143357150625%_
                                '1
                                '#f
                                'ref))
                              (_%method150647150652%_
                               (##unchecked-structure-ref
                                _%self143357150625%_
                                '7
                                '#f
                                'ref)))
                          (_%method150647150652%_
                           _%object150646150651%_
                           _%key150613%_
                           _%default150616%_)))))))
          (if (eq? _%result150654%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h150601%_
               'key:
               _%key150597%_)
              _%result150654%_))))
    (define __hash-ref__0
      (lambda (_%h150659%_ _%key150660%_)
        (let ((_%default150662%_ (macro-absent-obj)))
          (__hash-ref__% _%h150659%_ _%key150660%_ _%default150662%_))))
    (define __hash-ref
      (lambda _g158334_
        (let ((_g158335_ (let () (declare (not safe)) (##length _g158334_))))
          (cond ((let () (declare (not safe)) (##fx= _g158335_ 2))
                 (apply __hash-ref__0 _g158334_))
                ((let () (declare (not safe)) (##fx= _g158335_ 3))
                 (apply __hash-ref__% _g158334_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g158334_))))))
    (define hash-ref__%
      (lambda (_%h146462%_ _%key146463%_ _%default146464%_)
        (let* ((_%h146470%_
                (let ((_%$obj146467%_ _%h146462%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146467%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146467%_)))
                           '#t)
                      _%$obj146467%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146467%_)))))
               (_%h146472%_ _%h146470%_))
          (__hash-ref__% _%h146472%_ _%key146463%_ _%default146464%_))))
    (define hash-ref__0
      (lambda (_%h146485%_ _%key146486%_)
        (let ((_%default146488%_ (macro-absent-obj)))
          (hash-ref__% _%h146485%_ _%key146486%_ _%default146488%_))))
    (define hash-ref
      (lambda _g158336_
        (let ((_g158337_ (let () (declare (not safe)) (##length _g158336_))))
          (cond ((let () (declare (not safe)) (##fx= _g158337_ 2))
                 (apply hash-ref__0 _g158336_))
                ((let () (declare (not safe)) (##fx= _g158337_ 3))
                 (apply hash-ref__% _g158336_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g158336_))))))
    (define __hash-get
      (lambda (_%h150538%_ _%key150539%_)
        (let* ((_%h150542%_ _%h150538%_)
               (_%self143357150551%_ _%h150542%_)
               (_%key150554%_ _%key150539%_)
               (_%default150557%_ '#f)
               (_%self143357150564%_
                (let ((_%$obj150561%_ _%self143357150551%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150561%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150561%_)))
                           '#t)
                      _%$obj150561%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150561%_)))))
               (_%self143357150566%_ _%self143357150564%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object150580150585%_
                       (##unchecked-structure-ref
                        _%self143357150566%_
                        '1
                        '#f
                        'ref))
                      (_%method150581150586%_
                       (##unchecked-structure-ref
                        _%self143357150566%_
                        '7
                        '#f
                        'ref)))
                  (_%method150581150586%_
                   _%object150580150585%_
                   _%key150554%_
                   _%default150557%_)))
              (let ()
                (declare (not safe))
                (let ((_%object150587150592%_
                       (##unchecked-structure-ref
                        _%self143357150566%_
                        '1
                        '#f
                        'ref))
                      (_%method150588150593%_
                       (##unchecked-structure-ref
                        _%self143357150566%_
                        '7
                        '#f
                        'ref)))
                  (_%method150588150593%_
                   _%object150587150592%_
                   _%key150554%_
                   _%default150557%_)))))))
    (define hash-get
      (lambda (_%h146614%_ _%key146615%_)
        (let* ((_%h146621%_
                (let ((_%$obj146618%_ _%h146614%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146618%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146618%_)))
                           '#t)
                      _%$obj146618%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146618%_)))))
               (_%h146623%_ _%h146621%_))
          (__hash-get _%h146623%_ _%key146615%_))))
    (define __hash-put!
      (lambda (_%h150480%_ _%key150481%_ _%value150482%_)
        (let* ((_%h150485%_ _%h150480%_)
               (_%self143652150494%_ _%h150485%_)
               (_%key150497%_ _%key150481%_)
               (_%value150500%_ _%value150482%_)
               (_%self143652150507%_
                (let ((_%$obj150504%_ _%self143652150494%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150504%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150504%_)))
                           '#t)
                      _%$obj150504%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150504%_)))))
               (_%self143652150509%_ _%self143652150507%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object150523150528%_
                       (##unchecked-structure-ref
                        _%self143652150509%_
                        '1
                        '#f
                        'set!))
                      (_%method150524150529%_
                       (##unchecked-structure-ref
                        _%self143652150509%_
                        '8
                        '#f
                        'set!)))
                  (_%method150524150529%_
                   _%object150523150528%_
                   _%key150497%_
                   _%value150500%_)))
              (let ()
                (declare (not safe))
                (let ((_%object150530150535%_
                       (##unchecked-structure-ref
                        _%self143652150509%_
                        '1
                        '#f
                        'set!))
                      (_%method150531150536%_
                       (##unchecked-structure-ref
                        _%self143652150509%_
                        '8
                        '#f
                        'set!)))
                  (_%method150531150536%_
                   _%object150530150535%_
                   _%key150497%_
                   _%value150500%_)))))))
    (define hash-put!
      (lambda (_%h146753%_ _%key146754%_ _%value146755%_)
        (let* ((_%h146761%_
                (let ((_%$obj146758%_ _%h146753%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146758%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146758%_)))
                           '#t)
                      _%$obj146758%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146758%_)))))
               (_%h146763%_ _%h146761%_))
          (__hash-put! _%h146763%_ _%key146754%_ _%value146755%_))))
    (define __hash-update!__%
      (lambda (_%h150393%_ _%key150394%_ _%update150395%_ _%default150396%_)
        (let* ((_%h150399%_ _%h150393%_)
               (_%self143947150408%_ _%h150399%_)
               (_%key150411%_ _%key150394%_)
               (_%proc150414%_ _%update150395%_)
               (_%default150417%_ _%default150396%_)
               (_%self143947150424%_
                (let ((_%$obj150421%_ _%self143947150408%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150421%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150421%_)))
                           '#t)
                      _%$obj150421%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150421%_)))))
               (_%self143947150426%_ _%self143947150424%_))
          (if (procedure? _%proc150414%_)
              (let ((_%proc150442%_ _%proc150414%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object150451150456%_
                             (##unchecked-structure-ref
                              _%self143947150426%_
                              '1
                              '#f
                              'update!))
                            (_%method150452150457%_
                             (##unchecked-structure-ref
                              _%self143947150426%_
                              '9
                              '#f
                              'update!)))
                        (_%method150452150457%_
                         _%object150451150456%_
                         _%key150411%_
                         _%proc150442%_
                         _%default150417%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object150458150463%_
                             (##unchecked-structure-ref
                              _%self143947150426%_
                              '1
                              '#f
                              'update!))
                            (_%method150459150464%_
                             (##unchecked-structure-ref
                              _%self143947150426%_
                              '9
                              '#f
                              'update!)))
                        (_%method150459150464%_
                         _%object150458150463%_
                         _%key150411%_
                         _%proc150442%_
                         _%default150417%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc150414%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h150469%_ _%key150470%_ _%update150471%_)
        (let ((_%default150473%_ '#!void))
          (__hash-update!__%
           _%h150469%_
           _%key150470%_
           _%update150471%_
           _%default150473%_))))
    (define __hash-update!
      (lambda _g158338_
        (let ((_g158339_ (let () (declare (not safe)) (##length _g158338_))))
          (cond ((let () (declare (not safe)) (##fx= _g158339_ 3))
                 (apply __hash-update!__0 _g158338_))
                ((let () (declare (not safe)) (##fx= _g158339_ 4))
                 (apply __hash-update!__% _g158338_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g158338_))))))
    (define hash-update!__%
      (lambda (_%h146894%_ _%key146895%_ _%update146896%_ _%default146897%_)
        (let* ((_%h146903%_
                (let ((_%$obj146900%_ _%h146894%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146900%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146900%_)))
                           '#t)
                      _%$obj146900%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146900%_)))))
               (_%h146905%_ _%h146903%_))
          (__hash-update!__%
           _%h146905%_
           _%key146895%_
           _%update146896%_
           _%default146897%_))))
    (define hash-update!__0
      (lambda (_%h146918%_ _%key146919%_ _%update146920%_)
        (let ((_%default146922%_ '#!void))
          (hash-update!__%
           _%h146918%_
           _%key146919%_
           _%update146920%_
           _%default146922%_))))
    (define hash-update!
      (lambda _g158340_
        (let ((_g158341_ (let () (declare (not safe)) (##length _g158340_))))
          (cond ((let () (declare (not safe)) (##fx= _g158341_ 3))
                 (apply hash-update!__0 _g158340_))
                ((let () (declare (not safe)) (##fx= _g158341_ 4))
                 (apply hash-update!__% _g158340_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g158340_))))))
    (define __hash-remove!
      (lambda (_%h150339%_ _%key150340%_)
        (let* ((_%h150343%_ _%h150339%_)
               (_%self142459150352%_ _%h150343%_)
               (_%key150355%_ _%key150340%_)
               (_%self142459150362%_
                (let ((_%$obj150359%_ _%self142459150352%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150359%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150359%_)))
                           '#t)
                      _%$obj150359%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150359%_)))))
               (_%self142459150364%_ _%self142459150362%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object150377150382%_
                       (##unchecked-structure-ref
                        _%self142459150364%_
                        '1
                        '#f
                        'delete!))
                      (_%method150378150383%_
                       (##unchecked-structure-ref
                        _%self142459150364%_
                        '4
                        '#f
                        'delete!)))
                  (_%method150378150383%_
                   _%object150377150382%_
                   _%key150355%_)))
              (let ()
                (declare (not safe))
                (let ((_%object150384150389%_
                       (##unchecked-structure-ref
                        _%self142459150364%_
                        '1
                        '#f
                        'delete!))
                      (_%method150385150390%_
                       (##unchecked-structure-ref
                        _%self142459150364%_
                        '4
                        '#f
                        'delete!)))
                  (_%method150385150390%_
                   _%object150384150389%_
                   _%key150355%_)))))))
    (define hash-remove!
      (lambda (_%h147049%_ _%key147050%_)
        (let* ((_%h147056%_
                (let ((_%$obj147053%_ _%h147049%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147053%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147053%_)))
                           '#t)
                      _%$obj147053%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147053%_)))))
               (_%h147058%_ _%h147056%_))
          (__hash-remove! _%h147058%_ _%key147050%_))))
    (define __hash-key?
      (lambda (_%h150282%_ _%k150283%_)
        (let ((_%h150286%_ _%h150282%_))
          (not (eq? (let* ((_%self143357150295%_ _%h150286%_)
                           (_%key150298%_ _%k150283%_)
                           (_%default150301%_ absent-value)
                           (_%self143357150308%_
                            (let ((_%$obj150305%_ _%self143357150295%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj150305%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj150305%_)))
                                       '#t)
                                  _%$obj150305%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj150305%_)))))
                           (_%self143357150310%_ _%self143357150308%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object150324150329%_
                                   (##unchecked-structure-ref
                                    _%self143357150310%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method150325150330%_
                                   (##unchecked-structure-ref
                                    _%self143357150310%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method150325150330%_
                               _%object150324150329%_
                               _%key150298%_
                               _%default150301%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object150331150336%_
                                   (##unchecked-structure-ref
                                    _%self143357150310%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method150332150337%_
                                   (##unchecked-structure-ref
                                    _%self143357150310%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method150332150337%_
                               _%object150331150336%_
                               _%key150298%_
                               _%default150301%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h147188%_ _%k147189%_)
        (let* ((_%h147195%_
                (let ((_%$obj147192%_ _%h147188%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147192%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147192%_)))
                           '#t)
                      _%$obj147192%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147192%_)))))
               (_%h147197%_ _%h147195%_))
          (__hash-key? _%h147197%_ _%k147189%_))))
    (define __hash->list
      (lambda (_%h150214%_)
        (let* ((_%h150217%_ _%h150214%_) (_%lst150226%_ '()))
          (let* ((_%self142752150228%_ _%h150217%_)
                 (_%proc150234%_
                  (lambda (_%k150231%_ _%v150232%_)
                    (set! _%lst150226%_
                          (cons (cons _%k150231%_ _%v150232%_)
                                _%lst150226%_))))
                 (_%self142752150241%_
                  (let ((_%$obj150238%_ _%self142752150228%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj150238%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj150238%_)))
                             '#t)
                        _%$obj150238%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj150238%_)))))
                 (_%self142752150243%_ _%self142752150241%_)
                 (_%proc150258%_ _%proc150234%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object150267150272%_
                         (##unchecked-structure-ref
                          _%self142752150243%_
                          '1
                          '#f
                          'for-each))
                        (_%method150268150273%_
                         (##unchecked-structure-ref
                          _%self142752150243%_
                          '5
                          '#f
                          'for-each)))
                    (_%method150268150273%_
                     _%object150267150272%_
                     _%proc150258%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object150274150279%_
                         (##unchecked-structure-ref
                          _%self142752150243%_
                          '1
                          '#f
                          'for-each))
                        (_%method150275150280%_
                         (##unchecked-structure-ref
                          _%self142752150243%_
                          '5
                          '#f
                          'for-each)))
                    (_%method150275150280%_
                     _%object150274150279%_
                     _%proc150258%_)))))
          _%lst150226%_)))
    (define hash->list
      (lambda (_%h147327%_)
        (let* ((_%h147333%_
                (let ((_%$obj147330%_ _%h147327%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147330%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147330%_)))
                           '#t)
                      _%$obj147330%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147330%_)))))
               (_%h147335%_ _%h147333%_))
          (__hash->list _%h147335%_))))
    (define __hash->plist
      (lambda (_%h150146%_)
        (let* ((_%h150149%_ _%h150146%_) (_%lst150158%_ '()))
          (let* ((_%self142752150160%_ _%h150149%_)
                 (_%proc150166%_
                  (lambda (_%k150163%_ _%v150164%_)
                    (set! _%lst150158%_
                          (cons _%k150163%_
                                (cons _%v150164%_ _%lst150158%_)))))
                 (_%self142752150173%_
                  (let ((_%$obj150170%_ _%self142752150160%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj150170%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj150170%_)))
                             '#t)
                        _%$obj150170%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj150170%_)))))
                 (_%self142752150175%_ _%self142752150173%_)
                 (_%proc150190%_ _%proc150166%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object150199150204%_
                         (##unchecked-structure-ref
                          _%self142752150175%_
                          '1
                          '#f
                          'for-each))
                        (_%method150200150205%_
                         (##unchecked-structure-ref
                          _%self142752150175%_
                          '5
                          '#f
                          'for-each)))
                    (_%method150200150205%_
                     _%object150199150204%_
                     _%proc150190%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object150206150211%_
                         (##unchecked-structure-ref
                          _%self142752150175%_
                          '1
                          '#f
                          'for-each))
                        (_%method150207150212%_
                         (##unchecked-structure-ref
                          _%self142752150175%_
                          '5
                          '#f
                          'for-each)))
                    (_%method150207150212%_
                     _%object150206150211%_
                     _%proc150190%_)))))
          _%lst150158%_)))
    (define hash->plist
      (lambda (_%h147465%_)
        (let* ((_%h147471%_
                (let ((_%$obj147468%_ _%h147465%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147468%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147468%_)))
                           '#t)
                      _%$obj147468%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147468%_)))))
               (_%h147473%_ _%h147471%_))
          (__hash->plist _%h147473%_))))
    (define __hash-for-each
      (lambda (_%proc150075%_ _%h150076%_)
        (let* ((_%proc150079%_ _%proc150075%_)
               (_%h150087%_ _%h150076%_)
               (_%self142752150096%_ _%h150087%_)
               (_%proc150099%_ _%proc150079%_)
               (_%self142752150106%_
                (let ((_%$obj150103%_ _%self142752150096%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150103%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150103%_)))
                           '#t)
                      _%$obj150103%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150103%_)))))
               (_%self142752150108%_ _%self142752150106%_)
               (_%proc150122%_ _%proc150099%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object150131150136%_
                       (##unchecked-structure-ref
                        _%self142752150108%_
                        '1
                        '#f
                        'for-each))
                      (_%method150132150137%_
                       (##unchecked-structure-ref
                        _%self142752150108%_
                        '5
                        '#f
                        'for-each)))
                  (_%method150132150137%_
                   _%object150131150136%_
                   _%proc150122%_)))
              (let ()
                (declare (not safe))
                (let ((_%object150138150143%_
                       (##unchecked-structure-ref
                        _%self142752150108%_
                        '1
                        '#f
                        'for-each))
                      (_%method150139150144%_
                       (##unchecked-structure-ref
                        _%self142752150108%_
                        '5
                        '#f
                        'for-each)))
                  (_%method150139150144%_
                   _%object150138150143%_
                   _%proc150122%_)))))))
    (define hash-for-each
      (lambda (_%proc147603%_ _%h147604%_)
        (if (procedure? _%proc147603%_)
            (let* ((_%proc147608%_ _%proc147603%_)
                   (_%h147620%_
                    (let ((_%$obj147617%_ _%h147604%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj147617%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj147617%_)))
                               '#t)
                          _%$obj147617%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj147617%_)))))
                   (_%h147622%_ _%h147620%_))
              (__hash-for-each _%proc147608%_ _%h147622%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc147603%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc149998%_ _%h149999%_)
        (let* ((_%proc150002%_ _%proc149998%_)
               (_%h150010%_ _%h149999%_)
               (_%result150019%_ '()))
          (let* ((_%self142752150021%_ _%h150010%_)
                 (_%proc150027%_
                  (lambda (_%k150024%_ _%v150025%_)
                    (set! _%result150019%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc150002%_ _%k150024%_ _%v150025%_))
                                _%result150019%_))))
                 (_%self142752150034%_
                  (let ((_%$obj150031%_ _%self142752150021%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj150031%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj150031%_)))
                             '#t)
                        _%$obj150031%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj150031%_)))))
                 (_%self142752150036%_ _%self142752150034%_)
                 (_%proc150051%_ _%proc150027%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object150060150065%_
                         (##unchecked-structure-ref
                          _%self142752150036%_
                          '1
                          '#f
                          'for-each))
                        (_%method150061150066%_
                         (##unchecked-structure-ref
                          _%self142752150036%_
                          '5
                          '#f
                          'for-each)))
                    (_%method150061150066%_
                     _%object150060150065%_
                     _%proc150051%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object150067150072%_
                         (##unchecked-structure-ref
                          _%self142752150036%_
                          '1
                          '#f
                          'for-each))
                        (_%method150068150073%_
                         (##unchecked-structure-ref
                          _%self142752150036%_
                          '5
                          '#f
                          'for-each)))
                    (_%method150068150073%_
                     _%object150067150072%_
                     _%proc150051%_)))))
          _%result150019%_)))
    (define hash-map
      (lambda (_%proc147752%_ _%h147753%_)
        (if (procedure? _%proc147752%_)
            (let* ((_%proc147757%_ _%proc147752%_)
                   (_%h147769%_
                    (let ((_%$obj147766%_ _%h147753%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj147766%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj147766%_)))
                               '#t)
                          _%$obj147766%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj147766%_)))))
                   (_%h147771%_ _%h147769%_))
              (__hash-map _%proc147757%_ _%h147771%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc147752%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc149920%_ _%iv149921%_ _%h149922%_)
        (let* ((_%proc149925%_ _%proc149920%_)
               (_%h149933%_ _%h149922%_)
               (_%result149942%_ _%iv149921%_))
          (let* ((_%self142752149944%_ _%h149933%_)
                 (_%proc149950%_
                  (lambda (_%k149947%_ _%v149948%_)
                    (set! _%result149942%_
                          (let ()
                            (declare (not safe))
                            (_%proc149925%_
                             _%k149947%_
                             _%v149948%_
                             _%result149942%_)))))
                 (_%self142752149957%_
                  (let ((_%$obj149954%_ _%self142752149944%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj149954%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj149954%_)))
                             '#t)
                        _%$obj149954%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj149954%_)))))
                 (_%self142752149959%_ _%self142752149957%_)
                 (_%proc149974%_ _%proc149950%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object149983149988%_
                         (##unchecked-structure-ref
                          _%self142752149959%_
                          '1
                          '#f
                          'for-each))
                        (_%method149984149989%_
                         (##unchecked-structure-ref
                          _%self142752149959%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149984149989%_
                     _%object149983149988%_
                     _%proc149974%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object149990149995%_
                         (##unchecked-structure-ref
                          _%self142752149959%_
                          '1
                          '#f
                          'for-each))
                        (_%method149991149996%_
                         (##unchecked-structure-ref
                          _%self142752149959%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149991149996%_
                     _%object149990149995%_
                     _%proc149974%_)))))
          _%result149942%_)))
    (define hash-fold
      (lambda (_%proc147901%_ _%iv147902%_ _%h147903%_)
        (if (procedure? _%proc147901%_)
            (let* ((_%proc147907%_ _%proc147901%_)
                   (_%h147919%_
                    (let ((_%$obj147916%_ _%h147903%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj147916%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj147916%_)))
                               '#t)
                          _%$obj147916%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj147916%_)))))
                   (_%h147921%_ _%h147919%_))
              (__hash-fold _%proc147907%_ _%iv147902%_ _%h147921%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc147901%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc149827%_ _%h149828%_ _%default-value149829%_)
        (let* ((_%proc149832%_ _%proc149827%_)
               (_%h149840%_ _%h149828%_)
               (__tmp158342
                (lambda (_%return149849%_)
                  (let* ((_%self142752149851%_ _%h149840%_)
                         (_%proc149860%_
                          (lambda (_%k149854%_ _%v149855%_)
                            (let ((_%$e149857%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc149832%_
                                      _%k149854%_
                                      _%v149855%_))))
                              (if _%$e149857%_
                                  (_%return149849%_ _%$e149857%_)
                                  '#!void))))
                         (_%self142752149867%_
                          (let ((_%$obj149864%_ _%self142752149851%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj149864%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj149864%_)))
                                     '#t)
                                _%$obj149864%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj149864%_)))))
                         (_%self142752149869%_ _%self142752149867%_)
                         (_%proc149884%_ _%proc149860%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object149893149898%_
                                 (##unchecked-structure-ref
                                  _%self142752149869%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method149894149899%_
                                 (##unchecked-structure-ref
                                  _%self142752149869%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method149894149899%_
                             _%object149893149898%_
                             _%proc149884%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object149900149905%_
                                 (##unchecked-structure-ref
                                  _%self142752149869%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method149901149906%_
                                 (##unchecked-structure-ref
                                  _%self142752149869%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method149901149906%_
                             _%object149900149905%_
                             _%proc149884%_)))))
                  _%default-value149829%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp158342))))
    (define __hash-find__0
      (lambda (_%proc149911%_ _%h149912%_)
        (let ((_%default-value149914%_ '#f))
          (__hash-find__%
           _%proc149911%_
           _%h149912%_
           _%default-value149914%_))))
    (define __hash-find
      (lambda _g158343_
        (let ((_g158344_ (let () (declare (not safe)) (##length _g158343_))))
          (cond ((let () (declare (not safe)) (##fx= _g158344_ 2))
                 (apply __hash-find__0 _g158343_))
                ((let () (declare (not safe)) (##fx= _g158344_ 3))
                 (apply __hash-find__% _g158343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g158343_))))))
    (define hash-find__%
      (lambda (_%proc148052%_ _%h148053%_ _%default-value148054%_)
        (if (procedure? _%proc148052%_)
            (let* ((_%proc148058%_ _%proc148052%_)
                   (_%h148070%_
                    (let ((_%$obj148067%_ _%h148053%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj148067%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj148067%_)))
                               '#t)
                          _%$obj148067%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj148067%_)))))
                   (_%h148072%_ _%h148070%_))
              (__hash-find__%
               _%proc148058%_
               _%h148072%_
               _%default-value148054%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc148052%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc148085%_ _%h148086%_)
        (let ((_%default-value148088%_ '#f))
          (hash-find__% _%proc148085%_ _%h148086%_ _%default-value148088%_))))
    (define hash-find
      (lambda _g158345_
        (let ((_g158346_ (let () (declare (not safe)) (##length _g158345_))))
          (cond ((let () (declare (not safe)) (##fx= _g158346_ 2))
                 (apply hash-find__0 _g158345_))
                ((let () (declare (not safe)) (##fx= _g158346_ 3))
                 (apply hash-find__% _g158345_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g158345_))))))
    (define __hash-keys
      (lambda (_%h149758%_)
        (let* ((_%h149761%_ _%h149758%_) (_%result149770%_ '()))
          (let* ((_%self142752149772%_ _%h149761%_)
                 (_%proc149778%_
                  (lambda (_%k149775%_ _%v149776%_)
                    (set! _%result149770%_
                          (cons _%k149775%_ _%result149770%_))))
                 (_%self142752149785%_
                  (let ((_%$obj149782%_ _%self142752149772%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj149782%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj149782%_)))
                             '#t)
                        _%$obj149782%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj149782%_)))))
                 (_%self142752149787%_ _%self142752149785%_)
                 (_%proc149802%_ _%proc149778%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object149811149816%_
                         (##unchecked-structure-ref
                          _%self142752149787%_
                          '1
                          '#f
                          'for-each))
                        (_%method149812149817%_
                         (##unchecked-structure-ref
                          _%self142752149787%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149812149817%_
                     _%object149811149816%_
                     _%proc149802%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object149818149823%_
                         (##unchecked-structure-ref
                          _%self142752149787%_
                          '1
                          '#f
                          'for-each))
                        (_%method149819149824%_
                         (##unchecked-structure-ref
                          _%self142752149787%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149819149824%_
                     _%object149818149823%_
                     _%proc149802%_)))))
          _%result149770%_)))
    (define hash-keys
      (lambda (_%h148214%_)
        (let* ((_%h148220%_
                (let ((_%$obj148217%_ _%h148214%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148217%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148217%_)))
                           '#t)
                      _%$obj148217%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148217%_)))))
               (_%h148222%_ _%h148220%_))
          (__hash-keys _%h148222%_))))
    (define __hash-values
      (lambda (_%h149690%_)
        (let* ((_%h149693%_ _%h149690%_) (_%result149702%_ '()))
          (let* ((_%self142752149704%_ _%h149693%_)
                 (_%proc149710%_
                  (lambda (_%k149707%_ _%v149708%_)
                    (set! _%result149702%_
                          (cons _%v149708%_ _%result149702%_))))
                 (_%self142752149717%_
                  (let ((_%$obj149714%_ _%self142752149704%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj149714%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj149714%_)))
                             '#t)
                        _%$obj149714%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj149714%_)))))
                 (_%self142752149719%_ _%self142752149717%_)
                 (_%proc149734%_ _%proc149710%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object149743149748%_
                         (##unchecked-structure-ref
                          _%self142752149719%_
                          '1
                          '#f
                          'for-each))
                        (_%method149744149749%_
                         (##unchecked-structure-ref
                          _%self142752149719%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149744149749%_
                     _%object149743149748%_
                     _%proc149734%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object149750149755%_
                         (##unchecked-structure-ref
                          _%self142752149719%_
                          '1
                          '#f
                          'for-each))
                        (_%method149751149756%_
                         (##unchecked-structure-ref
                          _%self142752149719%_
                          '5
                          '#f
                          'for-each)))
                    (_%method149751149756%_
                     _%object149750149755%_
                     _%proc149734%_)))))
          _%result149702%_)))
    (define hash-values
      (lambda (_%h148352%_)
        (let* ((_%h148358%_
                (let ((_%$obj148355%_ _%h148352%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148355%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148355%_)))
                           '#t)
                      _%$obj148355%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148355%_)))))
               (_%h148360%_ _%h148358%_))
          (__hash-values _%h148360%_))))
    (define __hash-copy
      (lambda (_%h149639%_)
        (let* ((_%h149642%_ _%h149639%_)
               (_%self142165149651%_ _%h149642%_)
               (_%self142165149658%_
                (let ((_%$obj149655%_ _%self142165149651%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149655%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149655%_)))
                           '#t)
                      _%$obj149655%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149655%_)))))
               (_%self142165149660%_ _%self142165149658%_))
          (if __DEBUG
              (let ((_%$obj149680%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object149672149677%_
                              (##unchecked-structure-ref
                               _%self142165149660%_
                               '1
                               '#f
                               'copy))
                             (_%method149673149678%_
                              (##unchecked-structure-ref
                               _%self142165149660%_
                               '3
                               '#f
                               'copy)))
                         (_%method149673149678%_ _%object149672149677%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj149680%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj149680%_)))
                         '#t)
                    _%$obj149680%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj149680%_))))
              (let ()
                (declare (not safe))
                (let ((_%object149682149687%_
                       (##unchecked-structure-ref
                        _%self142165149660%_
                        '1
                        '#f
                        'copy))
                      (_%method149683149688%_
                       (##unchecked-structure-ref
                        _%self142165149660%_
                        '3
                        '#f
                        'copy)))
                  (_%method149683149688%_ _%object149682149687%_)))))))
    (define hash-copy
      (lambda (_%h148490%_)
        (let* ((_%h148496%_
                (let ((_%$obj148493%_ _%h148490%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148493%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148493%_)))
                           '#t)
                      _%$obj148493%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148493%_)))))
               (_%h148498%_ _%h148496%_))
          (__hash-copy _%h148498%_))))
    (define __hash-clear!
      (lambda (_%h149591%_)
        (let* ((_%h149594%_ _%h149591%_)
               (_%self141873149603%_ _%h149594%_)
               (_%self141873149610%_
                (let ((_%$obj149607%_ _%self141873149603%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149607%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149607%_)))
                           '#t)
                      _%$obj149607%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149607%_)))))
               (_%self141873149612%_ _%self141873149610%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object149624149629%_
                       (##unchecked-structure-ref
                        _%self141873149612%_
                        '1
                        '#f
                        'clear!))
                      (_%method149625149630%_
                       (##unchecked-structure-ref
                        _%self141873149612%_
                        '2
                        '#f
                        'clear!)))
                  (_%method149625149630%_ _%object149624149629%_)))
              (let ()
                (declare (not safe))
                (let ((_%object149631149636%_
                       (##unchecked-structure-ref
                        _%self141873149612%_
                        '1
                        '#f
                        'clear!))
                      (_%method149632149637%_
                       (##unchecked-structure-ref
                        _%self141873149612%_
                        '2
                        '#f
                        'clear!)))
                  (_%method149632149637%_ _%object149631149636%_)))))))
    (define hash-clear!
      (lambda (_%h148628%_)
        (let* ((_%h148634%_
                (let ((_%$obj148631%_ _%h148628%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148631%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148631%_)))
                           '#t)
                      _%$obj148631%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148631%_)))))
               (_%h148636%_ _%h148634%_))
          (__hash-clear! _%h148636%_))))
    (define __hash-merge
      (lambda (_%h149537%_ . _%rest149538%_)
        (let* ((_%h149541%_ _%h149537%_)
               (_%copy149589%_
                (let* ((_%self142165149550%_ _%h149541%_)
                       (_%self142165149557%_
                        (let ((_%$obj149554%_ _%self142165149550%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj149554%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj149554%_)))
                                   '#t)
                              _%$obj149554%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj149554%_)))))
                       (_%self142165149559%_ _%self142165149557%_))
                  (if __DEBUG
                      (let ((_%$obj149579%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object149571149576%_
                                      (##unchecked-structure-ref
                                       _%self142165149559%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method149572149577%_
                                      (##unchecked-structure-ref
                                       _%self142165149559%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method149572149577%_
                                  _%object149571149576%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj149579%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj149579%_)))
                                 '#t)
                            _%$obj149579%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj149579%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object149581149586%_
                               (##unchecked-structure-ref
                                _%self142165149559%_
                                '1
                                '#f
                                'copy))
                              (_%method149582149587%_
                               (##unchecked-structure-ref
                                _%self142165149559%_
                                '3
                                '#f
                                'copy)))
                          (_%method149582149587%_ _%object149581149586%_)))))))
          (apply hash-merge! _%copy149589%_ _%rest149538%_)
          _%copy149589%_)))
    (define hash-merge
      (lambda (_%h148766%_ . _%rest148767%_)
        (let* ((_%h148773%_
                (let ((_%$obj148770%_ _%h148766%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148770%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148770%_)))
                           '#t)
                      _%$obj148770%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148770%_)))))
               (_%h148775%_ _%h148773%_))
          (declare (not safe))
          (##apply __hash-merge _%h148775%_ _%rest148767%_))))
    (define __hash-merge-right
      (lambda (_%h149483%_ . _%rest149484%_)
        (let* ((_%h149487%_ _%h149483%_)
               (_%copy149535%_
                (let* ((_%self142165149496%_ _%h149487%_)
                       (_%self142165149503%_
                        (let ((_%$obj149500%_ _%self142165149496%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj149500%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj149500%_)))
                                   '#t)
                              _%$obj149500%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj149500%_)))))
                       (_%self142165149505%_ _%self142165149503%_))
                  (if __DEBUG
                      (let ((_%$obj149525%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object149517149522%_
                                      (##unchecked-structure-ref
                                       _%self142165149505%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method149518149523%_
                                      (##unchecked-structure-ref
                                       _%self142165149505%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method149518149523%_
                                  _%object149517149522%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj149525%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj149525%_)))
                                 '#t)
                            _%$obj149525%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj149525%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object149527149532%_
                               (##unchecked-structure-ref
                                _%self142165149505%_
                                '1
                                '#f
                                'copy))
                              (_%method149528149533%_
                               (##unchecked-structure-ref
                                _%self142165149505%_
                                '3
                                '#f
                                'copy)))
                          (_%method149528149533%_ _%object149527149532%_)))))))
          (apply hash-merge-right! _%copy149535%_ _%rest149484%_)
          _%copy149535%_)))
    (define hash-merge-right
      (lambda (_%h148905%_ . _%rest148906%_)
        (let* ((_%h148912%_
                (let ((_%$obj148909%_ _%h148905%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148909%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148909%_)))
                           '#t)
                      _%$obj148909%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148909%_)))))
               (_%h148914%_ _%h148912%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h148914%_ _%rest148906%_))))
    (define __hash-merge!
      (lambda (_%h149331%_ . _%rest149332%_)
        (let ((_%h149335%_ _%h149331%_))
          (let ((__tmp158347
                 (lambda (_%hr149344%_)
                   (let* ((_%hr149350%_
                           (let ((_%$obj149347%_ _%hr149344%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj149347%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj149347%_)))
                                      '#t)
                                 _%$obj149347%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj149347%_)))))
                          (_%hr149352%_ _%hr149350%_)
                          (_%self142752149365%_ _%hr149352%_)
                          (_%proc149440%_
                           (lambda (_%k149368%_ _%v149369%_)
                             (if (let* ((_%h149371%_ _%h149335%_)
                                        (_%k149374%_ _%k149368%_)
                                        (_%h149381%_
                                         (let ((_%$obj149378%_ _%h149371%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj149378%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj149378%_)))
                                                    '#t)
                                               _%$obj149378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj149378%_)))))
                                        (_%h149383%_ _%h149381%_))
                                   (__hash-key? _%h149383%_ _%k149374%_))
                                 '#!void
                                 (let* ((_%self143652149399%_ _%h149335%_)
                                        (_%key149402%_ _%k149368%_)
                                        (_%value149405%_ _%v149369%_)
                                        (_%self143652149412%_
                                         (let ((_%$obj149409%_
                                                _%self143652149399%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj149409%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj149409%_)))
                                                    '#t)
                                               _%$obj149409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj149409%_)))))
                                        (_%self143652149414%_
                                         _%self143652149412%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object149425149430%_
                                                (##unchecked-structure-ref
                                                 _%self143652149414%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method149426149431%_
                                                (##unchecked-structure-ref
                                                 _%self143652149414%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method149426149431%_
                                            _%object149425149430%_
                                            _%key149402%_
                                            _%value149405%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object149432149437%_
                                                (##unchecked-structure-ref
                                                 _%self143652149414%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method149433149438%_
                                                (##unchecked-structure-ref
                                                 _%self143652149414%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method149433149438%_
                                            _%object149432149437%_
                                            _%key149402%_
                                            _%value149405%_))))))))
                          (_%self142752149447%_
                           (let ((_%$obj149444%_ _%self142752149365%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj149444%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj149444%_)))
                                      '#t)
                                 _%$obj149444%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj149444%_)))))
                          (_%self142752149449%_ _%self142752149447%_)
                          (_%proc149459%_ _%proc149440%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object149468149473%_
                                  (##unchecked-structure-ref
                                   _%self142752149449%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method149469149474%_
                                  (##unchecked-structure-ref
                                   _%self142752149449%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method149469149474%_
                              _%object149468149473%_
                              _%proc149459%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object149475149480%_
                                  (##unchecked-structure-ref
                                   _%self142752149449%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method149476149481%_
                                  (##unchecked-structure-ref
                                   _%self142752149449%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method149476149481%_
                              _%object149475149480%_
                              _%proc149459%_))))))))
            (declare (not safe))
            (##for-each __tmp158347 _%rest149332%_))
          _%h149335%_)))
    (define hash-merge!
      (lambda (_%h149044%_ . _%rest149045%_)
        (let* ((_%h149051%_
                (let ((_%$obj149048%_ _%h149044%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149048%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149048%_)))
                           '#t)
                      _%$obj149048%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149048%_)))))
               (_%h149053%_ _%h149051%_))
          (declare (not safe))
          (##apply __hash-merge! _%h149053%_ _%rest149045%_))))
    (define __hash-merge-right!
      (lambda (_%h149202%_ . _%rest149203%_)
        (let ((_%h149206%_ _%h149202%_))
          (let ((__tmp158348
                 (lambda (_%hr149215%_)
                   (let* ((_%hr149221%_
                           (let ((_%$obj149218%_ _%hr149215%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj149218%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj149218%_)))
                                      '#t)
                                 _%$obj149218%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj149218%_)))))
                          (_%hr149223%_ _%hr149221%_)
                          (_%self142752149236%_ _%hr149223%_)
                          (_%proc149288%_
                           (lambda (_%k149239%_ _%v149240%_)
                             (let* ((_%self143652149242%_ _%h149206%_)
                                    (_%key149245%_ _%k149239%_)
                                    (_%value149248%_ _%v149240%_)
                                    (_%self143652149255%_
                                     (let ((_%$obj149252%_
                                            _%self143652149242%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj149252%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj149252%_)))
                                                '#t)
                                           _%$obj149252%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj149252%_)))))
                                    (_%self143652149257%_
                                     _%self143652149255%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object149273149278%_
                                            (##unchecked-structure-ref
                                             _%self143652149257%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method149274149279%_
                                            (##unchecked-structure-ref
                                             _%self143652149257%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method149274149279%_
                                        _%object149273149278%_
                                        _%key149245%_
                                        _%value149248%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object149280149285%_
                                            (##unchecked-structure-ref
                                             _%self143652149257%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method149281149286%_
                                            (##unchecked-structure-ref
                                             _%self143652149257%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method149281149286%_
                                        _%object149280149285%_
                                        _%key149245%_
                                        _%value149248%_)))))))
                          (_%self142752149295%_
                           (let ((_%$obj149292%_ _%self142752149236%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj149292%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj149292%_)))
                                      '#t)
                                 _%$obj149292%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj149292%_)))))
                          (_%self142752149297%_ _%self142752149295%_)
                          (_%proc149307%_ _%proc149288%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object149316149321%_
                                  (##unchecked-structure-ref
                                   _%self142752149297%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method149317149322%_
                                  (##unchecked-structure-ref
                                   _%self142752149297%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method149317149322%_
                              _%object149316149321%_
                              _%proc149307%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object149323149328%_
                                  (##unchecked-structure-ref
                                   _%self142752149297%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method149324149329%_
                                  (##unchecked-structure-ref
                                   _%self142752149297%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method149324149329%_
                              _%object149323149328%_
                              _%proc149307%_))))))))
            (declare (not safe))
            (##for-each __tmp158348 _%rest149203%_))
          _%h149206%_)))
    (define hash-merge-right!
      (lambda (_%h149183%_ . _%rest149184%_)
        (let* ((_%h149190%_
                (let ((_%$obj149187%_ _%h149183%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149187%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149187%_)))
                           '#t)
                      _%$obj149187%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149187%_)))))
               (_%h149192%_ _%h149190%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h149192%_ _%rest149184%_))))))
