(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1783939347)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp167036 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'UnboundKeyError::t
         'UnboundKeyError
         __tmp167036
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args165700%_
        (apply make-instance UnboundKeyError::t _%$args165700%_)))
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
      (lambda (_%where165574%_ _%message165575%_ . _%irritants165576%_)
        (let ((__tmp167037
               (let ((__obj167028
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj167028
                    _%message165575%_
                    'where:
                    _%where165574%_
                    'irritants:
                    _%irritants165576%_))
                 __obj167028)))
          (declare (not safe))
          (raise __tmp167037))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp167038 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'HashTable::t
         'HashTable
         __tmp167038
         '(clear! copy delete! for-each length new ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj167030
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj167030
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
        __obj167030))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       HashTable::t
       'interface-descriptor:
       HashTable::interface))
    (define make-HashTable
      (lambda (_%obj165572%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj165572%_))))
    (define try-HashTable
      (lambda (_%obj165570%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj165570%_))))
    (define HashTable?
      (lambda (_%obj165568%_)
        (let ((__tmp167039
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj165568%_ __tmp167039))))
    (define is-HashTable?
      (lambda (_%obj165565%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj165565%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self149646165548%_)
        (let ((_%self149646165550%_ _%self149646165548%_))
          (declare (not safe))
          (let ((_%object165557165562%_
                 (##unchecked-structure-ref
                  _%self149646165550%_
                  '1
                  '#f
                  'clear!))
                (_%method165558165563%_
                 (##unchecked-structure-ref
                  _%self149646165550%_
                  '2
                  '#f
                  'clear!)))
            (_%method165558165563%_ _%object165557165562%_)))))
    (define ::HashTable-clear!
      (lambda (_%self149647165521%_)
        (let* ((_%self149647165523%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self149647165521%_)))
               (_%self149647165525%_ _%self149647165523%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object165533165538%_
                       (##unchecked-structure-ref
                        _%self149647165525%_
                        '1
                        '#f
                        'clear!))
                      (_%method165534165539%_
                       (##unchecked-structure-ref
                        _%self149647165525%_
                        '2
                        '#f
                        'clear!)))
                  (_%method165534165539%_ _%object165533165538%_)))
              (let ()
                (declare (not safe))
                (let ((_%object165540165545%_
                       (##unchecked-structure-ref
                        _%self149647165525%_
                        '1
                        '#f
                        'clear!))
                      (_%method165541165546%_
                       (##unchecked-structure-ref
                        _%self149647165525%_
                        '2
                        '#f
                        'clear!)))
                  (_%method165541165546%_ _%object165540165545%_)))))))
    (define __HashTable-copy
      (lambda (_%self149891165504%_)
        (let ((_%self149891165506%_ _%self149891165504%_))
          (declare (not safe))
          (let ((_%object165513165518%_
                 (##unchecked-structure-ref _%self149891165506%_ '1 '#f 'copy))
                (_%method165514165519%_
                 (##unchecked-structure-ref
                  _%self149891165506%_
                  '3
                  '#f
                  'copy)))
            (_%method165514165519%_ _%object165513165518%_)))))
    (define ::HashTable-copy
      (lambda (_%self149892165477%_)
        (let* ((_%self149892165479%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self149892165477%_)))
               (_%self149892165481%_ _%self149892165479%_))
          (if __DEBUG
              (let ((__tmp167040
                     (let ()
                       (declare (not safe))
                       (let ((_%object165489165494%_
                              (##unchecked-structure-ref
                               _%self149892165481%_
                               '1
                               '#f
                               'copy))
                             (_%method165490165495%_
                              (##unchecked-structure-ref
                               _%self149892165481%_
                               '3
                               '#f
                               'copy)))
                         (_%method165490165495%_ _%object165489165494%_)))))
                (declare (not safe))
                (cast HashTable::interface __tmp167040))
              (let ()
                (declare (not safe))
                (let ((_%object165496165501%_
                       (##unchecked-structure-ref
                        _%self149892165481%_
                        '1
                        '#f
                        'copy))
                      (_%method165497165502%_
                       (##unchecked-structure-ref
                        _%self149892165481%_
                        '3
                        '#f
                        'copy)))
                  (_%method165497165502%_ _%object165496165501%_)))))))
    (define __HashTable-delete!
      (lambda (_%self150135165459%_ _%key165460%_)
        (let ((_%self150135165462%_ _%self150135165459%_))
          (declare (not safe))
          (let ((_%object165469165474%_
                 (##unchecked-structure-ref
                  _%self150135165462%_
                  '1
                  '#f
                  'delete!))
                (_%method165470165475%_
                 (##unchecked-structure-ref
                  _%self150135165462%_
                  '4
                  '#f
                  'delete!)))
            (_%method165470165475%_ _%object165469165474%_ _%key165460%_)))))
    (define ::HashTable-delete!
      (lambda (_%self150136165431%_ _%key165432%_)
        (let* ((_%self150136165434%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self150136165431%_)))
               (_%self150136165436%_ _%self150136165434%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object165444165449%_
                       (##unchecked-structure-ref
                        _%self150136165436%_
                        '1
                        '#f
                        'delete!))
                      (_%method165445165450%_
                       (##unchecked-structure-ref
                        _%self150136165436%_
                        '4
                        '#f
                        'delete!)))
                  (_%method165445165450%_
                   _%object165444165449%_
                   _%key165432%_)))
              (let ()
                (declare (not safe))
                (let ((_%object165451165456%_
                       (##unchecked-structure-ref
                        _%self150136165436%_
                        '1
                        '#f
                        'delete!))
                      (_%method165452165457%_
                       (##unchecked-structure-ref
                        _%self150136165436%_
                        '4
                        '#f
                        'delete!)))
                  (_%method165452165457%_
                   _%object165451165456%_
                   _%key165432%_)))))))
    (define __HashTable-for-each
      (lambda (_%self150379165405%_ _%proc165406%_)
        (let* ((_%self150379165408%_ _%self150379165405%_)
               (_%proc165415%_ _%proc165406%_))
          (declare (not safe))
          (let ((_%object165423165428%_
                 (##unchecked-structure-ref
                  _%self150379165408%_
                  '1
                  '#f
                  'for-each))
                (_%method165424165429%_
                 (##unchecked-structure-ref
                  _%self150379165408%_
                  '5
                  '#f
                  'for-each)))
            (_%method165424165429%_ _%object165423165428%_ _%proc165415%_)))))
    (define ::HashTable-for-each
      (lambda (_%self150380165367%_ _%proc165368%_)
        (let* ((_%self150380165370%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self150380165367%_)))
               (_%self150380165372%_ _%self150380165370%_))
          (if (procedure? _%proc165368%_)
              (let ((_%proc165381%_ _%proc165368%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object165390165395%_
                             (##unchecked-structure-ref
                              _%self150380165372%_
                              '1
                              '#f
                              'for-each))
                            (_%method165391165396%_
                             (##unchecked-structure-ref
                              _%self150380165372%_
                              '5
                              '#f
                              'for-each)))
                        (_%method165391165396%_
                         _%object165390165395%_
                         _%proc165381%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object165397165402%_
                             (##unchecked-structure-ref
                              _%self150380165372%_
                              '1
                              '#f
                              'for-each))
                            (_%method165398165403%_
                             (##unchecked-structure-ref
                              _%self150380165372%_
                              '5
                              '#f
                              'for-each)))
                        (_%method165398165403%_
                         _%object165397165402%_
                         _%proc165381%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc165368%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self150623165350%_)
        (let ((_%self150623165352%_ _%self150623165350%_))
          (declare (not safe))
          (let ((_%object165359165364%_
                 (##unchecked-structure-ref
                  _%self150623165352%_
                  '1
                  '#f
                  'length))
                (_%method165360165365%_
                 (##unchecked-structure-ref
                  _%self150623165352%_
                  '6
                  '#f
                  'length)))
            (_%method165360165365%_ _%object165359165364%_)))))
    (define ::HashTable-length
      (lambda (_%self150624165320%_)
        (let* ((_%self150624165322%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self150624165320%_)))
               (_%self150624165324%_ _%self150624165322%_))
          (if __DEBUG
              (let ((_%val165340%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object165332165337%_
                              (##unchecked-structure-ref
                               _%self150624165324%_
                               '1
                               '#f
                               'length))
                             (_%method165333165338%_
                              (##unchecked-structure-ref
                               _%self150624165324%_
                               '6
                               '#f
                               'length)))
                         (_%method165333165338%_ _%object165332165337%_)))))
                (if (fixnum? _%val165340%_)
                    _%val165340%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val165340%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object165342165347%_
                       (##unchecked-structure-ref
                        _%self150624165324%_
                        '1
                        '#f
                        'length))
                      (_%method165343165348%_
                       (##unchecked-structure-ref
                        _%self150624165324%_
                        '6
                        '#f
                        'length)))
                  (_%method165343165348%_ _%object165342165347%_)))))))
    (define __HashTable-new__%
      (lambda (_%self150867165284%_ _%size-hint165285%_)
        (let* ((_%self150867165287%_ _%self150867165284%_)
               (_%size-hint165294%_ _%size-hint165285%_))
          (declare (not safe))
          (let ((_%object165302165307%_
                 (##unchecked-structure-ref _%self150867165287%_ '1 '#f 'new))
                (_%method165303165308%_
                 (##unchecked-structure-ref _%self150867165287%_ '7 '#f 'new)))
            (_%method165303165308%_
             _%object165302165307%_
             _%size-hint165294%_)))))
    (define __HashTable-new__0
      (lambda (_%self150867165313%_)
        (let ((_%size-hint165315%_ '#f))
          (__HashTable-new__% _%self150867165313%_ _%size-hint165315%_))))
    (define __HashTable-new
      (lambda _g167041_
        (let ((_g167042_ (let () (declare (not safe)) (##length _g167041_))))
          (cond ((let () (declare (not safe)) (##fx= _g167042_ 1))
                 (apply __HashTable-new__0 _g167041_))
                ((let () (declare (not safe)) (##fx= _g167042_ 2))
                 (apply __HashTable-new__% _g167041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __HashTable-new
                  _g167041_))))))
    (define ::HashTable-new__%
      (lambda (_%self150868165229%_ _%size-hint165230%_)
        (let* ((_%self150868165232%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self150868165229%_)))
               (_%self150868165234%_ _%self150868165232%_))
          (if (or (not _%size-hint165230%_) (fixnum? _%size-hint165230%_))
              (let ((_%size-hint165249%_ _%size-hint165230%_))
                (if __DEBUG
                    (let ((__tmp167043
                           (let ()
                             (declare (not safe))
                             (let ((_%object165258165263%_
                                    (##unchecked-structure-ref
                                     _%self150868165234%_
                                     '1
                                     '#f
                                     'new))
                                   (_%method165259165264%_
                                    (##unchecked-structure-ref
                                     _%self150868165234%_
                                     '7
                                     '#f
                                     'new)))
                               (_%method165259165264%_
                                _%object165258165263%_
                                _%size-hint165249%_)))))
                      (declare (not safe))
                      (cast HashTable::interface __tmp167043))
                    (let ()
                      (declare (not safe))
                      (let ((_%object165265165270%_
                             (##unchecked-structure-ref
                              _%self150868165234%_
                              '1
                              '#f
                              'new))
                            (_%method165266165271%_
                             (##unchecked-structure-ref
                              _%self150868165234%_
                              '7
                              '#f
                              'new)))
                        (_%method165266165271%_
                         _%object165265165270%_
                         _%size-hint165249%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@32.9-32.18"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint165230%_)
                '#!void)))))
    (define ::HashTable-new__0
      (lambda (_%self150868165276%_)
        (let ((_%size-hint165278%_ '#f))
          (::HashTable-new__% _%self150868165276%_ _%size-hint165278%_))))
    (define ::HashTable-new
      (lambda _g167044_
        (let ((_g167045_ (let () (declare (not safe)) (##length _g167044_))))
          (cond ((let () (declare (not safe)) (##fx= _g167045_ 1))
                 (apply ::HashTable-new__0 _g167044_))
                ((let () (declare (not safe)) (##fx= _g167045_ 2))
                 (apply ::HashTable-new__% _g167044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ::HashTable-new
                  _g167044_))))))
    (define __HashTable-ref
      (lambda (_%self151111165209%_ _%key165210%_ _%default165211%_)
        (let ((_%self151111165213%_ _%self151111165209%_))
          (declare (not safe))
          (let ((_%object165220165225%_
                 (##unchecked-structure-ref _%self151111165213%_ '1 '#f 'ref))
                (_%method165221165226%_
                 (##unchecked-structure-ref _%self151111165213%_ '8 '#f 'ref)))
            (_%method165221165226%_
             _%object165220165225%_
             _%key165210%_
             _%default165211%_)))))
    (define ::HashTable-ref
      (lambda (_%self151112165180%_ _%key165181%_ _%default165182%_)
        (let* ((_%self151112165184%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self151112165180%_)))
               (_%self151112165186%_ _%self151112165184%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object165194165199%_
                       (##unchecked-structure-ref
                        _%self151112165186%_
                        '1
                        '#f
                        'ref))
                      (_%method165195165200%_
                       (##unchecked-structure-ref
                        _%self151112165186%_
                        '8
                        '#f
                        'ref)))
                  (_%method165195165200%_
                   _%object165194165199%_
                   _%key165181%_
                   _%default165182%_)))
              (let ()
                (declare (not safe))
                (let ((_%object165201165206%_
                       (##unchecked-structure-ref
                        _%self151112165186%_
                        '1
                        '#f
                        'ref))
                      (_%method165202165207%_
                       (##unchecked-structure-ref
                        _%self151112165186%_
                        '8
                        '#f
                        'ref)))
                  (_%method165202165207%_
                   _%object165201165206%_
                   _%key165181%_
                   _%default165182%_)))))))
    (define __HashTable-set!
      (lambda (_%self151355165161%_ _%key165162%_ _%value165163%_)
        (let ((_%self151355165165%_ _%self151355165161%_))
          (declare (not safe))
          (let ((_%object165172165177%_
                 (##unchecked-structure-ref _%self151355165165%_ '1 '#f 'set!))
                (_%method165173165178%_
                 (##unchecked-structure-ref
                  _%self151355165165%_
                  '9
                  '#f
                  'set!)))
            (_%method165173165178%_
             _%object165172165177%_
             _%key165162%_
             _%value165163%_)))))
    (define ::HashTable-set!
      (lambda (_%self151356165132%_ _%key165133%_ _%value165134%_)
        (let* ((_%self151356165136%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self151356165132%_)))
               (_%self151356165138%_ _%self151356165136%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object165146165151%_
                       (##unchecked-structure-ref
                        _%self151356165138%_
                        '1
                        '#f
                        'set!))
                      (_%method165147165152%_
                       (##unchecked-structure-ref
                        _%self151356165138%_
                        '9
                        '#f
                        'set!)))
                  (_%method165147165152%_
                   _%object165146165151%_
                   _%key165133%_
                   _%value165134%_)))
              (let ()
                (declare (not safe))
                (let ((_%object165153165158%_
                       (##unchecked-structure-ref
                        _%self151356165138%_
                        '1
                        '#f
                        'set!))
                      (_%method165154165159%_
                       (##unchecked-structure-ref
                        _%self151356165138%_
                        '9
                        '#f
                        'set!)))
                  (_%method165154165159%_
                   _%object165153165158%_
                   _%key165133%_
                   _%value165134%_)))))))
    (define __HashTable-update!
      (lambda (_%self151599165104%_
               _%key165105%_
               _%proc165106%_
               _%default165107%_)
        (let* ((_%self151599165109%_ _%self151599165104%_)
               (_%proc165116%_ _%proc165106%_))
          (declare (not safe))
          (let ((_%object165124165129%_
                 (##unchecked-structure-ref
                  _%self151599165109%_
                  '1
                  '#f
                  'update!))
                (_%method165125165130%_
                 (##unchecked-structure-ref
                  _%self151599165109%_
                  '10
                  '#f
                  'update!)))
            (_%method165125165130%_
             _%object165124165129%_
             _%key165105%_
             _%proc165116%_
             _%default165107%_)))))
    (define ::HashTable-update!
      (lambda (_%self151600165064%_
               _%key165065%_
               _%proc165066%_
               _%default165067%_)
        (let* ((_%self151600165069%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self151600165064%_)))
               (_%self151600165071%_ _%self151600165069%_))
          (if (procedure? _%proc165066%_)
              (let ((_%proc165080%_ _%proc165066%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object165089165094%_
                             (##unchecked-structure-ref
                              _%self151600165071%_
                              '1
                              '#f
                              'update!))
                            (_%method165090165095%_
                             (##unchecked-structure-ref
                              _%self151600165071%_
                              '10
                              '#f
                              'update!)))
                        (_%method165090165095%_
                         _%object165089165094%_
                         _%key165065%_
                         _%proc165080%_
                         _%default165067%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object165096165101%_
                             (##unchecked-structure-ref
                              _%self151600165071%_
                              '1
                              '#f
                              'update!))
                            (_%method165097165102%_
                             (##unchecked-structure-ref
                              _%self151600165071%_
                              '10
                              '#f
                              'update!)))
                        (_%method165097165102%_
                         _%object165096165101%_
                         _%key165065%_
                         _%proc165080%_
                         _%default165067%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc165066%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp167046 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'Locker::t
         'Locker
         __tmp167046
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj167032
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj167032
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj167032))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       Locker::t
       'interface-descriptor:
       Locker::interface))
    (define make-Locker
      (lambda (_%obj165062%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj165062%_))))
    (define try-Locker
      (lambda (_%obj165060%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj165060%_))))
    (define Locker?
      (lambda (_%obj165058%_)
        (let ((__tmp167047
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj165058%_ __tmp167047))))
    (define is-Locker?
      (lambda (_%obj165055%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj165055%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self151843165038%_)
        (let ((_%self151843165040%_ _%self151843165038%_))
          (declare (not safe))
          (let ((_%object165047165052%_
                 (##unchecked-structure-ref
                  _%self151843165040%_
                  '1
                  '#f
                  'read-lock!))
                (_%method165048165053%_
                 (##unchecked-structure-ref
                  _%self151843165040%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method165048165053%_ _%object165047165052%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self151844165011%_)
        (let* ((_%self151844165013%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self151844165011%_)))
               (_%self151844165015%_ _%self151844165013%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object165023165028%_
                       (##unchecked-structure-ref
                        _%self151844165015%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method165024165029%_
                       (##unchecked-structure-ref
                        _%self151844165015%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method165024165029%_ _%object165023165028%_)))
              (let ()
                (declare (not safe))
                (let ((_%object165030165035%_
                       (##unchecked-structure-ref
                        _%self151844165015%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method165031165036%_
                       (##unchecked-structure-ref
                        _%self151844165015%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method165031165036%_ _%object165030165035%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self152087164994%_)
        (let ((_%self152087164996%_ _%self152087164994%_))
          (declare (not safe))
          (let ((_%object165003165008%_
                 (##unchecked-structure-ref
                  _%self152087164996%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method165004165009%_
                 (##unchecked-structure-ref
                  _%self152087164996%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method165004165009%_ _%object165003165008%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self152088164967%_)
        (let* ((_%self152088164969%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self152088164967%_)))
               (_%self152088164971%_ _%self152088164969%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object164979164984%_
                       (##unchecked-structure-ref
                        _%self152088164971%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method164980164985%_
                       (##unchecked-structure-ref
                        _%self152088164971%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method164980164985%_ _%object164979164984%_)))
              (let ()
                (declare (not safe))
                (let ((_%object164986164991%_
                       (##unchecked-structure-ref
                        _%self152088164971%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method164987164992%_
                       (##unchecked-structure-ref
                        _%self152088164971%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method164987164992%_ _%object164986164991%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self152331164950%_)
        (let ((_%self152331164952%_ _%self152331164950%_))
          (declare (not safe))
          (let ((_%object164959164964%_
                 (##unchecked-structure-ref
                  _%self152331164952%_
                  '1
                  '#f
                  'write-lock!))
                (_%method164960164965%_
                 (##unchecked-structure-ref
                  _%self152331164952%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method164960164965%_ _%object164959164964%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self152332164923%_)
        (let* ((_%self152332164925%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self152332164923%_)))
               (_%self152332164927%_ _%self152332164925%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object164935164940%_
                       (##unchecked-structure-ref
                        _%self152332164927%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method164936164941%_
                       (##unchecked-structure-ref
                        _%self152332164927%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method164936164941%_ _%object164935164940%_)))
              (let ()
                (declare (not safe))
                (let ((_%object164942164947%_
                       (##unchecked-structure-ref
                        _%self152332164927%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method164943164948%_
                       (##unchecked-structure-ref
                        _%self152332164927%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method164943164948%_ _%object164942164947%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self152575164906%_)
        (let ((_%self152575164908%_ _%self152575164906%_))
          (declare (not safe))
          (let ((_%object164915164920%_
                 (##unchecked-structure-ref
                  _%self152575164908%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method164916164921%_
                 (##unchecked-structure-ref
                  _%self152575164908%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method164916164921%_ _%object164915164920%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self152576164879%_)
        (let* ((_%self152576164881%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self152576164879%_)))
               (_%self152576164883%_ _%self152576164881%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object164891164896%_
                       (##unchecked-structure-ref
                        _%self152576164883%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method164892164897%_
                       (##unchecked-structure-ref
                        _%self152576164883%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method164892164897%_ _%object164891164896%_)))
              (let ()
                (declare (not safe))
                (let ((_%object164898164903%_
                       (##unchecked-structure-ref
                        _%self152576164883%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method164899164904%_
                       (##unchecked-structure-ref
                        _%self152576164883%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method164899164904%_ _%object164898164903%_)))))))
    (let* ((_%klass164842%_ __table::t)
           (_%id164845%_ 'HashTable::ref)
           (_%proc164848%_ raw-table-ref)
           (_%rebind?164851%_ '#f)
           (_%id164856%_ _%id164845%_)
           (_%proc164869%_ _%proc164848%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164842%_
       _%id164856%_
       _%proc164869%_
       _%rebind?164851%_))
    (let* ((_%klass164805%_ __table::t)
           (_%id164808%_ 'HashTable::set!)
           (_%proc164811%_ raw-table-set!)
           (_%rebind?164814%_ '#f)
           (_%id164819%_ _%id164808%_)
           (_%proc164832%_ _%proc164811%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164805%_
       _%id164819%_
       _%proc164832%_
       _%rebind?164814%_))
    (let* ((_%klass164768%_ __table::t)
           (_%id164771%_ 'HashTable::update!)
           (_%proc164774%_ raw-table-update!)
           (_%rebind?164777%_ '#f)
           (_%id164782%_ _%id164771%_)
           (_%proc164795%_ _%proc164774%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164768%_
       _%id164782%_
       _%proc164795%_
       _%rebind?164777%_))
    (let* ((_%klass164731%_ __table::t)
           (_%id164734%_ 'HashTable::delete!)
           (_%proc164737%_ raw-table-delete!)
           (_%rebind?164740%_ '#f)
           (_%id164745%_ _%id164734%_)
           (_%proc164758%_ _%proc164737%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164731%_
       _%id164745%_
       _%proc164758%_
       _%rebind?164740%_))
    (let* ((_%klass164694%_ __table::t)
           (_%id164697%_ 'HashTable::for-each)
           (_%proc164700%_ raw-table-for-each)
           (_%rebind?164703%_ '#f)
           (_%id164708%_ _%id164697%_)
           (_%proc164721%_ _%proc164700%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164694%_
       _%id164708%_
       _%proc164721%_
       _%rebind?164703%_))
    (let* ((_%klass164657%_ __table::t)
           (_%id164660%_ 'HashTable::length)
           (_%proc164663%_ &raw-table-count)
           (_%rebind?164666%_ '#f)
           (_%id164671%_ _%id164660%_)
           (_%proc164684%_ _%proc164663%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164657%_
       _%id164671%_
       _%proc164684%_
       _%rebind?164666%_))
    (let* ((_%klass164620%_ __table::t)
           (_%id164623%_ 'HashTable::copy)
           (_%proc164626%_ raw-table-copy)
           (_%rebind?164629%_ '#f)
           (_%id164634%_ _%id164623%_)
           (_%proc164647%_ _%proc164626%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164620%_
       _%id164634%_
       _%proc164647%_
       _%rebind?164629%_))
    (let* ((_%klass164583%_ __table::t)
           (_%id164586%_ 'HashTable::new)
           (_%proc164589%_ raw-table-new)
           (_%rebind?164592%_ '#f)
           (_%id164597%_ _%id164586%_)
           (_%proc164610%_ _%proc164589%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164583%_
       _%id164597%_
       _%proc164610%_
       _%rebind?164592%_))
    (let* ((_%klass164546%_ __table::t)
           (_%id164549%_ 'HashTable::clear!)
           (_%proc164552%_ raw-table-clear!)
           (_%rebind?164555%_ '#f)
           (_%id164560%_ _%id164549%_)
           (_%proc164573%_ _%proc164552%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164546%_
       _%id164560%_
       _%proc164573%_
       _%rebind?164555%_))
    (let* ((_%klass164509%_ __gc-table::t)
           (_%id164512%_ 'HashTable::ref)
           (_%proc164515%_ gc-table-ref)
           (_%rebind?164518%_ '#f)
           (_%id164523%_ _%id164512%_)
           (_%proc164536%_ _%proc164515%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164509%_
       _%id164523%_
       _%proc164536%_
       _%rebind?164518%_))
    (let* ((_%klass164472%_ __gc-table::t)
           (_%id164475%_ 'HashTable::set!)
           (_%proc164478%_ gc-table-set!)
           (_%rebind?164481%_ '#f)
           (_%id164486%_ _%id164475%_)
           (_%proc164499%_ _%proc164478%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164472%_
       _%id164486%_
       _%proc164499%_
       _%rebind?164481%_))
    (let* ((_%klass164435%_ __gc-table::t)
           (_%id164438%_ 'HashTable::update!)
           (_%proc164441%_ gc-table-update!)
           (_%rebind?164444%_ '#f)
           (_%id164449%_ _%id164438%_)
           (_%proc164462%_ _%proc164441%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164435%_
       _%id164449%_
       _%proc164462%_
       _%rebind?164444%_))
    (let* ((_%klass164398%_ __gc-table::t)
           (_%id164401%_ 'HashTable::delete!)
           (_%proc164404%_ gc-table-delete!)
           (_%rebind?164407%_ '#f)
           (_%id164412%_ _%id164401%_)
           (_%proc164425%_ _%proc164404%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164398%_
       _%id164412%_
       _%proc164425%_
       _%rebind?164407%_))
    (let* ((_%klass164361%_ __gc-table::t)
           (_%id164364%_ 'HashTable::for-each)
           (_%proc164367%_ gc-table-for-each)
           (_%rebind?164370%_ '#f)
           (_%id164375%_ _%id164364%_)
           (_%proc164388%_ _%proc164367%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164361%_
       _%id164375%_
       _%proc164388%_
       _%rebind?164370%_))
    (let* ((_%klass164324%_ __gc-table::t)
           (_%id164327%_ 'HashTable::length)
           (_%proc164330%_ gc-table-length)
           (_%rebind?164333%_ '#f)
           (_%id164338%_ _%id164327%_)
           (_%proc164351%_ _%proc164330%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164324%_
       _%id164338%_
       _%proc164351%_
       _%rebind?164333%_))
    (let* ((_%klass164287%_ __gc-table::t)
           (_%id164290%_ 'HashTable::copy)
           (_%proc164293%_ gc-table-copy)
           (_%rebind?164296%_ '#f)
           (_%id164301%_ _%id164290%_)
           (_%proc164314%_ _%proc164293%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164287%_
       _%id164301%_
       _%proc164314%_
       _%rebind?164296%_))
    (let* ((_%klass164250%_ __gc-table::t)
           (_%id164253%_ 'HashTable::new)
           (_%proc164256%_ gc-table-new)
           (_%rebind?164259%_ '#f)
           (_%id164264%_ _%id164253%_)
           (_%proc164277%_ _%proc164256%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164250%_
       _%id164264%_
       _%proc164277%_
       _%rebind?164259%_))
    (let* ((_%klass164213%_ __gc-table::t)
           (_%id164216%_ 'HashTable::clear!)
           (_%proc164219%_ gc-table-clear!)
           (_%rebind?164222%_ '#f)
           (_%id164227%_ _%id164216%_)
           (_%proc164240%_ _%proc164219%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164213%_
       _%id164227%_
       _%proc164240%_
       _%rebind?164222%_))
    (define gambit-table-update!
      (lambda (_%table164206%_
               _%key164207%_
               _%update164208%_
               _%default164209%_)
        (let ((_%result164211%_
               (table-ref _%table164206%_ _%key164207%_ _%default164209%_)))
          (table-set!
           _%table164206%_
           _%key164207%_
           (_%update164208%_ _%result164211%_)))))
    (define gambit-table-for-each
      (lambda (_%table164203%_ _%proc164204%_)
        (table-for-each _%proc164204%_ _%table164203%_)))
    (define gambit-table-clear!
      (lambda (_%table164201%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table164201%_ '0 '5 '#f '#f))))
    (let* ((_%klass164164%_ (macro-type-table))
           (_%id164167%_ 'HashTable::ref)
           (_%proc164170%_ table-ref)
           (_%rebind?164173%_ '#f)
           (_%id164178%_ _%id164167%_)
           (_%proc164191%_ _%proc164170%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164164%_
       _%id164178%_
       _%proc164191%_
       _%rebind?164173%_))
    (let* ((_%klass164127%_ (macro-type-table))
           (_%id164130%_ 'HashTable::set!)
           (_%proc164133%_ table-set!)
           (_%rebind?164136%_ '#f)
           (_%id164141%_ _%id164130%_)
           (_%proc164154%_ _%proc164133%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164127%_
       _%id164141%_
       _%proc164154%_
       _%rebind?164136%_))
    (let* ((_%klass164090%_ (macro-type-table))
           (_%id164093%_ 'HashTable::update!)
           (_%proc164096%_ gambit-table-update!)
           (_%rebind?164099%_ '#f)
           (_%id164104%_ _%id164093%_)
           (_%proc164117%_ _%proc164096%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164090%_
       _%id164104%_
       _%proc164117%_
       _%rebind?164099%_))
    (let* ((_%klass164053%_ (macro-type-table))
           (_%id164056%_ 'HashTable::delete!)
           (_%proc164059%_ table-set!)
           (_%rebind?164062%_ '#f)
           (_%id164067%_ _%id164056%_)
           (_%proc164080%_ _%proc164059%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164053%_
       _%id164067%_
       _%proc164080%_
       _%rebind?164062%_))
    (let* ((_%klass164016%_ (macro-type-table))
           (_%id164019%_ 'HashTable::for-each)
           (_%proc164022%_ gambit-table-for-each)
           (_%rebind?164025%_ '#f)
           (_%id164030%_ _%id164019%_)
           (_%proc164043%_ _%proc164022%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass164016%_
       _%id164030%_
       _%proc164043%_
       _%rebind?164025%_))
    (let* ((_%klass163979%_ (macro-type-table))
           (_%id163982%_ 'HashTable::length)
           (_%proc163985%_ table-length)
           (_%rebind?163988%_ '#f)
           (_%id163993%_ _%id163982%_)
           (_%proc164006%_ _%proc163985%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163979%_
       _%id163993%_
       _%proc164006%_
       _%rebind?163988%_))
    (let* ((_%klass163942%_ (macro-type-table))
           (_%id163945%_ 'HashTable::copy)
           (_%proc163948%_ table-copy)
           (_%rebind?163951%_ '#f)
           (_%id163956%_ _%id163945%_)
           (_%proc163969%_ _%proc163948%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163942%_
       _%id163956%_
       _%proc163969%_
       _%rebind?163951%_))
    (let* ((_%klass163905%_ (macro-type-table))
           (_%id163908%_ 'HashTable::new)
           (_%proc163911%_ table-new)
           (_%rebind?163914%_ '#f)
           (_%id163919%_ _%id163908%_)
           (_%proc163932%_ _%proc163911%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163905%_
       _%id163919%_
       _%proc163932%_
       _%rebind?163914%_))
    (let* ((_%klass163868%_ (macro-type-table))
           (_%id163871%_ 'HashTable::clear!)
           (_%proc163874%_ gambit-table-clear!)
           (_%rebind?163877%_ '#f)
           (_%id163882%_ _%id163871%_)
           (_%proc163895%_ _%proc163874%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163868%_
       _%id163882%_
       _%proc163895%_
       _%rebind?163877%_))
    (define hash-table::t
      (let* ((_%slots163831%_ '(table count free hash test seed lock))
             (_%slot-vector163833%_ (list->vector (cons '#f _%slots163831%_)))
             (_%slot-table163859%_
              (let ((_%slot-table163835%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp167050
                       (lambda (_%slot163837%_ _%field163838%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table163835%_
                            _%slot163837%_
                            _%field163838%_))
                         (let ((__tmp167051
                                (let ((_%sym163840%_ _%slot163837%_))
                                  (if (symbol? _%sym163840%_)
                                      (let ((_%sym163845%_ _%sym163840%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym163845%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym163840%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table163835%_
                            __tmp167051
                            _%field163838%_))))
                      (__tmp167048
                       (let ((__tmp167049
                              (let ()
                                (declare (not safe))
                                (##length _%slots163831%_))))
                         (declare (not safe))
                         (##iota __tmp167049 '1))))
                  (declare (not safe))
                  (##for-each __tmp167050 _%slots163831%_ __tmp167048))
                _%slot-table163835%_))
             (_%flags163861%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields163863%_ '#())
             (_%properties163865%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots163831%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp167052 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'hash-table::t
         'hash-table
         _%flags163861%_
         __table::t
         _%fields163863%_
         __tmp167052
         _%slot-vector163833%_
         _%slot-table163859%_
         _%properties163865%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots163794%_ '(gcht immediate))
             (_%slot-vector163796%_ (list->vector (cons '#f _%slots163794%_)))
             (_%slot-table163822%_
              (let ((_%slot-table163798%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp167055
                       (lambda (_%slot163800%_ _%field163801%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table163798%_
                            _%slot163800%_
                            _%field163801%_))
                         (let ((__tmp167056
                                (let ((_%sym163803%_ _%slot163800%_))
                                  (if (symbol? _%sym163803%_)
                                      (let ((_%sym163808%_ _%sym163803%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym163808%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym163803%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table163798%_
                            __tmp167056
                            _%field163801%_))))
                      (__tmp167053
                       (let ((__tmp167054
                              (let ()
                                (declare (not safe))
                                (##length _%slots163794%_))))
                         (declare (not safe))
                         (##iota __tmp167054 '1))))
                  (declare (not safe))
                  (##for-each __tmp167055 _%slots163794%_ __tmp167053))
                _%slot-table163798%_))
             (_%flags163824%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields163826%_ '#())
             (_%properties163828%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots163794%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp167057 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gc-hash-table::t
         'gc-hash-table
         _%flags163824%_
         __gc-table::t
         _%fields163826%_
         __tmp167057
         _%slot-vector163796%_
         _%slot-table163822%_
         _%properties163828%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp167059 (list))
            (__tmp167058
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'locked-hash-table::t
         'locked-hash-table
         __tmp167059
         '(table lock)
         __tmp167058
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args163791%_
        (apply make-instance locked-hash-table::t _%$args163791%_)))
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
      (let ((__tmp167061 (list))
            (__tmp167060
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'checked-hash-table::t
         'checked-hash-table
         __tmp167061
         '(table key-check)
         __tmp167060
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args163788%_
        (apply make-instance checked-hash-table::t _%$args163788%_)))
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
      (let ((__tmp167063 (list hash-table::t))
            (__tmp167062 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eq-hash-table::t::t
         'eq-hash-table
         __tmp167063
         '()
         __tmp167062
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args163785%_
        (apply make-instance eq-hash-table::t _%$args163785%_)))
    (define eqv-hash-table::t
      (let ((__tmp167065 (list hash-table::t))
            (__tmp167064 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eqv-hash-table::t::t
         'eqv-hash-table
         __tmp167065
         '()
         __tmp167064
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args163782%_
        (apply make-instance eqv-hash-table::t _%$args163782%_)))
    (define symbol-hash-table::t
      (let ((__tmp167067 (list hash-table::t))
            (__tmp167066 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'symbol-hash-table::t::t
         'symbol-hash-table
         __tmp167067
         '()
         __tmp167066
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args163779%_
        (apply make-instance symbol-hash-table::t _%$args163779%_)))
    (define string-hash-table::t
      (let ((__tmp167069 (list hash-table::t))
            (__tmp167068 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'string-hash-table::t::t
         'string-hash-table
         __tmp167069
         '()
         __tmp167068
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args163776%_
        (apply make-instance string-hash-table::t _%$args163776%_)))
    (define immediate-hash-table::t
      (let ((__tmp167071 (list hash-table::t))
            (__tmp167070 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'immediate-hash-table::t::t
         'immediate-hash-table
         __tmp167071
         '()
         __tmp167070
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args163773%_
        (apply make-instance immediate-hash-table::t _%$args163773%_)))
    (let* ((_%klass163736%_ hash-table::t)
           (_%id163739%_ 'HashTable::ref)
           (_%proc163742%_ raw-table-ref)
           (_%rebind?163745%_ '#f)
           (_%id163750%_ _%id163739%_)
           (_%proc163763%_ _%proc163742%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163736%_
       _%id163750%_
       _%proc163763%_
       _%rebind?163745%_))
    (let* ((_%klass163699%_ hash-table::t)
           (_%id163702%_ 'HashTable::set!)
           (_%proc163705%_ raw-table-set!)
           (_%rebind?163708%_ '#f)
           (_%id163713%_ _%id163702%_)
           (_%proc163726%_ _%proc163705%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163699%_
       _%id163713%_
       _%proc163726%_
       _%rebind?163708%_))
    (let* ((_%klass163662%_ hash-table::t)
           (_%id163665%_ 'HashTable::update!)
           (_%proc163668%_ raw-table-update!)
           (_%rebind?163671%_ '#f)
           (_%id163676%_ _%id163665%_)
           (_%proc163689%_ _%proc163668%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163662%_
       _%id163676%_
       _%proc163689%_
       _%rebind?163671%_))
    (let* ((_%klass163625%_ hash-table::t)
           (_%id163628%_ 'HashTable::delete!)
           (_%proc163631%_ raw-table-delete!)
           (_%rebind?163634%_ '#f)
           (_%id163639%_ _%id163628%_)
           (_%proc163652%_ _%proc163631%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163625%_
       _%id163639%_
       _%proc163652%_
       _%rebind?163634%_))
    (let* ((_%klass163588%_ hash-table::t)
           (_%id163591%_ 'HashTable::for-each)
           (_%proc163594%_ raw-table-for-each)
           (_%rebind?163597%_ '#f)
           (_%id163602%_ _%id163591%_)
           (_%proc163615%_ _%proc163594%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163588%_
       _%id163602%_
       _%proc163615%_
       _%rebind?163597%_))
    (let* ((_%klass163551%_ hash-table::t)
           (_%id163554%_ 'HashTable::length)
           (_%proc163557%_ &raw-table-count)
           (_%rebind?163560%_ '#f)
           (_%id163565%_ _%id163554%_)
           (_%proc163578%_ _%proc163557%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163551%_
       _%id163565%_
       _%proc163578%_
       _%rebind?163560%_))
    (let* ((_%klass163514%_ hash-table::t)
           (_%id163517%_ 'HashTable::copy)
           (_%proc163520%_ raw-table-copy)
           (_%rebind?163523%_ '#f)
           (_%id163528%_ _%id163517%_)
           (_%proc163541%_ _%proc163520%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163514%_
       _%id163528%_
       _%proc163541%_
       _%rebind?163523%_))
    (let* ((_%klass163477%_ hash-table::t)
           (_%id163480%_ 'HashTable::new)
           (_%proc163483%_ raw-table-new)
           (_%rebind?163486%_ '#f)
           (_%id163491%_ _%id163480%_)
           (_%proc163504%_ _%proc163483%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163477%_
       _%id163491%_
       _%proc163504%_
       _%rebind?163486%_))
    (let* ((_%klass163440%_ hash-table::t)
           (_%id163443%_ 'HashTable::clear!)
           (_%proc163446%_ raw-table-clear!)
           (_%rebind?163449%_ '#f)
           (_%id163454%_ _%id163443%_)
           (_%proc163467%_ _%proc163446%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163440%_
       _%id163454%_
       _%proc163467%_
       _%rebind?163449%_))
    (let* ((_%klass163403%_ eq-hash-table::t)
           (_%id163406%_ 'HashTable::ref)
           (_%proc163409%_ eq-table-ref)
           (_%rebind?163412%_ '#f)
           (_%id163417%_ _%id163406%_)
           (_%proc163430%_ _%proc163409%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163403%_
       _%id163417%_
       _%proc163430%_
       _%rebind?163412%_))
    (let* ((_%klass163366%_ eq-hash-table::t)
           (_%id163369%_ 'HashTable::set!)
           (_%proc163372%_ eq-table-set!)
           (_%rebind?163375%_ '#f)
           (_%id163380%_ _%id163369%_)
           (_%proc163393%_ _%proc163372%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163366%_
       _%id163380%_
       _%proc163393%_
       _%rebind?163375%_))
    (let* ((_%klass163329%_ eq-hash-table::t)
           (_%id163332%_ 'HashTable::update!)
           (_%proc163335%_ eq-table-update!)
           (_%rebind?163338%_ '#f)
           (_%id163343%_ _%id163332%_)
           (_%proc163356%_ _%proc163335%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163329%_
       _%id163343%_
       _%proc163356%_
       _%rebind?163338%_))
    (let* ((_%klass163292%_ eq-hash-table::t)
           (_%id163295%_ 'HashTable::delete!)
           (_%proc163298%_ eq-table-delete!)
           (_%rebind?163301%_ '#f)
           (_%id163306%_ _%id163295%_)
           (_%proc163319%_ _%proc163298%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163292%_
       _%id163306%_
       _%proc163319%_
       _%rebind?163301%_))
    (let* ((_%klass163255%_ eqv-hash-table::t)
           (_%id163258%_ 'HashTable::ref)
           (_%proc163261%_ eqv-table-ref)
           (_%rebind?163264%_ '#f)
           (_%id163269%_ _%id163258%_)
           (_%proc163282%_ _%proc163261%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163255%_
       _%id163269%_
       _%proc163282%_
       _%rebind?163264%_))
    (let* ((_%klass163218%_ eqv-hash-table::t)
           (_%id163221%_ 'HashTable::set!)
           (_%proc163224%_ eqv-table-set!)
           (_%rebind?163227%_ '#f)
           (_%id163232%_ _%id163221%_)
           (_%proc163245%_ _%proc163224%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163218%_
       _%id163232%_
       _%proc163245%_
       _%rebind?163227%_))
    (let* ((_%klass163181%_ eqv-hash-table::t)
           (_%id163184%_ 'HashTable::update!)
           (_%proc163187%_ eqv-table-update!)
           (_%rebind?163190%_ '#f)
           (_%id163195%_ _%id163184%_)
           (_%proc163208%_ _%proc163187%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163181%_
       _%id163195%_
       _%proc163208%_
       _%rebind?163190%_))
    (let* ((_%klass163144%_ eqv-hash-table::t)
           (_%id163147%_ 'HashTable::delete!)
           (_%proc163150%_ eqv-table-delete!)
           (_%rebind?163153%_ '#f)
           (_%id163158%_ _%id163147%_)
           (_%proc163171%_ _%proc163150%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163144%_
       _%id163158%_
       _%proc163171%_
       _%rebind?163153%_))
    (let* ((_%klass163107%_ symbol-hash-table::t)
           (_%id163110%_ 'HashTable::ref)
           (_%proc163113%_ symbolic-table-ref)
           (_%rebind?163116%_ '#f)
           (_%id163121%_ _%id163110%_)
           (_%proc163134%_ _%proc163113%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163107%_
       _%id163121%_
       _%proc163134%_
       _%rebind?163116%_))
    (let* ((_%klass163070%_ symbol-hash-table::t)
           (_%id163073%_ 'HashTable::set!)
           (_%proc163076%_ symbolic-table-set!)
           (_%rebind?163079%_ '#f)
           (_%id163084%_ _%id163073%_)
           (_%proc163097%_ _%proc163076%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163070%_
       _%id163084%_
       _%proc163097%_
       _%rebind?163079%_))
    (let* ((_%klass163033%_ symbol-hash-table::t)
           (_%id163036%_ 'HashTable::update!)
           (_%proc163039%_ symbolic-table-update!)
           (_%rebind?163042%_ '#f)
           (_%id163047%_ _%id163036%_)
           (_%proc163060%_ _%proc163039%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163033%_
       _%id163047%_
       _%proc163060%_
       _%rebind?163042%_))
    (let* ((_%klass162996%_ symbol-hash-table::t)
           (_%id162999%_ 'HashTable::delete!)
           (_%proc163002%_ symbolic-table-delete!)
           (_%rebind?163005%_ '#f)
           (_%id163010%_ _%id162999%_)
           (_%proc163023%_ _%proc163002%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162996%_
       _%id163010%_
       _%proc163023%_
       _%rebind?163005%_))
    (let* ((_%klass162959%_ string-hash-table::t)
           (_%id162962%_ 'HashTable::ref)
           (_%proc162965%_ string-table-ref)
           (_%rebind?162968%_ '#f)
           (_%id162973%_ _%id162962%_)
           (_%proc162986%_ _%proc162965%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162959%_
       _%id162973%_
       _%proc162986%_
       _%rebind?162968%_))
    (let* ((_%klass162922%_ string-hash-table::t)
           (_%id162925%_ 'HashTable::set!)
           (_%proc162928%_ string-table-set!)
           (_%rebind?162931%_ '#f)
           (_%id162936%_ _%id162925%_)
           (_%proc162949%_ _%proc162928%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162922%_
       _%id162936%_
       _%proc162949%_
       _%rebind?162931%_))
    (let* ((_%klass162885%_ string-hash-table::t)
           (_%id162888%_ 'HashTable::update!)
           (_%proc162891%_ string-table-update!)
           (_%rebind?162894%_ '#f)
           (_%id162899%_ _%id162888%_)
           (_%proc162912%_ _%proc162891%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162885%_
       _%id162899%_
       _%proc162912%_
       _%rebind?162894%_))
    (let* ((_%klass162848%_ string-hash-table::t)
           (_%id162851%_ 'HashTable::delete!)
           (_%proc162854%_ string-table-delete!)
           (_%rebind?162857%_ '#f)
           (_%id162862%_ _%id162851%_)
           (_%proc162875%_ _%proc162854%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162848%_
       _%id162862%_
       _%proc162875%_
       _%rebind?162857%_))
    (let* ((_%klass162811%_ immediate-hash-table::t)
           (_%id162814%_ 'HashTable::ref)
           (_%proc162817%_ immediate-table-ref)
           (_%rebind?162820%_ '#f)
           (_%id162825%_ _%id162814%_)
           (_%proc162838%_ _%proc162817%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162811%_
       _%id162825%_
       _%proc162838%_
       _%rebind?162820%_))
    (let* ((_%klass162774%_ immediate-hash-table::t)
           (_%id162777%_ 'HashTable::set!)
           (_%proc162780%_ immediate-table-set!)
           (_%rebind?162783%_ '#f)
           (_%id162788%_ _%id162777%_)
           (_%proc162801%_ _%proc162780%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162774%_
       _%id162788%_
       _%proc162801%_
       _%rebind?162783%_))
    (let* ((_%klass162737%_ immediate-hash-table::t)
           (_%id162740%_ 'HashTable::update!)
           (_%proc162743%_ immediate-table-update!)
           (_%rebind?162746%_ '#f)
           (_%id162751%_ _%id162740%_)
           (_%proc162764%_ _%proc162743%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162737%_
       _%id162751%_
       _%proc162764%_
       _%rebind?162746%_))
    (let* ((_%klass162700%_ immediate-hash-table::t)
           (_%id162703%_ 'HashTable::delete!)
           (_%proc162706%_ immediate-table-delete!)
           (_%rebind?162709%_ '#f)
           (_%id162714%_ _%id162703%_)
           (_%proc162727%_ _%proc162706%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162700%_
       _%id162714%_
       _%proc162727%_
       _%rebind?162709%_))
    (let* ((_%klass162663%_ gc-hash-table::t)
           (_%id162666%_ 'HashTable::ref)
           (_%proc162669%_ gc-table-ref)
           (_%rebind?162672%_ '#f)
           (_%id162677%_ _%id162666%_)
           (_%proc162690%_ _%proc162669%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162663%_
       _%id162677%_
       _%proc162690%_
       _%rebind?162672%_))
    (let* ((_%klass162626%_ gc-hash-table::t)
           (_%id162629%_ 'HashTable::set!)
           (_%proc162632%_ gc-table-set!)
           (_%rebind?162635%_ '#f)
           (_%id162640%_ _%id162629%_)
           (_%proc162653%_ _%proc162632%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162626%_
       _%id162640%_
       _%proc162653%_
       _%rebind?162635%_))
    (let* ((_%klass162589%_ gc-hash-table::t)
           (_%id162592%_ 'HashTable::update!)
           (_%proc162595%_ gc-table-update!)
           (_%rebind?162598%_ '#f)
           (_%id162603%_ _%id162592%_)
           (_%proc162616%_ _%proc162595%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162589%_
       _%id162603%_
       _%proc162616%_
       _%rebind?162598%_))
    (let* ((_%klass162552%_ gc-hash-table::t)
           (_%id162555%_ 'HashTable::delete!)
           (_%proc162558%_ gc-table-delete!)
           (_%rebind?162561%_ '#f)
           (_%id162566%_ _%id162555%_)
           (_%proc162579%_ _%proc162558%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162552%_
       _%id162566%_
       _%proc162579%_
       _%rebind?162561%_))
    (let* ((_%klass162515%_ gc-hash-table::t)
           (_%id162518%_ 'HashTable::for-each)
           (_%proc162521%_ gc-table-for-each)
           (_%rebind?162524%_ '#f)
           (_%id162529%_ _%id162518%_)
           (_%proc162542%_ _%proc162521%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162515%_
       _%id162529%_
       _%proc162542%_
       _%rebind?162524%_))
    (let* ((_%klass162478%_ gc-hash-table::t)
           (_%id162481%_ 'HashTable::length)
           (_%proc162484%_ gc-table-length)
           (_%rebind?162487%_ '#f)
           (_%id162492%_ _%id162481%_)
           (_%proc162505%_ _%proc162484%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162478%_
       _%id162492%_
       _%proc162505%_
       _%rebind?162487%_))
    (let* ((_%klass162441%_ gc-hash-table::t)
           (_%id162444%_ 'HashTable::copy)
           (_%proc162447%_ gc-table-copy)
           (_%rebind?162450%_ '#f)
           (_%id162455%_ _%id162444%_)
           (_%proc162468%_ _%proc162447%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162441%_
       _%id162455%_
       _%proc162468%_
       _%rebind?162450%_))
    (let* ((_%klass162404%_ gc-hash-table::t)
           (_%id162407%_ 'HashTable::new)
           (_%proc162410%_ gc-table-new)
           (_%rebind?162413%_ '#f)
           (_%id162418%_ _%id162407%_)
           (_%proc162431%_ _%proc162410%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162404%_
       _%id162418%_
       _%proc162431%_
       _%rebind?162413%_))
    (let* ((_%klass162367%_ gc-hash-table::t)
           (_%id162370%_ 'HashTable::clear!)
           (_%proc162373%_ gc-table-clear!)
           (_%rebind?162376%_ '#f)
           (_%id162381%_ _%id162370%_)
           (_%proc162394%_ _%proc162373%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162367%_
       _%id162381%_
       _%proc162394%_
       _%rebind?162376%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref153201%_
      (lambda (_%self162288%_ _%key162290%_ _%default162291%_)
        (let* ((_%self162294%_ _%self162288%_)
               (_%key162303%_ _%key162290%_)
               (_%default162311%_ _%default162291%_))
          (let ((_%h162320%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self162294%_ '1 '#f '#f)))
                (_%l162322%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self162294%_ '2 '#f '#f))))
            (let ((__tmp167074
                   (lambda ()
                     (let ((_%self151841162326%_ _%l162322%_))
                       (declare (not safe))
                       (let ((_%object162329162334%_
                              (##unchecked-structure-ref
                               _%self151841162326%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method162330162335%_
                              (##unchecked-structure-ref
                               _%self151841162326%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method162330162335%_ _%object162329162334%_)))))
                  (__tmp167073
                   (lambda ()
                     (let* ((_%self151109162338%_ _%h162320%_)
                            (_%key162341%_ _%key162303%_)
                            (_%default162344%_ _%default162311%_))
                       (declare (not safe))
                       (let ((_%object162347162352%_
                              (##unchecked-structure-ref
                               _%self151109162338%_
                               '1
                               '#f
                               'ref))
                             (_%method162348162353%_
                              (##unchecked-structure-ref
                               _%self151109162338%_
                               '8
                               '#f
                               'ref)))
                         (_%method162348162353%_
                          _%object162347162352%_
                          _%key162341%_
                          _%default162344%_)))))
                  (__tmp167072
                   (lambda ()
                     (let ((_%self152085162356%_ _%l162322%_))
                       (declare (not safe))
                       (let ((_%object162359162364%_
                              (##unchecked-structure-ref
                               _%self152085162356%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method162360162365%_
                              (##unchecked-structure-ref
                               _%self152085162356%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method162360162365%_ _%object162359162364%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp167074 __tmp167073 __tmp167072))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref153201%_
       '#f))
    (define _%locked-hash-table::HashTable::set!153203%_
      (lambda (_%self162086%_ _%key162088%_ _%value162089%_)
        (let* ((_%self162092%_ _%self162086%_)
               (_%key162101%_ _%key162088%_)
               (_%value162109%_ _%value162089%_))
          (let ((_%h162118%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self162092%_ '1 '#f '#f)))
                (_%l162120%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self162092%_ '2 '#f '#f))))
            (let ((__tmp167077
                   (lambda ()
                     (let ((_%self152329162124%_ _%l162120%_))
                       (declare (not safe))
                       (let ((_%object162127162132%_
                              (##unchecked-structure-ref
                               _%self152329162124%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method162128162133%_
                              (##unchecked-structure-ref
                               _%self152329162124%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method162128162133%_ _%object162127162132%_)))))
                  (__tmp167076
                   (lambda ()
                     (let* ((_%self151353162136%_ _%h162118%_)
                            (_%key162139%_ _%key162101%_)
                            (_%value162142%_ _%value162109%_))
                       (declare (not safe))
                       (let ((_%object162145162150%_
                              (##unchecked-structure-ref
                               _%self151353162136%_
                               '1
                               '#f
                               'set!))
                             (_%method162146162151%_
                              (##unchecked-structure-ref
                               _%self151353162136%_
                               '9
                               '#f
                               'set!)))
                         (_%method162146162151%_
                          _%object162145162150%_
                          _%key162139%_
                          _%value162142%_)))))
                  (__tmp167075
                   (lambda ()
                     (let ((_%self152573162154%_ _%l162120%_))
                       (declare (not safe))
                       (let ((_%object162157162162%_
                              (##unchecked-structure-ref
                               _%self152573162154%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method162158162163%_
                              (##unchecked-structure-ref
                               _%self152573162154%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method162158162163%_ _%object162157162162%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp167077 __tmp167076 __tmp167075))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!153203%_
       '#f))
    (define _%locked-hash-table::HashTable::update!153205%_
      (lambda (_%self161872%_ _%key161874%_ _%update161875%_ _%default161876%_)
        (let* ((_%self161879%_ _%self161872%_)
               (_%key161888%_ _%key161874%_)
               (_%update161896%_ _%update161875%_)
               (_%default161904%_ _%default161876%_))
          (let ((_%h161913%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self161879%_ '1 '#f '#f)))
                (_%l161915%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self161879%_ '2 '#f '#f))))
            (let ((__tmp167080
                   (lambda ()
                     (let ((_%self152329161919%_ _%l161915%_))
                       (declare (not safe))
                       (let ((_%object161922161927%_
                              (##unchecked-structure-ref
                               _%self152329161919%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method161923161928%_
                              (##unchecked-structure-ref
                               _%self152329161919%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method161923161928%_ _%object161922161927%_)))))
                  (__tmp167079
                   (lambda ()
                     (let* ((_%self151597161931%_ _%h161913%_)
                            (_%key161934%_ _%key161888%_)
                            (_%proc161937%_ _%update161896%_)
                            (_%default161940%_ _%default161904%_))
                       (declare (not safe))
                       (let ((_%object161943161948%_
                              (##unchecked-structure-ref
                               _%self151597161931%_
                               '1
                               '#f
                               'update!))
                             (_%method161944161949%_
                              (##unchecked-structure-ref
                               _%self151597161931%_
                               '10
                               '#f
                               'update!)))
                         (_%method161944161949%_
                          _%object161943161948%_
                          _%key161934%_
                          _%proc161937%_
                          _%default161940%_)))))
                  (__tmp167078
                   (lambda ()
                     (let ((_%self152573161952%_ _%l161915%_))
                       (declare (not safe))
                       (let ((_%object161955161960%_
                              (##unchecked-structure-ref
                               _%self152573161952%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method161956161961%_
                              (##unchecked-structure-ref
                               _%self152573161952%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method161956161961%_ _%object161955161960%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp167080 __tmp167079 __tmp167078))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!153205%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!153207%_
      (lambda (_%self161682%_ _%key161684%_)
        (let* ((_%self161687%_ _%self161682%_) (_%key161696%_ _%key161684%_))
          (let ((_%h161705%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self161687%_ '1 '#f '#f)))
                (_%l161707%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self161687%_ '2 '#f '#f))))
            (let ((__tmp167083
                   (lambda ()
                     (let ((_%self152329161711%_ _%l161707%_))
                       (declare (not safe))
                       (let ((_%object161714161719%_
                              (##unchecked-structure-ref
                               _%self152329161711%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method161715161720%_
                              (##unchecked-structure-ref
                               _%self152329161711%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method161715161720%_ _%object161714161719%_)))))
                  (__tmp167082
                   (lambda ()
                     (let* ((_%self150133161723%_ _%h161705%_)
                            (_%key161726%_ _%key161696%_))
                       (declare (not safe))
                       (let ((_%object161729161734%_
                              (##unchecked-structure-ref
                               _%self150133161723%_
                               '1
                               '#f
                               'delete!))
                             (_%method161730161735%_
                              (##unchecked-structure-ref
                               _%self150133161723%_
                               '4
                               '#f
                               'delete!)))
                         (_%method161730161735%_
                          _%object161729161734%_
                          _%key161726%_)))))
                  (__tmp167081
                   (lambda ()
                     (let ((_%self152573161738%_ _%l161707%_))
                       (declare (not safe))
                       (let ((_%object161741161746%_
                              (##unchecked-structure-ref
                               _%self152573161738%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method161742161747%_
                              (##unchecked-structure-ref
                               _%self152573161738%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method161742161747%_ _%object161741161746%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp167083 __tmp167082 __tmp167081))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!153207%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each153209%_
      (lambda (_%self161492%_ _%proc161494%_)
        (let* ((_%self161497%_ _%self161492%_) (_%proc161506%_ _%proc161494%_))
          (let ((_%h161515%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self161497%_ '1 '#f '#f)))
                (_%l161517%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self161497%_ '2 '#f '#f))))
            (let ((__tmp167086
                   (lambda ()
                     (let ((_%self151841161521%_ _%l161517%_))
                       (declare (not safe))
                       (let ((_%object161524161529%_
                              (##unchecked-structure-ref
                               _%self151841161521%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method161525161530%_
                              (##unchecked-structure-ref
                               _%self151841161521%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method161525161530%_ _%object161524161529%_)))))
                  (__tmp167085
                   (lambda ()
                     (let* ((_%self150377161533%_ _%h161515%_)
                            (_%proc161536%_ _%proc161506%_))
                       (declare (not safe))
                       (let ((_%object161539161544%_
                              (##unchecked-structure-ref
                               _%self150377161533%_
                               '1
                               '#f
                               'for-each))
                             (_%method161540161545%_
                              (##unchecked-structure-ref
                               _%self150377161533%_
                               '5
                               '#f
                               'for-each)))
                         (_%method161540161545%_
                          _%object161539161544%_
                          _%proc161536%_)))))
                  (__tmp167084
                   (lambda ()
                     (let ((_%self152085161548%_ _%l161517%_))
                       (declare (not safe))
                       (let ((_%object161551161556%_
                              (##unchecked-structure-ref
                               _%self152085161548%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method161552161557%_
                              (##unchecked-structure-ref
                               _%self152085161548%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method161552161557%_ _%object161551161556%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp167086 __tmp167085 __tmp167084))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each153209%_
       '#f))
    (define _%locked-hash-table::HashTable::length153211%_
      (lambda (_%self161307%_)
        (let ((_%self161311%_ _%self161307%_))
          (let ((_%h161321%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self161311%_ '1 '#f '#f)))
                (_%l161323%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self161311%_ '2 '#f '#f))))
            (let* ((_%$%g161325161327%_
                    (let ((__tmp167089
                           (lambda ()
                             (let ((_%self151841161334%_ _%l161323%_))
                               (declare (not safe))
                               (let ((_%object161337161342%_
                                      (##unchecked-structure-ref
                                       _%self151841161334%_
                                       '1
                                       '#f
                                       'read-lock!))
                                     (_%method161338161343%_
                                      (##unchecked-structure-ref
                                       _%self151841161334%_
                                       '2
                                       '#f
                                       'read-lock!)))
                                 (_%method161338161343%_
                                  _%object161337161342%_)))))
                          (__tmp167088
                           (lambda ()
                             (let ((_%self150621161346%_ _%h161321%_))
                               (declare (not safe))
                               (let ((_%object161349161354%_
                                      (##unchecked-structure-ref
                                       _%self150621161346%_
                                       '1
                                       '#f
                                       'length))
                                     (_%method161350161355%_
                                      (##unchecked-structure-ref
                                       _%self150621161346%_
                                       '6
                                       '#f
                                       'length)))
                                 (_%method161350161355%_
                                  _%object161349161354%_)))))
                          (__tmp167087
                           (lambda ()
                             (let ((_%self152085161358%_ _%l161323%_))
                               (declare (not safe))
                               (let ((_%object161361161366%_
                                      (##unchecked-structure-ref
                                       _%self152085161358%_
                                       '1
                                       '#f
                                       'read-unlock!))
                                     (_%method161362161367%_
                                      (##unchecked-structure-ref
                                       _%self152085161358%_
                                       '3
                                       '#f
                                       'read-unlock!)))
                                 (_%method161362161367%_
                                  _%object161361161366%_))))))
                      (declare (not safe))
                      (##dynamic-wind __tmp167089 __tmp167088 __tmp167087)))
                   (_%val161330%_ _%$%g161325161327%_))
              (if (fixnum? _%val161330%_)
                  _%val161330%_
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/hash
                     'contract:
                     '(fixnum? val)
                     'value:
                     _%val161330%_)
                    '#!void)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length153211%_
       '#f))
    (define _%locked-hash-table::HashTable::copy153213%_
      (lambda (_%self161129%_)
        (let ((_%self161133%_ _%self161129%_))
          (let ((_%h161143%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self161133%_ '1 '#f '#f)))
                (_%l161145%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self161133%_ '2 '#f '#f))))
            (let ((__tmp167090
                   (let ((__tmp167093
                          (lambda ()
                            (let ((_%self151841161149%_ _%l161145%_))
                              (declare (not safe))
                              (let ((_%object161152161157%_
                                     (##unchecked-structure-ref
                                      _%self151841161149%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method161153161158%_
                                     (##unchecked-structure-ref
                                      _%self151841161149%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method161153161158%_
                                 _%object161152161157%_)))))
                         (__tmp167092
                          (lambda ()
                            (let ((_%self149889161161%_ _%h161143%_))
                              (declare (not safe))
                              (let ((_%object161164161169%_
                                     (##unchecked-structure-ref
                                      _%self149889161161%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method161165161170%_
                                     (##unchecked-structure-ref
                                      _%self149889161161%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method161165161170%_
                                 _%object161164161169%_)))))
                         (__tmp167091
                          (lambda ()
                            (let ((_%self152085161173%_ _%l161145%_))
                              (declare (not safe))
                              (let ((_%object161176161181%_
                                     (##unchecked-structure-ref
                                      _%self152085161173%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method161177161182%_
                                     (##unchecked-structure-ref
                                      _%self152085161173%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method161177161182%_
                                 _%object161176161181%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp167093 __tmp167092 __tmp167091))))
              (declare (not safe))
              (cast HashTable::interface __tmp167090))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy153213%_
       '#f))
    (define _%locked-hash-table::HashTable::new153215%_
      (lambda (_%self160931%_ _%size-hint160933%_)
        (let ((_%self160936%_ _%self160931%_))
          (if (or (not _%size-hint160933%_) (fixnum? _%size-hint160933%_))
              (let ((_%size-hint160952%_ _%size-hint160933%_))
                (let ((_%h160962%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self160936%_
                          '1
                          '#f
                          '#f)))
                      (_%l160964%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self160936%_
                          '2
                          '#f
                          '#f))))
                  (let ((__tmp167094
                         (let ((__tmp167097
                                (lambda ()
                                  (let ((_%self151841160968%_ _%l160964%_))
                                    (declare (not safe))
                                    (let ((_%object160971160976%_
                                           (##unchecked-structure-ref
                                            _%self151841160968%_
                                            '1
                                            '#f
                                            'read-lock!))
                                          (_%method160972160977%_
                                           (##unchecked-structure-ref
                                            _%self151841160968%_
                                            '2
                                            '#f
                                            'read-lock!)))
                                      (_%method160972160977%_
                                       _%object160971160976%_)))))
                               (__tmp167096
                                (lambda ()
                                  (let* ((_%self150865160980%_ _%h160962%_)
                                         (_%size-hint160983%_
                                          _%size-hint160952%_))
                                    (declare (not safe))
                                    (let ((_%object160986160991%_
                                           (##unchecked-structure-ref
                                            _%self150865160980%_
                                            '1
                                            '#f
                                            'new))
                                          (_%method160987160992%_
                                           (##unchecked-structure-ref
                                            _%self150865160980%_
                                            '7
                                            '#f
                                            'new)))
                                      (_%method160987160992%_
                                       _%object160986160991%_
                                       _%size-hint160983%_)))))
                               (__tmp167095
                                (lambda ()
                                  (let ((_%self152085160995%_ _%l160964%_))
                                    (declare (not safe))
                                    (let ((_%object160998161003%_
                                           (##unchecked-structure-ref
                                            _%self152085160995%_
                                            '1
                                            '#f
                                            'read-unlock!))
                                          (_%method160999161004%_
                                           (##unchecked-structure-ref
                                            _%self152085160995%_
                                            '3
                                            '#f
                                            'read-unlock!)))
                                      (_%method160999161004%_
                                       _%object160998161003%_))))))
                           (declare (not safe))
                           (##dynamic-wind
                            __tmp167097
                            __tmp167096
                            __tmp167095))))
                    (declare (not safe))
                    (cast HashTable::interface __tmp167094))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@309.29-309.38"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint160933%_)
                '#!void)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::new
       _%locked-hash-table::HashTable::new153215%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!153217%_
      (lambda (_%self160753%_)
        (let ((_%self160757%_ _%self160753%_))
          (let ((_%h160767%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self160757%_ '1 '#f '#f)))
                (_%l160769%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self160757%_ '2 '#f '#f))))
            (let ((__tmp167100
                   (lambda ()
                     (let ((_%self152329160773%_ _%l160769%_))
                       (declare (not safe))
                       (let ((_%object160776160781%_
                              (##unchecked-structure-ref
                               _%self152329160773%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method160777160782%_
                              (##unchecked-structure-ref
                               _%self152329160773%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method160777160782%_ _%object160776160781%_)))))
                  (__tmp167099
                   (lambda ()
                     (let ((_%self149644160785%_ _%h160767%_))
                       (declare (not safe))
                       (let ((_%object160788160793%_
                              (##unchecked-structure-ref
                               _%self149644160785%_
                               '1
                               '#f
                               'clear!))
                             (_%method160789160794%_
                              (##unchecked-structure-ref
                               _%self149644160785%_
                               '2
                               '#f
                               'clear!)))
                         (_%method160789160794%_ _%object160788160793%_)))))
                  (__tmp167098
                   (lambda ()
                     (let ((_%self152573160797%_ _%l160769%_))
                       (declare (not safe))
                       (let ((_%object160800160805%_
                              (##unchecked-structure-ref
                               _%self152573160797%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method160801160806%_
                              (##unchecked-structure-ref
                               _%self152573160797%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method160801160806%_ _%object160800160805%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp167100 __tmp167099 __tmp167098))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!153217%_
       '#f))
    (let* ((_%klass160593%_ (macro-type-mutex))
           (_%id160596%_ 'Locker::read-lock!)
           (_%proc160599%_ mutex-lock!)
           (_%rebind?160602%_ '#f)
           (_%id160607%_ _%id160596%_)
           (_%proc160620%_ _%proc160599%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160593%_
       _%id160607%_
       _%proc160620%_
       _%rebind?160602%_))
    (let* ((_%klass160556%_ (macro-type-mutex))
           (_%id160559%_ 'Locker::read-unlock!)
           (_%proc160562%_ mutex-unlock!)
           (_%rebind?160565%_ '#f)
           (_%id160570%_ _%id160559%_)
           (_%proc160583%_ _%proc160562%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160556%_
       _%id160570%_
       _%proc160583%_
       _%rebind?160565%_))
    (let* ((_%klass160519%_ (macro-type-mutex))
           (_%id160522%_ 'Locker::write-lock!)
           (_%proc160525%_ mutex-lock!)
           (_%rebind?160528%_ '#f)
           (_%id160533%_ _%id160522%_)
           (_%proc160546%_ _%proc160525%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160519%_
       _%id160533%_
       _%proc160546%_
       _%rebind?160528%_))
    (let* ((_%klass160482%_ (macro-type-mutex))
           (_%id160485%_ 'Locker::write-unlock!)
           (_%proc160488%_ mutex-unlock!)
           (_%rebind?160491%_ '#f)
           (_%id160496%_ _%id160485%_)
           (_%proc160509%_ _%proc160488%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass160482%_
       _%id160496%_
       _%proc160509%_
       _%rebind?160491%_))
    (define _%checked-hash-table::HashTable::ref153428%_
      (lambda (_%self160423%_ _%key160424%_ _%default160425%_)
        (let* ((_%self160428%_ _%self160423%_)
               (_%key160437%_ _%key160424%_)
               (_%default160445%_ _%default160425%_))
          (declare (not safe))
          (let ((_%h160456%_
                 (##unchecked-structure-ref _%self160428%_ '1 '#f '#f))
                (_%key?160458%_
                 (##unchecked-structure-ref _%self160428%_ '2 '#f '#f)))
            (if (_%key?160458%_ _%key160437%_)
                (let* ((_%self151109160465%_ _%h160456%_)
                       (_%key160468%_ _%key160437%_)
                       (_%default160471%_ _%default160445%_))
                  (declare (not safe))
                  (let ((_%object160474160479%_
                         (##unchecked-structure-ref
                          _%self151109160465%_
                          '1
                          '#f
                          'ref))
                        (_%method160475160480%_
                         (##unchecked-structure-ref
                          _%self151109160465%_
                          '8
                          '#f
                          'ref)))
                    (_%method160475160480%_
                     _%object160474160479%_
                     _%key160468%_
                     _%default160471%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key160437%_ (cons _%default160445%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref153428%_
       '#f))
    (define _%checked-hash-table::HashTable::set!153430%_
      (lambda (_%self160241%_ _%key160242%_ _%value160243%_)
        (let* ((_%self160246%_ _%self160241%_)
               (_%key160255%_ _%key160242%_)
               (_%value160263%_ _%value160243%_))
          (declare (not safe))
          (let ((_%h160274%_
                 (##unchecked-structure-ref _%self160246%_ '1 '#f '#f))
                (_%key?160276%_
                 (##unchecked-structure-ref _%self160246%_ '2 '#f '#f)))
            (if (_%key?160276%_ _%key160255%_)
                (let* ((_%self151353160283%_ _%h160274%_)
                       (_%key160286%_ _%key160255%_)
                       (_%value160289%_ _%value160263%_))
                  (declare (not safe))
                  (let ((_%object160292160297%_
                         (##unchecked-structure-ref
                          _%self151353160283%_
                          '1
                          '#f
                          'set!))
                        (_%method160293160298%_
                         (##unchecked-structure-ref
                          _%self151353160283%_
                          '9
                          '#f
                          'set!)))
                    (_%method160293160298%_
                     _%object160292160297%_
                     _%key160286%_
                     _%value160289%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key160255%_ (cons _%value160263%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!153430%_
       '#f))
    (define _%checked-hash-table::HashTable::update!153432%_
      (lambda (_%self160046%_ _%key160047%_ _%update160048%_ _%default160049%_)
        (let* ((_%self160052%_ _%self160046%_)
               (_%key160061%_ _%key160047%_)
               (_%update160069%_ _%update160048%_)
               (_%default160077%_ _%default160049%_))
          (declare (not safe))
          (let ((_%h160088%_
                 (##unchecked-structure-ref _%self160052%_ '1 '#f '#f))
                (_%key?160090%_
                 (##unchecked-structure-ref _%self160052%_ '2 '#f '#f)))
            (if (_%key?160090%_ _%key160061%_)
                (let* ((_%self151597160098%_ _%h160088%_)
                       (_%key160101%_ _%key160061%_)
                       (_%proc160104%_ _%update160069%_)
                       (_%default160107%_ _%default160077%_))
                  (declare (not safe))
                  (let ((_%object160110160115%_
                         (##unchecked-structure-ref
                          _%self151597160098%_
                          '1
                          '#f
                          'update!))
                        (_%method160111160116%_
                         (##unchecked-structure-ref
                          _%self151597160098%_
                          '10
                          '#f
                          'update!)))
                    (_%method160111160116%_
                     _%object160110160115%_
                     _%key160101%_
                     _%proc160104%_
                     _%default160107%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key160061%_
                         (cons _%update160069%_ (cons _%default160077%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!153432%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!153434%_
      (lambda (_%self159877%_ _%key159878%_)
        (let* ((_%self159881%_ _%self159877%_) (_%key159890%_ _%key159878%_))
          (declare (not safe))
          (let ((_%h159901%_
                 (##unchecked-structure-ref _%self159881%_ '1 '#f '#f))
                (_%key?159903%_
                 (##unchecked-structure-ref _%self159881%_ '2 '#f '#f)))
            (if (_%key?159903%_ _%key159890%_)
                (let* ((_%self150133159909%_ _%h159901%_)
                       (_%key159912%_ _%key159890%_))
                  (declare (not safe))
                  (let ((_%object159915159920%_
                         (##unchecked-structure-ref
                          _%self150133159909%_
                          '1
                          '#f
                          'delete!))
                        (_%method159916159921%_
                         (##unchecked-structure-ref
                          _%self150133159909%_
                          '4
                          '#f
                          'delete!)))
                    (_%method159916159921%_
                     _%object159915159920%_
                     _%key159912%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key159890%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!153434%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each153436%_
      (lambda (_%self159708%_ _%proc159709%_)
        (let* ((_%self159712%_ _%self159708%_) (_%proc159721%_ _%proc159709%_))
          (declare (not safe))
          (let ((_%h159732%_
                 (##unchecked-structure-ref _%self159712%_ '1 '#f '#f))
                (_%key?159734%_
                 (##unchecked-structure-ref _%self159712%_ '2 '#f '#f)))
            (if '#t
                (let* ((_%self150377159740%_ _%h159732%_)
                       (_%proc159743%_ _%proc159721%_))
                  (declare (not safe))
                  (let ((_%object159746159751%_
                         (##unchecked-structure-ref
                          _%self150377159740%_
                          '1
                          '#f
                          'for-each))
                        (_%method159747159752%_
                         (##unchecked-structure-ref
                          _%self150377159740%_
                          '5
                          '#f
                          'for-each)))
                    (_%method159747159752%_
                     _%object159746159751%_
                     _%proc159743%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc159721%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each153436%_
       '#f))
    (define _%checked-hash-table::HashTable::length153438%_
      (lambda (_%self159554%_)
        (let ((_%self159557%_ _%self159554%_))
          (declare (not safe))
          (let ((_%h159569%_
                 (##unchecked-structure-ref _%self159557%_ '1 '#f '#f))
                (_%key?159571%_
                 (##unchecked-structure-ref _%self159557%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self150621159574%_ _%h159569%_))
                  (declare (not safe))
                  (let ((_%object159577159582%_
                         (##unchecked-structure-ref
                          _%self150621159574%_
                          '1
                          '#f
                          'length))
                        (_%method159578159583%_
                         (##unchecked-structure-ref
                          _%self150621159574%_
                          '6
                          '#f
                          'length)))
                    (_%method159578159583%_ _%object159577159582%_)))
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
       _%checked-hash-table::HashTable::length153438%_
       '#f))
    (define _%checked-hash-table::HashTable::copy153440%_
      (lambda (_%self159400%_)
        (let ((_%self159403%_ _%self159400%_))
          (declare (not safe))
          (let ((_%h159415%_
                 (##unchecked-structure-ref _%self159403%_ '1 '#f '#f))
                (_%key?159417%_
                 (##unchecked-structure-ref _%self159403%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self149889159420%_ _%h159415%_))
                  (declare (not safe))
                  (let ((_%object159423159428%_
                         (##unchecked-structure-ref
                          _%self149889159420%_
                          '1
                          '#f
                          'copy))
                        (_%method159424159429%_
                         (##unchecked-structure-ref
                          _%self149889159420%_
                          '3
                          '#f
                          'copy)))
                    (_%method159424159429%_ _%object159423159428%_)))
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
       _%checked-hash-table::HashTable::copy153440%_
       '#f))
    (define _%checked-hash-table::HashTable::new153442%_
      (lambda (_%self159226%_ _%size-hint159227%_)
        (let ((_%self159230%_ _%self159226%_))
          (if (or (not _%size-hint159227%_) (fixnum? _%size-hint159227%_))
              (let ((_%size-hint159246%_ _%size-hint159227%_))
                (declare (not safe))
                (let ((_%h159258%_
                       (##unchecked-structure-ref _%self159230%_ '1 '#f '#f))
                      (_%key?159260%_
                       (##unchecked-structure-ref _%self159230%_ '2 '#f '#f)))
                  (if '#!void
                      (let* ((_%self150865159263%_ _%h159258%_)
                             (_%size-hint159266%_ _%size-hint159246%_))
                        (declare (not safe))
                        (let ((_%object159269159274%_
                               (##unchecked-structure-ref
                                _%self150865159263%_
                                '1
                                '#f
                                'new))
                              (_%method159270159275%_
                               (##unchecked-structure-ref
                                _%self150865159263%_
                                '7
                                '#f
                                'new)))
                          (_%method159270159275%_
                           _%object159269159274%_
                           _%size-hint159266%_)))
                      (begin
                        (raise-contract-violation-error
                         '"invalid key"
                         'context:
                         '&HashTable-new
                         'value:
                         (cons _%size-hint159246%_ '()))
                        '#!void))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@368.35-368.44"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint159227%_)
                '#!void)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::new
       _%checked-hash-table::HashTable::new153442%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!153444%_
      (lambda (_%self159072%_)
        (let ((_%self159075%_ _%self159072%_))
          (declare (not safe))
          (let ((_%h159087%_
                 (##unchecked-structure-ref _%self159075%_ '1 '#f '#f))
                (_%key?159089%_
                 (##unchecked-structure-ref _%self159075%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self149644159092%_ _%h159087%_))
                  (declare (not safe))
                  (let ((_%object159095159100%_
                         (##unchecked-structure-ref
                          _%self149644159092%_
                          '1
                          '#f
                          'clear!))
                        (_%method159096159101%_
                         (##unchecked-structure-ref
                          _%self149644159092%_
                          '2
                          '#f
                          'clear!)))
                    (_%method159096159101%_ _%object159095159100%_)))
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
       _%checked-hash-table::HashTable::clear!153444%_
       '#f))
    (define make-generic-hash-table__%
      (lambda (_%table158921%_
               _%count158922%_
               _%free158923%_
               _%hash158924%_
               _%test158925%_
               _%seed158926%_
               _%lock158927%_)
        (let ((__tmp167101
               (let () (declare (not safe)) (ensure-lock _%lock158927%_))))
          (declare (not safe))
          (##structure
           hash-table::t
           _%table158921%_
           _%count158922%_
           _%free158923%_
           _%hash158924%_
           _%test158925%_
           _%seed158926%_
           __tmp167101))))
    (define make-generic-hash-table__0
      (lambda (_%table158932%_
               _%count158933%_
               _%free158934%_
               _%hash158935%_
               _%test158936%_
               _%seed158937%_)
        (let ((_%lock158939%_ '#f))
          (make-generic-hash-table__%
           _%table158932%_
           _%count158933%_
           _%free158934%_
           _%hash158935%_
           _%test158936%_
           _%seed158937%_
           _%lock158939%_))))
    (define make-generic-hash-table
      (lambda _g167102_
        (let ((_g167103_ (let () (declare (not safe)) (##length _g167102_))))
          (cond ((let () (declare (not safe)) (##fx= _g167103_ 6))
                 (apply make-generic-hash-table__0 _g167102_))
                ((let () (declare (not safe)) (##fx= _g167103_ 7))
                 (apply make-generic-hash-table__% _g167102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-generic-hash-table
                  _g167102_))))))
    (define make-hash-table__%
      (lambda (_%@@keywords158348%_
               _%$%size-hint158338158349%_
               _%$%seed158339158350%_
               _%$%test158340158351%_
               _%$%hash158341158352%_
               _%$%lock158342158353%_
               _%$%check158343158354%_
               _%$%weak-keys158344158355%_
               _%$%weak-values158345158356%_)
        (let* ((_%size-hint158358%_
                (if (eq? _%$%size-hint158338158349%_ absent-value)
                    '#f
                    _%$%size-hint158338158349%_))
               (_%seed158360%_
                (if (eq? _%$%seed158339158350%_ absent-value)
                    '#f
                    _%$%seed158339158350%_))
               (_%test158362%_
                (if (eq? _%$%test158340158351%_ absent-value)
                    equal?
                    _%$%test158340158351%_))
               (_%hash158364%_
                (if (eq? _%$%hash158341158352%_ absent-value)
                    '#f
                    _%$%hash158341158352%_))
               (_%lock158366%_
                (if (eq? _%$%lock158342158353%_ absent-value)
                    '#f
                    _%$%lock158342158353%_))
               (_%check158368%_
                (if (eq? _%$%check158343158354%_ absent-value)
                    '#f
                    _%$%check158343158354%_))
               (_%weak-keys158370%_
                (if (eq? _%$%weak-keys158344158355%_ absent-value)
                    '#f
                    _%$%weak-keys158344158355%_))
               (_%weak-values158372%_
                (if (eq? _%$%weak-values158345158356%_ absent-value)
                    '#f
                    _%$%weak-values158345158356%_)))
          (letrec ((_%table-seed158375%_
                    (lambda ()
                      (if (fixnum? _%seed158360%_)
                          _%seed158360%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock158519%_
                    (lambda (_%ht158894%_)
                      (let ((_%ht158897%_ _%ht158894%_))
                        (if _%lock158366%_
                            (let ((__tmp167104
                                   (let ((__tmp167105
                                          (let ()
                                            (declare (not safe))
                                            (cast Locker::interface
                                                  _%lock158366%_))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht158897%_
                                      __tmp167105))))
                              (declare (not safe))
                              (cast HashTable::interface __tmp167104))
                            _%ht158897%_))))
                   (_%wrap-lock158520%_
                    (lambda (_%ht158882%_)
                      (let ((_%ht158885%_ _%ht158882%_))
                        (_%__wrap-lock158519%_ _%ht158885%_))))
                   (_%__wrap-checked158642%_
                    (lambda (_%ht158869%_ _%implicit158870%_)
                      (let ((_%ht158873%_ _%ht158869%_))
                        (if _%check158368%_
                            (let ((__tmp167106
                                   (let ((__tmp167107
                                          (if (procedure? _%check158368%_)
                                              _%check158368%_
                                              _%implicit158870%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht158873%_
                                      __tmp167107))))
                              (declare (not safe))
                              (cast HashTable::interface __tmp167106))
                            _%ht158873%_))))
                   (_%wrap-checked158643%_
                    (lambda (_%ht158856%_ _%implicit158857%_)
                      (let ((_%ht158860%_ _%ht158856%_))
                        (_%__wrap-checked158642%_
                         _%ht158860%_
                         _%implicit158857%_))))
                   (_%make158644%_
                    (lambda (_%kons158807%_
                             _%key?158808%_
                             _%hash158809%_
                             _%test158810%_)
                      (let* ((_%size158813%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint158358%_)))
                             (_%table158815%_
                              (let ((__tmp167108 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size158813%_ __tmp167108)))
                             (_%ht158817%_
                              (let ((__tmp167109
                                     (_%kons158807%_
                                      _%table158815%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size158813%_ '2))
                                      _%hash158809%_
                                      _%test158810%_
                                      (_%table-seed158375%_)
                                      '#f)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp167109)))
                             (_%ht158839%_
                              (let* ((_%ht158820%_ _%ht158817%_)
                                     (_%ht158824%_ _%ht158820%_))
                                (_%__wrap-lock158519%_ _%ht158824%_)))
                             (_%implicit158842%_ _%key?158808%_)
                             (_%ht158846%_ _%ht158839%_))
                        (_%__wrap-checked158642%_
                         _%ht158846%_
                         _%implicit158842%_))))
                   (_%make-gc-hash-table158645%_
                    (lambda ()
                      (let* ((_%ht158772%_
                              (let ((__tmp167110
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint158358%_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp167110)))
                             (_%ht158790%_
                              (let* ((_%ht158774%_ _%ht158772%_)
                                     (_%ht158778%_ _%ht158774%_))
                                (_%__wrap-lock158519%_ _%ht158778%_)))
                             (_%implicit158793%_ true)
                             (_%ht158797%_ _%ht158790%_))
                        (_%__wrap-checked158642%_
                         _%ht158797%_
                         _%implicit158793%_))))
                   (_%make-gambit-table158646%_
                    (lambda ()
                      (let* ((_%size158715%_
                              (let ((_%$e158712%_ _%size-hint158358%_))
                                (if _%$e158712%_
                                    _%$e158712%_
                                    (macro-absent-obj))))
                             (_%test158720%_
                              (let ((_%$e158717%_ _%test158362%_))
                                (if _%$e158717%_ _%$e158717%_ equal?)))
                             (_%hash158728%_
                              (let ((_%$e158722%_ _%hash158364%_))
                                (if _%$e158722%_
                                    _%$e158722%_
                                    (if (eq? _%test158720%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test158720%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht158730%_
                              (let ((__tmp167111
                                     (make-table
                                      'size:
                                      _%size158715%_
                                      'test:
                                      _%test158720%_
                                      'hash:
                                      _%hash158728%_
                                      'weak-keys:
                                      _%weak-keys158370%_
                                      'weak-values:
                                      _%weak-values158372%_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp167111)))
                             (_%ht158753%_
                              (let* ((_%ht158733%_ _%ht158730%_)
                                     (_%ht158737%_ _%ht158733%_))
                                (_%__wrap-lock158519%_ _%ht158737%_)))
                             (_%implicit158756%_ true)
                             (_%ht158760%_ _%ht158753%_))
                        (_%__wrap-checked158642%_
                         _%ht158760%_
                         _%implicit158756%_)))))
            (if (or _%weak-keys158370%_ _%weak-values158372%_)
                (_%make-gambit-table158646%_)
                (if (and (or (eq? _%test158362%_ eq?)
                             (eq? _%test158362%_ ##eq?))
                         (or (not _%hash158364%_)
                             (eq? _%hash158364%_ eq?-hash)
                             (eq? _%hash158364%_ eq-hash))
                         (not _%seed158360%_))
                    (_%make-gc-hash-table158645%_)
                    (if (and (or (eq? _%test158362%_ eq?)
                                 (eq? _%test158362%_ ##eq?))
                             (or (not _%hash158364%_)
                                 (eq? _%hash158364%_ eq?-hash)
                                 (eq? _%hash158364%_ eq-hash)))
                        (_%make158644%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test158362%_ eqv?)
                                     (eq? _%test158362%_ ##eqv?))
                                 (or (not _%hash158364%_)
                                     (eq? _%hash158364%_ eqv?-hash)
                                     (eq? _%hash158364%_ eqv-hash)))
                            (_%make158644%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test158362%_ eq?)
                                         (eq? _%test158362%_ ##eq?))
                                     (or (eq? _%hash158364%_ symbolic-hash)
                                         (eq? _%hash158364%_ ##symbol-hash)))
                                (_%make158644%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test158362%_ eq?)
                                             (eq? _%test158362%_ ##eq?))
                                         (eq? _%hash158364%_ immediate-hash))
                                    (_%make158644%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test158362%_ equal?)
                                                 (eq? _%test158362%_ ##equal?)
                                                 (eq? _%test158362%_ string=?)
                                                 (eq? _%test158362%_
                                                      ##string=?))
                                             (or (eq? _%hash158364%_
                                                      string-hash)
                                                 (eq? _%hash158364%_
                                                      ##string=?-hash)))
                                        (_%make158644%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test158362%_ equal?)
                                                 (not _%hash158364%_))
                                            (_%make158644%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test158362%_)
                                                (if (procedure? _%hash158364%_)
                                                    (_%make158644%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash158364%_
                                                     _%test158362%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash158364%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test158362%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords158910%_ . _%args158911%_)
        (apply make-hash-table__%
               _%@@keywords158910%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords158910%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords158910%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords158910%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords158910%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords158910%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords158910%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords158910%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords158910%_
                  'weak-values:
                  absent-value))
               _%args158911%_)))
    (define make-hash-table
      (lambda _%$%args158346158917%_
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
               _%$%args158346158917%_)))
    (define make-hash-table-eq
      (lambda _%args158335%_
        (apply make-hash-table 'test: eq? _%args158335%_)))
    (define make-hash-table-eqv
      (lambda _%args158333%_
        (apply make-hash-table 'test: eqv? _%args158333%_)))
    (define make-hash-table-symbolic
      (lambda _%args158331%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args158331%_)))
    (define make-hash-table-string
      (lambda _%args158329%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args158329%_)))
    (define make-hash-table-immediate
      (lambda _%args158327%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args158327%_)))
    (define list->hash-table
      (lambda (_%lst158324%_ . _%args158325%_)
        (list->hash-table!
         _%lst158324%_
         (apply make-hash-table
                'size:
                (length _%lst158324%_)
                _%args158325%_))))
    (define list->hash-table-eq
      (lambda (_%lst158321%_ . _%args158322%_)
        (list->hash-table!
         _%lst158321%_
         (apply make-hash-table-eq
                'size:
                (length _%lst158321%_)
                _%args158322%_))))
    (define list->hash-table-eqv
      (lambda (_%lst158318%_ . _%args158319%_)
        (list->hash-table!
         _%lst158318%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst158318%_)
                _%args158319%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst158315%_ . _%args158316%_)
        (list->hash-table!
         _%lst158315%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst158315%_)
                _%args158316%_))))
    (define list->hash-table-string
      (lambda (_%lst158312%_ . _%args158313%_)
        (list->hash-table!
         _%lst158312%_
         (apply make-hash-table-string
                'size:
                (length _%lst158312%_)
                _%args158313%_))))
    (define list->hash-table-immediate
      (lambda (_%lst158309%_ . _%args158310%_)
        (list->hash-table!
         _%lst158309%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst158309%_)
                _%args158310%_))))
    (define list->hash-table!
      (lambda (_%lst158260%_ _%h158261%_)
        (for-each
         (lambda (_%el158263%_)
           (let* ((_%$%el158264158271%_ _%el158263%_)
                  (_%$%E158266158274%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%$%el158264158271%_
                              '([k . v])))
                     '#!void))
                  (_%$%K158267158297%_
                   (lambda (_%v158277%_ _%k158278%_)
                     (let* ((_%self151353158280%_ _%h158261%_)
                            (_%key158283%_ _%k158278%_)
                            (_%value158286%_ _%v158277%_))
                       (declare (not safe))
                       (let ((_%object158289158294%_
                              (##unchecked-structure-ref
                               _%self151353158280%_
                               '1
                               '#f
                               'set!))
                             (_%method158290158295%_
                              (##unchecked-structure-ref
                               _%self151353158280%_
                               '9
                               '#f
                               'set!)))
                         (_%method158290158295%_
                          _%object158289158294%_
                          _%key158283%_
                          _%value158286%_))))))
             (if (pair? _%$%el158264158271%_)
                 (let ((_%$%hd158268158300%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%el158264158271%_)))
                       (_%$%tl158269158302%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%el158264158271%_))))
                   (let* ((_%k158305%_ _%$%hd158268158300%_)
                          (_%v158307%_ _%$%tl158269158302%_))
                     (_%$%K158267158297%_ _%v158307%_ _%k158305%_)))
                 (_%$%E158266158274%_))))
         _%lst158260%_)
        _%h158261%_))
    (define plist->hash-table
      (lambda (_%lst158257%_ . _%args158258%_)
        (plist->hash-table!
         _%lst158257%_
         (apply make-hash-table
                'size:
                (length _%lst158257%_)
                _%args158258%_))))
    (define plist->hash-table-eq
      (lambda (_%lst158254%_ . _%args158255%_)
        (plist->hash-table!
         _%lst158254%_
         (apply make-hash-table-eq
                'size:
                (length _%lst158254%_)
                _%args158255%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst158251%_ . _%args158252%_)
        (plist->hash-table!
         _%lst158251%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst158251%_)
                _%args158252%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst158248%_ . _%args158249%_)
        (plist->hash-table!
         _%lst158248%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst158248%_)
                _%args158249%_))))
    (define plist->hash-table-string
      (lambda (_%lst158245%_ . _%args158246%_)
        (plist->hash-table!
         _%lst158245%_
         (apply make-hash-table-string
                'size:
                (length _%lst158245%_)
                _%args158246%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst158242%_ . _%args158243%_)
        (plist->hash-table!
         _%lst158242%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst158242%_)
                _%args158243%_))))
    (define plist->hash-table!
      (lambda (_%lst158165%_ _%h158166%_)
        (let _%loop158168%_ ((_%rest158170%_ _%lst158165%_))
          (let* ((_%$%rest158171158183%_ _%rest158170%_)
                 (_%$%else158174158191%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst158165%_)))))
            (let ((_%$%K158177158223%_
                   (lambda (_%rest158202%_ _%val158203%_ _%key158204%_)
                     (let* ((_%self151353158206%_ _%h158166%_)
                            (_%key158209%_ _%key158204%_)
                            (_%value158212%_ _%val158203%_))
                       (declare (not safe))
                       (let ((_%object158215158220%_
                              (##unchecked-structure-ref
                               _%self151353158206%_
                               '1
                               '#f
                               'set!))
                             (_%method158216158221%_
                              (##unchecked-structure-ref
                               _%self151353158206%_
                               '9
                               '#f
                               'set!)))
                         (_%method158216158221%_
                          _%object158215158220%_
                          _%key158209%_
                          _%value158212%_)))
                     (_%loop158168%_ _%rest158202%_)))
                  (_%$%K158176158196%_ (lambda () _%h158166%_)))
              (let ((_%$%try-match158173158199%_
                     (lambda ()
                       (if (null? _%$%rest158171158183%_)
                           (_%$%K158176158196%_)
                           (_%$%else158174158191%_)))))
                (if (pair? _%$%rest158171158183%_)
                    (let ((_%$%tl158179158228%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest158171158183%_)))
                          (_%$%hd158178158226%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest158171158183%_))))
                      (if (pair? _%$%tl158179158228%_)
                          (let ((_%$%tl158181158235%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl158179158228%_)))
                                (_%$%hd158180158233%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl158179158228%_))))
                            (let ((_%key158231%_ _%$%hd158178158226%_)
                                  (_%val158238%_ _%$%hd158180158233%_)
                                  (_%rest158240%_ _%$%tl158181158235%_))
                              (_%$%K158177158223%_
                               _%rest158240%_
                               _%val158238%_
                               _%key158231%_)))
                          (_%$%else158174158191%_)))
                    (_%$%try-match158173158199%_))))))))
    (define __hash-length
      (lambda (_%h158117%_)
        (let* ((_%h158120%_ _%h158117%_)
               (_%self150622158129%_ _%h158120%_)
               (_%self150622158133%_ _%self150622158129%_)
               (_%self150622158135%_ _%self150622158133%_))
          (if __DEBUG
              (let ((_%val158155%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object158147158152%_
                              (##unchecked-structure-ref
                               _%self150622158135%_
                               '1
                               '#f
                               'length))
                             (_%method158148158153%_
                              (##unchecked-structure-ref
                               _%self150622158135%_
                               '6
                               '#f
                               'length)))
                         (_%method158148158153%_ _%object158147158152%_)))))
                (if (fixnum? _%val158155%_)
                    _%val158155%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val158155%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object158157158162%_
                       (##unchecked-structure-ref
                        _%self150622158135%_
                        '1
                        '#f
                        'length))
                      (_%method158158158163%_
                       (##unchecked-structure-ref
                        _%self150622158135%_
                        '6
                        '#f
                        'length)))
                  (_%method158158158163%_ _%object158157158162%_)))))))
    (define hash-length
      (lambda (_%h158102%_)
        (let* ((_%h158105%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h158102%_)))
               (_%h158107%_ _%h158105%_))
          (__hash-length _%h158107%_))))
    (define __hash-ref__%
      (lambda (_%h158033%_ _%key158034%_ _%default158035%_)
        (let* ((_%h158038%_ _%h158033%_)
               (_%result158088%_
                (let* ((_%self151110158047%_ _%h158038%_)
                       (_%key158050%_ _%key158034%_)
                       (_%default158053%_ _%default158035%_)
                       (_%self151110158057%_ _%self151110158047%_)
                       (_%self151110158059%_ _%self151110158057%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object158073158078%_
                               (##unchecked-structure-ref
                                _%self151110158059%_
                                '1
                                '#f
                                'ref))
                              (_%method158074158079%_
                               (##unchecked-structure-ref
                                _%self151110158059%_
                                '8
                                '#f
                                'ref)))
                          (_%method158074158079%_
                           _%object158073158078%_
                           _%key158050%_
                           _%default158053%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object158080158085%_
                               (##unchecked-structure-ref
                                _%self151110158059%_
                                '1
                                '#f
                                'ref))
                              (_%method158081158086%_
                               (##unchecked-structure-ref
                                _%self151110158059%_
                                '8
                                '#f
                                'ref)))
                          (_%method158081158086%_
                           _%object158080158085%_
                           _%key158050%_
                           _%default158053%_)))))))
          (if (eq? _%result158088%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h158038%_
               'key:
               _%key158034%_)
              _%result158088%_))))
    (define __hash-ref__0
      (lambda (_%h158093%_ _%key158094%_)
        (let ((_%default158096%_ absent-obj))
          (__hash-ref__% _%h158093%_ _%key158094%_ _%default158096%_))))
    (define __hash-ref
      (lambda _g167112_
        (let ((_g167113_ (let () (declare (not safe)) (##length _g167112_))))
          (cond ((let () (declare (not safe)) (##fx= _g167113_ 2))
                 (apply __hash-ref__0 _g167112_))
                ((let () (declare (not safe)) (##fx= _g167113_ 3))
                 (apply __hash-ref__% _g167112_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g167112_))))))
    (define hash-ref__%
      (lambda (_%h158003%_ _%key158004%_ _%default158005%_)
        (let* ((_%h158008%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h158003%_)))
               (_%h158010%_ _%h158008%_))
          (__hash-ref__% _%h158010%_ _%key158004%_ _%default158005%_))))
    (define hash-ref__0
      (lambda (_%h158023%_ _%key158024%_)
        (let ((_%default158026%_ absent-obj))
          (hash-ref__% _%h158023%_ _%key158024%_ _%default158026%_))))
    (define hash-ref
      (lambda _g167114_
        (let ((_g167115_ (let () (declare (not safe)) (##length _g167114_))))
          (cond ((let () (declare (not safe)) (##fx= _g167115_ 2))
                 (apply hash-ref__0 _g167114_))
                ((let () (declare (not safe)) (##fx= _g167115_ 3))
                 (apply hash-ref__% _g167114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g167114_))))))
    (define __hash-get
      (lambda (_%h157948%_ _%key157949%_)
        (let* ((_%h157952%_ _%h157948%_)
               (_%self151110157961%_ _%h157952%_)
               (_%key157964%_ _%key157949%_)
               (_%default157967%_ '#f)
               (_%self151110157971%_ _%self151110157961%_)
               (_%self151110157973%_ _%self151110157971%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object157987157992%_
                       (##unchecked-structure-ref
                        _%self151110157973%_
                        '1
                        '#f
                        'ref))
                      (_%method157988157993%_
                       (##unchecked-structure-ref
                        _%self151110157973%_
                        '8
                        '#f
                        'ref)))
                  (_%method157988157993%_
                   _%object157987157992%_
                   _%key157964%_
                   _%default157967%_)))
              (let ()
                (declare (not safe))
                (let ((_%object157994157999%_
                       (##unchecked-structure-ref
                        _%self151110157973%_
                        '1
                        '#f
                        'ref))
                      (_%method157995158000%_
                       (##unchecked-structure-ref
                        _%self151110157973%_
                        '8
                        '#f
                        'ref)))
                  (_%method157995158000%_
                   _%object157994157999%_
                   _%key157964%_
                   _%default157967%_)))))))
    (define hash-get
      (lambda (_%h157932%_ _%key157933%_)
        (let* ((_%h157936%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h157932%_)))
               (_%h157938%_ _%h157936%_))
          (__hash-get _%h157938%_ _%key157933%_))))
    (define __hash-put!
      (lambda (_%h157877%_ _%key157878%_ _%value157879%_)
        (let* ((_%h157882%_ _%h157877%_)
               (_%self151354157891%_ _%h157882%_)
               (_%key157894%_ _%key157878%_)
               (_%value157897%_ _%value157879%_)
               (_%self151354157901%_ _%self151354157891%_)
               (_%self151354157903%_ _%self151354157901%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object157917157922%_
                       (##unchecked-structure-ref
                        _%self151354157903%_
                        '1
                        '#f
                        'set!))
                      (_%method157918157923%_
                       (##unchecked-structure-ref
                        _%self151354157903%_
                        '9
                        '#f
                        'set!)))
                  (_%method157918157923%_
                   _%object157917157922%_
                   _%key157894%_
                   _%value157897%_)))
              (let ()
                (declare (not safe))
                (let ((_%object157924157929%_
                       (##unchecked-structure-ref
                        _%self151354157903%_
                        '1
                        '#f
                        'set!))
                      (_%method157925157930%_
                       (##unchecked-structure-ref
                        _%self151354157903%_
                        '9
                        '#f
                        'set!)))
                  (_%method157925157930%_
                   _%object157924157929%_
                   _%key157894%_
                   _%value157897%_)))))))
    (define hash-put!
      (lambda (_%h157860%_ _%key157861%_ _%value157862%_)
        (let* ((_%h157865%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h157860%_)))
               (_%h157867%_ _%h157865%_))
          (__hash-put! _%h157867%_ _%key157861%_ _%value157862%_))))
    (define __hash-update!__%
      (lambda (_%h157776%_ _%key157777%_ _%update157778%_ _%default157779%_)
        (let* ((_%h157782%_ _%h157776%_)
               (_%self151598157791%_ _%h157782%_)
               (_%key157794%_ _%key157777%_)
               (_%proc157797%_ _%update157778%_)
               (_%default157800%_ _%default157779%_)
               (_%self151598157804%_ _%self151598157791%_)
               (_%self151598157806%_ _%self151598157804%_))
          (if (procedure? _%proc157797%_)
              (let ((_%proc157822%_ _%proc157797%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object157831157836%_
                             (##unchecked-structure-ref
                              _%self151598157806%_
                              '1
                              '#f
                              'update!))
                            (_%method157832157837%_
                             (##unchecked-structure-ref
                              _%self151598157806%_
                              '10
                              '#f
                              'update!)))
                        (_%method157832157837%_
                         _%object157831157836%_
                         _%key157794%_
                         _%proc157822%_
                         _%default157800%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object157838157843%_
                             (##unchecked-structure-ref
                              _%self151598157806%_
                              '1
                              '#f
                              'update!))
                            (_%method157839157844%_
                             (##unchecked-structure-ref
                              _%self151598157806%_
                              '10
                              '#f
                              'update!)))
                        (_%method157839157844%_
                         _%object157838157843%_
                         _%key157794%_
                         _%proc157822%_
                         _%default157800%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc157797%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h157849%_ _%key157850%_ _%update157851%_)
        (let ((_%default157853%_ '#!void))
          (__hash-update!__%
           _%h157849%_
           _%key157850%_
           _%update157851%_
           _%default157853%_))))
    (define __hash-update!
      (lambda _g167116_
        (let ((_g167117_ (let () (declare (not safe)) (##length _g167116_))))
          (cond ((let () (declare (not safe)) (##fx= _g167117_ 3))
                 (apply __hash-update!__0 _g167116_))
                ((let () (declare (not safe)) (##fx= _g167117_ 4))
                 (apply __hash-update!__% _g167116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g167116_))))))
    (define hash-update!__%
      (lambda (_%h157743%_ _%key157744%_ _%update157745%_ _%default157746%_)
        (let* ((_%h157749%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h157743%_)))
               (_%h157751%_ _%h157749%_))
          (__hash-update!__%
           _%h157751%_
           _%key157744%_
           _%update157745%_
           _%default157746%_))))
    (define hash-update!__0
      (lambda (_%h157764%_ _%key157765%_ _%update157766%_)
        (let ((_%default157768%_ '#!void))
          (hash-update!__%
           _%h157764%_
           _%key157765%_
           _%update157766%_
           _%default157768%_))))
    (define hash-update!
      (lambda _g167118_
        (let ((_g167119_ (let () (declare (not safe)) (##length _g167118_))))
          (cond ((let () (declare (not safe)) (##fx= _g167119_ 3))
                 (apply hash-update!__0 _g167118_))
                ((let () (declare (not safe)) (##fx= _g167119_ 4))
                 (apply hash-update!__% _g167118_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g167118_))))))
    (define __hash-remove!
      (lambda (_%h157692%_ _%key157693%_)
        (let* ((_%h157696%_ _%h157692%_)
               (_%self150134157705%_ _%h157696%_)
               (_%key157708%_ _%key157693%_)
               (_%self150134157712%_ _%self150134157705%_)
               (_%self150134157714%_ _%self150134157712%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object157727157732%_
                       (##unchecked-structure-ref
                        _%self150134157714%_
                        '1
                        '#f
                        'delete!))
                      (_%method157728157733%_
                       (##unchecked-structure-ref
                        _%self150134157714%_
                        '4
                        '#f
                        'delete!)))
                  (_%method157728157733%_
                   _%object157727157732%_
                   _%key157708%_)))
              (let ()
                (declare (not safe))
                (let ((_%object157734157739%_
                       (##unchecked-structure-ref
                        _%self150134157714%_
                        '1
                        '#f
                        'delete!))
                      (_%method157735157740%_
                       (##unchecked-structure-ref
                        _%self150134157714%_
                        '4
                        '#f
                        'delete!)))
                  (_%method157735157740%_
                   _%object157734157739%_
                   _%key157708%_)))))))
    (define hash-remove!
      (lambda (_%h157676%_ _%key157677%_)
        (let* ((_%h157680%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h157676%_)))
               (_%h157682%_ _%h157680%_))
          (__hash-remove! _%h157682%_ _%key157677%_))))
    (define __hash-key?
      (lambda (_%h157622%_ _%k157623%_)
        (let ((_%h157626%_ _%h157622%_))
          (not (eq? (let* ((_%self151110157635%_ _%h157626%_)
                           (_%key157638%_ _%k157623%_)
                           (_%default157641%_ absent-value)
                           (_%self151110157645%_ _%self151110157635%_)
                           (_%self151110157647%_ _%self151110157645%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object157661157666%_
                                   (##unchecked-structure-ref
                                    _%self151110157647%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method157662157667%_
                                   (##unchecked-structure-ref
                                    _%self151110157647%_
                                    '8
                                    '#f
                                    'ref)))
                              (_%method157662157667%_
                               _%object157661157666%_
                               _%key157638%_
                               _%default157641%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object157668157673%_
                                   (##unchecked-structure-ref
                                    _%self151110157647%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method157669157674%_
                                   (##unchecked-structure-ref
                                    _%self151110157647%_
                                    '8
                                    '#f
                                    'ref)))
                              (_%method157669157674%_
                               _%object157668157673%_
                               _%key157638%_
                               _%default157641%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h157606%_ _%k157607%_)
        (let* ((_%h157610%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h157606%_)))
               (_%h157612%_ _%h157610%_))
          (__hash-key? _%h157612%_ _%k157607%_))))
    (define __hash->list
      (lambda (_%h157541%_)
        (let* ((_%h157544%_ _%h157541%_) (_%lst157553%_ '()))
          (let* ((_%self150378157555%_ _%h157544%_)
                 (_%proc157561%_
                  (lambda (_%k157558%_ _%v157559%_)
                    (set! _%lst157553%_
                          (cons (cons _%k157558%_ _%v157559%_)
                                _%lst157553%_))))
                 (_%self150378157565%_ _%self150378157555%_)
                 (_%self150378157567%_ _%self150378157565%_)
                 (_%proc157582%_ _%proc157561%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object157591157596%_
                         (##unchecked-structure-ref
                          _%self150378157567%_
                          '1
                          '#f
                          'for-each))
                        (_%method157592157597%_
                         (##unchecked-structure-ref
                          _%self150378157567%_
                          '5
                          '#f
                          'for-each)))
                    (_%method157592157597%_
                     _%object157591157596%_
                     _%proc157582%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object157598157603%_
                         (##unchecked-structure-ref
                          _%self150378157567%_
                          '1
                          '#f
                          'for-each))
                        (_%method157599157604%_
                         (##unchecked-structure-ref
                          _%self150378157567%_
                          '5
                          '#f
                          'for-each)))
                    (_%method157599157604%_
                     _%object157598157603%_
                     _%proc157582%_)))))
          _%lst157553%_)))
    (define hash->list
      (lambda (_%h157526%_)
        (let* ((_%h157529%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h157526%_)))
               (_%h157531%_ _%h157529%_))
          (__hash->list _%h157531%_))))
    (define __hash->plist
      (lambda (_%h157461%_)
        (let* ((_%h157464%_ _%h157461%_) (_%lst157473%_ '()))
          (let* ((_%self150378157475%_ _%h157464%_)
                 (_%proc157481%_
                  (lambda (_%k157478%_ _%v157479%_)
                    (set! _%lst157473%_
                          (cons _%k157478%_
                                (cons _%v157479%_ _%lst157473%_)))))
                 (_%self150378157485%_ _%self150378157475%_)
                 (_%self150378157487%_ _%self150378157485%_)
                 (_%proc157502%_ _%proc157481%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object157511157516%_
                         (##unchecked-structure-ref
                          _%self150378157487%_
                          '1
                          '#f
                          'for-each))
                        (_%method157512157517%_
                         (##unchecked-structure-ref
                          _%self150378157487%_
                          '5
                          '#f
                          'for-each)))
                    (_%method157512157517%_
                     _%object157511157516%_
                     _%proc157502%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object157518157523%_
                         (##unchecked-structure-ref
                          _%self150378157487%_
                          '1
                          '#f
                          'for-each))
                        (_%method157519157524%_
                         (##unchecked-structure-ref
                          _%self150378157487%_
                          '5
                          '#f
                          'for-each)))
                    (_%method157519157524%_
                     _%object157518157523%_
                     _%proc157502%_)))))
          _%lst157473%_)))
    (define hash->plist
      (lambda (_%h157446%_)
        (let* ((_%h157449%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h157446%_)))
               (_%h157451%_ _%h157449%_))
          (__hash->plist _%h157451%_))))
    (define __hash-for-each
      (lambda (_%proc157378%_ _%h157379%_)
        (let* ((_%proc157382%_ _%proc157378%_)
               (_%h157390%_ _%h157379%_)
               (_%self150378157399%_ _%h157390%_)
               (_%proc157402%_ _%proc157382%_)
               (_%self150378157406%_ _%self150378157399%_)
               (_%self150378157408%_ _%self150378157406%_)
               (_%proc157422%_ _%proc157402%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object157431157436%_
                       (##unchecked-structure-ref
                        _%self150378157408%_
                        '1
                        '#f
                        'for-each))
                      (_%method157432157437%_
                       (##unchecked-structure-ref
                        _%self150378157408%_
                        '5
                        '#f
                        'for-each)))
                  (_%method157432157437%_
                   _%object157431157436%_
                   _%proc157422%_)))
              (let ()
                (declare (not safe))
                (let ((_%object157438157443%_
                       (##unchecked-structure-ref
                        _%self150378157408%_
                        '1
                        '#f
                        'for-each))
                      (_%method157439157444%_
                       (##unchecked-structure-ref
                        _%self150378157408%_
                        '5
                        '#f
                        'for-each)))
                  (_%method157439157444%_
                   _%object157438157443%_
                   _%proc157422%_)))))))
    (define hash-for-each
      (lambda (_%proc157352%_ _%h157353%_)
        (if (procedure? _%proc157352%_)
            (let* ((_%proc157357%_ _%proc157352%_)
                   (_%h157366%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h157353%_)))
                   (_%h157368%_ _%h157366%_))
              (__hash-for-each _%proc157357%_ _%h157368%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@594.22-594.26"
               'contract:
               'procedure?
               'value:
               _%proc157352%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc157278%_ _%h157279%_)
        (let* ((_%proc157282%_ _%proc157278%_)
               (_%h157290%_ _%h157279%_)
               (_%result157299%_ '()))
          (let* ((_%self150378157301%_ _%h157290%_)
                 (_%proc157307%_
                  (lambda (_%k157304%_ _%v157305%_)
                    (set! _%result157299%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc157282%_ _%k157304%_ _%v157305%_))
                                _%result157299%_))))
                 (_%self150378157311%_ _%self150378157301%_)
                 (_%self150378157313%_ _%self150378157311%_)
                 (_%proc157328%_ _%proc157307%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object157337157342%_
                         (##unchecked-structure-ref
                          _%self150378157313%_
                          '1
                          '#f
                          'for-each))
                        (_%method157338157343%_
                         (##unchecked-structure-ref
                          _%self150378157313%_
                          '5
                          '#f
                          'for-each)))
                    (_%method157338157343%_
                     _%object157337157342%_
                     _%proc157328%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object157344157349%_
                         (##unchecked-structure-ref
                          _%self150378157313%_
                          '1
                          '#f
                          'for-each))
                        (_%method157345157350%_
                         (##unchecked-structure-ref
                          _%self150378157313%_
                          '5
                          '#f
                          'for-each)))
                    (_%method157345157350%_
                     _%object157344157349%_
                     _%proc157328%_)))))
          _%result157299%_)))
    (define hash-map
      (lambda (_%proc157252%_ _%h157253%_)
        (if (procedure? _%proc157252%_)
            (let* ((_%proc157257%_ _%proc157252%_)
                   (_%h157266%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h157253%_)))
                   (_%h157268%_ _%h157266%_))
              (__hash-map _%proc157257%_ _%h157268%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@597.17-597.21"
               'contract:
               'procedure?
               'value:
               _%proc157252%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc157177%_ _%iv157178%_ _%h157179%_)
        (let* ((_%proc157182%_ _%proc157177%_)
               (_%h157190%_ _%h157179%_)
               (_%result157199%_ _%iv157178%_))
          (let* ((_%self150378157201%_ _%h157190%_)
                 (_%proc157207%_
                  (lambda (_%k157204%_ _%v157205%_)
                    (set! _%result157199%_
                          (let ()
                            (declare (not safe))
                            (_%proc157182%_
                             _%k157204%_
                             _%v157205%_
                             _%result157199%_)))))
                 (_%self150378157211%_ _%self150378157201%_)
                 (_%self150378157213%_ _%self150378157211%_)
                 (_%proc157228%_ _%proc157207%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object157237157242%_
                         (##unchecked-structure-ref
                          _%self150378157213%_
                          '1
                          '#f
                          'for-each))
                        (_%method157238157243%_
                         (##unchecked-structure-ref
                          _%self150378157213%_
                          '5
                          '#f
                          'for-each)))
                    (_%method157238157243%_
                     _%object157237157242%_
                     _%proc157228%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object157244157249%_
                         (##unchecked-structure-ref
                          _%self150378157213%_
                          '1
                          '#f
                          'for-each))
                        (_%method157245157250%_
                         (##unchecked-structure-ref
                          _%self150378157213%_
                          '5
                          '#f
                          'for-each)))
                    (_%method157245157250%_
                     _%object157244157249%_
                     _%proc157228%_)))))
          _%result157199%_)))
    (define hash-fold
      (lambda (_%proc157150%_ _%iv157151%_ _%h157152%_)
        (if (procedure? _%proc157150%_)
            (let* ((_%proc157156%_ _%proc157150%_)
                   (_%h157165%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h157152%_)))
                   (_%h157167%_ _%h157165%_))
              (__hash-fold _%proc157156%_ _%iv157151%_ _%h157167%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc157150%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc157060%_ _%h157061%_ _%default-value157062%_)
        (let* ((_%proc157065%_ _%proc157060%_)
               (_%h157073%_ _%h157061%_)
               (__tmp167120
                (lambda (_%return157082%_)
                  (let* ((_%self150378157084%_ _%h157073%_)
                         (_%proc157093%_
                          (lambda (_%k157087%_ _%v157088%_)
                            (let ((_%$e157090%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc157065%_
                                      _%k157087%_
                                      _%v157088%_))))
                              (if _%$e157090%_
                                  (_%return157082%_ _%$e157090%_)
                                  '#!void))))
                         (_%self150378157097%_ _%self150378157084%_)
                         (_%self150378157099%_ _%self150378157097%_)
                         (_%proc157114%_ _%proc157093%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object157123157128%_
                                 (##unchecked-structure-ref
                                  _%self150378157099%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method157124157129%_
                                 (##unchecked-structure-ref
                                  _%self150378157099%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method157124157129%_
                             _%object157123157128%_
                             _%proc157114%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object157130157135%_
                                 (##unchecked-structure-ref
                                  _%self150378157099%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method157131157136%_
                                 (##unchecked-structure-ref
                                  _%self150378157099%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method157131157136%_
                             _%object157130157135%_
                             _%proc157114%_)))))
                  _%default-value157062%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp167120))))
    (define __hash-find__0
      (lambda (_%proc157141%_ _%h157142%_)
        (let ((_%default-value157144%_ '#f))
          (__hash-find__%
           _%proc157141%_
           _%h157142%_
           _%default-value157144%_))))
    (define __hash-find
      (lambda _g167121_
        (let ((_g167122_ (let () (declare (not safe)) (##length _g167121_))))
          (cond ((let () (declare (not safe)) (##fx= _g167122_ 2))
                 (apply __hash-find__0 _g167121_))
                ((let () (declare (not safe)) (##fx= _g167122_ 3))
                 (apply __hash-find__% _g167121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g167121_))))))
    (define hash-find__%
      (lambda (_%proc157020%_ _%h157021%_ _%default-value157022%_)
        (if (procedure? _%proc157020%_)
            (let* ((_%proc157026%_ _%proc157020%_)
                   (_%h157035%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h157021%_)))
                   (_%h157037%_ _%h157035%_))
              (__hash-find__%
               _%proc157026%_
               _%h157037%_
               _%default-value157022%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@608.18-608.22"
               'contract:
               'procedure?
               'value:
               _%proc157020%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc157050%_ _%h157051%_)
        (let ((_%default-value157053%_ '#f))
          (hash-find__% _%proc157050%_ _%h157051%_ _%default-value157053%_))))
    (define hash-find
      (lambda _g167123_
        (let ((_g167124_ (let () (declare (not safe)) (##length _g167123_))))
          (cond ((let () (declare (not safe)) (##fx= _g167124_ 2))
                 (apply hash-find__0 _g167123_))
                ((let () (declare (not safe)) (##fx= _g167124_ 3))
                 (apply hash-find__% _g167123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g167123_))))))
    (define __hash-keys
      (lambda (_%h156954%_)
        (let* ((_%h156957%_ _%h156954%_) (_%result156966%_ '()))
          (let* ((_%self150378156968%_ _%h156957%_)
                 (_%proc156974%_
                  (lambda (_%k156971%_ _%v156972%_)
                    (set! _%result156966%_
                          (cons _%k156971%_ _%result156966%_))))
                 (_%self150378156978%_ _%self150378156968%_)
                 (_%self150378156980%_ _%self150378156978%_)
                 (_%proc156995%_ _%proc156974%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object157004157009%_
                         (##unchecked-structure-ref
                          _%self150378156980%_
                          '1
                          '#f
                          'for-each))
                        (_%method157005157010%_
                         (##unchecked-structure-ref
                          _%self150378156980%_
                          '5
                          '#f
                          'for-each)))
                    (_%method157005157010%_
                     _%object157004157009%_
                     _%proc156995%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object157011157016%_
                         (##unchecked-structure-ref
                          _%self150378156980%_
                          '1
                          '#f
                          'for-each))
                        (_%method157012157017%_
                         (##unchecked-structure-ref
                          _%self150378156980%_
                          '5
                          '#f
                          'for-each)))
                    (_%method157012157017%_
                     _%object157011157016%_
                     _%proc156995%_)))))
          _%result156966%_)))
    (define hash-keys
      (lambda (_%h156939%_)
        (let* ((_%h156942%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h156939%_)))
               (_%h156944%_ _%h156942%_))
          (__hash-keys _%h156944%_))))
    (define __hash-values
      (lambda (_%h156874%_)
        (let* ((_%h156877%_ _%h156874%_) (_%result156886%_ '()))
          (let* ((_%self150378156888%_ _%h156877%_)
                 (_%proc156894%_
                  (lambda (_%k156891%_ _%v156892%_)
                    (set! _%result156886%_
                          (cons _%v156892%_ _%result156886%_))))
                 (_%self150378156898%_ _%self150378156888%_)
                 (_%self150378156900%_ _%self150378156898%_)
                 (_%proc156915%_ _%proc156894%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object156924156929%_
                         (##unchecked-structure-ref
                          _%self150378156900%_
                          '1
                          '#f
                          'for-each))
                        (_%method156925156930%_
                         (##unchecked-structure-ref
                          _%self150378156900%_
                          '5
                          '#f
                          'for-each)))
                    (_%method156925156930%_
                     _%object156924156929%_
                     _%proc156915%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object156931156936%_
                         (##unchecked-structure-ref
                          _%self150378156900%_
                          '1
                          '#f
                          'for-each))
                        (_%method156932156937%_
                         (##unchecked-structure-ref
                          _%self150378156900%_
                          '5
                          '#f
                          'for-each)))
                    (_%method156932156937%_
                     _%object156931156936%_
                     _%proc156915%_)))))
          _%result156886%_)))
    (define hash-values
      (lambda (_%h156859%_)
        (let* ((_%h156862%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h156859%_)))
               (_%h156864%_ _%h156862%_))
          (__hash-values _%h156864%_))))
    (define __hash-copy
      (lambda (_%h156814%_)
        (let* ((_%h156817%_ _%h156814%_)
               (_%self149890156826%_ _%h156817%_)
               (_%self149890156830%_ _%self149890156826%_)
               (_%self149890156832%_ _%self149890156830%_))
          (if __DEBUG
              (let ((__tmp167125
                     (let ()
                       (declare (not safe))
                       (let ((_%object156844156849%_
                              (##unchecked-structure-ref
                               _%self149890156832%_
                               '1
                               '#f
                               'copy))
                             (_%method156845156850%_
                              (##unchecked-structure-ref
                               _%self149890156832%_
                               '3
                               '#f
                               'copy)))
                         (_%method156845156850%_ _%object156844156849%_)))))
                (declare (not safe))
                (cast HashTable::interface __tmp167125))
              (let ()
                (declare (not safe))
                (let ((_%object156851156856%_
                       (##unchecked-structure-ref
                        _%self149890156832%_
                        '1
                        '#f
                        'copy))
                      (_%method156852156857%_
                       (##unchecked-structure-ref
                        _%self149890156832%_
                        '3
                        '#f
                        'copy)))
                  (_%method156852156857%_ _%object156851156856%_)))))))
    (define hash-copy
      (lambda (_%h156799%_)
        (let* ((_%h156802%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h156799%_)))
               (_%h156804%_ _%h156802%_))
          (__hash-copy _%h156804%_))))
    (define __hash-new
      (lambda (_%h156734%_)
        (let* ((_%h156737%_ _%h156734%_)
               (_%self150866156746%_ _%h156737%_)
               (_%size-hint156749%_ '#f)
               (_%self150866156753%_ _%self150866156746%_)
               (_%self150866156755%_ _%self150866156753%_))
          (if (let ((_%$e156771%_ '#t)) (and _%$e156771%_ _%$e156771%_))
              (let ((_%size-hint156775%_ _%size-hint156749%_))
                (if __DEBUG
                    (let ((__tmp167126
                           (let ()
                             (declare (not safe))
                             (let ((_%object156784156789%_
                                    (##unchecked-structure-ref
                                     _%self150866156755%_
                                     '1
                                     '#f
                                     'new))
                                   (_%method156785156790%_
                                    (##unchecked-structure-ref
                                     _%self150866156755%_
                                     '7
                                     '#f
                                     'new)))
                               (_%method156785156790%_
                                _%object156784156789%_
                                _%size-hint156775%_)))))
                      (declare (not safe))
                      (cast HashTable::interface __tmp167126))
                    (let ()
                      (declare (not safe))
                      (let ((_%object156791156796%_
                             (##unchecked-structure-ref
                              _%self150866156755%_
                              '1
                              '#f
                              'new))
                            (_%method156792156797%_
                             (##unchecked-structure-ref
                              _%self150866156755%_
                              '7
                              '#f
                              'new)))
                        (_%method156792156797%_
                         _%object156791156796%_
                         _%size-hint156775%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint156749%_)
                '#!void)))))
    (define hash-new
      (lambda (_%h156719%_)
        (let* ((_%h156722%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h156719%_)))
               (_%h156724%_ _%h156722%_))
          (__hash-new _%h156724%_))))
    (define __hash-clear!
      (lambda (_%h156674%_)
        (let* ((_%h156677%_ _%h156674%_)
               (_%self149645156686%_ _%h156677%_)
               (_%self149645156690%_ _%self149645156686%_)
               (_%self149645156692%_ _%self149645156690%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object156704156709%_
                       (##unchecked-structure-ref
                        _%self149645156692%_
                        '1
                        '#f
                        'clear!))
                      (_%method156705156710%_
                       (##unchecked-structure-ref
                        _%self149645156692%_
                        '2
                        '#f
                        'clear!)))
                  (_%method156705156710%_ _%object156704156709%_)))
              (let ()
                (declare (not safe))
                (let ((_%object156711156716%_
                       (##unchecked-structure-ref
                        _%self149645156692%_
                        '1
                        '#f
                        'clear!))
                      (_%method156712156717%_
                       (##unchecked-structure-ref
                        _%self149645156692%_
                        '2
                        '#f
                        'clear!)))
                  (_%method156712156717%_ _%object156711156716%_)))))))
    (define hash-clear!
      (lambda (_%h156659%_)
        (let* ((_%h156662%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h156659%_)))
               (_%h156664%_ _%h156662%_))
          (__hash-clear! _%h156664%_))))
    (define __hash-merge
      (lambda (_%h156611%_ . _%rest156612%_)
        (let* ((_%h156615%_ _%h156611%_)
               (_%copy156657%_
                (let* ((_%self149890156624%_ _%h156615%_)
                       (_%self149890156628%_ _%self149890156624%_)
                       (_%self149890156630%_ _%self149890156628%_))
                  (if __DEBUG
                      (let ((__tmp167127
                             (let ()
                               (declare (not safe))
                               (let ((_%object156642156647%_
                                      (##unchecked-structure-ref
                                       _%self149890156630%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method156643156648%_
                                      (##unchecked-structure-ref
                                       _%self149890156630%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method156643156648%_
                                  _%object156642156647%_)))))
                        (declare (not safe))
                        (cast HashTable::interface __tmp167127))
                      (let ()
                        (declare (not safe))
                        (let ((_%object156649156654%_
                               (##unchecked-structure-ref
                                _%self149890156630%_
                                '1
                                '#f
                                'copy))
                              (_%method156650156655%_
                               (##unchecked-structure-ref
                                _%self149890156630%_
                                '3
                                '#f
                                'copy)))
                          (_%method156650156655%_ _%object156649156654%_)))))))
          (apply hash-merge! _%copy156657%_ _%rest156612%_)
          _%copy156657%_)))
    (define hash-merge
      (lambda (_%h156595%_ . _%rest156596%_)
        (let* ((_%h156599%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h156595%_)))
               (_%h156601%_ _%h156599%_))
          (declare (not safe))
          (##apply __hash-merge _%h156601%_ _%rest156596%_))))
    (define __hash-merge-right
      (lambda (_%h156547%_ . _%rest156548%_)
        (let* ((_%h156551%_ _%h156547%_)
               (_%copy156593%_
                (let* ((_%self149890156560%_ _%h156551%_)
                       (_%self149890156564%_ _%self149890156560%_)
                       (_%self149890156566%_ _%self149890156564%_))
                  (if __DEBUG
                      (let ((__tmp167128
                             (let ()
                               (declare (not safe))
                               (let ((_%object156578156583%_
                                      (##unchecked-structure-ref
                                       _%self149890156566%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method156579156584%_
                                      (##unchecked-structure-ref
                                       _%self149890156566%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method156579156584%_
                                  _%object156578156583%_)))))
                        (declare (not safe))
                        (cast HashTable::interface __tmp167128))
                      (let ()
                        (declare (not safe))
                        (let ((_%object156585156590%_
                               (##unchecked-structure-ref
                                _%self149890156566%_
                                '1
                                '#f
                                'copy))
                              (_%method156586156591%_
                               (##unchecked-structure-ref
                                _%self149890156566%_
                                '3
                                '#f
                                'copy)))
                          (_%method156586156591%_ _%object156585156590%_)))))))
          (apply hash-merge-right! _%copy156593%_ _%rest156548%_)
          _%copy156593%_)))
    (define hash-merge-right
      (lambda (_%h156531%_ . _%rest156532%_)
        (let* ((_%h156535%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h156531%_)))
               (_%h156537%_ _%h156535%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h156537%_ _%rest156532%_))))
    (define __hash-merge!
      (lambda (_%h156391%_ . _%rest156392%_)
        (let ((_%h156395%_ _%h156391%_))
          (let ((__tmp167129
                 (lambda (_%hr156404%_)
                   (let* ((_%hr156407%_
                           (let ()
                             (declare (not safe))
                             (cast HashTable::interface _%hr156404%_)))
                          (_%hr156409%_ _%hr156407%_)
                          (_%self150378156422%_ _%hr156409%_)
                          (_%proc156491%_
                           (lambda (_%k156425%_ _%v156426%_)
                             (if (let* ((_%h156428%_ _%h156395%_)
                                        (_%k156431%_ _%k156425%_)
                                        (_%h156435%_ _%h156428%_)
                                        (_%h156437%_ _%h156435%_))
                                   (__hash-key? _%h156437%_ _%k156431%_))
                                 '#!void
                                 (let* ((_%self151354156453%_ _%h156395%_)
                                        (_%key156456%_ _%k156425%_)
                                        (_%value156459%_ _%v156426%_)
                                        (_%self151354156463%_
                                         _%self151354156453%_)
                                        (_%self151354156465%_
                                         _%self151354156463%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object156476156481%_
                                                (##unchecked-structure-ref
                                                 _%self151354156465%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method156477156482%_
                                                (##unchecked-structure-ref
                                                 _%self151354156465%_
                                                 '9
                                                 '#f
                                                 'set!)))
                                           (_%method156477156482%_
                                            _%object156476156481%_
                                            _%key156456%_
                                            _%value156459%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object156483156488%_
                                                (##unchecked-structure-ref
                                                 _%self151354156465%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method156484156489%_
                                                (##unchecked-structure-ref
                                                 _%self151354156465%_
                                                 '9
                                                 '#f
                                                 'set!)))
                                           (_%method156484156489%_
                                            _%object156483156488%_
                                            _%key156456%_
                                            _%value156459%_))))))))
                          (_%self150378156495%_ _%self150378156422%_)
                          (_%self150378156497%_ _%self150378156495%_)
                          (_%proc156507%_ _%proc156491%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object156516156521%_
                                  (##unchecked-structure-ref
                                   _%self150378156497%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method156517156522%_
                                  (##unchecked-structure-ref
                                   _%self150378156497%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method156517156522%_
                              _%object156516156521%_
                              _%proc156507%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object156523156528%_
                                  (##unchecked-structure-ref
                                   _%self150378156497%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method156524156529%_
                                  (##unchecked-structure-ref
                                   _%self150378156497%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method156524156529%_
                              _%object156523156528%_
                              _%proc156507%_))))))))
            (declare (not safe))
            (##for-each __tmp167129 _%rest156392%_))
          _%h156395%_)))
    (define hash-merge!
      (lambda (_%h156375%_ . _%rest156376%_)
        (let* ((_%h156379%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h156375%_)))
               (_%h156381%_ _%h156379%_))
          (declare (not safe))
          (##apply __hash-merge! _%h156381%_ _%rest156376%_))))
    (define __hash-merge-right!
      (lambda (_%h156255%_ . _%rest156256%_)
        (let ((_%h156259%_ _%h156255%_))
          (let ((__tmp167130
                 (lambda (_%hr156268%_)
                   (let* ((_%hr156271%_
                           (let ()
                             (declare (not safe))
                             (cast HashTable::interface _%hr156268%_)))
                          (_%hr156273%_ _%hr156271%_)
                          (_%self150378156286%_ _%hr156273%_)
                          (_%proc156335%_
                           (lambda (_%k156289%_ _%v156290%_)
                             (let* ((_%self151354156292%_ _%h156259%_)
                                    (_%key156295%_ _%k156289%_)
                                    (_%value156298%_ _%v156290%_)
                                    (_%self151354156302%_ _%self151354156292%_)
                                    (_%self151354156304%_
                                     _%self151354156302%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object156320156325%_
                                            (##unchecked-structure-ref
                                             _%self151354156304%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method156321156326%_
                                            (##unchecked-structure-ref
                                             _%self151354156304%_
                                             '9
                                             '#f
                                             'set!)))
                                       (_%method156321156326%_
                                        _%object156320156325%_
                                        _%key156295%_
                                        _%value156298%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object156327156332%_
                                            (##unchecked-structure-ref
                                             _%self151354156304%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method156328156333%_
                                            (##unchecked-structure-ref
                                             _%self151354156304%_
                                             '9
                                             '#f
                                             'set!)))
                                       (_%method156328156333%_
                                        _%object156327156332%_
                                        _%key156295%_
                                        _%value156298%_)))))))
                          (_%self150378156339%_ _%self150378156286%_)
                          (_%self150378156341%_ _%self150378156339%_)
                          (_%proc156351%_ _%proc156335%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object156360156365%_
                                  (##unchecked-structure-ref
                                   _%self150378156341%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method156361156366%_
                                  (##unchecked-structure-ref
                                   _%self150378156341%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method156361156366%_
                              _%object156360156365%_
                              _%proc156351%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object156367156372%_
                                  (##unchecked-structure-ref
                                   _%self150378156341%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method156368156373%_
                                  (##unchecked-structure-ref
                                   _%self150378156341%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method156368156373%_
                              _%object156367156372%_
                              _%proc156351%_))))))))
            (declare (not safe))
            (##for-each __tmp167130 _%rest156256%_))
          _%h156259%_)))
    (define hash-merge-right!
      (lambda (_%h156239%_ . _%rest156240%_)
        (let* ((_%h156243%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h156239%_)))
               (_%h156245%_ _%h156243%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h156245%_ _%rest156240%_))))))
