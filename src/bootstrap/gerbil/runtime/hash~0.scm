(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1771101397)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp161491 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp161491
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args160233%_
        (apply make-instance UnboundKeyError::t _%$args160233%_)))
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
      (lambda (_%where160107%_ _%message160108%_ . _%irritants160109%_)
        (let ((__tmp161492
               (let ((__obj161483
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj161483
                    _%message160108%_
                    'where:
                    _%where160107%_
                    'irritants:
                    _%irritants160109%_))
                 __obj161483)))
          (declare (not safe))
          (raise __tmp161492))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp161493 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp161493
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj161485
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj161485
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj161485))
    (define make-HashTable
      (lambda (_%obj160105%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj160105%_))))
    (define try-HashTable
      (lambda (_%obj160103%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj160103%_))))
    (define HashTable?
      (lambda (_%obj160101%_)
        (let ((__tmp161494
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj160101%_ __tmp161494))))
    (define is-HashTable?
      (lambda (_%obj160098%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj160098%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self145088145332%_)
        (let ((_%self145088145334%_ _%self145088145332%_))
          (declare (not safe))
          (let ((_%object145341145346%_
                 (##unchecked-structure-ref
                  _%self145088145334%_
                  '1
                  '#f
                  'clear!))
                (_%method145342145347%_
                 (##unchecked-structure-ref
                  _%self145088145334%_
                  '2
                  '#f
                  'clear!)))
            (_%method145342145347%_ _%object145341145346%_)))))
    (define ::HashTable-clear!
      (lambda (_%self145089145349%_)
        (let* ((_%self145089145354%_
                (let ((_%$obj145351%_ _%self145089145349%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145351%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145351%_)))
                           '#t)
                      _%$obj145351%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145351%_)))))
               (_%self145089145356%_ _%self145089145354%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object145364145369%_
                       (##unchecked-structure-ref
                        _%self145089145356%_
                        '1
                        '#f
                        'clear!))
                      (_%method145365145370%_
                       (##unchecked-structure-ref
                        _%self145089145356%_
                        '2
                        '#f
                        'clear!)))
                  (_%method145365145370%_ _%object145364145369%_)))
              (let ()
                (declare (not safe))
                (let ((_%object145371145376%_
                       (##unchecked-structure-ref
                        _%self145089145356%_
                        '1
                        '#f
                        'clear!))
                      (_%method145372145377%_
                       (##unchecked-structure-ref
                        _%self145089145356%_
                        '2
                        '#f
                        'clear!)))
                  (_%method145372145377%_ _%object145371145376%_)))))))
    (define __HashTable-copy
      (lambda (_%self145380145623%_)
        (let ((_%self145380145625%_ _%self145380145623%_))
          (declare (not safe))
          (let ((_%object145632145637%_
                 (##unchecked-structure-ref _%self145380145625%_ '1 '#f 'copy))
                (_%method145633145638%_
                 (##unchecked-structure-ref
                  _%self145380145625%_
                  '3
                  '#f
                  'copy)))
            (_%method145633145638%_ _%object145632145637%_)))))
    (define ::HashTable-copy
      (lambda (_%self145381145640%_)
        (let* ((_%self145381145645%_
                (let ((_%$obj145642%_ _%self145381145640%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145642%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145642%_)))
                           '#t)
                      _%$obj145642%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145642%_)))))
               (_%self145381145647%_ _%self145381145645%_))
          (if __DEBUG
              (let ((_%$obj145663%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object145655145660%_
                              (##unchecked-structure-ref
                               _%self145381145647%_
                               '1
                               '#f
                               'copy))
                             (_%method145656145661%_
                              (##unchecked-structure-ref
                               _%self145381145647%_
                               '3
                               '#f
                               'copy)))
                         (_%method145656145661%_ _%object145655145660%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj145663%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj145663%_)))
                         '#t)
                    _%$obj145663%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj145663%_))))
              (let ()
                (declare (not safe))
                (let ((_%object145665145670%_
                       (##unchecked-structure-ref
                        _%self145381145647%_
                        '1
                        '#f
                        'copy))
                      (_%method145666145671%_
                       (##unchecked-structure-ref
                        _%self145381145647%_
                        '3
                        '#f
                        'copy)))
                  (_%method145666145671%_ _%object145665145670%_)))))))
    (define __HashTable-delete!
      (lambda (_%self145674145917%_ _%key145918%_)
        (let ((_%self145674145920%_ _%self145674145917%_))
          (declare (not safe))
          (let ((_%object145927145932%_
                 (##unchecked-structure-ref
                  _%self145674145920%_
                  '1
                  '#f
                  'delete!))
                (_%method145928145933%_
                 (##unchecked-structure-ref
                  _%self145674145920%_
                  '4
                  '#f
                  'delete!)))
            (_%method145928145933%_ _%object145927145932%_ _%key145918%_)))))
    (define ::HashTable-delete!
      (lambda (_%self145675145935%_ _%key145936%_)
        (let* ((_%self145675145941%_
                (let ((_%$obj145938%_ _%self145675145935%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj145938%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj145938%_)))
                           '#t)
                      _%$obj145938%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj145938%_)))))
               (_%self145675145943%_ _%self145675145941%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object145951145956%_
                       (##unchecked-structure-ref
                        _%self145675145943%_
                        '1
                        '#f
                        'delete!))
                      (_%method145952145957%_
                       (##unchecked-structure-ref
                        _%self145675145943%_
                        '4
                        '#f
                        'delete!)))
                  (_%method145952145957%_
                   _%object145951145956%_
                   _%key145936%_)))
              (let ()
                (declare (not safe))
                (let ((_%object145958145963%_
                       (##unchecked-structure-ref
                        _%self145675145943%_
                        '1
                        '#f
                        'delete!))
                      (_%method145959145964%_
                       (##unchecked-structure-ref
                        _%self145675145943%_
                        '4
                        '#f
                        'delete!)))
                  (_%method145959145964%_
                   _%object145958145963%_
                   _%key145936%_)))))))
    (define __HashTable-for-each
      (lambda (_%self145967146210%_ _%proc146211%_)
        (let* ((_%self145967146213%_ _%self145967146210%_)
               (_%proc146220%_ _%proc146211%_))
          (declare (not safe))
          (let ((_%object146228146233%_
                 (##unchecked-structure-ref
                  _%self145967146213%_
                  '1
                  '#f
                  'for-each))
                (_%method146229146234%_
                 (##unchecked-structure-ref
                  _%self145967146213%_
                  '5
                  '#f
                  'for-each)))
            (_%method146229146234%_ _%object146228146233%_ _%proc146220%_)))))
    (define ::HashTable-for-each
      (lambda (_%self145968146236%_ _%proc146237%_)
        (let* ((_%self145968146242%_
                (let ((_%$obj146239%_ _%self145968146236%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146239%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146239%_)))
                           '#t)
                      _%$obj146239%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146239%_)))))
               (_%self145968146244%_ _%self145968146242%_))
          (if (procedure? _%proc146237%_)
              (let ((_%proc146253%_ _%proc146237%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object146262146267%_
                             (##unchecked-structure-ref
                              _%self145968146244%_
                              '1
                              '#f
                              'for-each))
                            (_%method146263146268%_
                             (##unchecked-structure-ref
                              _%self145968146244%_
                              '5
                              '#f
                              'for-each)))
                        (_%method146263146268%_
                         _%object146262146267%_
                         _%proc146253%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object146269146274%_
                             (##unchecked-structure-ref
                              _%self145968146244%_
                              '1
                              '#f
                              'for-each))
                            (_%method146270146275%_
                             (##unchecked-structure-ref
                              _%self145968146244%_
                              '5
                              '#f
                              'for-each)))
                        (_%method146270146275%_
                         _%object146269146274%_
                         _%proc146253%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc146237%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self146278146521%_)
        (let ((_%self146278146523%_ _%self146278146521%_))
          (declare (not safe))
          (let ((_%object146530146535%_
                 (##unchecked-structure-ref
                  _%self146278146523%_
                  '1
                  '#f
                  'length))
                (_%method146531146536%_
                 (##unchecked-structure-ref
                  _%self146278146523%_
                  '6
                  '#f
                  'length)))
            (_%method146531146536%_ _%object146530146535%_)))))
    (define ::HashTable-length
      (lambda (_%self146279146538%_)
        (let* ((_%self146279146543%_
                (let ((_%$obj146540%_ _%self146279146538%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146540%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146540%_)))
                           '#t)
                      _%$obj146540%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146540%_)))))
               (_%self146279146545%_ _%self146279146543%_))
          (if __DEBUG
              (let ((_%val146561%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object146553146558%_
                              (##unchecked-structure-ref
                               _%self146279146545%_
                               '1
                               '#f
                               'length))
                             (_%method146554146559%_
                              (##unchecked-structure-ref
                               _%self146279146545%_
                               '6
                               '#f
                               'length)))
                         (_%method146554146559%_ _%object146553146558%_)))))
                (if (fixnum? _%val146561%_)
                    _%val146561%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val146561%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object146563146568%_
                       (##unchecked-structure-ref
                        _%self146279146545%_
                        '1
                        '#f
                        'length))
                      (_%method146564146569%_
                       (##unchecked-structure-ref
                        _%self146279146545%_
                        '6
                        '#f
                        'length)))
                  (_%method146564146569%_ _%object146563146568%_)))))))
    (define __HashTable-ref
      (lambda (_%self146572146815%_ _%key146816%_ _%default146817%_)
        (let ((_%self146572146819%_ _%self146572146815%_))
          (declare (not safe))
          (let ((_%object146826146831%_
                 (##unchecked-structure-ref _%self146572146819%_ '1 '#f 'ref))
                (_%method146827146832%_
                 (##unchecked-structure-ref _%self146572146819%_ '7 '#f 'ref)))
            (_%method146827146832%_
             _%object146826146831%_
             _%key146816%_
             _%default146817%_)))))
    (define ::HashTable-ref
      (lambda (_%self146573146834%_ _%key146835%_ _%default146836%_)
        (let* ((_%self146573146841%_
                (let ((_%$obj146838%_ _%self146573146834%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj146838%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj146838%_)))
                           '#t)
                      _%$obj146838%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj146838%_)))))
               (_%self146573146843%_ _%self146573146841%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object146851146856%_
                       (##unchecked-structure-ref
                        _%self146573146843%_
                        '1
                        '#f
                        'ref))
                      (_%method146852146857%_
                       (##unchecked-structure-ref
                        _%self146573146843%_
                        '7
                        '#f
                        'ref)))
                  (_%method146852146857%_
                   _%object146851146856%_
                   _%key146835%_
                   _%default146836%_)))
              (let ()
                (declare (not safe))
                (let ((_%object146858146863%_
                       (##unchecked-structure-ref
                        _%self146573146843%_
                        '1
                        '#f
                        'ref))
                      (_%method146859146864%_
                       (##unchecked-structure-ref
                        _%self146573146843%_
                        '7
                        '#f
                        'ref)))
                  (_%method146859146864%_
                   _%object146858146863%_
                   _%key146835%_
                   _%default146836%_)))))))
    (define __HashTable-set!
      (lambda (_%self146867147110%_ _%key147111%_ _%value147112%_)
        (let ((_%self146867147114%_ _%self146867147110%_))
          (declare (not safe))
          (let ((_%object147121147126%_
                 (##unchecked-structure-ref _%self146867147114%_ '1 '#f 'set!))
                (_%method147122147127%_
                 (##unchecked-structure-ref
                  _%self146867147114%_
                  '8
                  '#f
                  'set!)))
            (_%method147122147127%_
             _%object147121147126%_
             _%key147111%_
             _%value147112%_)))))
    (define ::HashTable-set!
      (lambda (_%self146868147129%_ _%key147130%_ _%value147131%_)
        (let* ((_%self146868147136%_
                (let ((_%$obj147133%_ _%self146868147129%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147133%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147133%_)))
                           '#t)
                      _%$obj147133%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147133%_)))))
               (_%self146868147138%_ _%self146868147136%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object147146147151%_
                       (##unchecked-structure-ref
                        _%self146868147138%_
                        '1
                        '#f
                        'set!))
                      (_%method147147147152%_
                       (##unchecked-structure-ref
                        _%self146868147138%_
                        '8
                        '#f
                        'set!)))
                  (_%method147147147152%_
                   _%object147146147151%_
                   _%key147130%_
                   _%value147131%_)))
              (let ()
                (declare (not safe))
                (let ((_%object147153147158%_
                       (##unchecked-structure-ref
                        _%self146868147138%_
                        '1
                        '#f
                        'set!))
                      (_%method147154147159%_
                       (##unchecked-structure-ref
                        _%self146868147138%_
                        '8
                        '#f
                        'set!)))
                  (_%method147154147159%_
                   _%object147153147158%_
                   _%key147130%_
                   _%value147131%_)))))))
    (define __HashTable-update!
      (lambda (_%self147162147405%_
               _%key147406%_
               _%proc147407%_
               _%default147408%_)
        (let* ((_%self147162147410%_ _%self147162147405%_)
               (_%proc147417%_ _%proc147407%_))
          (declare (not safe))
          (let ((_%object147425147430%_
                 (##unchecked-structure-ref
                  _%self147162147410%_
                  '1
                  '#f
                  'update!))
                (_%method147426147431%_
                 (##unchecked-structure-ref
                  _%self147162147410%_
                  '9
                  '#f
                  'update!)))
            (_%method147426147431%_
             _%object147425147430%_
             _%key147406%_
             _%proc147417%_
             _%default147408%_)))))
    (define ::HashTable-update!
      (lambda (_%self147163147433%_
               _%key147434%_
               _%proc147435%_
               _%default147436%_)
        (let* ((_%self147163147441%_
                (let ((_%$obj147438%_ _%self147163147433%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147438%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147438%_)))
                           '#t)
                      _%$obj147438%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj147438%_)))))
               (_%self147163147443%_ _%self147163147441%_))
          (if (procedure? _%proc147435%_)
              (let ((_%proc147452%_ _%proc147435%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object147461147466%_
                             (##unchecked-structure-ref
                              _%self147163147443%_
                              '1
                              '#f
                              'update!))
                            (_%method147462147467%_
                             (##unchecked-structure-ref
                              _%self147163147443%_
                              '9
                              '#f
                              'update!)))
                        (_%method147462147467%_
                         _%object147461147466%_
                         _%key147434%_
                         _%proc147452%_
                         _%default147436%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object147468147473%_
                             (##unchecked-structure-ref
                              _%self147163147443%_
                              '1
                              '#f
                              'update!))
                            (_%method147469147474%_
                             (##unchecked-structure-ref
                              _%self147163147443%_
                              '9
                              '#f
                              'update!)))
                        (_%method147469147474%_
                         _%object147468147473%_
                         _%key147434%_
                         _%proc147452%_
                         _%default147436%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc147435%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp161495 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp161495
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj161487
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj161487
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj161487))
    (define make-Locker
      (lambda (_%obj160096%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj160096%_))))
    (define try-Locker
      (lambda (_%obj160094%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj160094%_))))
    (define Locker?
      (lambda (_%obj160092%_)
        (let ((__tmp161496
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj160092%_ __tmp161496))))
    (define is-Locker?
      (lambda (_%obj160089%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj160089%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self147477147720%_)
        (let ((_%self147477147722%_ _%self147477147720%_))
          (declare (not safe))
          (let ((_%object147729147734%_
                 (##unchecked-structure-ref
                  _%self147477147722%_
                  '1
                  '#f
                  'read-lock!))
                (_%method147730147735%_
                 (##unchecked-structure-ref
                  _%self147477147722%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method147730147735%_ _%object147729147734%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self147478147737%_)
        (let* ((_%self147478147742%_
                (let ((_%$obj147739%_ _%self147478147737%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj147739%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj147739%_)))
                           '#t)
                      _%$obj147739%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj147739%_)))))
               (_%self147478147744%_ _%self147478147742%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object147752147757%_
                       (##unchecked-structure-ref
                        _%self147478147744%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method147753147758%_
                       (##unchecked-structure-ref
                        _%self147478147744%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method147753147758%_ _%object147752147757%_)))
              (let ()
                (declare (not safe))
                (let ((_%object147759147764%_
                       (##unchecked-structure-ref
                        _%self147478147744%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method147760147765%_
                       (##unchecked-structure-ref
                        _%self147478147744%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method147760147765%_ _%object147759147764%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self147768148011%_)
        (let ((_%self147768148013%_ _%self147768148011%_))
          (declare (not safe))
          (let ((_%object148020148025%_
                 (##unchecked-structure-ref
                  _%self147768148013%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method148021148026%_
                 (##unchecked-structure-ref
                  _%self147768148013%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method148021148026%_ _%object148020148025%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self147769148028%_)
        (let* ((_%self147769148033%_
                (let ((_%$obj148030%_ _%self147769148028%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148030%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148030%_)))
                           '#t)
                      _%$obj148030%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj148030%_)))))
               (_%self147769148035%_ _%self147769148033%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148043148048%_
                       (##unchecked-structure-ref
                        _%self147769148035%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method148044148049%_
                       (##unchecked-structure-ref
                        _%self147769148035%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method148044148049%_ _%object148043148048%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148050148055%_
                       (##unchecked-structure-ref
                        _%self147769148035%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method148051148056%_
                       (##unchecked-structure-ref
                        _%self147769148035%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method148051148056%_ _%object148050148055%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self148059148302%_)
        (let ((_%self148059148304%_ _%self148059148302%_))
          (declare (not safe))
          (let ((_%object148311148316%_
                 (##unchecked-structure-ref
                  _%self148059148304%_
                  '1
                  '#f
                  'write-lock!))
                (_%method148312148317%_
                 (##unchecked-structure-ref
                  _%self148059148304%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method148312148317%_ _%object148311148316%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self148060148319%_)
        (let* ((_%self148060148324%_
                (let ((_%$obj148321%_ _%self148060148319%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148321%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148321%_)))
                           '#t)
                      _%$obj148321%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj148321%_)))))
               (_%self148060148326%_ _%self148060148324%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148334148339%_
                       (##unchecked-structure-ref
                        _%self148060148326%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method148335148340%_
                       (##unchecked-structure-ref
                        _%self148060148326%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method148335148340%_ _%object148334148339%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148341148346%_
                       (##unchecked-structure-ref
                        _%self148060148326%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method148342148347%_
                       (##unchecked-structure-ref
                        _%self148060148326%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method148342148347%_ _%object148341148346%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self148350148593%_)
        (let ((_%self148350148595%_ _%self148350148593%_))
          (declare (not safe))
          (let ((_%object148602148607%_
                 (##unchecked-structure-ref
                  _%self148350148595%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method148603148608%_
                 (##unchecked-structure-ref
                  _%self148350148595%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method148603148608%_ _%object148602148607%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self148351148610%_)
        (let* ((_%self148351148615%_
                (let ((_%$obj148612%_ _%self148351148610%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj148612%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj148612%_)))
                           '#t)
                      _%$obj148612%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj148612%_)))))
               (_%self148351148617%_ _%self148351148615%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object148625148630%_
                       (##unchecked-structure-ref
                        _%self148351148617%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method148626148631%_
                       (##unchecked-structure-ref
                        _%self148351148617%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method148626148631%_ _%object148625148630%_)))
              (let ()
                (declare (not safe))
                (let ((_%object148632148637%_
                       (##unchecked-structure-ref
                        _%self148351148617%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method148633148638%_
                       (##unchecked-structure-ref
                        _%self148351148617%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method148633148638%_ _%object148632148637%_)))))))
    (let* ((_%klass160052%_ __table::t)
           (_%id160055%_ 'HashTable::ref)
           (_%proc160058%_ raw-table-ref)
           (_%rebind?160061%_ '#f)
           (_%id160066%_ _%id160055%_)
           (_%proc160079%_ _%proc160058%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160052%_
       _%id160066%_
       _%proc160079%_
       _%rebind?160061%_))
    (let* ((_%klass160015%_ __table::t)
           (_%id160018%_ 'HashTable::set!)
           (_%proc160021%_ raw-table-set!)
           (_%rebind?160024%_ '#f)
           (_%id160029%_ _%id160018%_)
           (_%proc160042%_ _%proc160021%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160015%_
       _%id160029%_
       _%proc160042%_
       _%rebind?160024%_))
    (let* ((_%klass159978%_ __table::t)
           (_%id159981%_ 'HashTable::update!)
           (_%proc159984%_ raw-table-update!)
           (_%rebind?159987%_ '#f)
           (_%id159992%_ _%id159981%_)
           (_%proc160005%_ _%proc159984%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159978%_
       _%id159992%_
       _%proc160005%_
       _%rebind?159987%_))
    (let* ((_%klass159941%_ __table::t)
           (_%id159944%_ 'HashTable::delete!)
           (_%proc159947%_ raw-table-delete!)
           (_%rebind?159950%_ '#f)
           (_%id159955%_ _%id159944%_)
           (_%proc159968%_ _%proc159947%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159941%_
       _%id159955%_
       _%proc159968%_
       _%rebind?159950%_))
    (let* ((_%klass159904%_ __table::t)
           (_%id159907%_ 'HashTable::for-each)
           (_%proc159910%_ raw-table-for-each)
           (_%rebind?159913%_ '#f)
           (_%id159918%_ _%id159907%_)
           (_%proc159931%_ _%proc159910%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159904%_
       _%id159918%_
       _%proc159931%_
       _%rebind?159913%_))
    (let* ((_%klass159867%_ __table::t)
           (_%id159870%_ 'HashTable::length)
           (_%proc159873%_ &raw-table-count)
           (_%rebind?159876%_ '#f)
           (_%id159881%_ _%id159870%_)
           (_%proc159894%_ _%proc159873%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159867%_
       _%id159881%_
       _%proc159894%_
       _%rebind?159876%_))
    (let* ((_%klass159830%_ __table::t)
           (_%id159833%_ 'HashTable::copy)
           (_%proc159836%_ raw-table-copy)
           (_%rebind?159839%_ '#f)
           (_%id159844%_ _%id159833%_)
           (_%proc159857%_ _%proc159836%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159830%_
       _%id159844%_
       _%proc159857%_
       _%rebind?159839%_))
    (let* ((_%klass159793%_ __table::t)
           (_%id159796%_ 'HashTable::clear!)
           (_%proc159799%_ raw-table-clear!)
           (_%rebind?159802%_ '#f)
           (_%id159807%_ _%id159796%_)
           (_%proc159820%_ _%proc159799%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159793%_
       _%id159807%_
       _%proc159820%_
       _%rebind?159802%_))
    (let* ((_%klass159756%_ __gc-table::t)
           (_%id159759%_ 'HashTable::ref)
           (_%proc159762%_ gc-table-ref)
           (_%rebind?159765%_ '#f)
           (_%id159770%_ _%id159759%_)
           (_%proc159783%_ _%proc159762%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159756%_
       _%id159770%_
       _%proc159783%_
       _%rebind?159765%_))
    (let* ((_%klass159719%_ __gc-table::t)
           (_%id159722%_ 'HashTable::set!)
           (_%proc159725%_ gc-table-set!)
           (_%rebind?159728%_ '#f)
           (_%id159733%_ _%id159722%_)
           (_%proc159746%_ _%proc159725%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159719%_
       _%id159733%_
       _%proc159746%_
       _%rebind?159728%_))
    (let* ((_%klass159682%_ __gc-table::t)
           (_%id159685%_ 'HashTable::update!)
           (_%proc159688%_ gc-table-update!)
           (_%rebind?159691%_ '#f)
           (_%id159696%_ _%id159685%_)
           (_%proc159709%_ _%proc159688%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159682%_
       _%id159696%_
       _%proc159709%_
       _%rebind?159691%_))
    (let* ((_%klass159645%_ __gc-table::t)
           (_%id159648%_ 'HashTable::delete!)
           (_%proc159651%_ gc-table-delete!)
           (_%rebind?159654%_ '#f)
           (_%id159659%_ _%id159648%_)
           (_%proc159672%_ _%proc159651%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159645%_
       _%id159659%_
       _%proc159672%_
       _%rebind?159654%_))
    (let* ((_%klass159608%_ __gc-table::t)
           (_%id159611%_ 'HashTable::for-each)
           (_%proc159614%_ gc-table-for-each)
           (_%rebind?159617%_ '#f)
           (_%id159622%_ _%id159611%_)
           (_%proc159635%_ _%proc159614%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159608%_
       _%id159622%_
       _%proc159635%_
       _%rebind?159617%_))
    (let* ((_%klass159571%_ __gc-table::t)
           (_%id159574%_ 'HashTable::length)
           (_%proc159577%_ gc-table-length)
           (_%rebind?159580%_ '#f)
           (_%id159585%_ _%id159574%_)
           (_%proc159598%_ _%proc159577%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159571%_
       _%id159585%_
       _%proc159598%_
       _%rebind?159580%_))
    (let* ((_%klass159534%_ __gc-table::t)
           (_%id159537%_ 'HashTable::copy)
           (_%proc159540%_ gc-table-copy)
           (_%rebind?159543%_ '#f)
           (_%id159548%_ _%id159537%_)
           (_%proc159561%_ _%proc159540%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159534%_
       _%id159548%_
       _%proc159561%_
       _%rebind?159543%_))
    (let* ((_%klass159497%_ __gc-table::t)
           (_%id159500%_ 'HashTable::clear!)
           (_%proc159503%_ gc-table-clear!)
           (_%rebind?159506%_ '#f)
           (_%id159511%_ _%id159500%_)
           (_%proc159524%_ _%proc159503%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159497%_
       _%id159511%_
       _%proc159524%_
       _%rebind?159506%_))
    (define gambit-table-update!
      (lambda (_%table159490%_
               _%key159491%_
               _%update159492%_
               _%default159493%_)
        (let ((_%result159495%_
               (table-ref _%table159490%_ _%key159491%_ _%default159493%_)))
          (table-set!
           _%table159490%_
           _%key159491%_
           (_%update159492%_ _%default159493%_)))))
    (define gambit-table-for-each
      (lambda (_%table159487%_ _%proc159488%_)
        (table-for-each _%proc159488%_ _%table159487%_)))
    (define gambit-table-clear!
      (lambda (_%table159485%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table159485%_ '0 '5 '#f '#f))))
    (let* ((_%klass159448%_ (macro-type-table))
           (_%id159451%_ 'HashTable::ref)
           (_%proc159454%_ table-ref)
           (_%rebind?159457%_ '#f)
           (_%id159462%_ _%id159451%_)
           (_%proc159475%_ _%proc159454%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159448%_
       _%id159462%_
       _%proc159475%_
       _%rebind?159457%_))
    (let* ((_%klass159411%_ (macro-type-table))
           (_%id159414%_ 'HashTable::set!)
           (_%proc159417%_ table-set!)
           (_%rebind?159420%_ '#f)
           (_%id159425%_ _%id159414%_)
           (_%proc159438%_ _%proc159417%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159411%_
       _%id159425%_
       _%proc159438%_
       _%rebind?159420%_))
    (let* ((_%klass159374%_ (macro-type-table))
           (_%id159377%_ 'HashTable::update!)
           (_%proc159380%_ gambit-table-update!)
           (_%rebind?159383%_ '#f)
           (_%id159388%_ _%id159377%_)
           (_%proc159401%_ _%proc159380%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159374%_
       _%id159388%_
       _%proc159401%_
       _%rebind?159383%_))
    (let* ((_%klass159337%_ (macro-type-table))
           (_%id159340%_ 'HashTable::delete!)
           (_%proc159343%_ table-set!)
           (_%rebind?159346%_ '#f)
           (_%id159351%_ _%id159340%_)
           (_%proc159364%_ _%proc159343%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159337%_
       _%id159351%_
       _%proc159364%_
       _%rebind?159346%_))
    (let* ((_%klass159300%_ (macro-type-table))
           (_%id159303%_ 'HashTable::for-each)
           (_%proc159306%_ gambit-table-for-each)
           (_%rebind?159309%_ '#f)
           (_%id159314%_ _%id159303%_)
           (_%proc159327%_ _%proc159306%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159300%_
       _%id159314%_
       _%proc159327%_
       _%rebind?159309%_))
    (let* ((_%klass159263%_ (macro-type-table))
           (_%id159266%_ 'HashTable::length)
           (_%proc159269%_ table-length)
           (_%rebind?159272%_ '#f)
           (_%id159277%_ _%id159266%_)
           (_%proc159290%_ _%proc159269%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159263%_
       _%id159277%_
       _%proc159290%_
       _%rebind?159272%_))
    (let* ((_%klass159226%_ (macro-type-table))
           (_%id159229%_ 'HashTable::copy)
           (_%proc159232%_ table-copy)
           (_%rebind?159235%_ '#f)
           (_%id159240%_ _%id159229%_)
           (_%proc159253%_ _%proc159232%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159226%_
       _%id159240%_
       _%proc159253%_
       _%rebind?159235%_))
    (let* ((_%klass159189%_ (macro-type-table))
           (_%id159192%_ 'HashTable::clear!)
           (_%proc159195%_ gambit-table-clear!)
           (_%rebind?159198%_ '#f)
           (_%id159203%_ _%id159192%_)
           (_%proc159216%_ _%proc159195%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159189%_
       _%id159203%_
       _%proc159216%_
       _%rebind?159198%_))
    (define hash-table::t
      (let* ((_%slots159152%_ '(table count free hash test seed))
             (_%slot-vector159154%_ (list->vector (cons '#f _%slots159152%_)))
             (_%slot-table159180%_
              (let ((_%slot-table159156%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp161499
                       (lambda (_%slot159158%_ _%field159159%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table159156%_
                            _%slot159158%_
                            _%field159159%_))
                         (let ((__tmp161500
                                (let ((_%sym159161%_ _%slot159158%_))
                                  (if (symbol? _%sym159161%_)
                                      (let ((_%sym159166%_ _%sym159161%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym159166%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym159161%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table159156%_
                            __tmp161500
                            _%field159159%_))))
                      (__tmp161497
                       (let ((__tmp161498
                              (let ()
                                (declare (not safe))
                                (##length _%slots159152%_))))
                         (declare (not safe))
                         (##iota __tmp161498 '1))))
                  (declare (not safe))
                  (##for-each __tmp161499 _%slots159152%_ __tmp161497))
                _%slot-table159156%_))
             (_%flags159182%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields159184%_ '#())
             (_%properties159186%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots159152%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp161501 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags159182%_
         __table::t
         _%fields159184%_
         __tmp161501
         _%slot-vector159154%_
         _%slot-table159180%_
         _%properties159186%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots159115%_ '(gcht immediate))
             (_%slot-vector159117%_ (list->vector (cons '#f _%slots159115%_)))
             (_%slot-table159143%_
              (let ((_%slot-table159119%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp161504
                       (lambda (_%slot159121%_ _%field159122%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table159119%_
                            _%slot159121%_
                            _%field159122%_))
                         (let ((__tmp161505
                                (let ((_%sym159124%_ _%slot159121%_))
                                  (if (symbol? _%sym159124%_)
                                      (let ((_%sym159129%_ _%sym159124%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym159129%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym159124%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table159119%_
                            __tmp161505
                            _%field159122%_))))
                      (__tmp161502
                       (let ((__tmp161503
                              (let ()
                                (declare (not safe))
                                (##length _%slots159115%_))))
                         (declare (not safe))
                         (##iota __tmp161503 '1))))
                  (declare (not safe))
                  (##for-each __tmp161504 _%slots159115%_ __tmp161502))
                _%slot-table159119%_))
             (_%flags159145%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields159147%_ '#())
             (_%properties159149%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots159115%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp161506 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags159145%_
         __gc-table::t
         _%fields159147%_
         __tmp161506
         _%slot-vector159117%_
         _%slot-table159143%_
         _%properties159149%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp161508 (list))
            (__tmp161507
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp161508
         '(table lock)
         __tmp161507
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args159112%_
        (apply make-instance locked-hash-table::t _%$args159112%_)))
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
      (let ((__tmp161510 (list))
            (__tmp161509
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp161510
         '(table key-check)
         __tmp161509
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args159109%_
        (apply make-instance checked-hash-table::t _%$args159109%_)))
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
      (let ((__tmp161512 (list hash-table::t))
            (__tmp161511 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp161512
         '()
         __tmp161511
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args159106%_
        (apply make-instance eq-hash-table::t _%$args159106%_)))
    (define eqv-hash-table::t
      (let ((__tmp161514 (list hash-table::t))
            (__tmp161513 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp161514
         '()
         __tmp161513
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args159103%_
        (apply make-instance eqv-hash-table::t _%$args159103%_)))
    (define symbol-hash-table::t
      (let ((__tmp161516 (list hash-table::t))
            (__tmp161515 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp161516
         '()
         __tmp161515
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args159100%_
        (apply make-instance symbol-hash-table::t _%$args159100%_)))
    (define string-hash-table::t
      (let ((__tmp161518 (list hash-table::t))
            (__tmp161517 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp161518
         '()
         __tmp161517
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args159097%_
        (apply make-instance string-hash-table::t _%$args159097%_)))
    (define immediate-hash-table::t
      (let ((__tmp161520 (list hash-table::t))
            (__tmp161519 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp161520
         '()
         __tmp161519
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args159094%_
        (apply make-instance immediate-hash-table::t _%$args159094%_)))
    (let* ((_%klass159057%_ hash-table::t)
           (_%id159060%_ 'HashTable::ref)
           (_%proc159063%_ raw-table-ref)
           (_%rebind?159066%_ '#f)
           (_%id159071%_ _%id159060%_)
           (_%proc159084%_ _%proc159063%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159057%_
       _%id159071%_
       _%proc159084%_
       _%rebind?159066%_))
    (let* ((_%klass159020%_ hash-table::t)
           (_%id159023%_ 'HashTable::set!)
           (_%proc159026%_ raw-table-set!)
           (_%rebind?159029%_ '#f)
           (_%id159034%_ _%id159023%_)
           (_%proc159047%_ _%proc159026%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159020%_
       _%id159034%_
       _%proc159047%_
       _%rebind?159029%_))
    (let* ((_%klass158983%_ hash-table::t)
           (_%id158986%_ 'HashTable::update!)
           (_%proc158989%_ raw-table-update!)
           (_%rebind?158992%_ '#f)
           (_%id158997%_ _%id158986%_)
           (_%proc159010%_ _%proc158989%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158983%_
       _%id158997%_
       _%proc159010%_
       _%rebind?158992%_))
    (let* ((_%klass158946%_ hash-table::t)
           (_%id158949%_ 'HashTable::delete!)
           (_%proc158952%_ raw-table-delete!)
           (_%rebind?158955%_ '#f)
           (_%id158960%_ _%id158949%_)
           (_%proc158973%_ _%proc158952%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158946%_
       _%id158960%_
       _%proc158973%_
       _%rebind?158955%_))
    (let* ((_%klass158909%_ hash-table::t)
           (_%id158912%_ 'HashTable::for-each)
           (_%proc158915%_ raw-table-for-each)
           (_%rebind?158918%_ '#f)
           (_%id158923%_ _%id158912%_)
           (_%proc158936%_ _%proc158915%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158909%_
       _%id158923%_
       _%proc158936%_
       _%rebind?158918%_))
    (let* ((_%klass158872%_ hash-table::t)
           (_%id158875%_ 'HashTable::length)
           (_%proc158878%_ &raw-table-count)
           (_%rebind?158881%_ '#f)
           (_%id158886%_ _%id158875%_)
           (_%proc158899%_ _%proc158878%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158872%_
       _%id158886%_
       _%proc158899%_
       _%rebind?158881%_))
    (let* ((_%klass158835%_ hash-table::t)
           (_%id158838%_ 'HashTable::copy)
           (_%proc158841%_ raw-table-copy)
           (_%rebind?158844%_ '#f)
           (_%id158849%_ _%id158838%_)
           (_%proc158862%_ _%proc158841%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158835%_
       _%id158849%_
       _%proc158862%_
       _%rebind?158844%_))
    (let* ((_%klass158798%_ hash-table::t)
           (_%id158801%_ 'HashTable::clear!)
           (_%proc158804%_ raw-table-clear!)
           (_%rebind?158807%_ '#f)
           (_%id158812%_ _%id158801%_)
           (_%proc158825%_ _%proc158804%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158798%_
       _%id158812%_
       _%proc158825%_
       _%rebind?158807%_))
    (let* ((_%klass158761%_ eq-hash-table::t)
           (_%id158764%_ 'HashTable::ref)
           (_%proc158767%_ eq-table-ref)
           (_%rebind?158770%_ '#f)
           (_%id158775%_ _%id158764%_)
           (_%proc158788%_ _%proc158767%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158761%_
       _%id158775%_
       _%proc158788%_
       _%rebind?158770%_))
    (let* ((_%klass158724%_ eq-hash-table::t)
           (_%id158727%_ 'HashTable::set!)
           (_%proc158730%_ eq-table-set!)
           (_%rebind?158733%_ '#f)
           (_%id158738%_ _%id158727%_)
           (_%proc158751%_ _%proc158730%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158724%_
       _%id158738%_
       _%proc158751%_
       _%rebind?158733%_))
    (let* ((_%klass158687%_ eq-hash-table::t)
           (_%id158690%_ 'HashTable::update!)
           (_%proc158693%_ eq-table-update!)
           (_%rebind?158696%_ '#f)
           (_%id158701%_ _%id158690%_)
           (_%proc158714%_ _%proc158693%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158687%_
       _%id158701%_
       _%proc158714%_
       _%rebind?158696%_))
    (let* ((_%klass158650%_ eq-hash-table::t)
           (_%id158653%_ 'HashTable::delete!)
           (_%proc158656%_ eq-table-delete!)
           (_%rebind?158659%_ '#f)
           (_%id158664%_ _%id158653%_)
           (_%proc158677%_ _%proc158656%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158650%_
       _%id158664%_
       _%proc158677%_
       _%rebind?158659%_))
    (let* ((_%klass158613%_ eqv-hash-table::t)
           (_%id158616%_ 'HashTable::ref)
           (_%proc158619%_ eqv-table-ref)
           (_%rebind?158622%_ '#f)
           (_%id158627%_ _%id158616%_)
           (_%proc158640%_ _%proc158619%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158613%_
       _%id158627%_
       _%proc158640%_
       _%rebind?158622%_))
    (let* ((_%klass158576%_ eqv-hash-table::t)
           (_%id158579%_ 'HashTable::set!)
           (_%proc158582%_ eqv-table-set!)
           (_%rebind?158585%_ '#f)
           (_%id158590%_ _%id158579%_)
           (_%proc158603%_ _%proc158582%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158576%_
       _%id158590%_
       _%proc158603%_
       _%rebind?158585%_))
    (let* ((_%klass158539%_ eqv-hash-table::t)
           (_%id158542%_ 'HashTable::update!)
           (_%proc158545%_ eqv-table-update!)
           (_%rebind?158548%_ '#f)
           (_%id158553%_ _%id158542%_)
           (_%proc158566%_ _%proc158545%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158539%_
       _%id158553%_
       _%proc158566%_
       _%rebind?158548%_))
    (let* ((_%klass158502%_ eqv-hash-table::t)
           (_%id158505%_ 'HashTable::delete!)
           (_%proc158508%_ eqv-table-delete!)
           (_%rebind?158511%_ '#f)
           (_%id158516%_ _%id158505%_)
           (_%proc158529%_ _%proc158508%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158502%_
       _%id158516%_
       _%proc158529%_
       _%rebind?158511%_))
    (let* ((_%klass158465%_ symbol-hash-table::t)
           (_%id158468%_ 'HashTable::ref)
           (_%proc158471%_ symbolic-table-ref)
           (_%rebind?158474%_ '#f)
           (_%id158479%_ _%id158468%_)
           (_%proc158492%_ _%proc158471%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158465%_
       _%id158479%_
       _%proc158492%_
       _%rebind?158474%_))
    (let* ((_%klass158428%_ symbol-hash-table::t)
           (_%id158431%_ 'HashTable::set!)
           (_%proc158434%_ symbolic-table-set!)
           (_%rebind?158437%_ '#f)
           (_%id158442%_ _%id158431%_)
           (_%proc158455%_ _%proc158434%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158428%_
       _%id158442%_
       _%proc158455%_
       _%rebind?158437%_))
    (let* ((_%klass158391%_ symbol-hash-table::t)
           (_%id158394%_ 'HashTable::update!)
           (_%proc158397%_ symbolic-table-update!)
           (_%rebind?158400%_ '#f)
           (_%id158405%_ _%id158394%_)
           (_%proc158418%_ _%proc158397%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158391%_
       _%id158405%_
       _%proc158418%_
       _%rebind?158400%_))
    (let* ((_%klass158354%_ symbol-hash-table::t)
           (_%id158357%_ 'HashTable::delete!)
           (_%proc158360%_ symbolic-table-delete!)
           (_%rebind?158363%_ '#f)
           (_%id158368%_ _%id158357%_)
           (_%proc158381%_ _%proc158360%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158354%_
       _%id158368%_
       _%proc158381%_
       _%rebind?158363%_))
    (let* ((_%klass158317%_ string-hash-table::t)
           (_%id158320%_ 'HashTable::ref)
           (_%proc158323%_ string-table-ref)
           (_%rebind?158326%_ '#f)
           (_%id158331%_ _%id158320%_)
           (_%proc158344%_ _%proc158323%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158317%_
       _%id158331%_
       _%proc158344%_
       _%rebind?158326%_))
    (let* ((_%klass158280%_ string-hash-table::t)
           (_%id158283%_ 'HashTable::set!)
           (_%proc158286%_ string-table-set!)
           (_%rebind?158289%_ '#f)
           (_%id158294%_ _%id158283%_)
           (_%proc158307%_ _%proc158286%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158280%_
       _%id158294%_
       _%proc158307%_
       _%rebind?158289%_))
    (let* ((_%klass158243%_ string-hash-table::t)
           (_%id158246%_ 'HashTable::update!)
           (_%proc158249%_ string-table-update!)
           (_%rebind?158252%_ '#f)
           (_%id158257%_ _%id158246%_)
           (_%proc158270%_ _%proc158249%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158243%_
       _%id158257%_
       _%proc158270%_
       _%rebind?158252%_))
    (let* ((_%klass158206%_ string-hash-table::t)
           (_%id158209%_ 'HashTable::delete!)
           (_%proc158212%_ string-table-delete!)
           (_%rebind?158215%_ '#f)
           (_%id158220%_ _%id158209%_)
           (_%proc158233%_ _%proc158212%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158206%_
       _%id158220%_
       _%proc158233%_
       _%rebind?158215%_))
    (let* ((_%klass158169%_ immediate-hash-table::t)
           (_%id158172%_ 'HashTable::ref)
           (_%proc158175%_ immediate-table-ref)
           (_%rebind?158178%_ '#f)
           (_%id158183%_ _%id158172%_)
           (_%proc158196%_ _%proc158175%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158169%_
       _%id158183%_
       _%proc158196%_
       _%rebind?158178%_))
    (let* ((_%klass158132%_ immediate-hash-table::t)
           (_%id158135%_ 'HashTable::set!)
           (_%proc158138%_ immediate-table-set!)
           (_%rebind?158141%_ '#f)
           (_%id158146%_ _%id158135%_)
           (_%proc158159%_ _%proc158138%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158132%_
       _%id158146%_
       _%proc158159%_
       _%rebind?158141%_))
    (let* ((_%klass158095%_ immediate-hash-table::t)
           (_%id158098%_ 'HashTable::update!)
           (_%proc158101%_ immediate-table-update!)
           (_%rebind?158104%_ '#f)
           (_%id158109%_ _%id158098%_)
           (_%proc158122%_ _%proc158101%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158095%_
       _%id158109%_
       _%proc158122%_
       _%rebind?158104%_))
    (let* ((_%klass158058%_ immediate-hash-table::t)
           (_%id158061%_ 'HashTable::delete!)
           (_%proc158064%_ immediate-table-delete!)
           (_%rebind?158067%_ '#f)
           (_%id158072%_ _%id158061%_)
           (_%proc158085%_ _%proc158064%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158058%_
       _%id158072%_
       _%proc158085%_
       _%rebind?158067%_))
    (let* ((_%klass158021%_ gc-hash-table::t)
           (_%id158024%_ 'HashTable::ref)
           (_%proc158027%_ gc-table-ref)
           (_%rebind?158030%_ '#f)
           (_%id158035%_ _%id158024%_)
           (_%proc158048%_ _%proc158027%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass158021%_
       _%id158035%_
       _%proc158048%_
       _%rebind?158030%_))
    (let* ((_%klass157984%_ gc-hash-table::t)
           (_%id157987%_ 'HashTable::set!)
           (_%proc157990%_ gc-table-set!)
           (_%rebind?157993%_ '#f)
           (_%id157998%_ _%id157987%_)
           (_%proc158011%_ _%proc157990%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157984%_
       _%id157998%_
       _%proc158011%_
       _%rebind?157993%_))
    (let* ((_%klass157947%_ gc-hash-table::t)
           (_%id157950%_ 'HashTable::update!)
           (_%proc157953%_ gc-table-update!)
           (_%rebind?157956%_ '#f)
           (_%id157961%_ _%id157950%_)
           (_%proc157974%_ _%proc157953%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157947%_
       _%id157961%_
       _%proc157974%_
       _%rebind?157956%_))
    (let* ((_%klass157910%_ gc-hash-table::t)
           (_%id157913%_ 'HashTable::delete!)
           (_%proc157916%_ gc-table-delete!)
           (_%rebind?157919%_ '#f)
           (_%id157924%_ _%id157913%_)
           (_%proc157937%_ _%proc157916%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157910%_
       _%id157924%_
       _%proc157937%_
       _%rebind?157919%_))
    (let* ((_%klass157873%_ gc-hash-table::t)
           (_%id157876%_ 'HashTable::for-each)
           (_%proc157879%_ gc-table-for-each)
           (_%rebind?157882%_ '#f)
           (_%id157887%_ _%id157876%_)
           (_%proc157900%_ _%proc157879%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157873%_
       _%id157887%_
       _%proc157900%_
       _%rebind?157882%_))
    (let* ((_%klass157836%_ gc-hash-table::t)
           (_%id157839%_ 'HashTable::length)
           (_%proc157842%_ gc-table-length)
           (_%rebind?157845%_ '#f)
           (_%id157850%_ _%id157839%_)
           (_%proc157863%_ _%proc157842%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157836%_
       _%id157850%_
       _%proc157863%_
       _%rebind?157845%_))
    (let* ((_%klass157799%_ gc-hash-table::t)
           (_%id157802%_ 'HashTable::copy)
           (_%proc157805%_ gc-table-copy)
           (_%rebind?157808%_ '#f)
           (_%id157813%_ _%id157802%_)
           (_%proc157826%_ _%proc157805%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157799%_
       _%id157813%_
       _%proc157826%_
       _%rebind?157808%_))
    (let* ((_%klass157762%_ gc-hash-table::t)
           (_%id157765%_ 'HashTable::clear!)
           (_%proc157768%_ gc-table-clear!)
           (_%rebind?157771%_ '#f)
           (_%id157776%_ _%id157765%_)
           (_%proc157789%_ _%proc157768%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass157762%_
       _%id157776%_
       _%proc157789%_
       _%rebind?157771%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref149023%_
      (lambda (_%self157683%_ _%key157685%_ _%default157686%_)
        (let* ((_%self157689%_ _%self157683%_)
               (_%key157698%_ _%key157685%_)
               (_%default157706%_ _%default157686%_))
          (let ((_%h157715%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157689%_ '1 '#f '#f)))
                (_%l157717%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157689%_ '2 '#f '#f))))
            (let ((__tmp161523
                   (lambda ()
                     (let ((_%self147475157721%_ _%l157717%_))
                       (declare (not safe))
                       (let ((_%object157724157729%_
                              (##unchecked-structure-ref
                               _%self147475157721%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method157725157730%_
                              (##unchecked-structure-ref
                               _%self147475157721%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method157725157730%_ _%object157724157729%_)))))
                  (__tmp161522
                   (lambda ()
                     (let* ((_%self146570157733%_ _%h157715%_)
                            (_%key157736%_ _%key157698%_)
                            (_%default157739%_ _%default157706%_))
                       (declare (not safe))
                       (let ((_%object157742157747%_
                              (##unchecked-structure-ref
                               _%self146570157733%_
                               '1
                               '#f
                               'ref))
                             (_%method157743157748%_
                              (##unchecked-structure-ref
                               _%self146570157733%_
                               '7
                               '#f
                               'ref)))
                         (_%method157743157748%_
                          _%object157742157747%_
                          _%key157736%_
                          _%default157739%_)))))
                  (__tmp161521
                   (lambda ()
                     (let ((_%self147766157751%_ _%l157717%_))
                       (declare (not safe))
                       (let ((_%object157754157759%_
                              (##unchecked-structure-ref
                               _%self147766157751%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method157755157760%_
                              (##unchecked-structure-ref
                               _%self147766157751%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method157755157760%_ _%object157754157759%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161523 __tmp161522 __tmp161521))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref149023%_
       '#f))
    (define _%locked-hash-table::HashTable::set!149025%_
      (lambda (_%self157481%_ _%key157483%_ _%value157484%_)
        (let* ((_%self157487%_ _%self157481%_)
               (_%key157496%_ _%key157483%_)
               (_%value157504%_ _%value157484%_))
          (let ((_%h157513%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157487%_ '1 '#f '#f)))
                (_%l157515%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157487%_ '2 '#f '#f))))
            (let ((__tmp161526
                   (lambda ()
                     (let ((_%self148057157519%_ _%l157515%_))
                       (declare (not safe))
                       (let ((_%object157522157527%_
                              (##unchecked-structure-ref
                               _%self148057157519%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method157523157528%_
                              (##unchecked-structure-ref
                               _%self148057157519%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method157523157528%_ _%object157522157527%_)))))
                  (__tmp161525
                   (lambda ()
                     (let* ((_%self146865157531%_ _%h157513%_)
                            (_%key157534%_ _%key157496%_)
                            (_%value157537%_ _%value157504%_))
                       (declare (not safe))
                       (let ((_%object157540157545%_
                              (##unchecked-structure-ref
                               _%self146865157531%_
                               '1
                               '#f
                               'set!))
                             (_%method157541157546%_
                              (##unchecked-structure-ref
                               _%self146865157531%_
                               '8
                               '#f
                               'set!)))
                         (_%method157541157546%_
                          _%object157540157545%_
                          _%key157534%_
                          _%value157537%_)))))
                  (__tmp161524
                   (lambda ()
                     (let ((_%self148348157549%_ _%l157515%_))
                       (declare (not safe))
                       (let ((_%object157552157557%_
                              (##unchecked-structure-ref
                               _%self148348157549%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method157553157558%_
                              (##unchecked-structure-ref
                               _%self148348157549%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method157553157558%_ _%object157552157557%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161526 __tmp161525 __tmp161524))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!149025%_
       '#f))
    (define _%locked-hash-table::HashTable::update!149027%_
      (lambda (_%self157267%_ _%key157269%_ _%update157270%_ _%default157271%_)
        (let* ((_%self157274%_ _%self157267%_)
               (_%key157283%_ _%key157269%_)
               (_%update157291%_ _%update157270%_)
               (_%default157299%_ _%default157271%_))
          (let ((_%h157308%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157274%_ '1 '#f '#f)))
                (_%l157310%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157274%_ '2 '#f '#f))))
            (let ((__tmp161529
                   (lambda ()
                     (let ((_%self148057157314%_ _%l157310%_))
                       (declare (not safe))
                       (let ((_%object157317157322%_
                              (##unchecked-structure-ref
                               _%self148057157314%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method157318157323%_
                              (##unchecked-structure-ref
                               _%self148057157314%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method157318157323%_ _%object157317157322%_)))))
                  (__tmp161528
                   (lambda ()
                     (let* ((_%self147160157326%_ _%h157308%_)
                            (_%key157329%_ _%key157283%_)
                            (_%proc157332%_ _%update157291%_)
                            (_%default157335%_ _%default157299%_))
                       (declare (not safe))
                       (let ((_%object157338157343%_
                              (##unchecked-structure-ref
                               _%self147160157326%_
                               '1
                               '#f
                               'update!))
                             (_%method157339157344%_
                              (##unchecked-structure-ref
                               _%self147160157326%_
                               '9
                               '#f
                               'update!)))
                         (_%method157339157344%_
                          _%object157338157343%_
                          _%key157329%_
                          _%proc157332%_
                          _%default157335%_)))))
                  (__tmp161527
                   (lambda ()
                     (let ((_%self148348157347%_ _%l157310%_))
                       (declare (not safe))
                       (let ((_%object157350157355%_
                              (##unchecked-structure-ref
                               _%self148348157347%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method157351157356%_
                              (##unchecked-structure-ref
                               _%self148348157347%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method157351157356%_ _%object157350157355%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161529 __tmp161528 __tmp161527))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!149027%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!149029%_
      (lambda (_%self157077%_ _%key157079%_)
        (let* ((_%self157082%_ _%self157077%_) (_%key157091%_ _%key157079%_))
          (let ((_%h157100%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157082%_ '1 '#f '#f)))
                (_%l157102%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self157082%_ '2 '#f '#f))))
            (let ((__tmp161532
                   (lambda ()
                     (let ((_%self148057157106%_ _%l157102%_))
                       (declare (not safe))
                       (let ((_%object157109157114%_
                              (##unchecked-structure-ref
                               _%self148057157106%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method157110157115%_
                              (##unchecked-structure-ref
                               _%self148057157106%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method157110157115%_ _%object157109157114%_)))))
                  (__tmp161531
                   (lambda ()
                     (let* ((_%self145672157118%_ _%h157100%_)
                            (_%key157121%_ _%key157091%_))
                       (declare (not safe))
                       (let ((_%object157124157129%_
                              (##unchecked-structure-ref
                               _%self145672157118%_
                               '1
                               '#f
                               'delete!))
                             (_%method157125157130%_
                              (##unchecked-structure-ref
                               _%self145672157118%_
                               '4
                               '#f
                               'delete!)))
                         (_%method157125157130%_
                          _%object157124157129%_
                          _%key157121%_)))))
                  (__tmp161530
                   (lambda ()
                     (let ((_%self148348157133%_ _%l157102%_))
                       (declare (not safe))
                       (let ((_%object157136157141%_
                              (##unchecked-structure-ref
                               _%self148348157133%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method157137157142%_
                              (##unchecked-structure-ref
                               _%self148348157133%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method157137157142%_ _%object157136157141%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161532 __tmp161531 __tmp161530))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!149029%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each149031%_
      (lambda (_%self156887%_ _%proc156889%_)
        (let* ((_%self156892%_ _%self156887%_) (_%proc156901%_ _%proc156889%_))
          (let ((_%h156910%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156892%_ '1 '#f '#f)))
                (_%l156912%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156892%_ '2 '#f '#f))))
            (let ((__tmp161535
                   (lambda ()
                     (let ((_%self147475156916%_ _%l156912%_))
                       (declare (not safe))
                       (let ((_%object156919156924%_
                              (##unchecked-structure-ref
                               _%self147475156916%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method156920156925%_
                              (##unchecked-structure-ref
                               _%self147475156916%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method156920156925%_ _%object156919156924%_)))))
                  (__tmp161534
                   (lambda ()
                     (let* ((_%self145965156928%_ _%h156910%_)
                            (_%proc156931%_ _%proc156901%_))
                       (declare (not safe))
                       (let ((_%object156934156939%_
                              (##unchecked-structure-ref
                               _%self145965156928%_
                               '1
                               '#f
                               'for-each))
                             (_%method156935156940%_
                              (##unchecked-structure-ref
                               _%self145965156928%_
                               '5
                               '#f
                               'for-each)))
                         (_%method156935156940%_
                          _%object156934156939%_
                          _%proc156931%_)))))
                  (__tmp161533
                   (lambda ()
                     (let ((_%self147766156943%_ _%l156912%_))
                       (declare (not safe))
                       (let ((_%object156946156951%_
                              (##unchecked-structure-ref
                               _%self147766156943%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method156947156952%_
                              (##unchecked-structure-ref
                               _%self147766156943%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method156947156952%_ _%object156946156951%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161535 __tmp161534 __tmp161533))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each149031%_
       '#f))
    (define _%locked-hash-table::HashTable::length149033%_
      (lambda (_%self156702%_)
        (let ((_%self156706%_ _%self156702%_))
          (let ((_%h156716%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156706%_ '1 '#f '#f)))
                (_%l156718%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156706%_ '2 '#f '#f))))
            ((lambda (_%g156720156722%_)
               (let ((_%val156725%_ _%g156720156722%_))
                 (if (fixnum? _%val156725%_)
                     _%val156725%_
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/hash
                        'contract:
                        '(fixnum? val)
                        'value:
                        _%val156725%_)
                       '#!void))))
             (let ((__tmp161538
                    (lambda ()
                      (let ((_%self147475156729%_ _%l156718%_))
                        (declare (not safe))
                        (let ((_%object156732156737%_
                               (##unchecked-structure-ref
                                _%self147475156729%_
                                '1
                                '#f
                                'read-lock!))
                              (_%method156733156738%_
                               (##unchecked-structure-ref
                                _%self147475156729%_
                                '2
                                '#f
                                'read-lock!)))
                          (_%method156733156738%_ _%object156732156737%_)))))
                   (__tmp161537
                    (lambda ()
                      (let ((_%self146276156741%_ _%h156716%_))
                        (declare (not safe))
                        (let ((_%object156744156749%_
                               (##unchecked-structure-ref
                                _%self146276156741%_
                                '1
                                '#f
                                'length))
                              (_%method156745156750%_
                               (##unchecked-structure-ref
                                _%self146276156741%_
                                '6
                                '#f
                                'length)))
                          (_%method156745156750%_ _%object156744156749%_)))))
                   (__tmp161536
                    (lambda ()
                      (let ((_%self147766156753%_ _%l156718%_))
                        (declare (not safe))
                        (let ((_%object156756156761%_
                               (##unchecked-structure-ref
                                _%self147766156753%_
                                '1
                                '#f
                                'read-unlock!))
                              (_%method156757156762%_
                               (##unchecked-structure-ref
                                _%self147766156753%_
                                '3
                                '#f
                                'read-unlock!)))
                          (_%method156757156762%_ _%object156756156761%_))))))
               (declare (not safe))
               (##dynamic-wind __tmp161538 __tmp161537 __tmp161536)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length149033%_
       '#f))
    (define _%locked-hash-table::HashTable::copy149035%_
      (lambda (_%self156521%_)
        (let ((_%self156525%_ _%self156521%_))
          (let ((_%h156535%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156525%_ '1 '#f '#f)))
                (_%l156537%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156525%_ '2 '#f '#f))))
            (let ((_%$obj156576%_
                   (let ((__tmp161541
                          (lambda ()
                            (let ((_%self147475156541%_ _%l156537%_))
                              (declare (not safe))
                              (let ((_%object156544156549%_
                                     (##unchecked-structure-ref
                                      _%self147475156541%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method156545156550%_
                                     (##unchecked-structure-ref
                                      _%self147475156541%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method156545156550%_
                                 _%object156544156549%_)))))
                         (__tmp161540
                          (lambda ()
                            (let ((_%self145378156553%_ _%h156535%_))
                              (declare (not safe))
                              (let ((_%object156556156561%_
                                     (##unchecked-structure-ref
                                      _%self145378156553%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method156557156562%_
                                     (##unchecked-structure-ref
                                      _%self145378156553%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method156557156562%_
                                 _%object156556156561%_)))))
                         (__tmp161539
                          (lambda ()
                            (let ((_%self147766156565%_ _%l156537%_))
                              (declare (not safe))
                              (let ((_%object156568156573%_
                                     (##unchecked-structure-ref
                                      _%self147766156565%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method156569156574%_
                                     (##unchecked-structure-ref
                                      _%self147766156565%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method156569156574%_
                                 _%object156568156573%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp161541 __tmp161540 __tmp161539))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj156576%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj156576%_)))
                       '#t)
                  _%$obj156576%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj156576%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy149035%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!149037%_
      (lambda (_%self156343%_)
        (let ((_%self156347%_ _%self156343%_))
          (let ((_%h156357%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156347%_ '1 '#f '#f)))
                (_%l156359%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self156347%_ '2 '#f '#f))))
            (let ((__tmp161544
                   (lambda ()
                     (let ((_%self148057156363%_ _%l156359%_))
                       (declare (not safe))
                       (let ((_%object156366156371%_
                              (##unchecked-structure-ref
                               _%self148057156363%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method156367156372%_
                              (##unchecked-structure-ref
                               _%self148057156363%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method156367156372%_ _%object156366156371%_)))))
                  (__tmp161543
                   (lambda ()
                     (let ((_%self145086156375%_ _%h156357%_))
                       (declare (not safe))
                       (let ((_%object156378156383%_
                              (##unchecked-structure-ref
                               _%self145086156375%_
                               '1
                               '#f
                               'clear!))
                             (_%method156379156384%_
                              (##unchecked-structure-ref
                               _%self145086156375%_
                               '2
                               '#f
                               'clear!)))
                         (_%method156379156384%_ _%object156378156383%_)))))
                  (__tmp161542
                   (lambda ()
                     (let ((_%self148348156387%_ _%l156359%_))
                       (declare (not safe))
                       (let ((_%object156390156395%_
                              (##unchecked-structure-ref
                               _%self148348156387%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method156391156396%_
                              (##unchecked-structure-ref
                               _%self148348156387%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method156391156396%_ _%object156390156395%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp161544 __tmp161543 __tmp161542))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!149037%_
       '#f))
    (let* ((_%klass156183%_ (macro-type-mutex))
           (_%id156186%_ 'Locker::read-lock!)
           (_%proc156189%_ mutex-lock!)
           (_%rebind?156192%_ '#f)
           (_%id156197%_ _%id156186%_)
           (_%proc156210%_ _%proc156189%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156183%_
       _%id156197%_
       _%proc156210%_
       _%rebind?156192%_))
    (let* ((_%klass156146%_ (macro-type-mutex))
           (_%id156149%_ 'Locker::read-unlock!)
           (_%proc156152%_ mutex-unlock!)
           (_%rebind?156155%_ '#f)
           (_%id156160%_ _%id156149%_)
           (_%proc156173%_ _%proc156152%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156146%_
       _%id156160%_
       _%proc156173%_
       _%rebind?156155%_))
    (let* ((_%klass156109%_ (macro-type-mutex))
           (_%id156112%_ 'Locker::write-lock!)
           (_%proc156115%_ mutex-lock!)
           (_%rebind?156118%_ '#f)
           (_%id156123%_ _%id156112%_)
           (_%proc156136%_ _%proc156115%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156109%_
       _%id156123%_
       _%proc156136%_
       _%rebind?156118%_))
    (let* ((_%klass156072%_ (macro-type-mutex))
           (_%id156075%_ 'Locker::write-unlock!)
           (_%proc156078%_ mutex-unlock!)
           (_%rebind?156081%_ '#f)
           (_%id156086%_ _%id156075%_)
           (_%proc156099%_ _%proc156078%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass156072%_
       _%id156086%_
       _%proc156099%_
       _%rebind?156081%_))
    (define _%checked-hash-table::HashTable::ref149248%_
      (lambda (_%self156013%_ _%key156014%_ _%default156015%_)
        (let* ((_%self156018%_ _%self156013%_)
               (_%key156027%_ _%key156014%_)
               (_%default156035%_ _%default156015%_))
          (declare (not safe))
          (let ((_%h156046%_
                 (##unchecked-structure-ref _%self156018%_ '1 '#f '#f))
                (_%key?156048%_
                 (##unchecked-structure-ref _%self156018%_ '2 '#f '#f)))
            (if ((lambda (_%key?156051%_ _%key156052%_ _%default156053%_)
                   (_%key?156051%_ _%key156052%_))
                 _%key?156048%_
                 _%key156027%_
                 _%default156035%_)
                (let* ((_%self146570156055%_ _%h156046%_)
                       (_%key156058%_ _%key156027%_)
                       (_%default156061%_ _%default156035%_))
                  (declare (not safe))
                  (let ((_%object156064156069%_
                         (##unchecked-structure-ref
                          _%self146570156055%_
                          '1
                          '#f
                          'ref))
                        (_%method156065156070%_
                         (##unchecked-structure-ref
                          _%self146570156055%_
                          '7
                          '#f
                          'ref)))
                    (_%method156065156070%_
                     _%object156064156069%_
                     _%key156058%_
                     _%default156061%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key156027%_ (cons _%default156035%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref149248%_
       '#f))
    (define _%checked-hash-table::HashTable::set!149250%_
      (lambda (_%self155831%_ _%key155832%_ _%value155833%_)
        (let* ((_%self155836%_ _%self155831%_)
               (_%key155845%_ _%key155832%_)
               (_%value155853%_ _%value155833%_))
          (declare (not safe))
          (let ((_%h155864%_
                 (##unchecked-structure-ref _%self155836%_ '1 '#f '#f))
                (_%key?155866%_
                 (##unchecked-structure-ref _%self155836%_ '2 '#f '#f)))
            (if ((lambda (_%key?155869%_ _%key155870%_ _%value155871%_)
                   (_%key?155869%_ _%key155870%_))
                 _%key?155866%_
                 _%key155845%_
                 _%value155853%_)
                (let* ((_%self146865155873%_ _%h155864%_)
                       (_%key155876%_ _%key155845%_)
                       (_%value155879%_ _%value155853%_))
                  (declare (not safe))
                  (let ((_%object155882155887%_
                         (##unchecked-structure-ref
                          _%self146865155873%_
                          '1
                          '#f
                          'set!))
                        (_%method155883155888%_
                         (##unchecked-structure-ref
                          _%self146865155873%_
                          '8
                          '#f
                          'set!)))
                    (_%method155883155888%_
                     _%object155882155887%_
                     _%key155876%_
                     _%value155879%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key155845%_ (cons _%value155853%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!149250%_
       '#f))
    (define _%checked-hash-table::HashTable::update!149252%_
      (lambda (_%self155636%_ _%key155637%_ _%update155638%_ _%default155639%_)
        (let* ((_%self155642%_ _%self155636%_)
               (_%key155651%_ _%key155637%_)
               (_%update155659%_ _%update155638%_)
               (_%default155667%_ _%default155639%_))
          (declare (not safe))
          (let ((_%h155678%_
                 (##unchecked-structure-ref _%self155642%_ '1 '#f '#f))
                (_%key?155680%_
                 (##unchecked-structure-ref _%self155642%_ '2 '#f '#f)))
            (if ((lambda (_%key?155683%_
                          _%key155684%_
                          _%update155685%_
                          _%default155686%_)
                   (_%key?155683%_ _%key155684%_))
                 _%key?155680%_
                 _%key155651%_
                 _%update155659%_
                 _%default155667%_)
                (let* ((_%self147160155688%_ _%h155678%_)
                       (_%key155691%_ _%key155651%_)
                       (_%proc155694%_ _%update155659%_)
                       (_%default155697%_ _%default155667%_))
                  (declare (not safe))
                  (let ((_%object155700155705%_
                         (##unchecked-structure-ref
                          _%self147160155688%_
                          '1
                          '#f
                          'update!))
                        (_%method155701155706%_
                         (##unchecked-structure-ref
                          _%self147160155688%_
                          '9
                          '#f
                          'update!)))
                    (_%method155701155706%_
                     _%object155700155705%_
                     _%key155691%_
                     _%proc155694%_
                     _%default155697%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key155651%_
                         (cons _%update155659%_ (cons _%default155667%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!149252%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!149254%_
      (lambda (_%self155467%_ _%key155468%_)
        (let* ((_%self155471%_ _%self155467%_) (_%key155480%_ _%key155468%_))
          (declare (not safe))
          (let ((_%h155491%_
                 (##unchecked-structure-ref _%self155471%_ '1 '#f '#f))
                (_%key?155493%_
                 (##unchecked-structure-ref _%self155471%_ '2 '#f '#f)))
            (if ((lambda (_%key?155496%_ _%key155497%_)
                   (_%key?155496%_ _%key155497%_))
                 _%key?155493%_
                 _%key155480%_)
                (let* ((_%self145672155499%_ _%h155491%_)
                       (_%key155502%_ _%key155480%_))
                  (declare (not safe))
                  (let ((_%object155505155510%_
                         (##unchecked-structure-ref
                          _%self145672155499%_
                          '1
                          '#f
                          'delete!))
                        (_%method155506155511%_
                         (##unchecked-structure-ref
                          _%self145672155499%_
                          '4
                          '#f
                          'delete!)))
                    (_%method155506155511%_
                     _%object155505155510%_
                     _%key155502%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key155480%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!149254%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each149256%_
      (lambda (_%self155298%_ _%proc155299%_)
        (let* ((_%self155302%_ _%self155298%_) (_%proc155311%_ _%proc155299%_))
          (declare (not safe))
          (let ((_%h155322%_
                 (##unchecked-structure-ref _%self155302%_ '1 '#f '#f))
                (_%key?155324%_
                 (##unchecked-structure-ref _%self155302%_ '2 '#f '#f)))
            (if ((lambda (_%key?155327%_ _%proc155328%_) '#t)
                 _%key?155324%_
                 _%proc155311%_)
                (let* ((_%self145965155330%_ _%h155322%_)
                       (_%proc155333%_ _%proc155311%_))
                  (declare (not safe))
                  (let ((_%object155336155341%_
                         (##unchecked-structure-ref
                          _%self145965155330%_
                          '1
                          '#f
                          'for-each))
                        (_%method155337155342%_
                         (##unchecked-structure-ref
                          _%self145965155330%_
                          '5
                          '#f
                          'for-each)))
                    (_%method155337155342%_
                     _%object155336155341%_
                     _%proc155333%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc155311%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each149256%_
       '#f))
    (define _%checked-hash-table::HashTable::length149258%_
      (lambda (_%self155144%_)
        (let ((_%self155147%_ _%self155144%_))
          (declare (not safe))
          (let ((_%h155159%_
                 (##unchecked-structure-ref _%self155147%_ '1 '#f '#f))
                (_%key?155161%_
                 (##unchecked-structure-ref _%self155147%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self146276155164%_ _%h155159%_))
                  (declare (not safe))
                  (let ((_%object155167155172%_
                         (##unchecked-structure-ref
                          _%self146276155164%_
                          '1
                          '#f
                          'length))
                        (_%method155168155173%_
                         (##unchecked-structure-ref
                          _%self146276155164%_
                          '6
                          '#f
                          'length)))
                    (_%method155168155173%_ _%object155167155172%_)))
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
       _%checked-hash-table::HashTable::length149258%_
       '#f))
    (define _%checked-hash-table::HashTable::copy149260%_
      (lambda (_%self154990%_)
        (let ((_%self154993%_ _%self154990%_))
          (declare (not safe))
          (let ((_%h155005%_
                 (##unchecked-structure-ref _%self154993%_ '1 '#f '#f))
                (_%key?155007%_
                 (##unchecked-structure-ref _%self154993%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self145378155010%_ _%h155005%_))
                  (declare (not safe))
                  (let ((_%object155013155018%_
                         (##unchecked-structure-ref
                          _%self145378155010%_
                          '1
                          '#f
                          'copy))
                        (_%method155014155019%_
                         (##unchecked-structure-ref
                          _%self145378155010%_
                          '3
                          '#f
                          'copy)))
                    (_%method155014155019%_ _%object155013155018%_)))
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
       _%checked-hash-table::HashTable::copy149260%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!149262%_
      (lambda (_%self154836%_)
        (let ((_%self154839%_ _%self154836%_))
          (declare (not safe))
          (let ((_%h154851%_
                 (##unchecked-structure-ref _%self154839%_ '1 '#f '#f))
                (_%key?154853%_
                 (##unchecked-structure-ref _%self154839%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self145086154856%_ _%h154851%_))
                  (declare (not safe))
                  (let ((_%object154859154864%_
                         (##unchecked-structure-ref
                          _%self145086154856%_
                          '1
                          '#f
                          'clear!))
                        (_%method154860154865%_
                         (##unchecked-structure-ref
                          _%self145086154856%_
                          '2
                          '#f
                          'clear!)))
                    (_%method154860154865%_ _%object154859154864%_)))
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
       _%checked-hash-table::HashTable::clear!149262%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table154706%_
               _%count154707%_
               _%free154708%_
               _%hash154709%_
               _%test154710%_
               _%seed154711%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table154706%_
           _%count154707%_
           _%free154708%_
           _%hash154709%_
           _%test154710%_
           _%seed154711%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords154116%_
               _%size-hint154106154117%_
               _%seed154107154118%_
               _%test154108154119%_
               _%hash154109154120%_
               _%lock154110154121%_
               _%check154111154122%_
               _%weak-keys154112154123%_
               _%weak-values154113154124%_)
        (let* ((_%size-hint154126%_
                (if (eq? _%size-hint154106154117%_ absent-value)
                    '#f
                    _%size-hint154106154117%_))
               (_%seed154128%_
                (if (eq? _%seed154107154118%_ absent-value)
                    '#f
                    _%seed154107154118%_))
               (_%test154130%_
                (if (eq? _%test154108154119%_ absent-value)
                    equal?
                    _%test154108154119%_))
               (_%hash154132%_
                (if (eq? _%hash154109154120%_ absent-value)
                    '#f
                    _%hash154109154120%_))
               (_%lock154134%_
                (if (eq? _%lock154110154121%_ absent-value)
                    '#f
                    _%lock154110154121%_))
               (_%check154136%_
                (if (eq? _%check154111154122%_ absent-value)
                    '#f
                    _%check154111154122%_))
               (_%weak-keys154138%_
                (if (eq? _%weak-keys154112154123%_ absent-value)
                    '#f
                    _%weak-keys154112154123%_))
               (_%weak-values154140%_
                (if (eq? _%weak-values154113154124%_ absent-value)
                    '#f
                    _%weak-values154113154124%_)))
          (letrec ((_%table-seed154143%_
                    (lambda ()
                      (if (fixnum? _%seed154128%_)
                          _%seed154128%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock154287%_
                    (lambda (_%ht154674%_)
                      (let ((_%ht154677%_ _%ht154674%_))
                        (if _%lock154134%_
                            (let ((_%$obj154689%_
                                   (let ((__tmp161545
                                          (let ((_%$obj154686%_
                                                 _%lock154134%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj154686%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj154686%_)))
                                                     '#t)
                                                _%$obj154686%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj154686%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht154677%_
                                      __tmp161545))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj154689%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj154689%_)))
                                       '#t)
                                  _%$obj154689%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj154689%_))))
                            _%ht154677%_))))
                   (_%wrap-lock154288%_
                    (lambda (_%ht154662%_)
                      (let ((_%ht154665%_ _%ht154662%_))
                        (_%__wrap-lock154287%_ _%ht154665%_))))
                   (_%__wrap-checked154410%_
                    (lambda (_%ht154646%_ _%implicit154647%_)
                      (let ((_%ht154650%_ _%ht154646%_))
                        (if _%check154136%_
                            (let ((_%$obj154659%_
                                   (let ((__tmp161546
                                          (if (procedure? _%check154136%_)
                                              _%check154136%_
                                              _%implicit154647%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht154650%_
                                      __tmp161546))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj154659%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj154659%_)))
                                       '#t)
                                  _%$obj154659%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj154659%_))))
                            _%ht154650%_))))
                   (_%wrap-checked154411%_
                    (lambda (_%ht154633%_ _%implicit154634%_)
                      (let ((_%ht154637%_ _%ht154633%_))
                        (_%__wrap-checked154410%_
                         _%ht154637%_
                         _%implicit154634%_))))
                   (_%make154412%_
                    (lambda (_%kons154581%_
                             _%key?154582%_
                             _%hash154583%_
                             _%test154584%_)
                      (let* ((_%size154587%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint154126%_)))
                             (_%table154589%_
                              (let ((__tmp161547 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size154587%_ __tmp161547)))
                             (_%ht154594%_
                              (let ((_%$obj154591%_
                                     (_%kons154581%_
                                      _%table154589%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size154587%_ '2))
                                      _%hash154583%_
                                      _%test154584%_
                                      (_%table-seed154143%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj154591%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj154591%_)))
                                         '#t)
                                    _%$obj154591%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj154591%_)))))
                             (_%ht154616%_
                              (let* ((_%ht154597%_ _%ht154594%_)
                                     (_%ht154601%_ _%ht154597%_))
                                (_%__wrap-lock154287%_ _%ht154601%_)))
                             (_%implicit154619%_ _%key?154582%_)
                             (_%ht154623%_ _%ht154616%_))
                        (_%__wrap-checked154410%_
                         _%ht154623%_
                         _%implicit154619%_))))
                   (_%make-gc-hash-table154413%_
                    (lambda ()
                      (let* ((_%ht154546%_
                              (let ((_%$obj154543%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint154126%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj154543%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj154543%_)))
                                         '#t)
                                    _%$obj154543%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj154543%_)))))
                             (_%ht154564%_
                              (let* ((_%ht154548%_ _%ht154546%_)
                                     (_%ht154552%_ _%ht154548%_))
                                (_%__wrap-lock154287%_ _%ht154552%_)))
                             (_%implicit154567%_ true)
                             (_%ht154571%_ _%ht154564%_))
                        (_%__wrap-checked154410%_
                         _%ht154571%_
                         _%implicit154567%_))))
                   (_%make-gambit-table154414%_
                    (lambda ()
                      (let* ((_%size154483%_
                              (let ((_%$e154480%_ _%size-hint154126%_))
                                (if _%$e154480%_
                                    _%$e154480%_
                                    (macro-absent-obj))))
                             (_%test154488%_
                              (let ((_%$e154485%_ _%test154130%_))
                                (if _%$e154485%_ _%$e154485%_ equal?)))
                             (_%hash154496%_
                              (let ((_%$e154490%_ _%hash154132%_))
                                (if _%$e154490%_
                                    _%$e154490%_
                                    (if (eq? _%test154488%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test154488%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht154501%_
                              (let ((_%$obj154498%_
                                     (make-table
                                      'size:
                                      _%size154483%_
                                      'test:
                                      _%test154488%_
                                      'hash:
                                      _%hash154496%_
                                      'weak-keys:
                                      _%weak-keys154138%_
                                      'weak-values:
                                      _%weak-values154140%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj154498%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj154498%_)))
                                         '#t)
                                    _%$obj154498%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj154498%_)))))
                             (_%ht154524%_
                              (let* ((_%ht154504%_ _%ht154501%_)
                                     (_%ht154508%_ _%ht154504%_))
                                (_%__wrap-lock154287%_ _%ht154508%_)))
                             (_%implicit154527%_ true)
                             (_%ht154531%_ _%ht154524%_))
                        (_%__wrap-checked154410%_
                         _%ht154531%_
                         _%implicit154527%_)))))
            (if (or _%weak-keys154138%_ _%weak-values154140%_)
                (_%make-gambit-table154414%_)
                (if (and (or (eq? _%test154130%_ eq?)
                             (eq? _%test154130%_ ##eq?))
                         (or (not _%hash154132%_)
                             (eq? _%hash154132%_ eq?-hash)
                             (eq? _%hash154132%_ eq-hash))
                         (not _%seed154128%_))
                    (_%make-gc-hash-table154413%_)
                    (if (and (or (eq? _%test154130%_ eq?)
                                 (eq? _%test154130%_ ##eq?))
                             (or (not _%hash154132%_)
                                 (eq? _%hash154132%_ eq?-hash)
                                 (eq? _%hash154132%_ eq-hash)))
                        (_%make154412%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test154130%_ eqv?)
                                     (eq? _%test154130%_ ##eqv?))
                                 (or (not _%hash154132%_)
                                     (eq? _%hash154132%_ eqv?-hash)
                                     (eq? _%hash154132%_ eqv-hash)))
                            (_%make154412%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test154130%_ eq?)
                                         (eq? _%test154130%_ ##eq?))
                                     (or (eq? _%hash154132%_ symbolic-hash)
                                         (eq? _%hash154132%_ ##symbol-hash)))
                                (_%make154412%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test154130%_ eq?)
                                             (eq? _%test154130%_ ##eq?))
                                         (eq? _%hash154132%_ immediate-hash))
                                    (_%make154412%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test154130%_ equal?)
                                                 (eq? _%test154130%_ ##equal?)
                                                 (eq? _%test154130%_ string=?)
                                                 (eq? _%test154130%_
                                                      ##string=?))
                                             (or (eq? _%hash154132%_
                                                      string-hash)
                                                 (eq? _%hash154132%_
                                                      ##string=?-hash)))
                                        (_%make154412%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test154130%_ equal?)
                                                 (not _%hash154132%_))
                                            (_%make154412%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test154130%_)
                                                (if (procedure? _%hash154132%_)
                                                    (_%make154412%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash154132%_
                                                     _%test154130%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash154132%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test154130%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords154696%_ . _%args154697%_)
        (apply make-hash-table__%
               _%@@keywords154696%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154696%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154696%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154696%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154696%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154696%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154696%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154696%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154696%_
                  'weak-values:
                  absent-value))
               _%args154697%_)))
    (define make-hash-table
      (lambda _%args154114154703%_
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
               _%args154114154703%_)))
    (define make-hash-table-eq
      (lambda _%args154103%_
        (apply make-hash-table 'test: eq? _%args154103%_)))
    (define make-hash-table-eqv
      (lambda _%args154101%_
        (apply make-hash-table 'test: eqv? _%args154101%_)))
    (define make-hash-table-symbolic
      (lambda _%args154099%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args154099%_)))
    (define make-hash-table-string
      (lambda _%args154097%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args154097%_)))
    (define make-hash-table-immediate
      (lambda _%args154095%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args154095%_)))
    (define list->hash-table
      (lambda (_%lst154092%_ . _%args154093%_)
        (list->hash-table!
         _%lst154092%_
         (apply make-hash-table
                'size:
                (length _%lst154092%_)
                _%args154093%_))))
    (define list->hash-table-eq
      (lambda (_%lst154089%_ . _%args154090%_)
        (list->hash-table!
         _%lst154089%_
         (apply make-hash-table-eq
                'size:
                (length _%lst154089%_)
                _%args154090%_))))
    (define list->hash-table-eqv
      (lambda (_%lst154086%_ . _%args154087%_)
        (list->hash-table!
         _%lst154086%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst154086%_)
                _%args154087%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst154083%_ . _%args154084%_)
        (list->hash-table!
         _%lst154083%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst154083%_)
                _%args154084%_))))
    (define list->hash-table-string
      (lambda (_%lst154080%_ . _%args154081%_)
        (list->hash-table!
         _%lst154080%_
         (apply make-hash-table-string
                'size:
                (length _%lst154080%_)
                _%args154081%_))))
    (define list->hash-table-immediate
      (lambda (_%lst154077%_ . _%args154078%_)
        (list->hash-table!
         _%lst154077%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst154077%_)
                _%args154078%_))))
    (define list->hash-table!
      (lambda (_%lst154028%_ _%h154029%_)
        (for-each
         (lambda (_%el154031%_)
           (let* ((_%el154032154039%_ _%el154031%_)
                  (_%E154034154042%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el154032154039%_
                              '([k . v])))
                     '#!void))
                  (_%K154035154065%_
                   (lambda (_%v154045%_ _%k154046%_)
                     (let* ((_%self146865154048%_ _%h154029%_)
                            (_%key154051%_ _%k154046%_)
                            (_%value154054%_ _%v154045%_))
                       (declare (not safe))
                       (let ((_%object154057154062%_
                              (##unchecked-structure-ref
                               _%self146865154048%_
                               '1
                               '#f
                               'set!))
                             (_%method154058154063%_
                              (##unchecked-structure-ref
                               _%self146865154048%_
                               '8
                               '#f
                               'set!)))
                         (_%method154058154063%_
                          _%object154057154062%_
                          _%key154051%_
                          _%value154054%_))))))
             (if (pair? _%el154032154039%_)
                 (let ((_%hd154036154068%_
                        (let ()
                          (declare (not safe))
                          (##car _%el154032154039%_)))
                       (_%tl154037154070%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el154032154039%_))))
                   (let* ((_%k154073%_ _%hd154036154068%_)
                          (_%v154075%_ _%tl154037154070%_))
                     (_%K154035154065%_ _%v154075%_ _%k154073%_)))
                 (_%E154034154042%_))))
         _%lst154028%_)
        _%h154029%_))
    (define plist->hash-table
      (lambda (_%lst154025%_ . _%args154026%_)
        (plist->hash-table!
         _%lst154025%_
         (apply make-hash-table
                'size:
                (length _%lst154025%_)
                _%args154026%_))))
    (define plist->hash-table-eq
      (lambda (_%lst154022%_ . _%args154023%_)
        (plist->hash-table!
         _%lst154022%_
         (apply make-hash-table-eq
                'size:
                (length _%lst154022%_)
                _%args154023%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst154019%_ . _%args154020%_)
        (plist->hash-table!
         _%lst154019%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst154019%_)
                _%args154020%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst154016%_ . _%args154017%_)
        (plist->hash-table!
         _%lst154016%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst154016%_)
                _%args154017%_))))
    (define plist->hash-table-string
      (lambda (_%lst154013%_ . _%args154014%_)
        (plist->hash-table!
         _%lst154013%_
         (apply make-hash-table-string
                'size:
                (length _%lst154013%_)
                _%args154014%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst154010%_ . _%args154011%_)
        (plist->hash-table!
         _%lst154010%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst154010%_)
                _%args154011%_))))
    (define plist->hash-table!
      (lambda (_%lst153933%_ _%h153934%_)
        (let _%loop153936%_ ((_%rest153938%_ _%lst153933%_))
          (let* ((_%rest153939153951%_ _%rest153938%_)
                 (_%else153942153959%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst153933%_)))))
            (let ((_%K153945153991%_
                   (lambda (_%rest153970%_ _%val153971%_ _%key153972%_)
                     (let* ((_%self146865153974%_ _%h153934%_)
                            (_%key153977%_ _%key153972%_)
                            (_%value153980%_ _%val153971%_))
                       (declare (not safe))
                       (let ((_%object153983153988%_
                              (##unchecked-structure-ref
                               _%self146865153974%_
                               '1
                               '#f
                               'set!))
                             (_%method153984153989%_
                              (##unchecked-structure-ref
                               _%self146865153974%_
                               '8
                               '#f
                               'set!)))
                         (_%method153984153989%_
                          _%object153983153988%_
                          _%key153977%_
                          _%value153980%_)))
                     (_%loop153936%_ _%rest153970%_)))
                  (_%K153944153964%_ (lambda () _%h153934%_)))
              (let ((_%try-match153941153967%_
                     (lambda ()
                       (if (null? _%rest153939153951%_)
                           (_%K153944153964%_)
                           (_%else153942153959%_)))))
                (if (pair? _%rest153939153951%_)
                    (let ((_%tl153947153996%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest153939153951%_)))
                          (_%hd153946153994%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest153939153951%_))))
                      (if (pair? _%tl153947153996%_)
                          (let ((_%tl153949154003%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl153947153996%_)))
                                (_%hd153948154001%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl153947153996%_))))
                            (let ((_%key153999%_ _%hd153946153994%_)
                                  (_%val154006%_ _%hd153948154001%_)
                                  (_%rest154008%_ _%tl153949154003%_))
                              (_%K153945153991%_
                               _%rest154008%_
                               _%val154006%_
                               _%key153999%_)))
                          (_%else153942153959%_)))
                    (_%try-match153941153967%_))))))))
    (define __hash-length
      (lambda (_%h153882%_)
        (let* ((_%h153885%_ _%h153882%_)
               (_%self146277153894%_ _%h153885%_)
               (_%self146277153901%_
                (let ((_%$obj153898%_ _%self146277153894%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153898%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153898%_)))
                           '#t)
                      _%$obj153898%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153898%_)))))
               (_%self146277153903%_ _%self146277153901%_))
          (if __DEBUG
              (let ((_%val153923%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object153915153920%_
                              (##unchecked-structure-ref
                               _%self146277153903%_
                               '1
                               '#f
                               'length))
                             (_%method153916153921%_
                              (##unchecked-structure-ref
                               _%self146277153903%_
                               '6
                               '#f
                               'length)))
                         (_%method153916153921%_ _%object153915153920%_)))))
                (if (fixnum? _%val153923%_)
                    _%val153923%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val153923%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object153925153930%_
                       (##unchecked-structure-ref
                        _%self146277153903%_
                        '1
                        '#f
                        'length))
                      (_%method153926153931%_
                       (##unchecked-structure-ref
                        _%self146277153903%_
                        '6
                        '#f
                        'length)))
                  (_%method153926153931%_ _%object153925153930%_)))))))
    (define hash-length
      (lambda (_%h149537%_)
        (let* ((_%h149543%_
                (let ((_%$obj149540%_ _%h149537%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149540%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149540%_)))
                           '#t)
                      _%$obj149540%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149540%_)))))
               (_%h149545%_ _%h149543%_))
          (__hash-length _%h149545%_))))
    (define __hash-ref__%
      (lambda (_%h153810%_ _%key153811%_ _%default153812%_)
        (let* ((_%h153815%_ _%h153810%_)
               (_%result153868%_
                (let* ((_%self146571153824%_ _%h153815%_)
                       (_%key153827%_ _%key153811%_)
                       (_%default153830%_ _%default153812%_)
                       (_%self146571153837%_
                        (let ((_%$obj153834%_ _%self146571153824%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj153834%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj153834%_)))
                                   '#t)
                              _%$obj153834%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj153834%_)))))
                       (_%self146571153839%_ _%self146571153837%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object153853153858%_
                               (##unchecked-structure-ref
                                _%self146571153839%_
                                '1
                                '#f
                                'ref))
                              (_%method153854153859%_
                               (##unchecked-structure-ref
                                _%self146571153839%_
                                '7
                                '#f
                                'ref)))
                          (_%method153854153859%_
                           _%object153853153858%_
                           _%key153827%_
                           _%default153830%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object153860153865%_
                               (##unchecked-structure-ref
                                _%self146571153839%_
                                '1
                                '#f
                                'ref))
                              (_%method153861153866%_
                               (##unchecked-structure-ref
                                _%self146571153839%_
                                '7
                                '#f
                                'ref)))
                          (_%method153861153866%_
                           _%object153860153865%_
                           _%key153827%_
                           _%default153830%_)))))))
          (if (eq? _%result153868%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h153815%_
               'key:
               _%key153811%_)
              _%result153868%_))))
    (define __hash-ref__0
      (lambda (_%h153873%_ _%key153874%_)
        (let ((_%default153876%_ absent-obj))
          (__hash-ref__% _%h153873%_ _%key153874%_ _%default153876%_))))
    (define __hash-ref
      (lambda _g161548_
        (let ((_g161549_ (let () (declare (not safe)) (##length _g161548_))))
          (cond ((let () (declare (not safe)) (##fx= _g161549_ 2))
                 (apply __hash-ref__0 _g161548_))
                ((let () (declare (not safe)) (##fx= _g161549_ 3))
                 (apply __hash-ref__% _g161548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g161548_))))))
    (define hash-ref__%
      (lambda (_%h149676%_ _%key149677%_ _%default149678%_)
        (let* ((_%h149684%_
                (let ((_%$obj149681%_ _%h149676%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149681%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149681%_)))
                           '#t)
                      _%$obj149681%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149681%_)))))
               (_%h149686%_ _%h149684%_))
          (__hash-ref__% _%h149686%_ _%key149677%_ _%default149678%_))))
    (define hash-ref__0
      (lambda (_%h149699%_ _%key149700%_)
        (let ((_%default149702%_ absent-obj))
          (hash-ref__% _%h149699%_ _%key149700%_ _%default149702%_))))
    (define hash-ref
      (lambda _g161550_
        (let ((_g161551_ (let () (declare (not safe)) (##length _g161550_))))
          (cond ((let () (declare (not safe)) (##fx= _g161551_ 2))
                 (apply hash-ref__0 _g161550_))
                ((let () (declare (not safe)) (##fx= _g161551_ 3))
                 (apply hash-ref__% _g161550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g161550_))))))
    (define __hash-get
      (lambda (_%h153752%_ _%key153753%_)
        (let* ((_%h153756%_ _%h153752%_)
               (_%self146571153765%_ _%h153756%_)
               (_%key153768%_ _%key153753%_)
               (_%default153771%_ '#f)
               (_%self146571153778%_
                (let ((_%$obj153775%_ _%self146571153765%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153775%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153775%_)))
                           '#t)
                      _%$obj153775%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153775%_)))))
               (_%self146571153780%_ _%self146571153778%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153794153799%_
                       (##unchecked-structure-ref
                        _%self146571153780%_
                        '1
                        '#f
                        'ref))
                      (_%method153795153800%_
                       (##unchecked-structure-ref
                        _%self146571153780%_
                        '7
                        '#f
                        'ref)))
                  (_%method153795153800%_
                   _%object153794153799%_
                   _%key153768%_
                   _%default153771%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153801153806%_
                       (##unchecked-structure-ref
                        _%self146571153780%_
                        '1
                        '#f
                        'ref))
                      (_%method153802153807%_
                       (##unchecked-structure-ref
                        _%self146571153780%_
                        '7
                        '#f
                        'ref)))
                  (_%method153802153807%_
                   _%object153801153806%_
                   _%key153768%_
                   _%default153771%_)))))))
    (define hash-get
      (lambda (_%h149828%_ _%key149829%_)
        (let* ((_%h149835%_
                (let ((_%$obj149832%_ _%h149828%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149832%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149832%_)))
                           '#t)
                      _%$obj149832%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149832%_)))))
               (_%h149837%_ _%h149835%_))
          (__hash-get _%h149837%_ _%key149829%_))))
    (define __hash-put!
      (lambda (_%h153694%_ _%key153695%_ _%value153696%_)
        (let* ((_%h153699%_ _%h153694%_)
               (_%self146866153708%_ _%h153699%_)
               (_%key153711%_ _%key153695%_)
               (_%value153714%_ _%value153696%_)
               (_%self146866153721%_
                (let ((_%$obj153718%_ _%self146866153708%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153718%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153718%_)))
                           '#t)
                      _%$obj153718%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153718%_)))))
               (_%self146866153723%_ _%self146866153721%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153737153742%_
                       (##unchecked-structure-ref
                        _%self146866153723%_
                        '1
                        '#f
                        'set!))
                      (_%method153738153743%_
                       (##unchecked-structure-ref
                        _%self146866153723%_
                        '8
                        '#f
                        'set!)))
                  (_%method153738153743%_
                   _%object153737153742%_
                   _%key153711%_
                   _%value153714%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153744153749%_
                       (##unchecked-structure-ref
                        _%self146866153723%_
                        '1
                        '#f
                        'set!))
                      (_%method153745153750%_
                       (##unchecked-structure-ref
                        _%self146866153723%_
                        '8
                        '#f
                        'set!)))
                  (_%method153745153750%_
                   _%object153744153749%_
                   _%key153711%_
                   _%value153714%_)))))))
    (define hash-put!
      (lambda (_%h149967%_ _%key149968%_ _%value149969%_)
        (let* ((_%h149975%_
                (let ((_%$obj149972%_ _%h149967%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj149972%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj149972%_)))
                           '#t)
                      _%$obj149972%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj149972%_)))))
               (_%h149977%_ _%h149975%_))
          (__hash-put! _%h149977%_ _%key149968%_ _%value149969%_))))
    (define __hash-update!__%
      (lambda (_%h153607%_ _%key153608%_ _%update153609%_ _%default153610%_)
        (let* ((_%h153613%_ _%h153607%_)
               (_%self147161153622%_ _%h153613%_)
               (_%key153625%_ _%key153608%_)
               (_%proc153628%_ _%update153609%_)
               (_%default153631%_ _%default153610%_)
               (_%self147161153638%_
                (let ((_%$obj153635%_ _%self147161153622%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153635%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153635%_)))
                           '#t)
                      _%$obj153635%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153635%_)))))
               (_%self147161153640%_ _%self147161153638%_))
          (if (procedure? _%proc153628%_)
              (let ((_%proc153656%_ _%proc153628%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object153665153670%_
                             (##unchecked-structure-ref
                              _%self147161153640%_
                              '1
                              '#f
                              'update!))
                            (_%method153666153671%_
                             (##unchecked-structure-ref
                              _%self147161153640%_
                              '9
                              '#f
                              'update!)))
                        (_%method153666153671%_
                         _%object153665153670%_
                         _%key153625%_
                         _%proc153656%_
                         _%default153631%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object153672153677%_
                             (##unchecked-structure-ref
                              _%self147161153640%_
                              '1
                              '#f
                              'update!))
                            (_%method153673153678%_
                             (##unchecked-structure-ref
                              _%self147161153640%_
                              '9
                              '#f
                              'update!)))
                        (_%method153673153678%_
                         _%object153672153677%_
                         _%key153625%_
                         _%proc153656%_
                         _%default153631%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc153628%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h153683%_ _%key153684%_ _%update153685%_)
        (let ((_%default153687%_ '#!void))
          (__hash-update!__%
           _%h153683%_
           _%key153684%_
           _%update153685%_
           _%default153687%_))))
    (define __hash-update!
      (lambda _g161552_
        (let ((_g161553_ (let () (declare (not safe)) (##length _g161552_))))
          (cond ((let () (declare (not safe)) (##fx= _g161553_ 3))
                 (apply __hash-update!__0 _g161552_))
                ((let () (declare (not safe)) (##fx= _g161553_ 4))
                 (apply __hash-update!__% _g161552_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g161552_))))))
    (define hash-update!__%
      (lambda (_%h150108%_ _%key150109%_ _%update150110%_ _%default150111%_)
        (let* ((_%h150117%_
                (let ((_%$obj150114%_ _%h150108%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150114%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150114%_)))
                           '#t)
                      _%$obj150114%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150114%_)))))
               (_%h150119%_ _%h150117%_))
          (__hash-update!__%
           _%h150119%_
           _%key150109%_
           _%update150110%_
           _%default150111%_))))
    (define hash-update!__0
      (lambda (_%h150132%_ _%key150133%_ _%update150134%_)
        (let ((_%default150136%_ '#!void))
          (hash-update!__%
           _%h150132%_
           _%key150133%_
           _%update150134%_
           _%default150136%_))))
    (define hash-update!
      (lambda _g161554_
        (let ((_g161555_ (let () (declare (not safe)) (##length _g161554_))))
          (cond ((let () (declare (not safe)) (##fx= _g161555_ 3))
                 (apply hash-update!__0 _g161554_))
                ((let () (declare (not safe)) (##fx= _g161555_ 4))
                 (apply hash-update!__% _g161554_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g161554_))))))
    (define __hash-remove!
      (lambda (_%h153553%_ _%key153554%_)
        (let* ((_%h153557%_ _%h153553%_)
               (_%self145673153566%_ _%h153557%_)
               (_%key153569%_ _%key153554%_)
               (_%self145673153576%_
                (let ((_%$obj153573%_ _%self145673153566%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153573%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153573%_)))
                           '#t)
                      _%$obj153573%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153573%_)))))
               (_%self145673153578%_ _%self145673153576%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153591153596%_
                       (##unchecked-structure-ref
                        _%self145673153578%_
                        '1
                        '#f
                        'delete!))
                      (_%method153592153597%_
                       (##unchecked-structure-ref
                        _%self145673153578%_
                        '4
                        '#f
                        'delete!)))
                  (_%method153592153597%_
                   _%object153591153596%_
                   _%key153569%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153598153603%_
                       (##unchecked-structure-ref
                        _%self145673153578%_
                        '1
                        '#f
                        'delete!))
                      (_%method153599153604%_
                       (##unchecked-structure-ref
                        _%self145673153578%_
                        '4
                        '#f
                        'delete!)))
                  (_%method153599153604%_
                   _%object153598153603%_
                   _%key153569%_)))))))
    (define hash-remove!
      (lambda (_%h150263%_ _%key150264%_)
        (let* ((_%h150270%_
                (let ((_%$obj150267%_ _%h150263%_))
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
               (_%h150272%_ _%h150270%_))
          (__hash-remove! _%h150272%_ _%key150264%_))))
    (define __hash-key?
      (lambda (_%h153496%_ _%k153497%_)
        (let ((_%h153500%_ _%h153496%_))
          (not (eq? (let* ((_%self146571153509%_ _%h153500%_)
                           (_%key153512%_ _%k153497%_)
                           (_%default153515%_ absent-value)
                           (_%self146571153522%_
                            (let ((_%$obj153519%_ _%self146571153509%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj153519%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj153519%_)))
                                       '#t)
                                  _%$obj153519%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj153519%_)))))
                           (_%self146571153524%_ _%self146571153522%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object153538153543%_
                                   (##unchecked-structure-ref
                                    _%self146571153524%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method153539153544%_
                                   (##unchecked-structure-ref
                                    _%self146571153524%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method153539153544%_
                               _%object153538153543%_
                               _%key153512%_
                               _%default153515%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object153545153550%_
                                   (##unchecked-structure-ref
                                    _%self146571153524%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method153546153551%_
                                   (##unchecked-structure-ref
                                    _%self146571153524%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method153546153551%_
                               _%object153545153550%_
                               _%key153512%_
                               _%default153515%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h150402%_ _%k150403%_)
        (let* ((_%h150409%_
                (let ((_%$obj150406%_ _%h150402%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150406%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150406%_)))
                           '#t)
                      _%$obj150406%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150406%_)))))
               (_%h150411%_ _%h150409%_))
          (__hash-key? _%h150411%_ _%k150403%_))))
    (define __hash->list
      (lambda (_%h153428%_)
        (let* ((_%h153431%_ _%h153428%_) (_%lst153440%_ '()))
          (let* ((_%self145966153442%_ _%h153431%_)
                 (_%proc153448%_
                  (lambda (_%k153445%_ _%v153446%_)
                    (set! _%lst153440%_
                          (cons (cons _%k153445%_ _%v153446%_)
                                _%lst153440%_))))
                 (_%self145966153455%_
                  (let ((_%$obj153452%_ _%self145966153442%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153452%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153452%_)))
                             '#t)
                        _%$obj153452%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153452%_)))))
                 (_%self145966153457%_ _%self145966153455%_)
                 (_%proc153472%_ _%proc153448%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153481153486%_
                         (##unchecked-structure-ref
                          _%self145966153457%_
                          '1
                          '#f
                          'for-each))
                        (_%method153482153487%_
                         (##unchecked-structure-ref
                          _%self145966153457%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153482153487%_
                     _%object153481153486%_
                     _%proc153472%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153488153493%_
                         (##unchecked-structure-ref
                          _%self145966153457%_
                          '1
                          '#f
                          'for-each))
                        (_%method153489153494%_
                         (##unchecked-structure-ref
                          _%self145966153457%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153489153494%_
                     _%object153488153493%_
                     _%proc153472%_)))))
          _%lst153440%_)))
    (define hash->list
      (lambda (_%h150541%_)
        (let* ((_%h150547%_
                (let ((_%$obj150544%_ _%h150541%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150544%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150544%_)))
                           '#t)
                      _%$obj150544%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150544%_)))))
               (_%h150549%_ _%h150547%_))
          (__hash->list _%h150549%_))))
    (define __hash->plist
      (lambda (_%h153360%_)
        (let* ((_%h153363%_ _%h153360%_) (_%lst153372%_ '()))
          (let* ((_%self145966153374%_ _%h153363%_)
                 (_%proc153380%_
                  (lambda (_%k153377%_ _%v153378%_)
                    (set! _%lst153372%_
                          (cons _%k153377%_
                                (cons _%v153378%_ _%lst153372%_)))))
                 (_%self145966153387%_
                  (let ((_%$obj153384%_ _%self145966153374%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153384%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153384%_)))
                             '#t)
                        _%$obj153384%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153384%_)))))
                 (_%self145966153389%_ _%self145966153387%_)
                 (_%proc153404%_ _%proc153380%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153413153418%_
                         (##unchecked-structure-ref
                          _%self145966153389%_
                          '1
                          '#f
                          'for-each))
                        (_%method153414153419%_
                         (##unchecked-structure-ref
                          _%self145966153389%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153414153419%_
                     _%object153413153418%_
                     _%proc153404%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153420153425%_
                         (##unchecked-structure-ref
                          _%self145966153389%_
                          '1
                          '#f
                          'for-each))
                        (_%method153421153426%_
                         (##unchecked-structure-ref
                          _%self145966153389%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153421153426%_
                     _%object153420153425%_
                     _%proc153404%_)))))
          _%lst153372%_)))
    (define hash->plist
      (lambda (_%h150679%_)
        (let* ((_%h150685%_
                (let ((_%$obj150682%_ _%h150679%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj150682%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj150682%_)))
                           '#t)
                      _%$obj150682%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj150682%_)))))
               (_%h150687%_ _%h150685%_))
          (__hash->plist _%h150687%_))))
    (define __hash-for-each
      (lambda (_%proc153289%_ _%h153290%_)
        (let* ((_%proc153293%_ _%proc153289%_)
               (_%h153301%_ _%h153290%_)
               (_%self145966153310%_ _%h153301%_)
               (_%proc153313%_ _%proc153293%_)
               (_%self145966153320%_
                (let ((_%$obj153317%_ _%self145966153310%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj153317%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj153317%_)))
                           '#t)
                      _%$obj153317%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj153317%_)))))
               (_%self145966153322%_ _%self145966153320%_)
               (_%proc153336%_ _%proc153313%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object153345153350%_
                       (##unchecked-structure-ref
                        _%self145966153322%_
                        '1
                        '#f
                        'for-each))
                      (_%method153346153351%_
                       (##unchecked-structure-ref
                        _%self145966153322%_
                        '5
                        '#f
                        'for-each)))
                  (_%method153346153351%_
                   _%object153345153350%_
                   _%proc153336%_)))
              (let ()
                (declare (not safe))
                (let ((_%object153352153357%_
                       (##unchecked-structure-ref
                        _%self145966153322%_
                        '1
                        '#f
                        'for-each))
                      (_%method153353153358%_
                       (##unchecked-structure-ref
                        _%self145966153322%_
                        '5
                        '#f
                        'for-each)))
                  (_%method153353153358%_
                   _%object153352153357%_
                   _%proc153336%_)))))))
    (define hash-for-each
      (lambda (_%proc150817%_ _%h150818%_)
        (if (procedure? _%proc150817%_)
            (let* ((_%proc150822%_ _%proc150817%_)
                   (_%h150834%_
                    (let ((_%$obj150831%_ _%h150818%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj150831%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj150831%_)))
                               '#t)
                          _%$obj150831%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj150831%_)))))
                   (_%h150836%_ _%h150834%_))
              (__hash-for-each _%proc150822%_ _%h150836%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc150817%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc153212%_ _%h153213%_)
        (let* ((_%proc153216%_ _%proc153212%_)
               (_%h153224%_ _%h153213%_)
               (_%result153233%_ '()))
          (let* ((_%self145966153235%_ _%h153224%_)
                 (_%proc153241%_
                  (lambda (_%k153238%_ _%v153239%_)
                    (set! _%result153233%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc153216%_ _%k153238%_ _%v153239%_))
                                _%result153233%_))))
                 (_%self145966153248%_
                  (let ((_%$obj153245%_ _%self145966153235%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153245%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153245%_)))
                             '#t)
                        _%$obj153245%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153245%_)))))
                 (_%self145966153250%_ _%self145966153248%_)
                 (_%proc153265%_ _%proc153241%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153274153279%_
                         (##unchecked-structure-ref
                          _%self145966153250%_
                          '1
                          '#f
                          'for-each))
                        (_%method153275153280%_
                         (##unchecked-structure-ref
                          _%self145966153250%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153275153280%_
                     _%object153274153279%_
                     _%proc153265%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153281153286%_
                         (##unchecked-structure-ref
                          _%self145966153250%_
                          '1
                          '#f
                          'for-each))
                        (_%method153282153287%_
                         (##unchecked-structure-ref
                          _%self145966153250%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153282153287%_
                     _%object153281153286%_
                     _%proc153265%_)))))
          _%result153233%_)))
    (define hash-map
      (lambda (_%proc150966%_ _%h150967%_)
        (if (procedure? _%proc150966%_)
            (let* ((_%proc150971%_ _%proc150966%_)
                   (_%h150983%_
                    (let ((_%$obj150980%_ _%h150967%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj150980%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj150980%_)))
                               '#t)
                          _%$obj150980%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj150980%_)))))
                   (_%h150985%_ _%h150983%_))
              (__hash-map _%proc150971%_ _%h150985%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc150966%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc153134%_ _%iv153135%_ _%h153136%_)
        (let* ((_%proc153139%_ _%proc153134%_)
               (_%h153147%_ _%h153136%_)
               (_%result153156%_ _%iv153135%_))
          (let* ((_%self145966153158%_ _%h153147%_)
                 (_%proc153164%_
                  (lambda (_%k153161%_ _%v153162%_)
                    (set! _%result153156%_
                          (let ()
                            (declare (not safe))
                            (_%proc153139%_
                             _%k153161%_
                             _%v153162%_
                             _%result153156%_)))))
                 (_%self145966153171%_
                  (let ((_%$obj153168%_ _%self145966153158%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj153168%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj153168%_)))
                             '#t)
                        _%$obj153168%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj153168%_)))))
                 (_%self145966153173%_ _%self145966153171%_)
                 (_%proc153188%_ _%proc153164%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153197153202%_
                         (##unchecked-structure-ref
                          _%self145966153173%_
                          '1
                          '#f
                          'for-each))
                        (_%method153198153203%_
                         (##unchecked-structure-ref
                          _%self145966153173%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153198153203%_
                     _%object153197153202%_
                     _%proc153188%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153204153209%_
                         (##unchecked-structure-ref
                          _%self145966153173%_
                          '1
                          '#f
                          'for-each))
                        (_%method153205153210%_
                         (##unchecked-structure-ref
                          _%self145966153173%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153205153210%_
                     _%object153204153209%_
                     _%proc153188%_)))))
          _%result153156%_)))
    (define hash-fold
      (lambda (_%proc151115%_ _%iv151116%_ _%h151117%_)
        (if (procedure? _%proc151115%_)
            (let* ((_%proc151121%_ _%proc151115%_)
                   (_%h151133%_
                    (let ((_%$obj151130%_ _%h151117%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj151130%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj151130%_)))
                               '#t)
                          _%$obj151130%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj151130%_)))))
                   (_%h151135%_ _%h151133%_))
              (__hash-fold _%proc151121%_ _%iv151116%_ _%h151135%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc151115%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc153041%_ _%h153042%_ _%default-value153043%_)
        (let* ((_%proc153046%_ _%proc153041%_)
               (_%h153054%_ _%h153042%_)
               (__tmp161556
                (lambda (_%return153063%_)
                  (let* ((_%self145966153065%_ _%h153054%_)
                         (_%proc153074%_
                          (lambda (_%k153068%_ _%v153069%_)
                            (let ((_%$e153071%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc153046%_
                                      _%k153068%_
                                      _%v153069%_))))
                              (if _%$e153071%_
                                  (_%return153063%_ _%$e153071%_)
                                  '#!void))))
                         (_%self145966153081%_
                          (let ((_%$obj153078%_ _%self145966153065%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj153078%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj153078%_)))
                                     '#t)
                                _%$obj153078%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj153078%_)))))
                         (_%self145966153083%_ _%self145966153081%_)
                         (_%proc153098%_ _%proc153074%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object153107153112%_
                                 (##unchecked-structure-ref
                                  _%self145966153083%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method153108153113%_
                                 (##unchecked-structure-ref
                                  _%self145966153083%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method153108153113%_
                             _%object153107153112%_
                             _%proc153098%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object153114153119%_
                                 (##unchecked-structure-ref
                                  _%self145966153083%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method153115153120%_
                                 (##unchecked-structure-ref
                                  _%self145966153083%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method153115153120%_
                             _%object153114153119%_
                             _%proc153098%_)))))
                  _%default-value153043%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp161556))))
    (define __hash-find__0
      (lambda (_%proc153125%_ _%h153126%_)
        (let ((_%default-value153128%_ '#f))
          (__hash-find__%
           _%proc153125%_
           _%h153126%_
           _%default-value153128%_))))
    (define __hash-find
      (lambda _g161557_
        (let ((_g161558_ (let () (declare (not safe)) (##length _g161557_))))
          (cond ((let () (declare (not safe)) (##fx= _g161558_ 2))
                 (apply __hash-find__0 _g161557_))
                ((let () (declare (not safe)) (##fx= _g161558_ 3))
                 (apply __hash-find__% _g161557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g161557_))))))
    (define hash-find__%
      (lambda (_%proc151266%_ _%h151267%_ _%default-value151268%_)
        (if (procedure? _%proc151266%_)
            (let* ((_%proc151272%_ _%proc151266%_)
                   (_%h151284%_
                    (let ((_%$obj151281%_ _%h151267%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj151281%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj151281%_)))
                               '#t)
                          _%$obj151281%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj151281%_)))))
                   (_%h151286%_ _%h151284%_))
              (__hash-find__%
               _%proc151272%_
               _%h151286%_
               _%default-value151268%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc151266%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc151299%_ _%h151300%_)
        (let ((_%default-value151302%_ '#f))
          (hash-find__% _%proc151299%_ _%h151300%_ _%default-value151302%_))))
    (define hash-find
      (lambda _g161559_
        (let ((_g161560_ (let () (declare (not safe)) (##length _g161559_))))
          (cond ((let () (declare (not safe)) (##fx= _g161560_ 2))
                 (apply hash-find__0 _g161559_))
                ((let () (declare (not safe)) (##fx= _g161560_ 3))
                 (apply hash-find__% _g161559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g161559_))))))
    (define __hash-keys
      (lambda (_%h152972%_)
        (let* ((_%h152975%_ _%h152972%_) (_%result152984%_ '()))
          (let* ((_%self145966152986%_ _%h152975%_)
                 (_%proc152992%_
                  (lambda (_%k152989%_ _%v152990%_)
                    (set! _%result152984%_
                          (cons _%k152989%_ _%result152984%_))))
                 (_%self145966152999%_
                  (let ((_%$obj152996%_ _%self145966152986%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj152996%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj152996%_)))
                             '#t)
                        _%$obj152996%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj152996%_)))))
                 (_%self145966153001%_ _%self145966152999%_)
                 (_%proc153016%_ _%proc152992%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object153025153030%_
                         (##unchecked-structure-ref
                          _%self145966153001%_
                          '1
                          '#f
                          'for-each))
                        (_%method153026153031%_
                         (##unchecked-structure-ref
                          _%self145966153001%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153026153031%_
                     _%object153025153030%_
                     _%proc153016%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object153032153037%_
                         (##unchecked-structure-ref
                          _%self145966153001%_
                          '1
                          '#f
                          'for-each))
                        (_%method153033153038%_
                         (##unchecked-structure-ref
                          _%self145966153001%_
                          '5
                          '#f
                          'for-each)))
                    (_%method153033153038%_
                     _%object153032153037%_
                     _%proc153016%_)))))
          _%result152984%_)))
    (define hash-keys
      (lambda (_%h151428%_)
        (let* ((_%h151434%_
                (let ((_%$obj151431%_ _%h151428%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151431%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151431%_)))
                           '#t)
                      _%$obj151431%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151431%_)))))
               (_%h151436%_ _%h151434%_))
          (__hash-keys _%h151436%_))))
    (define __hash-values
      (lambda (_%h152904%_)
        (let* ((_%h152907%_ _%h152904%_) (_%result152916%_ '()))
          (let* ((_%self145966152918%_ _%h152907%_)
                 (_%proc152924%_
                  (lambda (_%k152921%_ _%v152922%_)
                    (set! _%result152916%_
                          (cons _%v152922%_ _%result152916%_))))
                 (_%self145966152931%_
                  (let ((_%$obj152928%_ _%self145966152918%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj152928%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj152928%_)))
                             '#t)
                        _%$obj152928%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj152928%_)))))
                 (_%self145966152933%_ _%self145966152931%_)
                 (_%proc152948%_ _%proc152924%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object152957152962%_
                         (##unchecked-structure-ref
                          _%self145966152933%_
                          '1
                          '#f
                          'for-each))
                        (_%method152958152963%_
                         (##unchecked-structure-ref
                          _%self145966152933%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152958152963%_
                     _%object152957152962%_
                     _%proc152948%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object152964152969%_
                         (##unchecked-structure-ref
                          _%self145966152933%_
                          '1
                          '#f
                          'for-each))
                        (_%method152965152970%_
                         (##unchecked-structure-ref
                          _%self145966152933%_
                          '5
                          '#f
                          'for-each)))
                    (_%method152965152970%_
                     _%object152964152969%_
                     _%proc152948%_)))))
          _%result152916%_)))
    (define hash-values
      (lambda (_%h151566%_)
        (let* ((_%h151572%_
                (let ((_%$obj151569%_ _%h151566%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151569%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151569%_)))
                           '#t)
                      _%$obj151569%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151569%_)))))
               (_%h151574%_ _%h151572%_))
          (__hash-values _%h151574%_))))
    (define __hash-copy
      (lambda (_%h152853%_)
        (let* ((_%h152856%_ _%h152853%_)
               (_%self145379152865%_ _%h152856%_)
               (_%self145379152872%_
                (let ((_%$obj152869%_ _%self145379152865%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152869%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152869%_)))
                           '#t)
                      _%$obj152869%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152869%_)))))
               (_%self145379152874%_ _%self145379152872%_))
          (if __DEBUG
              (let ((_%$obj152894%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object152886152891%_
                              (##unchecked-structure-ref
                               _%self145379152874%_
                               '1
                               '#f
                               'copy))
                             (_%method152887152892%_
                              (##unchecked-structure-ref
                               _%self145379152874%_
                               '3
                               '#f
                               'copy)))
                         (_%method152887152892%_ _%object152886152891%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj152894%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj152894%_)))
                         '#t)
                    _%$obj152894%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj152894%_))))
              (let ()
                (declare (not safe))
                (let ((_%object152896152901%_
                       (##unchecked-structure-ref
                        _%self145379152874%_
                        '1
                        '#f
                        'copy))
                      (_%method152897152902%_
                       (##unchecked-structure-ref
                        _%self145379152874%_
                        '3
                        '#f
                        'copy)))
                  (_%method152897152902%_ _%object152896152901%_)))))))
    (define hash-copy
      (lambda (_%h151704%_)
        (let* ((_%h151710%_
                (let ((_%$obj151707%_ _%h151704%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151707%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151707%_)))
                           '#t)
                      _%$obj151707%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151707%_)))))
               (_%h151712%_ _%h151710%_))
          (__hash-copy _%h151712%_))))
    (define __hash-clear!
      (lambda (_%h152805%_)
        (let* ((_%h152808%_ _%h152805%_)
               (_%self145087152817%_ _%h152808%_)
               (_%self145087152824%_
                (let ((_%$obj152821%_ _%self145087152817%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152821%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152821%_)))
                           '#t)
                      _%$obj152821%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152821%_)))))
               (_%self145087152826%_ _%self145087152824%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object152838152843%_
                       (##unchecked-structure-ref
                        _%self145087152826%_
                        '1
                        '#f
                        'clear!))
                      (_%method152839152844%_
                       (##unchecked-structure-ref
                        _%self145087152826%_
                        '2
                        '#f
                        'clear!)))
                  (_%method152839152844%_ _%object152838152843%_)))
              (let ()
                (declare (not safe))
                (let ((_%object152845152850%_
                       (##unchecked-structure-ref
                        _%self145087152826%_
                        '1
                        '#f
                        'clear!))
                      (_%method152846152851%_
                       (##unchecked-structure-ref
                        _%self145087152826%_
                        '2
                        '#f
                        'clear!)))
                  (_%method152846152851%_ _%object152845152850%_)))))))
    (define hash-clear!
      (lambda (_%h151842%_)
        (let* ((_%h151848%_
                (let ((_%$obj151845%_ _%h151842%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151845%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151845%_)))
                           '#t)
                      _%$obj151845%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151845%_)))))
               (_%h151850%_ _%h151848%_))
          (__hash-clear! _%h151850%_))))
    (define __hash-merge
      (lambda (_%h152751%_ . _%rest152752%_)
        (let* ((_%h152755%_ _%h152751%_)
               (_%copy152803%_
                (let* ((_%self145379152764%_ _%h152755%_)
                       (_%self145379152771%_
                        (let ((_%$obj152768%_ _%self145379152764%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj152768%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj152768%_)))
                                   '#t)
                              _%$obj152768%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj152768%_)))))
                       (_%self145379152773%_ _%self145379152771%_))
                  (if __DEBUG
                      (let ((_%$obj152793%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object152785152790%_
                                      (##unchecked-structure-ref
                                       _%self145379152773%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method152786152791%_
                                      (##unchecked-structure-ref
                                       _%self145379152773%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method152786152791%_
                                  _%object152785152790%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj152793%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj152793%_)))
                                 '#t)
                            _%$obj152793%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj152793%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object152795152800%_
                               (##unchecked-structure-ref
                                _%self145379152773%_
                                '1
                                '#f
                                'copy))
                              (_%method152796152801%_
                               (##unchecked-structure-ref
                                _%self145379152773%_
                                '3
                                '#f
                                'copy)))
                          (_%method152796152801%_ _%object152795152800%_)))))))
          (apply hash-merge! _%copy152803%_ _%rest152752%_)
          _%copy152803%_)))
    (define hash-merge
      (lambda (_%h151980%_ . _%rest151981%_)
        (let* ((_%h151987%_
                (let ((_%$obj151984%_ _%h151980%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj151984%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj151984%_)))
                           '#t)
                      _%$obj151984%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj151984%_)))))
               (_%h151989%_ _%h151987%_))
          (declare (not safe))
          (##apply __hash-merge _%h151989%_ _%rest151981%_))))
    (define __hash-merge-right
      (lambda (_%h152697%_ . _%rest152698%_)
        (let* ((_%h152701%_ _%h152697%_)
               (_%copy152749%_
                (let* ((_%self145379152710%_ _%h152701%_)
                       (_%self145379152717%_
                        (let ((_%$obj152714%_ _%self145379152710%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj152714%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj152714%_)))
                                   '#t)
                              _%$obj152714%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj152714%_)))))
                       (_%self145379152719%_ _%self145379152717%_))
                  (if __DEBUG
                      (let ((_%$obj152739%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object152731152736%_
                                      (##unchecked-structure-ref
                                       _%self145379152719%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method152732152737%_
                                      (##unchecked-structure-ref
                                       _%self145379152719%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method152732152737%_
                                  _%object152731152736%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj152739%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj152739%_)))
                                 '#t)
                            _%$obj152739%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj152739%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object152741152746%_
                               (##unchecked-structure-ref
                                _%self145379152719%_
                                '1
                                '#f
                                'copy))
                              (_%method152742152747%_
                               (##unchecked-structure-ref
                                _%self145379152719%_
                                '3
                                '#f
                                'copy)))
                          (_%method152742152747%_ _%object152741152746%_)))))))
          (apply hash-merge-right! _%copy152749%_ _%rest152698%_)
          _%copy152749%_)))
    (define hash-merge-right
      (lambda (_%h152119%_ . _%rest152120%_)
        (let* ((_%h152126%_
                (let ((_%$obj152123%_ _%h152119%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152123%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152123%_)))
                           '#t)
                      _%$obj152123%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152123%_)))))
               (_%h152128%_ _%h152126%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h152128%_ _%rest152120%_))))
    (define __hash-merge!
      (lambda (_%h152545%_ . _%rest152546%_)
        (let ((_%h152549%_ _%h152545%_))
          (let ((__tmp161561
                 (lambda (_%hr152558%_)
                   (let* ((_%hr152564%_
                           (let ((_%$obj152561%_ _%hr152558%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj152561%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj152561%_)))
                                      '#t)
                                 _%$obj152561%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj152561%_)))))
                          (_%hr152566%_ _%hr152564%_)
                          (_%self145966152579%_ _%hr152566%_)
                          (_%proc152654%_
                           (lambda (_%k152582%_ _%v152583%_)
                             (if (let* ((_%h152585%_ _%h152549%_)
                                        (_%k152588%_ _%k152582%_)
                                        (_%h152595%_
                                         (let ((_%$obj152592%_ _%h152585%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj152592%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj152592%_)))
                                                    '#t)
                                               _%$obj152592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj152592%_)))))
                                        (_%h152597%_ _%h152595%_))
                                   (__hash-key? _%h152597%_ _%k152588%_))
                                 '#!void
                                 (let* ((_%self146866152613%_ _%h152549%_)
                                        (_%key152616%_ _%k152582%_)
                                        (_%value152619%_ _%v152583%_)
                                        (_%self146866152626%_
                                         (let ((_%$obj152623%_
                                                _%self146866152613%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj152623%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj152623%_)))
                                                    '#t)
                                               _%$obj152623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj152623%_)))))
                                        (_%self146866152628%_
                                         _%self146866152626%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object152639152644%_
                                                (##unchecked-structure-ref
                                                 _%self146866152628%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method152640152645%_
                                                (##unchecked-structure-ref
                                                 _%self146866152628%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method152640152645%_
                                            _%object152639152644%_
                                            _%key152616%_
                                            _%value152619%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object152646152651%_
                                                (##unchecked-structure-ref
                                                 _%self146866152628%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method152647152652%_
                                                (##unchecked-structure-ref
                                                 _%self146866152628%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method152647152652%_
                                            _%object152646152651%_
                                            _%key152616%_
                                            _%value152619%_))))))))
                          (_%self145966152661%_
                           (let ((_%$obj152658%_ _%self145966152579%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj152658%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj152658%_)))
                                      '#t)
                                 _%$obj152658%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj152658%_)))))
                          (_%self145966152663%_ _%self145966152661%_)
                          (_%proc152673%_ _%proc152654%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object152682152687%_
                                  (##unchecked-structure-ref
                                   _%self145966152663%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method152683152688%_
                                  (##unchecked-structure-ref
                                   _%self145966152663%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method152683152688%_
                              _%object152682152687%_
                              _%proc152673%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object152689152694%_
                                  (##unchecked-structure-ref
                                   _%self145966152663%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method152690152695%_
                                  (##unchecked-structure-ref
                                   _%self145966152663%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method152690152695%_
                              _%object152689152694%_
                              _%proc152673%_))))))))
            (declare (not safe))
            (##for-each __tmp161561 _%rest152546%_))
          _%h152549%_)))
    (define hash-merge!
      (lambda (_%h152258%_ . _%rest152259%_)
        (let* ((_%h152265%_
                (let ((_%$obj152262%_ _%h152258%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152262%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152262%_)))
                           '#t)
                      _%$obj152262%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152262%_)))))
               (_%h152267%_ _%h152265%_))
          (declare (not safe))
          (##apply __hash-merge! _%h152267%_ _%rest152259%_))))
    (define __hash-merge-right!
      (lambda (_%h152416%_ . _%rest152417%_)
        (let ((_%h152420%_ _%h152416%_))
          (let ((__tmp161562
                 (lambda (_%hr152429%_)
                   (let* ((_%hr152435%_
                           (let ((_%$obj152432%_ _%hr152429%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj152432%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj152432%_)))
                                      '#t)
                                 _%$obj152432%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj152432%_)))))
                          (_%hr152437%_ _%hr152435%_)
                          (_%self145966152450%_ _%hr152437%_)
                          (_%proc152502%_
                           (lambda (_%k152453%_ _%v152454%_)
                             (let* ((_%self146866152456%_ _%h152420%_)
                                    (_%key152459%_ _%k152453%_)
                                    (_%value152462%_ _%v152454%_)
                                    (_%self146866152469%_
                                     (let ((_%$obj152466%_
                                            _%self146866152456%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj152466%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj152466%_)))
                                                '#t)
                                           _%$obj152466%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj152466%_)))))
                                    (_%self146866152471%_
                                     _%self146866152469%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object152487152492%_
                                            (##unchecked-structure-ref
                                             _%self146866152471%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method152488152493%_
                                            (##unchecked-structure-ref
                                             _%self146866152471%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method152488152493%_
                                        _%object152487152492%_
                                        _%key152459%_
                                        _%value152462%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object152494152499%_
                                            (##unchecked-structure-ref
                                             _%self146866152471%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method152495152500%_
                                            (##unchecked-structure-ref
                                             _%self146866152471%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method152495152500%_
                                        _%object152494152499%_
                                        _%key152459%_
                                        _%value152462%_)))))))
                          (_%self145966152509%_
                           (let ((_%$obj152506%_ _%self145966152450%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj152506%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj152506%_)))
                                      '#t)
                                 _%$obj152506%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj152506%_)))))
                          (_%self145966152511%_ _%self145966152509%_)
                          (_%proc152521%_ _%proc152502%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object152530152535%_
                                  (##unchecked-structure-ref
                                   _%self145966152511%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method152531152536%_
                                  (##unchecked-structure-ref
                                   _%self145966152511%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method152531152536%_
                              _%object152530152535%_
                              _%proc152521%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object152537152542%_
                                  (##unchecked-structure-ref
                                   _%self145966152511%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method152538152543%_
                                  (##unchecked-structure-ref
                                   _%self145966152511%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method152538152543%_
                              _%object152537152542%_
                              _%proc152521%_))))))))
            (declare (not safe))
            (##for-each __tmp161562 _%rest152417%_))
          _%h152420%_)))
    (define hash-merge-right!
      (lambda (_%h152397%_ . _%rest152398%_)
        (let* ((_%h152404%_
                (let ((_%$obj152401%_ _%h152397%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj152401%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj152401%_)))
                           '#t)
                      _%$obj152401%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj152401%_)))))
               (_%h152406%_ _%h152404%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h152406%_ _%rest152398%_))))))
