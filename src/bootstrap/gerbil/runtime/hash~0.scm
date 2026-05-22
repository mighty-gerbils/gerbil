(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1779435579)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp162869 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp162869
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args161611%_
        (apply make-instance UnboundKeyError::t _%$args161611%_)))
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
      (lambda (_%where161485%_ _%message161486%_ . _%irritants161487%_)
        (let ((__tmp162870
               (let ((__obj162861
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj162861
                    _%message161486%_
                    'where:
                    _%where161485%_
                    'irritants:
                    _%irritants161487%_))
                 __obj162861)))
          (declare (not safe))
          (raise __tmp162870))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp162871 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp162871
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj162863
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj162863
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj162863))
    (define make-HashTable
      (lambda (_%obj161483%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj161483%_))))
    (define try-HashTable
      (lambda (_%obj161481%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj161481%_))))
    (define HashTable?
      (lambda (_%obj161479%_)
        (let ((__tmp162872
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj161479%_ __tmp162872))))
    (define is-HashTable?
      (lambda (_%obj161476%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj161476%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self146466146710%_)
        (let ((_%self146466146712%_ _%self146466146710%_))
          (declare (not safe))
          (let ((_%object146719146724%_
                 (##unchecked-structure-ref
                  _%self146466146712%_
                  '1
                  '#f
                  'clear!))
                (_%method146720146725%_
                 (##unchecked-structure-ref
                  _%self146466146712%_
                  '2
                  '#f
                  'clear!)))
            (_%method146720146725%_ _%object146719146724%_)))))
    (define ::HashTable-clear!
      (lambda (_%self146467146727%_)
        (let* ((_%self146467146732%_
                (let ((_%$obj146729%_ _%self146467146727%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146729%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146729%_)))
                           '#t)
                      _%$obj146729%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146729%_)))))
               (_%self146467146734%_ _%self146467146732%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146742146747%_
                       (##unchecked-structure-ref
                        _%self146467146734%_
                        '1
                        '#f
                        'clear!))
                      (_%method146743146748%_
                       (##unchecked-structure-ref
                        _%self146467146734%_
                        '2
                        '#f
                        'clear!)))
                  (_%method146743146748%_ _%object146742146747%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146749146754%_
                       (##unchecked-structure-ref
                        _%self146467146734%_
                        '1
                        '#f
                        'clear!))
                      (_%method146750146755%_
                       (##unchecked-structure-ref
                        _%self146467146734%_
                        '2
                        '#f
                        'clear!)))
                  (_%method146750146755%_ _%object146749146754%_)))))))
    (define __HashTable-copy
      (lambda (_%self146758147001%_)
        (let ((_%self146758147003%_ _%self146758147001%_))
          (declare (not safe))
          (let ((_%object147010147015%_
                 (##unchecked-structure-ref _%self146758147003%_ '1 '#f 'copy))
                (_%method147011147016%_
                 (##unchecked-structure-ref
                  _%self146758147003%_
                  '3
                  '#f
                  'copy)))
            (_%method147011147016%_ _%object147010147015%_)))))
    (define ::HashTable-copy
      (lambda (_%self146759147018%_)
        (let* ((_%self146759147023%_
                (let ((_%$obj147020%_ _%self146759147018%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147020%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147020%_)))
                           '#t)
                      _%$obj147020%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147020%_)))))
               (_%self146759147025%_ _%self146759147023%_))
          (if __DEBUG
              (let ((_%$obj147041%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object147033147038%_
                              (##unchecked-structure-ref
                               _%self146759147025%_
                               '1
                               '#f
                               'copy))
                             (_%method147034147039%_
                              (##unchecked-structure-ref
                               _%self146759147025%_
                               '3
                               '#f
                               'copy)))
                         (_%method147034147039%_ _%object147033147038%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj147041%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj147041%_)))
                         '#t)
                    _%$obj147041%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj147041%_))))
              (let ()
                (declare (not safe))
                (let ((_%object147043147048%_
                       (##unchecked-structure-ref
                        _%self146759147025%_
                        '1
                        '#f
                        'copy))
                      (_%method147044147049%_
                       (##unchecked-structure-ref
                        _%self146759147025%_
                        '3
                        '#f
                        'copy)))
                  (_%method147044147049%_ _%object147043147048%_)))))))
    (define __HashTable-delete!
      (lambda (_%self147052147295%_ _%key147296%_)
        (let ((_%self147052147298%_ _%self147052147295%_))
          (declare (not safe))
          (let ((_%object147305147310%_
                 (##unchecked-structure-ref
                  _%self147052147298%_
                  '1
                  '#f
                  'delete!))
                (_%method147306147311%_
                 (##unchecked-structure-ref
                  _%self147052147298%_
                  '4
                  '#f
                  'delete!)))
            (_%method147306147311%_ _%object147305147310%_ _%key147296%_)))))
    (define ::HashTable-delete!
      (lambda (_%self147053147313%_ _%key147314%_)
        (let* ((_%self147053147319%_
                (let ((_%$obj147316%_ _%self147053147313%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147316%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147316%_)))
                           '#t)
                      _%$obj147316%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147316%_)))))
               (_%self147053147321%_ _%self147053147319%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object147329147334%_
                       (##unchecked-structure-ref
                        _%self147053147321%_
                        '1
                        '#f
                        'delete!))
                      (_%method147330147335%_
                       (##unchecked-structure-ref
                        _%self147053147321%_
                        '4
                        '#f
                        'delete!)))
                  (_%method147330147335%_
                   _%object147329147334%_
                   _%key147314%_)))
              (let ()
                (declare (not safe))
                (let ((_%object147336147341%_
                       (##unchecked-structure-ref
                        _%self147053147321%_
                        '1
                        '#f
                        'delete!))
                      (_%method147337147342%_
                       (##unchecked-structure-ref
                        _%self147053147321%_
                        '4
                        '#f
                        'delete!)))
                  (_%method147337147342%_
                   _%object147336147341%_
                   _%key147314%_)))))))
    (define __HashTable-for-each
      (lambda (_%self147345147588%_ _%proc147589%_)
        (let* ((_%self147345147591%_ _%self147345147588%_)
               (_%proc147598%_ _%proc147589%_))
          (declare (not safe))
          (let ((_%object147606147611%_
                 (##unchecked-structure-ref
                  _%self147345147591%_
                  '1
                  '#f
                  'for-each))
                (_%method147607147612%_
                 (##unchecked-structure-ref
                  _%self147345147591%_
                  '5
                  '#f
                  'for-each)))
            (_%method147607147612%_ _%object147606147611%_ _%proc147598%_)))))
    (define ::HashTable-for-each
      (lambda (_%self147346147614%_ _%proc147615%_)
        (let* ((_%self147346147620%_
                (let ((_%$obj147617%_ _%self147346147614%_))
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
               (_%self147346147622%_ _%self147346147620%_))
          (if (procedure? _%proc147615%_)
              (let ((_%proc147631%_ _%proc147615%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object147640147645%_
                             (##unchecked-structure-ref
                              _%self147346147622%_
                              '1
                              '#f
                              'for-each))
                            (_%method147641147646%_
                             (##unchecked-structure-ref
                              _%self147346147622%_
                              '5
                              '#f
                              'for-each)))
                        (_%method147641147646%_
                         _%object147640147645%_
                         _%proc147631%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object147647147652%_
                             (##unchecked-structure-ref
                              _%self147346147622%_
                              '1
                              '#f
                              'for-each))
                            (_%method147648147653%_
                             (##unchecked-structure-ref
                              _%self147346147622%_
                              '5
                              '#f
                              'for-each)))
                        (_%method147648147653%_
                         _%object147647147652%_
                         _%proc147631%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc147615%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self147656147899%_)
        (let ((_%self147656147901%_ _%self147656147899%_))
          (declare (not safe))
          (let ((_%object147908147913%_
                 (##unchecked-structure-ref
                  _%self147656147901%_
                  '1
                  '#f
                  'length))
                (_%method147909147914%_
                 (##unchecked-structure-ref
                  _%self147656147901%_
                  '6
                  '#f
                  'length)))
            (_%method147909147914%_ _%object147908147913%_)))))
    (define ::HashTable-length
      (lambda (_%self147657147916%_)
        (let* ((_%self147657147921%_
                (let ((_%$obj147918%_ _%self147657147916%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147918%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147918%_)))
                           '#t)
                      _%$obj147918%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147918%_)))))
               (_%self147657147923%_ _%self147657147921%_))
          (if __DEBUG
              (let ((_%val147939%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object147931147936%_
                              (##unchecked-structure-ref
                               _%self147657147923%_
                               '1
                               '#f
                               'length))
                             (_%method147932147937%_
                              (##unchecked-structure-ref
                               _%self147657147923%_
                               '6
                               '#f
                               'length)))
                         (_%method147932147937%_ _%object147931147936%_)))))
                (if (fixnum? _%val147939%_)
                    _%val147939%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val147939%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object147941147946%_
                       (##unchecked-structure-ref
                        _%self147657147923%_
                        '1
                        '#f
                        'length))
                      (_%method147942147947%_
                       (##unchecked-structure-ref
                        _%self147657147923%_
                        '6
                        '#f
                        'length)))
                  (_%method147942147947%_ _%object147941147946%_)))))))
    (define __HashTable-ref
      (lambda (_%self147950148193%_ _%key148194%_ _%default148195%_)
        (let ((_%self147950148197%_ _%self147950148193%_))
          (declare (not safe))
          (let ((_%object148204148209%_
                 (##unchecked-structure-ref _%self147950148197%_ '1 '#f 'ref))
                (_%method148205148210%_
                 (##unchecked-structure-ref _%self147950148197%_ '7 '#f 'ref)))
            (_%method148205148210%_
             _%object148204148209%_
             _%key148194%_
             _%default148195%_)))))
    (define ::HashTable-ref
      (lambda (_%self147951148212%_ _%key148213%_ _%default148214%_)
        (let* ((_%self147951148219%_
                (let ((_%$obj148216%_ _%self147951148212%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148216%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148216%_)))
                           '#t)
                      _%$obj148216%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148216%_)))))
               (_%self147951148221%_ _%self147951148219%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148229148234%_
                       (##unchecked-structure-ref
                        _%self147951148221%_
                        '1
                        '#f
                        'ref))
                      (_%method148230148235%_
                       (##unchecked-structure-ref
                        _%self147951148221%_
                        '7
                        '#f
                        'ref)))
                  (_%method148230148235%_
                   _%object148229148234%_
                   _%key148213%_
                   _%default148214%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148236148241%_
                       (##unchecked-structure-ref
                        _%self147951148221%_
                        '1
                        '#f
                        'ref))
                      (_%method148237148242%_
                       (##unchecked-structure-ref
                        _%self147951148221%_
                        '7
                        '#f
                        'ref)))
                  (_%method148237148242%_
                   _%object148236148241%_
                   _%key148213%_
                   _%default148214%_)))))))
    (define __HashTable-set!
      (lambda (_%self148245148488%_ _%key148489%_ _%value148490%_)
        (let ((_%self148245148492%_ _%self148245148488%_))
          (declare (not safe))
          (let ((_%object148499148504%_
                 (##unchecked-structure-ref _%self148245148492%_ '1 '#f 'set!))
                (_%method148500148505%_
                 (##unchecked-structure-ref
                  _%self148245148492%_
                  '8
                  '#f
                  'set!)))
            (_%method148500148505%_
             _%object148499148504%_
             _%key148489%_
             _%value148490%_)))))
    (define ::HashTable-set!
      (lambda (_%self148246148507%_ _%key148508%_ _%value148509%_)
        (let* ((_%self148246148514%_
                (let ((_%$obj148511%_ _%self148246148507%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148511%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148511%_)))
                           '#t)
                      _%$obj148511%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148511%_)))))
               (_%self148246148516%_ _%self148246148514%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148524148529%_
                       (##unchecked-structure-ref
                        _%self148246148516%_
                        '1
                        '#f
                        'set!))
                      (_%method148525148530%_
                       (##unchecked-structure-ref
                        _%self148246148516%_
                        '8
                        '#f
                        'set!)))
                  (_%method148525148530%_
                   _%object148524148529%_
                   _%key148508%_
                   _%value148509%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148531148536%_
                       (##unchecked-structure-ref
                        _%self148246148516%_
                        '1
                        '#f
                        'set!))
                      (_%method148532148537%_
                       (##unchecked-structure-ref
                        _%self148246148516%_
                        '8
                        '#f
                        'set!)))
                  (_%method148532148537%_
                   _%object148531148536%_
                   _%key148508%_
                   _%value148509%_)))))))
    (define __HashTable-update!
      (lambda (_%self148540148783%_
               _%key148784%_
               _%proc148785%_
               _%default148786%_)
        (let* ((_%self148540148788%_ _%self148540148783%_)
               (_%proc148795%_ _%proc148785%_))
          (declare (not safe))
          (let ((_%object148803148808%_
                 (##unchecked-structure-ref
                  _%self148540148788%_
                  '1
                  '#f
                  'update!))
                (_%method148804148809%_
                 (##unchecked-structure-ref
                  _%self148540148788%_
                  '9
                  '#f
                  'update!)))
            (_%method148804148809%_
             _%object148803148808%_
             _%key148784%_
             _%proc148795%_
             _%default148786%_)))))
    (define ::HashTable-update!
      (lambda (_%self148541148811%_
               _%key148812%_
               _%proc148813%_
               _%default148814%_)
        (let* ((_%self148541148819%_
                (let ((_%$obj148816%_ _%self148541148811%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148816%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148816%_)))
                           '#t)
                      _%$obj148816%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj148816%_)))))
               (_%self148541148821%_ _%self148541148819%_))
          (if (procedure? _%proc148813%_)
              (let ((_%proc148830%_ _%proc148813%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object148839148844%_
                             (##unchecked-structure-ref
                              _%self148541148821%_
                              '1
                              '#f
                              'update!))
                            (_%method148840148845%_
                             (##unchecked-structure-ref
                              _%self148541148821%_
                              '9
                              '#f
                              'update!)))
                        (_%method148840148845%_
                         _%object148839148844%_
                         _%key148812%_
                         _%proc148830%_
                         _%default148814%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object148846148851%_
                             (##unchecked-structure-ref
                              _%self148541148821%_
                              '1
                              '#f
                              'update!))
                            (_%method148847148852%_
                             (##unchecked-structure-ref
                              _%self148541148821%_
                              '9
                              '#f
                              'update!)))
                        (_%method148847148852%_
                         _%object148846148851%_
                         _%key148812%_
                         _%proc148830%_
                         _%default148814%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc148813%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp162873 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp162873
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj162865
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj162865
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj162865))
    (define make-Locker
      (lambda (_%obj161474%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj161474%_))))
    (define try-Locker
      (lambda (_%obj161472%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj161472%_))))
    (define Locker?
      (lambda (_%obj161470%_)
        (let ((__tmp162874
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj161470%_ __tmp162874))))
    (define is-Locker?
      (lambda (_%obj161467%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj161467%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self148855149098%_)
        (let ((_%self148855149100%_ _%self148855149098%_))
          (declare (not safe))
          (let ((_%object149107149112%_
                 (##unchecked-structure-ref
                  _%self148855149100%_
                  '1
                  '#f
                  'read-lock!))
                (_%method149108149113%_
                 (##unchecked-structure-ref
                  _%self148855149100%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method149108149113%_ _%object149107149112%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self148856149115%_)
        (let* ((_%self148856149120%_
                (let ((_%$obj149117%_ _%self148856149115%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149117%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149117%_)))
                           '#t)
                      _%$obj149117%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj149117%_)))))
               (_%self148856149122%_ _%self148856149120%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object149130149135%_
                       (##unchecked-structure-ref
                        _%self148856149122%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method149131149136%_
                       (##unchecked-structure-ref
                        _%self148856149122%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method149131149136%_ _%object149130149135%_)))
              (let ()
                (declare (not safe))
                (let ((_%object149137149142%_
                       (##unchecked-structure-ref
                        _%self148856149122%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method149138149143%_
                       (##unchecked-structure-ref
                        _%self148856149122%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method149138149143%_ _%object149137149142%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self149146149389%_)
        (let ((_%self149146149391%_ _%self149146149389%_))
          (declare (not safe))
          (let ((_%object149398149403%_
                 (##unchecked-structure-ref
                  _%self149146149391%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method149399149404%_
                 (##unchecked-structure-ref
                  _%self149146149391%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method149399149404%_ _%object149398149403%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self149147149406%_)
        (let* ((_%self149147149411%_
                (let ((_%$obj149408%_ _%self149147149406%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149408%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149408%_)))
                           '#t)
                      _%$obj149408%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj149408%_)))))
               (_%self149147149413%_ _%self149147149411%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object149421149426%_
                       (##unchecked-structure-ref
                        _%self149147149413%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method149422149427%_
                       (##unchecked-structure-ref
                        _%self149147149413%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method149422149427%_ _%object149421149426%_)))
              (let ()
                (declare (not safe))
                (let ((_%object149428149433%_
                       (##unchecked-structure-ref
                        _%self149147149413%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method149429149434%_
                       (##unchecked-structure-ref
                        _%self149147149413%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method149429149434%_ _%object149428149433%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self149437149680%_)
        (let ((_%self149437149682%_ _%self149437149680%_))
          (declare (not safe))
          (let ((_%object149689149694%_
                 (##unchecked-structure-ref
                  _%self149437149682%_
                  '1
                  '#f
                  'write-lock!))
                (_%method149690149695%_
                 (##unchecked-structure-ref
                  _%self149437149682%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method149690149695%_ _%object149689149694%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self149438149697%_)
        (let* ((_%self149438149702%_
                (let ((_%$obj149699%_ _%self149438149697%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149699%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149699%_)))
                           '#t)
                      _%$obj149699%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj149699%_)))))
               (_%self149438149704%_ _%self149438149702%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object149712149717%_
                       (##unchecked-structure-ref
                        _%self149438149704%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method149713149718%_
                       (##unchecked-structure-ref
                        _%self149438149704%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method149713149718%_ _%object149712149717%_)))
              (let ()
                (declare (not safe))
                (let ((_%object149719149724%_
                       (##unchecked-structure-ref
                        _%self149438149704%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method149720149725%_
                       (##unchecked-structure-ref
                        _%self149438149704%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method149720149725%_ _%object149719149724%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self149728149971%_)
        (let ((_%self149728149973%_ _%self149728149971%_))
          (declare (not safe))
          (let ((_%object149980149985%_
                 (##unchecked-structure-ref
                  _%self149728149973%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method149981149986%_
                 (##unchecked-structure-ref
                  _%self149728149973%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method149981149986%_ _%object149980149985%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self149729149988%_)
        (let* ((_%self149729149993%_
                (let ((_%$obj149990%_ _%self149729149988%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149990%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149990%_)))
                           '#t)
                      _%$obj149990%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj149990%_)))))
               (_%self149729149995%_ _%self149729149993%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object150003150008%_
                       (##unchecked-structure-ref
                        _%self149729149995%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method150004150009%_
                       (##unchecked-structure-ref
                        _%self149729149995%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method150004150009%_ _%object150003150008%_)))
              (let ()
                (declare (not safe))
                (let ((_%object150010150015%_
                       (##unchecked-structure-ref
                        _%self149729149995%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method150011150016%_
                       (##unchecked-structure-ref
                        _%self149729149995%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method150011150016%_ _%object150010150015%_)))))))
    (let* ((_%klass161430%_ __table::t)
           (_%id161433%_ 'HashTable::ref)
           (_%proc161436%_ raw-table-ref)
           (_%rebind?161439%_ '#f)
           (_%id161444%_ _%id161433%_)
           (_%proc161457%_ _%proc161436%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161430%_
       _%id161444%_
       _%proc161457%_
       _%rebind?161439%_))
    (let* ((_%klass161393%_ __table::t)
           (_%id161396%_ 'HashTable::set!)
           (_%proc161399%_ raw-table-set!)
           (_%rebind?161402%_ '#f)
           (_%id161407%_ _%id161396%_)
           (_%proc161420%_ _%proc161399%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161393%_
       _%id161407%_
       _%proc161420%_
       _%rebind?161402%_))
    (let* ((_%klass161356%_ __table::t)
           (_%id161359%_ 'HashTable::update!)
           (_%proc161362%_ raw-table-update!)
           (_%rebind?161365%_ '#f)
           (_%id161370%_ _%id161359%_)
           (_%proc161383%_ _%proc161362%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161356%_
       _%id161370%_
       _%proc161383%_
       _%rebind?161365%_))
    (let* ((_%klass161319%_ __table::t)
           (_%id161322%_ 'HashTable::delete!)
           (_%proc161325%_ raw-table-delete!)
           (_%rebind?161328%_ '#f)
           (_%id161333%_ _%id161322%_)
           (_%proc161346%_ _%proc161325%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161319%_
       _%id161333%_
       _%proc161346%_
       _%rebind?161328%_))
    (let* ((_%klass161282%_ __table::t)
           (_%id161285%_ 'HashTable::for-each)
           (_%proc161288%_ raw-table-for-each)
           (_%rebind?161291%_ '#f)
           (_%id161296%_ _%id161285%_)
           (_%proc161309%_ _%proc161288%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161282%_
       _%id161296%_
       _%proc161309%_
       _%rebind?161291%_))
    (let* ((_%klass161245%_ __table::t)
           (_%id161248%_ 'HashTable::length)
           (_%proc161251%_ &raw-table-count)
           (_%rebind?161254%_ '#f)
           (_%id161259%_ _%id161248%_)
           (_%proc161272%_ _%proc161251%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161245%_
       _%id161259%_
       _%proc161272%_
       _%rebind?161254%_))
    (let* ((_%klass161208%_ __table::t)
           (_%id161211%_ 'HashTable::copy)
           (_%proc161214%_ raw-table-copy)
           (_%rebind?161217%_ '#f)
           (_%id161222%_ _%id161211%_)
           (_%proc161235%_ _%proc161214%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161208%_
       _%id161222%_
       _%proc161235%_
       _%rebind?161217%_))
    (let* ((_%klass161171%_ __table::t)
           (_%id161174%_ 'HashTable::clear!)
           (_%proc161177%_ raw-table-clear!)
           (_%rebind?161180%_ '#f)
           (_%id161185%_ _%id161174%_)
           (_%proc161198%_ _%proc161177%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161171%_
       _%id161185%_
       _%proc161198%_
       _%rebind?161180%_))
    (let* ((_%klass161134%_ __gc-table::t)
           (_%id161137%_ 'HashTable::ref)
           (_%proc161140%_ gc-table-ref)
           (_%rebind?161143%_ '#f)
           (_%id161148%_ _%id161137%_)
           (_%proc161161%_ _%proc161140%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161134%_
       _%id161148%_
       _%proc161161%_
       _%rebind?161143%_))
    (let* ((_%klass161097%_ __gc-table::t)
           (_%id161100%_ 'HashTable::set!)
           (_%proc161103%_ gc-table-set!)
           (_%rebind?161106%_ '#f)
           (_%id161111%_ _%id161100%_)
           (_%proc161124%_ _%proc161103%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161097%_
       _%id161111%_
       _%proc161124%_
       _%rebind?161106%_))
    (let* ((_%klass161060%_ __gc-table::t)
           (_%id161063%_ 'HashTable::update!)
           (_%proc161066%_ gc-table-update!)
           (_%rebind?161069%_ '#f)
           (_%id161074%_ _%id161063%_)
           (_%proc161087%_ _%proc161066%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161060%_
       _%id161074%_
       _%proc161087%_
       _%rebind?161069%_))
    (let* ((_%klass161023%_ __gc-table::t)
           (_%id161026%_ 'HashTable::delete!)
           (_%proc161029%_ gc-table-delete!)
           (_%rebind?161032%_ '#f)
           (_%id161037%_ _%id161026%_)
           (_%proc161050%_ _%proc161029%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161023%_
       _%id161037%_
       _%proc161050%_
       _%rebind?161032%_))
    (let* ((_%klass160986%_ __gc-table::t)
           (_%id160989%_ 'HashTable::for-each)
           (_%proc160992%_ gc-table-for-each)
           (_%rebind?160995%_ '#f)
           (_%id161000%_ _%id160989%_)
           (_%proc161013%_ _%proc160992%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160986%_
       _%id161000%_
       _%proc161013%_
       _%rebind?160995%_))
    (let* ((_%klass160949%_ __gc-table::t)
           (_%id160952%_ 'HashTable::length)
           (_%proc160955%_ gc-table-length)
           (_%rebind?160958%_ '#f)
           (_%id160963%_ _%id160952%_)
           (_%proc160976%_ _%proc160955%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160949%_
       _%id160963%_
       _%proc160976%_
       _%rebind?160958%_))
    (let* ((_%klass160912%_ __gc-table::t)
           (_%id160915%_ 'HashTable::copy)
           (_%proc160918%_ gc-table-copy)
           (_%rebind?160921%_ '#f)
           (_%id160926%_ _%id160915%_)
           (_%proc160939%_ _%proc160918%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160912%_
       _%id160926%_
       _%proc160939%_
       _%rebind?160921%_))
    (let* ((_%klass160875%_ __gc-table::t)
           (_%id160878%_ 'HashTable::clear!)
           (_%proc160881%_ gc-table-clear!)
           (_%rebind?160884%_ '#f)
           (_%id160889%_ _%id160878%_)
           (_%proc160902%_ _%proc160881%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160875%_
       _%id160889%_
       _%proc160902%_
       _%rebind?160884%_))
    (define gambit-table-update!
      (lambda (_%table160868%_
               _%key160869%_
               _%update160870%_
               _%default160871%_)
        (let ((_%result160873%_
               (table-ref _%table160868%_ _%key160869%_ _%default160871%_)))
          (table-set!
           _%table160868%_
           _%key160869%_
           (_%update160870%_ _%default160871%_)))))
    (define gambit-table-for-each
      (lambda (_%table160865%_ _%proc160866%_)
        (table-for-each _%proc160866%_ _%table160865%_)))
    (define gambit-table-clear!
      (lambda (_%table160863%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table160863%_ '0 '5 '#f '#f))))
    (let* ((_%klass160826%_ (macro-type-table))
           (_%id160829%_ 'HashTable::ref)
           (_%proc160832%_ table-ref)
           (_%rebind?160835%_ '#f)
           (_%id160840%_ _%id160829%_)
           (_%proc160853%_ _%proc160832%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160826%_
       _%id160840%_
       _%proc160853%_
       _%rebind?160835%_))
    (let* ((_%klass160789%_ (macro-type-table))
           (_%id160792%_ 'HashTable::set!)
           (_%proc160795%_ table-set!)
           (_%rebind?160798%_ '#f)
           (_%id160803%_ _%id160792%_)
           (_%proc160816%_ _%proc160795%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160789%_
       _%id160803%_
       _%proc160816%_
       _%rebind?160798%_))
    (let* ((_%klass160752%_ (macro-type-table))
           (_%id160755%_ 'HashTable::update!)
           (_%proc160758%_ gambit-table-update!)
           (_%rebind?160761%_ '#f)
           (_%id160766%_ _%id160755%_)
           (_%proc160779%_ _%proc160758%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160752%_
       _%id160766%_
       _%proc160779%_
       _%rebind?160761%_))
    (let* ((_%klass160715%_ (macro-type-table))
           (_%id160718%_ 'HashTable::delete!)
           (_%proc160721%_ table-set!)
           (_%rebind?160724%_ '#f)
           (_%id160729%_ _%id160718%_)
           (_%proc160742%_ _%proc160721%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160715%_
       _%id160729%_
       _%proc160742%_
       _%rebind?160724%_))
    (let* ((_%klass160678%_ (macro-type-table))
           (_%id160681%_ 'HashTable::for-each)
           (_%proc160684%_ gambit-table-for-each)
           (_%rebind?160687%_ '#f)
           (_%id160692%_ _%id160681%_)
           (_%proc160705%_ _%proc160684%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160678%_
       _%id160692%_
       _%proc160705%_
       _%rebind?160687%_))
    (let* ((_%klass160641%_ (macro-type-table))
           (_%id160644%_ 'HashTable::length)
           (_%proc160647%_ table-length)
           (_%rebind?160650%_ '#f)
           (_%id160655%_ _%id160644%_)
           (_%proc160668%_ _%proc160647%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160641%_
       _%id160655%_
       _%proc160668%_
       _%rebind?160650%_))
    (let* ((_%klass160604%_ (macro-type-table))
           (_%id160607%_ 'HashTable::copy)
           (_%proc160610%_ table-copy)
           (_%rebind?160613%_ '#f)
           (_%id160618%_ _%id160607%_)
           (_%proc160631%_ _%proc160610%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160604%_
       _%id160618%_
       _%proc160631%_
       _%rebind?160613%_))
    (let* ((_%klass160567%_ (macro-type-table))
           (_%id160570%_ 'HashTable::clear!)
           (_%proc160573%_ gambit-table-clear!)
           (_%rebind?160576%_ '#f)
           (_%id160581%_ _%id160570%_)
           (_%proc160594%_ _%proc160573%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160567%_
       _%id160581%_
       _%proc160594%_
       _%rebind?160576%_))
    (define hash-table::t
      (let* ((_%slots160530%_ '(table count free hash test seed))
             (_%slot-vector160532%_ (list->vector (cons '#f _%slots160530%_)))
             (_%slot-table160558%_
              (let ((_%slot-table160534%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp162877
                       (lambda (_%slot160536%_ _%field160537%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table160534%_
                            _%slot160536%_
                            _%field160537%_))
                         (let ((__tmp162878
                                (let ((_%sym160539%_ _%slot160536%_))
                                  (if (symbol? _%sym160539%_)
                                      (let ((_%sym160544%_ _%sym160539%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym160544%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym160539%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table160534%_
                            __tmp162878
                            _%field160537%_))))
                      (__tmp162875
                       (let ((__tmp162876
                              (let ()
                                (declare (not safe))
                                (##length _%slots160530%_))))
                         (declare (not safe))
                         (##iota __tmp162876 '1))))
                  (declare (not safe))
                  (##for-each __tmp162877 _%slots160530%_ __tmp162875))
                _%slot-table160534%_))
             (_%flags160560%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields160562%_ '#())
             (_%properties160564%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots160530%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp162879 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'hash-table::t
         'hash-table
         _%flags160560%_
         __table::t
         _%fields160562%_
         __tmp162879
         _%slot-vector160532%_
         _%slot-table160558%_
         _%properties160564%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots160493%_ '(gcht immediate))
             (_%slot-vector160495%_ (list->vector (cons '#f _%slots160493%_)))
             (_%slot-table160521%_
              (let ((_%slot-table160497%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp162882
                       (lambda (_%slot160499%_ _%field160500%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table160497%_
                            _%slot160499%_
                            _%field160500%_))
                         (let ((__tmp162883
                                (let ((_%sym160502%_ _%slot160499%_))
                                  (if (symbol? _%sym160502%_)
                                      (let ((_%sym160507%_ _%sym160502%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym160507%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym160502%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table160497%_
                            __tmp162883
                            _%field160500%_))))
                      (__tmp162880
                       (let ((__tmp162881
                              (let ()
                                (declare (not safe))
                                (##length _%slots160493%_))))
                         (declare (not safe))
                         (##iota __tmp162881 '1))))
                  (declare (not safe))
                  (##for-each __tmp162882 _%slots160493%_ __tmp162880))
                _%slot-table160497%_))
             (_%flags160523%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields160525%_ '#())
             (_%properties160527%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots160493%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp162884 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gc-hash-table::t
         'gc-hash-table
         _%flags160523%_
         __gc-table::t
         _%fields160525%_
         __tmp162884
         _%slot-vector160495%_
         _%slot-table160521%_
         _%properties160527%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp162886 (list))
            (__tmp162885
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp162886
         '(table lock)
         __tmp162885
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args160490%_
        (apply make-instance locked-hash-table::t _%$args160490%_)))
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
      (let ((__tmp162888 (list))
            (__tmp162887
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp162888
         '(table key-check)
         __tmp162887
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args160487%_
        (apply make-instance checked-hash-table::t _%$args160487%_)))
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
      (let ((__tmp162890 (list hash-table::t))
            (__tmp162889 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eq-hash-table::t
         'eq-hash-table
         __tmp162890
         '()
         __tmp162889
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args160484%_
        (apply make-instance eq-hash-table::t _%$args160484%_)))
    (define eqv-hash-table::t
      (let ((__tmp162892 (list hash-table::t))
            (__tmp162891 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eqv-hash-table::t
         'eqv-hash-table
         __tmp162892
         '()
         __tmp162891
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args160481%_
        (apply make-instance eqv-hash-table::t _%$args160481%_)))
    (define symbol-hash-table::t
      (let ((__tmp162894 (list hash-table::t))
            (__tmp162893 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'symbol-hash-table::t
         'symbol-hash-table
         __tmp162894
         '()
         __tmp162893
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args160478%_
        (apply make-instance symbol-hash-table::t _%$args160478%_)))
    (define string-hash-table::t
      (let ((__tmp162896 (list hash-table::t))
            (__tmp162895 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'string-hash-table::t
         'string-hash-table
         __tmp162896
         '()
         __tmp162895
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args160475%_
        (apply make-instance string-hash-table::t _%$args160475%_)))
    (define immediate-hash-table::t
      (let ((__tmp162898 (list hash-table::t))
            (__tmp162897 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'immediate-hash-table::t
         'immediate-hash-table
         __tmp162898
         '()
         __tmp162897
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args160472%_
        (apply make-instance immediate-hash-table::t _%$args160472%_)))
    (let* ((_%klass160435%_ hash-table::t)
           (_%id160438%_ 'HashTable::ref)
           (_%proc160441%_ raw-table-ref)
           (_%rebind?160444%_ '#f)
           (_%id160449%_ _%id160438%_)
           (_%proc160462%_ _%proc160441%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160435%_
       _%id160449%_
       _%proc160462%_
       _%rebind?160444%_))
    (let* ((_%klass160398%_ hash-table::t)
           (_%id160401%_ 'HashTable::set!)
           (_%proc160404%_ raw-table-set!)
           (_%rebind?160407%_ '#f)
           (_%id160412%_ _%id160401%_)
           (_%proc160425%_ _%proc160404%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160398%_
       _%id160412%_
       _%proc160425%_
       _%rebind?160407%_))
    (let* ((_%klass160361%_ hash-table::t)
           (_%id160364%_ 'HashTable::update!)
           (_%proc160367%_ raw-table-update!)
           (_%rebind?160370%_ '#f)
           (_%id160375%_ _%id160364%_)
           (_%proc160388%_ _%proc160367%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160361%_
       _%id160375%_
       _%proc160388%_
       _%rebind?160370%_))
    (let* ((_%klass160324%_ hash-table::t)
           (_%id160327%_ 'HashTable::delete!)
           (_%proc160330%_ raw-table-delete!)
           (_%rebind?160333%_ '#f)
           (_%id160338%_ _%id160327%_)
           (_%proc160351%_ _%proc160330%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160324%_
       _%id160338%_
       _%proc160351%_
       _%rebind?160333%_))
    (let* ((_%klass160287%_ hash-table::t)
           (_%id160290%_ 'HashTable::for-each)
           (_%proc160293%_ raw-table-for-each)
           (_%rebind?160296%_ '#f)
           (_%id160301%_ _%id160290%_)
           (_%proc160314%_ _%proc160293%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160287%_
       _%id160301%_
       _%proc160314%_
       _%rebind?160296%_))
    (let* ((_%klass160250%_ hash-table::t)
           (_%id160253%_ 'HashTable::length)
           (_%proc160256%_ &raw-table-count)
           (_%rebind?160259%_ '#f)
           (_%id160264%_ _%id160253%_)
           (_%proc160277%_ _%proc160256%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160250%_
       _%id160264%_
       _%proc160277%_
       _%rebind?160259%_))
    (let* ((_%klass160213%_ hash-table::t)
           (_%id160216%_ 'HashTable::copy)
           (_%proc160219%_ raw-table-copy)
           (_%rebind?160222%_ '#f)
           (_%id160227%_ _%id160216%_)
           (_%proc160240%_ _%proc160219%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160213%_
       _%id160227%_
       _%proc160240%_
       _%rebind?160222%_))
    (let* ((_%klass160176%_ hash-table::t)
           (_%id160179%_ 'HashTable::clear!)
           (_%proc160182%_ raw-table-clear!)
           (_%rebind?160185%_ '#f)
           (_%id160190%_ _%id160179%_)
           (_%proc160203%_ _%proc160182%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160176%_
       _%id160190%_
       _%proc160203%_
       _%rebind?160185%_))
    (let* ((_%klass160139%_ eq-hash-table::t)
           (_%id160142%_ 'HashTable::ref)
           (_%proc160145%_ eq-table-ref)
           (_%rebind?160148%_ '#f)
           (_%id160153%_ _%id160142%_)
           (_%proc160166%_ _%proc160145%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160139%_
       _%id160153%_
       _%proc160166%_
       _%rebind?160148%_))
    (let* ((_%klass160102%_ eq-hash-table::t)
           (_%id160105%_ 'HashTable::set!)
           (_%proc160108%_ eq-table-set!)
           (_%rebind?160111%_ '#f)
           (_%id160116%_ _%id160105%_)
           (_%proc160129%_ _%proc160108%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160102%_
       _%id160116%_
       _%proc160129%_
       _%rebind?160111%_))
    (let* ((_%klass160065%_ eq-hash-table::t)
           (_%id160068%_ 'HashTable::update!)
           (_%proc160071%_ eq-table-update!)
           (_%rebind?160074%_ '#f)
           (_%id160079%_ _%id160068%_)
           (_%proc160092%_ _%proc160071%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160065%_
       _%id160079%_
       _%proc160092%_
       _%rebind?160074%_))
    (let* ((_%klass160028%_ eq-hash-table::t)
           (_%id160031%_ 'HashTable::delete!)
           (_%proc160034%_ eq-table-delete!)
           (_%rebind?160037%_ '#f)
           (_%id160042%_ _%id160031%_)
           (_%proc160055%_ _%proc160034%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160028%_
       _%id160042%_
       _%proc160055%_
       _%rebind?160037%_))
    (let* ((_%klass159991%_ eqv-hash-table::t)
           (_%id159994%_ 'HashTable::ref)
           (_%proc159997%_ eqv-table-ref)
           (_%rebind?160000%_ '#f)
           (_%id160005%_ _%id159994%_)
           (_%proc160018%_ _%proc159997%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159991%_
       _%id160005%_
       _%proc160018%_
       _%rebind?160000%_))
    (let* ((_%klass159954%_ eqv-hash-table::t)
           (_%id159957%_ 'HashTable::set!)
           (_%proc159960%_ eqv-table-set!)
           (_%rebind?159963%_ '#f)
           (_%id159968%_ _%id159957%_)
           (_%proc159981%_ _%proc159960%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159954%_
       _%id159968%_
       _%proc159981%_
       _%rebind?159963%_))
    (let* ((_%klass159917%_ eqv-hash-table::t)
           (_%id159920%_ 'HashTable::update!)
           (_%proc159923%_ eqv-table-update!)
           (_%rebind?159926%_ '#f)
           (_%id159931%_ _%id159920%_)
           (_%proc159944%_ _%proc159923%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159917%_
       _%id159931%_
       _%proc159944%_
       _%rebind?159926%_))
    (let* ((_%klass159880%_ eqv-hash-table::t)
           (_%id159883%_ 'HashTable::delete!)
           (_%proc159886%_ eqv-table-delete!)
           (_%rebind?159889%_ '#f)
           (_%id159894%_ _%id159883%_)
           (_%proc159907%_ _%proc159886%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159880%_
       _%id159894%_
       _%proc159907%_
       _%rebind?159889%_))
    (let* ((_%klass159843%_ symbol-hash-table::t)
           (_%id159846%_ 'HashTable::ref)
           (_%proc159849%_ symbolic-table-ref)
           (_%rebind?159852%_ '#f)
           (_%id159857%_ _%id159846%_)
           (_%proc159870%_ _%proc159849%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159843%_
       _%id159857%_
       _%proc159870%_
       _%rebind?159852%_))
    (let* ((_%klass159806%_ symbol-hash-table::t)
           (_%id159809%_ 'HashTable::set!)
           (_%proc159812%_ symbolic-table-set!)
           (_%rebind?159815%_ '#f)
           (_%id159820%_ _%id159809%_)
           (_%proc159833%_ _%proc159812%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159806%_
       _%id159820%_
       _%proc159833%_
       _%rebind?159815%_))
    (let* ((_%klass159769%_ symbol-hash-table::t)
           (_%id159772%_ 'HashTable::update!)
           (_%proc159775%_ symbolic-table-update!)
           (_%rebind?159778%_ '#f)
           (_%id159783%_ _%id159772%_)
           (_%proc159796%_ _%proc159775%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159769%_
       _%id159783%_
       _%proc159796%_
       _%rebind?159778%_))
    (let* ((_%klass159732%_ symbol-hash-table::t)
           (_%id159735%_ 'HashTable::delete!)
           (_%proc159738%_ symbolic-table-delete!)
           (_%rebind?159741%_ '#f)
           (_%id159746%_ _%id159735%_)
           (_%proc159759%_ _%proc159738%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159732%_
       _%id159746%_
       _%proc159759%_
       _%rebind?159741%_))
    (let* ((_%klass159695%_ string-hash-table::t)
           (_%id159698%_ 'HashTable::ref)
           (_%proc159701%_ string-table-ref)
           (_%rebind?159704%_ '#f)
           (_%id159709%_ _%id159698%_)
           (_%proc159722%_ _%proc159701%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159695%_
       _%id159709%_
       _%proc159722%_
       _%rebind?159704%_))
    (let* ((_%klass159658%_ string-hash-table::t)
           (_%id159661%_ 'HashTable::set!)
           (_%proc159664%_ string-table-set!)
           (_%rebind?159667%_ '#f)
           (_%id159672%_ _%id159661%_)
           (_%proc159685%_ _%proc159664%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159658%_
       _%id159672%_
       _%proc159685%_
       _%rebind?159667%_))
    (let* ((_%klass159621%_ string-hash-table::t)
           (_%id159624%_ 'HashTable::update!)
           (_%proc159627%_ string-table-update!)
           (_%rebind?159630%_ '#f)
           (_%id159635%_ _%id159624%_)
           (_%proc159648%_ _%proc159627%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159621%_
       _%id159635%_
       _%proc159648%_
       _%rebind?159630%_))
    (let* ((_%klass159584%_ string-hash-table::t)
           (_%id159587%_ 'HashTable::delete!)
           (_%proc159590%_ string-table-delete!)
           (_%rebind?159593%_ '#f)
           (_%id159598%_ _%id159587%_)
           (_%proc159611%_ _%proc159590%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159584%_
       _%id159598%_
       _%proc159611%_
       _%rebind?159593%_))
    (let* ((_%klass159547%_ immediate-hash-table::t)
           (_%id159550%_ 'HashTable::ref)
           (_%proc159553%_ immediate-table-ref)
           (_%rebind?159556%_ '#f)
           (_%id159561%_ _%id159550%_)
           (_%proc159574%_ _%proc159553%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159547%_
       _%id159561%_
       _%proc159574%_
       _%rebind?159556%_))
    (let* ((_%klass159510%_ immediate-hash-table::t)
           (_%id159513%_ 'HashTable::set!)
           (_%proc159516%_ immediate-table-set!)
           (_%rebind?159519%_ '#f)
           (_%id159524%_ _%id159513%_)
           (_%proc159537%_ _%proc159516%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159510%_
       _%id159524%_
       _%proc159537%_
       _%rebind?159519%_))
    (let* ((_%klass159473%_ immediate-hash-table::t)
           (_%id159476%_ 'HashTable::update!)
           (_%proc159479%_ immediate-table-update!)
           (_%rebind?159482%_ '#f)
           (_%id159487%_ _%id159476%_)
           (_%proc159500%_ _%proc159479%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159473%_
       _%id159487%_
       _%proc159500%_
       _%rebind?159482%_))
    (let* ((_%klass159436%_ immediate-hash-table::t)
           (_%id159439%_ 'HashTable::delete!)
           (_%proc159442%_ immediate-table-delete!)
           (_%rebind?159445%_ '#f)
           (_%id159450%_ _%id159439%_)
           (_%proc159463%_ _%proc159442%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159436%_
       _%id159450%_
       _%proc159463%_
       _%rebind?159445%_))
    (let* ((_%klass159399%_ gc-hash-table::t)
           (_%id159402%_ 'HashTable::ref)
           (_%proc159405%_ gc-table-ref)
           (_%rebind?159408%_ '#f)
           (_%id159413%_ _%id159402%_)
           (_%proc159426%_ _%proc159405%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159399%_
       _%id159413%_
       _%proc159426%_
       _%rebind?159408%_))
    (let* ((_%klass159362%_ gc-hash-table::t)
           (_%id159365%_ 'HashTable::set!)
           (_%proc159368%_ gc-table-set!)
           (_%rebind?159371%_ '#f)
           (_%id159376%_ _%id159365%_)
           (_%proc159389%_ _%proc159368%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159362%_
       _%id159376%_
       _%proc159389%_
       _%rebind?159371%_))
    (let* ((_%klass159325%_ gc-hash-table::t)
           (_%id159328%_ 'HashTable::update!)
           (_%proc159331%_ gc-table-update!)
           (_%rebind?159334%_ '#f)
           (_%id159339%_ _%id159328%_)
           (_%proc159352%_ _%proc159331%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159325%_
       _%id159339%_
       _%proc159352%_
       _%rebind?159334%_))
    (let* ((_%klass159288%_ gc-hash-table::t)
           (_%id159291%_ 'HashTable::delete!)
           (_%proc159294%_ gc-table-delete!)
           (_%rebind?159297%_ '#f)
           (_%id159302%_ _%id159291%_)
           (_%proc159315%_ _%proc159294%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159288%_
       _%id159302%_
       _%proc159315%_
       _%rebind?159297%_))
    (let* ((_%klass159251%_ gc-hash-table::t)
           (_%id159254%_ 'HashTable::for-each)
           (_%proc159257%_ gc-table-for-each)
           (_%rebind?159260%_ '#f)
           (_%id159265%_ _%id159254%_)
           (_%proc159278%_ _%proc159257%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159251%_
       _%id159265%_
       _%proc159278%_
       _%rebind?159260%_))
    (let* ((_%klass159214%_ gc-hash-table::t)
           (_%id159217%_ 'HashTable::length)
           (_%proc159220%_ gc-table-length)
           (_%rebind?159223%_ '#f)
           (_%id159228%_ _%id159217%_)
           (_%proc159241%_ _%proc159220%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159214%_
       _%id159228%_
       _%proc159241%_
       _%rebind?159223%_))
    (let* ((_%klass159177%_ gc-hash-table::t)
           (_%id159180%_ 'HashTable::copy)
           (_%proc159183%_ gc-table-copy)
           (_%rebind?159186%_ '#f)
           (_%id159191%_ _%id159180%_)
           (_%proc159204%_ _%proc159183%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159177%_
       _%id159191%_
       _%proc159204%_
       _%rebind?159186%_))
    (let* ((_%klass159140%_ gc-hash-table::t)
           (_%id159143%_ 'HashTable::clear!)
           (_%proc159146%_ gc-table-clear!)
           (_%rebind?159149%_ '#f)
           (_%id159154%_ _%id159143%_)
           (_%proc159167%_ _%proc159146%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159140%_
       _%id159154%_
       _%proc159167%_
       _%rebind?159149%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref150401%_
      (lambda (_%self159061%_ _%key159063%_ _%default159064%_)
        (let* ((_%self159067%_ _%self159061%_)
               (_%key159076%_ _%key159063%_)
               (_%default159084%_ _%default159064%_))
          (let ((_%h159093%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self159067%_ '1 '#f '#f)))
                (_%l159095%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self159067%_ '2 '#f '#f))))
            (let ((__tmp162901
                   (lambda ()
                     (let ((_%self148853159099%_ _%l159095%_))
                       (declare (not safe))
                       (let ((_%object159102159107%_
                              (##unchecked-structure-ref
                               _%self148853159099%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method159103159108%_
                              (##unchecked-structure-ref
                               _%self148853159099%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method159103159108%_ _%object159102159107%_)))))
                  (__tmp162900
                   (lambda ()
                     (let* ((_%self147948159111%_ _%h159093%_)
                            (_%key159114%_ _%key159076%_)
                            (_%default159117%_ _%default159084%_))
                       (declare (not safe))
                       (let ((_%object159120159125%_
                              (##unchecked-structure-ref
                               _%self147948159111%_
                               '1
                               '#f
                               'ref))
                             (_%method159121159126%_
                              (##unchecked-structure-ref
                               _%self147948159111%_
                               '7
                               '#f
                               'ref)))
                         (_%method159121159126%_
                          _%object159120159125%_
                          _%key159114%_
                          _%default159117%_)))))
                  (__tmp162899
                   (lambda ()
                     (let ((_%self149144159129%_ _%l159095%_))
                       (declare (not safe))
                       (let ((_%object159132159137%_
                              (##unchecked-structure-ref
                               _%self149144159129%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method159133159138%_
                              (##unchecked-structure-ref
                               _%self149144159129%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method159133159138%_ _%object159132159137%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162901 __tmp162900 __tmp162899))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref150401%_
       '#f))
    (define _%locked-hash-table::HashTable::set!150403%_
      (lambda (_%self158859%_ _%key158861%_ _%value158862%_)
        (let* ((_%self158865%_ _%self158859%_)
               (_%key158874%_ _%key158861%_)
               (_%value158882%_ _%value158862%_))
          (let ((_%h158891%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158865%_ '1 '#f '#f)))
                (_%l158893%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158865%_ '2 '#f '#f))))
            (let ((__tmp162904
                   (lambda ()
                     (let ((_%self149435158897%_ _%l158893%_))
                       (declare (not safe))
                       (let ((_%object158900158905%_
                              (##unchecked-structure-ref
                               _%self149435158897%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method158901158906%_
                              (##unchecked-structure-ref
                               _%self149435158897%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method158901158906%_ _%object158900158905%_)))))
                  (__tmp162903
                   (lambda ()
                     (let* ((_%self148243158909%_ _%h158891%_)
                            (_%key158912%_ _%key158874%_)
                            (_%value158915%_ _%value158882%_))
                       (declare (not safe))
                       (let ((_%object158918158923%_
                              (##unchecked-structure-ref
                               _%self148243158909%_
                               '1
                               '#f
                               'set!))
                             (_%method158919158924%_
                              (##unchecked-structure-ref
                               _%self148243158909%_
                               '8
                               '#f
                               'set!)))
                         (_%method158919158924%_
                          _%object158918158923%_
                          _%key158912%_
                          _%value158915%_)))))
                  (__tmp162902
                   (lambda ()
                     (let ((_%self149726158927%_ _%l158893%_))
                       (declare (not safe))
                       (let ((_%object158930158935%_
                              (##unchecked-structure-ref
                               _%self149726158927%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method158931158936%_
                              (##unchecked-structure-ref
                               _%self149726158927%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method158931158936%_ _%object158930158935%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162904 __tmp162903 __tmp162902))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!150403%_
       '#f))
    (define _%locked-hash-table::HashTable::update!150405%_
      (lambda (_%self158645%_ _%key158647%_ _%update158648%_ _%default158649%_)
        (let* ((_%self158652%_ _%self158645%_)
               (_%key158661%_ _%key158647%_)
               (_%update158669%_ _%update158648%_)
               (_%default158677%_ _%default158649%_))
          (let ((_%h158686%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158652%_ '1 '#f '#f)))
                (_%l158688%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158652%_ '2 '#f '#f))))
            (let ((__tmp162907
                   (lambda ()
                     (let ((_%self149435158692%_ _%l158688%_))
                       (declare (not safe))
                       (let ((_%object158695158700%_
                              (##unchecked-structure-ref
                               _%self149435158692%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method158696158701%_
                              (##unchecked-structure-ref
                               _%self149435158692%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method158696158701%_ _%object158695158700%_)))))
                  (__tmp162906
                   (lambda ()
                     (let* ((_%self148538158704%_ _%h158686%_)
                            (_%key158707%_ _%key158661%_)
                            (_%proc158710%_ _%update158669%_)
                            (_%default158713%_ _%default158677%_))
                       (declare (not safe))
                       (let ((_%object158716158721%_
                              (##unchecked-structure-ref
                               _%self148538158704%_
                               '1
                               '#f
                               'update!))
                             (_%method158717158722%_
                              (##unchecked-structure-ref
                               _%self148538158704%_
                               '9
                               '#f
                               'update!)))
                         (_%method158717158722%_
                          _%object158716158721%_
                          _%key158707%_
                          _%proc158710%_
                          _%default158713%_)))))
                  (__tmp162905
                   (lambda ()
                     (let ((_%self149726158725%_ _%l158688%_))
                       (declare (not safe))
                       (let ((_%object158728158733%_
                              (##unchecked-structure-ref
                               _%self149726158725%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method158729158734%_
                              (##unchecked-structure-ref
                               _%self149726158725%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method158729158734%_ _%object158728158733%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162907 __tmp162906 __tmp162905))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!150405%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!150407%_
      (lambda (_%self158455%_ _%key158457%_)
        (let* ((_%self158460%_ _%self158455%_) (_%key158469%_ _%key158457%_))
          (let ((_%h158478%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158460%_ '1 '#f '#f)))
                (_%l158480%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158460%_ '2 '#f '#f))))
            (let ((__tmp162910
                   (lambda ()
                     (let ((_%self149435158484%_ _%l158480%_))
                       (declare (not safe))
                       (let ((_%object158487158492%_
                              (##unchecked-structure-ref
                               _%self149435158484%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method158488158493%_
                              (##unchecked-structure-ref
                               _%self149435158484%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method158488158493%_ _%object158487158492%_)))))
                  (__tmp162909
                   (lambda ()
                     (let* ((_%self147050158496%_ _%h158478%_)
                            (_%key158499%_ _%key158469%_))
                       (declare (not safe))
                       (let ((_%object158502158507%_
                              (##unchecked-structure-ref
                               _%self147050158496%_
                               '1
                               '#f
                               'delete!))
                             (_%method158503158508%_
                              (##unchecked-structure-ref
                               _%self147050158496%_
                               '4
                               '#f
                               'delete!)))
                         (_%method158503158508%_
                          _%object158502158507%_
                          _%key158499%_)))))
                  (__tmp162908
                   (lambda ()
                     (let ((_%self149726158511%_ _%l158480%_))
                       (declare (not safe))
                       (let ((_%object158514158519%_
                              (##unchecked-structure-ref
                               _%self149726158511%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method158515158520%_
                              (##unchecked-structure-ref
                               _%self149726158511%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method158515158520%_ _%object158514158519%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162910 __tmp162909 __tmp162908))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!150407%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each150409%_
      (lambda (_%self158265%_ _%proc158267%_)
        (let* ((_%self158270%_ _%self158265%_) (_%proc158279%_ _%proc158267%_))
          (let ((_%h158288%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158270%_ '1 '#f '#f)))
                (_%l158290%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158270%_ '2 '#f '#f))))
            (let ((__tmp162913
                   (lambda ()
                     (let ((_%self148853158294%_ _%l158290%_))
                       (declare (not safe))
                       (let ((_%object158297158302%_
                              (##unchecked-structure-ref
                               _%self148853158294%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method158298158303%_
                              (##unchecked-structure-ref
                               _%self148853158294%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method158298158303%_ _%object158297158302%_)))))
                  (__tmp162912
                   (lambda ()
                     (let* ((_%self147343158306%_ _%h158288%_)
                            (_%proc158309%_ _%proc158279%_))
                       (declare (not safe))
                       (let ((_%object158312158317%_
                              (##unchecked-structure-ref
                               _%self147343158306%_
                               '1
                               '#f
                               'for-each))
                             (_%method158313158318%_
                              (##unchecked-structure-ref
                               _%self147343158306%_
                               '5
                               '#f
                               'for-each)))
                         (_%method158313158318%_
                          _%object158312158317%_
                          _%proc158309%_)))))
                  (__tmp162911
                   (lambda ()
                     (let ((_%self149144158321%_ _%l158290%_))
                       (declare (not safe))
                       (let ((_%object158324158329%_
                              (##unchecked-structure-ref
                               _%self149144158321%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method158325158330%_
                              (##unchecked-structure-ref
                               _%self149144158321%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method158325158330%_ _%object158324158329%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162913 __tmp162912 __tmp162911))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each150409%_
       '#f))
    (define _%locked-hash-table::HashTable::length150411%_
      (lambda (_%self158080%_)
        (let ((_%self158084%_ _%self158080%_))
          (let ((_%h158094%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158084%_ '1 '#f '#f)))
                (_%l158096%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self158084%_ '2 '#f '#f))))
            (let* ((_%g158098158100%_
                    (let ((__tmp162916
                           (lambda ()
                             (let ((_%self148853158107%_ _%l158096%_))
                               (declare (not safe))
                               (let ((_%object158110158115%_
                                      (##unchecked-structure-ref
                                       _%self148853158107%_
                                       '1
                                       '#f
                                       'read-lock!))
                                     (_%method158111158116%_
                                      (##unchecked-structure-ref
                                       _%self148853158107%_
                                       '2
                                       '#f
                                       'read-lock!)))
                                 (_%method158111158116%_
                                  _%object158110158115%_)))))
                          (__tmp162915
                           (lambda ()
                             (let ((_%self147654158119%_ _%h158094%_))
                               (declare (not safe))
                               (let ((_%object158122158127%_
                                      (##unchecked-structure-ref
                                       _%self147654158119%_
                                       '1
                                       '#f
                                       'length))
                                     (_%method158123158128%_
                                      (##unchecked-structure-ref
                                       _%self147654158119%_
                                       '6
                                       '#f
                                       'length)))
                                 (_%method158123158128%_
                                  _%object158122158127%_)))))
                          (__tmp162914
                           (lambda ()
                             (let ((_%self149144158131%_ _%l158096%_))
                               (declare (not safe))
                               (let ((_%object158134158139%_
                                      (##unchecked-structure-ref
                                       _%self149144158131%_
                                       '1
                                       '#f
                                       'read-unlock!))
                                     (_%method158135158140%_
                                      (##unchecked-structure-ref
                                       _%self149144158131%_
                                       '3
                                       '#f
                                       'read-unlock!)))
                                 (_%method158135158140%_
                                  _%object158134158139%_))))))
                      (declare (not safe))
                      (##dynamic-wind __tmp162916 __tmp162915 __tmp162914)))
                   (_%val158103%_ _%g158098158100%_))
              (if (fixnum? _%val158103%_)
                  _%val158103%_
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/hash
                     'contract:
                     '(fixnum? val)
                     'value:
                     _%val158103%_)
                    '#!void)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length150411%_
       '#f))
    (define _%locked-hash-table::HashTable::copy150413%_
      (lambda (_%self157899%_)
        (let ((_%self157903%_ _%self157899%_))
          (let ((_%h157913%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157903%_ '1 '#f '#f)))
                (_%l157915%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157903%_ '2 '#f '#f))))
            (let ((_%$obj157954%_
                   (let ((__tmp162919
                          (lambda ()
                            (let ((_%self148853157919%_ _%l157915%_))
                              (declare (not safe))
                              (let ((_%object157922157927%_
                                     (##unchecked-structure-ref
                                      _%self148853157919%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method157923157928%_
                                     (##unchecked-structure-ref
                                      _%self148853157919%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method157923157928%_
                                 _%object157922157927%_)))))
                         (__tmp162918
                          (lambda ()
                            (let ((_%self146756157931%_ _%h157913%_))
                              (declare (not safe))
                              (let ((_%object157934157939%_
                                     (##unchecked-structure-ref
                                      _%self146756157931%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method157935157940%_
                                     (##unchecked-structure-ref
                                      _%self146756157931%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method157935157940%_
                                 _%object157934157939%_)))))
                         (__tmp162917
                          (lambda ()
                            (let ((_%self149144157943%_ _%l157915%_))
                              (declare (not safe))
                              (let ((_%object157946157951%_
                                     (##unchecked-structure-ref
                                      _%self149144157943%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method157947157952%_
                                     (##unchecked-structure-ref
                                      _%self149144157943%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method157947157952%_
                                 _%object157946157951%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp162919 __tmp162918 __tmp162917))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj157954%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj157954%_)))
                       '#t)
                  _%$obj157954%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj157954%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy150413%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!150415%_
      (lambda (_%self157721%_)
        (let ((_%self157725%_ _%self157721%_))
          (let ((_%h157735%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157725%_ '1 '#f '#f)))
                (_%l157737%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157725%_ '2 '#f '#f))))
            (let ((__tmp162922
                   (lambda ()
                     (let ((_%self149435157741%_ _%l157737%_))
                       (declare (not safe))
                       (let ((_%object157744157749%_
                              (##unchecked-structure-ref
                               _%self149435157741%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method157745157750%_
                              (##unchecked-structure-ref
                               _%self149435157741%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method157745157750%_ _%object157744157749%_)))))
                  (__tmp162921
                   (lambda ()
                     (let ((_%self146464157753%_ _%h157735%_))
                       (declare (not safe))
                       (let ((_%object157756157761%_
                              (##unchecked-structure-ref
                               _%self146464157753%_
                               '1
                               '#f
                               'clear!))
                             (_%method157757157762%_
                              (##unchecked-structure-ref
                               _%self146464157753%_
                               '2
                               '#f
                               'clear!)))
                         (_%method157757157762%_ _%object157756157761%_)))))
                  (__tmp162920
                   (lambda ()
                     (let ((_%self149726157765%_ _%l157737%_))
                       (declare (not safe))
                       (let ((_%object157768157773%_
                              (##unchecked-structure-ref
                               _%self149726157765%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method157769157774%_
                              (##unchecked-structure-ref
                               _%self149726157765%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method157769157774%_ _%object157768157773%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp162922 __tmp162921 __tmp162920))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!150415%_
       '#f))
    (let* ((_%klass157561%_ (macro-type-mutex))
           (_%id157564%_ 'Locker::read-lock!)
           (_%proc157567%_ mutex-lock!)
           (_%rebind?157570%_ '#f)
           (_%id157575%_ _%id157564%_)
           (_%proc157588%_ _%proc157567%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157561%_
       _%id157575%_
       _%proc157588%_
       _%rebind?157570%_))
    (let* ((_%klass157524%_ (macro-type-mutex))
           (_%id157527%_ 'Locker::read-unlock!)
           (_%proc157530%_ mutex-unlock!)
           (_%rebind?157533%_ '#f)
           (_%id157538%_ _%id157527%_)
           (_%proc157551%_ _%proc157530%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157524%_
       _%id157538%_
       _%proc157551%_
       _%rebind?157533%_))
    (let* ((_%klass157487%_ (macro-type-mutex))
           (_%id157490%_ 'Locker::write-lock!)
           (_%proc157493%_ mutex-lock!)
           (_%rebind?157496%_ '#f)
           (_%id157501%_ _%id157490%_)
           (_%proc157514%_ _%proc157493%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157487%_
       _%id157501%_
       _%proc157514%_
       _%rebind?157496%_))
    (let* ((_%klass157450%_ (macro-type-mutex))
           (_%id157453%_ 'Locker::write-unlock!)
           (_%proc157456%_ mutex-unlock!)
           (_%rebind?157459%_ '#f)
           (_%id157464%_ _%id157453%_)
           (_%proc157477%_ _%proc157456%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157450%_
       _%id157464%_
       _%proc157477%_
       _%rebind?157459%_))
    (define _%checked-hash-table::HashTable::ref150626%_
      (lambda (_%self157391%_ _%key157392%_ _%default157393%_)
        (let* ((_%self157396%_ _%self157391%_)
               (_%key157405%_ _%key157392%_)
               (_%default157413%_ _%default157393%_))
          (declare (not safe))
          (let ((_%h157424%_
                 (##unchecked-structure-ref _%self157396%_ '1 '#f '#f))
                (_%key?157426%_
                 (##unchecked-structure-ref _%self157396%_ '2 '#f '#f)))
            (if (_%key?157426%_ _%key157405%_)
                (let* ((_%self147948157433%_ _%h157424%_)
                       (_%key157436%_ _%key157405%_)
                       (_%default157439%_ _%default157413%_))
                  (declare (not safe))
                  (let ((_%object157442157447%_
                         (##unchecked-structure-ref
                          _%self147948157433%_
                          '1
                          '#f
                          'ref))
                        (_%method157443157448%_
                         (##unchecked-structure-ref
                          _%self147948157433%_
                          '7
                          '#f
                          'ref)))
                    (_%method157443157448%_
                     _%object157442157447%_
                     _%key157436%_
                     _%default157439%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key157405%_ (cons _%default157413%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref150626%_
       '#f))
    (define _%checked-hash-table::HashTable::set!150628%_
      (lambda (_%self157209%_ _%key157210%_ _%value157211%_)
        (let* ((_%self157214%_ _%self157209%_)
               (_%key157223%_ _%key157210%_)
               (_%value157231%_ _%value157211%_))
          (declare (not safe))
          (let ((_%h157242%_
                 (##unchecked-structure-ref _%self157214%_ '1 '#f '#f))
                (_%key?157244%_
                 (##unchecked-structure-ref _%self157214%_ '2 '#f '#f)))
            (if (_%key?157244%_ _%key157223%_)
                (let* ((_%self148243157251%_ _%h157242%_)
                       (_%key157254%_ _%key157223%_)
                       (_%value157257%_ _%value157231%_))
                  (declare (not safe))
                  (let ((_%object157260157265%_
                         (##unchecked-structure-ref
                          _%self148243157251%_
                          '1
                          '#f
                          'set!))
                        (_%method157261157266%_
                         (##unchecked-structure-ref
                          _%self148243157251%_
                          '8
                          '#f
                          'set!)))
                    (_%method157261157266%_
                     _%object157260157265%_
                     _%key157254%_
                     _%value157257%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key157223%_ (cons _%value157231%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!150628%_
       '#f))
    (define _%checked-hash-table::HashTable::update!150630%_
      (lambda (_%self157014%_ _%key157015%_ _%update157016%_ _%default157017%_)
        (let* ((_%self157020%_ _%self157014%_)
               (_%key157029%_ _%key157015%_)
               (_%update157037%_ _%update157016%_)
               (_%default157045%_ _%default157017%_))
          (declare (not safe))
          (let ((_%h157056%_
                 (##unchecked-structure-ref _%self157020%_ '1 '#f '#f))
                (_%key?157058%_
                 (##unchecked-structure-ref _%self157020%_ '2 '#f '#f)))
            (if (_%key?157058%_ _%key157029%_)
                (let* ((_%self148538157066%_ _%h157056%_)
                       (_%key157069%_ _%key157029%_)
                       (_%proc157072%_ _%update157037%_)
                       (_%default157075%_ _%default157045%_))
                  (declare (not safe))
                  (let ((_%object157078157083%_
                         (##unchecked-structure-ref
                          _%self148538157066%_
                          '1
                          '#f
                          'update!))
                        (_%method157079157084%_
                         (##unchecked-structure-ref
                          _%self148538157066%_
                          '9
                          '#f
                          'update!)))
                    (_%method157079157084%_
                     _%object157078157083%_
                     _%key157069%_
                     _%proc157072%_
                     _%default157075%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key157029%_
                         (cons _%update157037%_ (cons _%default157045%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!150630%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!150632%_
      (lambda (_%self156845%_ _%key156846%_)
        (let* ((_%self156849%_ _%self156845%_) (_%key156858%_ _%key156846%_))
          (declare (not safe))
          (let ((_%h156869%_
                 (##unchecked-structure-ref _%self156849%_ '1 '#f '#f))
                (_%key?156871%_
                 (##unchecked-structure-ref _%self156849%_ '2 '#f '#f)))
            (if (_%key?156871%_ _%key156858%_)
                (let* ((_%self147050156877%_ _%h156869%_)
                       (_%key156880%_ _%key156858%_))
                  (declare (not safe))
                  (let ((_%object156883156888%_
                         (##unchecked-structure-ref
                          _%self147050156877%_
                          '1
                          '#f
                          'delete!))
                        (_%method156884156889%_
                         (##unchecked-structure-ref
                          _%self147050156877%_
                          '4
                          '#f
                          'delete!)))
                    (_%method156884156889%_
                     _%object156883156888%_
                     _%key156880%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key156858%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!150632%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each150634%_
      (lambda (_%self156676%_ _%proc156677%_)
        (let* ((_%self156680%_ _%self156676%_) (_%proc156689%_ _%proc156677%_))
          (declare (not safe))
          (let ((_%h156700%_
                 (##unchecked-structure-ref _%self156680%_ '1 '#f '#f))
                (_%key?156702%_
                 (##unchecked-structure-ref _%self156680%_ '2 '#f '#f)))
            (if '#t
                (let* ((_%self147343156708%_ _%h156700%_)
                       (_%proc156711%_ _%proc156689%_))
                  (declare (not safe))
                  (let ((_%object156714156719%_
                         (##unchecked-structure-ref
                          _%self147343156708%_
                          '1
                          '#f
                          'for-each))
                        (_%method156715156720%_
                         (##unchecked-structure-ref
                          _%self147343156708%_
                          '5
                          '#f
                          'for-each)))
                    (_%method156715156720%_
                     _%object156714156719%_
                     _%proc156711%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc156689%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each150634%_
       '#f))
    (define _%checked-hash-table::HashTable::length150636%_
      (lambda (_%self156522%_)
        (let ((_%self156525%_ _%self156522%_))
          (declare (not safe))
          (let ((_%h156537%_
                 (##unchecked-structure-ref _%self156525%_ '1 '#f '#f))
                (_%key?156539%_
                 (##unchecked-structure-ref _%self156525%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self147654156542%_ _%h156537%_))
                  (declare (not safe))
                  (let ((_%object156545156550%_
                         (##unchecked-structure-ref
                          _%self147654156542%_
                          '1
                          '#f
                          'length))
                        (_%method156546156551%_
                         (##unchecked-structure-ref
                          _%self147654156542%_
                          '6
                          '#f
                          'length)))
                    (_%method156546156551%_ _%object156545156550%_)))
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
       _%checked-hash-table::HashTable::length150636%_
       '#f))
    (define _%checked-hash-table::HashTable::copy150638%_
      (lambda (_%self156368%_)
        (let ((_%self156371%_ _%self156368%_))
          (declare (not safe))
          (let ((_%h156383%_
                 (##unchecked-structure-ref _%self156371%_ '1 '#f '#f))
                (_%key?156385%_
                 (##unchecked-structure-ref _%self156371%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self146756156388%_ _%h156383%_))
                  (declare (not safe))
                  (let ((_%object156391156396%_
                         (##unchecked-structure-ref
                          _%self146756156388%_
                          '1
                          '#f
                          'copy))
                        (_%method156392156397%_
                         (##unchecked-structure-ref
                          _%self146756156388%_
                          '3
                          '#f
                          'copy)))
                    (_%method156392156397%_ _%object156391156396%_)))
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
       _%checked-hash-table::HashTable::copy150638%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!150640%_
      (lambda (_%self156214%_)
        (let ((_%self156217%_ _%self156214%_))
          (declare (not safe))
          (let ((_%h156229%_
                 (##unchecked-structure-ref _%self156217%_ '1 '#f '#f))
                (_%key?156231%_
                 (##unchecked-structure-ref _%self156217%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self146464156234%_ _%h156229%_))
                  (declare (not safe))
                  (let ((_%object156237156242%_
                         (##unchecked-structure-ref
                          _%self146464156234%_
                          '1
                          '#f
                          'clear!))
                        (_%method156238156243%_
                         (##unchecked-structure-ref
                          _%self146464156234%_
                          '2
                          '#f
                          'clear!)))
                    (_%method156238156243%_ _%object156237156242%_)))
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
       _%checked-hash-table::HashTable::clear!150640%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table156084%_
               _%count156085%_
               _%free156086%_
               _%hash156087%_
               _%test156088%_
               _%seed156089%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table156084%_
           _%count156085%_
           _%free156086%_
           _%hash156087%_
           _%test156088%_
           _%seed156089%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords155494%_
               _%size-hint155484155495%_
               _%seed155485155496%_
               _%test155486155497%_
               _%hash155487155498%_
               _%lock155488155499%_
               _%check155489155500%_
               _%weak-keys155490155501%_
               _%weak-values155491155502%_)
        (let* ((_%size-hint155504%_
                (if (eq? _%size-hint155484155495%_ absent-value)
                    '#f
                    _%size-hint155484155495%_))
               (_%seed155506%_
                (if (eq? _%seed155485155496%_ absent-value)
                    '#f
                    _%seed155485155496%_))
               (_%test155508%_
                (if (eq? _%test155486155497%_ absent-value)
                    equal?
                    _%test155486155497%_))
               (_%hash155510%_
                (if (eq? _%hash155487155498%_ absent-value)
                    '#f
                    _%hash155487155498%_))
               (_%lock155512%_
                (if (eq? _%lock155488155499%_ absent-value)
                    '#f
                    _%lock155488155499%_))
               (_%check155514%_
                (if (eq? _%check155489155500%_ absent-value)
                    '#f
                    _%check155489155500%_))
               (_%weak-keys155516%_
                (if (eq? _%weak-keys155490155501%_ absent-value)
                    '#f
                    _%weak-keys155490155501%_))
               (_%weak-values155518%_
                (if (eq? _%weak-values155491155502%_ absent-value)
                    '#f
                    _%weak-values155491155502%_)))
          (letrec ((_%table-seed155521%_
                    (lambda ()
                      (if (fixnum? _%seed155506%_)
                          _%seed155506%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock155665%_
                    (lambda (_%ht156052%_)
                      (let ((_%ht156055%_ _%ht156052%_))
                        (if _%lock155512%_
                            (let ((_%$obj156067%_
                                   (let ((__tmp162923
                                          (let ((_%$obj156064%_
                                                 _%lock155512%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj156064%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj156064%_)))
                                                     '#t)
                                                _%$obj156064%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj156064%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht156055%_
                                      __tmp162923))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj156067%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj156067%_)))
                                       '#t)
                                  _%$obj156067%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj156067%_))))
                            _%ht156055%_))))
                   (_%wrap-lock155666%_
                    (lambda (_%ht156040%_)
                      (let ((_%ht156043%_ _%ht156040%_))
                        (_%__wrap-lock155665%_ _%ht156043%_))))
                   (_%__wrap-checked155788%_
                    (lambda (_%ht156024%_ _%implicit156025%_)
                      (let ((_%ht156028%_ _%ht156024%_))
                        (if _%check155514%_
                            (let ((_%$obj156037%_
                                   (let ((__tmp162924
                                          (if (procedure? _%check155514%_)
                                              _%check155514%_
                                              _%implicit156025%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht156028%_
                                      __tmp162924))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj156037%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj156037%_)))
                                       '#t)
                                  _%$obj156037%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj156037%_))))
                            _%ht156028%_))))
                   (_%wrap-checked155789%_
                    (lambda (_%ht156011%_ _%implicit156012%_)
                      (let ((_%ht156015%_ _%ht156011%_))
                        (_%__wrap-checked155788%_
                         _%ht156015%_
                         _%implicit156012%_))))
                   (_%make155790%_
                    (lambda (_%kons155959%_
                             _%key?155960%_
                             _%hash155961%_
                             _%test155962%_)
                      (let* ((_%size155965%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint155504%_)))
                             (_%table155967%_
                              (let ((__tmp162925 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size155965%_ __tmp162925)))
                             (_%ht155972%_
                              (let ((_%$obj155969%_
                                     (_%kons155959%_
                                      _%table155967%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size155965%_ '2))
                                      _%hash155961%_
                                      _%test155962%_
                                      (_%table-seed155521%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj155969%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj155969%_)))
                                         '#t)
                                    _%$obj155969%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj155969%_)))))
                             (_%ht155994%_
                              (let* ((_%ht155975%_ _%ht155972%_)
                                     (_%ht155979%_ _%ht155975%_))
                                (_%__wrap-lock155665%_ _%ht155979%_)))
                             (_%implicit155997%_ _%key?155960%_)
                             (_%ht156001%_ _%ht155994%_))
                        (_%__wrap-checked155788%_
                         _%ht156001%_
                         _%implicit155997%_))))
                   (_%make-gc-hash-table155791%_
                    (lambda ()
                      (let* ((_%ht155924%_
                              (let ((_%$obj155921%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint155504%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj155921%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj155921%_)))
                                         '#t)
                                    _%$obj155921%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj155921%_)))))
                             (_%ht155942%_
                              (let* ((_%ht155926%_ _%ht155924%_)
                                     (_%ht155930%_ _%ht155926%_))
                                (_%__wrap-lock155665%_ _%ht155930%_)))
                             (_%implicit155945%_ true)
                             (_%ht155949%_ _%ht155942%_))
                        (_%__wrap-checked155788%_
                         _%ht155949%_
                         _%implicit155945%_))))
                   (_%make-gambit-table155792%_
                    (lambda ()
                      (let* ((_%size155861%_
                              (let ((_%$e155858%_ _%size-hint155504%_))
                                (if _%$e155858%_
                                    _%$e155858%_
                                    (macro-absent-obj))))
                             (_%test155866%_
                              (let ((_%$e155863%_ _%test155508%_))
                                (if _%$e155863%_ _%$e155863%_ equal?)))
                             (_%hash155874%_
                              (let ((_%$e155868%_ _%hash155510%_))
                                (if _%$e155868%_
                                    _%$e155868%_
                                    (if (eq? _%test155866%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test155866%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht155879%_
                              (let ((_%$obj155876%_
                                     (make-table
                                      'size:
                                      _%size155861%_
                                      'test:
                                      _%test155866%_
                                      'hash:
                                      _%hash155874%_
                                      'weak-keys:
                                      _%weak-keys155516%_
                                      'weak-values:
                                      _%weak-values155518%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj155876%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj155876%_)))
                                         '#t)
                                    _%$obj155876%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj155876%_)))))
                             (_%ht155902%_
                              (let* ((_%ht155882%_ _%ht155879%_)
                                     (_%ht155886%_ _%ht155882%_))
                                (_%__wrap-lock155665%_ _%ht155886%_)))
                             (_%implicit155905%_ true)
                             (_%ht155909%_ _%ht155902%_))
                        (_%__wrap-checked155788%_
                         _%ht155909%_
                         _%implicit155905%_)))))
            (if (or _%weak-keys155516%_ _%weak-values155518%_)
                (_%make-gambit-table155792%_)
                (if (and (or (eq? _%test155508%_ eq?)
                             (eq? _%test155508%_ ##eq?))
                         (or (not _%hash155510%_)
                             (eq? _%hash155510%_ eq?-hash)
                             (eq? _%hash155510%_ eq-hash))
                         (not _%seed155506%_))
                    (_%make-gc-hash-table155791%_)
                    (if (and (or (eq? _%test155508%_ eq?)
                                 (eq? _%test155508%_ ##eq?))
                             (or (not _%hash155510%_)
                                 (eq? _%hash155510%_ eq?-hash)
                                 (eq? _%hash155510%_ eq-hash)))
                        (_%make155790%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test155508%_ eqv?)
                                     (eq? _%test155508%_ ##eqv?))
                                 (or (not _%hash155510%_)
                                     (eq? _%hash155510%_ eqv?-hash)
                                     (eq? _%hash155510%_ eqv-hash)))
                            (_%make155790%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test155508%_ eq?)
                                         (eq? _%test155508%_ ##eq?))
                                     (or (eq? _%hash155510%_ symbolic-hash)
                                         (eq? _%hash155510%_ ##symbol-hash)))
                                (_%make155790%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test155508%_ eq?)
                                             (eq? _%test155508%_ ##eq?))
                                         (eq? _%hash155510%_ immediate-hash))
                                    (_%make155790%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test155508%_ equal?)
                                                 (eq? _%test155508%_ ##equal?)
                                                 (eq? _%test155508%_ string=?)
                                                 (eq? _%test155508%_
                                                      ##string=?))
                                             (or (eq? _%hash155510%_
                                                      string-hash)
                                                 (eq? _%hash155510%_
                                                      ##string=?-hash)))
                                        (_%make155790%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test155508%_ equal?)
                                                 (not _%hash155510%_))
                                            (_%make155790%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test155508%_)
                                                (if (procedure? _%hash155510%_)
                                                    (_%make155790%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash155510%_
                                                     _%test155508%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash155510%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test155508%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords156074%_ . _%args156075%_)
        (apply make-hash-table__%
               _%@@keywords156074%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords156074%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords156074%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords156074%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords156074%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords156074%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords156074%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords156074%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords156074%_
                  'weak-values:
                  absent-value))
               _%args156075%_)))
    (define make-hash-table
      (lambda _%args155492156081%_
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
               _%args155492156081%_)))
    (define make-hash-table-eq
      (lambda _%args155481%_
        (apply make-hash-table 'test: eq? _%args155481%_)))
    (define make-hash-table-eqv
      (lambda _%args155479%_
        (apply make-hash-table 'test: eqv? _%args155479%_)))
    (define make-hash-table-symbolic
      (lambda _%args155477%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args155477%_)))
    (define make-hash-table-string
      (lambda _%args155475%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args155475%_)))
    (define make-hash-table-immediate
      (lambda _%args155473%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args155473%_)))
    (define list->hash-table
      (lambda (_%lst155470%_ . _%args155471%_)
        (list->hash-table!
         _%lst155470%_
         (apply make-hash-table
                'size:
                (length _%lst155470%_)
                _%args155471%_))))
    (define list->hash-table-eq
      (lambda (_%lst155467%_ . _%args155468%_)
        (list->hash-table!
         _%lst155467%_
         (apply make-hash-table-eq
                'size:
                (length _%lst155467%_)
                _%args155468%_))))
    (define list->hash-table-eqv
      (lambda (_%lst155464%_ . _%args155465%_)
        (list->hash-table!
         _%lst155464%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst155464%_)
                _%args155465%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst155461%_ . _%args155462%_)
        (list->hash-table!
         _%lst155461%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst155461%_)
                _%args155462%_))))
    (define list->hash-table-string
      (lambda (_%lst155458%_ . _%args155459%_)
        (list->hash-table!
         _%lst155458%_
         (apply make-hash-table-string
                'size:
                (length _%lst155458%_)
                _%args155459%_))))
    (define list->hash-table-immediate
      (lambda (_%lst155455%_ . _%args155456%_)
        (list->hash-table!
         _%lst155455%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst155455%_)
                _%args155456%_))))
    (define list->hash-table!
      (lambda (_%lst155406%_ _%h155407%_)
        (for-each
         (lambda (_%el155409%_)
           (let* ((_%el155410155417%_ _%el155409%_)
                  (_%E155412155420%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el155410155417%_
                              '([k . v])))
                     '#!void))
                  (_%K155413155443%_
                   (lambda (_%v155423%_ _%k155424%_)
                     (let* ((_%self148243155426%_ _%h155407%_)
                            (_%key155429%_ _%k155424%_)
                            (_%value155432%_ _%v155423%_))
                       (declare (not safe))
                       (let ((_%object155435155440%_
                              (##unchecked-structure-ref
                               _%self148243155426%_
                               '1
                               '#f
                               'set!))
                             (_%method155436155441%_
                              (##unchecked-structure-ref
                               _%self148243155426%_
                               '8
                               '#f
                               'set!)))
                         (_%method155436155441%_
                          _%object155435155440%_
                          _%key155429%_
                          _%value155432%_))))))
             (if (pair? _%el155410155417%_)
                 (let ((_%hd155414155446%_
                        (let ()
                          (declare (not safe))
                          (##car _%el155410155417%_)))
                       (_%tl155415155448%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el155410155417%_))))
                   (let* ((_%k155451%_ _%hd155414155446%_)
                          (_%v155453%_ _%tl155415155448%_))
                     (_%K155413155443%_ _%v155453%_ _%k155451%_)))
                 (_%E155412155420%_))))
         _%lst155406%_)
        _%h155407%_))
    (define plist->hash-table
      (lambda (_%lst155403%_ . _%args155404%_)
        (plist->hash-table!
         _%lst155403%_
         (apply make-hash-table
                'size:
                (length _%lst155403%_)
                _%args155404%_))))
    (define plist->hash-table-eq
      (lambda (_%lst155400%_ . _%args155401%_)
        (plist->hash-table!
         _%lst155400%_
         (apply make-hash-table-eq
                'size:
                (length _%lst155400%_)
                _%args155401%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst155397%_ . _%args155398%_)
        (plist->hash-table!
         _%lst155397%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst155397%_)
                _%args155398%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst155394%_ . _%args155395%_)
        (plist->hash-table!
         _%lst155394%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst155394%_)
                _%args155395%_))))
    (define plist->hash-table-string
      (lambda (_%lst155391%_ . _%args155392%_)
        (plist->hash-table!
         _%lst155391%_
         (apply make-hash-table-string
                'size:
                (length _%lst155391%_)
                _%args155392%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst155388%_ . _%args155389%_)
        (plist->hash-table!
         _%lst155388%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst155388%_)
                _%args155389%_))))
    (define plist->hash-table!
      (lambda (_%lst155311%_ _%h155312%_)
        (let _%loop155314%_ ((_%rest155316%_ _%lst155311%_))
          (let* ((_%rest155317155329%_ _%rest155316%_)
                 (_%else155320155337%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst155311%_)))))
            (let ((_%K155323155369%_
                   (lambda (_%rest155348%_ _%val155349%_ _%key155350%_)
                     (let* ((_%self148243155352%_ _%h155312%_)
                            (_%key155355%_ _%key155350%_)
                            (_%value155358%_ _%val155349%_))
                       (declare (not safe))
                       (let ((_%object155361155366%_
                              (##unchecked-structure-ref
                               _%self148243155352%_
                               '1
                               '#f
                               'set!))
                             (_%method155362155367%_
                              (##unchecked-structure-ref
                               _%self148243155352%_
                               '8
                               '#f
                               'set!)))
                         (_%method155362155367%_
                          _%object155361155366%_
                          _%key155355%_
                          _%value155358%_)))
                     (_%loop155314%_ _%rest155348%_)))
                  (_%K155322155342%_ (lambda () _%h155312%_)))
              (let ((_%try-match155319155345%_
                     (lambda ()
                       (if (null? _%rest155317155329%_)
                           (_%K155322155342%_)
                           (_%else155320155337%_)))))
                (if (pair? _%rest155317155329%_)
                    (let ((_%tl155325155374%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest155317155329%_)))
                          (_%hd155324155372%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest155317155329%_))))
                      (if (pair? _%tl155325155374%_)
                          (let ((_%tl155327155381%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl155325155374%_)))
                                (_%hd155326155379%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl155325155374%_))))
                            (let ((_%key155377%_ _%hd155324155372%_)
                                  (_%val155384%_ _%hd155326155379%_)
                                  (_%rest155386%_ _%tl155327155381%_))
                              (_%K155323155369%_
                               _%rest155386%_
                               _%val155384%_
                               _%key155377%_)))
                          (_%else155320155337%_)))
                    (_%try-match155319155345%_))))))))
    (define __hash-length
      (lambda (_%h155260%_)
        (let* ((_%h155263%_ _%h155260%_)
               (_%self147655155272%_ _%h155263%_)
               (_%self147655155279%_
                (let ((_%$obj155276%_ _%self147655155272%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj155276%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj155276%_)))
                           '#t)
                      _%$obj155276%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj155276%_)))))
               (_%self147655155281%_ _%self147655155279%_))
          (if __DEBUG
              (let ((_%val155301%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object155293155298%_
                              (##unchecked-structure-ref
                               _%self147655155281%_
                               '1
                               '#f
                               'length))
                             (_%method155294155299%_
                              (##unchecked-structure-ref
                               _%self147655155281%_
                               '6
                               '#f
                               'length)))
                         (_%method155294155299%_ _%object155293155298%_)))))
                (if (fixnum? _%val155301%_)
                    _%val155301%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val155301%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object155303155308%_
                       (##unchecked-structure-ref
                        _%self147655155281%_
                        '1
                        '#f
                        'length))
                      (_%method155304155309%_
                       (##unchecked-structure-ref
                        _%self147655155281%_
                        '6
                        '#f
                        'length)))
                  (_%method155304155309%_ _%object155303155308%_)))))))
    (define hash-length
      (lambda (_%h150915%_)
        (let* ((_%h150921%_
                (let ((_%$obj150918%_ _%h150915%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150918%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150918%_)))
                           '#t)
                      _%$obj150918%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150918%_)))))
               (_%h150923%_ _%h150921%_))
          (__hash-length _%h150923%_))))
    (define __hash-ref__%
      (lambda (_%h155188%_ _%key155189%_ _%default155190%_)
        (let* ((_%h155193%_ _%h155188%_)
               (_%result155246%_
                (let* ((_%self147949155202%_ _%h155193%_)
                       (_%key155205%_ _%key155189%_)
                       (_%default155208%_ _%default155190%_)
                       (_%self147949155215%_
                        (let ((_%$obj155212%_ _%self147949155202%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj155212%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj155212%_)))
                                   '#t)
                              _%$obj155212%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj155212%_)))))
                       (_%self147949155217%_ _%self147949155215%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object155231155236%_
                               (##unchecked-structure-ref
                                _%self147949155217%_
                                '1
                                '#f
                                'ref))
                              (_%method155232155237%_
                               (##unchecked-structure-ref
                                _%self147949155217%_
                                '7
                                '#f
                                'ref)))
                          (_%method155232155237%_
                           _%object155231155236%_
                           _%key155205%_
                           _%default155208%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object155238155243%_
                               (##unchecked-structure-ref
                                _%self147949155217%_
                                '1
                                '#f
                                'ref))
                              (_%method155239155244%_
                               (##unchecked-structure-ref
                                _%self147949155217%_
                                '7
                                '#f
                                'ref)))
                          (_%method155239155244%_
                           _%object155238155243%_
                           _%key155205%_
                           _%default155208%_)))))))
          (if (eq? _%result155246%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h155193%_
               'key:
               _%key155189%_)
              _%result155246%_))))
    (define __hash-ref__0
      (lambda (_%h155251%_ _%key155252%_)
        (let ((_%default155254%_ absent-obj))
          (__hash-ref__% _%h155251%_ _%key155252%_ _%default155254%_))))
    (define __hash-ref
      (lambda _g162926_
        (let ((_g162927_ (let () (declare (not safe)) (##length _g162926_))))
          (cond ((let () (declare (not safe)) (##fx= _g162927_ 2))
                 (apply __hash-ref__0 _g162926_))
                ((let () (declare (not safe)) (##fx= _g162927_ 3))
                 (apply __hash-ref__% _g162926_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g162926_))))))
    (define hash-ref__%
      (lambda (_%h151054%_ _%key151055%_ _%default151056%_)
        (let* ((_%h151062%_
                (let ((_%$obj151059%_ _%h151054%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151059%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151059%_)))
                           '#t)
                      _%$obj151059%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151059%_)))))
               (_%h151064%_ _%h151062%_))
          (__hash-ref__% _%h151064%_ _%key151055%_ _%default151056%_))))
    (define hash-ref__0
      (lambda (_%h151077%_ _%key151078%_)
        (let ((_%default151080%_ absent-obj))
          (hash-ref__% _%h151077%_ _%key151078%_ _%default151080%_))))
    (define hash-ref
      (lambda _g162928_
        (let ((_g162929_ (let () (declare (not safe)) (##length _g162928_))))
          (cond ((let () (declare (not safe)) (##fx= _g162929_ 2))
                 (apply hash-ref__0 _g162928_))
                ((let () (declare (not safe)) (##fx= _g162929_ 3))
                 (apply hash-ref__% _g162928_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g162928_))))))
    (define __hash-get
      (lambda (_%h155130%_ _%key155131%_)
        (let* ((_%h155134%_ _%h155130%_)
               (_%self147949155143%_ _%h155134%_)
               (_%key155146%_ _%key155131%_)
               (_%default155149%_ '#f)
               (_%self147949155156%_
                (let ((_%$obj155153%_ _%self147949155143%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj155153%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj155153%_)))
                           '#t)
                      _%$obj155153%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj155153%_)))))
               (_%self147949155158%_ _%self147949155156%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object155172155177%_
                       (##unchecked-structure-ref
                        _%self147949155158%_
                        '1
                        '#f
                        'ref))
                      (_%method155173155178%_
                       (##unchecked-structure-ref
                        _%self147949155158%_
                        '7
                        '#f
                        'ref)))
                  (_%method155173155178%_
                   _%object155172155177%_
                   _%key155146%_
                   _%default155149%_)))
              (let ()
                (declare (not safe))
                (let ((_%object155179155184%_
                       (##unchecked-structure-ref
                        _%self147949155158%_
                        '1
                        '#f
                        'ref))
                      (_%method155180155185%_
                       (##unchecked-structure-ref
                        _%self147949155158%_
                        '7
                        '#f
                        'ref)))
                  (_%method155180155185%_
                   _%object155179155184%_
                   _%key155146%_
                   _%default155149%_)))))))
    (define hash-get
      (lambda (_%h151206%_ _%key151207%_)
        (let* ((_%h151213%_
                (let ((_%$obj151210%_ _%h151206%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151210%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151210%_)))
                           '#t)
                      _%$obj151210%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151210%_)))))
               (_%h151215%_ _%h151213%_))
          (__hash-get _%h151215%_ _%key151207%_))))
    (define __hash-put!
      (lambda (_%h155072%_ _%key155073%_ _%value155074%_)
        (let* ((_%h155077%_ _%h155072%_)
               (_%self148244155086%_ _%h155077%_)
               (_%key155089%_ _%key155073%_)
               (_%value155092%_ _%value155074%_)
               (_%self148244155099%_
                (let ((_%$obj155096%_ _%self148244155086%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj155096%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj155096%_)))
                           '#t)
                      _%$obj155096%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj155096%_)))))
               (_%self148244155101%_ _%self148244155099%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object155115155120%_
                       (##unchecked-structure-ref
                        _%self148244155101%_
                        '1
                        '#f
                        'set!))
                      (_%method155116155121%_
                       (##unchecked-structure-ref
                        _%self148244155101%_
                        '8
                        '#f
                        'set!)))
                  (_%method155116155121%_
                   _%object155115155120%_
                   _%key155089%_
                   _%value155092%_)))
              (let ()
                (declare (not safe))
                (let ((_%object155122155127%_
                       (##unchecked-structure-ref
                        _%self148244155101%_
                        '1
                        '#f
                        'set!))
                      (_%method155123155128%_
                       (##unchecked-structure-ref
                        _%self148244155101%_
                        '8
                        '#f
                        'set!)))
                  (_%method155123155128%_
                   _%object155122155127%_
                   _%key155089%_
                   _%value155092%_)))))))
    (define hash-put!
      (lambda (_%h151345%_ _%key151346%_ _%value151347%_)
        (let* ((_%h151353%_
                (let ((_%$obj151350%_ _%h151345%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151350%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151350%_)))
                           '#t)
                      _%$obj151350%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151350%_)))))
               (_%h151355%_ _%h151353%_))
          (__hash-put! _%h151355%_ _%key151346%_ _%value151347%_))))
    (define __hash-update!__%
      (lambda (_%h154985%_ _%key154986%_ _%update154987%_ _%default154988%_)
        (let* ((_%h154991%_ _%h154985%_)
               (_%self148539155000%_ _%h154991%_)
               (_%key155003%_ _%key154986%_)
               (_%proc155006%_ _%update154987%_)
               (_%default155009%_ _%default154988%_)
               (_%self148539155016%_
                (let ((_%$obj155013%_ _%self148539155000%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj155013%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj155013%_)))
                           '#t)
                      _%$obj155013%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj155013%_)))))
               (_%self148539155018%_ _%self148539155016%_))
          (if (procedure? _%proc155006%_)
              (let ((_%proc155034%_ _%proc155006%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object155043155048%_
                             (##unchecked-structure-ref
                              _%self148539155018%_
                              '1
                              '#f
                              'update!))
                            (_%method155044155049%_
                             (##unchecked-structure-ref
                              _%self148539155018%_
                              '9
                              '#f
                              'update!)))
                        (_%method155044155049%_
                         _%object155043155048%_
                         _%key155003%_
                         _%proc155034%_
                         _%default155009%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object155050155055%_
                             (##unchecked-structure-ref
                              _%self148539155018%_
                              '1
                              '#f
                              'update!))
                            (_%method155051155056%_
                             (##unchecked-structure-ref
                              _%self148539155018%_
                              '9
                              '#f
                              'update!)))
                        (_%method155051155056%_
                         _%object155050155055%_
                         _%key155003%_
                         _%proc155034%_
                         _%default155009%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc155006%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h155061%_ _%key155062%_ _%update155063%_)
        (let ((_%default155065%_ '#!void))
          (__hash-update!__%
           _%h155061%_
           _%key155062%_
           _%update155063%_
           _%default155065%_))))
    (define __hash-update!
      (lambda _g162930_
        (let ((_g162931_ (let () (declare (not safe)) (##length _g162930_))))
          (cond ((let () (declare (not safe)) (##fx= _g162931_ 3))
                 (apply __hash-update!__0 _g162930_))
                ((let () (declare (not safe)) (##fx= _g162931_ 4))
                 (apply __hash-update!__% _g162930_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g162930_))))))
    (define hash-update!__%
      (lambda (_%h151486%_ _%key151487%_ _%update151488%_ _%default151489%_)
        (let* ((_%h151495%_
                (let ((_%$obj151492%_ _%h151486%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151492%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151492%_)))
                           '#t)
                      _%$obj151492%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151492%_)))))
               (_%h151497%_ _%h151495%_))
          (__hash-update!__%
           _%h151497%_
           _%key151487%_
           _%update151488%_
           _%default151489%_))))
    (define hash-update!__0
      (lambda (_%h151510%_ _%key151511%_ _%update151512%_)
        (let ((_%default151514%_ '#!void))
          (hash-update!__%
           _%h151510%_
           _%key151511%_
           _%update151512%_
           _%default151514%_))))
    (define hash-update!
      (lambda _g162932_
        (let ((_g162933_ (let () (declare (not safe)) (##length _g162932_))))
          (cond ((let () (declare (not safe)) (##fx= _g162933_ 3))
                 (apply hash-update!__0 _g162932_))
                ((let () (declare (not safe)) (##fx= _g162933_ 4))
                 (apply hash-update!__% _g162932_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g162932_))))))
    (define __hash-remove!
      (lambda (_%h154931%_ _%key154932%_)
        (let* ((_%h154935%_ _%h154931%_)
               (_%self147051154944%_ _%h154935%_)
               (_%key154947%_ _%key154932%_)
               (_%self147051154954%_
                (let ((_%$obj154951%_ _%self147051154944%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154951%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154951%_)))
                           '#t)
                      _%$obj154951%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154951%_)))))
               (_%self147051154956%_ _%self147051154954%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154969154974%_
                       (##unchecked-structure-ref
                        _%self147051154956%_
                        '1
                        '#f
                        'delete!))
                      (_%method154970154975%_
                       (##unchecked-structure-ref
                        _%self147051154956%_
                        '4
                        '#f
                        'delete!)))
                  (_%method154970154975%_
                   _%object154969154974%_
                   _%key154947%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154976154981%_
                       (##unchecked-structure-ref
                        _%self147051154956%_
                        '1
                        '#f
                        'delete!))
                      (_%method154977154982%_
                       (##unchecked-structure-ref
                        _%self147051154956%_
                        '4
                        '#f
                        'delete!)))
                  (_%method154977154982%_
                   _%object154976154981%_
                   _%key154947%_)))))))
    (define hash-remove!
      (lambda (_%h151641%_ _%key151642%_)
        (let* ((_%h151648%_
                (let ((_%$obj151645%_ _%h151641%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151645%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151645%_)))
                           '#t)
                      _%$obj151645%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151645%_)))))
               (_%h151650%_ _%h151648%_))
          (__hash-remove! _%h151650%_ _%key151642%_))))
    (define __hash-key?
      (lambda (_%h154874%_ _%k154875%_)
        (let ((_%h154878%_ _%h154874%_))
          (not (eq? (let* ((_%self147949154887%_ _%h154878%_)
                           (_%key154890%_ _%k154875%_)
                           (_%default154893%_ absent-value)
                           (_%self147949154900%_
                            (let ((_%$obj154897%_ _%self147949154887%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj154897%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj154897%_)))
                                       '#t)
                                  _%$obj154897%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj154897%_)))))
                           (_%self147949154902%_ _%self147949154900%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object154916154921%_
                                   (##unchecked-structure-ref
                                    _%self147949154902%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method154917154922%_
                                   (##unchecked-structure-ref
                                    _%self147949154902%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method154917154922%_
                               _%object154916154921%_
                               _%key154890%_
                               _%default154893%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object154923154928%_
                                   (##unchecked-structure-ref
                                    _%self147949154902%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method154924154929%_
                                   (##unchecked-structure-ref
                                    _%self147949154902%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method154924154929%_
                               _%object154923154928%_
                               _%key154890%_
                               _%default154893%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h151780%_ _%k151781%_)
        (let* ((_%h151787%_
                (let ((_%$obj151784%_ _%h151780%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151784%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151784%_)))
                           '#t)
                      _%$obj151784%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151784%_)))))
               (_%h151789%_ _%h151787%_))
          (__hash-key? _%h151789%_ _%k151781%_))))
    (define __hash->list
      (lambda (_%h154806%_)
        (let* ((_%h154809%_ _%h154806%_) (_%lst154818%_ '()))
          (let* ((_%self147344154820%_ _%h154809%_)
                 (_%proc154826%_
                  (lambda (_%k154823%_ _%v154824%_)
                    (set! _%lst154818%_
                          (cons (cons _%k154823%_ _%v154824%_)
                                _%lst154818%_))))
                 (_%self147344154833%_
                  (let ((_%$obj154830%_ _%self147344154820%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj154830%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj154830%_)))
                             '#t)
                        _%$obj154830%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj154830%_)))))
                 (_%self147344154835%_ _%self147344154833%_)
                 (_%proc154850%_ _%proc154826%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154859154864%_
                         (##unchecked-structure-ref
                          _%self147344154835%_
                          '1
                          '#f
                          'for-each))
                        (_%method154860154865%_
                         (##unchecked-structure-ref
                          _%self147344154835%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154860154865%_
                     _%object154859154864%_
                     _%proc154850%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object154866154871%_
                         (##unchecked-structure-ref
                          _%self147344154835%_
                          '1
                          '#f
                          'for-each))
                        (_%method154867154872%_
                         (##unchecked-structure-ref
                          _%self147344154835%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154867154872%_
                     _%object154866154871%_
                     _%proc154850%_)))))
          _%lst154818%_)))
    (define hash->list
      (lambda (_%h151919%_)
        (let* ((_%h151925%_
                (let ((_%$obj151922%_ _%h151919%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151922%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151922%_)))
                           '#t)
                      _%$obj151922%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151922%_)))))
               (_%h151927%_ _%h151925%_))
          (__hash->list _%h151927%_))))
    (define __hash->plist
      (lambda (_%h154738%_)
        (let* ((_%h154741%_ _%h154738%_) (_%lst154750%_ '()))
          (let* ((_%self147344154752%_ _%h154741%_)
                 (_%proc154758%_
                  (lambda (_%k154755%_ _%v154756%_)
                    (set! _%lst154750%_
                          (cons _%k154755%_
                                (cons _%v154756%_ _%lst154750%_)))))
                 (_%self147344154765%_
                  (let ((_%$obj154762%_ _%self147344154752%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj154762%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj154762%_)))
                             '#t)
                        _%$obj154762%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj154762%_)))))
                 (_%self147344154767%_ _%self147344154765%_)
                 (_%proc154782%_ _%proc154758%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154791154796%_
                         (##unchecked-structure-ref
                          _%self147344154767%_
                          '1
                          '#f
                          'for-each))
                        (_%method154792154797%_
                         (##unchecked-structure-ref
                          _%self147344154767%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154792154797%_
                     _%object154791154796%_
                     _%proc154782%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object154798154803%_
                         (##unchecked-structure-ref
                          _%self147344154767%_
                          '1
                          '#f
                          'for-each))
                        (_%method154799154804%_
                         (##unchecked-structure-ref
                          _%self147344154767%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154799154804%_
                     _%object154798154803%_
                     _%proc154782%_)))))
          _%lst154750%_)))
    (define hash->plist
      (lambda (_%h152057%_)
        (let* ((_%h152063%_
                (let ((_%$obj152060%_ _%h152057%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152060%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152060%_)))
                           '#t)
                      _%$obj152060%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152060%_)))))
               (_%h152065%_ _%h152063%_))
          (__hash->plist _%h152065%_))))
    (define __hash-for-each
      (lambda (_%proc154667%_ _%h154668%_)
        (let* ((_%proc154671%_ _%proc154667%_)
               (_%h154679%_ _%h154668%_)
               (_%self147344154688%_ _%h154679%_)
               (_%proc154691%_ _%proc154671%_)
               (_%self147344154698%_
                (let ((_%$obj154695%_ _%self147344154688%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154695%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154695%_)))
                           '#t)
                      _%$obj154695%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154695%_)))))
               (_%self147344154700%_ _%self147344154698%_)
               (_%proc154714%_ _%proc154691%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154723154728%_
                       (##unchecked-structure-ref
                        _%self147344154700%_
                        '1
                        '#f
                        'for-each))
                      (_%method154724154729%_
                       (##unchecked-structure-ref
                        _%self147344154700%_
                        '5
                        '#f
                        'for-each)))
                  (_%method154724154729%_
                   _%object154723154728%_
                   _%proc154714%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154730154735%_
                       (##unchecked-structure-ref
                        _%self147344154700%_
                        '1
                        '#f
                        'for-each))
                      (_%method154731154736%_
                       (##unchecked-structure-ref
                        _%self147344154700%_
                        '5
                        '#f
                        'for-each)))
                  (_%method154731154736%_
                   _%object154730154735%_
                   _%proc154714%_)))))))
    (define hash-for-each
      (lambda (_%proc152195%_ _%h152196%_)
        (if (procedure? _%proc152195%_)
            (let* ((_%proc152200%_ _%proc152195%_)
                   (_%h152212%_
                    (let ((_%$obj152209%_ _%h152196%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj152209%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj152209%_)))
                               '#t)
                          _%$obj152209%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj152209%_)))))
                   (_%h152214%_ _%h152212%_))
              (__hash-for-each _%proc152200%_ _%h152214%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc152195%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc154590%_ _%h154591%_)
        (let* ((_%proc154594%_ _%proc154590%_)
               (_%h154602%_ _%h154591%_)
               (_%result154611%_ '()))
          (let* ((_%self147344154613%_ _%h154602%_)
                 (_%proc154619%_
                  (lambda (_%k154616%_ _%v154617%_)
                    (set! _%result154611%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc154594%_ _%k154616%_ _%v154617%_))
                                _%result154611%_))))
                 (_%self147344154626%_
                  (let ((_%$obj154623%_ _%self147344154613%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj154623%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj154623%_)))
                             '#t)
                        _%$obj154623%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj154623%_)))))
                 (_%self147344154628%_ _%self147344154626%_)
                 (_%proc154643%_ _%proc154619%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154652154657%_
                         (##unchecked-structure-ref
                          _%self147344154628%_
                          '1
                          '#f
                          'for-each))
                        (_%method154653154658%_
                         (##unchecked-structure-ref
                          _%self147344154628%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154653154658%_
                     _%object154652154657%_
                     _%proc154643%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object154659154664%_
                         (##unchecked-structure-ref
                          _%self147344154628%_
                          '1
                          '#f
                          'for-each))
                        (_%method154660154665%_
                         (##unchecked-structure-ref
                          _%self147344154628%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154660154665%_
                     _%object154659154664%_
                     _%proc154643%_)))))
          _%result154611%_)))
    (define hash-map
      (lambda (_%proc152344%_ _%h152345%_)
        (if (procedure? _%proc152344%_)
            (let* ((_%proc152349%_ _%proc152344%_)
                   (_%h152361%_
                    (let ((_%$obj152358%_ _%h152345%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj152358%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj152358%_)))
                               '#t)
                          _%$obj152358%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj152358%_)))))
                   (_%h152363%_ _%h152361%_))
              (__hash-map _%proc152349%_ _%h152363%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc152344%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc154512%_ _%iv154513%_ _%h154514%_)
        (let* ((_%proc154517%_ _%proc154512%_)
               (_%h154525%_ _%h154514%_)
               (_%result154534%_ _%iv154513%_))
          (let* ((_%self147344154536%_ _%h154525%_)
                 (_%proc154542%_
                  (lambda (_%k154539%_ _%v154540%_)
                    (set! _%result154534%_
                          (let ()
                            (declare (not safe))
                            (_%proc154517%_
                             _%k154539%_
                             _%v154540%_
                             _%result154534%_)))))
                 (_%self147344154549%_
                  (let ((_%$obj154546%_ _%self147344154536%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj154546%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj154546%_)))
                             '#t)
                        _%$obj154546%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj154546%_)))))
                 (_%self147344154551%_ _%self147344154549%_)
                 (_%proc154566%_ _%proc154542%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154575154580%_
                         (##unchecked-structure-ref
                          _%self147344154551%_
                          '1
                          '#f
                          'for-each))
                        (_%method154576154581%_
                         (##unchecked-structure-ref
                          _%self147344154551%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154576154581%_
                     _%object154575154580%_
                     _%proc154566%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object154582154587%_
                         (##unchecked-structure-ref
                          _%self147344154551%_
                          '1
                          '#f
                          'for-each))
                        (_%method154583154588%_
                         (##unchecked-structure-ref
                          _%self147344154551%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154583154588%_
                     _%object154582154587%_
                     _%proc154566%_)))))
          _%result154534%_)))
    (define hash-fold
      (lambda (_%proc152493%_ _%iv152494%_ _%h152495%_)
        (if (procedure? _%proc152493%_)
            (let* ((_%proc152499%_ _%proc152493%_)
                   (_%h152511%_
                    (let ((_%$obj152508%_ _%h152495%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj152508%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj152508%_)))
                               '#t)
                          _%$obj152508%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj152508%_)))))
                   (_%h152513%_ _%h152511%_))
              (__hash-fold _%proc152499%_ _%iv152494%_ _%h152513%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc152493%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc154419%_ _%h154420%_ _%default-value154421%_)
        (let* ((_%proc154424%_ _%proc154419%_)
               (_%h154432%_ _%h154420%_)
               (__tmp162934
                (lambda (_%return154441%_)
                  (let* ((_%self147344154443%_ _%h154432%_)
                         (_%proc154452%_
                          (lambda (_%k154446%_ _%v154447%_)
                            (let ((_%$e154449%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc154424%_
                                      _%k154446%_
                                      _%v154447%_))))
                              (if _%$e154449%_
                                  (_%return154441%_ _%$e154449%_)
                                  '#!void))))
                         (_%self147344154459%_
                          (let ((_%$obj154456%_ _%self147344154443%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj154456%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj154456%_)))
                                     '#t)
                                _%$obj154456%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj154456%_)))))
                         (_%self147344154461%_ _%self147344154459%_)
                         (_%proc154476%_ _%proc154452%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object154485154490%_
                                 (##unchecked-structure-ref
                                  _%self147344154461%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method154486154491%_
                                 (##unchecked-structure-ref
                                  _%self147344154461%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method154486154491%_
                             _%object154485154490%_
                             _%proc154476%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object154492154497%_
                                 (##unchecked-structure-ref
                                  _%self147344154461%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method154493154498%_
                                 (##unchecked-structure-ref
                                  _%self147344154461%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method154493154498%_
                             _%object154492154497%_
                             _%proc154476%_)))))
                  _%default-value154421%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp162934))))
    (define __hash-find__0
      (lambda (_%proc154503%_ _%h154504%_)
        (let ((_%default-value154506%_ '#f))
          (__hash-find__%
           _%proc154503%_
           _%h154504%_
           _%default-value154506%_))))
    (define __hash-find
      (lambda _g162935_
        (let ((_g162936_ (let () (declare (not safe)) (##length _g162935_))))
          (cond ((let () (declare (not safe)) (##fx= _g162936_ 2))
                 (apply __hash-find__0 _g162935_))
                ((let () (declare (not safe)) (##fx= _g162936_ 3))
                 (apply __hash-find__% _g162935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g162935_))))))
    (define hash-find__%
      (lambda (_%proc152644%_ _%h152645%_ _%default-value152646%_)
        (if (procedure? _%proc152644%_)
            (let* ((_%proc152650%_ _%proc152644%_)
                   (_%h152662%_
                    (let ((_%$obj152659%_ _%h152645%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj152659%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj152659%_)))
                               '#t)
                          _%$obj152659%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj152659%_)))))
                   (_%h152664%_ _%h152662%_))
              (__hash-find__%
               _%proc152650%_
               _%h152664%_
               _%default-value152646%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc152644%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc152677%_ _%h152678%_)
        (let ((_%default-value152680%_ '#f))
          (hash-find__% _%proc152677%_ _%h152678%_ _%default-value152680%_))))
    (define hash-find
      (lambda _g162937_
        (let ((_g162938_ (let () (declare (not safe)) (##length _g162937_))))
          (cond ((let () (declare (not safe)) (##fx= _g162938_ 2))
                 (apply hash-find__0 _g162937_))
                ((let () (declare (not safe)) (##fx= _g162938_ 3))
                 (apply hash-find__% _g162937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g162937_))))))
    (define __hash-keys
      (lambda (_%h154350%_)
        (let* ((_%h154353%_ _%h154350%_) (_%result154362%_ '()))
          (let* ((_%self147344154364%_ _%h154353%_)
                 (_%proc154370%_
                  (lambda (_%k154367%_ _%v154368%_)
                    (set! _%result154362%_
                          (cons _%k154367%_ _%result154362%_))))
                 (_%self147344154377%_
                  (let ((_%$obj154374%_ _%self147344154364%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj154374%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj154374%_)))
                             '#t)
                        _%$obj154374%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj154374%_)))))
                 (_%self147344154379%_ _%self147344154377%_)
                 (_%proc154394%_ _%proc154370%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154403154408%_
                         (##unchecked-structure-ref
                          _%self147344154379%_
                          '1
                          '#f
                          'for-each))
                        (_%method154404154409%_
                         (##unchecked-structure-ref
                          _%self147344154379%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154404154409%_
                     _%object154403154408%_
                     _%proc154394%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object154410154415%_
                         (##unchecked-structure-ref
                          _%self147344154379%_
                          '1
                          '#f
                          'for-each))
                        (_%method154411154416%_
                         (##unchecked-structure-ref
                          _%self147344154379%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154411154416%_
                     _%object154410154415%_
                     _%proc154394%_)))))
          _%result154362%_)))
    (define hash-keys
      (lambda (_%h152806%_)
        (let* ((_%h152812%_
                (let ((_%$obj152809%_ _%h152806%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152809%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152809%_)))
                           '#t)
                      _%$obj152809%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152809%_)))))
               (_%h152814%_ _%h152812%_))
          (__hash-keys _%h152814%_))))
    (define __hash-values
      (lambda (_%h154282%_)
        (let* ((_%h154285%_ _%h154282%_) (_%result154294%_ '()))
          (let* ((_%self147344154296%_ _%h154285%_)
                 (_%proc154302%_
                  (lambda (_%k154299%_ _%v154300%_)
                    (set! _%result154294%_
                          (cons _%v154300%_ _%result154294%_))))
                 (_%self147344154309%_
                  (let ((_%$obj154306%_ _%self147344154296%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj154306%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj154306%_)))
                             '#t)
                        _%$obj154306%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj154306%_)))))
                 (_%self147344154311%_ _%self147344154309%_)
                 (_%proc154326%_ _%proc154302%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object154335154340%_
                         (##unchecked-structure-ref
                          _%self147344154311%_
                          '1
                          '#f
                          'for-each))
                        (_%method154336154341%_
                         (##unchecked-structure-ref
                          _%self147344154311%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154336154341%_
                     _%object154335154340%_
                     _%proc154326%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object154342154347%_
                         (##unchecked-structure-ref
                          _%self147344154311%_
                          '1
                          '#f
                          'for-each))
                        (_%method154343154348%_
                         (##unchecked-structure-ref
                          _%self147344154311%_
                          '5
                          '#f
                          'for-each)))
                    (_%method154343154348%_
                     _%object154342154347%_
                     _%proc154326%_)))))
          _%result154294%_)))
    (define hash-values
      (lambda (_%h152944%_)
        (let* ((_%h152950%_
                (let ((_%$obj152947%_ _%h152944%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152947%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152947%_)))
                           '#t)
                      _%$obj152947%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152947%_)))))
               (_%h152952%_ _%h152950%_))
          (__hash-values _%h152952%_))))
    (define __hash-copy
      (lambda (_%h154231%_)
        (let* ((_%h154234%_ _%h154231%_)
               (_%self146757154243%_ _%h154234%_)
               (_%self146757154250%_
                (let ((_%$obj154247%_ _%self146757154243%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154247%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154247%_)))
                           '#t)
                      _%$obj154247%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154247%_)))))
               (_%self146757154252%_ _%self146757154250%_))
          (if __DEBUG
              (let ((_%$obj154272%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object154264154269%_
                              (##unchecked-structure-ref
                               _%self146757154252%_
                               '1
                               '#f
                               'copy))
                             (_%method154265154270%_
                              (##unchecked-structure-ref
                               _%self146757154252%_
                               '3
                               '#f
                               'copy)))
                         (_%method154265154270%_ _%object154264154269%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj154272%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj154272%_)))
                         '#t)
                    _%$obj154272%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj154272%_))))
              (let ()
                (declare (not safe))
                (let ((_%object154274154279%_
                       (##unchecked-structure-ref
                        _%self146757154252%_
                        '1
                        '#f
                        'copy))
                      (_%method154275154280%_
                       (##unchecked-structure-ref
                        _%self146757154252%_
                        '3
                        '#f
                        'copy)))
                  (_%method154275154280%_ _%object154274154279%_)))))))
    (define hash-copy
      (lambda (_%h153082%_)
        (let* ((_%h153088%_
                (let ((_%$obj153085%_ _%h153082%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153085%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153085%_)))
                           '#t)
                      _%$obj153085%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153085%_)))))
               (_%h153090%_ _%h153088%_))
          (__hash-copy _%h153090%_))))
    (define __hash-clear!
      (lambda (_%h154183%_)
        (let* ((_%h154186%_ _%h154183%_)
               (_%self146465154195%_ _%h154186%_)
               (_%self146465154202%_
                (let ((_%$obj154199%_ _%self146465154195%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154199%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154199%_)))
                           '#t)
                      _%$obj154199%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154199%_)))))
               (_%self146465154204%_ _%self146465154202%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object154216154221%_
                       (##unchecked-structure-ref
                        _%self146465154204%_
                        '1
                        '#f
                        'clear!))
                      (_%method154217154222%_
                       (##unchecked-structure-ref
                        _%self146465154204%_
                        '2
                        '#f
                        'clear!)))
                  (_%method154217154222%_ _%object154216154221%_)))
              (let ()
                (declare (not safe))
                (let ((_%object154223154228%_
                       (##unchecked-structure-ref
                        _%self146465154204%_
                        '1
                        '#f
                        'clear!))
                      (_%method154224154229%_
                       (##unchecked-structure-ref
                        _%self146465154204%_
                        '2
                        '#f
                        'clear!)))
                  (_%method154224154229%_ _%object154223154228%_)))))))
    (define hash-clear!
      (lambda (_%h153220%_)
        (let* ((_%h153226%_
                (let ((_%$obj153223%_ _%h153220%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153223%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153223%_)))
                           '#t)
                      _%$obj153223%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153223%_)))))
               (_%h153228%_ _%h153226%_))
          (__hash-clear! _%h153228%_))))
    (define __hash-merge
      (lambda (_%h154129%_ . _%rest154130%_)
        (let* ((_%h154133%_ _%h154129%_)
               (_%copy154181%_
                (let* ((_%self146757154142%_ _%h154133%_)
                       (_%self146757154149%_
                        (let ((_%$obj154146%_ _%self146757154142%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj154146%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj154146%_)))
                                   '#t)
                              _%$obj154146%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj154146%_)))))
                       (_%self146757154151%_ _%self146757154149%_))
                  (if __DEBUG
                      (let ((_%$obj154171%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object154163154168%_
                                      (##unchecked-structure-ref
                                       _%self146757154151%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method154164154169%_
                                      (##unchecked-structure-ref
                                       _%self146757154151%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method154164154169%_
                                  _%object154163154168%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj154171%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj154171%_)))
                                 '#t)
                            _%$obj154171%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj154171%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object154173154178%_
                               (##unchecked-structure-ref
                                _%self146757154151%_
                                '1
                                '#f
                                'copy))
                              (_%method154174154179%_
                               (##unchecked-structure-ref
                                _%self146757154151%_
                                '3
                                '#f
                                'copy)))
                          (_%method154174154179%_ _%object154173154178%_)))))))
          (apply hash-merge! _%copy154181%_ _%rest154130%_)
          _%copy154181%_)))
    (define hash-merge
      (lambda (_%h153358%_ . _%rest153359%_)
        (let* ((_%h153365%_
                (let ((_%$obj153362%_ _%h153358%_))
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
                        (cast HashTable::interface _%$obj153362%_)))))
               (_%h153367%_ _%h153365%_))
          (declare (not safe))
          (##apply __hash-merge _%h153367%_ _%rest153359%_))))
    (define __hash-merge-right
      (lambda (_%h154075%_ . _%rest154076%_)
        (let* ((_%h154079%_ _%h154075%_)
               (_%copy154127%_
                (let* ((_%self146757154088%_ _%h154079%_)
                       (_%self146757154095%_
                        (let ((_%$obj154092%_ _%self146757154088%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj154092%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj154092%_)))
                                   '#t)
                              _%$obj154092%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj154092%_)))))
                       (_%self146757154097%_ _%self146757154095%_))
                  (if __DEBUG
                      (let ((_%$obj154117%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object154109154114%_
                                      (##unchecked-structure-ref
                                       _%self146757154097%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method154110154115%_
                                      (##unchecked-structure-ref
                                       _%self146757154097%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method154110154115%_
                                  _%object154109154114%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj154117%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj154117%_)))
                                 '#t)
                            _%$obj154117%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj154117%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object154119154124%_
                               (##unchecked-structure-ref
                                _%self146757154097%_
                                '1
                                '#f
                                'copy))
                              (_%method154120154125%_
                               (##unchecked-structure-ref
                                _%self146757154097%_
                                '3
                                '#f
                                'copy)))
                          (_%method154120154125%_ _%object154119154124%_)))))))
          (apply hash-merge-right! _%copy154127%_ _%rest154076%_)
          _%copy154127%_)))
    (define hash-merge-right
      (lambda (_%h153497%_ . _%rest153498%_)
        (let* ((_%h153504%_
                (let ((_%$obj153501%_ _%h153497%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153501%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153501%_)))
                           '#t)
                      _%$obj153501%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153501%_)))))
               (_%h153506%_ _%h153504%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h153506%_ _%rest153498%_))))
    (define __hash-merge!
      (lambda (_%h153923%_ . _%rest153924%_)
        (let ((_%h153927%_ _%h153923%_))
          (let ((__tmp162939
                 (lambda (_%hr153936%_)
                   (let* ((_%hr153942%_
                           (let ((_%$obj153939%_ _%hr153936%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153939%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153939%_)))
                                      '#t)
                                 _%$obj153939%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153939%_)))))
                          (_%hr153944%_ _%hr153942%_)
                          (_%self147344153957%_ _%hr153944%_)
                          (_%proc154032%_
                           (lambda (_%k153960%_ _%v153961%_)
                             (if (let* ((_%h153963%_ _%h153927%_)
                                        (_%k153966%_ _%k153960%_)
                                        (_%h153973%_
                                         (let ((_%$obj153970%_ _%h153963%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj153970%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj153970%_)))
                                                    '#t)
                                               _%$obj153970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj153970%_)))))
                                        (_%h153975%_ _%h153973%_))
                                   (__hash-key? _%h153975%_ _%k153966%_))
                                 '#!void
                                 (let* ((_%self148244153991%_ _%h153927%_)
                                        (_%key153994%_ _%k153960%_)
                                        (_%value153997%_ _%v153961%_)
                                        (_%self148244154004%_
                                         (let ((_%$obj154001%_
                                                _%self148244153991%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj154001%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj154001%_)))
                                                    '#t)
                                               _%$obj154001%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj154001%_)))))
                                        (_%self148244154006%_
                                         _%self148244154004%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object154017154022%_
                                                (##unchecked-structure-ref
                                                 _%self148244154006%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method154018154023%_
                                                (##unchecked-structure-ref
                                                 _%self148244154006%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method154018154023%_
                                            _%object154017154022%_
                                            _%key153994%_
                                            _%value153997%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object154024154029%_
                                                (##unchecked-structure-ref
                                                 _%self148244154006%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method154025154030%_
                                                (##unchecked-structure-ref
                                                 _%self148244154006%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method154025154030%_
                                            _%object154024154029%_
                                            _%key153994%_
                                            _%value153997%_))))))))
                          (_%self147344154039%_
                           (let ((_%$obj154036%_ _%self147344153957%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj154036%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj154036%_)))
                                      '#t)
                                 _%$obj154036%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj154036%_)))))
                          (_%self147344154041%_ _%self147344154039%_)
                          (_%proc154051%_ _%proc154032%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object154060154065%_
                                  (##unchecked-structure-ref
                                   _%self147344154041%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method154061154066%_
                                  (##unchecked-structure-ref
                                   _%self147344154041%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method154061154066%_
                              _%object154060154065%_
                              _%proc154051%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object154067154072%_
                                  (##unchecked-structure-ref
                                   _%self147344154041%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method154068154073%_
                                  (##unchecked-structure-ref
                                   _%self147344154041%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method154068154073%_
                              _%object154067154072%_
                              _%proc154051%_))))))))
            (declare (not safe))
            (##for-each __tmp162939 _%rest153924%_))
          _%h153927%_)))
    (define hash-merge!
      (lambda (_%h153636%_ . _%rest153637%_)
        (let* ((_%h153643%_
                (let ((_%$obj153640%_ _%h153636%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153640%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153640%_)))
                           '#t)
                      _%$obj153640%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153640%_)))))
               (_%h153645%_ _%h153643%_))
          (declare (not safe))
          (##apply __hash-merge! _%h153645%_ _%rest153637%_))))
    (define __hash-merge-right!
      (lambda (_%h153794%_ . _%rest153795%_)
        (let ((_%h153798%_ _%h153794%_))
          (let ((__tmp162940
                 (lambda (_%hr153807%_)
                   (let* ((_%hr153813%_
                           (let ((_%$obj153810%_ _%hr153807%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153810%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153810%_)))
                                      '#t)
                                 _%$obj153810%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153810%_)))))
                          (_%hr153815%_ _%hr153813%_)
                          (_%self147344153828%_ _%hr153815%_)
                          (_%proc153880%_
                           (lambda (_%k153831%_ _%v153832%_)
                             (let* ((_%self148244153834%_ _%h153798%_)
                                    (_%key153837%_ _%k153831%_)
                                    (_%value153840%_ _%v153832%_)
                                    (_%self148244153847%_
                                     (let ((_%$obj153844%_
                                            _%self148244153834%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj153844%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj153844%_)))
                                                '#t)
                                           _%$obj153844%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj153844%_)))))
                                    (_%self148244153849%_
                                     _%self148244153847%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object153865153870%_
                                            (##unchecked-structure-ref
                                             _%self148244153849%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method153866153871%_
                                            (##unchecked-structure-ref
                                             _%self148244153849%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method153866153871%_
                                        _%object153865153870%_
                                        _%key153837%_
                                        _%value153840%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object153872153877%_
                                            (##unchecked-structure-ref
                                             _%self148244153849%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method153873153878%_
                                            (##unchecked-structure-ref
                                             _%self148244153849%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method153873153878%_
                                        _%object153872153877%_
                                        _%key153837%_
                                        _%value153840%_)))))))
                          (_%self147344153887%_
                           (let ((_%$obj153884%_ _%self147344153828%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj153884%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj153884%_)))
                                      '#t)
                                 _%$obj153884%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj153884%_)))))
                          (_%self147344153889%_ _%self147344153887%_)
                          (_%proc153899%_ _%proc153880%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object153908153913%_
                                  (##unchecked-structure-ref
                                   _%self147344153889%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153909153914%_
                                  (##unchecked-structure-ref
                                   _%self147344153889%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153909153914%_
                              _%object153908153913%_
                              _%proc153899%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object153915153920%_
                                  (##unchecked-structure-ref
                                   _%self147344153889%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method153916153921%_
                                  (##unchecked-structure-ref
                                   _%self147344153889%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method153916153921%_
                              _%object153915153920%_
                              _%proc153899%_))))))))
            (declare (not safe))
            (##for-each __tmp162940 _%rest153795%_))
          _%h153798%_)))
    (define hash-merge-right!
      (lambda (_%h153775%_ . _%rest153776%_)
        (let* ((_%h153782%_
                (let ((_%$obj153779%_ _%h153775%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153779%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153779%_)))
                           '#t)
                      _%$obj153779%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153779%_)))))
               (_%h153784%_ _%h153782%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h153784%_ _%rest153776%_))))))
