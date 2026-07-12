(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1783878475)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp167209 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'UnboundKeyError::t
         'UnboundKeyError
         __tmp167209
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args165873%_
        (apply make-instance UnboundKeyError::t _%$args165873%_)))
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
      (lambda (_%where165747%_ _%message165748%_ . _%irritants165749%_)
        (let ((__tmp167210
               (let ((__obj167201
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj167201
                    _%message165748%_
                    'where:
                    _%where165747%_
                    'irritants:
                    _%irritants165749%_))
                 __obj167201)))
          (declare (not safe))
          (raise __tmp167210))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp167211 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'HashTable::t
         'HashTable
         __tmp167211
         '(clear! copy delete! for-each length new ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj167203
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj167203
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::new new)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj167203))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       HashTable::t
       'interface-descriptor:
       HashTable::interface))
    (define make-HashTable
      (lambda (_%obj165745%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj165745%_))))
    (define try-HashTable
      (lambda (_%obj165743%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj165743%_))))
    (define HashTable?
      (lambda (_%obj165741%_)
        (let ((__tmp167212
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj165741%_ __tmp167212))))
    (define is-HashTable?
      (lambda (_%obj165738%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj165738%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self149591165721%_)
        (let ((_%self149591165723%_ _%self149591165721%_))
          (declare (not safe))
          (let ((_%object165730165735%_
                 (##unchecked-structure-ref
                  _%self149591165723%_
                  '1
                  '#f
                  'clear!))
                (_%method165731165736%_
                 (##unchecked-structure-ref
                  _%self149591165723%_
                  '2
                  '#f
                  'clear!)))
            (_%method165731165736%_ _%object165730165735%_)))))
    (define ::HashTable-clear!
      (lambda (_%self149592165691%_)
        (let* ((_%self149592165696%_
                (let ((_%$obj165693%_ _%self149592165691%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165693%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165693%_)))
                           '#t)
                      _%$obj165693%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165693%_)))))
               (_%self149592165698%_ _%self149592165696%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object165706165711%_
                       (##unchecked-structure-ref
                        _%self149592165698%_
                        '1
                        '#f
                        'clear!))
                      (_%method165707165712%_
                       (##unchecked-structure-ref
                        _%self149592165698%_
                        '2
                        '#f
                        'clear!)))
                  (_%method165707165712%_ _%object165706165711%_)))
              (let ()
                (declare (not safe))
                (let ((_%object165713165718%_
                       (##unchecked-structure-ref
                        _%self149592165698%_
                        '1
                        '#f
                        'clear!))
                      (_%method165714165719%_
                       (##unchecked-structure-ref
                        _%self149592165698%_
                        '2
                        '#f
                        'clear!)))
                  (_%method165714165719%_ _%object165713165718%_)))))))
    (define __HashTable-copy
      (lambda (_%self149836165674%_)
        (let ((_%self149836165676%_ _%self149836165674%_))
          (declare (not safe))
          (let ((_%object165683165688%_
                 (##unchecked-structure-ref _%self149836165676%_ '1 '#f 'copy))
                (_%method165684165689%_
                 (##unchecked-structure-ref
                  _%self149836165676%_
                  '3
                  '#f
                  'copy)))
            (_%method165684165689%_ _%object165683165688%_)))))
    (define ::HashTable-copy
      (lambda (_%self149837165641%_)
        (let* ((_%self149837165646%_
                (let ((_%$obj165643%_ _%self149837165641%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165643%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165643%_)))
                           '#t)
                      _%$obj165643%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165643%_)))))
               (_%self149837165648%_ _%self149837165646%_))
          (if __DEBUG
              (let ((_%$obj165664%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object165656165661%_
                              (##unchecked-structure-ref
                               _%self149837165648%_
                               '1
                               '#f
                               'copy))
                             (_%method165657165662%_
                              (##unchecked-structure-ref
                               _%self149837165648%_
                               '3
                               '#f
                               'copy)))
                         (_%method165657165662%_ _%object165656165661%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj165664%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj165664%_)))
                         '#t)
                    _%$obj165664%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj165664%_))))
              (let ()
                (declare (not safe))
                (let ((_%object165666165671%_
                       (##unchecked-structure-ref
                        _%self149837165648%_
                        '1
                        '#f
                        'copy))
                      (_%method165667165672%_
                       (##unchecked-structure-ref
                        _%self149837165648%_
                        '3
                        '#f
                        'copy)))
                  (_%method165667165672%_ _%object165666165671%_)))))))
    (define __HashTable-delete!
      (lambda (_%self150080165623%_ _%key165624%_)
        (let ((_%self150080165626%_ _%self150080165623%_))
          (declare (not safe))
          (let ((_%object165633165638%_
                 (##unchecked-structure-ref
                  _%self150080165626%_
                  '1
                  '#f
                  'delete!))
                (_%method165634165639%_
                 (##unchecked-structure-ref
                  _%self150080165626%_
                  '4
                  '#f
                  'delete!)))
            (_%method165634165639%_ _%object165633165638%_ _%key165624%_)))))
    (define ::HashTable-delete!
      (lambda (_%self150081165592%_ _%key165593%_)
        (let* ((_%self150081165598%_
                (let ((_%$obj165595%_ _%self150081165592%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165595%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165595%_)))
                           '#t)
                      _%$obj165595%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165595%_)))))
               (_%self150081165600%_ _%self150081165598%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object165608165613%_
                       (##unchecked-structure-ref
                        _%self150081165600%_
                        '1
                        '#f
                        'delete!))
                      (_%method165609165614%_
                       (##unchecked-structure-ref
                        _%self150081165600%_
                        '4
                        '#f
                        'delete!)))
                  (_%method165609165614%_
                   _%object165608165613%_
                   _%key165593%_)))
              (let ()
                (declare (not safe))
                (let ((_%object165615165620%_
                       (##unchecked-structure-ref
                        _%self150081165600%_
                        '1
                        '#f
                        'delete!))
                      (_%method165616165621%_
                       (##unchecked-structure-ref
                        _%self150081165600%_
                        '4
                        '#f
                        'delete!)))
                  (_%method165616165621%_
                   _%object165615165620%_
                   _%key165593%_)))))))
    (define __HashTable-for-each
      (lambda (_%self150324165566%_ _%proc165567%_)
        (let* ((_%self150324165569%_ _%self150324165566%_)
               (_%proc165576%_ _%proc165567%_))
          (declare (not safe))
          (let ((_%object165584165589%_
                 (##unchecked-structure-ref
                  _%self150324165569%_
                  '1
                  '#f
                  'for-each))
                (_%method165585165590%_
                 (##unchecked-structure-ref
                  _%self150324165569%_
                  '5
                  '#f
                  'for-each)))
            (_%method165585165590%_ _%object165584165589%_ _%proc165576%_)))))
    (define ::HashTable-for-each
      (lambda (_%self150325165525%_ _%proc165526%_)
        (let* ((_%self150325165531%_
                (let ((_%$obj165528%_ _%self150325165525%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165528%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165528%_)))
                           '#t)
                      _%$obj165528%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165528%_)))))
               (_%self150325165533%_ _%self150325165531%_))
          (if (procedure? _%proc165526%_)
              (let ((_%proc165542%_ _%proc165526%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object165551165556%_
                             (##unchecked-structure-ref
                              _%self150325165533%_
                              '1
                              '#f
                              'for-each))
                            (_%method165552165557%_
                             (##unchecked-structure-ref
                              _%self150325165533%_
                              '5
                              '#f
                              'for-each)))
                        (_%method165552165557%_
                         _%object165551165556%_
                         _%proc165542%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object165558165563%_
                             (##unchecked-structure-ref
                              _%self150325165533%_
                              '1
                              '#f
                              'for-each))
                            (_%method165559165564%_
                             (##unchecked-structure-ref
                              _%self150325165533%_
                              '5
                              '#f
                              'for-each)))
                        (_%method165559165564%_
                         _%object165558165563%_
                         _%proc165542%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc165526%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self150568165508%_)
        (let ((_%self150568165510%_ _%self150568165508%_))
          (declare (not safe))
          (let ((_%object165517165522%_
                 (##unchecked-structure-ref
                  _%self150568165510%_
                  '1
                  '#f
                  'length))
                (_%method165518165523%_
                 (##unchecked-structure-ref
                  _%self150568165510%_
                  '6
                  '#f
                  'length)))
            (_%method165518165523%_ _%object165517165522%_)))))
    (define ::HashTable-length
      (lambda (_%self150569165475%_)
        (let* ((_%self150569165480%_
                (let ((_%$obj165477%_ _%self150569165475%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165477%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165477%_)))
                           '#t)
                      _%$obj165477%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165477%_)))))
               (_%self150569165482%_ _%self150569165480%_))
          (if __DEBUG
              (let ((_%val165498%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object165490165495%_
                              (##unchecked-structure-ref
                               _%self150569165482%_
                               '1
                               '#f
                               'length))
                             (_%method165491165496%_
                              (##unchecked-structure-ref
                               _%self150569165482%_
                               '6
                               '#f
                               'length)))
                         (_%method165491165496%_ _%object165490165495%_)))))
                (if (fixnum? _%val165498%_)
                    _%val165498%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val165498%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object165500165505%_
                       (##unchecked-structure-ref
                        _%self150569165482%_
                        '1
                        '#f
                        'length))
                      (_%method165501165506%_
                       (##unchecked-structure-ref
                        _%self150569165482%_
                        '6
                        '#f
                        'length)))
                  (_%method165501165506%_ _%object165500165505%_)))))))
    (define __HashTable-new__%
      (lambda (_%self150812165439%_ _%size-hint165440%_)
        (let* ((_%self150812165442%_ _%self150812165439%_)
               (_%size-hint165449%_ _%size-hint165440%_))
          (declare (not safe))
          (let ((_%object165457165462%_
                 (##unchecked-structure-ref _%self150812165442%_ '1 '#f 'new))
                (_%method165458165463%_
                 (##unchecked-structure-ref _%self150812165442%_ '7 '#f 'new)))
            (_%method165458165463%_
             _%object165457165462%_
             _%size-hint165449%_)))))
    (define __HashTable-new__0
      (lambda (_%self150812165468%_)
        (let ((_%size-hint165470%_ '#f))
          (__HashTable-new__% _%self150812165468%_ _%size-hint165470%_))))
    (define __HashTable-new
      (lambda _g167213_
        (let ((_g167214_ (let () (declare (not safe)) (##length _g167213_))))
          (cond ((let () (declare (not safe)) (##fx= _g167214_ 1))
                 (apply __HashTable-new__0 _g167213_))
                ((let () (declare (not safe)) (##fx= _g167214_ 2))
                 (apply __HashTable-new__% _g167213_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __HashTable-new
                  _g167213_))))))
    (define ::HashTable-new__%
      (lambda (_%self150813165378%_ _%size-hint165379%_)
        (let* ((_%self150813165384%_
                (let ((_%$obj165381%_ _%self150813165378%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165381%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165381%_)))
                           '#t)
                      _%$obj165381%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165381%_)))))
               (_%self150813165386%_ _%self150813165384%_))
          (if (or (not _%size-hint165379%_) (fixnum? _%size-hint165379%_))
              (let ((_%size-hint165401%_ _%size-hint165379%_))
                (if __DEBUG
                    (let ((_%$obj165418%_
                           (let ()
                             (declare (not safe))
                             (let ((_%object165410165415%_
                                    (##unchecked-structure-ref
                                     _%self150813165386%_
                                     '1
                                     '#f
                                     'new))
                                   (_%method165411165416%_
                                    (##unchecked-structure-ref
                                     _%self150813165386%_
                                     '7
                                     '#f
                                     'new)))
                               (_%method165411165416%_
                                _%object165410165415%_
                                _%size-hint165401%_)))))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj165418%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj165418%_)))
                               '#t)
                          _%$obj165418%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj165418%_))))
                    (let ()
                      (declare (not safe))
                      (let ((_%object165420165425%_
                             (##unchecked-structure-ref
                              _%self150813165386%_
                              '1
                              '#f
                              'new))
                            (_%method165421165426%_
                             (##unchecked-structure-ref
                              _%self150813165386%_
                              '7
                              '#f
                              'new)))
                        (_%method165421165426%_
                         _%object165420165425%_
                         _%size-hint165401%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@32.9-32.18"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint165379%_)
                '#!void)))))
    (define ::HashTable-new__0
      (lambda (_%self150813165431%_)
        (let ((_%size-hint165433%_ '#f))
          (::HashTable-new__% _%self150813165431%_ _%size-hint165433%_))))
    (define ::HashTable-new
      (lambda _g167215_
        (let ((_g167216_ (let () (declare (not safe)) (##length _g167215_))))
          (cond ((let () (declare (not safe)) (##fx= _g167216_ 1))
                 (apply ::HashTable-new__0 _g167215_))
                ((let () (declare (not safe)) (##fx= _g167216_ 2))
                 (apply ::HashTable-new__% _g167215_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ::HashTable-new
                  _g167215_))))))
    (define __HashTable-ref
      (lambda (_%self151056165358%_ _%key165359%_ _%default165360%_)
        (let ((_%self151056165362%_ _%self151056165358%_))
          (declare (not safe))
          (let ((_%object165369165374%_
                 (##unchecked-structure-ref _%self151056165362%_ '1 '#f 'ref))
                (_%method165370165375%_
                 (##unchecked-structure-ref _%self151056165362%_ '8 '#f 'ref)))
            (_%method165370165375%_
             _%object165369165374%_
             _%key165359%_
             _%default165360%_)))))
    (define ::HashTable-ref
      (lambda (_%self151057165326%_ _%key165327%_ _%default165328%_)
        (let* ((_%self151057165333%_
                (let ((_%$obj165330%_ _%self151057165326%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165330%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165330%_)))
                           '#t)
                      _%$obj165330%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165330%_)))))
               (_%self151057165335%_ _%self151057165333%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object165343165348%_
                       (##unchecked-structure-ref
                        _%self151057165335%_
                        '1
                        '#f
                        'ref))
                      (_%method165344165349%_
                       (##unchecked-structure-ref
                        _%self151057165335%_
                        '8
                        '#f
                        'ref)))
                  (_%method165344165349%_
                   _%object165343165348%_
                   _%key165327%_
                   _%default165328%_)))
              (let ()
                (declare (not safe))
                (let ((_%object165350165355%_
                       (##unchecked-structure-ref
                        _%self151057165335%_
                        '1
                        '#f
                        'ref))
                      (_%method165351165356%_
                       (##unchecked-structure-ref
                        _%self151057165335%_
                        '8
                        '#f
                        'ref)))
                  (_%method165351165356%_
                   _%object165350165355%_
                   _%key165327%_
                   _%default165328%_)))))))
    (define __HashTable-set!
      (lambda (_%self151300165307%_ _%key165308%_ _%value165309%_)
        (let ((_%self151300165311%_ _%self151300165307%_))
          (declare (not safe))
          (let ((_%object165318165323%_
                 (##unchecked-structure-ref _%self151300165311%_ '1 '#f 'set!))
                (_%method165319165324%_
                 (##unchecked-structure-ref
                  _%self151300165311%_
                  '9
                  '#f
                  'set!)))
            (_%method165319165324%_
             _%object165318165323%_
             _%key165308%_
             _%value165309%_)))))
    (define ::HashTable-set!
      (lambda (_%self151301165275%_ _%key165276%_ _%value165277%_)
        (let* ((_%self151301165282%_
                (let ((_%$obj165279%_ _%self151301165275%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165279%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165279%_)))
                           '#t)
                      _%$obj165279%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165279%_)))))
               (_%self151301165284%_ _%self151301165282%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object165292165297%_
                       (##unchecked-structure-ref
                        _%self151301165284%_
                        '1
                        '#f
                        'set!))
                      (_%method165293165298%_
                       (##unchecked-structure-ref
                        _%self151301165284%_
                        '9
                        '#f
                        'set!)))
                  (_%method165293165298%_
                   _%object165292165297%_
                   _%key165276%_
                   _%value165277%_)))
              (let ()
                (declare (not safe))
                (let ((_%object165299165304%_
                       (##unchecked-structure-ref
                        _%self151301165284%_
                        '1
                        '#f
                        'set!))
                      (_%method165300165305%_
                       (##unchecked-structure-ref
                        _%self151301165284%_
                        '9
                        '#f
                        'set!)))
                  (_%method165300165305%_
                   _%object165299165304%_
                   _%key165276%_
                   _%value165277%_)))))))
    (define __HashTable-update!
      (lambda (_%self151544165247%_
               _%key165248%_
               _%proc165249%_
               _%default165250%_)
        (let* ((_%self151544165252%_ _%self151544165247%_)
               (_%proc165259%_ _%proc165249%_))
          (declare (not safe))
          (let ((_%object165267165272%_
                 (##unchecked-structure-ref
                  _%self151544165252%_
                  '1
                  '#f
                  'update!))
                (_%method165268165273%_
                 (##unchecked-structure-ref
                  _%self151544165252%_
                  '10
                  '#f
                  'update!)))
            (_%method165268165273%_
             _%object165267165272%_
             _%key165248%_
             _%proc165259%_
             _%default165250%_)))))
    (define ::HashTable-update!
      (lambda (_%self151545165204%_
               _%key165205%_
               _%proc165206%_
               _%default165207%_)
        (let* ((_%self151545165212%_
                (let ((_%$obj165209%_ _%self151545165204%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165209%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165209%_)))
                           '#t)
                      _%$obj165209%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165209%_)))))
               (_%self151545165214%_ _%self151545165212%_))
          (if (procedure? _%proc165206%_)
              (let ((_%proc165223%_ _%proc165206%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object165232165237%_
                             (##unchecked-structure-ref
                              _%self151545165214%_
                              '1
                              '#f
                              'update!))
                            (_%method165233165238%_
                             (##unchecked-structure-ref
                              _%self151545165214%_
                              '10
                              '#f
                              'update!)))
                        (_%method165233165238%_
                         _%object165232165237%_
                         _%key165205%_
                         _%proc165223%_
                         _%default165207%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object165239165244%_
                             (##unchecked-structure-ref
                              _%self151545165214%_
                              '1
                              '#f
                              'update!))
                            (_%method165240165245%_
                             (##unchecked-structure-ref
                              _%self151545165214%_
                              '10
                              '#f
                              'update!)))
                        (_%method165240165245%_
                         _%object165239165244%_
                         _%key165205%_
                         _%proc165223%_
                         _%default165207%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc165206%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp167217 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'Locker::t
         'Locker
         __tmp167217
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj167205
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj167205
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj167205))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       Locker::t
       'interface-descriptor:
       Locker::interface))
    (define make-Locker
      (lambda (_%obj165202%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj165202%_))))
    (define try-Locker
      (lambda (_%obj165200%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj165200%_))))
    (define Locker?
      (lambda (_%obj165198%_)
        (let ((__tmp167218
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj165198%_ __tmp167218))))
    (define is-Locker?
      (lambda (_%obj165195%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj165195%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self151788165178%_)
        (let ((_%self151788165180%_ _%self151788165178%_))
          (declare (not safe))
          (let ((_%object165187165192%_
                 (##unchecked-structure-ref
                  _%self151788165180%_
                  '1
                  '#f
                  'read-lock!))
                (_%method165188165193%_
                 (##unchecked-structure-ref
                  _%self151788165180%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method165188165193%_ _%object165187165192%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self151789165148%_)
        (let* ((_%self151789165153%_
                (let ((_%$obj165150%_ _%self151789165148%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165150%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165150%_)))
                           '#t)
                      _%$obj165150%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj165150%_)))))
               (_%self151789165155%_ _%self151789165153%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object165163165168%_
                       (##unchecked-structure-ref
                        _%self151789165155%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method165164165169%_
                       (##unchecked-structure-ref
                        _%self151789165155%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method165164165169%_ _%object165163165168%_)))
              (let ()
                (declare (not safe))
                (let ((_%object165170165175%_
                       (##unchecked-structure-ref
                        _%self151789165155%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method165171165176%_
                       (##unchecked-structure-ref
                        _%self151789165155%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method165171165176%_ _%object165170165175%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self152032165131%_)
        (let ((_%self152032165133%_ _%self152032165131%_))
          (declare (not safe))
          (let ((_%object165140165145%_
                 (##unchecked-structure-ref
                  _%self152032165133%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method165141165146%_
                 (##unchecked-structure-ref
                  _%self152032165133%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method165141165146%_ _%object165140165145%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self152033165101%_)
        (let* ((_%self152033165106%_
                (let ((_%$obj165103%_ _%self152033165101%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165103%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165103%_)))
                           '#t)
                      _%$obj165103%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj165103%_)))))
               (_%self152033165108%_ _%self152033165106%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object165116165121%_
                       (##unchecked-structure-ref
                        _%self152033165108%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method165117165122%_
                       (##unchecked-structure-ref
                        _%self152033165108%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method165117165122%_ _%object165116165121%_)))
              (let ()
                (declare (not safe))
                (let ((_%object165123165128%_
                       (##unchecked-structure-ref
                        _%self152033165108%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method165124165129%_
                       (##unchecked-structure-ref
                        _%self152033165108%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method165124165129%_ _%object165123165128%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self152276165084%_)
        (let ((_%self152276165086%_ _%self152276165084%_))
          (declare (not safe))
          (let ((_%object165093165098%_
                 (##unchecked-structure-ref
                  _%self152276165086%_
                  '1
                  '#f
                  'write-lock!))
                (_%method165094165099%_
                 (##unchecked-structure-ref
                  _%self152276165086%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method165094165099%_ _%object165093165098%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self152277165054%_)
        (let* ((_%self152277165059%_
                (let ((_%$obj165056%_ _%self152277165054%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165056%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165056%_)))
                           '#t)
                      _%$obj165056%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj165056%_)))))
               (_%self152277165061%_ _%self152277165059%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object165069165074%_
                       (##unchecked-structure-ref
                        _%self152277165061%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method165070165075%_
                       (##unchecked-structure-ref
                        _%self152277165061%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method165070165075%_ _%object165069165074%_)))
              (let ()
                (declare (not safe))
                (let ((_%object165076165081%_
                       (##unchecked-structure-ref
                        _%self152277165061%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method165077165082%_
                       (##unchecked-structure-ref
                        _%self152277165061%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method165077165082%_ _%object165076165081%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self152520165037%_)
        (let ((_%self152520165039%_ _%self152520165037%_))
          (declare (not safe))
          (let ((_%object165046165051%_
                 (##unchecked-structure-ref
                  _%self152520165039%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method165047165052%_
                 (##unchecked-structure-ref
                  _%self152520165039%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method165047165052%_ _%object165046165051%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self152521165007%_)
        (let* ((_%self152521165012%_
                (let ((_%$obj165009%_ _%self152521165007%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165009%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165009%_)))
                           '#t)
                      _%$obj165009%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj165009%_)))))
               (_%self152521165014%_ _%self152521165012%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object165022165027%_
                       (##unchecked-structure-ref
                        _%self152521165014%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method165023165028%_
                       (##unchecked-structure-ref
                        _%self152521165014%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method165023165028%_ _%object165022165027%_)))
              (let ()
                (declare (not safe))
                (let ((_%object165029165034%_
                       (##unchecked-structure-ref
                        _%self152521165014%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method165030165035%_
                       (##unchecked-structure-ref
                        _%self152521165014%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method165030165035%_ _%object165029165034%_)))))))
    (let* ((_%klass164970%_ __table::t)
           (_%id164973%_ 'HashTable::ref)
           (_%proc164976%_ raw-table-ref)
           (_%rebind?164979%_ '#f)
           (_%id164984%_ _%id164973%_)
           (_%proc164997%_ _%proc164976%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164970%_
       _%id164984%_
       _%proc164997%_
       _%rebind?164979%_))
    (let* ((_%klass164933%_ __table::t)
           (_%id164936%_ 'HashTable::set!)
           (_%proc164939%_ raw-table-set!)
           (_%rebind?164942%_ '#f)
           (_%id164947%_ _%id164936%_)
           (_%proc164960%_ _%proc164939%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164933%_
       _%id164947%_
       _%proc164960%_
       _%rebind?164942%_))
    (let* ((_%klass164896%_ __table::t)
           (_%id164899%_ 'HashTable::update!)
           (_%proc164902%_ raw-table-update!)
           (_%rebind?164905%_ '#f)
           (_%id164910%_ _%id164899%_)
           (_%proc164923%_ _%proc164902%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164896%_
       _%id164910%_
       _%proc164923%_
       _%rebind?164905%_))
    (let* ((_%klass164859%_ __table::t)
           (_%id164862%_ 'HashTable::delete!)
           (_%proc164865%_ raw-table-delete!)
           (_%rebind?164868%_ '#f)
           (_%id164873%_ _%id164862%_)
           (_%proc164886%_ _%proc164865%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164859%_
       _%id164873%_
       _%proc164886%_
       _%rebind?164868%_))
    (let* ((_%klass164822%_ __table::t)
           (_%id164825%_ 'HashTable::for-each)
           (_%proc164828%_ raw-table-for-each)
           (_%rebind?164831%_ '#f)
           (_%id164836%_ _%id164825%_)
           (_%proc164849%_ _%proc164828%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164822%_
       _%id164836%_
       _%proc164849%_
       _%rebind?164831%_))
    (let* ((_%klass164785%_ __table::t)
           (_%id164788%_ 'HashTable::length)
           (_%proc164791%_ &raw-table-count)
           (_%rebind?164794%_ '#f)
           (_%id164799%_ _%id164788%_)
           (_%proc164812%_ _%proc164791%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164785%_
       _%id164799%_
       _%proc164812%_
       _%rebind?164794%_))
    (let* ((_%klass164748%_ __table::t)
           (_%id164751%_ 'HashTable::copy)
           (_%proc164754%_ raw-table-copy)
           (_%rebind?164757%_ '#f)
           (_%id164762%_ _%id164751%_)
           (_%proc164775%_ _%proc164754%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164748%_
       _%id164762%_
       _%proc164775%_
       _%rebind?164757%_))
    (let* ((_%klass164711%_ __table::t)
           (_%id164714%_ 'HashTable::new)
           (_%proc164717%_ raw-table-new)
           (_%rebind?164720%_ '#f)
           (_%id164725%_ _%id164714%_)
           (_%proc164738%_ _%proc164717%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164711%_
       _%id164725%_
       _%proc164738%_
       _%rebind?164720%_))
    (let* ((_%klass164674%_ __table::t)
           (_%id164677%_ 'HashTable::clear!)
           (_%proc164680%_ raw-table-clear!)
           (_%rebind?164683%_ '#f)
           (_%id164688%_ _%id164677%_)
           (_%proc164701%_ _%proc164680%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164674%_
       _%id164688%_
       _%proc164701%_
       _%rebind?164683%_))
    (let* ((_%klass164637%_ __gc-table::t)
           (_%id164640%_ 'HashTable::ref)
           (_%proc164643%_ gc-table-ref)
           (_%rebind?164646%_ '#f)
           (_%id164651%_ _%id164640%_)
           (_%proc164664%_ _%proc164643%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164637%_
       _%id164651%_
       _%proc164664%_
       _%rebind?164646%_))
    (let* ((_%klass164600%_ __gc-table::t)
           (_%id164603%_ 'HashTable::set!)
           (_%proc164606%_ gc-table-set!)
           (_%rebind?164609%_ '#f)
           (_%id164614%_ _%id164603%_)
           (_%proc164627%_ _%proc164606%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164600%_
       _%id164614%_
       _%proc164627%_
       _%rebind?164609%_))
    (let* ((_%klass164563%_ __gc-table::t)
           (_%id164566%_ 'HashTable::update!)
           (_%proc164569%_ gc-table-update!)
           (_%rebind?164572%_ '#f)
           (_%id164577%_ _%id164566%_)
           (_%proc164590%_ _%proc164569%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164563%_
       _%id164577%_
       _%proc164590%_
       _%rebind?164572%_))
    (let* ((_%klass164526%_ __gc-table::t)
           (_%id164529%_ 'HashTable::delete!)
           (_%proc164532%_ gc-table-delete!)
           (_%rebind?164535%_ '#f)
           (_%id164540%_ _%id164529%_)
           (_%proc164553%_ _%proc164532%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164526%_
       _%id164540%_
       _%proc164553%_
       _%rebind?164535%_))
    (let* ((_%klass164489%_ __gc-table::t)
           (_%id164492%_ 'HashTable::for-each)
           (_%proc164495%_ gc-table-for-each)
           (_%rebind?164498%_ '#f)
           (_%id164503%_ _%id164492%_)
           (_%proc164516%_ _%proc164495%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164489%_
       _%id164503%_
       _%proc164516%_
       _%rebind?164498%_))
    (let* ((_%klass164452%_ __gc-table::t)
           (_%id164455%_ 'HashTable::length)
           (_%proc164458%_ gc-table-length)
           (_%rebind?164461%_ '#f)
           (_%id164466%_ _%id164455%_)
           (_%proc164479%_ _%proc164458%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164452%_
       _%id164466%_
       _%proc164479%_
       _%rebind?164461%_))
    (let* ((_%klass164415%_ __gc-table::t)
           (_%id164418%_ 'HashTable::copy)
           (_%proc164421%_ gc-table-copy)
           (_%rebind?164424%_ '#f)
           (_%id164429%_ _%id164418%_)
           (_%proc164442%_ _%proc164421%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164415%_
       _%id164429%_
       _%proc164442%_
       _%rebind?164424%_))
    (let* ((_%klass164378%_ __gc-table::t)
           (_%id164381%_ 'HashTable::new)
           (_%proc164384%_ gc-table-new)
           (_%rebind?164387%_ '#f)
           (_%id164392%_ _%id164381%_)
           (_%proc164405%_ _%proc164384%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164378%_
       _%id164392%_
       _%proc164405%_
       _%rebind?164387%_))
    (let* ((_%klass164341%_ __gc-table::t)
           (_%id164344%_ 'HashTable::clear!)
           (_%proc164347%_ gc-table-clear!)
           (_%rebind?164350%_ '#f)
           (_%id164355%_ _%id164344%_)
           (_%proc164368%_ _%proc164347%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164341%_
       _%id164355%_
       _%proc164368%_
       _%rebind?164350%_))
    (define gambit-table-update!
      (lambda (_%table164334%_
               _%key164335%_
               _%update164336%_
               _%default164337%_)
        (let ((_%result164339%_
               (table-ref _%table164334%_ _%key164335%_ _%default164337%_)))
          (table-set!
           _%table164334%_
           _%key164335%_
           (_%update164336%_ _%result164339%_)))))
    (define gambit-table-for-each
      (lambda (_%table164331%_ _%proc164332%_)
        (table-for-each _%proc164332%_ _%table164331%_)))
    (define gambit-table-clear!
      (lambda (_%table164329%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table164329%_ '0 '5 '#f '#f))))
    (let* ((_%klass164292%_ (macro-type-table))
           (_%id164295%_ 'HashTable::ref)
           (_%proc164298%_ table-ref)
           (_%rebind?164301%_ '#f)
           (_%id164306%_ _%id164295%_)
           (_%proc164319%_ _%proc164298%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164292%_
       _%id164306%_
       _%proc164319%_
       _%rebind?164301%_))
    (let* ((_%klass164255%_ (macro-type-table))
           (_%id164258%_ 'HashTable::set!)
           (_%proc164261%_ table-set!)
           (_%rebind?164264%_ '#f)
           (_%id164269%_ _%id164258%_)
           (_%proc164282%_ _%proc164261%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164255%_
       _%id164269%_
       _%proc164282%_
       _%rebind?164264%_))
    (let* ((_%klass164218%_ (macro-type-table))
           (_%id164221%_ 'HashTable::update!)
           (_%proc164224%_ gambit-table-update!)
           (_%rebind?164227%_ '#f)
           (_%id164232%_ _%id164221%_)
           (_%proc164245%_ _%proc164224%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164218%_
       _%id164232%_
       _%proc164245%_
       _%rebind?164227%_))
    (let* ((_%klass164181%_ (macro-type-table))
           (_%id164184%_ 'HashTable::delete!)
           (_%proc164187%_ table-set!)
           (_%rebind?164190%_ '#f)
           (_%id164195%_ _%id164184%_)
           (_%proc164208%_ _%proc164187%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164181%_
       _%id164195%_
       _%proc164208%_
       _%rebind?164190%_))
    (let* ((_%klass164144%_ (macro-type-table))
           (_%id164147%_ 'HashTable::for-each)
           (_%proc164150%_ gambit-table-for-each)
           (_%rebind?164153%_ '#f)
           (_%id164158%_ _%id164147%_)
           (_%proc164171%_ _%proc164150%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164144%_
       _%id164158%_
       _%proc164171%_
       _%rebind?164153%_))
    (let* ((_%klass164107%_ (macro-type-table))
           (_%id164110%_ 'HashTable::length)
           (_%proc164113%_ table-length)
           (_%rebind?164116%_ '#f)
           (_%id164121%_ _%id164110%_)
           (_%proc164134%_ _%proc164113%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164107%_
       _%id164121%_
       _%proc164134%_
       _%rebind?164116%_))
    (let* ((_%klass164070%_ (macro-type-table))
           (_%id164073%_ 'HashTable::copy)
           (_%proc164076%_ table-copy)
           (_%rebind?164079%_ '#f)
           (_%id164084%_ _%id164073%_)
           (_%proc164097%_ _%proc164076%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164070%_
       _%id164084%_
       _%proc164097%_
       _%rebind?164079%_))
    (let* ((_%klass164033%_ (macro-type-table))
           (_%id164036%_ 'HashTable::new)
           (_%proc164039%_ table-new)
           (_%rebind?164042%_ '#f)
           (_%id164047%_ _%id164036%_)
           (_%proc164060%_ _%proc164039%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164033%_
       _%id164047%_
       _%proc164060%_
       _%rebind?164042%_))
    (let* ((_%klass163996%_ (macro-type-table))
           (_%id163999%_ 'HashTable::clear!)
           (_%proc164002%_ gambit-table-clear!)
           (_%rebind?164005%_ '#f)
           (_%id164010%_ _%id163999%_)
           (_%proc164023%_ _%proc164002%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163996%_
       _%id164010%_
       _%proc164023%_
       _%rebind?164005%_))
    (define hash-table::t
      (let* ((_%slots163959%_ '(table count free hash test seed lock))
             (_%slot-vector163961%_ (list->vector (cons '#f _%slots163959%_)))
             (_%slot-table163987%_
              (let ((_%slot-table163963%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp167221
                       (lambda (_%slot163965%_ _%field163966%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table163963%_
                            _%slot163965%_
                            _%field163966%_))
                         (let ((__tmp167222
                                (let ((_%sym163968%_ _%slot163965%_))
                                  (if (symbol? _%sym163968%_)
                                      (let ((_%sym163973%_ _%sym163968%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym163973%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym163968%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table163963%_
                            __tmp167222
                            _%field163966%_))))
                      (__tmp167219
                       (let ((__tmp167220
                              (let ()
                                (declare (not safe))
                                (##length _%slots163959%_))))
                         (declare (not safe))
                         (##iota __tmp167220 '1))))
                  (declare (not safe))
                  (##for-each __tmp167221 _%slots163959%_ __tmp167219))
                _%slot-table163963%_))
             (_%flags163989%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields163991%_ '#())
             (_%properties163993%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots163959%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp167223 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'hash-table::t
         'hash-table
         _%flags163989%_
         __table::t
         _%fields163991%_
         __tmp167223
         _%slot-vector163961%_
         _%slot-table163987%_
         _%properties163993%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots163922%_ '(gcht immediate))
             (_%slot-vector163924%_ (list->vector (cons '#f _%slots163922%_)))
             (_%slot-table163950%_
              (let ((_%slot-table163926%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp167226
                       (lambda (_%slot163928%_ _%field163929%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table163926%_
                            _%slot163928%_
                            _%field163929%_))
                         (let ((__tmp167227
                                (let ((_%sym163931%_ _%slot163928%_))
                                  (if (symbol? _%sym163931%_)
                                      (let ((_%sym163936%_ _%sym163931%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym163936%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym163931%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table163926%_
                            __tmp167227
                            _%field163929%_))))
                      (__tmp167224
                       (let ((__tmp167225
                              (let ()
                                (declare (not safe))
                                (##length _%slots163922%_))))
                         (declare (not safe))
                         (##iota __tmp167225 '1))))
                  (declare (not safe))
                  (##for-each __tmp167226 _%slots163922%_ __tmp167224))
                _%slot-table163926%_))
             (_%flags163952%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields163954%_ '#())
             (_%properties163956%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots163922%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp167228 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gc-hash-table::t
         'gc-hash-table
         _%flags163952%_
         __gc-table::t
         _%fields163954%_
         __tmp167228
         _%slot-vector163924%_
         _%slot-table163950%_
         _%properties163956%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp167230 (list))
            (__tmp167229
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'locked-hash-table::t
         'locked-hash-table
         __tmp167230
         '(table lock)
         __tmp167229
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args163919%_
        (apply make-instance locked-hash-table::t _%$args163919%_)))
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
      (let ((__tmp167232 (list))
            (__tmp167231
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'checked-hash-table::t
         'checked-hash-table
         __tmp167232
         '(table key-check)
         __tmp167231
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args163916%_
        (apply make-instance checked-hash-table::t _%$args163916%_)))
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
      (let ((__tmp167234 (list hash-table::t))
            (__tmp167233 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eq-hash-table::t::t
         'eq-hash-table
         __tmp167234
         '()
         __tmp167233
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args163913%_
        (apply make-instance eq-hash-table::t _%$args163913%_)))
    (define eqv-hash-table::t
      (let ((__tmp167236 (list hash-table::t))
            (__tmp167235 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eqv-hash-table::t::t
         'eqv-hash-table
         __tmp167236
         '()
         __tmp167235
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args163910%_
        (apply make-instance eqv-hash-table::t _%$args163910%_)))
    (define symbol-hash-table::t
      (let ((__tmp167238 (list hash-table::t))
            (__tmp167237 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'symbol-hash-table::t::t
         'symbol-hash-table
         __tmp167238
         '()
         __tmp167237
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args163907%_
        (apply make-instance symbol-hash-table::t _%$args163907%_)))
    (define string-hash-table::t
      (let ((__tmp167240 (list hash-table::t))
            (__tmp167239 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'string-hash-table::t::t
         'string-hash-table
         __tmp167240
         '()
         __tmp167239
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args163904%_
        (apply make-instance string-hash-table::t _%$args163904%_)))
    (define immediate-hash-table::t
      (let ((__tmp167242 (list hash-table::t))
            (__tmp167241 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'immediate-hash-table::t::t
         'immediate-hash-table
         __tmp167242
         '()
         __tmp167241
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args163901%_
        (apply make-instance immediate-hash-table::t _%$args163901%_)))
    (let* ((_%klass163864%_ hash-table::t)
           (_%id163867%_ 'HashTable::ref)
           (_%proc163870%_ raw-table-ref)
           (_%rebind?163873%_ '#f)
           (_%id163878%_ _%id163867%_)
           (_%proc163891%_ _%proc163870%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163864%_
       _%id163878%_
       _%proc163891%_
       _%rebind?163873%_))
    (let* ((_%klass163827%_ hash-table::t)
           (_%id163830%_ 'HashTable::set!)
           (_%proc163833%_ raw-table-set!)
           (_%rebind?163836%_ '#f)
           (_%id163841%_ _%id163830%_)
           (_%proc163854%_ _%proc163833%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163827%_
       _%id163841%_
       _%proc163854%_
       _%rebind?163836%_))
    (let* ((_%klass163790%_ hash-table::t)
           (_%id163793%_ 'HashTable::update!)
           (_%proc163796%_ raw-table-update!)
           (_%rebind?163799%_ '#f)
           (_%id163804%_ _%id163793%_)
           (_%proc163817%_ _%proc163796%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163790%_
       _%id163804%_
       _%proc163817%_
       _%rebind?163799%_))
    (let* ((_%klass163753%_ hash-table::t)
           (_%id163756%_ 'HashTable::delete!)
           (_%proc163759%_ raw-table-delete!)
           (_%rebind?163762%_ '#f)
           (_%id163767%_ _%id163756%_)
           (_%proc163780%_ _%proc163759%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163753%_
       _%id163767%_
       _%proc163780%_
       _%rebind?163762%_))
    (let* ((_%klass163716%_ hash-table::t)
           (_%id163719%_ 'HashTable::for-each)
           (_%proc163722%_ raw-table-for-each)
           (_%rebind?163725%_ '#f)
           (_%id163730%_ _%id163719%_)
           (_%proc163743%_ _%proc163722%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163716%_
       _%id163730%_
       _%proc163743%_
       _%rebind?163725%_))
    (let* ((_%klass163679%_ hash-table::t)
           (_%id163682%_ 'HashTable::length)
           (_%proc163685%_ &raw-table-count)
           (_%rebind?163688%_ '#f)
           (_%id163693%_ _%id163682%_)
           (_%proc163706%_ _%proc163685%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163679%_
       _%id163693%_
       _%proc163706%_
       _%rebind?163688%_))
    (let* ((_%klass163642%_ hash-table::t)
           (_%id163645%_ 'HashTable::copy)
           (_%proc163648%_ raw-table-copy)
           (_%rebind?163651%_ '#f)
           (_%id163656%_ _%id163645%_)
           (_%proc163669%_ _%proc163648%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163642%_
       _%id163656%_
       _%proc163669%_
       _%rebind?163651%_))
    (let* ((_%klass163605%_ hash-table::t)
           (_%id163608%_ 'HashTable::new)
           (_%proc163611%_ raw-table-new)
           (_%rebind?163614%_ '#f)
           (_%id163619%_ _%id163608%_)
           (_%proc163632%_ _%proc163611%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163605%_
       _%id163619%_
       _%proc163632%_
       _%rebind?163614%_))
    (let* ((_%klass163568%_ hash-table::t)
           (_%id163571%_ 'HashTable::clear!)
           (_%proc163574%_ raw-table-clear!)
           (_%rebind?163577%_ '#f)
           (_%id163582%_ _%id163571%_)
           (_%proc163595%_ _%proc163574%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163568%_
       _%id163582%_
       _%proc163595%_
       _%rebind?163577%_))
    (let* ((_%klass163531%_ eq-hash-table::t)
           (_%id163534%_ 'HashTable::ref)
           (_%proc163537%_ eq-table-ref)
           (_%rebind?163540%_ '#f)
           (_%id163545%_ _%id163534%_)
           (_%proc163558%_ _%proc163537%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163531%_
       _%id163545%_
       _%proc163558%_
       _%rebind?163540%_))
    (let* ((_%klass163494%_ eq-hash-table::t)
           (_%id163497%_ 'HashTable::set!)
           (_%proc163500%_ eq-table-set!)
           (_%rebind?163503%_ '#f)
           (_%id163508%_ _%id163497%_)
           (_%proc163521%_ _%proc163500%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163494%_
       _%id163508%_
       _%proc163521%_
       _%rebind?163503%_))
    (let* ((_%klass163457%_ eq-hash-table::t)
           (_%id163460%_ 'HashTable::update!)
           (_%proc163463%_ eq-table-update!)
           (_%rebind?163466%_ '#f)
           (_%id163471%_ _%id163460%_)
           (_%proc163484%_ _%proc163463%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163457%_
       _%id163471%_
       _%proc163484%_
       _%rebind?163466%_))
    (let* ((_%klass163420%_ eq-hash-table::t)
           (_%id163423%_ 'HashTable::delete!)
           (_%proc163426%_ eq-table-delete!)
           (_%rebind?163429%_ '#f)
           (_%id163434%_ _%id163423%_)
           (_%proc163447%_ _%proc163426%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163420%_
       _%id163434%_
       _%proc163447%_
       _%rebind?163429%_))
    (let* ((_%klass163383%_ eqv-hash-table::t)
           (_%id163386%_ 'HashTable::ref)
           (_%proc163389%_ eqv-table-ref)
           (_%rebind?163392%_ '#f)
           (_%id163397%_ _%id163386%_)
           (_%proc163410%_ _%proc163389%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163383%_
       _%id163397%_
       _%proc163410%_
       _%rebind?163392%_))
    (let* ((_%klass163346%_ eqv-hash-table::t)
           (_%id163349%_ 'HashTable::set!)
           (_%proc163352%_ eqv-table-set!)
           (_%rebind?163355%_ '#f)
           (_%id163360%_ _%id163349%_)
           (_%proc163373%_ _%proc163352%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163346%_
       _%id163360%_
       _%proc163373%_
       _%rebind?163355%_))
    (let* ((_%klass163309%_ eqv-hash-table::t)
           (_%id163312%_ 'HashTable::update!)
           (_%proc163315%_ eqv-table-update!)
           (_%rebind?163318%_ '#f)
           (_%id163323%_ _%id163312%_)
           (_%proc163336%_ _%proc163315%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163309%_
       _%id163323%_
       _%proc163336%_
       _%rebind?163318%_))
    (let* ((_%klass163272%_ eqv-hash-table::t)
           (_%id163275%_ 'HashTable::delete!)
           (_%proc163278%_ eqv-table-delete!)
           (_%rebind?163281%_ '#f)
           (_%id163286%_ _%id163275%_)
           (_%proc163299%_ _%proc163278%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163272%_
       _%id163286%_
       _%proc163299%_
       _%rebind?163281%_))
    (let* ((_%klass163235%_ symbol-hash-table::t)
           (_%id163238%_ 'HashTable::ref)
           (_%proc163241%_ symbolic-table-ref)
           (_%rebind?163244%_ '#f)
           (_%id163249%_ _%id163238%_)
           (_%proc163262%_ _%proc163241%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163235%_
       _%id163249%_
       _%proc163262%_
       _%rebind?163244%_))
    (let* ((_%klass163198%_ symbol-hash-table::t)
           (_%id163201%_ 'HashTable::set!)
           (_%proc163204%_ symbolic-table-set!)
           (_%rebind?163207%_ '#f)
           (_%id163212%_ _%id163201%_)
           (_%proc163225%_ _%proc163204%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163198%_
       _%id163212%_
       _%proc163225%_
       _%rebind?163207%_))
    (let* ((_%klass163161%_ symbol-hash-table::t)
           (_%id163164%_ 'HashTable::update!)
           (_%proc163167%_ symbolic-table-update!)
           (_%rebind?163170%_ '#f)
           (_%id163175%_ _%id163164%_)
           (_%proc163188%_ _%proc163167%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163161%_
       _%id163175%_
       _%proc163188%_
       _%rebind?163170%_))
    (let* ((_%klass163124%_ symbol-hash-table::t)
           (_%id163127%_ 'HashTable::delete!)
           (_%proc163130%_ symbolic-table-delete!)
           (_%rebind?163133%_ '#f)
           (_%id163138%_ _%id163127%_)
           (_%proc163151%_ _%proc163130%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163124%_
       _%id163138%_
       _%proc163151%_
       _%rebind?163133%_))
    (let* ((_%klass163087%_ string-hash-table::t)
           (_%id163090%_ 'HashTable::ref)
           (_%proc163093%_ string-table-ref)
           (_%rebind?163096%_ '#f)
           (_%id163101%_ _%id163090%_)
           (_%proc163114%_ _%proc163093%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163087%_
       _%id163101%_
       _%proc163114%_
       _%rebind?163096%_))
    (let* ((_%klass163050%_ string-hash-table::t)
           (_%id163053%_ 'HashTable::set!)
           (_%proc163056%_ string-table-set!)
           (_%rebind?163059%_ '#f)
           (_%id163064%_ _%id163053%_)
           (_%proc163077%_ _%proc163056%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163050%_
       _%id163064%_
       _%proc163077%_
       _%rebind?163059%_))
    (let* ((_%klass163013%_ string-hash-table::t)
           (_%id163016%_ 'HashTable::update!)
           (_%proc163019%_ string-table-update!)
           (_%rebind?163022%_ '#f)
           (_%id163027%_ _%id163016%_)
           (_%proc163040%_ _%proc163019%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163013%_
       _%id163027%_
       _%proc163040%_
       _%rebind?163022%_))
    (let* ((_%klass162976%_ string-hash-table::t)
           (_%id162979%_ 'HashTable::delete!)
           (_%proc162982%_ string-table-delete!)
           (_%rebind?162985%_ '#f)
           (_%id162990%_ _%id162979%_)
           (_%proc163003%_ _%proc162982%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162976%_
       _%id162990%_
       _%proc163003%_
       _%rebind?162985%_))
    (let* ((_%klass162939%_ immediate-hash-table::t)
           (_%id162942%_ 'HashTable::ref)
           (_%proc162945%_ immediate-table-ref)
           (_%rebind?162948%_ '#f)
           (_%id162953%_ _%id162942%_)
           (_%proc162966%_ _%proc162945%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162939%_
       _%id162953%_
       _%proc162966%_
       _%rebind?162948%_))
    (let* ((_%klass162902%_ immediate-hash-table::t)
           (_%id162905%_ 'HashTable::set!)
           (_%proc162908%_ immediate-table-set!)
           (_%rebind?162911%_ '#f)
           (_%id162916%_ _%id162905%_)
           (_%proc162929%_ _%proc162908%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162902%_
       _%id162916%_
       _%proc162929%_
       _%rebind?162911%_))
    (let* ((_%klass162865%_ immediate-hash-table::t)
           (_%id162868%_ 'HashTable::update!)
           (_%proc162871%_ immediate-table-update!)
           (_%rebind?162874%_ '#f)
           (_%id162879%_ _%id162868%_)
           (_%proc162892%_ _%proc162871%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162865%_
       _%id162879%_
       _%proc162892%_
       _%rebind?162874%_))
    (let* ((_%klass162828%_ immediate-hash-table::t)
           (_%id162831%_ 'HashTable::delete!)
           (_%proc162834%_ immediate-table-delete!)
           (_%rebind?162837%_ '#f)
           (_%id162842%_ _%id162831%_)
           (_%proc162855%_ _%proc162834%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162828%_
       _%id162842%_
       _%proc162855%_
       _%rebind?162837%_))
    (let* ((_%klass162791%_ gc-hash-table::t)
           (_%id162794%_ 'HashTable::ref)
           (_%proc162797%_ gc-table-ref)
           (_%rebind?162800%_ '#f)
           (_%id162805%_ _%id162794%_)
           (_%proc162818%_ _%proc162797%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162791%_
       _%id162805%_
       _%proc162818%_
       _%rebind?162800%_))
    (let* ((_%klass162754%_ gc-hash-table::t)
           (_%id162757%_ 'HashTable::set!)
           (_%proc162760%_ gc-table-set!)
           (_%rebind?162763%_ '#f)
           (_%id162768%_ _%id162757%_)
           (_%proc162781%_ _%proc162760%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162754%_
       _%id162768%_
       _%proc162781%_
       _%rebind?162763%_))
    (let* ((_%klass162717%_ gc-hash-table::t)
           (_%id162720%_ 'HashTable::update!)
           (_%proc162723%_ gc-table-update!)
           (_%rebind?162726%_ '#f)
           (_%id162731%_ _%id162720%_)
           (_%proc162744%_ _%proc162723%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162717%_
       _%id162731%_
       _%proc162744%_
       _%rebind?162726%_))
    (let* ((_%klass162680%_ gc-hash-table::t)
           (_%id162683%_ 'HashTable::delete!)
           (_%proc162686%_ gc-table-delete!)
           (_%rebind?162689%_ '#f)
           (_%id162694%_ _%id162683%_)
           (_%proc162707%_ _%proc162686%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162680%_
       _%id162694%_
       _%proc162707%_
       _%rebind?162689%_))
    (let* ((_%klass162643%_ gc-hash-table::t)
           (_%id162646%_ 'HashTable::for-each)
           (_%proc162649%_ gc-table-for-each)
           (_%rebind?162652%_ '#f)
           (_%id162657%_ _%id162646%_)
           (_%proc162670%_ _%proc162649%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162643%_
       _%id162657%_
       _%proc162670%_
       _%rebind?162652%_))
    (let* ((_%klass162606%_ gc-hash-table::t)
           (_%id162609%_ 'HashTable::length)
           (_%proc162612%_ gc-table-length)
           (_%rebind?162615%_ '#f)
           (_%id162620%_ _%id162609%_)
           (_%proc162633%_ _%proc162612%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162606%_
       _%id162620%_
       _%proc162633%_
       _%rebind?162615%_))
    (let* ((_%klass162569%_ gc-hash-table::t)
           (_%id162572%_ 'HashTable::copy)
           (_%proc162575%_ gc-table-copy)
           (_%rebind?162578%_ '#f)
           (_%id162583%_ _%id162572%_)
           (_%proc162596%_ _%proc162575%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162569%_
       _%id162583%_
       _%proc162596%_
       _%rebind?162578%_))
    (let* ((_%klass162532%_ gc-hash-table::t)
           (_%id162535%_ 'HashTable::new)
           (_%proc162538%_ gc-table-new)
           (_%rebind?162541%_ '#f)
           (_%id162546%_ _%id162535%_)
           (_%proc162559%_ _%proc162538%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162532%_
       _%id162546%_
       _%proc162559%_
       _%rebind?162541%_))
    (let* ((_%klass162495%_ gc-hash-table::t)
           (_%id162498%_ 'HashTable::clear!)
           (_%proc162501%_ gc-table-clear!)
           (_%rebind?162504%_ '#f)
           (_%id162509%_ _%id162498%_)
           (_%proc162522%_ _%proc162501%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162495%_
       _%id162509%_
       _%proc162522%_
       _%rebind?162504%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref153146%_
      (lambda (_%self162416%_ _%key162418%_ _%default162419%_)
        (let* ((_%self162422%_ _%self162416%_)
               (_%key162431%_ _%key162418%_)
               (_%default162439%_ _%default162419%_))
          (let ((_%h162448%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self162422%_ '1 '#f '#f)))
                (_%l162450%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self162422%_ '2 '#f '#f))))
            (let ((__tmp167245
                   (lambda ()
                     (let ((_%self151786162454%_ _%l162450%_))
                       (declare (not safe))
                       (let ((_%object162457162462%_
                              (##unchecked-structure-ref
                               _%self151786162454%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method162458162463%_
                              (##unchecked-structure-ref
                               _%self151786162454%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method162458162463%_ _%object162457162462%_)))))
                  (__tmp167244
                   (lambda ()
                     (let* ((_%self151054162466%_ _%h162448%_)
                            (_%key162469%_ _%key162431%_)
                            (_%default162472%_ _%default162439%_))
                       (declare (not safe))
                       (let ((_%object162475162480%_
                              (##unchecked-structure-ref
                               _%self151054162466%_
                               '1
                               '#f
                               'ref))
                             (_%method162476162481%_
                              (##unchecked-structure-ref
                               _%self151054162466%_
                               '8
                               '#f
                               'ref)))
                         (_%method162476162481%_
                          _%object162475162480%_
                          _%key162469%_
                          _%default162472%_)))))
                  (__tmp167243
                   (lambda ()
                     (let ((_%self152030162484%_ _%l162450%_))
                       (declare (not safe))
                       (let ((_%object162487162492%_
                              (##unchecked-structure-ref
                               _%self152030162484%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method162488162493%_
                              (##unchecked-structure-ref
                               _%self152030162484%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method162488162493%_ _%object162487162492%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp167245 __tmp167244 __tmp167243))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref153146%_
       '#f))
    (define _%locked-hash-table::HashTable::set!153148%_
      (lambda (_%self162214%_ _%key162216%_ _%value162217%_)
        (let* ((_%self162220%_ _%self162214%_)
               (_%key162229%_ _%key162216%_)
               (_%value162237%_ _%value162217%_))
          (let ((_%h162246%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self162220%_ '1 '#f '#f)))
                (_%l162248%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self162220%_ '2 '#f '#f))))
            (let ((__tmp167248
                   (lambda ()
                     (let ((_%self152274162252%_ _%l162248%_))
                       (declare (not safe))
                       (let ((_%object162255162260%_
                              (##unchecked-structure-ref
                               _%self152274162252%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method162256162261%_
                              (##unchecked-structure-ref
                               _%self152274162252%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method162256162261%_ _%object162255162260%_)))))
                  (__tmp167247
                   (lambda ()
                     (let* ((_%self151298162264%_ _%h162246%_)
                            (_%key162267%_ _%key162229%_)
                            (_%value162270%_ _%value162237%_))
                       (declare (not safe))
                       (let ((_%object162273162278%_
                              (##unchecked-structure-ref
                               _%self151298162264%_
                               '1
                               '#f
                               'set!))
                             (_%method162274162279%_
                              (##unchecked-structure-ref
                               _%self151298162264%_
                               '9
                               '#f
                               'set!)))
                         (_%method162274162279%_
                          _%object162273162278%_
                          _%key162267%_
                          _%value162270%_)))))
                  (__tmp167246
                   (lambda ()
                     (let ((_%self152518162282%_ _%l162248%_))
                       (declare (not safe))
                       (let ((_%object162285162290%_
                              (##unchecked-structure-ref
                               _%self152518162282%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method162286162291%_
                              (##unchecked-structure-ref
                               _%self152518162282%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method162286162291%_ _%object162285162290%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp167248 __tmp167247 __tmp167246))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!153148%_
       '#f))
    (define _%locked-hash-table::HashTable::update!153150%_
      (lambda (_%self162000%_ _%key162002%_ _%update162003%_ _%default162004%_)
        (let* ((_%self162007%_ _%self162000%_)
               (_%key162016%_ _%key162002%_)
               (_%update162024%_ _%update162003%_)
               (_%default162032%_ _%default162004%_))
          (let ((_%h162041%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self162007%_ '1 '#f '#f)))
                (_%l162043%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self162007%_ '2 '#f '#f))))
            (let ((__tmp167251
                   (lambda ()
                     (let ((_%self152274162047%_ _%l162043%_))
                       (declare (not safe))
                       (let ((_%object162050162055%_
                              (##unchecked-structure-ref
                               _%self152274162047%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method162051162056%_
                              (##unchecked-structure-ref
                               _%self152274162047%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method162051162056%_ _%object162050162055%_)))))
                  (__tmp167250
                   (lambda ()
                     (let* ((_%self151542162059%_ _%h162041%_)
                            (_%key162062%_ _%key162016%_)
                            (_%proc162065%_ _%update162024%_)
                            (_%default162068%_ _%default162032%_))
                       (declare (not safe))
                       (let ((_%object162071162076%_
                              (##unchecked-structure-ref
                               _%self151542162059%_
                               '1
                               '#f
                               'update!))
                             (_%method162072162077%_
                              (##unchecked-structure-ref
                               _%self151542162059%_
                               '10
                               '#f
                               'update!)))
                         (_%method162072162077%_
                          _%object162071162076%_
                          _%key162062%_
                          _%proc162065%_
                          _%default162068%_)))))
                  (__tmp167249
                   (lambda ()
                     (let ((_%self152518162080%_ _%l162043%_))
                       (declare (not safe))
                       (let ((_%object162083162088%_
                              (##unchecked-structure-ref
                               _%self152518162080%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method162084162089%_
                              (##unchecked-structure-ref
                               _%self152518162080%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method162084162089%_ _%object162083162088%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp167251 __tmp167250 __tmp167249))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!153150%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!153152%_
      (lambda (_%self161810%_ _%key161812%_)
        (let* ((_%self161815%_ _%self161810%_) (_%key161824%_ _%key161812%_))
          (let ((_%h161833%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self161815%_ '1 '#f '#f)))
                (_%l161835%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self161815%_ '2 '#f '#f))))
            (let ((__tmp167254
                   (lambda ()
                     (let ((_%self152274161839%_ _%l161835%_))
                       (declare (not safe))
                       (let ((_%object161842161847%_
                              (##unchecked-structure-ref
                               _%self152274161839%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method161843161848%_
                              (##unchecked-structure-ref
                               _%self152274161839%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method161843161848%_ _%object161842161847%_)))))
                  (__tmp167253
                   (lambda ()
                     (let* ((_%self150078161851%_ _%h161833%_)
                            (_%key161854%_ _%key161824%_))
                       (declare (not safe))
                       (let ((_%object161857161862%_
                              (##unchecked-structure-ref
                               _%self150078161851%_
                               '1
                               '#f
                               'delete!))
                             (_%method161858161863%_
                              (##unchecked-structure-ref
                               _%self150078161851%_
                               '4
                               '#f
                               'delete!)))
                         (_%method161858161863%_
                          _%object161857161862%_
                          _%key161854%_)))))
                  (__tmp167252
                   (lambda ()
                     (let ((_%self152518161866%_ _%l161835%_))
                       (declare (not safe))
                       (let ((_%object161869161874%_
                              (##unchecked-structure-ref
                               _%self152518161866%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method161870161875%_
                              (##unchecked-structure-ref
                               _%self152518161866%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method161870161875%_ _%object161869161874%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp167254 __tmp167253 __tmp167252))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!153152%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each153154%_
      (lambda (_%self161620%_ _%proc161622%_)
        (let* ((_%self161625%_ _%self161620%_) (_%proc161634%_ _%proc161622%_))
          (let ((_%h161643%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self161625%_ '1 '#f '#f)))
                (_%l161645%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self161625%_ '2 '#f '#f))))
            (let ((__tmp167257
                   (lambda ()
                     (let ((_%self151786161649%_ _%l161645%_))
                       (declare (not safe))
                       (let ((_%object161652161657%_
                              (##unchecked-structure-ref
                               _%self151786161649%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method161653161658%_
                              (##unchecked-structure-ref
                               _%self151786161649%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method161653161658%_ _%object161652161657%_)))))
                  (__tmp167256
                   (lambda ()
                     (let* ((_%self150322161661%_ _%h161643%_)
                            (_%proc161664%_ _%proc161634%_))
                       (declare (not safe))
                       (let ((_%object161667161672%_
                              (##unchecked-structure-ref
                               _%self150322161661%_
                               '1
                               '#f
                               'for-each))
                             (_%method161668161673%_
                              (##unchecked-structure-ref
                               _%self150322161661%_
                               '5
                               '#f
                               'for-each)))
                         (_%method161668161673%_
                          _%object161667161672%_
                          _%proc161664%_)))))
                  (__tmp167255
                   (lambda ()
                     (let ((_%self152030161676%_ _%l161645%_))
                       (declare (not safe))
                       (let ((_%object161679161684%_
                              (##unchecked-structure-ref
                               _%self152030161676%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method161680161685%_
                              (##unchecked-structure-ref
                               _%self152030161676%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method161680161685%_ _%object161679161684%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp167257 __tmp167256 __tmp167255))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each153154%_
       '#f))
    (define _%locked-hash-table::HashTable::length153156%_
      (lambda (_%self161435%_)
        (let ((_%self161439%_ _%self161435%_))
          (let ((_%h161449%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self161439%_ '1 '#f '#f)))
                (_%l161451%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self161439%_ '2 '#f '#f))))
            (let* ((_%$%g161453161455%_
                    (let ((__tmp167260
                           (lambda ()
                             (let ((_%self151786161462%_ _%l161451%_))
                               (declare (not safe))
                               (let ((_%object161465161470%_
                                      (##unchecked-structure-ref
                                       _%self151786161462%_
                                       '1
                                       '#f
                                       'read-lock!))
                                     (_%method161466161471%_
                                      (##unchecked-structure-ref
                                       _%self151786161462%_
                                       '2
                                       '#f
                                       'read-lock!)))
                                 (_%method161466161471%_
                                  _%object161465161470%_)))))
                          (__tmp167259
                           (lambda ()
                             (let ((_%self150566161474%_ _%h161449%_))
                               (declare (not safe))
                               (let ((_%object161477161482%_
                                      (##unchecked-structure-ref
                                       _%self150566161474%_
                                       '1
                                       '#f
                                       'length))
                                     (_%method161478161483%_
                                      (##unchecked-structure-ref
                                       _%self150566161474%_
                                       '6
                                       '#f
                                       'length)))
                                 (_%method161478161483%_
                                  _%object161477161482%_)))))
                          (__tmp167258
                           (lambda ()
                             (let ((_%self152030161486%_ _%l161451%_))
                               (declare (not safe))
                               (let ((_%object161489161494%_
                                      (##unchecked-structure-ref
                                       _%self152030161486%_
                                       '1
                                       '#f
                                       'read-unlock!))
                                     (_%method161490161495%_
                                      (##unchecked-structure-ref
                                       _%self152030161486%_
                                       '3
                                       '#f
                                       'read-unlock!)))
                                 (_%method161490161495%_
                                  _%object161489161494%_))))))
                      (declare (not safe))
                      (##dynamic-wind __tmp167260 __tmp167259 __tmp167258)))
                   (_%val161458%_ _%$%g161453161455%_))
              (if (fixnum? _%val161458%_)
                  _%val161458%_
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/hash
                     'contract:
                     '(fixnum? val)
                     'value:
                     _%val161458%_)
                    '#!void)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length153156%_
       '#f))
    (define _%locked-hash-table::HashTable::copy153158%_
      (lambda (_%self161254%_)
        (let ((_%self161258%_ _%self161254%_))
          (let ((_%h161268%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self161258%_ '1 '#f '#f)))
                (_%l161270%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self161258%_ '2 '#f '#f))))
            (let ((_%$obj161309%_
                   (let ((__tmp167263
                          (lambda ()
                            (let ((_%self151786161274%_ _%l161270%_))
                              (declare (not safe))
                              (let ((_%object161277161282%_
                                     (##unchecked-structure-ref
                                      _%self151786161274%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method161278161283%_
                                     (##unchecked-structure-ref
                                      _%self151786161274%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method161278161283%_
                                 _%object161277161282%_)))))
                         (__tmp167262
                          (lambda ()
                            (let ((_%self149834161286%_ _%h161268%_))
                              (declare (not safe))
                              (let ((_%object161289161294%_
                                     (##unchecked-structure-ref
                                      _%self149834161286%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method161290161295%_
                                     (##unchecked-structure-ref
                                      _%self149834161286%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method161290161295%_
                                 _%object161289161294%_)))))
                         (__tmp167261
                          (lambda ()
                            (let ((_%self152030161298%_ _%l161270%_))
                              (declare (not safe))
                              (let ((_%object161301161306%_
                                     (##unchecked-structure-ref
                                      _%self152030161298%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method161302161307%_
                                     (##unchecked-structure-ref
                                      _%self152030161298%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method161302161307%_
                                 _%object161301161306%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp167263 __tmp167262 __tmp167261))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj161309%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj161309%_)))
                       '#t)
                  _%$obj161309%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj161309%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy153158%_
       '#f))
    (define _%locked-hash-table::HashTable::new153160%_
      (lambda (_%self161053%_ _%size-hint161055%_)
        (let ((_%self161058%_ _%self161053%_))
          (if (or (not _%size-hint161055%_) (fixnum? _%size-hint161055%_))
              (let ((_%size-hint161074%_ _%size-hint161055%_))
                (let ((_%h161084%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self161058%_
                          '1
                          '#f
                          '#f)))
                      (_%l161086%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self161058%_
                          '2
                          '#f
                          '#f))))
                  (let ((_%$obj161128%_
                         (let ((__tmp167266
                                (lambda ()
                                  (let ((_%self151786161090%_ _%l161086%_))
                                    (declare (not safe))
                                    (let ((_%object161093161098%_
                                           (##unchecked-structure-ref
                                            _%self151786161090%_
                                            '1
                                            '#f
                                            'read-lock!))
                                          (_%method161094161099%_
                                           (##unchecked-structure-ref
                                            _%self151786161090%_
                                            '2
                                            '#f
                                            'read-lock!)))
                                      (_%method161094161099%_
                                       _%object161093161098%_)))))
                               (__tmp167265
                                (lambda ()
                                  (let* ((_%self150810161102%_ _%h161084%_)
                                         (_%size-hint161105%_
                                          _%size-hint161074%_))
                                    (declare (not safe))
                                    (let ((_%object161108161113%_
                                           (##unchecked-structure-ref
                                            _%self150810161102%_
                                            '1
                                            '#f
                                            'new))
                                          (_%method161109161114%_
                                           (##unchecked-structure-ref
                                            _%self150810161102%_
                                            '7
                                            '#f
                                            'new)))
                                      (_%method161109161114%_
                                       _%object161108161113%_
                                       _%size-hint161105%_)))))
                               (__tmp167264
                                (lambda ()
                                  (let ((_%self152030161117%_ _%l161086%_))
                                    (declare (not safe))
                                    (let ((_%object161120161125%_
                                           (##unchecked-structure-ref
                                            _%self152030161117%_
                                            '1
                                            '#f
                                            'read-unlock!))
                                          (_%method161121161126%_
                                           (##unchecked-structure-ref
                                            _%self152030161117%_
                                            '3
                                            '#f
                                            'read-unlock!)))
                                      (_%method161121161126%_
                                       _%object161120161125%_))))))
                           (declare (not safe))
                           (##dynamic-wind
                            __tmp167266
                            __tmp167265
                            __tmp167264))))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj161128%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj161128%_)))
                             '#t)
                        _%$obj161128%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj161128%_))))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@309.29-309.38"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint161055%_)
                '#!void)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::new
       _%locked-hash-table::HashTable::new153160%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!153162%_
      (lambda (_%self160875%_)
        (let ((_%self160879%_ _%self160875%_))
          (let ((_%h160889%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self160879%_ '1 '#f '#f)))
                (_%l160891%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self160879%_ '2 '#f '#f))))
            (let ((__tmp167269
                   (lambda ()
                     (let ((_%self152274160895%_ _%l160891%_))
                       (declare (not safe))
                       (let ((_%object160898160903%_
                              (##unchecked-structure-ref
                               _%self152274160895%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method160899160904%_
                              (##unchecked-structure-ref
                               _%self152274160895%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method160899160904%_ _%object160898160903%_)))))
                  (__tmp167268
                   (lambda ()
                     (let ((_%self149589160907%_ _%h160889%_))
                       (declare (not safe))
                       (let ((_%object160910160915%_
                              (##unchecked-structure-ref
                               _%self149589160907%_
                               '1
                               '#f
                               'clear!))
                             (_%method160911160916%_
                              (##unchecked-structure-ref
                               _%self149589160907%_
                               '2
                               '#f
                               'clear!)))
                         (_%method160911160916%_ _%object160910160915%_)))))
                  (__tmp167267
                   (lambda ()
                     (let ((_%self152518160919%_ _%l160891%_))
                       (declare (not safe))
                       (let ((_%object160922160927%_
                              (##unchecked-structure-ref
                               _%self152518160919%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method160923160928%_
                              (##unchecked-structure-ref
                               _%self152518160919%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method160923160928%_ _%object160922160927%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp167269 __tmp167268 __tmp167267))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!153162%_
       '#f))
    (let* ((_%klass160715%_ (macro-type-mutex))
           (_%id160718%_ 'Locker::read-lock!)
           (_%proc160721%_ mutex-lock!)
           (_%rebind?160724%_ '#f)
           (_%id160729%_ _%id160718%_)
           (_%proc160742%_ _%proc160721%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160715%_
       _%id160729%_
       _%proc160742%_
       _%rebind?160724%_))
    (let* ((_%klass160678%_ (macro-type-mutex))
           (_%id160681%_ 'Locker::read-unlock!)
           (_%proc160684%_ mutex-unlock!)
           (_%rebind?160687%_ '#f)
           (_%id160692%_ _%id160681%_)
           (_%proc160705%_ _%proc160684%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160678%_
       _%id160692%_
       _%proc160705%_
       _%rebind?160687%_))
    (let* ((_%klass160641%_ (macro-type-mutex))
           (_%id160644%_ 'Locker::write-lock!)
           (_%proc160647%_ mutex-lock!)
           (_%rebind?160650%_ '#f)
           (_%id160655%_ _%id160644%_)
           (_%proc160668%_ _%proc160647%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160641%_
       _%id160655%_
       _%proc160668%_
       _%rebind?160650%_))
    (let* ((_%klass160604%_ (macro-type-mutex))
           (_%id160607%_ 'Locker::write-unlock!)
           (_%proc160610%_ mutex-unlock!)
           (_%rebind?160613%_ '#f)
           (_%id160618%_ _%id160607%_)
           (_%proc160631%_ _%proc160610%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160604%_
       _%id160618%_
       _%proc160631%_
       _%rebind?160613%_))
    (define _%checked-hash-table::HashTable::ref153373%_
      (lambda (_%self160545%_ _%key160546%_ _%default160547%_)
        (let* ((_%self160550%_ _%self160545%_)
               (_%key160559%_ _%key160546%_)
               (_%default160567%_ _%default160547%_))
          (declare (not safe))
          (let ((_%h160578%_
                 (##unchecked-structure-ref _%self160550%_ '1 '#f '#f))
                (_%key?160580%_
                 (##unchecked-structure-ref _%self160550%_ '2 '#f '#f)))
            (if (_%key?160580%_ _%key160559%_)
                (let* ((_%self151054160587%_ _%h160578%_)
                       (_%key160590%_ _%key160559%_)
                       (_%default160593%_ _%default160567%_))
                  (declare (not safe))
                  (let ((_%object160596160601%_
                         (##unchecked-structure-ref
                          _%self151054160587%_
                          '1
                          '#f
                          'ref))
                        (_%method160597160602%_
                         (##unchecked-structure-ref
                          _%self151054160587%_
                          '8
                          '#f
                          'ref)))
                    (_%method160597160602%_
                     _%object160596160601%_
                     _%key160590%_
                     _%default160593%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key160559%_ (cons _%default160567%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref153373%_
       '#f))
    (define _%checked-hash-table::HashTable::set!153375%_
      (lambda (_%self160363%_ _%key160364%_ _%value160365%_)
        (let* ((_%self160368%_ _%self160363%_)
               (_%key160377%_ _%key160364%_)
               (_%value160385%_ _%value160365%_))
          (declare (not safe))
          (let ((_%h160396%_
                 (##unchecked-structure-ref _%self160368%_ '1 '#f '#f))
                (_%key?160398%_
                 (##unchecked-structure-ref _%self160368%_ '2 '#f '#f)))
            (if (_%key?160398%_ _%key160377%_)
                (let* ((_%self151298160405%_ _%h160396%_)
                       (_%key160408%_ _%key160377%_)
                       (_%value160411%_ _%value160385%_))
                  (declare (not safe))
                  (let ((_%object160414160419%_
                         (##unchecked-structure-ref
                          _%self151298160405%_
                          '1
                          '#f
                          'set!))
                        (_%method160415160420%_
                         (##unchecked-structure-ref
                          _%self151298160405%_
                          '9
                          '#f
                          'set!)))
                    (_%method160415160420%_
                     _%object160414160419%_
                     _%key160408%_
                     _%value160411%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key160377%_ (cons _%value160385%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!153375%_
       '#f))
    (define _%checked-hash-table::HashTable::update!153377%_
      (lambda (_%self160168%_ _%key160169%_ _%update160170%_ _%default160171%_)
        (let* ((_%self160174%_ _%self160168%_)
               (_%key160183%_ _%key160169%_)
               (_%update160191%_ _%update160170%_)
               (_%default160199%_ _%default160171%_))
          (declare (not safe))
          (let ((_%h160210%_
                 (##unchecked-structure-ref _%self160174%_ '1 '#f '#f))
                (_%key?160212%_
                 (##unchecked-structure-ref _%self160174%_ '2 '#f '#f)))
            (if (_%key?160212%_ _%key160183%_)
                (let* ((_%self151542160220%_ _%h160210%_)
                       (_%key160223%_ _%key160183%_)
                       (_%proc160226%_ _%update160191%_)
                       (_%default160229%_ _%default160199%_))
                  (declare (not safe))
                  (let ((_%object160232160237%_
                         (##unchecked-structure-ref
                          _%self151542160220%_
                          '1
                          '#f
                          'update!))
                        (_%method160233160238%_
                         (##unchecked-structure-ref
                          _%self151542160220%_
                          '10
                          '#f
                          'update!)))
                    (_%method160233160238%_
                     _%object160232160237%_
                     _%key160223%_
                     _%proc160226%_
                     _%default160229%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key160183%_
                         (cons _%update160191%_ (cons _%default160199%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!153377%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!153379%_
      (lambda (_%self159999%_ _%key160000%_)
        (let* ((_%self160003%_ _%self159999%_) (_%key160012%_ _%key160000%_))
          (declare (not safe))
          (let ((_%h160023%_
                 (##unchecked-structure-ref _%self160003%_ '1 '#f '#f))
                (_%key?160025%_
                 (##unchecked-structure-ref _%self160003%_ '2 '#f '#f)))
            (if (_%key?160025%_ _%key160012%_)
                (let* ((_%self150078160031%_ _%h160023%_)
                       (_%key160034%_ _%key160012%_))
                  (declare (not safe))
                  (let ((_%object160037160042%_
                         (##unchecked-structure-ref
                          _%self150078160031%_
                          '1
                          '#f
                          'delete!))
                        (_%method160038160043%_
                         (##unchecked-structure-ref
                          _%self150078160031%_
                          '4
                          '#f
                          'delete!)))
                    (_%method160038160043%_
                     _%object160037160042%_
                     _%key160034%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key160012%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!153379%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each153381%_
      (lambda (_%self159830%_ _%proc159831%_)
        (let* ((_%self159834%_ _%self159830%_) (_%proc159843%_ _%proc159831%_))
          (declare (not safe))
          (let ((_%h159854%_
                 (##unchecked-structure-ref _%self159834%_ '1 '#f '#f))
                (_%key?159856%_
                 (##unchecked-structure-ref _%self159834%_ '2 '#f '#f)))
            (if '#t
                (let* ((_%self150322159862%_ _%h159854%_)
                       (_%proc159865%_ _%proc159843%_))
                  (declare (not safe))
                  (let ((_%object159868159873%_
                         (##unchecked-structure-ref
                          _%self150322159862%_
                          '1
                          '#f
                          'for-each))
                        (_%method159869159874%_
                         (##unchecked-structure-ref
                          _%self150322159862%_
                          '5
                          '#f
                          'for-each)))
                    (_%method159869159874%_
                     _%object159868159873%_
                     _%proc159865%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc159843%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each153381%_
       '#f))
    (define _%checked-hash-table::HashTable::length153383%_
      (lambda (_%self159676%_)
        (let ((_%self159679%_ _%self159676%_))
          (declare (not safe))
          (let ((_%h159691%_
                 (##unchecked-structure-ref _%self159679%_ '1 '#f '#f))
                (_%key?159693%_
                 (##unchecked-structure-ref _%self159679%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self150566159696%_ _%h159691%_))
                  (declare (not safe))
                  (let ((_%object159699159704%_
                         (##unchecked-structure-ref
                          _%self150566159696%_
                          '1
                          '#f
                          'length))
                        (_%method159700159705%_
                         (##unchecked-structure-ref
                          _%self150566159696%_
                          '6
                          '#f
                          'length)))
                    (_%method159700159705%_ _%object159699159704%_)))
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
       _%checked-hash-table::HashTable::length153383%_
       '#f))
    (define _%checked-hash-table::HashTable::copy153385%_
      (lambda (_%self159522%_)
        (let ((_%self159525%_ _%self159522%_))
          (declare (not safe))
          (let ((_%h159537%_
                 (##unchecked-structure-ref _%self159525%_ '1 '#f '#f))
                (_%key?159539%_
                 (##unchecked-structure-ref _%self159525%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self149834159542%_ _%h159537%_))
                  (declare (not safe))
                  (let ((_%object159545159550%_
                         (##unchecked-structure-ref
                          _%self149834159542%_
                          '1
                          '#f
                          'copy))
                        (_%method159546159551%_
                         (##unchecked-structure-ref
                          _%self149834159542%_
                          '3
                          '#f
                          'copy)))
                    (_%method159546159551%_ _%object159545159550%_)))
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
       _%checked-hash-table::HashTable::copy153385%_
       '#f))
    (define _%checked-hash-table::HashTable::new153387%_
      (lambda (_%self159348%_ _%size-hint159349%_)
        (let ((_%self159352%_ _%self159348%_))
          (if (or (not _%size-hint159349%_) (fixnum? _%size-hint159349%_))
              (let ((_%size-hint159368%_ _%size-hint159349%_))
                (declare (not safe))
                (let ((_%h159380%_
                       (##unchecked-structure-ref _%self159352%_ '1 '#f '#f))
                      (_%key?159382%_
                       (##unchecked-structure-ref _%self159352%_ '2 '#f '#f)))
                  (if '#!void
                      (let* ((_%self150810159385%_ _%h159380%_)
                             (_%size-hint159388%_ _%size-hint159368%_))
                        (declare (not safe))
                        (let ((_%object159391159396%_
                               (##unchecked-structure-ref
                                _%self150810159385%_
                                '1
                                '#f
                                'new))
                              (_%method159392159397%_
                               (##unchecked-structure-ref
                                _%self150810159385%_
                                '7
                                '#f
                                'new)))
                          (_%method159392159397%_
                           _%object159391159396%_
                           _%size-hint159388%_)))
                      (begin
                        (raise-contract-violation-error
                         '"invalid key"
                         'context:
                         '&HashTable-new
                         'value:
                         (cons _%size-hint159368%_ '()))
                        '#!void))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@368.35-368.44"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint159349%_)
                '#!void)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::new
       _%checked-hash-table::HashTable::new153387%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!153389%_
      (lambda (_%self159194%_)
        (let ((_%self159197%_ _%self159194%_))
          (declare (not safe))
          (let ((_%h159209%_
                 (##unchecked-structure-ref _%self159197%_ '1 '#f '#f))
                (_%key?159211%_
                 (##unchecked-structure-ref _%self159197%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self149589159214%_ _%h159209%_))
                  (declare (not safe))
                  (let ((_%object159217159222%_
                         (##unchecked-structure-ref
                          _%self149589159214%_
                          '1
                          '#f
                          'clear!))
                        (_%method159218159223%_
                         (##unchecked-structure-ref
                          _%self149589159214%_
                          '2
                          '#f
                          'clear!)))
                    (_%method159218159223%_ _%object159217159222%_)))
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
       _%checked-hash-table::HashTable::clear!153389%_
       '#f))
    (define make-generic-hash-table__%
      (lambda (_%table159043%_
               _%count159044%_
               _%free159045%_
               _%hash159046%_
               _%test159047%_
               _%seed159048%_
               _%lock159049%_)
        (let ((__tmp167270
               (let () (declare (not safe)) (ensure-lock _%lock159049%_))))
          (declare (not safe))
          (##structure
           hash-table::t
           _%table159043%_
           _%count159044%_
           _%free159045%_
           _%hash159046%_
           _%test159047%_
           _%seed159048%_
           __tmp167270))))
    (define make-generic-hash-table__0
      (lambda (_%table159054%_
               _%count159055%_
               _%free159056%_
               _%hash159057%_
               _%test159058%_
               _%seed159059%_)
        (let ((_%lock159061%_ '#f))
          (make-generic-hash-table__%
           _%table159054%_
           _%count159055%_
           _%free159056%_
           _%hash159057%_
           _%test159058%_
           _%seed159059%_
           _%lock159061%_))))
    (define make-generic-hash-table
      (lambda _g167271_
        (let ((_g167272_ (let () (declare (not safe)) (##length _g167271_))))
          (cond ((let () (declare (not safe)) (##fx= _g167272_ 6))
                 (apply make-generic-hash-table__0 _g167271_))
                ((let () (declare (not safe)) (##fx= _g167272_ 7))
                 (apply make-generic-hash-table__% _g167271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-generic-hash-table
                  _g167271_))))))
    (define make-hash-table__%
      (lambda (_%@@keywords158452%_
               _%$%size-hint158442158453%_
               _%$%seed158443158454%_
               _%$%test158444158455%_
               _%$%hash158445158456%_
               _%$%lock158446158457%_
               _%$%check158447158458%_
               _%$%weak-keys158448158459%_
               _%$%weak-values158449158460%_)
        (let* ((_%size-hint158462%_
                (if (eq? _%$%size-hint158442158453%_ absent-value)
                    '#f
                    _%$%size-hint158442158453%_))
               (_%seed158464%_
                (if (eq? _%$%seed158443158454%_ absent-value)
                    '#f
                    _%$%seed158443158454%_))
               (_%test158466%_
                (if (eq? _%$%test158444158455%_ absent-value)
                    equal?
                    _%$%test158444158455%_))
               (_%hash158468%_
                (if (eq? _%$%hash158445158456%_ absent-value)
                    '#f
                    _%$%hash158445158456%_))
               (_%lock158470%_
                (if (eq? _%$%lock158446158457%_ absent-value)
                    '#f
                    _%$%lock158446158457%_))
               (_%check158472%_
                (if (eq? _%$%check158447158458%_ absent-value)
                    '#f
                    _%$%check158447158458%_))
               (_%weak-keys158474%_
                (if (eq? _%$%weak-keys158448158459%_ absent-value)
                    '#f
                    _%$%weak-keys158448158459%_))
               (_%weak-values158476%_
                (if (eq? _%$%weak-values158449158460%_ absent-value)
                    '#f
                    _%$%weak-values158449158460%_)))
          (letrec ((_%table-seed158479%_
                    (lambda ()
                      (if (fixnum? _%seed158464%_)
                          _%seed158464%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock158623%_
                    (lambda (_%ht159010%_)
                      (let ((_%ht159013%_ _%ht159010%_))
                        (if _%lock158470%_
                            (let ((_%$obj159025%_
                                   (let ((__tmp167273
                                          (let ((_%$obj159022%_
                                                 _%lock158470%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj159022%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj159022%_)))
                                                     '#t)
                                                _%$obj159022%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj159022%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht159013%_
                                      __tmp167273))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj159025%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj159025%_)))
                                       '#t)
                                  _%$obj159025%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj159025%_))))
                            _%ht159013%_))))
                   (_%wrap-lock158624%_
                    (lambda (_%ht158998%_)
                      (let ((_%ht159001%_ _%ht158998%_))
                        (_%__wrap-lock158623%_ _%ht159001%_))))
                   (_%__wrap-checked158746%_
                    (lambda (_%ht158982%_ _%implicit158983%_)
                      (let ((_%ht158986%_ _%ht158982%_))
                        (if _%check158472%_
                            (let ((_%$obj158995%_
                                   (let ((__tmp167274
                                          (if (procedure? _%check158472%_)
                                              _%check158472%_
                                              _%implicit158983%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht158986%_
                                      __tmp167274))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj158995%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj158995%_)))
                                       '#t)
                                  _%$obj158995%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj158995%_))))
                            _%ht158986%_))))
                   (_%wrap-checked158747%_
                    (lambda (_%ht158969%_ _%implicit158970%_)
                      (let ((_%ht158973%_ _%ht158969%_))
                        (_%__wrap-checked158746%_
                         _%ht158973%_
                         _%implicit158970%_))))
                   (_%make158748%_
                    (lambda (_%kons158917%_
                             _%key?158918%_
                             _%hash158919%_
                             _%test158920%_)
                      (let* ((_%size158923%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint158462%_)))
                             (_%table158925%_
                              (let ((__tmp167275 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size158923%_ __tmp167275)))
                             (_%ht158930%_
                              (let ((_%$obj158927%_
                                     (_%kons158917%_
                                      _%table158925%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size158923%_ '2))
                                      _%hash158919%_
                                      _%test158920%_
                                      (_%table-seed158479%_)
                                      '#f)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj158927%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj158927%_)))
                                         '#t)
                                    _%$obj158927%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj158927%_)))))
                             (_%ht158952%_
                              (let* ((_%ht158933%_ _%ht158930%_)
                                     (_%ht158937%_ _%ht158933%_))
                                (_%__wrap-lock158623%_ _%ht158937%_)))
                             (_%implicit158955%_ _%key?158918%_)
                             (_%ht158959%_ _%ht158952%_))
                        (_%__wrap-checked158746%_
                         _%ht158959%_
                         _%implicit158955%_))))
                   (_%make-gc-hash-table158749%_
                    (lambda ()
                      (let* ((_%ht158882%_
                              (let ((_%$obj158879%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint158462%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj158879%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj158879%_)))
                                         '#t)
                                    _%$obj158879%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj158879%_)))))
                             (_%ht158900%_
                              (let* ((_%ht158884%_ _%ht158882%_)
                                     (_%ht158888%_ _%ht158884%_))
                                (_%__wrap-lock158623%_ _%ht158888%_)))
                             (_%implicit158903%_ true)
                             (_%ht158907%_ _%ht158900%_))
                        (_%__wrap-checked158746%_
                         _%ht158907%_
                         _%implicit158903%_))))
                   (_%make-gambit-table158750%_
                    (lambda ()
                      (let* ((_%size158819%_
                              (let ((_%$e158816%_ _%size-hint158462%_))
                                (if _%$e158816%_
                                    _%$e158816%_
                                    (macro-absent-obj))))
                             (_%test158824%_
                              (let ((_%$e158821%_ _%test158466%_))
                                (if _%$e158821%_ _%$e158821%_ equal?)))
                             (_%hash158832%_
                              (let ((_%$e158826%_ _%hash158468%_))
                                (if _%$e158826%_
                                    _%$e158826%_
                                    (if (eq? _%test158824%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test158824%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht158837%_
                              (let ((_%$obj158834%_
                                     (make-table
                                      'size:
                                      _%size158819%_
                                      'test:
                                      _%test158824%_
                                      'hash:
                                      _%hash158832%_
                                      'weak-keys:
                                      _%weak-keys158474%_
                                      'weak-values:
                                      _%weak-values158476%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj158834%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj158834%_)))
                                         '#t)
                                    _%$obj158834%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj158834%_)))))
                             (_%ht158860%_
                              (let* ((_%ht158840%_ _%ht158837%_)
                                     (_%ht158844%_ _%ht158840%_))
                                (_%__wrap-lock158623%_ _%ht158844%_)))
                             (_%implicit158863%_ true)
                             (_%ht158867%_ _%ht158860%_))
                        (_%__wrap-checked158746%_
                         _%ht158867%_
                         _%implicit158863%_)))))
            (if (or _%weak-keys158474%_ _%weak-values158476%_)
                (_%make-gambit-table158750%_)
                (if (and (or (eq? _%test158466%_ eq?)
                             (eq? _%test158466%_ ##eq?))
                         (or (not _%hash158468%_)
                             (eq? _%hash158468%_ eq?-hash)
                             (eq? _%hash158468%_ eq-hash))
                         (not _%seed158464%_))
                    (_%make-gc-hash-table158749%_)
                    (if (and (or (eq? _%test158466%_ eq?)
                                 (eq? _%test158466%_ ##eq?))
                             (or (not _%hash158468%_)
                                 (eq? _%hash158468%_ eq?-hash)
                                 (eq? _%hash158468%_ eq-hash)))
                        (_%make158748%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test158466%_ eqv?)
                                     (eq? _%test158466%_ ##eqv?))
                                 (or (not _%hash158468%_)
                                     (eq? _%hash158468%_ eqv?-hash)
                                     (eq? _%hash158468%_ eqv-hash)))
                            (_%make158748%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test158466%_ eq?)
                                         (eq? _%test158466%_ ##eq?))
                                     (or (eq? _%hash158468%_ symbolic-hash)
                                         (eq? _%hash158468%_ ##symbol-hash)))
                                (_%make158748%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test158466%_ eq?)
                                             (eq? _%test158466%_ ##eq?))
                                         (eq? _%hash158468%_ immediate-hash))
                                    (_%make158748%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test158466%_ equal?)
                                                 (eq? _%test158466%_ ##equal?)
                                                 (eq? _%test158466%_ string=?)
                                                 (eq? _%test158466%_
                                                      ##string=?))
                                             (or (eq? _%hash158468%_
                                                      string-hash)
                                                 (eq? _%hash158468%_
                                                      ##string=?-hash)))
                                        (_%make158748%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test158466%_ equal?)
                                                 (not _%hash158468%_))
                                            (_%make158748%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test158466%_)
                                                (if (procedure? _%hash158468%_)
                                                    (_%make158748%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash158468%_
                                                     _%test158466%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash158468%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test158466%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords159032%_ . _%args159033%_)
        (apply make-hash-table__%
               _%@@keywords159032%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords159032%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords159032%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords159032%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords159032%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords159032%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159032%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159032%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159032%_
                  'weak-values:
                  absent-value))
               _%args159033%_)))
    (define make-hash-table
      (lambda _%$%args158450159039%_
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
               _%$%args158450159039%_)))
    (define make-hash-table-eq
      (lambda _%args158439%_
        (apply make-hash-table 'test: eq? _%args158439%_)))
    (define make-hash-table-eqv
      (lambda _%args158437%_
        (apply make-hash-table 'test: eqv? _%args158437%_)))
    (define make-hash-table-symbolic
      (lambda _%args158435%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args158435%_)))
    (define make-hash-table-string
      (lambda _%args158433%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args158433%_)))
    (define make-hash-table-immediate
      (lambda _%args158431%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args158431%_)))
    (define list->hash-table
      (lambda (_%lst158428%_ . _%args158429%_)
        (list->hash-table!
         _%lst158428%_
         (apply make-hash-table
                'size:
                (length _%lst158428%_)
                _%args158429%_))))
    (define list->hash-table-eq
      (lambda (_%lst158425%_ . _%args158426%_)
        (list->hash-table!
         _%lst158425%_
         (apply make-hash-table-eq
                'size:
                (length _%lst158425%_)
                _%args158426%_))))
    (define list->hash-table-eqv
      (lambda (_%lst158422%_ . _%args158423%_)
        (list->hash-table!
         _%lst158422%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst158422%_)
                _%args158423%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst158419%_ . _%args158420%_)
        (list->hash-table!
         _%lst158419%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst158419%_)
                _%args158420%_))))
    (define list->hash-table-string
      (lambda (_%lst158416%_ . _%args158417%_)
        (list->hash-table!
         _%lst158416%_
         (apply make-hash-table-string
                'size:
                (length _%lst158416%_)
                _%args158417%_))))
    (define list->hash-table-immediate
      (lambda (_%lst158413%_ . _%args158414%_)
        (list->hash-table!
         _%lst158413%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst158413%_)
                _%args158414%_))))
    (define list->hash-table!
      (lambda (_%lst158364%_ _%h158365%_)
        (for-each
         (lambda (_%el158367%_)
           (let* ((_%$%el158368158375%_ _%el158367%_)
                  (_%$%E158370158378%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%$%el158368158375%_
                              '([k . v])))
                     '#!void))
                  (_%$%K158371158401%_
                   (lambda (_%v158381%_ _%k158382%_)
                     (let* ((_%self151298158384%_ _%h158365%_)
                            (_%key158387%_ _%k158382%_)
                            (_%value158390%_ _%v158381%_))
                       (declare (not safe))
                       (let ((_%object158393158398%_
                              (##unchecked-structure-ref
                               _%self151298158384%_
                               '1
                               '#f
                               'set!))
                             (_%method158394158399%_
                              (##unchecked-structure-ref
                               _%self151298158384%_
                               '9
                               '#f
                               'set!)))
                         (_%method158394158399%_
                          _%object158393158398%_
                          _%key158387%_
                          _%value158390%_))))))
             (if (pair? _%$%el158368158375%_)
                 (let ((_%$%hd158372158404%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%el158368158375%_)))
                       (_%$%tl158373158406%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%el158368158375%_))))
                   (let* ((_%k158409%_ _%$%hd158372158404%_)
                          (_%v158411%_ _%$%tl158373158406%_))
                     (_%$%K158371158401%_ _%v158411%_ _%k158409%_)))
                 (_%$%E158370158378%_))))
         _%lst158364%_)
        _%h158365%_))
    (define plist->hash-table
      (lambda (_%lst158361%_ . _%args158362%_)
        (plist->hash-table!
         _%lst158361%_
         (apply make-hash-table
                'size:
                (length _%lst158361%_)
                _%args158362%_))))
    (define plist->hash-table-eq
      (lambda (_%lst158358%_ . _%args158359%_)
        (plist->hash-table!
         _%lst158358%_
         (apply make-hash-table-eq
                'size:
                (length _%lst158358%_)
                _%args158359%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst158355%_ . _%args158356%_)
        (plist->hash-table!
         _%lst158355%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst158355%_)
                _%args158356%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst158352%_ . _%args158353%_)
        (plist->hash-table!
         _%lst158352%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst158352%_)
                _%args158353%_))))
    (define plist->hash-table-string
      (lambda (_%lst158349%_ . _%args158350%_)
        (plist->hash-table!
         _%lst158349%_
         (apply make-hash-table-string
                'size:
                (length _%lst158349%_)
                _%args158350%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst158346%_ . _%args158347%_)
        (plist->hash-table!
         _%lst158346%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst158346%_)
                _%args158347%_))))
    (define plist->hash-table!
      (lambda (_%lst158269%_ _%h158270%_)
        (let _%loop158272%_ ((_%rest158274%_ _%lst158269%_))
          (let* ((_%$%rest158275158287%_ _%rest158274%_)
                 (_%$%else158278158295%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst158269%_)))))
            (let ((_%$%K158281158327%_
                   (lambda (_%rest158306%_ _%val158307%_ _%key158308%_)
                     (let* ((_%self151298158310%_ _%h158270%_)
                            (_%key158313%_ _%key158308%_)
                            (_%value158316%_ _%val158307%_))
                       (declare (not safe))
                       (let ((_%object158319158324%_
                              (##unchecked-structure-ref
                               _%self151298158310%_
                               '1
                               '#f
                               'set!))
                             (_%method158320158325%_
                              (##unchecked-structure-ref
                               _%self151298158310%_
                               '9
                               '#f
                               'set!)))
                         (_%method158320158325%_
                          _%object158319158324%_
                          _%key158313%_
                          _%value158316%_)))
                     (_%loop158272%_ _%rest158306%_)))
                  (_%$%K158280158300%_ (lambda () _%h158270%_)))
              (let ((_%$%try-match158277158303%_
                     (lambda ()
                       (if (null? _%$%rest158275158287%_)
                           (_%$%K158280158300%_)
                           (_%$%else158278158295%_)))))
                (if (pair? _%$%rest158275158287%_)
                    (let ((_%$%tl158283158332%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest158275158287%_)))
                          (_%$%hd158282158330%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest158275158287%_))))
                      (if (pair? _%$%tl158283158332%_)
                          (let ((_%$%tl158285158339%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl158283158332%_)))
                                (_%$%hd158284158337%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl158283158332%_))))
                            (let ((_%key158335%_ _%$%hd158282158330%_)
                                  (_%val158342%_ _%$%hd158284158337%_)
                                  (_%rest158344%_ _%$%tl158285158339%_))
                              (_%$%K158281158327%_
                               _%rest158344%_
                               _%val158342%_
                               _%key158335%_)))
                          (_%$%else158278158295%_)))
                    (_%$%try-match158277158303%_))))))))
    (define __hash-length
      (lambda (_%h158218%_)
        (let* ((_%h158221%_ _%h158218%_)
               (_%self150567158230%_ _%h158221%_)
               (_%self150567158237%_
                (let ((_%$obj158234%_ _%self150567158230%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj158234%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj158234%_)))
                           '#t)
                      _%$obj158234%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj158234%_)))))
               (_%self150567158239%_ _%self150567158237%_))
          (if __DEBUG
              (let ((_%val158259%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object158251158256%_
                              (##unchecked-structure-ref
                               _%self150567158239%_
                               '1
                               '#f
                               'length))
                             (_%method158252158257%_
                              (##unchecked-structure-ref
                               _%self150567158239%_
                               '6
                               '#f
                               'length)))
                         (_%method158252158257%_ _%object158251158256%_)))))
                (if (fixnum? _%val158259%_)
                    _%val158259%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val158259%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object158261158266%_
                       (##unchecked-structure-ref
                        _%self150567158239%_
                        '1
                        '#f
                        'length))
                      (_%method158262158267%_
                       (##unchecked-structure-ref
                        _%self150567158239%_
                        '6
                        '#f
                        'length)))
                  (_%method158262158267%_ _%object158261158266%_)))))))
    (define hash-length
      (lambda (_%h158200%_)
        (let* ((_%h158206%_
                (let ((_%$obj158203%_ _%h158200%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj158203%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj158203%_)))
                           '#t)
                      _%$obj158203%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj158203%_)))))
               (_%h158208%_ _%h158206%_))
          (__hash-length _%h158208%_))))
    (define __hash-ref__%
      (lambda (_%h158128%_ _%key158129%_ _%default158130%_)
        (let* ((_%h158133%_ _%h158128%_)
               (_%result158186%_
                (let* ((_%self151055158142%_ _%h158133%_)
                       (_%key158145%_ _%key158129%_)
                       (_%default158148%_ _%default158130%_)
                       (_%self151055158155%_
                        (let ((_%$obj158152%_ _%self151055158142%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj158152%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj158152%_)))
                                   '#t)
                              _%$obj158152%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj158152%_)))))
                       (_%self151055158157%_ _%self151055158155%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object158171158176%_
                               (##unchecked-structure-ref
                                _%self151055158157%_
                                '1
                                '#f
                                'ref))
                              (_%method158172158177%_
                               (##unchecked-structure-ref
                                _%self151055158157%_
                                '8
                                '#f
                                'ref)))
                          (_%method158172158177%_
                           _%object158171158176%_
                           _%key158145%_
                           _%default158148%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object158178158183%_
                               (##unchecked-structure-ref
                                _%self151055158157%_
                                '1
                                '#f
                                'ref))
                              (_%method158179158184%_
                               (##unchecked-structure-ref
                                _%self151055158157%_
                                '8
                                '#f
                                'ref)))
                          (_%method158179158184%_
                           _%object158178158183%_
                           _%key158145%_
                           _%default158148%_)))))))
          (if (eq? _%result158186%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h158133%_
               'key:
               _%key158129%_)
              _%result158186%_))))
    (define __hash-ref__0
      (lambda (_%h158191%_ _%key158192%_)
        (let ((_%default158194%_ absent-obj))
          (__hash-ref__% _%h158191%_ _%key158192%_ _%default158194%_))))
    (define __hash-ref
      (lambda _g167276_
        (let ((_g167277_ (let () (declare (not safe)) (##length _g167276_))))
          (cond ((let () (declare (not safe)) (##fx= _g167277_ 2))
                 (apply __hash-ref__0 _g167276_))
                ((let () (declare (not safe)) (##fx= _g167277_ 3))
                 (apply __hash-ref__% _g167276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g167276_))))))
    (define hash-ref__%
      (lambda (_%h158095%_ _%key158096%_ _%default158097%_)
        (let* ((_%h158103%_
                (let ((_%$obj158100%_ _%h158095%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj158100%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj158100%_)))
                           '#t)
                      _%$obj158100%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj158100%_)))))
               (_%h158105%_ _%h158103%_))
          (__hash-ref__% _%h158105%_ _%key158096%_ _%default158097%_))))
    (define hash-ref__0
      (lambda (_%h158118%_ _%key158119%_)
        (let ((_%default158121%_ absent-obj))
          (hash-ref__% _%h158118%_ _%key158119%_ _%default158121%_))))
    (define hash-ref
      (lambda _g167278_
        (let ((_g167279_ (let () (declare (not safe)) (##length _g167278_))))
          (cond ((let () (declare (not safe)) (##fx= _g167279_ 2))
                 (apply hash-ref__0 _g167278_))
                ((let () (declare (not safe)) (##fx= _g167279_ 3))
                 (apply hash-ref__% _g167278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g167278_))))))
    (define __hash-get
      (lambda (_%h158037%_ _%key158038%_)
        (let* ((_%h158041%_ _%h158037%_)
               (_%self151055158050%_ _%h158041%_)
               (_%key158053%_ _%key158038%_)
               (_%default158056%_ '#f)
               (_%self151055158063%_
                (let ((_%$obj158060%_ _%self151055158050%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj158060%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj158060%_)))
                           '#t)
                      _%$obj158060%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj158060%_)))))
               (_%self151055158065%_ _%self151055158063%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object158079158084%_
                       (##unchecked-structure-ref
                        _%self151055158065%_
                        '1
                        '#f
                        'ref))
                      (_%method158080158085%_
                       (##unchecked-structure-ref
                        _%self151055158065%_
                        '8
                        '#f
                        'ref)))
                  (_%method158080158085%_
                   _%object158079158084%_
                   _%key158053%_
                   _%default158056%_)))
              (let ()
                (declare (not safe))
                (let ((_%object158086158091%_
                       (##unchecked-structure-ref
                        _%self151055158065%_
                        '1
                        '#f
                        'ref))
                      (_%method158087158092%_
                       (##unchecked-structure-ref
                        _%self151055158065%_
                        '8
                        '#f
                        'ref)))
                  (_%method158087158092%_
                   _%object158086158091%_
                   _%key158053%_
                   _%default158056%_)))))))
    (define hash-get
      (lambda (_%h158018%_ _%key158019%_)
        (let* ((_%h158025%_
                (let ((_%$obj158022%_ _%h158018%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj158022%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj158022%_)))
                           '#t)
                      _%$obj158022%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj158022%_)))))
               (_%h158027%_ _%h158025%_))
          (__hash-get _%h158027%_ _%key158019%_))))
    (define __hash-put!
      (lambda (_%h157960%_ _%key157961%_ _%value157962%_)
        (let* ((_%h157965%_ _%h157960%_)
               (_%self151299157974%_ _%h157965%_)
               (_%key157977%_ _%key157961%_)
               (_%value157980%_ _%value157962%_)
               (_%self151299157987%_
                (let ((_%$obj157984%_ _%self151299157974%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj157984%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj157984%_)))
                           '#t)
                      _%$obj157984%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj157984%_)))))
               (_%self151299157989%_ _%self151299157987%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object158003158008%_
                       (##unchecked-structure-ref
                        _%self151299157989%_
                        '1
                        '#f
                        'set!))
                      (_%method158004158009%_
                       (##unchecked-structure-ref
                        _%self151299157989%_
                        '9
                        '#f
                        'set!)))
                  (_%method158004158009%_
                   _%object158003158008%_
                   _%key157977%_
                   _%value157980%_)))
              (let ()
                (declare (not safe))
                (let ((_%object158010158015%_
                       (##unchecked-structure-ref
                        _%self151299157989%_
                        '1
                        '#f
                        'set!))
                      (_%method158011158016%_
                       (##unchecked-structure-ref
                        _%self151299157989%_
                        '9
                        '#f
                        'set!)))
                  (_%method158011158016%_
                   _%object158010158015%_
                   _%key157977%_
                   _%value157980%_)))))))
    (define hash-put!
      (lambda (_%h157940%_ _%key157941%_ _%value157942%_)
        (let* ((_%h157948%_
                (let ((_%$obj157945%_ _%h157940%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj157945%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj157945%_)))
                           '#t)
                      _%$obj157945%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj157945%_)))))
               (_%h157950%_ _%h157948%_))
          (__hash-put! _%h157950%_ _%key157941%_ _%value157942%_))))
    (define __hash-update!__%
      (lambda (_%h157853%_ _%key157854%_ _%update157855%_ _%default157856%_)
        (let* ((_%h157859%_ _%h157853%_)
               (_%self151543157868%_ _%h157859%_)
               (_%key157871%_ _%key157854%_)
               (_%proc157874%_ _%update157855%_)
               (_%default157877%_ _%default157856%_)
               (_%self151543157884%_
                (let ((_%$obj157881%_ _%self151543157868%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj157881%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj157881%_)))
                           '#t)
                      _%$obj157881%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj157881%_)))))
               (_%self151543157886%_ _%self151543157884%_))
          (if (procedure? _%proc157874%_)
              (let ((_%proc157902%_ _%proc157874%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object157911157916%_
                             (##unchecked-structure-ref
                              _%self151543157886%_
                              '1
                              '#f
                              'update!))
                            (_%method157912157917%_
                             (##unchecked-structure-ref
                              _%self151543157886%_
                              '10
                              '#f
                              'update!)))
                        (_%method157912157917%_
                         _%object157911157916%_
                         _%key157871%_
                         _%proc157902%_
                         _%default157877%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object157918157923%_
                             (##unchecked-structure-ref
                              _%self151543157886%_
                              '1
                              '#f
                              'update!))
                            (_%method157919157924%_
                             (##unchecked-structure-ref
                              _%self151543157886%_
                              '10
                              '#f
                              'update!)))
                        (_%method157919157924%_
                         _%object157918157923%_
                         _%key157871%_
                         _%proc157902%_
                         _%default157877%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc157874%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h157929%_ _%key157930%_ _%update157931%_)
        (let ((_%default157933%_ '#!void))
          (__hash-update!__%
           _%h157929%_
           _%key157930%_
           _%update157931%_
           _%default157933%_))))
    (define __hash-update!
      (lambda _g167280_
        (let ((_g167281_ (let () (declare (not safe)) (##length _g167280_))))
          (cond ((let () (declare (not safe)) (##fx= _g167281_ 3))
                 (apply __hash-update!__0 _g167280_))
                ((let () (declare (not safe)) (##fx= _g167281_ 4))
                 (apply __hash-update!__% _g167280_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g167280_))))))
    (define hash-update!__%
      (lambda (_%h157817%_ _%key157818%_ _%update157819%_ _%default157820%_)
        (let* ((_%h157826%_
                (let ((_%$obj157823%_ _%h157817%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj157823%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj157823%_)))
                           '#t)
                      _%$obj157823%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj157823%_)))))
               (_%h157828%_ _%h157826%_))
          (__hash-update!__%
           _%h157828%_
           _%key157818%_
           _%update157819%_
           _%default157820%_))))
    (define hash-update!__0
      (lambda (_%h157841%_ _%key157842%_ _%update157843%_)
        (let ((_%default157845%_ '#!void))
          (hash-update!__%
           _%h157841%_
           _%key157842%_
           _%update157843%_
           _%default157845%_))))
    (define hash-update!
      (lambda _g167282_
        (let ((_g167283_ (let () (declare (not safe)) (##length _g167282_))))
          (cond ((let () (declare (not safe)) (##fx= _g167283_ 3))
                 (apply hash-update!__0 _g167282_))
                ((let () (declare (not safe)) (##fx= _g167283_ 4))
                 (apply hash-update!__% _g167282_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g167282_))))))
    (define __hash-remove!
      (lambda (_%h157763%_ _%key157764%_)
        (let* ((_%h157767%_ _%h157763%_)
               (_%self150079157776%_ _%h157767%_)
               (_%key157779%_ _%key157764%_)
               (_%self150079157786%_
                (let ((_%$obj157783%_ _%self150079157776%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj157783%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj157783%_)))
                           '#t)
                      _%$obj157783%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj157783%_)))))
               (_%self150079157788%_ _%self150079157786%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object157801157806%_
                       (##unchecked-structure-ref
                        _%self150079157788%_
                        '1
                        '#f
                        'delete!))
                      (_%method157802157807%_
                       (##unchecked-structure-ref
                        _%self150079157788%_
                        '4
                        '#f
                        'delete!)))
                  (_%method157802157807%_
                   _%object157801157806%_
                   _%key157779%_)))
              (let ()
                (declare (not safe))
                (let ((_%object157808157813%_
                       (##unchecked-structure-ref
                        _%self150079157788%_
                        '1
                        '#f
                        'delete!))
                      (_%method157809157814%_
                       (##unchecked-structure-ref
                        _%self150079157788%_
                        '4
                        '#f
                        'delete!)))
                  (_%method157809157814%_
                   _%object157808157813%_
                   _%key157779%_)))))))
    (define hash-remove!
      (lambda (_%h157744%_ _%key157745%_)
        (let* ((_%h157751%_
                (let ((_%$obj157748%_ _%h157744%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj157748%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj157748%_)))
                           '#t)
                      _%$obj157748%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj157748%_)))))
               (_%h157753%_ _%h157751%_))
          (__hash-remove! _%h157753%_ _%key157745%_))))
    (define __hash-key?
      (lambda (_%h157687%_ _%k157688%_)
        (let ((_%h157691%_ _%h157687%_))
          (not (eq? (let* ((_%self151055157700%_ _%h157691%_)
                           (_%key157703%_ _%k157688%_)
                           (_%default157706%_ absent-value)
                           (_%self151055157713%_
                            (let ((_%$obj157710%_ _%self151055157700%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj157710%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj157710%_)))
                                       '#t)
                                  _%$obj157710%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj157710%_)))))
                           (_%self151055157715%_ _%self151055157713%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object157729157734%_
                                   (##unchecked-structure-ref
                                    _%self151055157715%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method157730157735%_
                                   (##unchecked-structure-ref
                                    _%self151055157715%_
                                    '8
                                    '#f
                                    'ref)))
                              (_%method157730157735%_
                               _%object157729157734%_
                               _%key157703%_
                               _%default157706%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object157736157741%_
                                   (##unchecked-structure-ref
                                    _%self151055157715%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method157737157742%_
                                   (##unchecked-structure-ref
                                    _%self151055157715%_
                                    '8
                                    '#f
                                    'ref)))
                              (_%method157737157742%_
                               _%object157736157741%_
                               _%key157703%_
                               _%default157706%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h157668%_ _%k157669%_)
        (let* ((_%h157675%_
                (let ((_%$obj157672%_ _%h157668%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj157672%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj157672%_)))
                           '#t)
                      _%$obj157672%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj157672%_)))))
               (_%h157677%_ _%h157675%_))
          (__hash-key? _%h157677%_ _%k157669%_))))
    (define __hash->list
      (lambda (_%h157600%_)
        (let* ((_%h157603%_ _%h157600%_) (_%lst157612%_ '()))
          (let* ((_%self150323157614%_ _%h157603%_)
                 (_%proc157620%_
                  (lambda (_%k157617%_ _%v157618%_)
                    (set! _%lst157612%_
                          (cons (cons _%k157617%_ _%v157618%_)
                                _%lst157612%_))))
                 (_%self150323157627%_
                  (let ((_%$obj157624%_ _%self150323157614%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj157624%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj157624%_)))
                             '#t)
                        _%$obj157624%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj157624%_)))))
                 (_%self150323157629%_ _%self150323157627%_)
                 (_%proc157644%_ _%proc157620%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object157653157658%_
                         (##unchecked-structure-ref
                          _%self150323157629%_
                          '1
                          '#f
                          'for-each))
                        (_%method157654157659%_
                         (##unchecked-structure-ref
                          _%self150323157629%_
                          '5
                          '#f
                          'for-each)))
                    (_%method157654157659%_
                     _%object157653157658%_
                     _%proc157644%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object157660157665%_
                         (##unchecked-structure-ref
                          _%self150323157629%_
                          '1
                          '#f
                          'for-each))
                        (_%method157661157666%_
                         (##unchecked-structure-ref
                          _%self150323157629%_
                          '5
                          '#f
                          'for-each)))
                    (_%method157661157666%_
                     _%object157660157665%_
                     _%proc157644%_)))))
          _%lst157612%_)))
    (define hash->list
      (lambda (_%h157582%_)
        (let* ((_%h157588%_
                (let ((_%$obj157585%_ _%h157582%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj157585%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj157585%_)))
                           '#t)
                      _%$obj157585%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj157585%_)))))
               (_%h157590%_ _%h157588%_))
          (__hash->list _%h157590%_))))
    (define __hash->plist
      (lambda (_%h157514%_)
        (let* ((_%h157517%_ _%h157514%_) (_%lst157526%_ '()))
          (let* ((_%self150323157528%_ _%h157517%_)
                 (_%proc157534%_
                  (lambda (_%k157531%_ _%v157532%_)
                    (set! _%lst157526%_
                          (cons _%k157531%_
                                (cons _%v157532%_ _%lst157526%_)))))
                 (_%self150323157541%_
                  (let ((_%$obj157538%_ _%self150323157528%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj157538%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj157538%_)))
                             '#t)
                        _%$obj157538%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj157538%_)))))
                 (_%self150323157543%_ _%self150323157541%_)
                 (_%proc157558%_ _%proc157534%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object157567157572%_
                         (##unchecked-structure-ref
                          _%self150323157543%_
                          '1
                          '#f
                          'for-each))
                        (_%method157568157573%_
                         (##unchecked-structure-ref
                          _%self150323157543%_
                          '5
                          '#f
                          'for-each)))
                    (_%method157568157573%_
                     _%object157567157572%_
                     _%proc157558%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object157574157579%_
                         (##unchecked-structure-ref
                          _%self150323157543%_
                          '1
                          '#f
                          'for-each))
                        (_%method157575157580%_
                         (##unchecked-structure-ref
                          _%self150323157543%_
                          '5
                          '#f
                          'for-each)))
                    (_%method157575157580%_
                     _%object157574157579%_
                     _%proc157558%_)))))
          _%lst157526%_)))
    (define hash->plist
      (lambda (_%h157496%_)
        (let* ((_%h157502%_
                (let ((_%$obj157499%_ _%h157496%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj157499%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj157499%_)))
                           '#t)
                      _%$obj157499%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj157499%_)))))
               (_%h157504%_ _%h157502%_))
          (__hash->plist _%h157504%_))))
    (define __hash-for-each
      (lambda (_%proc157425%_ _%h157426%_)
        (let* ((_%proc157429%_ _%proc157425%_)
               (_%h157437%_ _%h157426%_)
               (_%self150323157446%_ _%h157437%_)
               (_%proc157449%_ _%proc157429%_)
               (_%self150323157456%_
                (let ((_%$obj157453%_ _%self150323157446%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj157453%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj157453%_)))
                           '#t)
                      _%$obj157453%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj157453%_)))))
               (_%self150323157458%_ _%self150323157456%_)
               (_%proc157472%_ _%proc157449%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object157481157486%_
                       (##unchecked-structure-ref
                        _%self150323157458%_
                        '1
                        '#f
                        'for-each))
                      (_%method157482157487%_
                       (##unchecked-structure-ref
                        _%self150323157458%_
                        '5
                        '#f
                        'for-each)))
                  (_%method157482157487%_
                   _%object157481157486%_
                   _%proc157472%_)))
              (let ()
                (declare (not safe))
                (let ((_%object157488157493%_
                       (##unchecked-structure-ref
                        _%self150323157458%_
                        '1
                        '#f
                        'for-each))
                      (_%method157489157494%_
                       (##unchecked-structure-ref
                        _%self150323157458%_
                        '5
                        '#f
                        'for-each)))
                  (_%method157489157494%_
                   _%object157488157493%_
                   _%proc157472%_)))))))
    (define hash-for-each
      (lambda (_%proc157396%_ _%h157397%_)
        (if (procedure? _%proc157396%_)
            (let* ((_%proc157401%_ _%proc157396%_)
                   (_%h157413%_
                    (let ((_%$obj157410%_ _%h157397%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj157410%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj157410%_)))
                               '#t)
                          _%$obj157410%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj157410%_)))))
                   (_%h157415%_ _%h157413%_))
              (__hash-for-each _%proc157401%_ _%h157415%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@594.22-594.26"
               'contract:
               'procedure?
               'value:
               _%proc157396%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc157319%_ _%h157320%_)
        (let* ((_%proc157323%_ _%proc157319%_)
               (_%h157331%_ _%h157320%_)
               (_%result157340%_ '()))
          (let* ((_%self150323157342%_ _%h157331%_)
                 (_%proc157348%_
                  (lambda (_%k157345%_ _%v157346%_)
                    (set! _%result157340%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc157323%_ _%k157345%_ _%v157346%_))
                                _%result157340%_))))
                 (_%self150323157355%_
                  (let ((_%$obj157352%_ _%self150323157342%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj157352%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj157352%_)))
                             '#t)
                        _%$obj157352%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj157352%_)))))
                 (_%self150323157357%_ _%self150323157355%_)
                 (_%proc157372%_ _%proc157348%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object157381157386%_
                         (##unchecked-structure-ref
                          _%self150323157357%_
                          '1
                          '#f
                          'for-each))
                        (_%method157382157387%_
                         (##unchecked-structure-ref
                          _%self150323157357%_
                          '5
                          '#f
                          'for-each)))
                    (_%method157382157387%_
                     _%object157381157386%_
                     _%proc157372%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object157388157393%_
                         (##unchecked-structure-ref
                          _%self150323157357%_
                          '1
                          '#f
                          'for-each))
                        (_%method157389157394%_
                         (##unchecked-structure-ref
                          _%self150323157357%_
                          '5
                          '#f
                          'for-each)))
                    (_%method157389157394%_
                     _%object157388157393%_
                     _%proc157372%_)))))
          _%result157340%_)))
    (define hash-map
      (lambda (_%proc157290%_ _%h157291%_)
        (if (procedure? _%proc157290%_)
            (let* ((_%proc157295%_ _%proc157290%_)
                   (_%h157307%_
                    (let ((_%$obj157304%_ _%h157291%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj157304%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj157304%_)))
                               '#t)
                          _%$obj157304%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj157304%_)))))
                   (_%h157309%_ _%h157307%_))
              (__hash-map _%proc157295%_ _%h157309%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@597.17-597.21"
               'contract:
               'procedure?
               'value:
               _%proc157290%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc157212%_ _%iv157213%_ _%h157214%_)
        (let* ((_%proc157217%_ _%proc157212%_)
               (_%h157225%_ _%h157214%_)
               (_%result157234%_ _%iv157213%_))
          (let* ((_%self150323157236%_ _%h157225%_)
                 (_%proc157242%_
                  (lambda (_%k157239%_ _%v157240%_)
                    (set! _%result157234%_
                          (let ()
                            (declare (not safe))
                            (_%proc157217%_
                             _%k157239%_
                             _%v157240%_
                             _%result157234%_)))))
                 (_%self150323157249%_
                  (let ((_%$obj157246%_ _%self150323157236%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj157246%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj157246%_)))
                             '#t)
                        _%$obj157246%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj157246%_)))))
                 (_%self150323157251%_ _%self150323157249%_)
                 (_%proc157266%_ _%proc157242%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object157275157280%_
                         (##unchecked-structure-ref
                          _%self150323157251%_
                          '1
                          '#f
                          'for-each))
                        (_%method157276157281%_
                         (##unchecked-structure-ref
                          _%self150323157251%_
                          '5
                          '#f
                          'for-each)))
                    (_%method157276157281%_
                     _%object157275157280%_
                     _%proc157266%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object157282157287%_
                         (##unchecked-structure-ref
                          _%self150323157251%_
                          '1
                          '#f
                          'for-each))
                        (_%method157283157288%_
                         (##unchecked-structure-ref
                          _%self150323157251%_
                          '5
                          '#f
                          'for-each)))
                    (_%method157283157288%_
                     _%object157282157287%_
                     _%proc157266%_)))))
          _%result157234%_)))
    (define hash-fold
      (lambda (_%proc157182%_ _%iv157183%_ _%h157184%_)
        (if (procedure? _%proc157182%_)
            (let* ((_%proc157188%_ _%proc157182%_)
                   (_%h157200%_
                    (let ((_%$obj157197%_ _%h157184%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj157197%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj157197%_)))
                               '#t)
                          _%$obj157197%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj157197%_)))))
                   (_%h157202%_ _%h157200%_))
              (__hash-fold _%proc157188%_ _%iv157183%_ _%h157202%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc157182%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc157089%_ _%h157090%_ _%default-value157091%_)
        (let* ((_%proc157094%_ _%proc157089%_)
               (_%h157102%_ _%h157090%_)
               (__tmp167284
                (lambda (_%return157111%_)
                  (let* ((_%self150323157113%_ _%h157102%_)
                         (_%proc157122%_
                          (lambda (_%k157116%_ _%v157117%_)
                            (let ((_%$e157119%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc157094%_
                                      _%k157116%_
                                      _%v157117%_))))
                              (if _%$e157119%_
                                  (_%return157111%_ _%$e157119%_)
                                  '#!void))))
                         (_%self150323157129%_
                          (let ((_%$obj157126%_ _%self150323157113%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj157126%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj157126%_)))
                                     '#t)
                                _%$obj157126%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj157126%_)))))
                         (_%self150323157131%_ _%self150323157129%_)
                         (_%proc157146%_ _%proc157122%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object157155157160%_
                                 (##unchecked-structure-ref
                                  _%self150323157131%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method157156157161%_
                                 (##unchecked-structure-ref
                                  _%self150323157131%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method157156157161%_
                             _%object157155157160%_
                             _%proc157146%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object157162157167%_
                                 (##unchecked-structure-ref
                                  _%self150323157131%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method157163157168%_
                                 (##unchecked-structure-ref
                                  _%self150323157131%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method157163157168%_
                             _%object157162157167%_
                             _%proc157146%_)))))
                  _%default-value157091%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp167284))))
    (define __hash-find__0
      (lambda (_%proc157173%_ _%h157174%_)
        (let ((_%default-value157176%_ '#f))
          (__hash-find__%
           _%proc157173%_
           _%h157174%_
           _%default-value157176%_))))
    (define __hash-find
      (lambda _g167285_
        (let ((_g167286_ (let () (declare (not safe)) (##length _g167285_))))
          (cond ((let () (declare (not safe)) (##fx= _g167286_ 2))
                 (apply __hash-find__0 _g167285_))
                ((let () (declare (not safe)) (##fx= _g167286_ 3))
                 (apply __hash-find__% _g167285_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g167285_))))))
    (define hash-find__%
      (lambda (_%proc157046%_ _%h157047%_ _%default-value157048%_)
        (if (procedure? _%proc157046%_)
            (let* ((_%proc157052%_ _%proc157046%_)
                   (_%h157064%_
                    (let ((_%$obj157061%_ _%h157047%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj157061%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj157061%_)))
                               '#t)
                          _%$obj157061%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj157061%_)))))
                   (_%h157066%_ _%h157064%_))
              (__hash-find__%
               _%proc157052%_
               _%h157066%_
               _%default-value157048%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@608.18-608.22"
               'contract:
               'procedure?
               'value:
               _%proc157046%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc157079%_ _%h157080%_)
        (let ((_%default-value157082%_ '#f))
          (hash-find__% _%proc157079%_ _%h157080%_ _%default-value157082%_))))
    (define hash-find
      (lambda _g167287_
        (let ((_g167288_ (let () (declare (not safe)) (##length _g167287_))))
          (cond ((let () (declare (not safe)) (##fx= _g167288_ 2))
                 (apply hash-find__0 _g167287_))
                ((let () (declare (not safe)) (##fx= _g167288_ 3))
                 (apply hash-find__% _g167287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g167287_))))))
    (define __hash-keys
      (lambda (_%h156977%_)
        (let* ((_%h156980%_ _%h156977%_) (_%result156989%_ '()))
          (let* ((_%self150323156991%_ _%h156980%_)
                 (_%proc156997%_
                  (lambda (_%k156994%_ _%v156995%_)
                    (set! _%result156989%_
                          (cons _%k156994%_ _%result156989%_))))
                 (_%self150323157004%_
                  (let ((_%$obj157001%_ _%self150323156991%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj157001%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj157001%_)))
                             '#t)
                        _%$obj157001%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj157001%_)))))
                 (_%self150323157006%_ _%self150323157004%_)
                 (_%proc157021%_ _%proc156997%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object157030157035%_
                         (##unchecked-structure-ref
                          _%self150323157006%_
                          '1
                          '#f
                          'for-each))
                        (_%method157031157036%_
                         (##unchecked-structure-ref
                          _%self150323157006%_
                          '5
                          '#f
                          'for-each)))
                    (_%method157031157036%_
                     _%object157030157035%_
                     _%proc157021%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object157037157042%_
                         (##unchecked-structure-ref
                          _%self150323157006%_
                          '1
                          '#f
                          'for-each))
                        (_%method157038157043%_
                         (##unchecked-structure-ref
                          _%self150323157006%_
                          '5
                          '#f
                          'for-each)))
                    (_%method157038157043%_
                     _%object157037157042%_
                     _%proc157021%_)))))
          _%result156989%_)))
    (define hash-keys
      (lambda (_%h156959%_)
        (let* ((_%h156965%_
                (let ((_%$obj156962%_ _%h156959%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156962%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156962%_)))
                           '#t)
                      _%$obj156962%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156962%_)))))
               (_%h156967%_ _%h156965%_))
          (__hash-keys _%h156967%_))))
    (define __hash-values
      (lambda (_%h156891%_)
        (let* ((_%h156894%_ _%h156891%_) (_%result156903%_ '()))
          (let* ((_%self150323156905%_ _%h156894%_)
                 (_%proc156911%_
                  (lambda (_%k156908%_ _%v156909%_)
                    (set! _%result156903%_
                          (cons _%v156909%_ _%result156903%_))))
                 (_%self150323156918%_
                  (let ((_%$obj156915%_ _%self150323156905%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj156915%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj156915%_)))
                             '#t)
                        _%$obj156915%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj156915%_)))))
                 (_%self150323156920%_ _%self150323156918%_)
                 (_%proc156935%_ _%proc156911%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object156944156949%_
                         (##unchecked-structure-ref
                          _%self150323156920%_
                          '1
                          '#f
                          'for-each))
                        (_%method156945156950%_
                         (##unchecked-structure-ref
                          _%self150323156920%_
                          '5
                          '#f
                          'for-each)))
                    (_%method156945156950%_
                     _%object156944156949%_
                     _%proc156935%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object156951156956%_
                         (##unchecked-structure-ref
                          _%self150323156920%_
                          '1
                          '#f
                          'for-each))
                        (_%method156952156957%_
                         (##unchecked-structure-ref
                          _%self150323156920%_
                          '5
                          '#f
                          'for-each)))
                    (_%method156952156957%_
                     _%object156951156956%_
                     _%proc156935%_)))))
          _%result156903%_)))
    (define hash-values
      (lambda (_%h156873%_)
        (let* ((_%h156879%_
                (let ((_%$obj156876%_ _%h156873%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156876%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156876%_)))
                           '#t)
                      _%$obj156876%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156876%_)))))
               (_%h156881%_ _%h156879%_))
          (__hash-values _%h156881%_))))
    (define __hash-copy
      (lambda (_%h156822%_)
        (let* ((_%h156825%_ _%h156822%_)
               (_%self149835156834%_ _%h156825%_)
               (_%self149835156841%_
                (let ((_%$obj156838%_ _%self149835156834%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156838%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156838%_)))
                           '#t)
                      _%$obj156838%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156838%_)))))
               (_%self149835156843%_ _%self149835156841%_))
          (if __DEBUG
              (let ((_%$obj156863%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object156855156860%_
                              (##unchecked-structure-ref
                               _%self149835156843%_
                               '1
                               '#f
                               'copy))
                             (_%method156856156861%_
                              (##unchecked-structure-ref
                               _%self149835156843%_
                               '3
                               '#f
                               'copy)))
                         (_%method156856156861%_ _%object156855156860%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj156863%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj156863%_)))
                         '#t)
                    _%$obj156863%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj156863%_))))
              (let ()
                (declare (not safe))
                (let ((_%object156865156870%_
                       (##unchecked-structure-ref
                        _%self149835156843%_
                        '1
                        '#f
                        'copy))
                      (_%method156866156871%_
                       (##unchecked-structure-ref
                        _%self149835156843%_
                        '3
                        '#f
                        'copy)))
                  (_%method156866156871%_ _%object156865156870%_)))))))
    (define hash-copy
      (lambda (_%h156804%_)
        (let* ((_%h156810%_
                (let ((_%$obj156807%_ _%h156804%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156807%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156807%_)))
                           '#t)
                      _%$obj156807%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156807%_)))))
               (_%h156812%_ _%h156810%_))
          (__hash-copy _%h156812%_))))
    (define __hash-new
      (lambda (_%h156733%_)
        (let* ((_%h156736%_ _%h156733%_)
               (_%self150811156745%_ _%h156736%_)
               (_%size-hint156748%_ '#f)
               (_%self150811156755%_
                (let ((_%$obj156752%_ _%self150811156745%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156752%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156752%_)))
                           '#t)
                      _%$obj156752%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156752%_)))))
               (_%self150811156757%_ _%self150811156755%_))
          (if (let ((_%$e156773%_ '#t)) (and _%$e156773%_ _%$e156773%_))
              (let ((_%size-hint156777%_ _%size-hint156748%_))
                (if __DEBUG
                    (let ((_%$obj156794%_
                           (let ()
                             (declare (not safe))
                             (let ((_%object156786156791%_
                                    (##unchecked-structure-ref
                                     _%self150811156757%_
                                     '1
                                     '#f
                                     'new))
                                   (_%method156787156792%_
                                    (##unchecked-structure-ref
                                     _%self150811156757%_
                                     '7
                                     '#f
                                     'new)))
                               (_%method156787156792%_
                                _%object156786156791%_
                                _%size-hint156777%_)))))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj156794%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj156794%_)))
                               '#t)
                          _%$obj156794%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj156794%_))))
                    (let ()
                      (declare (not safe))
                      (let ((_%object156796156801%_
                             (##unchecked-structure-ref
                              _%self150811156757%_
                              '1
                              '#f
                              'new))
                            (_%method156797156802%_
                             (##unchecked-structure-ref
                              _%self150811156757%_
                              '7
                              '#f
                              'new)))
                        (_%method156797156802%_
                         _%object156796156801%_
                         _%size-hint156777%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint156748%_)
                '#!void)))))
    (define hash-new
      (lambda (_%h156715%_)
        (let* ((_%h156721%_
                (let ((_%$obj156718%_ _%h156715%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156718%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156718%_)))
                           '#t)
                      _%$obj156718%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156718%_)))))
               (_%h156723%_ _%h156721%_))
          (__hash-new _%h156723%_))))
    (define __hash-clear!
      (lambda (_%h156667%_)
        (let* ((_%h156670%_ _%h156667%_)
               (_%self149590156679%_ _%h156670%_)
               (_%self149590156686%_
                (let ((_%$obj156683%_ _%self149590156679%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156683%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156683%_)))
                           '#t)
                      _%$obj156683%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156683%_)))))
               (_%self149590156688%_ _%self149590156686%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object156700156705%_
                       (##unchecked-structure-ref
                        _%self149590156688%_
                        '1
                        '#f
                        'clear!))
                      (_%method156701156706%_
                       (##unchecked-structure-ref
                        _%self149590156688%_
                        '2
                        '#f
                        'clear!)))
                  (_%method156701156706%_ _%object156700156705%_)))
              (let ()
                (declare (not safe))
                (let ((_%object156707156712%_
                       (##unchecked-structure-ref
                        _%self149590156688%_
                        '1
                        '#f
                        'clear!))
                      (_%method156708156713%_
                       (##unchecked-structure-ref
                        _%self149590156688%_
                        '2
                        '#f
                        'clear!)))
                  (_%method156708156713%_ _%object156707156712%_)))))))
    (define hash-clear!
      (lambda (_%h156649%_)
        (let* ((_%h156655%_
                (let ((_%$obj156652%_ _%h156649%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156652%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156652%_)))
                           '#t)
                      _%$obj156652%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156652%_)))))
               (_%h156657%_ _%h156655%_))
          (__hash-clear! _%h156657%_))))
    (define __hash-merge
      (lambda (_%h156595%_ . _%rest156596%_)
        (let* ((_%h156599%_ _%h156595%_)
               (_%copy156647%_
                (let* ((_%self149835156608%_ _%h156599%_)
                       (_%self149835156615%_
                        (let ((_%$obj156612%_ _%self149835156608%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj156612%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj156612%_)))
                                   '#t)
                              _%$obj156612%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj156612%_)))))
                       (_%self149835156617%_ _%self149835156615%_))
                  (if __DEBUG
                      (let ((_%$obj156637%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object156629156634%_
                                      (##unchecked-structure-ref
                                       _%self149835156617%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method156630156635%_
                                      (##unchecked-structure-ref
                                       _%self149835156617%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method156630156635%_
                                  _%object156629156634%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj156637%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj156637%_)))
                                 '#t)
                            _%$obj156637%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj156637%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object156639156644%_
                               (##unchecked-structure-ref
                                _%self149835156617%_
                                '1
                                '#f
                                'copy))
                              (_%method156640156645%_
                               (##unchecked-structure-ref
                                _%self149835156617%_
                                '3
                                '#f
                                'copy)))
                          (_%method156640156645%_ _%object156639156644%_)))))))
          (apply hash-merge! _%copy156647%_ _%rest156596%_)
          _%copy156647%_)))
    (define hash-merge
      (lambda (_%h156576%_ . _%rest156577%_)
        (let* ((_%h156583%_
                (let ((_%$obj156580%_ _%h156576%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156580%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156580%_)))
                           '#t)
                      _%$obj156580%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156580%_)))))
               (_%h156585%_ _%h156583%_))
          (declare (not safe))
          (##apply __hash-merge _%h156585%_ _%rest156577%_))))
    (define __hash-merge-right
      (lambda (_%h156522%_ . _%rest156523%_)
        (let* ((_%h156526%_ _%h156522%_)
               (_%copy156574%_
                (let* ((_%self149835156535%_ _%h156526%_)
                       (_%self149835156542%_
                        (let ((_%$obj156539%_ _%self149835156535%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj156539%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj156539%_)))
                                   '#t)
                              _%$obj156539%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj156539%_)))))
                       (_%self149835156544%_ _%self149835156542%_))
                  (if __DEBUG
                      (let ((_%$obj156564%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object156556156561%_
                                      (##unchecked-structure-ref
                                       _%self149835156544%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method156557156562%_
                                      (##unchecked-structure-ref
                                       _%self149835156544%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method156557156562%_
                                  _%object156556156561%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj156564%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj156564%_)))
                                 '#t)
                            _%$obj156564%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj156564%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object156566156571%_
                               (##unchecked-structure-ref
                                _%self149835156544%_
                                '1
                                '#f
                                'copy))
                              (_%method156567156572%_
                               (##unchecked-structure-ref
                                _%self149835156544%_
                                '3
                                '#f
                                'copy)))
                          (_%method156567156572%_ _%object156566156571%_)))))))
          (apply hash-merge-right! _%copy156574%_ _%rest156523%_)
          _%copy156574%_)))
    (define hash-merge-right
      (lambda (_%h156503%_ . _%rest156504%_)
        (let* ((_%h156510%_
                (let ((_%$obj156507%_ _%h156503%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156507%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156507%_)))
                           '#t)
                      _%$obj156507%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156507%_)))))
               (_%h156512%_ _%h156510%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h156512%_ _%rest156504%_))))
    (define __hash-merge!
      (lambda (_%h156351%_ . _%rest156352%_)
        (let ((_%h156355%_ _%h156351%_))
          (let ((__tmp167289
                 (lambda (_%hr156364%_)
                   (let* ((_%hr156370%_
                           (let ((_%$obj156367%_ _%hr156364%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj156367%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj156367%_)))
                                      '#t)
                                 _%$obj156367%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj156367%_)))))
                          (_%hr156372%_ _%hr156370%_)
                          (_%self150323156385%_ _%hr156372%_)
                          (_%proc156460%_
                           (lambda (_%k156388%_ _%v156389%_)
                             (if (let* ((_%h156391%_ _%h156355%_)
                                        (_%k156394%_ _%k156388%_)
                                        (_%h156401%_
                                         (let ((_%$obj156398%_ _%h156391%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj156398%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj156398%_)))
                                                    '#t)
                                               _%$obj156398%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj156398%_)))))
                                        (_%h156403%_ _%h156401%_))
                                   (__hash-key? _%h156403%_ _%k156394%_))
                                 '#!void
                                 (let* ((_%self151299156419%_ _%h156355%_)
                                        (_%key156422%_ _%k156388%_)
                                        (_%value156425%_ _%v156389%_)
                                        (_%self151299156432%_
                                         (let ((_%$obj156429%_
                                                _%self151299156419%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj156429%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj156429%_)))
                                                    '#t)
                                               _%$obj156429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj156429%_)))))
                                        (_%self151299156434%_
                                         _%self151299156432%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object156445156450%_
                                                (##unchecked-structure-ref
                                                 _%self151299156434%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method156446156451%_
                                                (##unchecked-structure-ref
                                                 _%self151299156434%_
                                                 '9
                                                 '#f
                                                 'set!)))
                                           (_%method156446156451%_
                                            _%object156445156450%_
                                            _%key156422%_
                                            _%value156425%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object156452156457%_
                                                (##unchecked-structure-ref
                                                 _%self151299156434%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method156453156458%_
                                                (##unchecked-structure-ref
                                                 _%self151299156434%_
                                                 '9
                                                 '#f
                                                 'set!)))
                                           (_%method156453156458%_
                                            _%object156452156457%_
                                            _%key156422%_
                                            _%value156425%_))))))))
                          (_%self150323156467%_
                           (let ((_%$obj156464%_ _%self150323156385%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj156464%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj156464%_)))
                                      '#t)
                                 _%$obj156464%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj156464%_)))))
                          (_%self150323156469%_ _%self150323156467%_)
                          (_%proc156479%_ _%proc156460%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object156488156493%_
                                  (##unchecked-structure-ref
                                   _%self150323156469%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method156489156494%_
                                  (##unchecked-structure-ref
                                   _%self150323156469%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method156489156494%_
                              _%object156488156493%_
                              _%proc156479%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object156495156500%_
                                  (##unchecked-structure-ref
                                   _%self150323156469%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method156496156501%_
                                  (##unchecked-structure-ref
                                   _%self150323156469%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method156496156501%_
                              _%object156495156500%_
                              _%proc156479%_))))))))
            (declare (not safe))
            (##for-each __tmp167289 _%rest156352%_))
          _%h156355%_)))
    (define hash-merge!
      (lambda (_%h156332%_ . _%rest156333%_)
        (let* ((_%h156339%_
                (let ((_%$obj156336%_ _%h156332%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156336%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156336%_)))
                           '#t)
                      _%$obj156336%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156336%_)))))
               (_%h156341%_ _%h156339%_))
          (declare (not safe))
          (##apply __hash-merge! _%h156341%_ _%rest156333%_))))
    (define __hash-merge-right!
      (lambda (_%h156203%_ . _%rest156204%_)
        (let ((_%h156207%_ _%h156203%_))
          (let ((__tmp167290
                 (lambda (_%hr156216%_)
                   (let* ((_%hr156222%_
                           (let ((_%$obj156219%_ _%hr156216%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj156219%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj156219%_)))
                                      '#t)
                                 _%$obj156219%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj156219%_)))))
                          (_%hr156224%_ _%hr156222%_)
                          (_%self150323156237%_ _%hr156224%_)
                          (_%proc156289%_
                           (lambda (_%k156240%_ _%v156241%_)
                             (let* ((_%self151299156243%_ _%h156207%_)
                                    (_%key156246%_ _%k156240%_)
                                    (_%value156249%_ _%v156241%_)
                                    (_%self151299156256%_
                                     (let ((_%$obj156253%_
                                            _%self151299156243%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj156253%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj156253%_)))
                                                '#t)
                                           _%$obj156253%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj156253%_)))))
                                    (_%self151299156258%_
                                     _%self151299156256%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object156274156279%_
                                            (##unchecked-structure-ref
                                             _%self151299156258%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method156275156280%_
                                            (##unchecked-structure-ref
                                             _%self151299156258%_
                                             '9
                                             '#f
                                             'set!)))
                                       (_%method156275156280%_
                                        _%object156274156279%_
                                        _%key156246%_
                                        _%value156249%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object156281156286%_
                                            (##unchecked-structure-ref
                                             _%self151299156258%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method156282156287%_
                                            (##unchecked-structure-ref
                                             _%self151299156258%_
                                             '9
                                             '#f
                                             'set!)))
                                       (_%method156282156287%_
                                        _%object156281156286%_
                                        _%key156246%_
                                        _%value156249%_)))))))
                          (_%self150323156296%_
                           (let ((_%$obj156293%_ _%self150323156237%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj156293%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj156293%_)))
                                      '#t)
                                 _%$obj156293%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj156293%_)))))
                          (_%self150323156298%_ _%self150323156296%_)
                          (_%proc156308%_ _%proc156289%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object156317156322%_
                                  (##unchecked-structure-ref
                                   _%self150323156298%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method156318156323%_
                                  (##unchecked-structure-ref
                                   _%self150323156298%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method156318156323%_
                              _%object156317156322%_
                              _%proc156308%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object156324156329%_
                                  (##unchecked-structure-ref
                                   _%self150323156298%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method156325156330%_
                                  (##unchecked-structure-ref
                                   _%self150323156298%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method156325156330%_
                              _%object156324156329%_
                              _%proc156308%_))))))))
            (declare (not safe))
            (##for-each __tmp167290 _%rest156204%_))
          _%h156207%_)))
    (define hash-merge-right!
      (lambda (_%h156184%_ . _%rest156185%_)
        (let* ((_%h156191%_
                (let ((_%$obj156188%_ _%h156184%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156188%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156188%_)))
                           '#t)
                      _%$obj156188%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156188%_)))))
               (_%h156193%_ _%h156191%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h156193%_ _%rest156185%_))))))
