(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1781697559)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp165946 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'UnboundKeyError::t
         'UnboundKeyError
         __tmp165946
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args164610%_
        (apply make-instance UnboundKeyError::t _%$args164610%_)))
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
      (lambda (_%where164484%_ _%message164485%_ . _%irritants164486%_)
        (let ((__tmp165947
               (let ((__obj165938
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj165938
                    _%message164485%_
                    'where:
                    _%where164484%_
                    'irritants:
                    _%irritants164486%_))
                 __obj165938)))
          (declare (not safe))
          (raise __tmp165947))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp165948 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'HashTable::t
         'HashTable
         __tmp165948
         '(clear! copy delete! for-each length new ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj165940
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj165940
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
        __obj165940))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       HashTable::t
       'interface-descriptor:
       HashTable::interface))
    (define make-HashTable
      (lambda (_%obj164482%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj164482%_))))
    (define try-HashTable
      (lambda (_%obj164480%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj164480%_))))
    (define HashTable?
      (lambda (_%obj164478%_)
        (let ((__tmp165949
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj164478%_ __tmp165949))))
    (define is-HashTable?
      (lambda (_%obj164475%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj164475%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self148350164458%_)
        (let ((_%self148350164460%_ _%self148350164458%_))
          (declare (not safe))
          (let ((_%object164467164472%_
                 (##unchecked-structure-ref
                  _%self148350164460%_
                  '1
                  '#f
                  'clear!))
                (_%method164468164473%_
                 (##unchecked-structure-ref
                  _%self148350164460%_
                  '2
                  '#f
                  'clear!)))
            (_%method164468164473%_ _%object164467164472%_)))))
    (define ::HashTable-clear!
      (lambda (_%self148351164428%_)
        (let* ((_%self148351164433%_
                (let ((_%$obj164430%_ _%self148351164428%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164430%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164430%_)))
                           '#t)
                      _%$obj164430%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164430%_)))))
               (_%self148351164435%_ _%self148351164433%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object164443164448%_
                       (##unchecked-structure-ref
                        _%self148351164435%_
                        '1
                        '#f
                        'clear!))
                      (_%method164444164449%_
                       (##unchecked-structure-ref
                        _%self148351164435%_
                        '2
                        '#f
                        'clear!)))
                  (_%method164444164449%_ _%object164443164448%_)))
              (let ()
                (declare (not safe))
                (let ((_%object164450164455%_
                       (##unchecked-structure-ref
                        _%self148351164435%_
                        '1
                        '#f
                        'clear!))
                      (_%method164451164456%_
                       (##unchecked-structure-ref
                        _%self148351164435%_
                        '2
                        '#f
                        'clear!)))
                  (_%method164451164456%_ _%object164450164455%_)))))))
    (define __HashTable-copy
      (lambda (_%self148595164411%_)
        (let ((_%self148595164413%_ _%self148595164411%_))
          (declare (not safe))
          (let ((_%object164420164425%_
                 (##unchecked-structure-ref _%self148595164413%_ '1 '#f 'copy))
                (_%method164421164426%_
                 (##unchecked-structure-ref
                  _%self148595164413%_
                  '3
                  '#f
                  'copy)))
            (_%method164421164426%_ _%object164420164425%_)))))
    (define ::HashTable-copy
      (lambda (_%self148596164378%_)
        (let* ((_%self148596164383%_
                (let ((_%$obj164380%_ _%self148596164378%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164380%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164380%_)))
                           '#t)
                      _%$obj164380%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164380%_)))))
               (_%self148596164385%_ _%self148596164383%_))
          (if __DEBUG
              (let ((_%$obj164401%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object164393164398%_
                              (##unchecked-structure-ref
                               _%self148596164385%_
                               '1
                               '#f
                               'copy))
                             (_%method164394164399%_
                              (##unchecked-structure-ref
                               _%self148596164385%_
                               '3
                               '#f
                               'copy)))
                         (_%method164394164399%_ _%object164393164398%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj164401%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj164401%_)))
                         '#t)
                    _%$obj164401%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj164401%_))))
              (let ()
                (declare (not safe))
                (let ((_%object164403164408%_
                       (##unchecked-structure-ref
                        _%self148596164385%_
                        '1
                        '#f
                        'copy))
                      (_%method164404164409%_
                       (##unchecked-structure-ref
                        _%self148596164385%_
                        '3
                        '#f
                        'copy)))
                  (_%method164404164409%_ _%object164403164408%_)))))))
    (define __HashTable-delete!
      (lambda (_%self148839164360%_ _%key164361%_)
        (let ((_%self148839164363%_ _%self148839164360%_))
          (declare (not safe))
          (let ((_%object164370164375%_
                 (##unchecked-structure-ref
                  _%self148839164363%_
                  '1
                  '#f
                  'delete!))
                (_%method164371164376%_
                 (##unchecked-structure-ref
                  _%self148839164363%_
                  '4
                  '#f
                  'delete!)))
            (_%method164371164376%_ _%object164370164375%_ _%key164361%_)))))
    (define ::HashTable-delete!
      (lambda (_%self148840164329%_ _%key164330%_)
        (let* ((_%self148840164335%_
                (let ((_%$obj164332%_ _%self148840164329%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164332%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164332%_)))
                           '#t)
                      _%$obj164332%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164332%_)))))
               (_%self148840164337%_ _%self148840164335%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object164345164350%_
                       (##unchecked-structure-ref
                        _%self148840164337%_
                        '1
                        '#f
                        'delete!))
                      (_%method164346164351%_
                       (##unchecked-structure-ref
                        _%self148840164337%_
                        '4
                        '#f
                        'delete!)))
                  (_%method164346164351%_
                   _%object164345164350%_
                   _%key164330%_)))
              (let ()
                (declare (not safe))
                (let ((_%object164352164357%_
                       (##unchecked-structure-ref
                        _%self148840164337%_
                        '1
                        '#f
                        'delete!))
                      (_%method164353164358%_
                       (##unchecked-structure-ref
                        _%self148840164337%_
                        '4
                        '#f
                        'delete!)))
                  (_%method164353164358%_
                   _%object164352164357%_
                   _%key164330%_)))))))
    (define __HashTable-for-each
      (lambda (_%self149083164303%_ _%proc164304%_)
        (let* ((_%self149083164306%_ _%self149083164303%_)
               (_%proc164313%_ _%proc164304%_))
          (declare (not safe))
          (let ((_%object164321164326%_
                 (##unchecked-structure-ref
                  _%self149083164306%_
                  '1
                  '#f
                  'for-each))
                (_%method164322164327%_
                 (##unchecked-structure-ref
                  _%self149083164306%_
                  '5
                  '#f
                  'for-each)))
            (_%method164322164327%_ _%object164321164326%_ _%proc164313%_)))))
    (define ::HashTable-for-each
      (lambda (_%self149084164262%_ _%proc164263%_)
        (let* ((_%self149084164268%_
                (let ((_%$obj164265%_ _%self149084164262%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164265%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164265%_)))
                           '#t)
                      _%$obj164265%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164265%_)))))
               (_%self149084164270%_ _%self149084164268%_))
          (if (procedure? _%proc164263%_)
              (let ((_%proc164279%_ _%proc164263%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object164288164293%_
                             (##unchecked-structure-ref
                              _%self149084164270%_
                              '1
                              '#f
                              'for-each))
                            (_%method164289164294%_
                             (##unchecked-structure-ref
                              _%self149084164270%_
                              '5
                              '#f
                              'for-each)))
                        (_%method164289164294%_
                         _%object164288164293%_
                         _%proc164279%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object164295164300%_
                             (##unchecked-structure-ref
                              _%self149084164270%_
                              '1
                              '#f
                              'for-each))
                            (_%method164296164301%_
                             (##unchecked-structure-ref
                              _%self149084164270%_
                              '5
                              '#f
                              'for-each)))
                        (_%method164296164301%_
                         _%object164295164300%_
                         _%proc164279%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc164263%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self149327164245%_)
        (let ((_%self149327164247%_ _%self149327164245%_))
          (declare (not safe))
          (let ((_%object164254164259%_
                 (##unchecked-structure-ref
                  _%self149327164247%_
                  '1
                  '#f
                  'length))
                (_%method164255164260%_
                 (##unchecked-structure-ref
                  _%self149327164247%_
                  '6
                  '#f
                  'length)))
            (_%method164255164260%_ _%object164254164259%_)))))
    (define ::HashTable-length
      (lambda (_%self149328164212%_)
        (let* ((_%self149328164217%_
                (let ((_%$obj164214%_ _%self149328164212%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164214%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164214%_)))
                           '#t)
                      _%$obj164214%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164214%_)))))
               (_%self149328164219%_ _%self149328164217%_))
          (if __DEBUG
              (let ((_%val164235%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object164227164232%_
                              (##unchecked-structure-ref
                               _%self149328164219%_
                               '1
                               '#f
                               'length))
                             (_%method164228164233%_
                              (##unchecked-structure-ref
                               _%self149328164219%_
                               '6
                               '#f
                               'length)))
                         (_%method164228164233%_ _%object164227164232%_)))))
                (if (fixnum? _%val164235%_)
                    _%val164235%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val164235%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object164237164242%_
                       (##unchecked-structure-ref
                        _%self149328164219%_
                        '1
                        '#f
                        'length))
                      (_%method164238164243%_
                       (##unchecked-structure-ref
                        _%self149328164219%_
                        '6
                        '#f
                        'length)))
                  (_%method164238164243%_ _%object164237164242%_)))))))
    (define __HashTable-new__%
      (lambda (_%self149571164176%_ _%size-hint164177%_)
        (let* ((_%self149571164179%_ _%self149571164176%_)
               (_%size-hint164186%_ _%size-hint164177%_))
          (declare (not safe))
          (let ((_%object164194164199%_
                 (##unchecked-structure-ref _%self149571164179%_ '1 '#f 'new))
                (_%method164195164200%_
                 (##unchecked-structure-ref _%self149571164179%_ '7 '#f 'new)))
            (_%method164195164200%_
             _%object164194164199%_
             _%size-hint164186%_)))))
    (define __HashTable-new__0
      (lambda (_%self149571164205%_)
        (let ((_%size-hint164207%_ '#f))
          (__HashTable-new__% _%self149571164205%_ _%size-hint164207%_))))
    (define __HashTable-new
      (lambda _g165950_
        (let ((_g165951_ (let () (declare (not safe)) (##length _g165950_))))
          (cond ((let () (declare (not safe)) (##fx= _g165951_ 1))
                 (apply __HashTable-new__0 _g165950_))
                ((let () (declare (not safe)) (##fx= _g165951_ 2))
                 (apply __HashTable-new__% _g165950_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __HashTable-new
                  _g165950_))))))
    (define ::HashTable-new__%
      (lambda (_%self149572164115%_ _%size-hint164116%_)
        (let* ((_%self149572164121%_
                (let ((_%$obj164118%_ _%self149572164115%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164118%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164118%_)))
                           '#t)
                      _%$obj164118%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164118%_)))))
               (_%self149572164123%_ _%self149572164121%_))
          (if (or (not _%size-hint164116%_) (fixnum? _%size-hint164116%_))
              (let ((_%size-hint164138%_ _%size-hint164116%_))
                (if __DEBUG
                    (let ((_%$obj164155%_
                           (let ()
                             (declare (not safe))
                             (let ((_%object164147164152%_
                                    (##unchecked-structure-ref
                                     _%self149572164123%_
                                     '1
                                     '#f
                                     'new))
                                   (_%method164148164153%_
                                    (##unchecked-structure-ref
                                     _%self149572164123%_
                                     '7
                                     '#f
                                     'new)))
                               (_%method164148164153%_
                                _%object164147164152%_
                                _%size-hint164138%_)))))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj164155%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj164155%_)))
                               '#t)
                          _%$obj164155%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj164155%_))))
                    (let ()
                      (declare (not safe))
                      (let ((_%object164157164162%_
                             (##unchecked-structure-ref
                              _%self149572164123%_
                              '1
                              '#f
                              'new))
                            (_%method164158164163%_
                             (##unchecked-structure-ref
                              _%self149572164123%_
                              '7
                              '#f
                              'new)))
                        (_%method164158164163%_
                         _%object164157164162%_
                         _%size-hint164138%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@32.9-32.18"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint164116%_)
                '#!void)))))
    (define ::HashTable-new__0
      (lambda (_%self149572164168%_)
        (let ((_%size-hint164170%_ '#f))
          (::HashTable-new__% _%self149572164168%_ _%size-hint164170%_))))
    (define ::HashTable-new
      (lambda _g165952_
        (let ((_g165953_ (let () (declare (not safe)) (##length _g165952_))))
          (cond ((let () (declare (not safe)) (##fx= _g165953_ 1))
                 (apply ::HashTable-new__0 _g165952_))
                ((let () (declare (not safe)) (##fx= _g165953_ 2))
                 (apply ::HashTable-new__% _g165952_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ::HashTable-new
                  _g165952_))))))
    (define __HashTable-ref
      (lambda (_%self149815164095%_ _%key164096%_ _%default164097%_)
        (let ((_%self149815164099%_ _%self149815164095%_))
          (declare (not safe))
          (let ((_%object164106164111%_
                 (##unchecked-structure-ref _%self149815164099%_ '1 '#f 'ref))
                (_%method164107164112%_
                 (##unchecked-structure-ref _%self149815164099%_ '8 '#f 'ref)))
            (_%method164107164112%_
             _%object164106164111%_
             _%key164096%_
             _%default164097%_)))))
    (define ::HashTable-ref
      (lambda (_%self149816164063%_ _%key164064%_ _%default164065%_)
        (let* ((_%self149816164070%_
                (let ((_%$obj164067%_ _%self149816164063%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164067%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164067%_)))
                           '#t)
                      _%$obj164067%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164067%_)))))
               (_%self149816164072%_ _%self149816164070%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object164080164085%_
                       (##unchecked-structure-ref
                        _%self149816164072%_
                        '1
                        '#f
                        'ref))
                      (_%method164081164086%_
                       (##unchecked-structure-ref
                        _%self149816164072%_
                        '8
                        '#f
                        'ref)))
                  (_%method164081164086%_
                   _%object164080164085%_
                   _%key164064%_
                   _%default164065%_)))
              (let ()
                (declare (not safe))
                (let ((_%object164087164092%_
                       (##unchecked-structure-ref
                        _%self149816164072%_
                        '1
                        '#f
                        'ref))
                      (_%method164088164093%_
                       (##unchecked-structure-ref
                        _%self149816164072%_
                        '8
                        '#f
                        'ref)))
                  (_%method164088164093%_
                   _%object164087164092%_
                   _%key164064%_
                   _%default164065%_)))))))
    (define __HashTable-set!
      (lambda (_%self150059164044%_ _%key164045%_ _%value164046%_)
        (let ((_%self150059164048%_ _%self150059164044%_))
          (declare (not safe))
          (let ((_%object164055164060%_
                 (##unchecked-structure-ref _%self150059164048%_ '1 '#f 'set!))
                (_%method164056164061%_
                 (##unchecked-structure-ref
                  _%self150059164048%_
                  '9
                  '#f
                  'set!)))
            (_%method164056164061%_
             _%object164055164060%_
             _%key164045%_
             _%value164046%_)))))
    (define ::HashTable-set!
      (lambda (_%self150060164012%_ _%key164013%_ _%value164014%_)
        (let* ((_%self150060164019%_
                (let ((_%$obj164016%_ _%self150060164012%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164016%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164016%_)))
                           '#t)
                      _%$obj164016%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164016%_)))))
               (_%self150060164021%_ _%self150060164019%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object164029164034%_
                       (##unchecked-structure-ref
                        _%self150060164021%_
                        '1
                        '#f
                        'set!))
                      (_%method164030164035%_
                       (##unchecked-structure-ref
                        _%self150060164021%_
                        '9
                        '#f
                        'set!)))
                  (_%method164030164035%_
                   _%object164029164034%_
                   _%key164013%_
                   _%value164014%_)))
              (let ()
                (declare (not safe))
                (let ((_%object164036164041%_
                       (##unchecked-structure-ref
                        _%self150060164021%_
                        '1
                        '#f
                        'set!))
                      (_%method164037164042%_
                       (##unchecked-structure-ref
                        _%self150060164021%_
                        '9
                        '#f
                        'set!)))
                  (_%method164037164042%_
                   _%object164036164041%_
                   _%key164013%_
                   _%value164014%_)))))))
    (define __HashTable-update!
      (lambda (_%self150303163984%_
               _%key163985%_
               _%proc163986%_
               _%default163987%_)
        (let* ((_%self150303163989%_ _%self150303163984%_)
               (_%proc163996%_ _%proc163986%_))
          (declare (not safe))
          (let ((_%object164004164009%_
                 (##unchecked-structure-ref
                  _%self150303163989%_
                  '1
                  '#f
                  'update!))
                (_%method164005164010%_
                 (##unchecked-structure-ref
                  _%self150303163989%_
                  '10
                  '#f
                  'update!)))
            (_%method164005164010%_
             _%object164004164009%_
             _%key163985%_
             _%proc163996%_
             _%default163987%_)))))
    (define ::HashTable-update!
      (lambda (_%self150304163941%_
               _%key163942%_
               _%proc163943%_
               _%default163944%_)
        (let* ((_%self150304163949%_
                (let ((_%$obj163946%_ _%self150304163941%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj163946%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj163946%_)))
                           '#t)
                      _%$obj163946%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj163946%_)))))
               (_%self150304163951%_ _%self150304163949%_))
          (if (procedure? _%proc163943%_)
              (let ((_%proc163960%_ _%proc163943%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object163969163974%_
                             (##unchecked-structure-ref
                              _%self150304163951%_
                              '1
                              '#f
                              'update!))
                            (_%method163970163975%_
                             (##unchecked-structure-ref
                              _%self150304163951%_
                              '10
                              '#f
                              'update!)))
                        (_%method163970163975%_
                         _%object163969163974%_
                         _%key163942%_
                         _%proc163960%_
                         _%default163944%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object163976163981%_
                             (##unchecked-structure-ref
                              _%self150304163951%_
                              '1
                              '#f
                              'update!))
                            (_%method163977163982%_
                             (##unchecked-structure-ref
                              _%self150304163951%_
                              '10
                              '#f
                              'update!)))
                        (_%method163977163982%_
                         _%object163976163981%_
                         _%key163942%_
                         _%proc163960%_
                         _%default163944%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc163943%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp165954 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'Locker::t
         'Locker
         __tmp165954
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj165942
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj165942
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj165942))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       Locker::t
       'interface-descriptor:
       Locker::interface))
    (define make-Locker
      (lambda (_%obj163939%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj163939%_))))
    (define try-Locker
      (lambda (_%obj163937%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj163937%_))))
    (define Locker?
      (lambda (_%obj163935%_)
        (let ((__tmp165955
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj163935%_ __tmp165955))))
    (define is-Locker?
      (lambda (_%obj163932%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj163932%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self150547163915%_)
        (let ((_%self150547163917%_ _%self150547163915%_))
          (declare (not safe))
          (let ((_%object163924163929%_
                 (##unchecked-structure-ref
                  _%self150547163917%_
                  '1
                  '#f
                  'read-lock!))
                (_%method163925163930%_
                 (##unchecked-structure-ref
                  _%self150547163917%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method163925163930%_ _%object163924163929%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self150548163885%_)
        (let* ((_%self150548163890%_
                (let ((_%$obj163887%_ _%self150548163885%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj163887%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj163887%_)))
                           '#t)
                      _%$obj163887%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj163887%_)))))
               (_%self150548163892%_ _%self150548163890%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object163900163905%_
                       (##unchecked-structure-ref
                        _%self150548163892%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method163901163906%_
                       (##unchecked-structure-ref
                        _%self150548163892%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method163901163906%_ _%object163900163905%_)))
              (let ()
                (declare (not safe))
                (let ((_%object163907163912%_
                       (##unchecked-structure-ref
                        _%self150548163892%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method163908163913%_
                       (##unchecked-structure-ref
                        _%self150548163892%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method163908163913%_ _%object163907163912%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self150791163868%_)
        (let ((_%self150791163870%_ _%self150791163868%_))
          (declare (not safe))
          (let ((_%object163877163882%_
                 (##unchecked-structure-ref
                  _%self150791163870%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method163878163883%_
                 (##unchecked-structure-ref
                  _%self150791163870%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method163878163883%_ _%object163877163882%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self150792163838%_)
        (let* ((_%self150792163843%_
                (let ((_%$obj163840%_ _%self150792163838%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj163840%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj163840%_)))
                           '#t)
                      _%$obj163840%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj163840%_)))))
               (_%self150792163845%_ _%self150792163843%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object163853163858%_
                       (##unchecked-structure-ref
                        _%self150792163845%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method163854163859%_
                       (##unchecked-structure-ref
                        _%self150792163845%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method163854163859%_ _%object163853163858%_)))
              (let ()
                (declare (not safe))
                (let ((_%object163860163865%_
                       (##unchecked-structure-ref
                        _%self150792163845%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method163861163866%_
                       (##unchecked-structure-ref
                        _%self150792163845%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method163861163866%_ _%object163860163865%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self151035163821%_)
        (let ((_%self151035163823%_ _%self151035163821%_))
          (declare (not safe))
          (let ((_%object163830163835%_
                 (##unchecked-structure-ref
                  _%self151035163823%_
                  '1
                  '#f
                  'write-lock!))
                (_%method163831163836%_
                 (##unchecked-structure-ref
                  _%self151035163823%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method163831163836%_ _%object163830163835%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self151036163791%_)
        (let* ((_%self151036163796%_
                (let ((_%$obj163793%_ _%self151036163791%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj163793%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj163793%_)))
                           '#t)
                      _%$obj163793%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj163793%_)))))
               (_%self151036163798%_ _%self151036163796%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object163806163811%_
                       (##unchecked-structure-ref
                        _%self151036163798%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method163807163812%_
                       (##unchecked-structure-ref
                        _%self151036163798%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method163807163812%_ _%object163806163811%_)))
              (let ()
                (declare (not safe))
                (let ((_%object163813163818%_
                       (##unchecked-structure-ref
                        _%self151036163798%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method163814163819%_
                       (##unchecked-structure-ref
                        _%self151036163798%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method163814163819%_ _%object163813163818%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self151279163774%_)
        (let ((_%self151279163776%_ _%self151279163774%_))
          (declare (not safe))
          (let ((_%object163783163788%_
                 (##unchecked-structure-ref
                  _%self151279163776%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method163784163789%_
                 (##unchecked-structure-ref
                  _%self151279163776%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method163784163789%_ _%object163783163788%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self151280163744%_)
        (let* ((_%self151280163749%_
                (let ((_%$obj163746%_ _%self151280163744%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj163746%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj163746%_)))
                           '#t)
                      _%$obj163746%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj163746%_)))))
               (_%self151280163751%_ _%self151280163749%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object163759163764%_
                       (##unchecked-structure-ref
                        _%self151280163751%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method163760163765%_
                       (##unchecked-structure-ref
                        _%self151280163751%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method163760163765%_ _%object163759163764%_)))
              (let ()
                (declare (not safe))
                (let ((_%object163766163771%_
                       (##unchecked-structure-ref
                        _%self151280163751%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method163767163772%_
                       (##unchecked-structure-ref
                        _%self151280163751%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method163767163772%_ _%object163766163771%_)))))))
    (let* ((_%klass163707%_ __table::t)
           (_%id163710%_ 'HashTable::ref)
           (_%proc163713%_ raw-table-ref)
           (_%rebind?163716%_ '#f)
           (_%id163721%_ _%id163710%_)
           (_%proc163734%_ _%proc163713%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163707%_
       _%id163721%_
       _%proc163734%_
       _%rebind?163716%_))
    (let* ((_%klass163670%_ __table::t)
           (_%id163673%_ 'HashTable::set!)
           (_%proc163676%_ raw-table-set!)
           (_%rebind?163679%_ '#f)
           (_%id163684%_ _%id163673%_)
           (_%proc163697%_ _%proc163676%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163670%_
       _%id163684%_
       _%proc163697%_
       _%rebind?163679%_))
    (let* ((_%klass163633%_ __table::t)
           (_%id163636%_ 'HashTable::update!)
           (_%proc163639%_ raw-table-update!)
           (_%rebind?163642%_ '#f)
           (_%id163647%_ _%id163636%_)
           (_%proc163660%_ _%proc163639%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163633%_
       _%id163647%_
       _%proc163660%_
       _%rebind?163642%_))
    (let* ((_%klass163596%_ __table::t)
           (_%id163599%_ 'HashTable::delete!)
           (_%proc163602%_ raw-table-delete!)
           (_%rebind?163605%_ '#f)
           (_%id163610%_ _%id163599%_)
           (_%proc163623%_ _%proc163602%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163596%_
       _%id163610%_
       _%proc163623%_
       _%rebind?163605%_))
    (let* ((_%klass163559%_ __table::t)
           (_%id163562%_ 'HashTable::for-each)
           (_%proc163565%_ raw-table-for-each)
           (_%rebind?163568%_ '#f)
           (_%id163573%_ _%id163562%_)
           (_%proc163586%_ _%proc163565%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163559%_
       _%id163573%_
       _%proc163586%_
       _%rebind?163568%_))
    (let* ((_%klass163522%_ __table::t)
           (_%id163525%_ 'HashTable::length)
           (_%proc163528%_ &raw-table-count)
           (_%rebind?163531%_ '#f)
           (_%id163536%_ _%id163525%_)
           (_%proc163549%_ _%proc163528%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163522%_
       _%id163536%_
       _%proc163549%_
       _%rebind?163531%_))
    (let* ((_%klass163485%_ __table::t)
           (_%id163488%_ 'HashTable::copy)
           (_%proc163491%_ raw-table-copy)
           (_%rebind?163494%_ '#f)
           (_%id163499%_ _%id163488%_)
           (_%proc163512%_ _%proc163491%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163485%_
       _%id163499%_
       _%proc163512%_
       _%rebind?163494%_))
    (let* ((_%klass163448%_ __table::t)
           (_%id163451%_ 'HashTable::new)
           (_%proc163454%_ raw-table-new)
           (_%rebind?163457%_ '#f)
           (_%id163462%_ _%id163451%_)
           (_%proc163475%_ _%proc163454%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163448%_
       _%id163462%_
       _%proc163475%_
       _%rebind?163457%_))
    (let* ((_%klass163411%_ __table::t)
           (_%id163414%_ 'HashTable::clear!)
           (_%proc163417%_ raw-table-clear!)
           (_%rebind?163420%_ '#f)
           (_%id163425%_ _%id163414%_)
           (_%proc163438%_ _%proc163417%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163411%_
       _%id163425%_
       _%proc163438%_
       _%rebind?163420%_))
    (let* ((_%klass163374%_ __gc-table::t)
           (_%id163377%_ 'HashTable::ref)
           (_%proc163380%_ gc-table-ref)
           (_%rebind?163383%_ '#f)
           (_%id163388%_ _%id163377%_)
           (_%proc163401%_ _%proc163380%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163374%_
       _%id163388%_
       _%proc163401%_
       _%rebind?163383%_))
    (let* ((_%klass163337%_ __gc-table::t)
           (_%id163340%_ 'HashTable::set!)
           (_%proc163343%_ gc-table-set!)
           (_%rebind?163346%_ '#f)
           (_%id163351%_ _%id163340%_)
           (_%proc163364%_ _%proc163343%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163337%_
       _%id163351%_
       _%proc163364%_
       _%rebind?163346%_))
    (let* ((_%klass163300%_ __gc-table::t)
           (_%id163303%_ 'HashTable::update!)
           (_%proc163306%_ gc-table-update!)
           (_%rebind?163309%_ '#f)
           (_%id163314%_ _%id163303%_)
           (_%proc163327%_ _%proc163306%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163300%_
       _%id163314%_
       _%proc163327%_
       _%rebind?163309%_))
    (let* ((_%klass163263%_ __gc-table::t)
           (_%id163266%_ 'HashTable::delete!)
           (_%proc163269%_ gc-table-delete!)
           (_%rebind?163272%_ '#f)
           (_%id163277%_ _%id163266%_)
           (_%proc163290%_ _%proc163269%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163263%_
       _%id163277%_
       _%proc163290%_
       _%rebind?163272%_))
    (let* ((_%klass163226%_ __gc-table::t)
           (_%id163229%_ 'HashTable::for-each)
           (_%proc163232%_ gc-table-for-each)
           (_%rebind?163235%_ '#f)
           (_%id163240%_ _%id163229%_)
           (_%proc163253%_ _%proc163232%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163226%_
       _%id163240%_
       _%proc163253%_
       _%rebind?163235%_))
    (let* ((_%klass163189%_ __gc-table::t)
           (_%id163192%_ 'HashTable::length)
           (_%proc163195%_ gc-table-length)
           (_%rebind?163198%_ '#f)
           (_%id163203%_ _%id163192%_)
           (_%proc163216%_ _%proc163195%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163189%_
       _%id163203%_
       _%proc163216%_
       _%rebind?163198%_))
    (let* ((_%klass163152%_ __gc-table::t)
           (_%id163155%_ 'HashTable::copy)
           (_%proc163158%_ gc-table-copy)
           (_%rebind?163161%_ '#f)
           (_%id163166%_ _%id163155%_)
           (_%proc163179%_ _%proc163158%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163152%_
       _%id163166%_
       _%proc163179%_
       _%rebind?163161%_))
    (let* ((_%klass163115%_ __gc-table::t)
           (_%id163118%_ 'HashTable::new)
           (_%proc163121%_ gc-table-new)
           (_%rebind?163124%_ '#f)
           (_%id163129%_ _%id163118%_)
           (_%proc163142%_ _%proc163121%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163115%_
       _%id163129%_
       _%proc163142%_
       _%rebind?163124%_))
    (let* ((_%klass163078%_ __gc-table::t)
           (_%id163081%_ 'HashTable::clear!)
           (_%proc163084%_ gc-table-clear!)
           (_%rebind?163087%_ '#f)
           (_%id163092%_ _%id163081%_)
           (_%proc163105%_ _%proc163084%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163078%_
       _%id163092%_
       _%proc163105%_
       _%rebind?163087%_))
    (define gambit-table-update!
      (lambda (_%table163071%_
               _%key163072%_
               _%update163073%_
               _%default163074%_)
        (let ((_%result163076%_
               (table-ref _%table163071%_ _%key163072%_ _%default163074%_)))
          (table-set!
           _%table163071%_
           _%key163072%_
           (_%update163073%_ _%default163074%_)))))
    (define gambit-table-for-each
      (lambda (_%table163068%_ _%proc163069%_)
        (table-for-each _%proc163069%_ _%table163068%_)))
    (define gambit-table-clear!
      (lambda (_%table163066%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table163066%_ '0 '5 '#f '#f))))
    (let* ((_%klass163029%_ (macro-type-table))
           (_%id163032%_ 'HashTable::ref)
           (_%proc163035%_ table-ref)
           (_%rebind?163038%_ '#f)
           (_%id163043%_ _%id163032%_)
           (_%proc163056%_ _%proc163035%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163029%_
       _%id163043%_
       _%proc163056%_
       _%rebind?163038%_))
    (let* ((_%klass162992%_ (macro-type-table))
           (_%id162995%_ 'HashTable::set!)
           (_%proc162998%_ table-set!)
           (_%rebind?163001%_ '#f)
           (_%id163006%_ _%id162995%_)
           (_%proc163019%_ _%proc162998%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162992%_
       _%id163006%_
       _%proc163019%_
       _%rebind?163001%_))
    (let* ((_%klass162955%_ (macro-type-table))
           (_%id162958%_ 'HashTable::update!)
           (_%proc162961%_ gambit-table-update!)
           (_%rebind?162964%_ '#f)
           (_%id162969%_ _%id162958%_)
           (_%proc162982%_ _%proc162961%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162955%_
       _%id162969%_
       _%proc162982%_
       _%rebind?162964%_))
    (let* ((_%klass162918%_ (macro-type-table))
           (_%id162921%_ 'HashTable::delete!)
           (_%proc162924%_ table-set!)
           (_%rebind?162927%_ '#f)
           (_%id162932%_ _%id162921%_)
           (_%proc162945%_ _%proc162924%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162918%_
       _%id162932%_
       _%proc162945%_
       _%rebind?162927%_))
    (let* ((_%klass162881%_ (macro-type-table))
           (_%id162884%_ 'HashTable::for-each)
           (_%proc162887%_ gambit-table-for-each)
           (_%rebind?162890%_ '#f)
           (_%id162895%_ _%id162884%_)
           (_%proc162908%_ _%proc162887%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162881%_
       _%id162895%_
       _%proc162908%_
       _%rebind?162890%_))
    (let* ((_%klass162844%_ (macro-type-table))
           (_%id162847%_ 'HashTable::length)
           (_%proc162850%_ table-length)
           (_%rebind?162853%_ '#f)
           (_%id162858%_ _%id162847%_)
           (_%proc162871%_ _%proc162850%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162844%_
       _%id162858%_
       _%proc162871%_
       _%rebind?162853%_))
    (let* ((_%klass162807%_ (macro-type-table))
           (_%id162810%_ 'HashTable::copy)
           (_%proc162813%_ table-copy)
           (_%rebind?162816%_ '#f)
           (_%id162821%_ _%id162810%_)
           (_%proc162834%_ _%proc162813%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162807%_
       _%id162821%_
       _%proc162834%_
       _%rebind?162816%_))
    (let* ((_%klass162770%_ (macro-type-table))
           (_%id162773%_ 'HashTable::new)
           (_%proc162776%_ table-new)
           (_%rebind?162779%_ '#f)
           (_%id162784%_ _%id162773%_)
           (_%proc162797%_ _%proc162776%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162770%_
       _%id162784%_
       _%proc162797%_
       _%rebind?162779%_))
    (let* ((_%klass162733%_ (macro-type-table))
           (_%id162736%_ 'HashTable::clear!)
           (_%proc162739%_ gambit-table-clear!)
           (_%rebind?162742%_ '#f)
           (_%id162747%_ _%id162736%_)
           (_%proc162760%_ _%proc162739%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162733%_
       _%id162747%_
       _%proc162760%_
       _%rebind?162742%_))
    (define hash-table::t
      (let* ((_%slots162696%_ '(table count free hash test seed))
             (_%slot-vector162698%_ (list->vector (cons '#f _%slots162696%_)))
             (_%slot-table162724%_
              (let ((_%slot-table162700%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp165958
                       (lambda (_%slot162702%_ _%field162703%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table162700%_
                            _%slot162702%_
                            _%field162703%_))
                         (let ((__tmp165959
                                (let ((_%sym162705%_ _%slot162702%_))
                                  (if (symbol? _%sym162705%_)
                                      (let ((_%sym162710%_ _%sym162705%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym162710%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym162705%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table162700%_
                            __tmp165959
                            _%field162703%_))))
                      (__tmp165956
                       (let ((__tmp165957
                              (let ()
                                (declare (not safe))
                                (##length _%slots162696%_))))
                         (declare (not safe))
                         (##iota __tmp165957 '1))))
                  (declare (not safe))
                  (##for-each __tmp165958 _%slots162696%_ __tmp165956))
                _%slot-table162700%_))
             (_%flags162726%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields162728%_ '#())
             (_%properties162730%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots162696%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp165960 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'hash-table::t
         'hash-table
         _%flags162726%_
         __table::t
         _%fields162728%_
         __tmp165960
         _%slot-vector162698%_
         _%slot-table162724%_
         _%properties162730%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots162659%_ '(gcht immediate))
             (_%slot-vector162661%_ (list->vector (cons '#f _%slots162659%_)))
             (_%slot-table162687%_
              (let ((_%slot-table162663%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp165963
                       (lambda (_%slot162665%_ _%field162666%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table162663%_
                            _%slot162665%_
                            _%field162666%_))
                         (let ((__tmp165964
                                (let ((_%sym162668%_ _%slot162665%_))
                                  (if (symbol? _%sym162668%_)
                                      (let ((_%sym162673%_ _%sym162668%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym162673%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym162668%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table162663%_
                            __tmp165964
                            _%field162666%_))))
                      (__tmp165961
                       (let ((__tmp165962
                              (let ()
                                (declare (not safe))
                                (##length _%slots162659%_))))
                         (declare (not safe))
                         (##iota __tmp165962 '1))))
                  (declare (not safe))
                  (##for-each __tmp165963 _%slots162659%_ __tmp165961))
                _%slot-table162663%_))
             (_%flags162689%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields162691%_ '#())
             (_%properties162693%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots162659%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp165965 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gc-hash-table::t
         'gc-hash-table
         _%flags162689%_
         __gc-table::t
         _%fields162691%_
         __tmp165965
         _%slot-vector162661%_
         _%slot-table162687%_
         _%properties162693%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp165967 (list))
            (__tmp165966
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'locked-hash-table::t
         'locked-hash-table
         __tmp165967
         '(table lock)
         __tmp165966
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args162656%_
        (apply make-instance locked-hash-table::t _%$args162656%_)))
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
      (let ((__tmp165969 (list))
            (__tmp165968
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'checked-hash-table::t
         'checked-hash-table
         __tmp165969
         '(table key-check)
         __tmp165968
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args162653%_
        (apply make-instance checked-hash-table::t _%$args162653%_)))
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
      (let ((__tmp165971 (list hash-table::t))
            (__tmp165970 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eq-hash-table::t::t
         'eq-hash-table
         __tmp165971
         '()
         __tmp165970
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args162650%_
        (apply make-instance eq-hash-table::t _%$args162650%_)))
    (define eqv-hash-table::t
      (let ((__tmp165973 (list hash-table::t))
            (__tmp165972 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eqv-hash-table::t::t
         'eqv-hash-table
         __tmp165973
         '()
         __tmp165972
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args162647%_
        (apply make-instance eqv-hash-table::t _%$args162647%_)))
    (define symbol-hash-table::t
      (let ((__tmp165975 (list hash-table::t))
            (__tmp165974 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'symbol-hash-table::t::t
         'symbol-hash-table
         __tmp165975
         '()
         __tmp165974
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args162644%_
        (apply make-instance symbol-hash-table::t _%$args162644%_)))
    (define string-hash-table::t
      (let ((__tmp165977 (list hash-table::t))
            (__tmp165976 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'string-hash-table::t::t
         'string-hash-table
         __tmp165977
         '()
         __tmp165976
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args162641%_
        (apply make-instance string-hash-table::t _%$args162641%_)))
    (define immediate-hash-table::t
      (let ((__tmp165979 (list hash-table::t))
            (__tmp165978 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'immediate-hash-table::t::t
         'immediate-hash-table
         __tmp165979
         '()
         __tmp165978
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args162638%_
        (apply make-instance immediate-hash-table::t _%$args162638%_)))
    (let* ((_%klass162601%_ hash-table::t)
           (_%id162604%_ 'HashTable::ref)
           (_%proc162607%_ raw-table-ref)
           (_%rebind?162610%_ '#f)
           (_%id162615%_ _%id162604%_)
           (_%proc162628%_ _%proc162607%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162601%_
       _%id162615%_
       _%proc162628%_
       _%rebind?162610%_))
    (let* ((_%klass162564%_ hash-table::t)
           (_%id162567%_ 'HashTable::set!)
           (_%proc162570%_ raw-table-set!)
           (_%rebind?162573%_ '#f)
           (_%id162578%_ _%id162567%_)
           (_%proc162591%_ _%proc162570%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162564%_
       _%id162578%_
       _%proc162591%_
       _%rebind?162573%_))
    (let* ((_%klass162527%_ hash-table::t)
           (_%id162530%_ 'HashTable::update!)
           (_%proc162533%_ raw-table-update!)
           (_%rebind?162536%_ '#f)
           (_%id162541%_ _%id162530%_)
           (_%proc162554%_ _%proc162533%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162527%_
       _%id162541%_
       _%proc162554%_
       _%rebind?162536%_))
    (let* ((_%klass162490%_ hash-table::t)
           (_%id162493%_ 'HashTable::delete!)
           (_%proc162496%_ raw-table-delete!)
           (_%rebind?162499%_ '#f)
           (_%id162504%_ _%id162493%_)
           (_%proc162517%_ _%proc162496%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162490%_
       _%id162504%_
       _%proc162517%_
       _%rebind?162499%_))
    (let* ((_%klass162453%_ hash-table::t)
           (_%id162456%_ 'HashTable::for-each)
           (_%proc162459%_ raw-table-for-each)
           (_%rebind?162462%_ '#f)
           (_%id162467%_ _%id162456%_)
           (_%proc162480%_ _%proc162459%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162453%_
       _%id162467%_
       _%proc162480%_
       _%rebind?162462%_))
    (let* ((_%klass162416%_ hash-table::t)
           (_%id162419%_ 'HashTable::length)
           (_%proc162422%_ &raw-table-count)
           (_%rebind?162425%_ '#f)
           (_%id162430%_ _%id162419%_)
           (_%proc162443%_ _%proc162422%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162416%_
       _%id162430%_
       _%proc162443%_
       _%rebind?162425%_))
    (let* ((_%klass162379%_ hash-table::t)
           (_%id162382%_ 'HashTable::copy)
           (_%proc162385%_ raw-table-copy)
           (_%rebind?162388%_ '#f)
           (_%id162393%_ _%id162382%_)
           (_%proc162406%_ _%proc162385%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162379%_
       _%id162393%_
       _%proc162406%_
       _%rebind?162388%_))
    (let* ((_%klass162342%_ hash-table::t)
           (_%id162345%_ 'HashTable::new)
           (_%proc162348%_ raw-table-new)
           (_%rebind?162351%_ '#f)
           (_%id162356%_ _%id162345%_)
           (_%proc162369%_ _%proc162348%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162342%_
       _%id162356%_
       _%proc162369%_
       _%rebind?162351%_))
    (let* ((_%klass162305%_ hash-table::t)
           (_%id162308%_ 'HashTable::clear!)
           (_%proc162311%_ raw-table-clear!)
           (_%rebind?162314%_ '#f)
           (_%id162319%_ _%id162308%_)
           (_%proc162332%_ _%proc162311%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162305%_
       _%id162319%_
       _%proc162332%_
       _%rebind?162314%_))
    (let* ((_%klass162268%_ eq-hash-table::t)
           (_%id162271%_ 'HashTable::ref)
           (_%proc162274%_ eq-table-ref)
           (_%rebind?162277%_ '#f)
           (_%id162282%_ _%id162271%_)
           (_%proc162295%_ _%proc162274%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162268%_
       _%id162282%_
       _%proc162295%_
       _%rebind?162277%_))
    (let* ((_%klass162231%_ eq-hash-table::t)
           (_%id162234%_ 'HashTable::set!)
           (_%proc162237%_ eq-table-set!)
           (_%rebind?162240%_ '#f)
           (_%id162245%_ _%id162234%_)
           (_%proc162258%_ _%proc162237%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162231%_
       _%id162245%_
       _%proc162258%_
       _%rebind?162240%_))
    (let* ((_%klass162194%_ eq-hash-table::t)
           (_%id162197%_ 'HashTable::update!)
           (_%proc162200%_ eq-table-update!)
           (_%rebind?162203%_ '#f)
           (_%id162208%_ _%id162197%_)
           (_%proc162221%_ _%proc162200%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162194%_
       _%id162208%_
       _%proc162221%_
       _%rebind?162203%_))
    (let* ((_%klass162157%_ eq-hash-table::t)
           (_%id162160%_ 'HashTable::delete!)
           (_%proc162163%_ eq-table-delete!)
           (_%rebind?162166%_ '#f)
           (_%id162171%_ _%id162160%_)
           (_%proc162184%_ _%proc162163%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162157%_
       _%id162171%_
       _%proc162184%_
       _%rebind?162166%_))
    (let* ((_%klass162120%_ eqv-hash-table::t)
           (_%id162123%_ 'HashTable::ref)
           (_%proc162126%_ eqv-table-ref)
           (_%rebind?162129%_ '#f)
           (_%id162134%_ _%id162123%_)
           (_%proc162147%_ _%proc162126%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162120%_
       _%id162134%_
       _%proc162147%_
       _%rebind?162129%_))
    (let* ((_%klass162083%_ eqv-hash-table::t)
           (_%id162086%_ 'HashTable::set!)
           (_%proc162089%_ eqv-table-set!)
           (_%rebind?162092%_ '#f)
           (_%id162097%_ _%id162086%_)
           (_%proc162110%_ _%proc162089%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162083%_
       _%id162097%_
       _%proc162110%_
       _%rebind?162092%_))
    (let* ((_%klass162046%_ eqv-hash-table::t)
           (_%id162049%_ 'HashTable::update!)
           (_%proc162052%_ eqv-table-update!)
           (_%rebind?162055%_ '#f)
           (_%id162060%_ _%id162049%_)
           (_%proc162073%_ _%proc162052%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162046%_
       _%id162060%_
       _%proc162073%_
       _%rebind?162055%_))
    (let* ((_%klass162009%_ eqv-hash-table::t)
           (_%id162012%_ 'HashTable::delete!)
           (_%proc162015%_ eqv-table-delete!)
           (_%rebind?162018%_ '#f)
           (_%id162023%_ _%id162012%_)
           (_%proc162036%_ _%proc162015%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass162009%_
       _%id162023%_
       _%proc162036%_
       _%rebind?162018%_))
    (let* ((_%klass161972%_ symbol-hash-table::t)
           (_%id161975%_ 'HashTable::ref)
           (_%proc161978%_ symbolic-table-ref)
           (_%rebind?161981%_ '#f)
           (_%id161986%_ _%id161975%_)
           (_%proc161999%_ _%proc161978%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161972%_
       _%id161986%_
       _%proc161999%_
       _%rebind?161981%_))
    (let* ((_%klass161935%_ symbol-hash-table::t)
           (_%id161938%_ 'HashTable::set!)
           (_%proc161941%_ symbolic-table-set!)
           (_%rebind?161944%_ '#f)
           (_%id161949%_ _%id161938%_)
           (_%proc161962%_ _%proc161941%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161935%_
       _%id161949%_
       _%proc161962%_
       _%rebind?161944%_))
    (let* ((_%klass161898%_ symbol-hash-table::t)
           (_%id161901%_ 'HashTable::update!)
           (_%proc161904%_ symbolic-table-update!)
           (_%rebind?161907%_ '#f)
           (_%id161912%_ _%id161901%_)
           (_%proc161925%_ _%proc161904%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161898%_
       _%id161912%_
       _%proc161925%_
       _%rebind?161907%_))
    (let* ((_%klass161861%_ symbol-hash-table::t)
           (_%id161864%_ 'HashTable::delete!)
           (_%proc161867%_ symbolic-table-delete!)
           (_%rebind?161870%_ '#f)
           (_%id161875%_ _%id161864%_)
           (_%proc161888%_ _%proc161867%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161861%_
       _%id161875%_
       _%proc161888%_
       _%rebind?161870%_))
    (let* ((_%klass161824%_ string-hash-table::t)
           (_%id161827%_ 'HashTable::ref)
           (_%proc161830%_ string-table-ref)
           (_%rebind?161833%_ '#f)
           (_%id161838%_ _%id161827%_)
           (_%proc161851%_ _%proc161830%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161824%_
       _%id161838%_
       _%proc161851%_
       _%rebind?161833%_))
    (let* ((_%klass161787%_ string-hash-table::t)
           (_%id161790%_ 'HashTable::set!)
           (_%proc161793%_ string-table-set!)
           (_%rebind?161796%_ '#f)
           (_%id161801%_ _%id161790%_)
           (_%proc161814%_ _%proc161793%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161787%_
       _%id161801%_
       _%proc161814%_
       _%rebind?161796%_))
    (let* ((_%klass161750%_ string-hash-table::t)
           (_%id161753%_ 'HashTable::update!)
           (_%proc161756%_ string-table-update!)
           (_%rebind?161759%_ '#f)
           (_%id161764%_ _%id161753%_)
           (_%proc161777%_ _%proc161756%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161750%_
       _%id161764%_
       _%proc161777%_
       _%rebind?161759%_))
    (let* ((_%klass161713%_ string-hash-table::t)
           (_%id161716%_ 'HashTable::delete!)
           (_%proc161719%_ string-table-delete!)
           (_%rebind?161722%_ '#f)
           (_%id161727%_ _%id161716%_)
           (_%proc161740%_ _%proc161719%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161713%_
       _%id161727%_
       _%proc161740%_
       _%rebind?161722%_))
    (let* ((_%klass161676%_ immediate-hash-table::t)
           (_%id161679%_ 'HashTable::ref)
           (_%proc161682%_ immediate-table-ref)
           (_%rebind?161685%_ '#f)
           (_%id161690%_ _%id161679%_)
           (_%proc161703%_ _%proc161682%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161676%_
       _%id161690%_
       _%proc161703%_
       _%rebind?161685%_))
    (let* ((_%klass161639%_ immediate-hash-table::t)
           (_%id161642%_ 'HashTable::set!)
           (_%proc161645%_ immediate-table-set!)
           (_%rebind?161648%_ '#f)
           (_%id161653%_ _%id161642%_)
           (_%proc161666%_ _%proc161645%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161639%_
       _%id161653%_
       _%proc161666%_
       _%rebind?161648%_))
    (let* ((_%klass161602%_ immediate-hash-table::t)
           (_%id161605%_ 'HashTable::update!)
           (_%proc161608%_ immediate-table-update!)
           (_%rebind?161611%_ '#f)
           (_%id161616%_ _%id161605%_)
           (_%proc161629%_ _%proc161608%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161602%_
       _%id161616%_
       _%proc161629%_
       _%rebind?161611%_))
    (let* ((_%klass161565%_ immediate-hash-table::t)
           (_%id161568%_ 'HashTable::delete!)
           (_%proc161571%_ immediate-table-delete!)
           (_%rebind?161574%_ '#f)
           (_%id161579%_ _%id161568%_)
           (_%proc161592%_ _%proc161571%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161565%_
       _%id161579%_
       _%proc161592%_
       _%rebind?161574%_))
    (let* ((_%klass161528%_ gc-hash-table::t)
           (_%id161531%_ 'HashTable::ref)
           (_%proc161534%_ gc-table-ref)
           (_%rebind?161537%_ '#f)
           (_%id161542%_ _%id161531%_)
           (_%proc161555%_ _%proc161534%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161528%_
       _%id161542%_
       _%proc161555%_
       _%rebind?161537%_))
    (let* ((_%klass161491%_ gc-hash-table::t)
           (_%id161494%_ 'HashTable::set!)
           (_%proc161497%_ gc-table-set!)
           (_%rebind?161500%_ '#f)
           (_%id161505%_ _%id161494%_)
           (_%proc161518%_ _%proc161497%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161491%_
       _%id161505%_
       _%proc161518%_
       _%rebind?161500%_))
    (let* ((_%klass161454%_ gc-hash-table::t)
           (_%id161457%_ 'HashTable::update!)
           (_%proc161460%_ gc-table-update!)
           (_%rebind?161463%_ '#f)
           (_%id161468%_ _%id161457%_)
           (_%proc161481%_ _%proc161460%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161454%_
       _%id161468%_
       _%proc161481%_
       _%rebind?161463%_))
    (let* ((_%klass161417%_ gc-hash-table::t)
           (_%id161420%_ 'HashTable::delete!)
           (_%proc161423%_ gc-table-delete!)
           (_%rebind?161426%_ '#f)
           (_%id161431%_ _%id161420%_)
           (_%proc161444%_ _%proc161423%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161417%_
       _%id161431%_
       _%proc161444%_
       _%rebind?161426%_))
    (let* ((_%klass161380%_ gc-hash-table::t)
           (_%id161383%_ 'HashTable::for-each)
           (_%proc161386%_ gc-table-for-each)
           (_%rebind?161389%_ '#f)
           (_%id161394%_ _%id161383%_)
           (_%proc161407%_ _%proc161386%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161380%_
       _%id161394%_
       _%proc161407%_
       _%rebind?161389%_))
    (let* ((_%klass161343%_ gc-hash-table::t)
           (_%id161346%_ 'HashTable::length)
           (_%proc161349%_ gc-table-length)
           (_%rebind?161352%_ '#f)
           (_%id161357%_ _%id161346%_)
           (_%proc161370%_ _%proc161349%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161343%_
       _%id161357%_
       _%proc161370%_
       _%rebind?161352%_))
    (let* ((_%klass161306%_ gc-hash-table::t)
           (_%id161309%_ 'HashTable::copy)
           (_%proc161312%_ gc-table-copy)
           (_%rebind?161315%_ '#f)
           (_%id161320%_ _%id161309%_)
           (_%proc161333%_ _%proc161312%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161306%_
       _%id161320%_
       _%proc161333%_
       _%rebind?161315%_))
    (let* ((_%klass161269%_ gc-hash-table::t)
           (_%id161272%_ 'HashTable::new)
           (_%proc161275%_ gc-table-new)
           (_%rebind?161278%_ '#f)
           (_%id161283%_ _%id161272%_)
           (_%proc161296%_ _%proc161275%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161269%_
       _%id161283%_
       _%proc161296%_
       _%rebind?161278%_))
    (let* ((_%klass161232%_ gc-hash-table::t)
           (_%id161235%_ 'HashTable::clear!)
           (_%proc161238%_ gc-table-clear!)
           (_%rebind?161241%_ '#f)
           (_%id161246%_ _%id161235%_)
           (_%proc161259%_ _%proc161238%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass161232%_
       _%id161246%_
       _%proc161259%_
       _%rebind?161241%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref151905%_
      (lambda (_%self161153%_ _%key161155%_ _%default161156%_)
        (let* ((_%self161159%_ _%self161153%_)
               (_%key161168%_ _%key161155%_)
               (_%default161176%_ _%default161156%_))
          (let ((_%h161185%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self161159%_ '1 '#f '#f)))
                (_%l161187%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self161159%_ '2 '#f '#f))))
            (let ((__tmp165982
                   (lambda ()
                     (let ((_%self150545161191%_ _%l161187%_))
                       (declare (not safe))
                       (let ((_%object161194161199%_
                              (##unchecked-structure-ref
                               _%self150545161191%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method161195161200%_
                              (##unchecked-structure-ref
                               _%self150545161191%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method161195161200%_ _%object161194161199%_)))))
                  (__tmp165981
                   (lambda ()
                     (let* ((_%self149813161203%_ _%h161185%_)
                            (_%key161206%_ _%key161168%_)
                            (_%default161209%_ _%default161176%_))
                       (declare (not safe))
                       (let ((_%object161212161217%_
                              (##unchecked-structure-ref
                               _%self149813161203%_
                               '1
                               '#f
                               'ref))
                             (_%method161213161218%_
                              (##unchecked-structure-ref
                               _%self149813161203%_
                               '8
                               '#f
                               'ref)))
                         (_%method161213161218%_
                          _%object161212161217%_
                          _%key161206%_
                          _%default161209%_)))))
                  (__tmp165980
                   (lambda ()
                     (let ((_%self150789161221%_ _%l161187%_))
                       (declare (not safe))
                       (let ((_%object161224161229%_
                              (##unchecked-structure-ref
                               _%self150789161221%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method161225161230%_
                              (##unchecked-structure-ref
                               _%self150789161221%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method161225161230%_ _%object161224161229%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp165982 __tmp165981 __tmp165980))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref151905%_
       '#f))
    (define _%locked-hash-table::HashTable::set!151907%_
      (lambda (_%self160951%_ _%key160953%_ _%value160954%_)
        (let* ((_%self160957%_ _%self160951%_)
               (_%key160966%_ _%key160953%_)
               (_%value160974%_ _%value160954%_))
          (let ((_%h160983%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self160957%_ '1 '#f '#f)))
                (_%l160985%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self160957%_ '2 '#f '#f))))
            (let ((__tmp165985
                   (lambda ()
                     (let ((_%self151033160989%_ _%l160985%_))
                       (declare (not safe))
                       (let ((_%object160992160997%_
                              (##unchecked-structure-ref
                               _%self151033160989%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method160993160998%_
                              (##unchecked-structure-ref
                               _%self151033160989%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method160993160998%_ _%object160992160997%_)))))
                  (__tmp165984
                   (lambda ()
                     (let* ((_%self150057161001%_ _%h160983%_)
                            (_%key161004%_ _%key160966%_)
                            (_%value161007%_ _%value160974%_))
                       (declare (not safe))
                       (let ((_%object161010161015%_
                              (##unchecked-structure-ref
                               _%self150057161001%_
                               '1
                               '#f
                               'set!))
                             (_%method161011161016%_
                              (##unchecked-structure-ref
                               _%self150057161001%_
                               '9
                               '#f
                               'set!)))
                         (_%method161011161016%_
                          _%object161010161015%_
                          _%key161004%_
                          _%value161007%_)))))
                  (__tmp165983
                   (lambda ()
                     (let ((_%self151277161019%_ _%l160985%_))
                       (declare (not safe))
                       (let ((_%object161022161027%_
                              (##unchecked-structure-ref
                               _%self151277161019%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method161023161028%_
                              (##unchecked-structure-ref
                               _%self151277161019%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method161023161028%_ _%object161022161027%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp165985 __tmp165984 __tmp165983))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!151907%_
       '#f))
    (define _%locked-hash-table::HashTable::update!151909%_
      (lambda (_%self160737%_ _%key160739%_ _%update160740%_ _%default160741%_)
        (let* ((_%self160744%_ _%self160737%_)
               (_%key160753%_ _%key160739%_)
               (_%update160761%_ _%update160740%_)
               (_%default160769%_ _%default160741%_))
          (let ((_%h160778%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self160744%_ '1 '#f '#f)))
                (_%l160780%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self160744%_ '2 '#f '#f))))
            (let ((__tmp165988
                   (lambda ()
                     (let ((_%self151033160784%_ _%l160780%_))
                       (declare (not safe))
                       (let ((_%object160787160792%_
                              (##unchecked-structure-ref
                               _%self151033160784%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method160788160793%_
                              (##unchecked-structure-ref
                               _%self151033160784%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method160788160793%_ _%object160787160792%_)))))
                  (__tmp165987
                   (lambda ()
                     (let* ((_%self150301160796%_ _%h160778%_)
                            (_%key160799%_ _%key160753%_)
                            (_%proc160802%_ _%update160761%_)
                            (_%default160805%_ _%default160769%_))
                       (declare (not safe))
                       (let ((_%object160808160813%_
                              (##unchecked-structure-ref
                               _%self150301160796%_
                               '1
                               '#f
                               'update!))
                             (_%method160809160814%_
                              (##unchecked-structure-ref
                               _%self150301160796%_
                               '10
                               '#f
                               'update!)))
                         (_%method160809160814%_
                          _%object160808160813%_
                          _%key160799%_
                          _%proc160802%_
                          _%default160805%_)))))
                  (__tmp165986
                   (lambda ()
                     (let ((_%self151277160817%_ _%l160780%_))
                       (declare (not safe))
                       (let ((_%object160820160825%_
                              (##unchecked-structure-ref
                               _%self151277160817%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method160821160826%_
                              (##unchecked-structure-ref
                               _%self151277160817%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method160821160826%_ _%object160820160825%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp165988 __tmp165987 __tmp165986))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!151909%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!151911%_
      (lambda (_%self160547%_ _%key160549%_)
        (let* ((_%self160552%_ _%self160547%_) (_%key160561%_ _%key160549%_))
          (let ((_%h160570%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self160552%_ '1 '#f '#f)))
                (_%l160572%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self160552%_ '2 '#f '#f))))
            (let ((__tmp165991
                   (lambda ()
                     (let ((_%self151033160576%_ _%l160572%_))
                       (declare (not safe))
                       (let ((_%object160579160584%_
                              (##unchecked-structure-ref
                               _%self151033160576%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method160580160585%_
                              (##unchecked-structure-ref
                               _%self151033160576%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method160580160585%_ _%object160579160584%_)))))
                  (__tmp165990
                   (lambda ()
                     (let* ((_%self148837160588%_ _%h160570%_)
                            (_%key160591%_ _%key160561%_))
                       (declare (not safe))
                       (let ((_%object160594160599%_
                              (##unchecked-structure-ref
                               _%self148837160588%_
                               '1
                               '#f
                               'delete!))
                             (_%method160595160600%_
                              (##unchecked-structure-ref
                               _%self148837160588%_
                               '4
                               '#f
                               'delete!)))
                         (_%method160595160600%_
                          _%object160594160599%_
                          _%key160591%_)))))
                  (__tmp165989
                   (lambda ()
                     (let ((_%self151277160603%_ _%l160572%_))
                       (declare (not safe))
                       (let ((_%object160606160611%_
                              (##unchecked-structure-ref
                               _%self151277160603%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method160607160612%_
                              (##unchecked-structure-ref
                               _%self151277160603%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method160607160612%_ _%object160606160611%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp165991 __tmp165990 __tmp165989))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!151911%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each151913%_
      (lambda (_%self160357%_ _%proc160359%_)
        (let* ((_%self160362%_ _%self160357%_) (_%proc160371%_ _%proc160359%_))
          (let ((_%h160380%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self160362%_ '1 '#f '#f)))
                (_%l160382%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self160362%_ '2 '#f '#f))))
            (let ((__tmp165994
                   (lambda ()
                     (let ((_%self150545160386%_ _%l160382%_))
                       (declare (not safe))
                       (let ((_%object160389160394%_
                              (##unchecked-structure-ref
                               _%self150545160386%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method160390160395%_
                              (##unchecked-structure-ref
                               _%self150545160386%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method160390160395%_ _%object160389160394%_)))))
                  (__tmp165993
                   (lambda ()
                     (let* ((_%self149081160398%_ _%h160380%_)
                            (_%proc160401%_ _%proc160371%_))
                       (declare (not safe))
                       (let ((_%object160404160409%_
                              (##unchecked-structure-ref
                               _%self149081160398%_
                               '1
                               '#f
                               'for-each))
                             (_%method160405160410%_
                              (##unchecked-structure-ref
                               _%self149081160398%_
                               '5
                               '#f
                               'for-each)))
                         (_%method160405160410%_
                          _%object160404160409%_
                          _%proc160401%_)))))
                  (__tmp165992
                   (lambda ()
                     (let ((_%self150789160413%_ _%l160382%_))
                       (declare (not safe))
                       (let ((_%object160416160421%_
                              (##unchecked-structure-ref
                               _%self150789160413%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method160417160422%_
                              (##unchecked-structure-ref
                               _%self150789160413%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method160417160422%_ _%object160416160421%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp165994 __tmp165993 __tmp165992))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each151913%_
       '#f))
    (define _%locked-hash-table::HashTable::length151915%_
      (lambda (_%self160172%_)
        (let ((_%self160176%_ _%self160172%_))
          (let ((_%h160186%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self160176%_ '1 '#f '#f)))
                (_%l160188%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self160176%_ '2 '#f '#f))))
            (let* ((_%$%g160190160192%_
                    (let ((__tmp165997
                           (lambda ()
                             (let ((_%self150545160199%_ _%l160188%_))
                               (declare (not safe))
                               (let ((_%object160202160207%_
                                      (##unchecked-structure-ref
                                       _%self150545160199%_
                                       '1
                                       '#f
                                       'read-lock!))
                                     (_%method160203160208%_
                                      (##unchecked-structure-ref
                                       _%self150545160199%_
                                       '2
                                       '#f
                                       'read-lock!)))
                                 (_%method160203160208%_
                                  _%object160202160207%_)))))
                          (__tmp165996
                           (lambda ()
                             (let ((_%self149325160211%_ _%h160186%_))
                               (declare (not safe))
                               (let ((_%object160214160219%_
                                      (##unchecked-structure-ref
                                       _%self149325160211%_
                                       '1
                                       '#f
                                       'length))
                                     (_%method160215160220%_
                                      (##unchecked-structure-ref
                                       _%self149325160211%_
                                       '6
                                       '#f
                                       'length)))
                                 (_%method160215160220%_
                                  _%object160214160219%_)))))
                          (__tmp165995
                           (lambda ()
                             (let ((_%self150789160223%_ _%l160188%_))
                               (declare (not safe))
                               (let ((_%object160226160231%_
                                      (##unchecked-structure-ref
                                       _%self150789160223%_
                                       '1
                                       '#f
                                       'read-unlock!))
                                     (_%method160227160232%_
                                      (##unchecked-structure-ref
                                       _%self150789160223%_
                                       '3
                                       '#f
                                       'read-unlock!)))
                                 (_%method160227160232%_
                                  _%object160226160231%_))))))
                      (declare (not safe))
                      (##dynamic-wind __tmp165997 __tmp165996 __tmp165995)))
                   (_%val160195%_ _%$%g160190160192%_))
              (if (fixnum? _%val160195%_)
                  _%val160195%_
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/hash
                     'contract:
                     '(fixnum? val)
                     'value:
                     _%val160195%_)
                    '#!void)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length151915%_
       '#f))
    (define _%locked-hash-table::HashTable::copy151917%_
      (lambda (_%self159991%_)
        (let ((_%self159995%_ _%self159991%_))
          (let ((_%h160005%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self159995%_ '1 '#f '#f)))
                (_%l160007%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self159995%_ '2 '#f '#f))))
            (let ((_%$obj160046%_
                   (let ((__tmp166000
                          (lambda ()
                            (let ((_%self150545160011%_ _%l160007%_))
                              (declare (not safe))
                              (let ((_%object160014160019%_
                                     (##unchecked-structure-ref
                                      _%self150545160011%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method160015160020%_
                                     (##unchecked-structure-ref
                                      _%self150545160011%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method160015160020%_
                                 _%object160014160019%_)))))
                         (__tmp165999
                          (lambda ()
                            (let ((_%self148593160023%_ _%h160005%_))
                              (declare (not safe))
                              (let ((_%object160026160031%_
                                     (##unchecked-structure-ref
                                      _%self148593160023%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method160027160032%_
                                     (##unchecked-structure-ref
                                      _%self148593160023%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method160027160032%_
                                 _%object160026160031%_)))))
                         (__tmp165998
                          (lambda ()
                            (let ((_%self150789160035%_ _%l160007%_))
                              (declare (not safe))
                              (let ((_%object160038160043%_
                                     (##unchecked-structure-ref
                                      _%self150789160035%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method160039160044%_
                                     (##unchecked-structure-ref
                                      _%self150789160035%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method160039160044%_
                                 _%object160038160043%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp166000 __tmp165999 __tmp165998))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj160046%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj160046%_)))
                       '#t)
                  _%$obj160046%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj160046%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy151917%_
       '#f))
    (define _%locked-hash-table::HashTable::new151919%_
      (lambda (_%self159790%_ _%size-hint159792%_)
        (let ((_%self159795%_ _%self159790%_))
          (if (or (not _%size-hint159792%_) (fixnum? _%size-hint159792%_))
              (let ((_%size-hint159811%_ _%size-hint159792%_))
                (let ((_%h159821%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self159795%_
                          '1
                          '#f
                          '#f)))
                      (_%l159823%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self159795%_
                          '2
                          '#f
                          '#f))))
                  (let ((_%$obj159865%_
                         (let ((__tmp166003
                                (lambda ()
                                  (let ((_%self150545159827%_ _%l159823%_))
                                    (declare (not safe))
                                    (let ((_%object159830159835%_
                                           (##unchecked-structure-ref
                                            _%self150545159827%_
                                            '1
                                            '#f
                                            'read-lock!))
                                          (_%method159831159836%_
                                           (##unchecked-structure-ref
                                            _%self150545159827%_
                                            '2
                                            '#f
                                            'read-lock!)))
                                      (_%method159831159836%_
                                       _%object159830159835%_)))))
                               (__tmp166002
                                (lambda ()
                                  (let* ((_%self149569159839%_ _%h159821%_)
                                         (_%size-hint159842%_
                                          _%size-hint159811%_))
                                    (declare (not safe))
                                    (let ((_%object159845159850%_
                                           (##unchecked-structure-ref
                                            _%self149569159839%_
                                            '1
                                            '#f
                                            'new))
                                          (_%method159846159851%_
                                           (##unchecked-structure-ref
                                            _%self149569159839%_
                                            '7
                                            '#f
                                            'new)))
                                      (_%method159846159851%_
                                       _%object159845159850%_
                                       _%size-hint159842%_)))))
                               (__tmp166001
                                (lambda ()
                                  (let ((_%self150789159854%_ _%l159823%_))
                                    (declare (not safe))
                                    (let ((_%object159857159862%_
                                           (##unchecked-structure-ref
                                            _%self150789159854%_
                                            '1
                                            '#f
                                            'read-unlock!))
                                          (_%method159858159863%_
                                           (##unchecked-structure-ref
                                            _%self150789159854%_
                                            '3
                                            '#f
                                            'read-unlock!)))
                                      (_%method159858159863%_
                                       _%object159857159862%_))))))
                           (declare (not safe))
                           (##dynamic-wind
                            __tmp166003
                            __tmp166002
                            __tmp166001))))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj159865%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj159865%_)))
                             '#t)
                        _%$obj159865%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj159865%_))))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@309.29-309.38"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint159792%_)
                '#!void)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::new
       _%locked-hash-table::HashTable::new151919%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!151921%_
      (lambda (_%self159612%_)
        (let ((_%self159616%_ _%self159612%_))
          (let ((_%h159626%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self159616%_ '1 '#f '#f)))
                (_%l159628%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self159616%_ '2 '#f '#f))))
            (let ((__tmp166006
                   (lambda ()
                     (let ((_%self151033159632%_ _%l159628%_))
                       (declare (not safe))
                       (let ((_%object159635159640%_
                              (##unchecked-structure-ref
                               _%self151033159632%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method159636159641%_
                              (##unchecked-structure-ref
                               _%self151033159632%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method159636159641%_ _%object159635159640%_)))))
                  (__tmp166005
                   (lambda ()
                     (let ((_%self148348159644%_ _%h159626%_))
                       (declare (not safe))
                       (let ((_%object159647159652%_
                              (##unchecked-structure-ref
                               _%self148348159644%_
                               '1
                               '#f
                               'clear!))
                             (_%method159648159653%_
                              (##unchecked-structure-ref
                               _%self148348159644%_
                               '2
                               '#f
                               'clear!)))
                         (_%method159648159653%_ _%object159647159652%_)))))
                  (__tmp166004
                   (lambda ()
                     (let ((_%self151277159656%_ _%l159628%_))
                       (declare (not safe))
                       (let ((_%object159659159664%_
                              (##unchecked-structure-ref
                               _%self151277159656%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method159660159665%_
                              (##unchecked-structure-ref
                               _%self151277159656%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method159660159665%_ _%object159659159664%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp166006 __tmp166005 __tmp166004))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!151921%_
       '#f))
    (let* ((_%klass159452%_ (macro-type-mutex))
           (_%id159455%_ 'Locker::read-lock!)
           (_%proc159458%_ mutex-lock!)
           (_%rebind?159461%_ '#f)
           (_%id159466%_ _%id159455%_)
           (_%proc159479%_ _%proc159458%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159452%_
       _%id159466%_
       _%proc159479%_
       _%rebind?159461%_))
    (let* ((_%klass159415%_ (macro-type-mutex))
           (_%id159418%_ 'Locker::read-unlock!)
           (_%proc159421%_ mutex-unlock!)
           (_%rebind?159424%_ '#f)
           (_%id159429%_ _%id159418%_)
           (_%proc159442%_ _%proc159421%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159415%_
       _%id159429%_
       _%proc159442%_
       _%rebind?159424%_))
    (let* ((_%klass159378%_ (macro-type-mutex))
           (_%id159381%_ 'Locker::write-lock!)
           (_%proc159384%_ mutex-lock!)
           (_%rebind?159387%_ '#f)
           (_%id159392%_ _%id159381%_)
           (_%proc159405%_ _%proc159384%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159378%_
       _%id159392%_
       _%proc159405%_
       _%rebind?159387%_))
    (let* ((_%klass159341%_ (macro-type-mutex))
           (_%id159344%_ 'Locker::write-unlock!)
           (_%proc159347%_ mutex-unlock!)
           (_%rebind?159350%_ '#f)
           (_%id159355%_ _%id159344%_)
           (_%proc159368%_ _%proc159347%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass159341%_
       _%id159355%_
       _%proc159368%_
       _%rebind?159350%_))
    (define _%checked-hash-table::HashTable::ref152132%_
      (lambda (_%self159282%_ _%key159283%_ _%default159284%_)
        (let* ((_%self159287%_ _%self159282%_)
               (_%key159296%_ _%key159283%_)
               (_%default159304%_ _%default159284%_))
          (declare (not safe))
          (let ((_%h159315%_
                 (##unchecked-structure-ref _%self159287%_ '1 '#f '#f))
                (_%key?159317%_
                 (##unchecked-structure-ref _%self159287%_ '2 '#f '#f)))
            (if (_%key?159317%_ _%key159296%_)
                (let* ((_%self149813159324%_ _%h159315%_)
                       (_%key159327%_ _%key159296%_)
                       (_%default159330%_ _%default159304%_))
                  (declare (not safe))
                  (let ((_%object159333159338%_
                         (##unchecked-structure-ref
                          _%self149813159324%_
                          '1
                          '#f
                          'ref))
                        (_%method159334159339%_
                         (##unchecked-structure-ref
                          _%self149813159324%_
                          '8
                          '#f
                          'ref)))
                    (_%method159334159339%_
                     _%object159333159338%_
                     _%key159327%_
                     _%default159330%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key159296%_ (cons _%default159304%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref152132%_
       '#f))
    (define _%checked-hash-table::HashTable::set!152134%_
      (lambda (_%self159100%_ _%key159101%_ _%value159102%_)
        (let* ((_%self159105%_ _%self159100%_)
               (_%key159114%_ _%key159101%_)
               (_%value159122%_ _%value159102%_))
          (declare (not safe))
          (let ((_%h159133%_
                 (##unchecked-structure-ref _%self159105%_ '1 '#f '#f))
                (_%key?159135%_
                 (##unchecked-structure-ref _%self159105%_ '2 '#f '#f)))
            (if (_%key?159135%_ _%key159114%_)
                (let* ((_%self150057159142%_ _%h159133%_)
                       (_%key159145%_ _%key159114%_)
                       (_%value159148%_ _%value159122%_))
                  (declare (not safe))
                  (let ((_%object159151159156%_
                         (##unchecked-structure-ref
                          _%self150057159142%_
                          '1
                          '#f
                          'set!))
                        (_%method159152159157%_
                         (##unchecked-structure-ref
                          _%self150057159142%_
                          '9
                          '#f
                          'set!)))
                    (_%method159152159157%_
                     _%object159151159156%_
                     _%key159145%_
                     _%value159148%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key159114%_ (cons _%value159122%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!152134%_
       '#f))
    (define _%checked-hash-table::HashTable::update!152136%_
      (lambda (_%self158905%_ _%key158906%_ _%update158907%_ _%default158908%_)
        (let* ((_%self158911%_ _%self158905%_)
               (_%key158920%_ _%key158906%_)
               (_%update158928%_ _%update158907%_)
               (_%default158936%_ _%default158908%_))
          (declare (not safe))
          (let ((_%h158947%_
                 (##unchecked-structure-ref _%self158911%_ '1 '#f '#f))
                (_%key?158949%_
                 (##unchecked-structure-ref _%self158911%_ '2 '#f '#f)))
            (if (_%key?158949%_ _%key158920%_)
                (let* ((_%self150301158957%_ _%h158947%_)
                       (_%key158960%_ _%key158920%_)
                       (_%proc158963%_ _%update158928%_)
                       (_%default158966%_ _%default158936%_))
                  (declare (not safe))
                  (let ((_%object158969158974%_
                         (##unchecked-structure-ref
                          _%self150301158957%_
                          '1
                          '#f
                          'update!))
                        (_%method158970158975%_
                         (##unchecked-structure-ref
                          _%self150301158957%_
                          '10
                          '#f
                          'update!)))
                    (_%method158970158975%_
                     _%object158969158974%_
                     _%key158960%_
                     _%proc158963%_
                     _%default158966%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key158920%_
                         (cons _%update158928%_ (cons _%default158936%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!152136%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!152138%_
      (lambda (_%self158736%_ _%key158737%_)
        (let* ((_%self158740%_ _%self158736%_) (_%key158749%_ _%key158737%_))
          (declare (not safe))
          (let ((_%h158760%_
                 (##unchecked-structure-ref _%self158740%_ '1 '#f '#f))
                (_%key?158762%_
                 (##unchecked-structure-ref _%self158740%_ '2 '#f '#f)))
            (if (_%key?158762%_ _%key158749%_)
                (let* ((_%self148837158768%_ _%h158760%_)
                       (_%key158771%_ _%key158749%_))
                  (declare (not safe))
                  (let ((_%object158774158779%_
                         (##unchecked-structure-ref
                          _%self148837158768%_
                          '1
                          '#f
                          'delete!))
                        (_%method158775158780%_
                         (##unchecked-structure-ref
                          _%self148837158768%_
                          '4
                          '#f
                          'delete!)))
                    (_%method158775158780%_
                     _%object158774158779%_
                     _%key158771%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key158749%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!152138%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each152140%_
      (lambda (_%self158567%_ _%proc158568%_)
        (let* ((_%self158571%_ _%self158567%_) (_%proc158580%_ _%proc158568%_))
          (declare (not safe))
          (let ((_%h158591%_
                 (##unchecked-structure-ref _%self158571%_ '1 '#f '#f))
                (_%key?158593%_
                 (##unchecked-structure-ref _%self158571%_ '2 '#f '#f)))
            (if '#t
                (let* ((_%self149081158599%_ _%h158591%_)
                       (_%proc158602%_ _%proc158580%_))
                  (declare (not safe))
                  (let ((_%object158605158610%_
                         (##unchecked-structure-ref
                          _%self149081158599%_
                          '1
                          '#f
                          'for-each))
                        (_%method158606158611%_
                         (##unchecked-structure-ref
                          _%self149081158599%_
                          '5
                          '#f
                          'for-each)))
                    (_%method158606158611%_
                     _%object158605158610%_
                     _%proc158602%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc158580%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each152140%_
       '#f))
    (define _%checked-hash-table::HashTable::length152142%_
      (lambda (_%self158413%_)
        (let ((_%self158416%_ _%self158413%_))
          (declare (not safe))
          (let ((_%h158428%_
                 (##unchecked-structure-ref _%self158416%_ '1 '#f '#f))
                (_%key?158430%_
                 (##unchecked-structure-ref _%self158416%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self149325158433%_ _%h158428%_))
                  (declare (not safe))
                  (let ((_%object158436158441%_
                         (##unchecked-structure-ref
                          _%self149325158433%_
                          '1
                          '#f
                          'length))
                        (_%method158437158442%_
                         (##unchecked-structure-ref
                          _%self149325158433%_
                          '6
                          '#f
                          'length)))
                    (_%method158437158442%_ _%object158436158441%_)))
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
       _%checked-hash-table::HashTable::length152142%_
       '#f))
    (define _%checked-hash-table::HashTable::copy152144%_
      (lambda (_%self158259%_)
        (let ((_%self158262%_ _%self158259%_))
          (declare (not safe))
          (let ((_%h158274%_
                 (##unchecked-structure-ref _%self158262%_ '1 '#f '#f))
                (_%key?158276%_
                 (##unchecked-structure-ref _%self158262%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self148593158279%_ _%h158274%_))
                  (declare (not safe))
                  (let ((_%object158282158287%_
                         (##unchecked-structure-ref
                          _%self148593158279%_
                          '1
                          '#f
                          'copy))
                        (_%method158283158288%_
                         (##unchecked-structure-ref
                          _%self148593158279%_
                          '3
                          '#f
                          'copy)))
                    (_%method158283158288%_ _%object158282158287%_)))
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
       _%checked-hash-table::HashTable::copy152144%_
       '#f))
    (define _%checked-hash-table::HashTable::new152146%_
      (lambda (_%self158085%_ _%size-hint158086%_)
        (let ((_%self158089%_ _%self158085%_))
          (if (or (not _%size-hint158086%_) (fixnum? _%size-hint158086%_))
              (let ((_%size-hint158105%_ _%size-hint158086%_))
                (declare (not safe))
                (let ((_%h158117%_
                       (##unchecked-structure-ref _%self158089%_ '1 '#f '#f))
                      (_%key?158119%_
                       (##unchecked-structure-ref _%self158089%_ '2 '#f '#f)))
                  (if '#!void
                      (let* ((_%self149569158122%_ _%h158117%_)
                             (_%size-hint158125%_ _%size-hint158105%_))
                        (declare (not safe))
                        (let ((_%object158128158133%_
                               (##unchecked-structure-ref
                                _%self149569158122%_
                                '1
                                '#f
                                'new))
                              (_%method158129158134%_
                               (##unchecked-structure-ref
                                _%self149569158122%_
                                '7
                                '#f
                                'new)))
                          (_%method158129158134%_
                           _%object158128158133%_
                           _%size-hint158125%_)))
                      (begin
                        (raise-contract-violation-error
                         '"invalid key"
                         'context:
                         '&HashTable-new
                         'value:
                         (cons _%size-hint158105%_ '()))
                        '#!void))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@368.35-368.44"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint158086%_)
                '#!void)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::new
       _%checked-hash-table::HashTable::new152146%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!152148%_
      (lambda (_%self157931%_)
        (let ((_%self157934%_ _%self157931%_))
          (declare (not safe))
          (let ((_%h157946%_
                 (##unchecked-structure-ref _%self157934%_ '1 '#f '#f))
                (_%key?157948%_
                 (##unchecked-structure-ref _%self157934%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self148348157951%_ _%h157946%_))
                  (declare (not safe))
                  (let ((_%object157954157959%_
                         (##unchecked-structure-ref
                          _%self148348157951%_
                          '1
                          '#f
                          'clear!))
                        (_%method157955157960%_
                         (##unchecked-structure-ref
                          _%self148348157951%_
                          '2
                          '#f
                          'clear!)))
                    (_%method157955157960%_ _%object157954157959%_)))
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
       _%checked-hash-table::HashTable::clear!152148%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table157801%_
               _%count157802%_
               _%free157803%_
               _%hash157804%_
               _%test157805%_
               _%seed157806%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table157801%_
           _%count157802%_
           _%free157803%_
           _%hash157804%_
           _%test157805%_
           _%seed157806%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords157211%_
               _%$%size-hint157201157212%_
               _%$%seed157202157213%_
               _%$%test157203157214%_
               _%$%hash157204157215%_
               _%$%lock157205157216%_
               _%$%check157206157217%_
               _%$%weak-keys157207157218%_
               _%$%weak-values157208157219%_)
        (let* ((_%size-hint157221%_
                (if (eq? _%$%size-hint157201157212%_ absent-value)
                    '#f
                    _%$%size-hint157201157212%_))
               (_%seed157223%_
                (if (eq? _%$%seed157202157213%_ absent-value)
                    '#f
                    _%$%seed157202157213%_))
               (_%test157225%_
                (if (eq? _%$%test157203157214%_ absent-value)
                    equal?
                    _%$%test157203157214%_))
               (_%hash157227%_
                (if (eq? _%$%hash157204157215%_ absent-value)
                    '#f
                    _%$%hash157204157215%_))
               (_%lock157229%_
                (if (eq? _%$%lock157205157216%_ absent-value)
                    '#f
                    _%$%lock157205157216%_))
               (_%check157231%_
                (if (eq? _%$%check157206157217%_ absent-value)
                    '#f
                    _%$%check157206157217%_))
               (_%weak-keys157233%_
                (if (eq? _%$%weak-keys157207157218%_ absent-value)
                    '#f
                    _%$%weak-keys157207157218%_))
               (_%weak-values157235%_
                (if (eq? _%$%weak-values157208157219%_ absent-value)
                    '#f
                    _%$%weak-values157208157219%_)))
          (letrec ((_%table-seed157238%_
                    (lambda ()
                      (if (fixnum? _%seed157223%_)
                          _%seed157223%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock157382%_
                    (lambda (_%ht157769%_)
                      (let ((_%ht157772%_ _%ht157769%_))
                        (if _%lock157229%_
                            (let ((_%$obj157784%_
                                   (let ((__tmp166007
                                          (let ((_%$obj157781%_
                                                 _%lock157229%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj157781%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj157781%_)))
                                                     '#t)
                                                _%$obj157781%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj157781%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht157772%_
                                      __tmp166007))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj157784%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj157784%_)))
                                       '#t)
                                  _%$obj157784%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj157784%_))))
                            _%ht157772%_))))
                   (_%wrap-lock157383%_
                    (lambda (_%ht157757%_)
                      (let ((_%ht157760%_ _%ht157757%_))
                        (_%__wrap-lock157382%_ _%ht157760%_))))
                   (_%__wrap-checked157505%_
                    (lambda (_%ht157741%_ _%implicit157742%_)
                      (let ((_%ht157745%_ _%ht157741%_))
                        (if _%check157231%_
                            (let ((_%$obj157754%_
                                   (let ((__tmp166008
                                          (if (procedure? _%check157231%_)
                                              _%check157231%_
                                              _%implicit157742%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht157745%_
                                      __tmp166008))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj157754%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj157754%_)))
                                       '#t)
                                  _%$obj157754%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj157754%_))))
                            _%ht157745%_))))
                   (_%wrap-checked157506%_
                    (lambda (_%ht157728%_ _%implicit157729%_)
                      (let ((_%ht157732%_ _%ht157728%_))
                        (_%__wrap-checked157505%_
                         _%ht157732%_
                         _%implicit157729%_))))
                   (_%make157507%_
                    (lambda (_%kons157676%_
                             _%key?157677%_
                             _%hash157678%_
                             _%test157679%_)
                      (let* ((_%size157682%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint157221%_)))
                             (_%table157684%_
                              (let ((__tmp166009 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size157682%_ __tmp166009)))
                             (_%ht157689%_
                              (let ((_%$obj157686%_
                                     (_%kons157676%_
                                      _%table157684%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size157682%_ '2))
                                      _%hash157678%_
                                      _%test157679%_
                                      (_%table-seed157238%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj157686%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj157686%_)))
                                         '#t)
                                    _%$obj157686%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj157686%_)))))
                             (_%ht157711%_
                              (let* ((_%ht157692%_ _%ht157689%_)
                                     (_%ht157696%_ _%ht157692%_))
                                (_%__wrap-lock157382%_ _%ht157696%_)))
                             (_%implicit157714%_ _%key?157677%_)
                             (_%ht157718%_ _%ht157711%_))
                        (_%__wrap-checked157505%_
                         _%ht157718%_
                         _%implicit157714%_))))
                   (_%make-gc-hash-table157508%_
                    (lambda ()
                      (let* ((_%ht157641%_
                              (let ((_%$obj157638%_
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint157221%_
                                        gc-hash-table::t))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj157638%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj157638%_)))
                                         '#t)
                                    _%$obj157638%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj157638%_)))))
                             (_%ht157659%_
                              (let* ((_%ht157643%_ _%ht157641%_)
                                     (_%ht157647%_ _%ht157643%_))
                                (_%__wrap-lock157382%_ _%ht157647%_)))
                             (_%implicit157662%_ true)
                             (_%ht157666%_ _%ht157659%_))
                        (_%__wrap-checked157505%_
                         _%ht157666%_
                         _%implicit157662%_))))
                   (_%make-gambit-table157509%_
                    (lambda ()
                      (let* ((_%size157578%_
                              (let ((_%$e157575%_ _%size-hint157221%_))
                                (if _%$e157575%_
                                    _%$e157575%_
                                    (macro-absent-obj))))
                             (_%test157583%_
                              (let ((_%$e157580%_ _%test157225%_))
                                (if _%$e157580%_ _%$e157580%_ equal?)))
                             (_%hash157591%_
                              (let ((_%$e157585%_ _%hash157227%_))
                                (if _%$e157585%_
                                    _%$e157585%_
                                    (if (eq? _%test157583%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test157583%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht157596%_
                              (let ((_%$obj157593%_
                                     (make-table
                                      'size:
                                      _%size157578%_
                                      'test:
                                      _%test157583%_
                                      'hash:
                                      _%hash157591%_
                                      'weak-keys:
                                      _%weak-keys157233%_
                                      'weak-values:
                                      _%weak-values157235%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj157593%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj157593%_)))
                                         '#t)
                                    _%$obj157593%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj157593%_)))))
                             (_%ht157619%_
                              (let* ((_%ht157599%_ _%ht157596%_)
                                     (_%ht157603%_ _%ht157599%_))
                                (_%__wrap-lock157382%_ _%ht157603%_)))
                             (_%implicit157622%_ true)
                             (_%ht157626%_ _%ht157619%_))
                        (_%__wrap-checked157505%_
                         _%ht157626%_
                         _%implicit157622%_)))))
            (if (or _%weak-keys157233%_ _%weak-values157235%_)
                (_%make-gambit-table157509%_)
                (if (and (or (eq? _%test157225%_ eq?)
                             (eq? _%test157225%_ ##eq?))
                         (or (not _%hash157227%_)
                             (eq? _%hash157227%_ eq?-hash)
                             (eq? _%hash157227%_ eq-hash))
                         (not _%seed157223%_))
                    (_%make-gc-hash-table157508%_)
                    (if (and (or (eq? _%test157225%_ eq?)
                                 (eq? _%test157225%_ ##eq?))
                             (or (not _%hash157227%_)
                                 (eq? _%hash157227%_ eq?-hash)
                                 (eq? _%hash157227%_ eq-hash)))
                        (_%make157507%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test157225%_ eqv?)
                                     (eq? _%test157225%_ ##eqv?))
                                 (or (not _%hash157227%_)
                                     (eq? _%hash157227%_ eqv?-hash)
                                     (eq? _%hash157227%_ eqv-hash)))
                            (_%make157507%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test157225%_ eq?)
                                         (eq? _%test157225%_ ##eq?))
                                     (or (eq? _%hash157227%_ symbolic-hash)
                                         (eq? _%hash157227%_ ##symbol-hash)))
                                (_%make157507%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test157225%_ eq?)
                                             (eq? _%test157225%_ ##eq?))
                                         (eq? _%hash157227%_ immediate-hash))
                                    (_%make157507%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test157225%_ equal?)
                                                 (eq? _%test157225%_ ##equal?)
                                                 (eq? _%test157225%_ string=?)
                                                 (eq? _%test157225%_
                                                      ##string=?))
                                             (or (eq? _%hash157227%_
                                                      string-hash)
                                                 (eq? _%hash157227%_
                                                      ##string=?-hash)))
                                        (_%make157507%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test157225%_ equal?)
                                                 (not _%hash157227%_))
                                            (_%make157507%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test157225%_)
                                                (if (procedure? _%hash157227%_)
                                                    (_%make157507%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash157227%_
                                                     _%test157225%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash157227%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test157225%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords157791%_ . _%args157792%_)
        (apply make-hash-table__%
               _%@@keywords157791%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords157791%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords157791%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords157791%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords157791%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords157791%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords157791%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords157791%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords157791%_
                  'weak-values:
                  absent-value))
               _%args157792%_)))
    (define make-hash-table
      (lambda _%$%args157209157798%_
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
               _%$%args157209157798%_)))
    (define make-hash-table-eq
      (lambda _%args157198%_
        (apply make-hash-table 'test: eq? _%args157198%_)))
    (define make-hash-table-eqv
      (lambda _%args157196%_
        (apply make-hash-table 'test: eqv? _%args157196%_)))
    (define make-hash-table-symbolic
      (lambda _%args157194%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args157194%_)))
    (define make-hash-table-string
      (lambda _%args157192%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args157192%_)))
    (define make-hash-table-immediate
      (lambda _%args157190%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args157190%_)))
    (define list->hash-table
      (lambda (_%lst157187%_ . _%args157188%_)
        (list->hash-table!
         _%lst157187%_
         (apply make-hash-table
                'size:
                (length _%lst157187%_)
                _%args157188%_))))
    (define list->hash-table-eq
      (lambda (_%lst157184%_ . _%args157185%_)
        (list->hash-table!
         _%lst157184%_
         (apply make-hash-table-eq
                'size:
                (length _%lst157184%_)
                _%args157185%_))))
    (define list->hash-table-eqv
      (lambda (_%lst157181%_ . _%args157182%_)
        (list->hash-table!
         _%lst157181%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst157181%_)
                _%args157182%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst157178%_ . _%args157179%_)
        (list->hash-table!
         _%lst157178%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst157178%_)
                _%args157179%_))))
    (define list->hash-table-string
      (lambda (_%lst157175%_ . _%args157176%_)
        (list->hash-table!
         _%lst157175%_
         (apply make-hash-table-string
                'size:
                (length _%lst157175%_)
                _%args157176%_))))
    (define list->hash-table-immediate
      (lambda (_%lst157172%_ . _%args157173%_)
        (list->hash-table!
         _%lst157172%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst157172%_)
                _%args157173%_))))
    (define list->hash-table!
      (lambda (_%lst157123%_ _%h157124%_)
        (for-each
         (lambda (_%el157126%_)
           (let* ((_%$%el157127157134%_ _%el157126%_)
                  (_%$%E157129157137%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%$%el157127157134%_
                              '([k . v])))
                     '#!void))
                  (_%$%K157130157160%_
                   (lambda (_%v157140%_ _%k157141%_)
                     (let* ((_%self150057157143%_ _%h157124%_)
                            (_%key157146%_ _%k157141%_)
                            (_%value157149%_ _%v157140%_))
                       (declare (not safe))
                       (let ((_%object157152157157%_
                              (##unchecked-structure-ref
                               _%self150057157143%_
                               '1
                               '#f
                               'set!))
                             (_%method157153157158%_
                              (##unchecked-structure-ref
                               _%self150057157143%_
                               '9
                               '#f
                               'set!)))
                         (_%method157153157158%_
                          _%object157152157157%_
                          _%key157146%_
                          _%value157149%_))))))
             (if (pair? _%$%el157127157134%_)
                 (let ((_%$%hd157131157163%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%el157127157134%_)))
                       (_%$%tl157132157165%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%el157127157134%_))))
                   (let* ((_%k157168%_ _%$%hd157131157163%_)
                          (_%v157170%_ _%$%tl157132157165%_))
                     (_%$%K157130157160%_ _%v157170%_ _%k157168%_)))
                 (_%$%E157129157137%_))))
         _%lst157123%_)
        _%h157124%_))
    (define plist->hash-table
      (lambda (_%lst157120%_ . _%args157121%_)
        (plist->hash-table!
         _%lst157120%_
         (apply make-hash-table
                'size:
                (length _%lst157120%_)
                _%args157121%_))))
    (define plist->hash-table-eq
      (lambda (_%lst157117%_ . _%args157118%_)
        (plist->hash-table!
         _%lst157117%_
         (apply make-hash-table-eq
                'size:
                (length _%lst157117%_)
                _%args157118%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst157114%_ . _%args157115%_)
        (plist->hash-table!
         _%lst157114%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst157114%_)
                _%args157115%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst157111%_ . _%args157112%_)
        (plist->hash-table!
         _%lst157111%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst157111%_)
                _%args157112%_))))
    (define plist->hash-table-string
      (lambda (_%lst157108%_ . _%args157109%_)
        (plist->hash-table!
         _%lst157108%_
         (apply make-hash-table-string
                'size:
                (length _%lst157108%_)
                _%args157109%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst157105%_ . _%args157106%_)
        (plist->hash-table!
         _%lst157105%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst157105%_)
                _%args157106%_))))
    (define plist->hash-table!
      (lambda (_%lst157028%_ _%h157029%_)
        (let _%loop157031%_ ((_%rest157033%_ _%lst157028%_))
          (let* ((_%$%rest157034157046%_ _%rest157033%_)
                 (_%$%else157037157054%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst157028%_)))))
            (let ((_%$%K157040157086%_
                   (lambda (_%rest157065%_ _%val157066%_ _%key157067%_)
                     (let* ((_%self150057157069%_ _%h157029%_)
                            (_%key157072%_ _%key157067%_)
                            (_%value157075%_ _%val157066%_))
                       (declare (not safe))
                       (let ((_%object157078157083%_
                              (##unchecked-structure-ref
                               _%self150057157069%_
                               '1
                               '#f
                               'set!))
                             (_%method157079157084%_
                              (##unchecked-structure-ref
                               _%self150057157069%_
                               '9
                               '#f
                               'set!)))
                         (_%method157079157084%_
                          _%object157078157083%_
                          _%key157072%_
                          _%value157075%_)))
                     (_%loop157031%_ _%rest157065%_)))
                  (_%$%K157039157059%_ (lambda () _%h157029%_)))
              (let ((_%$%try-match157036157062%_
                     (lambda ()
                       (if (null? _%$%rest157034157046%_)
                           (_%$%K157039157059%_)
                           (_%$%else157037157054%_)))))
                (if (pair? _%$%rest157034157046%_)
                    (let ((_%$%tl157042157091%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest157034157046%_)))
                          (_%$%hd157041157089%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest157034157046%_))))
                      (if (pair? _%$%tl157042157091%_)
                          (let ((_%$%tl157044157098%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl157042157091%_)))
                                (_%$%hd157043157096%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl157042157091%_))))
                            (let ((_%key157094%_ _%$%hd157041157089%_)
                                  (_%val157101%_ _%$%hd157043157096%_)
                                  (_%rest157103%_ _%$%tl157044157098%_))
                              (_%$%K157040157086%_
                               _%rest157103%_
                               _%val157101%_
                               _%key157094%_)))
                          (_%$%else157037157054%_)))
                    (_%$%try-match157036157062%_))))))))
    (define __hash-length
      (lambda (_%h156977%_)
        (let* ((_%h156980%_ _%h156977%_)
               (_%self149326156989%_ _%h156980%_)
               (_%self149326156996%_
                (let ((_%$obj156993%_ _%self149326156989%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156993%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156993%_)))
                           '#t)
                      _%$obj156993%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156993%_)))))
               (_%self149326156998%_ _%self149326156996%_))
          (if __DEBUG
              (let ((_%val157018%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object157010157015%_
                              (##unchecked-structure-ref
                               _%self149326156998%_
                               '1
                               '#f
                               'length))
                             (_%method157011157016%_
                              (##unchecked-structure-ref
                               _%self149326156998%_
                               '6
                               '#f
                               'length)))
                         (_%method157011157016%_ _%object157010157015%_)))))
                (if (fixnum? _%val157018%_)
                    _%val157018%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val157018%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object157020157025%_
                       (##unchecked-structure-ref
                        _%self149326156998%_
                        '1
                        '#f
                        'length))
                      (_%method157021157026%_
                       (##unchecked-structure-ref
                        _%self149326156998%_
                        '6
                        '#f
                        'length)))
                  (_%method157021157026%_ _%object157020157025%_)))))))
    (define hash-length
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
          (__hash-length _%h156967%_))))
    (define __hash-ref__%
      (lambda (_%h156887%_ _%key156888%_ _%default156889%_)
        (let* ((_%h156892%_ _%h156887%_)
               (_%result156945%_
                (let* ((_%self149814156901%_ _%h156892%_)
                       (_%key156904%_ _%key156888%_)
                       (_%default156907%_ _%default156889%_)
                       (_%self149814156914%_
                        (let ((_%$obj156911%_ _%self149814156901%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj156911%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj156911%_)))
                                   '#t)
                              _%$obj156911%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj156911%_)))))
                       (_%self149814156916%_ _%self149814156914%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object156930156935%_
                               (##unchecked-structure-ref
                                _%self149814156916%_
                                '1
                                '#f
                                'ref))
                              (_%method156931156936%_
                               (##unchecked-structure-ref
                                _%self149814156916%_
                                '8
                                '#f
                                'ref)))
                          (_%method156931156936%_
                           _%object156930156935%_
                           _%key156904%_
                           _%default156907%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object156937156942%_
                               (##unchecked-structure-ref
                                _%self149814156916%_
                                '1
                                '#f
                                'ref))
                              (_%method156938156943%_
                               (##unchecked-structure-ref
                                _%self149814156916%_
                                '8
                                '#f
                                'ref)))
                          (_%method156938156943%_
                           _%object156937156942%_
                           _%key156904%_
                           _%default156907%_)))))))
          (if (eq? _%result156945%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h156892%_
               'key:
               _%key156888%_)
              _%result156945%_))))
    (define __hash-ref__0
      (lambda (_%h156950%_ _%key156951%_)
        (let ((_%default156953%_ absent-obj))
          (__hash-ref__% _%h156950%_ _%key156951%_ _%default156953%_))))
    (define __hash-ref
      (lambda _g166010_
        (let ((_g166011_ (let () (declare (not safe)) (##length _g166010_))))
          (cond ((let () (declare (not safe)) (##fx= _g166011_ 2))
                 (apply __hash-ref__0 _g166010_))
                ((let () (declare (not safe)) (##fx= _g166011_ 3))
                 (apply __hash-ref__% _g166010_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g166010_))))))
    (define hash-ref__%
      (lambda (_%h156854%_ _%key156855%_ _%default156856%_)
        (let* ((_%h156862%_
                (let ((_%$obj156859%_ _%h156854%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156859%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156859%_)))
                           '#t)
                      _%$obj156859%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156859%_)))))
               (_%h156864%_ _%h156862%_))
          (__hash-ref__% _%h156864%_ _%key156855%_ _%default156856%_))))
    (define hash-ref__0
      (lambda (_%h156877%_ _%key156878%_)
        (let ((_%default156880%_ absent-obj))
          (hash-ref__% _%h156877%_ _%key156878%_ _%default156880%_))))
    (define hash-ref
      (lambda _g166012_
        (let ((_g166013_ (let () (declare (not safe)) (##length _g166012_))))
          (cond ((let () (declare (not safe)) (##fx= _g166013_ 2))
                 (apply hash-ref__0 _g166012_))
                ((let () (declare (not safe)) (##fx= _g166013_ 3))
                 (apply hash-ref__% _g166012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g166012_))))))
    (define __hash-get
      (lambda (_%h156796%_ _%key156797%_)
        (let* ((_%h156800%_ _%h156796%_)
               (_%self149814156809%_ _%h156800%_)
               (_%key156812%_ _%key156797%_)
               (_%default156815%_ '#f)
               (_%self149814156822%_
                (let ((_%$obj156819%_ _%self149814156809%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156819%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156819%_)))
                           '#t)
                      _%$obj156819%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156819%_)))))
               (_%self149814156824%_ _%self149814156822%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object156838156843%_
                       (##unchecked-structure-ref
                        _%self149814156824%_
                        '1
                        '#f
                        'ref))
                      (_%method156839156844%_
                       (##unchecked-structure-ref
                        _%self149814156824%_
                        '8
                        '#f
                        'ref)))
                  (_%method156839156844%_
                   _%object156838156843%_
                   _%key156812%_
                   _%default156815%_)))
              (let ()
                (declare (not safe))
                (let ((_%object156845156850%_
                       (##unchecked-structure-ref
                        _%self149814156824%_
                        '1
                        '#f
                        'ref))
                      (_%method156846156851%_
                       (##unchecked-structure-ref
                        _%self149814156824%_
                        '8
                        '#f
                        'ref)))
                  (_%method156846156851%_
                   _%object156845156850%_
                   _%key156812%_
                   _%default156815%_)))))))
    (define hash-get
      (lambda (_%h156777%_ _%key156778%_)
        (let* ((_%h156784%_
                (let ((_%$obj156781%_ _%h156777%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156781%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156781%_)))
                           '#t)
                      _%$obj156781%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156781%_)))))
               (_%h156786%_ _%h156784%_))
          (__hash-get _%h156786%_ _%key156778%_))))
    (define __hash-put!
      (lambda (_%h156719%_ _%key156720%_ _%value156721%_)
        (let* ((_%h156724%_ _%h156719%_)
               (_%self150058156733%_ _%h156724%_)
               (_%key156736%_ _%key156720%_)
               (_%value156739%_ _%value156721%_)
               (_%self150058156746%_
                (let ((_%$obj156743%_ _%self150058156733%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156743%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156743%_)))
                           '#t)
                      _%$obj156743%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156743%_)))))
               (_%self150058156748%_ _%self150058156746%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object156762156767%_
                       (##unchecked-structure-ref
                        _%self150058156748%_
                        '1
                        '#f
                        'set!))
                      (_%method156763156768%_
                       (##unchecked-structure-ref
                        _%self150058156748%_
                        '9
                        '#f
                        'set!)))
                  (_%method156763156768%_
                   _%object156762156767%_
                   _%key156736%_
                   _%value156739%_)))
              (let ()
                (declare (not safe))
                (let ((_%object156769156774%_
                       (##unchecked-structure-ref
                        _%self150058156748%_
                        '1
                        '#f
                        'set!))
                      (_%method156770156775%_
                       (##unchecked-structure-ref
                        _%self150058156748%_
                        '9
                        '#f
                        'set!)))
                  (_%method156770156775%_
                   _%object156769156774%_
                   _%key156736%_
                   _%value156739%_)))))))
    (define hash-put!
      (lambda (_%h156699%_ _%key156700%_ _%value156701%_)
        (let* ((_%h156707%_
                (let ((_%$obj156704%_ _%h156699%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156704%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156704%_)))
                           '#t)
                      _%$obj156704%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156704%_)))))
               (_%h156709%_ _%h156707%_))
          (__hash-put! _%h156709%_ _%key156700%_ _%value156701%_))))
    (define __hash-update!__%
      (lambda (_%h156612%_ _%key156613%_ _%update156614%_ _%default156615%_)
        (let* ((_%h156618%_ _%h156612%_)
               (_%self150302156627%_ _%h156618%_)
               (_%key156630%_ _%key156613%_)
               (_%proc156633%_ _%update156614%_)
               (_%default156636%_ _%default156615%_)
               (_%self150302156643%_
                (let ((_%$obj156640%_ _%self150302156627%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156640%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156640%_)))
                           '#t)
                      _%$obj156640%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156640%_)))))
               (_%self150302156645%_ _%self150302156643%_))
          (if (procedure? _%proc156633%_)
              (let ((_%proc156661%_ _%proc156633%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object156670156675%_
                             (##unchecked-structure-ref
                              _%self150302156645%_
                              '1
                              '#f
                              'update!))
                            (_%method156671156676%_
                             (##unchecked-structure-ref
                              _%self150302156645%_
                              '10
                              '#f
                              'update!)))
                        (_%method156671156676%_
                         _%object156670156675%_
                         _%key156630%_
                         _%proc156661%_
                         _%default156636%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object156677156682%_
                             (##unchecked-structure-ref
                              _%self150302156645%_
                              '1
                              '#f
                              'update!))
                            (_%method156678156683%_
                             (##unchecked-structure-ref
                              _%self150302156645%_
                              '10
                              '#f
                              'update!)))
                        (_%method156678156683%_
                         _%object156677156682%_
                         _%key156630%_
                         _%proc156661%_
                         _%default156636%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc156633%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h156688%_ _%key156689%_ _%update156690%_)
        (let ((_%default156692%_ '#!void))
          (__hash-update!__%
           _%h156688%_
           _%key156689%_
           _%update156690%_
           _%default156692%_))))
    (define __hash-update!
      (lambda _g166014_
        (let ((_g166015_ (let () (declare (not safe)) (##length _g166014_))))
          (cond ((let () (declare (not safe)) (##fx= _g166015_ 3))
                 (apply __hash-update!__0 _g166014_))
                ((let () (declare (not safe)) (##fx= _g166015_ 4))
                 (apply __hash-update!__% _g166014_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g166014_))))))
    (define hash-update!__%
      (lambda (_%h156576%_ _%key156577%_ _%update156578%_ _%default156579%_)
        (let* ((_%h156585%_
                (let ((_%$obj156582%_ _%h156576%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156582%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156582%_)))
                           '#t)
                      _%$obj156582%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156582%_)))))
               (_%h156587%_ _%h156585%_))
          (__hash-update!__%
           _%h156587%_
           _%key156577%_
           _%update156578%_
           _%default156579%_))))
    (define hash-update!__0
      (lambda (_%h156600%_ _%key156601%_ _%update156602%_)
        (let ((_%default156604%_ '#!void))
          (hash-update!__%
           _%h156600%_
           _%key156601%_
           _%update156602%_
           _%default156604%_))))
    (define hash-update!
      (lambda _g166016_
        (let ((_g166017_ (let () (declare (not safe)) (##length _g166016_))))
          (cond ((let () (declare (not safe)) (##fx= _g166017_ 3))
                 (apply hash-update!__0 _g166016_))
                ((let () (declare (not safe)) (##fx= _g166017_ 4))
                 (apply hash-update!__% _g166016_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g166016_))))))
    (define __hash-remove!
      (lambda (_%h156522%_ _%key156523%_)
        (let* ((_%h156526%_ _%h156522%_)
               (_%self148838156535%_ _%h156526%_)
               (_%key156538%_ _%key156523%_)
               (_%self148838156545%_
                (let ((_%$obj156542%_ _%self148838156535%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156542%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156542%_)))
                           '#t)
                      _%$obj156542%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156542%_)))))
               (_%self148838156547%_ _%self148838156545%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object156560156565%_
                       (##unchecked-structure-ref
                        _%self148838156547%_
                        '1
                        '#f
                        'delete!))
                      (_%method156561156566%_
                       (##unchecked-structure-ref
                        _%self148838156547%_
                        '4
                        '#f
                        'delete!)))
                  (_%method156561156566%_
                   _%object156560156565%_
                   _%key156538%_)))
              (let ()
                (declare (not safe))
                (let ((_%object156567156572%_
                       (##unchecked-structure-ref
                        _%self148838156547%_
                        '1
                        '#f
                        'delete!))
                      (_%method156568156573%_
                       (##unchecked-structure-ref
                        _%self148838156547%_
                        '4
                        '#f
                        'delete!)))
                  (_%method156568156573%_
                   _%object156567156572%_
                   _%key156538%_)))))))
    (define hash-remove!
      (lambda (_%h156503%_ _%key156504%_)
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
          (__hash-remove! _%h156512%_ _%key156504%_))))
    (define __hash-key?
      (lambda (_%h156446%_ _%k156447%_)
        (let ((_%h156450%_ _%h156446%_))
          (not (eq? (let* ((_%self149814156459%_ _%h156450%_)
                           (_%key156462%_ _%k156447%_)
                           (_%default156465%_ absent-value)
                           (_%self149814156472%_
                            (let ((_%$obj156469%_ _%self149814156459%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj156469%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj156469%_)))
                                       '#t)
                                  _%$obj156469%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj156469%_)))))
                           (_%self149814156474%_ _%self149814156472%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object156488156493%_
                                   (##unchecked-structure-ref
                                    _%self149814156474%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method156489156494%_
                                   (##unchecked-structure-ref
                                    _%self149814156474%_
                                    '8
                                    '#f
                                    'ref)))
                              (_%method156489156494%_
                               _%object156488156493%_
                               _%key156462%_
                               _%default156465%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object156495156500%_
                                   (##unchecked-structure-ref
                                    _%self149814156474%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method156496156501%_
                                   (##unchecked-structure-ref
                                    _%self149814156474%_
                                    '8
                                    '#f
                                    'ref)))
                              (_%method156496156501%_
                               _%object156495156500%_
                               _%key156462%_
                               _%default156465%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h156427%_ _%k156428%_)
        (let* ((_%h156434%_
                (let ((_%$obj156431%_ _%h156427%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156431%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156431%_)))
                           '#t)
                      _%$obj156431%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156431%_)))))
               (_%h156436%_ _%h156434%_))
          (__hash-key? _%h156436%_ _%k156428%_))))
    (define __hash->list
      (lambda (_%h156359%_)
        (let* ((_%h156362%_ _%h156359%_) (_%lst156371%_ '()))
          (let* ((_%self149082156373%_ _%h156362%_)
                 (_%proc156379%_
                  (lambda (_%k156376%_ _%v156377%_)
                    (set! _%lst156371%_
                          (cons (cons _%k156376%_ _%v156377%_)
                                _%lst156371%_))))
                 (_%self149082156386%_
                  (let ((_%$obj156383%_ _%self149082156373%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj156383%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj156383%_)))
                             '#t)
                        _%$obj156383%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj156383%_)))))
                 (_%self149082156388%_ _%self149082156386%_)
                 (_%proc156403%_ _%proc156379%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object156412156417%_
                         (##unchecked-structure-ref
                          _%self149082156388%_
                          '1
                          '#f
                          'for-each))
                        (_%method156413156418%_
                         (##unchecked-structure-ref
                          _%self149082156388%_
                          '5
                          '#f
                          'for-each)))
                    (_%method156413156418%_
                     _%object156412156417%_
                     _%proc156403%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object156419156424%_
                         (##unchecked-structure-ref
                          _%self149082156388%_
                          '1
                          '#f
                          'for-each))
                        (_%method156420156425%_
                         (##unchecked-structure-ref
                          _%self149082156388%_
                          '5
                          '#f
                          'for-each)))
                    (_%method156420156425%_
                     _%object156419156424%_
                     _%proc156403%_)))))
          _%lst156371%_)))
    (define hash->list
      (lambda (_%h156341%_)
        (let* ((_%h156347%_
                (let ((_%$obj156344%_ _%h156341%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156344%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156344%_)))
                           '#t)
                      _%$obj156344%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156344%_)))))
               (_%h156349%_ _%h156347%_))
          (__hash->list _%h156349%_))))
    (define __hash->plist
      (lambda (_%h156273%_)
        (let* ((_%h156276%_ _%h156273%_) (_%lst156285%_ '()))
          (let* ((_%self149082156287%_ _%h156276%_)
                 (_%proc156293%_
                  (lambda (_%k156290%_ _%v156291%_)
                    (set! _%lst156285%_
                          (cons _%k156290%_
                                (cons _%v156291%_ _%lst156285%_)))))
                 (_%self149082156300%_
                  (let ((_%$obj156297%_ _%self149082156287%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj156297%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj156297%_)))
                             '#t)
                        _%$obj156297%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj156297%_)))))
                 (_%self149082156302%_ _%self149082156300%_)
                 (_%proc156317%_ _%proc156293%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object156326156331%_
                         (##unchecked-structure-ref
                          _%self149082156302%_
                          '1
                          '#f
                          'for-each))
                        (_%method156327156332%_
                         (##unchecked-structure-ref
                          _%self149082156302%_
                          '5
                          '#f
                          'for-each)))
                    (_%method156327156332%_
                     _%object156326156331%_
                     _%proc156317%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object156333156338%_
                         (##unchecked-structure-ref
                          _%self149082156302%_
                          '1
                          '#f
                          'for-each))
                        (_%method156334156339%_
                         (##unchecked-structure-ref
                          _%self149082156302%_
                          '5
                          '#f
                          'for-each)))
                    (_%method156334156339%_
                     _%object156333156338%_
                     _%proc156317%_)))))
          _%lst156285%_)))
    (define hash->plist
      (lambda (_%h156255%_)
        (let* ((_%h156261%_
                (let ((_%$obj156258%_ _%h156255%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156258%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156258%_)))
                           '#t)
                      _%$obj156258%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156258%_)))))
               (_%h156263%_ _%h156261%_))
          (__hash->plist _%h156263%_))))
    (define __hash-for-each
      (lambda (_%proc156184%_ _%h156185%_)
        (let* ((_%proc156188%_ _%proc156184%_)
               (_%h156196%_ _%h156185%_)
               (_%self149082156205%_ _%h156196%_)
               (_%proc156208%_ _%proc156188%_)
               (_%self149082156215%_
                (let ((_%$obj156212%_ _%self149082156205%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj156212%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj156212%_)))
                           '#t)
                      _%$obj156212%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj156212%_)))))
               (_%self149082156217%_ _%self149082156215%_)
               (_%proc156231%_ _%proc156208%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object156240156245%_
                       (##unchecked-structure-ref
                        _%self149082156217%_
                        '1
                        '#f
                        'for-each))
                      (_%method156241156246%_
                       (##unchecked-structure-ref
                        _%self149082156217%_
                        '5
                        '#f
                        'for-each)))
                  (_%method156241156246%_
                   _%object156240156245%_
                   _%proc156231%_)))
              (let ()
                (declare (not safe))
                (let ((_%object156247156252%_
                       (##unchecked-structure-ref
                        _%self149082156217%_
                        '1
                        '#f
                        'for-each))
                      (_%method156248156253%_
                       (##unchecked-structure-ref
                        _%self149082156217%_
                        '5
                        '#f
                        'for-each)))
                  (_%method156248156253%_
                   _%object156247156252%_
                   _%proc156231%_)))))))
    (define hash-for-each
      (lambda (_%proc156155%_ _%h156156%_)
        (if (procedure? _%proc156155%_)
            (let* ((_%proc156160%_ _%proc156155%_)
                   (_%h156172%_
                    (let ((_%$obj156169%_ _%h156156%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj156169%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj156169%_)))
                               '#t)
                          _%$obj156169%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj156169%_)))))
                   (_%h156174%_ _%h156172%_))
              (__hash-for-each _%proc156160%_ _%h156174%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@594.22-594.26"
               'contract:
               'procedure?
               'value:
               _%proc156155%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc156078%_ _%h156079%_)
        (let* ((_%proc156082%_ _%proc156078%_)
               (_%h156090%_ _%h156079%_)
               (_%result156099%_ '()))
          (let* ((_%self149082156101%_ _%h156090%_)
                 (_%proc156107%_
                  (lambda (_%k156104%_ _%v156105%_)
                    (set! _%result156099%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc156082%_ _%k156104%_ _%v156105%_))
                                _%result156099%_))))
                 (_%self149082156114%_
                  (let ((_%$obj156111%_ _%self149082156101%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj156111%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj156111%_)))
                             '#t)
                        _%$obj156111%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj156111%_)))))
                 (_%self149082156116%_ _%self149082156114%_)
                 (_%proc156131%_ _%proc156107%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object156140156145%_
                         (##unchecked-structure-ref
                          _%self149082156116%_
                          '1
                          '#f
                          'for-each))
                        (_%method156141156146%_
                         (##unchecked-structure-ref
                          _%self149082156116%_
                          '5
                          '#f
                          'for-each)))
                    (_%method156141156146%_
                     _%object156140156145%_
                     _%proc156131%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object156147156152%_
                         (##unchecked-structure-ref
                          _%self149082156116%_
                          '1
                          '#f
                          'for-each))
                        (_%method156148156153%_
                         (##unchecked-structure-ref
                          _%self149082156116%_
                          '5
                          '#f
                          'for-each)))
                    (_%method156148156153%_
                     _%object156147156152%_
                     _%proc156131%_)))))
          _%result156099%_)))
    (define hash-map
      (lambda (_%proc156049%_ _%h156050%_)
        (if (procedure? _%proc156049%_)
            (let* ((_%proc156054%_ _%proc156049%_)
                   (_%h156066%_
                    (let ((_%$obj156063%_ _%h156050%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj156063%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj156063%_)))
                               '#t)
                          _%$obj156063%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj156063%_)))))
                   (_%h156068%_ _%h156066%_))
              (__hash-map _%proc156054%_ _%h156068%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@597.17-597.21"
               'contract:
               'procedure?
               'value:
               _%proc156049%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc155971%_ _%iv155972%_ _%h155973%_)
        (let* ((_%proc155976%_ _%proc155971%_)
               (_%h155984%_ _%h155973%_)
               (_%result155993%_ _%iv155972%_))
          (let* ((_%self149082155995%_ _%h155984%_)
                 (_%proc156001%_
                  (lambda (_%k155998%_ _%v155999%_)
                    (set! _%result155993%_
                          (let ()
                            (declare (not safe))
                            (_%proc155976%_
                             _%k155998%_
                             _%v155999%_
                             _%result155993%_)))))
                 (_%self149082156008%_
                  (let ((_%$obj156005%_ _%self149082155995%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj156005%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj156005%_)))
                             '#t)
                        _%$obj156005%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj156005%_)))))
                 (_%self149082156010%_ _%self149082156008%_)
                 (_%proc156025%_ _%proc156001%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object156034156039%_
                         (##unchecked-structure-ref
                          _%self149082156010%_
                          '1
                          '#f
                          'for-each))
                        (_%method156035156040%_
                         (##unchecked-structure-ref
                          _%self149082156010%_
                          '5
                          '#f
                          'for-each)))
                    (_%method156035156040%_
                     _%object156034156039%_
                     _%proc156025%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object156041156046%_
                         (##unchecked-structure-ref
                          _%self149082156010%_
                          '1
                          '#f
                          'for-each))
                        (_%method156042156047%_
                         (##unchecked-structure-ref
                          _%self149082156010%_
                          '5
                          '#f
                          'for-each)))
                    (_%method156042156047%_
                     _%object156041156046%_
                     _%proc156025%_)))))
          _%result155993%_)))
    (define hash-fold
      (lambda (_%proc155941%_ _%iv155942%_ _%h155943%_)
        (if (procedure? _%proc155941%_)
            (let* ((_%proc155947%_ _%proc155941%_)
                   (_%h155959%_
                    (let ((_%$obj155956%_ _%h155943%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj155956%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj155956%_)))
                               '#t)
                          _%$obj155956%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj155956%_)))))
                   (_%h155961%_ _%h155959%_))
              (__hash-fold _%proc155947%_ _%iv155942%_ _%h155961%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc155941%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc155848%_ _%h155849%_ _%default-value155850%_)
        (let* ((_%proc155853%_ _%proc155848%_)
               (_%h155861%_ _%h155849%_)
               (__tmp166018
                (lambda (_%return155870%_)
                  (let* ((_%self149082155872%_ _%h155861%_)
                         (_%proc155881%_
                          (lambda (_%k155875%_ _%v155876%_)
                            (let ((_%$e155878%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc155853%_
                                      _%k155875%_
                                      _%v155876%_))))
                              (if _%$e155878%_
                                  (_%return155870%_ _%$e155878%_)
                                  '#!void))))
                         (_%self149082155888%_
                          (let ((_%$obj155885%_ _%self149082155872%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj155885%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj155885%_)))
                                     '#t)
                                _%$obj155885%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj155885%_)))))
                         (_%self149082155890%_ _%self149082155888%_)
                         (_%proc155905%_ _%proc155881%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object155914155919%_
                                 (##unchecked-structure-ref
                                  _%self149082155890%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method155915155920%_
                                 (##unchecked-structure-ref
                                  _%self149082155890%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method155915155920%_
                             _%object155914155919%_
                             _%proc155905%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object155921155926%_
                                 (##unchecked-structure-ref
                                  _%self149082155890%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method155922155927%_
                                 (##unchecked-structure-ref
                                  _%self149082155890%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method155922155927%_
                             _%object155921155926%_
                             _%proc155905%_)))))
                  _%default-value155850%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp166018))))
    (define __hash-find__0
      (lambda (_%proc155932%_ _%h155933%_)
        (let ((_%default-value155935%_ '#f))
          (__hash-find__%
           _%proc155932%_
           _%h155933%_
           _%default-value155935%_))))
    (define __hash-find
      (lambda _g166019_
        (let ((_g166020_ (let () (declare (not safe)) (##length _g166019_))))
          (cond ((let () (declare (not safe)) (##fx= _g166020_ 2))
                 (apply __hash-find__0 _g166019_))
                ((let () (declare (not safe)) (##fx= _g166020_ 3))
                 (apply __hash-find__% _g166019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g166019_))))))
    (define hash-find__%
      (lambda (_%proc155805%_ _%h155806%_ _%default-value155807%_)
        (if (procedure? _%proc155805%_)
            (let* ((_%proc155811%_ _%proc155805%_)
                   (_%h155823%_
                    (let ((_%$obj155820%_ _%h155806%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj155820%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj155820%_)))
                               '#t)
                          _%$obj155820%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj155820%_)))))
                   (_%h155825%_ _%h155823%_))
              (__hash-find__%
               _%proc155811%_
               _%h155825%_
               _%default-value155807%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@608.18-608.22"
               'contract:
               'procedure?
               'value:
               _%proc155805%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc155838%_ _%h155839%_)
        (let ((_%default-value155841%_ '#f))
          (hash-find__% _%proc155838%_ _%h155839%_ _%default-value155841%_))))
    (define hash-find
      (lambda _g166021_
        (let ((_g166022_ (let () (declare (not safe)) (##length _g166021_))))
          (cond ((let () (declare (not safe)) (##fx= _g166022_ 2))
                 (apply hash-find__0 _g166021_))
                ((let () (declare (not safe)) (##fx= _g166022_ 3))
                 (apply hash-find__% _g166021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g166021_))))))
    (define __hash-keys
      (lambda (_%h155736%_)
        (let* ((_%h155739%_ _%h155736%_) (_%result155748%_ '()))
          (let* ((_%self149082155750%_ _%h155739%_)
                 (_%proc155756%_
                  (lambda (_%k155753%_ _%v155754%_)
                    (set! _%result155748%_
                          (cons _%k155753%_ _%result155748%_))))
                 (_%self149082155763%_
                  (let ((_%$obj155760%_ _%self149082155750%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj155760%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj155760%_)))
                             '#t)
                        _%$obj155760%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj155760%_)))))
                 (_%self149082155765%_ _%self149082155763%_)
                 (_%proc155780%_ _%proc155756%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object155789155794%_
                         (##unchecked-structure-ref
                          _%self149082155765%_
                          '1
                          '#f
                          'for-each))
                        (_%method155790155795%_
                         (##unchecked-structure-ref
                          _%self149082155765%_
                          '5
                          '#f
                          'for-each)))
                    (_%method155790155795%_
                     _%object155789155794%_
                     _%proc155780%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object155796155801%_
                         (##unchecked-structure-ref
                          _%self149082155765%_
                          '1
                          '#f
                          'for-each))
                        (_%method155797155802%_
                         (##unchecked-structure-ref
                          _%self149082155765%_
                          '5
                          '#f
                          'for-each)))
                    (_%method155797155802%_
                     _%object155796155801%_
                     _%proc155780%_)))))
          _%result155748%_)))
    (define hash-keys
      (lambda (_%h155718%_)
        (let* ((_%h155724%_
                (let ((_%$obj155721%_ _%h155718%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj155721%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj155721%_)))
                           '#t)
                      _%$obj155721%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj155721%_)))))
               (_%h155726%_ _%h155724%_))
          (__hash-keys _%h155726%_))))
    (define __hash-values
      (lambda (_%h155650%_)
        (let* ((_%h155653%_ _%h155650%_) (_%result155662%_ '()))
          (let* ((_%self149082155664%_ _%h155653%_)
                 (_%proc155670%_
                  (lambda (_%k155667%_ _%v155668%_)
                    (set! _%result155662%_
                          (cons _%v155668%_ _%result155662%_))))
                 (_%self149082155677%_
                  (let ((_%$obj155674%_ _%self149082155664%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj155674%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj155674%_)))
                             '#t)
                        _%$obj155674%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj155674%_)))))
                 (_%self149082155679%_ _%self149082155677%_)
                 (_%proc155694%_ _%proc155670%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object155703155708%_
                         (##unchecked-structure-ref
                          _%self149082155679%_
                          '1
                          '#f
                          'for-each))
                        (_%method155704155709%_
                         (##unchecked-structure-ref
                          _%self149082155679%_
                          '5
                          '#f
                          'for-each)))
                    (_%method155704155709%_
                     _%object155703155708%_
                     _%proc155694%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object155710155715%_
                         (##unchecked-structure-ref
                          _%self149082155679%_
                          '1
                          '#f
                          'for-each))
                        (_%method155711155716%_
                         (##unchecked-structure-ref
                          _%self149082155679%_
                          '5
                          '#f
                          'for-each)))
                    (_%method155711155716%_
                     _%object155710155715%_
                     _%proc155694%_)))))
          _%result155662%_)))
    (define hash-values
      (lambda (_%h155632%_)
        (let* ((_%h155638%_
                (let ((_%$obj155635%_ _%h155632%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj155635%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj155635%_)))
                           '#t)
                      _%$obj155635%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj155635%_)))))
               (_%h155640%_ _%h155638%_))
          (__hash-values _%h155640%_))))
    (define __hash-copy
      (lambda (_%h155581%_)
        (let* ((_%h155584%_ _%h155581%_)
               (_%self148594155593%_ _%h155584%_)
               (_%self148594155600%_
                (let ((_%$obj155597%_ _%self148594155593%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj155597%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj155597%_)))
                           '#t)
                      _%$obj155597%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj155597%_)))))
               (_%self148594155602%_ _%self148594155600%_))
          (if __DEBUG
              (let ((_%$obj155622%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object155614155619%_
                              (##unchecked-structure-ref
                               _%self148594155602%_
                               '1
                               '#f
                               'copy))
                             (_%method155615155620%_
                              (##unchecked-structure-ref
                               _%self148594155602%_
                               '3
                               '#f
                               'copy)))
                         (_%method155615155620%_ _%object155614155619%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj155622%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj155622%_)))
                         '#t)
                    _%$obj155622%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj155622%_))))
              (let ()
                (declare (not safe))
                (let ((_%object155624155629%_
                       (##unchecked-structure-ref
                        _%self148594155602%_
                        '1
                        '#f
                        'copy))
                      (_%method155625155630%_
                       (##unchecked-structure-ref
                        _%self148594155602%_
                        '3
                        '#f
                        'copy)))
                  (_%method155625155630%_ _%object155624155629%_)))))))
    (define hash-copy
      (lambda (_%h155563%_)
        (let* ((_%h155569%_
                (let ((_%$obj155566%_ _%h155563%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj155566%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj155566%_)))
                           '#t)
                      _%$obj155566%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj155566%_)))))
               (_%h155571%_ _%h155569%_))
          (__hash-copy _%h155571%_))))
    (define __hash-new
      (lambda (_%h155492%_)
        (let* ((_%h155495%_ _%h155492%_)
               (_%self149570155504%_ _%h155495%_)
               (_%size-hint155507%_ '#f)
               (_%self149570155514%_
                (let ((_%$obj155511%_ _%self149570155504%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj155511%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj155511%_)))
                           '#t)
                      _%$obj155511%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj155511%_)))))
               (_%self149570155516%_ _%self149570155514%_))
          (if (let ((_%$e155532%_ '#t)) (and _%$e155532%_ _%$e155532%_))
              (let ((_%size-hint155536%_ _%size-hint155507%_))
                (if __DEBUG
                    (let ((_%$obj155553%_
                           (let ()
                             (declare (not safe))
                             (let ((_%object155545155550%_
                                    (##unchecked-structure-ref
                                     _%self149570155516%_
                                     '1
                                     '#f
                                     'new))
                                   (_%method155546155551%_
                                    (##unchecked-structure-ref
                                     _%self149570155516%_
                                     '7
                                     '#f
                                     'new)))
                               (_%method155546155551%_
                                _%object155545155550%_
                                _%size-hint155536%_)))))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj155553%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj155553%_)))
                               '#t)
                          _%$obj155553%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj155553%_))))
                    (let ()
                      (declare (not safe))
                      (let ((_%object155555155560%_
                             (##unchecked-structure-ref
                              _%self149570155516%_
                              '1
                              '#f
                              'new))
                            (_%method155556155561%_
                             (##unchecked-structure-ref
                              _%self149570155516%_
                              '7
                              '#f
                              'new)))
                        (_%method155556155561%_
                         _%object155555155560%_
                         _%size-hint155536%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint155507%_)
                '#!void)))))
    (define hash-new
      (lambda (_%h155474%_)
        (let* ((_%h155480%_
                (let ((_%$obj155477%_ _%h155474%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj155477%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj155477%_)))
                           '#t)
                      _%$obj155477%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj155477%_)))))
               (_%h155482%_ _%h155480%_))
          (__hash-new _%h155482%_))))
    (define __hash-clear!
      (lambda (_%h155426%_)
        (let* ((_%h155429%_ _%h155426%_)
               (_%self148349155438%_ _%h155429%_)
               (_%self148349155445%_
                (let ((_%$obj155442%_ _%self148349155438%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj155442%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj155442%_)))
                           '#t)
                      _%$obj155442%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj155442%_)))))
               (_%self148349155447%_ _%self148349155445%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object155459155464%_
                       (##unchecked-structure-ref
                        _%self148349155447%_
                        '1
                        '#f
                        'clear!))
                      (_%method155460155465%_
                       (##unchecked-structure-ref
                        _%self148349155447%_
                        '2
                        '#f
                        'clear!)))
                  (_%method155460155465%_ _%object155459155464%_)))
              (let ()
                (declare (not safe))
                (let ((_%object155466155471%_
                       (##unchecked-structure-ref
                        _%self148349155447%_
                        '1
                        '#f
                        'clear!))
                      (_%method155467155472%_
                       (##unchecked-structure-ref
                        _%self148349155447%_
                        '2
                        '#f
                        'clear!)))
                  (_%method155467155472%_ _%object155466155471%_)))))))
    (define hash-clear!
      (lambda (_%h155408%_)
        (let* ((_%h155414%_
                (let ((_%$obj155411%_ _%h155408%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj155411%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj155411%_)))
                           '#t)
                      _%$obj155411%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj155411%_)))))
               (_%h155416%_ _%h155414%_))
          (__hash-clear! _%h155416%_))))
    (define __hash-merge
      (lambda (_%h155354%_ . _%rest155355%_)
        (let* ((_%h155358%_ _%h155354%_)
               (_%copy155406%_
                (let* ((_%self148594155367%_ _%h155358%_)
                       (_%self148594155374%_
                        (let ((_%$obj155371%_ _%self148594155367%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj155371%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj155371%_)))
                                   '#t)
                              _%$obj155371%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj155371%_)))))
                       (_%self148594155376%_ _%self148594155374%_))
                  (if __DEBUG
                      (let ((_%$obj155396%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object155388155393%_
                                      (##unchecked-structure-ref
                                       _%self148594155376%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method155389155394%_
                                      (##unchecked-structure-ref
                                       _%self148594155376%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method155389155394%_
                                  _%object155388155393%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj155396%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj155396%_)))
                                 '#t)
                            _%$obj155396%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj155396%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object155398155403%_
                               (##unchecked-structure-ref
                                _%self148594155376%_
                                '1
                                '#f
                                'copy))
                              (_%method155399155404%_
                               (##unchecked-structure-ref
                                _%self148594155376%_
                                '3
                                '#f
                                'copy)))
                          (_%method155399155404%_ _%object155398155403%_)))))))
          (apply hash-merge! _%copy155406%_ _%rest155355%_)
          _%copy155406%_)))
    (define hash-merge
      (lambda (_%h155335%_ . _%rest155336%_)
        (let* ((_%h155342%_
                (let ((_%$obj155339%_ _%h155335%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj155339%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj155339%_)))
                           '#t)
                      _%$obj155339%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj155339%_)))))
               (_%h155344%_ _%h155342%_))
          (declare (not safe))
          (##apply __hash-merge _%h155344%_ _%rest155336%_))))
    (define __hash-merge-right
      (lambda (_%h155281%_ . _%rest155282%_)
        (let* ((_%h155285%_ _%h155281%_)
               (_%copy155333%_
                (let* ((_%self148594155294%_ _%h155285%_)
                       (_%self148594155301%_
                        (let ((_%$obj155298%_ _%self148594155294%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj155298%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj155298%_)))
                                   '#t)
                              _%$obj155298%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj155298%_)))))
                       (_%self148594155303%_ _%self148594155301%_))
                  (if __DEBUG
                      (let ((_%$obj155323%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object155315155320%_
                                      (##unchecked-structure-ref
                                       _%self148594155303%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method155316155321%_
                                      (##unchecked-structure-ref
                                       _%self148594155303%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method155316155321%_
                                  _%object155315155320%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj155323%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj155323%_)))
                                 '#t)
                            _%$obj155323%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj155323%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object155325155330%_
                               (##unchecked-structure-ref
                                _%self148594155303%_
                                '1
                                '#f
                                'copy))
                              (_%method155326155331%_
                               (##unchecked-structure-ref
                                _%self148594155303%_
                                '3
                                '#f
                                'copy)))
                          (_%method155326155331%_ _%object155325155330%_)))))))
          (apply hash-merge-right! _%copy155333%_ _%rest155282%_)
          _%copy155333%_)))
    (define hash-merge-right
      (lambda (_%h155262%_ . _%rest155263%_)
        (let* ((_%h155269%_
                (let ((_%$obj155266%_ _%h155262%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj155266%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj155266%_)))
                           '#t)
                      _%$obj155266%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj155266%_)))))
               (_%h155271%_ _%h155269%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h155271%_ _%rest155263%_))))
    (define __hash-merge!
      (lambda (_%h155110%_ . _%rest155111%_)
        (let ((_%h155114%_ _%h155110%_))
          (let ((__tmp166023
                 (lambda (_%hr155123%_)
                   (let* ((_%hr155129%_
                           (let ((_%$obj155126%_ _%hr155123%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj155126%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj155126%_)))
                                      '#t)
                                 _%$obj155126%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj155126%_)))))
                          (_%hr155131%_ _%hr155129%_)
                          (_%self149082155144%_ _%hr155131%_)
                          (_%proc155219%_
                           (lambda (_%k155147%_ _%v155148%_)
                             (if (let* ((_%h155150%_ _%h155114%_)
                                        (_%k155153%_ _%k155147%_)
                                        (_%h155160%_
                                         (let ((_%$obj155157%_ _%h155150%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj155157%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj155157%_)))
                                                    '#t)
                                               _%$obj155157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj155157%_)))))
                                        (_%h155162%_ _%h155160%_))
                                   (__hash-key? _%h155162%_ _%k155153%_))
                                 '#!void
                                 (let* ((_%self150058155178%_ _%h155114%_)
                                        (_%key155181%_ _%k155147%_)
                                        (_%value155184%_ _%v155148%_)
                                        (_%self150058155191%_
                                         (let ((_%$obj155188%_
                                                _%self150058155178%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj155188%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj155188%_)))
                                                    '#t)
                                               _%$obj155188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj155188%_)))))
                                        (_%self150058155193%_
                                         _%self150058155191%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object155204155209%_
                                                (##unchecked-structure-ref
                                                 _%self150058155193%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method155205155210%_
                                                (##unchecked-structure-ref
                                                 _%self150058155193%_
                                                 '9
                                                 '#f
                                                 'set!)))
                                           (_%method155205155210%_
                                            _%object155204155209%_
                                            _%key155181%_
                                            _%value155184%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object155211155216%_
                                                (##unchecked-structure-ref
                                                 _%self150058155193%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method155212155217%_
                                                (##unchecked-structure-ref
                                                 _%self150058155193%_
                                                 '9
                                                 '#f
                                                 'set!)))
                                           (_%method155212155217%_
                                            _%object155211155216%_
                                            _%key155181%_
                                            _%value155184%_))))))))
                          (_%self149082155226%_
                           (let ((_%$obj155223%_ _%self149082155144%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj155223%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj155223%_)))
                                      '#t)
                                 _%$obj155223%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj155223%_)))))
                          (_%self149082155228%_ _%self149082155226%_)
                          (_%proc155238%_ _%proc155219%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object155247155252%_
                                  (##unchecked-structure-ref
                                   _%self149082155228%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method155248155253%_
                                  (##unchecked-structure-ref
                                   _%self149082155228%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method155248155253%_
                              _%object155247155252%_
                              _%proc155238%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object155254155259%_
                                  (##unchecked-structure-ref
                                   _%self149082155228%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method155255155260%_
                                  (##unchecked-structure-ref
                                   _%self149082155228%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method155255155260%_
                              _%object155254155259%_
                              _%proc155238%_))))))))
            (declare (not safe))
            (##for-each __tmp166023 _%rest155111%_))
          _%h155114%_)))
    (define hash-merge!
      (lambda (_%h155091%_ . _%rest155092%_)
        (let* ((_%h155098%_
                (let ((_%$obj155095%_ _%h155091%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj155095%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj155095%_)))
                           '#t)
                      _%$obj155095%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj155095%_)))))
               (_%h155100%_ _%h155098%_))
          (declare (not safe))
          (##apply __hash-merge! _%h155100%_ _%rest155092%_))))
    (define __hash-merge-right!
      (lambda (_%h154962%_ . _%rest154963%_)
        (let ((_%h154966%_ _%h154962%_))
          (let ((__tmp166024
                 (lambda (_%hr154975%_)
                   (let* ((_%hr154981%_
                           (let ((_%$obj154978%_ _%hr154975%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj154978%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj154978%_)))
                                      '#t)
                                 _%$obj154978%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj154978%_)))))
                          (_%hr154983%_ _%hr154981%_)
                          (_%self149082154996%_ _%hr154983%_)
                          (_%proc155048%_
                           (lambda (_%k154999%_ _%v155000%_)
                             (let* ((_%self150058155002%_ _%h154966%_)
                                    (_%key155005%_ _%k154999%_)
                                    (_%value155008%_ _%v155000%_)
                                    (_%self150058155015%_
                                     (let ((_%$obj155012%_
                                            _%self150058155002%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj155012%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj155012%_)))
                                                '#t)
                                           _%$obj155012%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj155012%_)))))
                                    (_%self150058155017%_
                                     _%self150058155015%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object155033155038%_
                                            (##unchecked-structure-ref
                                             _%self150058155017%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method155034155039%_
                                            (##unchecked-structure-ref
                                             _%self150058155017%_
                                             '9
                                             '#f
                                             'set!)))
                                       (_%method155034155039%_
                                        _%object155033155038%_
                                        _%key155005%_
                                        _%value155008%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object155040155045%_
                                            (##unchecked-structure-ref
                                             _%self150058155017%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method155041155046%_
                                            (##unchecked-structure-ref
                                             _%self150058155017%_
                                             '9
                                             '#f
                                             'set!)))
                                       (_%method155041155046%_
                                        _%object155040155045%_
                                        _%key155005%_
                                        _%value155008%_)))))))
                          (_%self149082155055%_
                           (let ((_%$obj155052%_ _%self149082154996%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj155052%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj155052%_)))
                                      '#t)
                                 _%$obj155052%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj155052%_)))))
                          (_%self149082155057%_ _%self149082155055%_)
                          (_%proc155067%_ _%proc155048%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object155076155081%_
                                  (##unchecked-structure-ref
                                   _%self149082155057%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method155077155082%_
                                  (##unchecked-structure-ref
                                   _%self149082155057%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method155077155082%_
                              _%object155076155081%_
                              _%proc155067%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object155083155088%_
                                  (##unchecked-structure-ref
                                   _%self149082155057%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method155084155089%_
                                  (##unchecked-structure-ref
                                   _%self149082155057%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method155084155089%_
                              _%object155083155088%_
                              _%proc155067%_))))))))
            (declare (not safe))
            (##for-each __tmp166024 _%rest154963%_))
          _%h154966%_)))
    (define hash-merge-right!
      (lambda (_%h154943%_ . _%rest154944%_)
        (let* ((_%h154950%_
                (let ((_%$obj154947%_ _%h154943%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj154947%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj154947%_)))
                           '#t)
                      _%$obj154947%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj154947%_)))))
               (_%h154952%_ _%h154950%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h154952%_ _%rest154944%_))))))
