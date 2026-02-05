(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1770326744)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp131834 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#UnboundKeyError::t
         'UnboundKeyError
         __tmp131834
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args131122%_
        (apply make-instance UnboundKeyError::t _%$args131122%_)))
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
      (lambda (_%where130996%_ _%message130997%_ . _%irritants130998%_)
        (let ((__tmp131835
               (let ((__obj131826
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj131826
                    _%message130997%_
                    'where:
                    _%where130996%_
                    'irritants:
                    _%irritants130998%_))
                 __obj131826)))
          (declare (not safe))
          (raise __tmp131835))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp131836 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#HashTable::t
         'HashTable
         __tmp131836
         '(clear! copy delete! for-each length ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj131828
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj131828
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj131828))
    (define make-HashTable
      (lambda (_%obj130994%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj130994%_))))
    (define try-HashTable
      (lambda (_%obj130992%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj130992%_))))
    (define HashTable?
      (lambda (_%obj130990%_)
        (let ((__tmp131837
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj130990%_ __tmp131837))))
    (define is-HashTable?
      (lambda (_%obj130987%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj130987%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self121285130970%_)
        (let ((_%self121285130972%_ _%self121285130970%_))
          (declare (not safe))
          (let ((_%object130979130984%_
                 (##unchecked-structure-ref
                  _%self121285130972%_
                  '1
                  '#f
                  'clear!))
                (_%method130980130985%_
                 (##unchecked-structure-ref
                  _%self121285130972%_
                  '2
                  '#f
                  'clear!)))
            (_%method130980130985%_ _%object130979130984%_)))))
    (define ::HashTable-clear!
      (lambda (_%self121286130940%_)
        (let* ((_%self121286130945%_
                (let ((_%$obj130942%_ _%self121286130940%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj130942%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj130942%_)))
                           '#t)
                      _%$obj130942%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj130942%_)))))
               (_%self121286130947%_ _%self121286130945%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object130955130960%_
                       (##unchecked-structure-ref
                        _%self121286130947%_
                        '1
                        '#f
                        'clear!))
                      (_%method130956130961%_
                       (##unchecked-structure-ref
                        _%self121286130947%_
                        '2
                        '#f
                        'clear!)))
                  (_%method130956130961%_ _%object130955130960%_)))
              (let ()
                (declare (not safe))
                (let ((_%object130962130967%_
                       (##unchecked-structure-ref
                        _%self121286130947%_
                        '1
                        '#f
                        'clear!))
                      (_%method130963130968%_
                       (##unchecked-structure-ref
                        _%self121286130947%_
                        '2
                        '#f
                        'clear!)))
                  (_%method130963130968%_ _%object130962130967%_)))))))
    (define __HashTable-copy
      (lambda (_%self121530130923%_)
        (let ((_%self121530130925%_ _%self121530130923%_))
          (declare (not safe))
          (let ((_%object130932130937%_
                 (##unchecked-structure-ref _%self121530130925%_ '1 '#f 'copy))
                (_%method130933130938%_
                 (##unchecked-structure-ref
                  _%self121530130925%_
                  '3
                  '#f
                  'copy)))
            (_%method130933130938%_ _%object130932130937%_)))))
    (define ::HashTable-copy
      (lambda (_%self121531130890%_)
        (let* ((_%self121531130895%_
                (let ((_%$obj130892%_ _%self121531130890%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj130892%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj130892%_)))
                           '#t)
                      _%$obj130892%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj130892%_)))))
               (_%self121531130897%_ _%self121531130895%_))
          (if __DEBUG
              (let ((_%$obj130913%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object130905130910%_
                              (##unchecked-structure-ref
                               _%self121531130897%_
                               '1
                               '#f
                               'copy))
                             (_%method130906130911%_
                              (##unchecked-structure-ref
                               _%self121531130897%_
                               '3
                               '#f
                               'copy)))
                         (_%method130906130911%_ _%object130905130910%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj130913%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj130913%_)))
                         '#t)
                    _%$obj130913%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj130913%_))))
              (let ()
                (declare (not safe))
                (let ((_%object130915130920%_
                       (##unchecked-structure-ref
                        _%self121531130897%_
                        '1
                        '#f
                        'copy))
                      (_%method130916130921%_
                       (##unchecked-structure-ref
                        _%self121531130897%_
                        '3
                        '#f
                        'copy)))
                  (_%method130916130921%_ _%object130915130920%_)))))))
    (define __HashTable-delete!
      (lambda (_%self121774130872%_ _%key130873%_)
        (let ((_%self121774130875%_ _%self121774130872%_))
          (declare (not safe))
          (let ((_%object130882130887%_
                 (##unchecked-structure-ref
                  _%self121774130875%_
                  '1
                  '#f
                  'delete!))
                (_%method130883130888%_
                 (##unchecked-structure-ref
                  _%self121774130875%_
                  '4
                  '#f
                  'delete!)))
            (_%method130883130888%_ _%object130882130887%_ _%key130873%_)))))
    (define ::HashTable-delete!
      (lambda (_%self121775130841%_ _%key130842%_)
        (let* ((_%self121775130847%_
                (let ((_%$obj130844%_ _%self121775130841%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj130844%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj130844%_)))
                           '#t)
                      _%$obj130844%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj130844%_)))))
               (_%self121775130849%_ _%self121775130847%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object130857130862%_
                       (##unchecked-structure-ref
                        _%self121775130849%_
                        '1
                        '#f
                        'delete!))
                      (_%method130858130863%_
                       (##unchecked-structure-ref
                        _%self121775130849%_
                        '4
                        '#f
                        'delete!)))
                  (_%method130858130863%_
                   _%object130857130862%_
                   _%key130842%_)))
              (let ()
                (declare (not safe))
                (let ((_%object130864130869%_
                       (##unchecked-structure-ref
                        _%self121775130849%_
                        '1
                        '#f
                        'delete!))
                      (_%method130865130870%_
                       (##unchecked-structure-ref
                        _%self121775130849%_
                        '4
                        '#f
                        'delete!)))
                  (_%method130865130870%_
                   _%object130864130869%_
                   _%key130842%_)))))))
    (define __HashTable-for-each
      (lambda (_%self122018130815%_ _%proc130816%_)
        (let* ((_%self122018130818%_ _%self122018130815%_)
               (_%proc130825%_ _%proc130816%_))
          (declare (not safe))
          (let ((_%object130833130838%_
                 (##unchecked-structure-ref
                  _%self122018130818%_
                  '1
                  '#f
                  'for-each))
                (_%method130834130839%_
                 (##unchecked-structure-ref
                  _%self122018130818%_
                  '5
                  '#f
                  'for-each)))
            (_%method130834130839%_ _%object130833130838%_ _%proc130825%_)))))
    (define ::HashTable-for-each
      (lambda (_%self122019130774%_ _%proc130775%_)
        (let* ((_%self122019130780%_
                (let ((_%$obj130777%_ _%self122019130774%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj130777%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj130777%_)))
                           '#t)
                      _%$obj130777%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj130777%_)))))
               (_%self122019130782%_ _%self122019130780%_))
          (if (procedure? _%proc130775%_)
              (let ((_%proc130791%_ _%proc130775%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object130800130805%_
                             (##unchecked-structure-ref
                              _%self122019130782%_
                              '1
                              '#f
                              'for-each))
                            (_%method130801130806%_
                             (##unchecked-structure-ref
                              _%self122019130782%_
                              '5
                              '#f
                              'for-each)))
                        (_%method130801130806%_
                         _%object130800130805%_
                         _%proc130791%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object130807130812%_
                             (##unchecked-structure-ref
                              _%self122019130782%_
                              '1
                              '#f
                              'for-each))
                            (_%method130808130813%_
                             (##unchecked-structure-ref
                              _%self122019130782%_
                              '5
                              '#f
                              'for-each)))
                        (_%method130808130813%_
                         _%object130807130812%_
                         _%proc130791%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc130775%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self122262130757%_)
        (let ((_%self122262130759%_ _%self122262130757%_))
          (declare (not safe))
          (let ((_%object130766130771%_
                 (##unchecked-structure-ref
                  _%self122262130759%_
                  '1
                  '#f
                  'length))
                (_%method130767130772%_
                 (##unchecked-structure-ref
                  _%self122262130759%_
                  '6
                  '#f
                  'length)))
            (_%method130767130772%_ _%object130766130771%_)))))
    (define ::HashTable-length
      (lambda (_%self122263130724%_)
        (let* ((_%self122263130729%_
                (let ((_%$obj130726%_ _%self122263130724%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj130726%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj130726%_)))
                           '#t)
                      _%$obj130726%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj130726%_)))))
               (_%self122263130731%_ _%self122263130729%_))
          (if __DEBUG
              (let ((_%val130747%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object130739130744%_
                              (##unchecked-structure-ref
                               _%self122263130731%_
                               '1
                               '#f
                               'length))
                             (_%method130740130745%_
                              (##unchecked-structure-ref
                               _%self122263130731%_
                               '6
                               '#f
                               'length)))
                         (_%method130740130745%_ _%object130739130744%_)))))
                (if (fixnum? _%val130747%_)
                    _%val130747%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val130747%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object130749130754%_
                       (##unchecked-structure-ref
                        _%self122263130731%_
                        '1
                        '#f
                        'length))
                      (_%method130750130755%_
                       (##unchecked-structure-ref
                        _%self122263130731%_
                        '6
                        '#f
                        'length)))
                  (_%method130750130755%_ _%object130749130754%_)))))))
    (define __HashTable-ref
      (lambda (_%self122506130705%_ _%key130706%_ _%default130707%_)
        (let ((_%self122506130709%_ _%self122506130705%_))
          (declare (not safe))
          (let ((_%object130716130721%_
                 (##unchecked-structure-ref _%self122506130709%_ '1 '#f 'ref))
                (_%method130717130722%_
                 (##unchecked-structure-ref _%self122506130709%_ '7 '#f 'ref)))
            (_%method130717130722%_
             _%object130716130721%_
             _%key130706%_
             _%default130707%_)))))
    (define ::HashTable-ref
      (lambda (_%self122507130673%_ _%key130674%_ _%default130675%_)
        (let* ((_%self122507130680%_
                (let ((_%$obj130677%_ _%self122507130673%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj130677%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj130677%_)))
                           '#t)
                      _%$obj130677%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj130677%_)))))
               (_%self122507130682%_ _%self122507130680%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object130690130695%_
                       (##unchecked-structure-ref
                        _%self122507130682%_
                        '1
                        '#f
                        'ref))
                      (_%method130691130696%_
                       (##unchecked-structure-ref
                        _%self122507130682%_
                        '7
                        '#f
                        'ref)))
                  (_%method130691130696%_
                   _%object130690130695%_
                   _%key130674%_
                   _%default130675%_)))
              (let ()
                (declare (not safe))
                (let ((_%object130697130702%_
                       (##unchecked-structure-ref
                        _%self122507130682%_
                        '1
                        '#f
                        'ref))
                      (_%method130698130703%_
                       (##unchecked-structure-ref
                        _%self122507130682%_
                        '7
                        '#f
                        'ref)))
                  (_%method130698130703%_
                   _%object130697130702%_
                   _%key130674%_
                   _%default130675%_)))))))
    (define __HashTable-set!
      (lambda (_%self122750130654%_ _%key130655%_ _%value130656%_)
        (let ((_%self122750130658%_ _%self122750130654%_))
          (declare (not safe))
          (let ((_%object130665130670%_
                 (##unchecked-structure-ref _%self122750130658%_ '1 '#f 'set!))
                (_%method130666130671%_
                 (##unchecked-structure-ref
                  _%self122750130658%_
                  '8
                  '#f
                  'set!)))
            (_%method130666130671%_
             _%object130665130670%_
             _%key130655%_
             _%value130656%_)))))
    (define ::HashTable-set!
      (lambda (_%self122751130622%_ _%key130623%_ _%value130624%_)
        (let* ((_%self122751130629%_
                (let ((_%$obj130626%_ _%self122751130622%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj130626%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj130626%_)))
                           '#t)
                      _%$obj130626%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj130626%_)))))
               (_%self122751130631%_ _%self122751130629%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object130639130644%_
                       (##unchecked-structure-ref
                        _%self122751130631%_
                        '1
                        '#f
                        'set!))
                      (_%method130640130645%_
                       (##unchecked-structure-ref
                        _%self122751130631%_
                        '8
                        '#f
                        'set!)))
                  (_%method130640130645%_
                   _%object130639130644%_
                   _%key130623%_
                   _%value130624%_)))
              (let ()
                (declare (not safe))
                (let ((_%object130646130651%_
                       (##unchecked-structure-ref
                        _%self122751130631%_
                        '1
                        '#f
                        'set!))
                      (_%method130647130652%_
                       (##unchecked-structure-ref
                        _%self122751130631%_
                        '8
                        '#f
                        'set!)))
                  (_%method130647130652%_
                   _%object130646130651%_
                   _%key130623%_
                   _%value130624%_)))))))
    (define __HashTable-update!
      (lambda (_%self122994130594%_
               _%key130595%_
               _%proc130596%_
               _%default130597%_)
        (let* ((_%self122994130599%_ _%self122994130594%_)
               (_%proc130606%_ _%proc130596%_))
          (declare (not safe))
          (let ((_%object130614130619%_
                 (##unchecked-structure-ref
                  _%self122994130599%_
                  '1
                  '#f
                  'update!))
                (_%method130615130620%_
                 (##unchecked-structure-ref
                  _%self122994130599%_
                  '9
                  '#f
                  'update!)))
            (_%method130615130620%_
             _%object130614130619%_
             _%key130595%_
             _%proc130606%_
             _%default130597%_)))))
    (define ::HashTable-update!
      (lambda (_%self122995130551%_
               _%key130552%_
               _%proc130553%_
               _%default130554%_)
        (let* ((_%self122995130559%_
                (let ((_%$obj130556%_ _%self122995130551%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj130556%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj130556%_)))
                           '#t)
                      _%$obj130556%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj130556%_)))))
               (_%self122995130561%_ _%self122995130559%_))
          (if (procedure? _%proc130553%_)
              (let ((_%proc130570%_ _%proc130553%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object130579130584%_
                             (##unchecked-structure-ref
                              _%self122995130561%_
                              '1
                              '#f
                              'update!))
                            (_%method130580130585%_
                             (##unchecked-structure-ref
                              _%self122995130561%_
                              '9
                              '#f
                              'update!)))
                        (_%method130580130585%_
                         _%object130579130584%_
                         _%key130552%_
                         _%proc130570%_
                         _%default130554%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object130586130591%_
                             (##unchecked-structure-ref
                              _%self122995130561%_
                              '1
                              '#f
                              'update!))
                            (_%method130587130592%_
                             (##unchecked-structure-ref
                              _%self122995130561%_
                              '9
                              '#f
                              'update!)))
                        (_%method130587130592%_
                         _%object130586130591%_
                         _%key130552%_
                         _%proc130570%_
                         _%default130554%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc130553%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp131838 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#Locker::t
         'Locker
         __tmp131838
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj131830
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj131830
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj131830))
    (define make-Locker
      (lambda (_%obj130549%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj130549%_))))
    (define try-Locker
      (lambda (_%obj130547%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj130547%_))))
    (define Locker?
      (lambda (_%obj130545%_)
        (let ((__tmp131839
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj130545%_ __tmp131839))))
    (define is-Locker?
      (lambda (_%obj130542%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj130542%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self123238130525%_)
        (let ((_%self123238130527%_ _%self123238130525%_))
          (declare (not safe))
          (let ((_%object130534130539%_
                 (##unchecked-structure-ref
                  _%self123238130527%_
                  '1
                  '#f
                  'read-lock!))
                (_%method130535130540%_
                 (##unchecked-structure-ref
                  _%self123238130527%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method130535130540%_ _%object130534130539%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self123239130495%_)
        (let* ((_%self123239130500%_
                (let ((_%$obj130497%_ _%self123239130495%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj130497%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj130497%_)))
                           '#t)
                      _%$obj130497%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj130497%_)))))
               (_%self123239130502%_ _%self123239130500%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object130510130515%_
                       (##unchecked-structure-ref
                        _%self123239130502%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method130511130516%_
                       (##unchecked-structure-ref
                        _%self123239130502%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method130511130516%_ _%object130510130515%_)))
              (let ()
                (declare (not safe))
                (let ((_%object130517130522%_
                       (##unchecked-structure-ref
                        _%self123239130502%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method130518130523%_
                       (##unchecked-structure-ref
                        _%self123239130502%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method130518130523%_ _%object130517130522%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self123482130478%_)
        (let ((_%self123482130480%_ _%self123482130478%_))
          (declare (not safe))
          (let ((_%object130487130492%_
                 (##unchecked-structure-ref
                  _%self123482130480%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method130488130493%_
                 (##unchecked-structure-ref
                  _%self123482130480%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method130488130493%_ _%object130487130492%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self123483130448%_)
        (let* ((_%self123483130453%_
                (let ((_%$obj130450%_ _%self123483130448%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj130450%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj130450%_)))
                           '#t)
                      _%$obj130450%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj130450%_)))))
               (_%self123483130455%_ _%self123483130453%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object130463130468%_
                       (##unchecked-structure-ref
                        _%self123483130455%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method130464130469%_
                       (##unchecked-structure-ref
                        _%self123483130455%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method130464130469%_ _%object130463130468%_)))
              (let ()
                (declare (not safe))
                (let ((_%object130470130475%_
                       (##unchecked-structure-ref
                        _%self123483130455%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method130471130476%_
                       (##unchecked-structure-ref
                        _%self123483130455%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method130471130476%_ _%object130470130475%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self123726130431%_)
        (let ((_%self123726130433%_ _%self123726130431%_))
          (declare (not safe))
          (let ((_%object130440130445%_
                 (##unchecked-structure-ref
                  _%self123726130433%_
                  '1
                  '#f
                  'write-lock!))
                (_%method130441130446%_
                 (##unchecked-structure-ref
                  _%self123726130433%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method130441130446%_ _%object130440130445%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self123727130401%_)
        (let* ((_%self123727130406%_
                (let ((_%$obj130403%_ _%self123727130401%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj130403%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj130403%_)))
                           '#t)
                      _%$obj130403%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj130403%_)))))
               (_%self123727130408%_ _%self123727130406%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object130416130421%_
                       (##unchecked-structure-ref
                        _%self123727130408%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method130417130422%_
                       (##unchecked-structure-ref
                        _%self123727130408%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method130417130422%_ _%object130416130421%_)))
              (let ()
                (declare (not safe))
                (let ((_%object130423130428%_
                       (##unchecked-structure-ref
                        _%self123727130408%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method130424130429%_
                       (##unchecked-structure-ref
                        _%self123727130408%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method130424130429%_ _%object130423130428%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self123970130384%_)
        (let ((_%self123970130386%_ _%self123970130384%_))
          (declare (not safe))
          (let ((_%object130393130398%_
                 (##unchecked-structure-ref
                  _%self123970130386%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method130394130399%_
                 (##unchecked-structure-ref
                  _%self123970130386%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method130394130399%_ _%object130393130398%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self123971130354%_)
        (let* ((_%self123971130359%_
                (let ((_%$obj130356%_ _%self123971130354%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj130356%_))
                           (eq? Locker::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj130356%_)))
                           '#t)
                      _%$obj130356%_
                      (let ()
                        (declare (not safe))
                        (cast Locker::interface _%$obj130356%_)))))
               (_%self123971130361%_ _%self123971130359%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object130369130374%_
                       (##unchecked-structure-ref
                        _%self123971130361%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method130370130375%_
                       (##unchecked-structure-ref
                        _%self123971130361%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method130370130375%_ _%object130369130374%_)))
              (let ()
                (declare (not safe))
                (let ((_%object130376130381%_
                       (##unchecked-structure-ref
                        _%self123971130361%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method130377130382%_
                       (##unchecked-structure-ref
                        _%self123971130361%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method130377130382%_ _%object130376130381%_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::ref raw-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::set! raw-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::update! raw-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::delete! raw-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::for-each raw-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::length &raw-table-count))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::copy raw-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 __table::t 'HashTable::clear! raw-table-clear!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::ref gc-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::set! gc-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::update! gc-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::delete! gc-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::for-each gc-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::length gc-table-length))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::copy gc-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 __gc-table::t 'HashTable::clear! gc-table-clear!))
    (define gambit-table-update!
      (lambda (_%table130347%_
               _%key130348%_
               _%update130349%_
               _%default130350%_)
        (let ((_%result130352%_
               (table-ref _%table130347%_ _%key130348%_ _%default130350%_)))
          (table-set!
           _%table130347%_
           _%key130348%_
           (_%update130349%_ _%default130350%_)))))
    (define gambit-table-for-each
      (lambda (_%table130344%_ _%proc130345%_)
        (table-for-each _%proc130345%_ _%table130344%_)))
    (define gambit-table-clear!
      (lambda (_%table130342%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table130342%_ '0 '5 '#f '#f))))
    (let ((__tmp131840 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp131840 'HashTable::ref table-ref))
    (let ((__tmp131841 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp131841 'HashTable::set! table-set!))
    (let ((__tmp131842 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp131842 'HashTable::update! gambit-table-update!))
    (let ((__tmp131843 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp131843 'HashTable::delete! table-set!))
    (let ((__tmp131844 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp131844 'HashTable::for-each gambit-table-for-each))
    (let ((__tmp131845 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp131845 'HashTable::length table-length))
    (let ((__tmp131846 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp131846 'HashTable::copy table-copy))
    (let ((__tmp131847 (macro-type-table)))
      (declare (not safe))
      (bind-method!__0 __tmp131847 'HashTable::clear! gambit-table-clear!))
    (define hash-table::t
      (let* ((_%slots130324%_ '(table count free hash test seed))
             (_%slot-vector130326%_ (list->vector (cons '#f _%slots130324%_)))
             (_%slot-table130333%_
              (let ((_%slot-table130328%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp131850
                       (lambda (_%slot130330%_ _%field130331%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table130328%_
                            _%slot130330%_
                            _%field130331%_))
                         (let ((__tmp131851
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot130330%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table130328%_
                            __tmp131851
                            _%field130331%_))))
                      (__tmp131848
                       (let ((__tmp131849
                              (let ()
                                (declare (not safe))
                                (##length _%slots130324%_))))
                         (declare (not safe))
                         (##iota __tmp131849 '1))))
                  (declare (not safe))
                  (##for-each __tmp131850 _%slots130324%_ __tmp131848))
                _%slot-table130328%_))
             (_%flags130335%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields130337%_ '#())
             (_%properties130339%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots130324%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp131852 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#hash-table::t
         'hash-table
         _%flags130335%_
         __table::t
         _%fields130337%_
         __tmp131852
         _%slot-vector130326%_
         _%slot-table130333%_
         _%properties130339%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots130306%_ '(gcht immediate))
             (_%slot-vector130308%_ (list->vector (cons '#f _%slots130306%_)))
             (_%slot-table130315%_
              (let ((_%slot-table130310%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp131855
                       (lambda (_%slot130312%_ _%field130313%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table130310%_
                            _%slot130312%_
                            _%field130313%_))
                         (let ((__tmp131856
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot130312%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table130310%_
                            __tmp131856
                            _%field130313%_))))
                      (__tmp131853
                       (let ((__tmp131854
                              (let ()
                                (declare (not safe))
                                (##length _%slots130306%_))))
                         (declare (not safe))
                         (##iota __tmp131854 '1))))
                  (declare (not safe))
                  (##for-each __tmp131855 _%slots130306%_ __tmp131853))
                _%slot-table130310%_))
             (_%flags130317%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields130319%_ '#())
             (_%properties130321%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots130306%_)))
                    (cons (cons 'struct: '#t) '())))
             (__tmp131857 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gerbil#gc-hash-table::t
         'hash-table
         _%flags130317%_
         __gc-table::t
         _%fields130319%_
         __tmp131857
         _%slot-vector130308%_
         _%slot-table130315%_
         _%properties130321%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp131859 (list))
            (__tmp131858
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#locked-hash-table::t
         'locked-hash-table
         __tmp131859
         '(table lock)
         __tmp131858
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args130303%_
        (apply make-instance locked-hash-table::t _%$args130303%_)))
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
      (let ((__tmp131861 (list))
            (__tmp131860
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/hash#checked-hash-table::t
         'checked-hash-table
         __tmp131861
         '(table key-check)
         __tmp131860
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args130300%_
        (apply make-instance checked-hash-table::t _%$args130300%_)))
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
      (let ((__tmp131863 (list hash-table::t))
            (__tmp131862 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eq-hash-table
         'hash-table
         __tmp131863
         '()
         __tmp131862
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args130297%_
        (apply make-instance eq-hash-table::t _%$args130297%_)))
    (define eqv-hash-table::t
      (let ((__tmp131865 (list hash-table::t))
            (__tmp131864 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#eqv-hash-table
         'hash-table
         __tmp131865
         '()
         __tmp131864
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args130294%_
        (apply make-instance eqv-hash-table::t _%$args130294%_)))
    (define symbol-hash-table::t
      (let ((__tmp131867 (list hash-table::t))
            (__tmp131866 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#symbol-hash-table
         'hash-table
         __tmp131867
         '()
         __tmp131866
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args130291%_
        (apply make-instance symbol-hash-table::t _%$args130291%_)))
    (define string-hash-table::t
      (let ((__tmp131869 (list hash-table::t))
            (__tmp131868 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#string-hash-table
         'hash-table
         __tmp131869
         '()
         __tmp131868
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args130288%_
        (apply make-instance string-hash-table::t _%$args130288%_)))
    (define immediate-hash-table::t
      (let ((__tmp131871 (list hash-table::t))
            (__tmp131870 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#immediate-hash-table::t
         'hash-table
         __tmp131871
         '()
         __tmp131870
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args130285%_
        (apply make-instance immediate-hash-table::t _%$args130285%_)))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::ref raw-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::set! raw-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::update! raw-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::delete! raw-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::for-each raw-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::length &raw-table-count))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::copy raw-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 hash-table::t 'HashTable::clear! raw-table-clear!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eq-hash-table::t 'HashTable::ref eq-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 eq-hash-table::t 'HashTable::set! eq-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eq-hash-table::t 'HashTable::update! eq-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eq-hash-table::t 'HashTable::delete! eq-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 eqv-hash-table::t 'HashTable::ref eqv-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 eqv-hash-table::t 'HashTable::set! eqv-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       eqv-hash-table::t
       'HashTable::update!
       eqv-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       eqv-hash-table::t
       'HashTable::delete!
       eqv-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       symbol-hash-table::t
       'HashTable::ref
       symbolic-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0
       symbol-hash-table::t
       'HashTable::set!
       symbolic-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       symbol-hash-table::t
       'HashTable::update!
       symbolic-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       symbol-hash-table::t
       'HashTable::delete!
       symbolic-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 string-hash-table::t 'HashTable::ref string-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0
       string-hash-table::t
       'HashTable::set!
       string-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       string-hash-table::t
       'HashTable::update!
       string-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       string-hash-table::t
       'HashTable::delete!
       string-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       immediate-hash-table::t
       'HashTable::ref
       immediate-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0
       immediate-hash-table::t
       'HashTable::set!
       immediate-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       immediate-hash-table::t
       'HashTable::update!
       immediate-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       immediate-hash-table::t
       'HashTable::delete!
       immediate-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'HashTable::ref gc-table-ref))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'HashTable::set! gc-table-set!))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'HashTable::update! gc-table-update!))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'HashTable::delete! gc-table-delete!))
    (let ()
      (declare (not safe))
      (bind-method!__0
       gc-hash-table::t
       'HashTable::for-each
       gc-table-for-each))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'HashTable::length gc-table-length))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'HashTable::copy gc-table-copy))
    (let ()
      (declare (not safe))
      (bind-method!__0 gc-hash-table::t 'HashTable::clear! gc-table-clear!))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref124596%_
      (lambda (_%self130206%_ _%key130208%_ _%default130209%_)
        (let* ((_%self130212%_ _%self130206%_)
               (_%key130221%_ _%key130208%_)
               (_%default130229%_ _%default130209%_))
          (let ((_%h130238%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self130212%_ '1 '#f '#f)))
                (_%l130240%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self130212%_ '2 '#f '#f))))
            (let ((__tmp131874
                   (lambda ()
                     (let ((_%self123236130244%_ _%l130240%_))
                       (declare (not safe))
                       (let ((_%object130247130252%_
                              (##unchecked-structure-ref
                               _%self123236130244%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method130248130253%_
                              (##unchecked-structure-ref
                               _%self123236130244%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method130248130253%_ _%object130247130252%_)))))
                  (__tmp131873
                   (lambda ()
                     (let* ((_%self122504130256%_ _%h130238%_)
                            (_%key130259%_ _%key130221%_)
                            (_%default130262%_ _%default130229%_))
                       (declare (not safe))
                       (let ((_%object130265130270%_
                              (##unchecked-structure-ref
                               _%self122504130256%_
                               '1
                               '#f
                               'ref))
                             (_%method130266130271%_
                              (##unchecked-structure-ref
                               _%self122504130256%_
                               '7
                               '#f
                               'ref)))
                         (_%method130266130271%_
                          _%object130265130270%_
                          _%key130259%_
                          _%default130262%_)))))
                  (__tmp131872
                   (lambda ()
                     (let ((_%self123480130274%_ _%l130240%_))
                       (declare (not safe))
                       (let ((_%object130277130282%_
                              (##unchecked-structure-ref
                               _%self123480130274%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method130278130283%_
                              (##unchecked-structure-ref
                               _%self123480130274%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method130278130283%_ _%object130277130282%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp131874 __tmp131873 __tmp131872))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref124596%_
       '#f))
    (define _%locked-hash-table::HashTable::set!124598%_
      (lambda (_%self130004%_ _%key130006%_ _%value130007%_)
        (let* ((_%self130010%_ _%self130004%_)
               (_%key130019%_ _%key130006%_)
               (_%value130027%_ _%value130007%_))
          (let ((_%h130036%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self130010%_ '1 '#f '#f)))
                (_%l130038%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self130010%_ '2 '#f '#f))))
            (let ((__tmp131877
                   (lambda ()
                     (let ((_%self123724130042%_ _%l130038%_))
                       (declare (not safe))
                       (let ((_%object130045130050%_
                              (##unchecked-structure-ref
                               _%self123724130042%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method130046130051%_
                              (##unchecked-structure-ref
                               _%self123724130042%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method130046130051%_ _%object130045130050%_)))))
                  (__tmp131876
                   (lambda ()
                     (let* ((_%self122748130054%_ _%h130036%_)
                            (_%key130057%_ _%key130019%_)
                            (_%value130060%_ _%value130027%_))
                       (declare (not safe))
                       (let ((_%object130063130068%_
                              (##unchecked-structure-ref
                               _%self122748130054%_
                               '1
                               '#f
                               'set!))
                             (_%method130064130069%_
                              (##unchecked-structure-ref
                               _%self122748130054%_
                               '8
                               '#f
                               'set!)))
                         (_%method130064130069%_
                          _%object130063130068%_
                          _%key130057%_
                          _%value130060%_)))))
                  (__tmp131875
                   (lambda ()
                     (let ((_%self123968130072%_ _%l130038%_))
                       (declare (not safe))
                       (let ((_%object130075130080%_
                              (##unchecked-structure-ref
                               _%self123968130072%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method130076130081%_
                              (##unchecked-structure-ref
                               _%self123968130072%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method130076130081%_ _%object130075130080%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp131877 __tmp131876 __tmp131875))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!124598%_
       '#f))
    (define _%locked-hash-table::HashTable::update!124600%_
      (lambda (_%self129790%_ _%key129792%_ _%update129793%_ _%default129794%_)
        (let* ((_%self129797%_ _%self129790%_)
               (_%key129806%_ _%key129792%_)
               (_%update129814%_ _%update129793%_)
               (_%default129822%_ _%default129794%_))
          (let ((_%h129831%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self129797%_ '1 '#f '#f)))
                (_%l129833%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self129797%_ '2 '#f '#f))))
            (let ((__tmp131880
                   (lambda ()
                     (let ((_%self123724129837%_ _%l129833%_))
                       (declare (not safe))
                       (let ((_%object129840129845%_
                              (##unchecked-structure-ref
                               _%self123724129837%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method129841129846%_
                              (##unchecked-structure-ref
                               _%self123724129837%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method129841129846%_ _%object129840129845%_)))))
                  (__tmp131879
                   (lambda ()
                     (let* ((_%self122992129849%_ _%h129831%_)
                            (_%key129852%_ _%key129806%_)
                            (_%proc129855%_ _%update129814%_)
                            (_%default129858%_ _%default129822%_))
                       (declare (not safe))
                       (let ((_%object129861129866%_
                              (##unchecked-structure-ref
                               _%self122992129849%_
                               '1
                               '#f
                               'update!))
                             (_%method129862129867%_
                              (##unchecked-structure-ref
                               _%self122992129849%_
                               '9
                               '#f
                               'update!)))
                         (_%method129862129867%_
                          _%object129861129866%_
                          _%key129852%_
                          _%proc129855%_
                          _%default129858%_)))))
                  (__tmp131878
                   (lambda ()
                     (let ((_%self123968129870%_ _%l129833%_))
                       (declare (not safe))
                       (let ((_%object129873129878%_
                              (##unchecked-structure-ref
                               _%self123968129870%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method129874129879%_
                              (##unchecked-structure-ref
                               _%self123968129870%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method129874129879%_ _%object129873129878%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp131880 __tmp131879 __tmp131878))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!124600%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!124602%_
      (lambda (_%self129600%_ _%key129602%_)
        (let* ((_%self129605%_ _%self129600%_) (_%key129614%_ _%key129602%_))
          (let ((_%h129623%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self129605%_ '1 '#f '#f)))
                (_%l129625%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self129605%_ '2 '#f '#f))))
            (let ((__tmp131883
                   (lambda ()
                     (let ((_%self123724129629%_ _%l129625%_))
                       (declare (not safe))
                       (let ((_%object129632129637%_
                              (##unchecked-structure-ref
                               _%self123724129629%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method129633129638%_
                              (##unchecked-structure-ref
                               _%self123724129629%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method129633129638%_ _%object129632129637%_)))))
                  (__tmp131882
                   (lambda ()
                     (let* ((_%self121772129641%_ _%h129623%_)
                            (_%key129644%_ _%key129614%_))
                       (declare (not safe))
                       (let ((_%object129647129652%_
                              (##unchecked-structure-ref
                               _%self121772129641%_
                               '1
                               '#f
                               'delete!))
                             (_%method129648129653%_
                              (##unchecked-structure-ref
                               _%self121772129641%_
                               '4
                               '#f
                               'delete!)))
                         (_%method129648129653%_
                          _%object129647129652%_
                          _%key129644%_)))))
                  (__tmp131881
                   (lambda ()
                     (let ((_%self123968129656%_ _%l129625%_))
                       (declare (not safe))
                       (let ((_%object129659129664%_
                              (##unchecked-structure-ref
                               _%self123968129656%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method129660129665%_
                              (##unchecked-structure-ref
                               _%self123968129656%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method129660129665%_ _%object129659129664%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp131883 __tmp131882 __tmp131881))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!124602%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each124604%_
      (lambda (_%self129410%_ _%proc129412%_)
        (let* ((_%self129415%_ _%self129410%_) (_%proc129424%_ _%proc129412%_))
          (let ((_%h129433%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self129415%_ '1 '#f '#f)))
                (_%l129435%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self129415%_ '2 '#f '#f))))
            (let ((__tmp131886
                   (lambda ()
                     (let ((_%self123236129439%_ _%l129435%_))
                       (declare (not safe))
                       (let ((_%object129442129447%_
                              (##unchecked-structure-ref
                               _%self123236129439%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method129443129448%_
                              (##unchecked-structure-ref
                               _%self123236129439%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method129443129448%_ _%object129442129447%_)))))
                  (__tmp131885
                   (lambda ()
                     (let* ((_%self122016129451%_ _%h129433%_)
                            (_%proc129454%_ _%proc129424%_))
                       (declare (not safe))
                       (let ((_%object129457129462%_
                              (##unchecked-structure-ref
                               _%self122016129451%_
                               '1
                               '#f
                               'for-each))
                             (_%method129458129463%_
                              (##unchecked-structure-ref
                               _%self122016129451%_
                               '5
                               '#f
                               'for-each)))
                         (_%method129458129463%_
                          _%object129457129462%_
                          _%proc129454%_)))))
                  (__tmp131884
                   (lambda ()
                     (let ((_%self123480129466%_ _%l129435%_))
                       (declare (not safe))
                       (let ((_%object129469129474%_
                              (##unchecked-structure-ref
                               _%self123480129466%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method129470129475%_
                              (##unchecked-structure-ref
                               _%self123480129466%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method129470129475%_ _%object129469129474%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp131886 __tmp131885 __tmp131884))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each124604%_
       '#f))
    (define _%locked-hash-table::HashTable::length124606%_
      (lambda (_%self129225%_)
        (let ((_%self129229%_ _%self129225%_))
          (let ((_%h129239%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self129229%_ '1 '#f '#f)))
                (_%l129241%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self129229%_ '2 '#f '#f))))
            ((lambda (_%g129243129245%_)
               (let ((_%val129248%_ _%g129243129245%_))
                 (if (fixnum? _%val129248%_)
                     _%val129248%_
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/hash
                        'contract:
                        '(fixnum? val)
                        'value:
                        _%val129248%_)
                       '#!void))))
             (let ((__tmp131889
                    (lambda ()
                      (let ((_%self123236129252%_ _%l129241%_))
                        (declare (not safe))
                        (let ((_%object129255129260%_
                               (##unchecked-structure-ref
                                _%self123236129252%_
                                '1
                                '#f
                                'read-lock!))
                              (_%method129256129261%_
                               (##unchecked-structure-ref
                                _%self123236129252%_
                                '2
                                '#f
                                'read-lock!)))
                          (_%method129256129261%_ _%object129255129260%_)))))
                   (__tmp131888
                    (lambda ()
                      (let ((_%self122260129264%_ _%h129239%_))
                        (declare (not safe))
                        (let ((_%object129267129272%_
                               (##unchecked-structure-ref
                                _%self122260129264%_
                                '1
                                '#f
                                'length))
                              (_%method129268129273%_
                               (##unchecked-structure-ref
                                _%self122260129264%_
                                '6
                                '#f
                                'length)))
                          (_%method129268129273%_ _%object129267129272%_)))))
                   (__tmp131887
                    (lambda ()
                      (let ((_%self123480129276%_ _%l129241%_))
                        (declare (not safe))
                        (let ((_%object129279129284%_
                               (##unchecked-structure-ref
                                _%self123480129276%_
                                '1
                                '#f
                                'read-unlock!))
                              (_%method129280129285%_
                               (##unchecked-structure-ref
                                _%self123480129276%_
                                '3
                                '#f
                                'read-unlock!)))
                          (_%method129280129285%_ _%object129279129284%_))))))
               (declare (not safe))
               (##dynamic-wind __tmp131889 __tmp131888 __tmp131887)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length124606%_
       '#f))
    (define _%locked-hash-table::HashTable::copy124608%_
      (lambda (_%self129044%_)
        (let ((_%self129048%_ _%self129044%_))
          (let ((_%h129058%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self129048%_ '1 '#f '#f)))
                (_%l129060%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self129048%_ '2 '#f '#f))))
            (let ((_%$obj129099%_
                   (let ((__tmp131892
                          (lambda ()
                            (let ((_%self123236129064%_ _%l129060%_))
                              (declare (not safe))
                              (let ((_%object129067129072%_
                                     (##unchecked-structure-ref
                                      _%self123236129064%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method129068129073%_
                                     (##unchecked-structure-ref
                                      _%self123236129064%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method129068129073%_
                                 _%object129067129072%_)))))
                         (__tmp131891
                          (lambda ()
                            (let ((_%self121528129076%_ _%h129058%_))
                              (declare (not safe))
                              (let ((_%object129079129084%_
                                     (##unchecked-structure-ref
                                      _%self121528129076%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method129080129085%_
                                     (##unchecked-structure-ref
                                      _%self121528129076%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method129080129085%_
                                 _%object129079129084%_)))))
                         (__tmp131890
                          (lambda ()
                            (let ((_%self123480129088%_ _%l129060%_))
                              (declare (not safe))
                              (let ((_%object129091129096%_
                                     (##unchecked-structure-ref
                                      _%self123480129088%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method129092129097%_
                                     (##unchecked-structure-ref
                                      _%self123480129088%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method129092129097%_
                                 _%object129091129096%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp131892 __tmp131891 __tmp131890))))
              (if (and (let ()
                         (declare (not safe))
                         (##structure? _%$obj129099%_))
                       (eq? HashTable::t
                            (let ()
                              (declare (not safe))
                              (##structure-type _%$obj129099%_)))
                       '#t)
                  _%$obj129099%_
                  (let ()
                    (declare (not safe))
                    (cast HashTable::interface _%$obj129099%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy124608%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!124610%_
      (lambda (_%self128866%_)
        (let ((_%self128870%_ _%self128866%_))
          (let ((_%h128880%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self128870%_ '1 '#f '#f)))
                (_%l128882%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self128870%_ '2 '#f '#f))))
            (let ((__tmp131895
                   (lambda ()
                     (let ((_%self123724128886%_ _%l128882%_))
                       (declare (not safe))
                       (let ((_%object128889128894%_
                              (##unchecked-structure-ref
                               _%self123724128886%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method128890128895%_
                              (##unchecked-structure-ref
                               _%self123724128886%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method128890128895%_ _%object128889128894%_)))))
                  (__tmp131894
                   (lambda ()
                     (let ((_%self121283128898%_ _%h128880%_))
                       (declare (not safe))
                       (let ((_%object128901128906%_
                              (##unchecked-structure-ref
                               _%self121283128898%_
                               '1
                               '#f
                               'clear!))
                             (_%method128902128907%_
                              (##unchecked-structure-ref
                               _%self121283128898%_
                               '2
                               '#f
                               'clear!)))
                         (_%method128902128907%_ _%object128901128906%_)))))
                  (__tmp131893
                   (lambda ()
                     (let ((_%self123968128910%_ _%l128882%_))
                       (declare (not safe))
                       (let ((_%object128913128918%_
                              (##unchecked-structure-ref
                               _%self123968128910%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method128914128919%_
                              (##unchecked-structure-ref
                               _%self123968128910%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method128914128919%_ _%object128913128918%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp131895 __tmp131894 __tmp131893))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!124610%_
       '#f))
    (let ((__tmp131896 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp131896 'Locker::read-lock! mutex-lock!))
    (let ((__tmp131897 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp131897 'Locker::read-unlock! mutex-unlock!))
    (let ((__tmp131898 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp131898 'Locker::write-lock! mutex-lock!))
    (let ((__tmp131899 (macro-type-mutex)))
      (declare (not safe))
      (bind-method!__0 __tmp131899 'Locker::write-unlock! mutex-unlock!))
    (define _%checked-hash-table::HashTable::ref124821%_
      (lambda (_%self128684%_ _%key128685%_ _%default128686%_)
        (let* ((_%self128689%_ _%self128684%_)
               (_%key128698%_ _%key128685%_)
               (_%default128706%_ _%default128686%_))
          (declare (not safe))
          (let ((_%h128717%_
                 (##unchecked-structure-ref _%self128689%_ '1 '#f '#f))
                (_%key?128719%_
                 (##unchecked-structure-ref _%self128689%_ '2 '#f '#f)))
            (if ((lambda (_%key?128722%_ _%key128723%_ _%default128724%_)
                   (_%key?128722%_ _%key128723%_))
                 _%key?128719%_
                 _%key128698%_
                 _%default128706%_)
                (let* ((_%self122504128726%_ _%h128717%_)
                       (_%key128729%_ _%key128698%_)
                       (_%default128732%_ _%default128706%_))
                  (declare (not safe))
                  (let ((_%object128735128740%_
                         (##unchecked-structure-ref
                          _%self122504128726%_
                          '1
                          '#f
                          'ref))
                        (_%method128736128741%_
                         (##unchecked-structure-ref
                          _%self122504128726%_
                          '7
                          '#f
                          'ref)))
                    (_%method128736128741%_
                     _%object128735128740%_
                     _%key128729%_
                     _%default128732%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key128698%_ (cons _%default128706%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref124821%_
       '#f))
    (define _%checked-hash-table::HashTable::set!124823%_
      (lambda (_%self128502%_ _%key128503%_ _%value128504%_)
        (let* ((_%self128507%_ _%self128502%_)
               (_%key128516%_ _%key128503%_)
               (_%value128524%_ _%value128504%_))
          (declare (not safe))
          (let ((_%h128535%_
                 (##unchecked-structure-ref _%self128507%_ '1 '#f '#f))
                (_%key?128537%_
                 (##unchecked-structure-ref _%self128507%_ '2 '#f '#f)))
            (if ((lambda (_%key?128540%_ _%key128541%_ _%value128542%_)
                   (_%key?128540%_ _%key128541%_))
                 _%key?128537%_
                 _%key128516%_
                 _%value128524%_)
                (let* ((_%self122748128544%_ _%h128535%_)
                       (_%key128547%_ _%key128516%_)
                       (_%value128550%_ _%value128524%_))
                  (declare (not safe))
                  (let ((_%object128553128558%_
                         (##unchecked-structure-ref
                          _%self122748128544%_
                          '1
                          '#f
                          'set!))
                        (_%method128554128559%_
                         (##unchecked-structure-ref
                          _%self122748128544%_
                          '8
                          '#f
                          'set!)))
                    (_%method128554128559%_
                     _%object128553128558%_
                     _%key128547%_
                     _%value128550%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key128516%_ (cons _%value128524%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!124823%_
       '#f))
    (define _%checked-hash-table::HashTable::update!124825%_
      (lambda (_%self128307%_ _%key128308%_ _%update128309%_ _%default128310%_)
        (let* ((_%self128313%_ _%self128307%_)
               (_%key128322%_ _%key128308%_)
               (_%update128330%_ _%update128309%_)
               (_%default128338%_ _%default128310%_))
          (declare (not safe))
          (let ((_%h128349%_
                 (##unchecked-structure-ref _%self128313%_ '1 '#f '#f))
                (_%key?128351%_
                 (##unchecked-structure-ref _%self128313%_ '2 '#f '#f)))
            (if ((lambda (_%key?128354%_
                          _%key128355%_
                          _%update128356%_
                          _%default128357%_)
                   (_%key?128354%_ _%key128355%_))
                 _%key?128351%_
                 _%key128322%_
                 _%update128330%_
                 _%default128338%_)
                (let* ((_%self122992128359%_ _%h128349%_)
                       (_%key128362%_ _%key128322%_)
                       (_%proc128365%_ _%update128330%_)
                       (_%default128368%_ _%default128338%_))
                  (declare (not safe))
                  (let ((_%object128371128376%_
                         (##unchecked-structure-ref
                          _%self122992128359%_
                          '1
                          '#f
                          'update!))
                        (_%method128372128377%_
                         (##unchecked-structure-ref
                          _%self122992128359%_
                          '9
                          '#f
                          'update!)))
                    (_%method128372128377%_
                     _%object128371128376%_
                     _%key128362%_
                     _%proc128365%_
                     _%default128368%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key128322%_
                         (cons _%update128330%_ (cons _%default128338%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!124825%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!124827%_
      (lambda (_%self128138%_ _%key128139%_)
        (let* ((_%self128142%_ _%self128138%_) (_%key128151%_ _%key128139%_))
          (declare (not safe))
          (let ((_%h128162%_
                 (##unchecked-structure-ref _%self128142%_ '1 '#f '#f))
                (_%key?128164%_
                 (##unchecked-structure-ref _%self128142%_ '2 '#f '#f)))
            (if ((lambda (_%key?128167%_ _%key128168%_)
                   (_%key?128167%_ _%key128168%_))
                 _%key?128164%_
                 _%key128151%_)
                (let* ((_%self121772128170%_ _%h128162%_)
                       (_%key128173%_ _%key128151%_))
                  (declare (not safe))
                  (let ((_%object128176128181%_
                         (##unchecked-structure-ref
                          _%self121772128170%_
                          '1
                          '#f
                          'delete!))
                        (_%method128177128182%_
                         (##unchecked-structure-ref
                          _%self121772128170%_
                          '4
                          '#f
                          'delete!)))
                    (_%method128177128182%_
                     _%object128176128181%_
                     _%key128173%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key128151%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!124827%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each124829%_
      (lambda (_%self127969%_ _%proc127970%_)
        (let* ((_%self127973%_ _%self127969%_) (_%proc127982%_ _%proc127970%_))
          (declare (not safe))
          (let ((_%h127993%_
                 (##unchecked-structure-ref _%self127973%_ '1 '#f '#f))
                (_%key?127995%_
                 (##unchecked-structure-ref _%self127973%_ '2 '#f '#f)))
            (if ((lambda (_%key?127998%_ _%proc127999%_) '#t)
                 _%key?127995%_
                 _%proc127982%_)
                (let* ((_%self122016128001%_ _%h127993%_)
                       (_%proc128004%_ _%proc127982%_))
                  (declare (not safe))
                  (let ((_%object128007128012%_
                         (##unchecked-structure-ref
                          _%self122016128001%_
                          '1
                          '#f
                          'for-each))
                        (_%method128008128013%_
                         (##unchecked-structure-ref
                          _%self122016128001%_
                          '5
                          '#f
                          'for-each)))
                    (_%method128008128013%_
                     _%object128007128012%_
                     _%proc128004%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc127982%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each124829%_
       '#f))
    (define _%checked-hash-table::HashTable::length124831%_
      (lambda (_%self127815%_)
        (let ((_%self127818%_ _%self127815%_))
          (declare (not safe))
          (let ((_%h127830%_
                 (##unchecked-structure-ref _%self127818%_ '1 '#f '#f))
                (_%key?127832%_
                 (##unchecked-structure-ref _%self127818%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self122260127835%_ _%h127830%_))
                  (declare (not safe))
                  (let ((_%object127838127843%_
                         (##unchecked-structure-ref
                          _%self122260127835%_
                          '1
                          '#f
                          'length))
                        (_%method127839127844%_
                         (##unchecked-structure-ref
                          _%self122260127835%_
                          '6
                          '#f
                          'length)))
                    (_%method127839127844%_ _%object127838127843%_)))
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
       _%checked-hash-table::HashTable::length124831%_
       '#f))
    (define _%checked-hash-table::HashTable::copy124833%_
      (lambda (_%self127661%_)
        (let ((_%self127664%_ _%self127661%_))
          (declare (not safe))
          (let ((_%h127676%_
                 (##unchecked-structure-ref _%self127664%_ '1 '#f '#f))
                (_%key?127678%_
                 (##unchecked-structure-ref _%self127664%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self121528127681%_ _%h127676%_))
                  (declare (not safe))
                  (let ((_%object127684127689%_
                         (##unchecked-structure-ref
                          _%self121528127681%_
                          '1
                          '#f
                          'copy))
                        (_%method127685127690%_
                         (##unchecked-structure-ref
                          _%self121528127681%_
                          '3
                          '#f
                          'copy)))
                    (_%method127685127690%_ _%object127684127689%_)))
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
       _%checked-hash-table::HashTable::copy124833%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!124835%_
      (lambda (_%self127507%_)
        (let ((_%self127510%_ _%self127507%_))
          (declare (not safe))
          (let ((_%h127522%_
                 (##unchecked-structure-ref _%self127510%_ '1 '#f '#f))
                (_%key?127524%_
                 (##unchecked-structure-ref _%self127510%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self121283127527%_ _%h127522%_))
                  (declare (not safe))
                  (let ((_%object127530127535%_
                         (##unchecked-structure-ref
                          _%self121283127527%_
                          '1
                          '#f
                          'clear!))
                        (_%method127531127536%_
                         (##unchecked-structure-ref
                          _%self121283127527%_
                          '2
                          '#f
                          'clear!)))
                    (_%method127531127536%_ _%object127530127535%_)))
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
       _%checked-hash-table::HashTable::clear!124835%_
       '#f))
    (define make-generic-hash-table
      (lambda (_%table127377%_
               _%count127378%_
               _%free127379%_
               _%hash127380%_
               _%test127381%_
               _%seed127382%_)
        (let ()
          (declare (not safe))
          (##structure
           hash-table::t
           _%table127377%_
           _%count127378%_
           _%free127379%_
           _%hash127380%_
           _%test127381%_
           _%seed127382%_))))
    (define make-hash-table__%
      (lambda (_%@@keywords127146%_
               _%size-hint127136127147%_
               _%seed127137127148%_
               _%test127138127149%_
               _%hash127139127150%_
               _%lock127140127151%_
               _%check127141127152%_
               _%weak-keys127142127153%_
               _%weak-values127143127154%_)
        (let* ((_%size-hint127156%_
                (if (eq? _%size-hint127136127147%_ absent-value)
                    '#f
                    _%size-hint127136127147%_))
               (_%seed127158%_
                (if (eq? _%seed127137127148%_ absent-value)
                    '#f
                    _%seed127137127148%_))
               (_%test127160%_
                (if (eq? _%test127138127149%_ absent-value)
                    equal?
                    _%test127138127149%_))
               (_%hash127162%_
                (if (eq? _%hash127139127150%_ absent-value)
                    '#f
                    _%hash127139127150%_))
               (_%lock127164%_
                (if (eq? _%lock127140127151%_ absent-value)
                    '#f
                    _%lock127140127151%_))
               (_%check127166%_
                (if (eq? _%check127141127152%_ absent-value)
                    '#f
                    _%check127141127152%_))
               (_%weak-keys127168%_
                (if (eq? _%weak-keys127142127153%_ absent-value)
                    '#f
                    _%weak-keys127142127153%_))
               (_%weak-values127170%_
                (if (eq? _%weak-values127143127154%_ absent-value)
                    '#f
                    _%weak-values127143127154%_)))
          (letrec ((_%table-seed127173%_
                    (lambda ()
                      (if (fixnum? _%seed127158%_)
                          _%seed127158%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%wrap-lock127174%_
                    (lambda (_%ht127351%_)
                      (let ((_%ht127354%_ _%ht127351%_))
                        (_%__wrap-lock127175%_ _%ht127354%_))))
                   (_%__wrap-lock127175%_
                    (lambda (_%ht127333%_)
                      (let ((_%ht127336%_ _%ht127333%_))
                        (if _%lock127164%_
                            (let ((_%$obj127348%_
                                   (let ((__tmp131900
                                          (let ((_%$obj127345%_
                                                 _%lock127164%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (##structure?
                                                        _%$obj127345%_))
                                                     (eq? Locker::t
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-type
                                                             _%$obj127345%_)))
                                                     '#t)
                                                _%$obj127345%_
                                                (let ()
                                                  (declare (not safe))
                                                  (cast Locker::interface
                                                        _%$obj127345%_))))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht127336%_
                                      __tmp131900))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj127348%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj127348%_)))
                                       '#t)
                                  _%$obj127348%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj127348%_))))
                            _%ht127336%_))))
                   (_%wrap-checked127176%_
                    (lambda (_%ht127320%_ _%implicit127321%_)
                      (let ((_%ht127324%_ _%ht127320%_))
                        (_%__wrap-checked127177%_
                         _%ht127324%_
                         _%implicit127321%_))))
                   (_%__wrap-checked127177%_
                    (lambda (_%ht127293%_ _%implicit127294%_)
                      (let ((_%ht127297%_ _%ht127293%_))
                        (if _%check127166%_
                            (let ((_%$obj127317%_
                                   (let ((__tmp131901
                                          (if (procedure? _%check127166%_)
                                              _%check127166%_
                                              _%implicit127294%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht127297%_
                                      __tmp131901))))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj127317%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj127317%_)))
                                       '#t)
                                  _%$obj127317%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj127317%_))))
                            _%ht127297%_))))
                   (_%make127178%_
                    (lambda (_%kons127277%_
                             _%key?127278%_
                             _%hash127279%_
                             _%test127280%_)
                      (let* ((_%size127283%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint127156%_)))
                             (_%table127285%_
                              (let ((__tmp131902 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size127283%_ __tmp131902)))
                             (_%ht127290%_
                              (let ((_%$obj127287%_
                                     (_%kons127277%_
                                      _%table127285%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size127283%_ '2))
                                      _%hash127279%_
                                      _%test127280%_
                                      (_%table-seed127173%_))))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj127287%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj127287%_)))
                                         '#t)
                                    _%$obj127287%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj127287%_))))))
                        (_%__wrap-checked127177%_
                         (_%__wrap-lock127175%_ _%ht127290%_)
                         _%key?127278%_))))
                   (_%make-gc-hash-table127179%_
                    (lambda ()
                      (let ((_%ht127275%_
                             (let ((_%$obj127272%_
                                    (let ()
                                      (declare (not safe))
                                      (make-gc-table__1
                                       _%size-hint127156%_
                                       gc-hash-table::t))))
                               (if (and (let ()
                                          (declare (not safe))
                                          (##structure? _%$obj127272%_))
                                        (eq? HashTable::t
                                             (let ()
                                               (declare (not safe))
                                               (##structure-type
                                                _%$obj127272%_)))
                                        '#t)
                                   _%$obj127272%_
                                   (let ()
                                     (declare (not safe))
                                     (cast HashTable::interface
                                           _%$obj127272%_))))))
                        (_%__wrap-checked127177%_
                         (_%__wrap-lock127175%_ _%ht127275%_)
                         true))))
                   (_%make-gambit-table127180%_
                    (lambda ()
                      (let* ((_%size127249%_
                              (let ((_%$e127246%_ _%size-hint127156%_))
                                (if _%$e127246%_
                                    _%$e127246%_
                                    (macro-absent-obj))))
                             (_%test127254%_
                              (let ((_%$e127251%_ _%test127160%_))
                                (if _%$e127251%_ _%$e127251%_ equal?)))
                             (_%hash127262%_
                              (let ((_%$e127256%_ _%hash127162%_))
                                (if _%$e127256%_
                                    _%$e127256%_
                                    (if (eq? _%test127254%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test127254%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht127267%_
                              (let ((_%$obj127264%_
                                     (make-table
                                      'size:
                                      _%size127249%_
                                      'test:
                                      _%test127254%_
                                      'hash:
                                      _%hash127262%_
                                      'weak-keys:
                                      _%weak-keys127168%_
                                      'weak-values:
                                      _%weak-values127170%_)))
                                (if (and (let ()
                                           (declare (not safe))
                                           (##structure? _%$obj127264%_))
                                         (eq? HashTable::t
                                              (let ()
                                                (declare (not safe))
                                                (##structure-type
                                                 _%$obj127264%_)))
                                         '#t)
                                    _%$obj127264%_
                                    (let ()
                                      (declare (not safe))
                                      (cast HashTable::interface
                                            _%$obj127264%_))))))
                        (_%__wrap-checked127177%_
                         (_%__wrap-lock127175%_ _%ht127267%_)
                         true)))))
            (if (or _%weak-keys127168%_ _%weak-values127170%_)
                (_%make-gambit-table127180%_)
                (if (and (or (eq? _%test127160%_ eq?)
                             (eq? _%test127160%_ ##eq?))
                         (or (not _%hash127162%_)
                             (eq? _%hash127162%_ eq?-hash)
                             (eq? _%hash127162%_ eq-hash))
                         (not _%seed127158%_))
                    (_%make-gc-hash-table127179%_)
                    (if (and (or (eq? _%test127160%_ eq?)
                                 (eq? _%test127160%_ ##eq?))
                             (or (not _%hash127162%_)
                                 (eq? _%hash127162%_ eq?-hash)
                                 (eq? _%hash127162%_ eq-hash)))
                        (_%make127178%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test127160%_ eqv?)
                                     (eq? _%test127160%_ ##eqv?))
                                 (or (not _%hash127162%_)
                                     (eq? _%hash127162%_ eqv?-hash)
                                     (eq? _%hash127162%_ eqv-hash)))
                            (_%make127178%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test127160%_ eq?)
                                         (eq? _%test127160%_ ##eq?))
                                     (or (eq? _%hash127162%_ symbolic-hash)
                                         (eq? _%hash127162%_ ##symbol-hash)))
                                (_%make127178%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test127160%_ eq?)
                                             (eq? _%test127160%_ ##eq?))
                                         (eq? _%hash127162%_ immediate-hash))
                                    (_%make127178%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test127160%_ equal?)
                                                 (eq? _%test127160%_ ##equal?)
                                                 (eq? _%test127160%_ string=?)
                                                 (eq? _%test127160%_
                                                      ##string=?))
                                             (or (eq? _%hash127162%_
                                                      string-hash)
                                                 (eq? _%hash127162%_
                                                      ##string=?-hash)))
                                        (_%make127178%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test127160%_ equal?)
                                                 (not _%hash127162%_))
                                            (_%make127178%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test127160%_)
                                                (if (procedure? _%hash127162%_)
                                                    (_%make127178%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash127162%_
                                                     _%test127160%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash127162%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test127160%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords127367%_ . _%args127368%_)
        (apply make-hash-table__%
               _%@@keywords127367%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords127367%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords127367%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords127367%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords127367%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords127367%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords127367%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords127367%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords127367%_
                  'weak-values:
                  absent-value))
               _%args127368%_)))
    (define make-hash-table
      (lambda _%args127144127374%_
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
               _%args127144127374%_)))
    (define make-hash-table-eq
      (lambda _%args127133%_
        (apply make-hash-table 'test: eq? _%args127133%_)))
    (define make-hash-table-eqv
      (lambda _%args127131%_
        (apply make-hash-table 'test: eqv? _%args127131%_)))
    (define make-hash-table-symbolic
      (lambda _%args127129%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args127129%_)))
    (define make-hash-table-string
      (lambda _%args127127%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args127127%_)))
    (define make-hash-table-immediate
      (lambda _%args127125%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args127125%_)))
    (define list->hash-table
      (lambda (_%lst127122%_ . _%args127123%_)
        (list->hash-table!
         _%lst127122%_
         (apply make-hash-table
                'size:
                (length _%lst127122%_)
                _%args127123%_))))
    (define list->hash-table-eq
      (lambda (_%lst127119%_ . _%args127120%_)
        (list->hash-table!
         _%lst127119%_
         (apply make-hash-table-eq
                'size:
                (length _%lst127119%_)
                _%args127120%_))))
    (define list->hash-table-eqv
      (lambda (_%lst127116%_ . _%args127117%_)
        (list->hash-table!
         _%lst127116%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst127116%_)
                _%args127117%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst127113%_ . _%args127114%_)
        (list->hash-table!
         _%lst127113%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst127113%_)
                _%args127114%_))))
    (define list->hash-table-string
      (lambda (_%lst127110%_ . _%args127111%_)
        (list->hash-table!
         _%lst127110%_
         (apply make-hash-table-string
                'size:
                (length _%lst127110%_)
                _%args127111%_))))
    (define list->hash-table-immediate
      (lambda (_%lst127107%_ . _%args127108%_)
        (list->hash-table!
         _%lst127107%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst127107%_)
                _%args127108%_))))
    (define list->hash-table!
      (lambda (_%lst127058%_ _%h127059%_)
        (for-each
         (lambda (_%el127061%_)
           (let* ((_%el127062127069%_ _%el127061%_)
                  (_%E127064127072%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%el127062127069%_
                              '([k . v])))
                     '#!void))
                  (_%K127065127095%_
                   (lambda (_%v127075%_ _%k127076%_)
                     (let* ((_%self122748127078%_ _%h127059%_)
                            (_%key127081%_ _%k127076%_)
                            (_%value127084%_ _%v127075%_))
                       (declare (not safe))
                       (let ((_%object127087127092%_
                              (##unchecked-structure-ref
                               _%self122748127078%_
                               '1
                               '#f
                               'set!))
                             (_%method127088127093%_
                              (##unchecked-structure-ref
                               _%self122748127078%_
                               '8
                               '#f
                               'set!)))
                         (_%method127088127093%_
                          _%object127087127092%_
                          _%key127081%_
                          _%value127084%_))))))
             (if (pair? _%el127062127069%_)
                 (let ((_%hd127066127098%_
                        (let ()
                          (declare (not safe))
                          (##car _%el127062127069%_)))
                       (_%tl127067127100%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%el127062127069%_))))
                   (let* ((_%k127103%_ _%hd127066127098%_)
                          (_%v127105%_ _%tl127067127100%_))
                     (_%K127065127095%_ _%v127105%_ _%k127103%_)))
                 (_%E127064127072%_))))
         _%lst127058%_)
        _%h127059%_))
    (define plist->hash-table
      (lambda (_%lst127055%_ . _%args127056%_)
        (plist->hash-table!
         _%lst127055%_
         (apply make-hash-table
                'size:
                (length _%lst127055%_)
                _%args127056%_))))
    (define plist->hash-table-eq
      (lambda (_%lst127052%_ . _%args127053%_)
        (plist->hash-table!
         _%lst127052%_
         (apply make-hash-table-eq
                'size:
                (length _%lst127052%_)
                _%args127053%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst127049%_ . _%args127050%_)
        (plist->hash-table!
         _%lst127049%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst127049%_)
                _%args127050%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst127046%_ . _%args127047%_)
        (plist->hash-table!
         _%lst127046%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst127046%_)
                _%args127047%_))))
    (define plist->hash-table-string
      (lambda (_%lst127043%_ . _%args127044%_)
        (plist->hash-table!
         _%lst127043%_
         (apply make-hash-table-string
                'size:
                (length _%lst127043%_)
                _%args127044%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst127040%_ . _%args127041%_)
        (plist->hash-table!
         _%lst127040%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst127040%_)
                _%args127041%_))))
    (define plist->hash-table!
      (lambda (_%lst126963%_ _%h126964%_)
        (let _%loop126966%_ ((_%rest126968%_ _%lst126963%_))
          (let* ((_%rest126969126981%_ _%rest126968%_)
                 (_%else126972126989%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst126963%_)))))
            (let ((_%K126975127021%_
                   (lambda (_%rest127000%_ _%val127001%_ _%key127002%_)
                     (let* ((_%self122748127004%_ _%h126964%_)
                            (_%key127007%_ _%key127002%_)
                            (_%value127010%_ _%val127001%_))
                       (declare (not safe))
                       (let ((_%object127013127018%_
                              (##unchecked-structure-ref
                               _%self122748127004%_
                               '1
                               '#f
                               'set!))
                             (_%method127014127019%_
                              (##unchecked-structure-ref
                               _%self122748127004%_
                               '8
                               '#f
                               'set!)))
                         (_%method127014127019%_
                          _%object127013127018%_
                          _%key127007%_
                          _%value127010%_)))
                     (_%loop126966%_ _%rest127000%_)))
                  (_%K126974126994%_ (lambda () _%h126964%_)))
              (let ((_%try-match126971126997%_
                     (lambda ()
                       (if (null? _%rest126969126981%_)
                           (_%K126974126994%_)
                           (_%else126972126989%_)))))
                (if (pair? _%rest126969126981%_)
                    (let ((_%tl126977127026%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest126969126981%_)))
                          (_%hd126976127024%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest126969126981%_))))
                      (if (pair? _%tl126977127026%_)
                          (let ((_%tl126979127033%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl126977127026%_)))
                                (_%hd126978127031%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl126977127026%_))))
                            (let ((_%key127029%_ _%hd126976127024%_)
                                  (_%val127036%_ _%hd126978127031%_)
                                  (_%rest127038%_ _%tl126979127033%_))
                              (_%K126975127021%_
                               _%rest127038%_
                               _%val127036%_
                               _%key127029%_)))
                          (_%else126972126989%_)))
                    (_%try-match126971126997%_))))))))
    (define hash-length
      (lambda (_%h126945%_)
        (let* ((_%h126951%_
                (let ((_%$obj126948%_ _%h126945%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj126948%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj126948%_)))
                           '#t)
                      _%$obj126948%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj126948%_)))))
               (_%h126953%_ _%h126951%_))
          (__hash-length _%h126953%_))))
    (define __hash-length
      (lambda (_%h126894%_)
        (let* ((_%h126897%_ _%h126894%_)
               (_%self122261126906%_ _%h126897%_)
               (_%self122261126913%_
                (let ((_%$obj126910%_ _%self122261126906%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj126910%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj126910%_)))
                           '#t)
                      _%$obj126910%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj126910%_)))))
               (_%self122261126915%_ _%self122261126913%_))
          (if __DEBUG
              (let ((_%val126935%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object126927126932%_
                              (##unchecked-structure-ref
                               _%self122261126915%_
                               '1
                               '#f
                               'length))
                             (_%method126928126933%_
                              (##unchecked-structure-ref
                               _%self122261126915%_
                               '6
                               '#f
                               'length)))
                         (_%method126928126933%_ _%object126927126932%_)))))
                (if (fixnum? _%val126935%_)
                    _%val126935%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val126935%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object126937126942%_
                       (##unchecked-structure-ref
                        _%self122261126915%_
                        '1
                        '#f
                        'length))
                      (_%method126938126943%_
                       (##unchecked-structure-ref
                        _%self122261126915%_
                        '6
                        '#f
                        'length)))
                  (_%method126938126943%_ _%object126937126942%_)))))))
    (define hash-ref__%
      (lambda (_%h126862%_ _%key126863%_ _%default126864%_)
        (let* ((_%h126870%_
                (let ((_%$obj126867%_ _%h126862%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj126867%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj126867%_)))
                           '#t)
                      _%$obj126867%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj126867%_)))))
               (_%h126872%_ _%h126870%_))
          (__hash-ref__% _%h126872%_ _%key126863%_ _%default126864%_))))
    (define hash-ref__0
      (lambda (_%h126885%_ _%key126886%_)
        (let ((_%default126888%_ (macro-absent-obj)))
          (hash-ref__% _%h126885%_ _%key126886%_ _%default126888%_))))
    (define hash-ref
      (lambda _g131903_
        (let ((_g131904_ (let () (declare (not safe)) (##length _g131903_))))
          (cond ((let () (declare (not safe)) (##fx= _g131904_ 2))
                 (apply hash-ref__0 _g131903_))
                ((let () (declare (not safe)) (##fx= _g131904_ 3))
                 (apply hash-ref__% _g131903_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g131903_))))))
    (define __hash-ref__%
      (lambda (_%h126789%_ _%key126790%_ _%default126791%_)
        (let* ((_%h126794%_ _%h126789%_)
               (_%result126847%_
                (let* ((_%self122505126803%_ _%h126794%_)
                       (_%key126806%_ _%key126790%_)
                       (_%default126809%_ _%default126791%_)
                       (_%self122505126816%_
                        (let ((_%$obj126813%_ _%self122505126803%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj126813%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj126813%_)))
                                   '#t)
                              _%$obj126813%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj126813%_)))))
                       (_%self122505126818%_ _%self122505126816%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object126832126837%_
                               (##unchecked-structure-ref
                                _%self122505126818%_
                                '1
                                '#f
                                'ref))
                              (_%method126833126838%_
                               (##unchecked-structure-ref
                                _%self122505126818%_
                                '7
                                '#f
                                'ref)))
                          (_%method126833126838%_
                           _%object126832126837%_
                           _%key126806%_
                           _%default126809%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object126839126844%_
                               (##unchecked-structure-ref
                                _%self122505126818%_
                                '1
                                '#f
                                'ref))
                              (_%method126840126845%_
                               (##unchecked-structure-ref
                                _%self122505126818%_
                                '7
                                '#f
                                'ref)))
                          (_%method126840126845%_
                           _%object126839126844%_
                           _%key126806%_
                           _%default126809%_)))))))
          (if (eq? _%result126847%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h126794%_
               'key:
               _%key126790%_)
              _%result126847%_))))
    (define __hash-ref__0
      (lambda (_%h126852%_ _%key126853%_)
        (let ((_%default126855%_ (macro-absent-obj)))
          (__hash-ref__% _%h126852%_ _%key126853%_ _%default126855%_))))
    (define __hash-ref
      (lambda _g131905_
        (let ((_g131906_ (let () (declare (not safe)) (##length _g131905_))))
          (cond ((let () (declare (not safe)) (##fx= _g131906_ 2))
                 (apply __hash-ref__0 _g131905_))
                ((let () (declare (not safe)) (##fx= _g131906_ 3))
                 (apply __hash-ref__% _g131905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g131905_))))))
    (define hash-get
      (lambda (_%h126769%_ _%key126770%_)
        (let* ((_%h126776%_
                (let ((_%$obj126773%_ _%h126769%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj126773%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj126773%_)))
                           '#t)
                      _%$obj126773%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj126773%_)))))
               (_%h126778%_ _%h126776%_))
          (__hash-get _%h126778%_ _%key126770%_))))
    (define __hash-get
      (lambda (_%h126712%_ _%key126713%_)
        (let* ((_%h126716%_ _%h126712%_)
               (_%self122505126725%_ _%h126716%_)
               (_%key126728%_ _%key126713%_)
               (_%default126731%_ '#f)
               (_%self122505126738%_
                (let ((_%$obj126735%_ _%self122505126725%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj126735%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj126735%_)))
                           '#t)
                      _%$obj126735%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj126735%_)))))
               (_%self122505126740%_ _%self122505126738%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object126754126759%_
                       (##unchecked-structure-ref
                        _%self122505126740%_
                        '1
                        '#f
                        'ref))
                      (_%method126755126760%_
                       (##unchecked-structure-ref
                        _%self122505126740%_
                        '7
                        '#f
                        'ref)))
                  (_%method126755126760%_
                   _%object126754126759%_
                   _%key126728%_
                   _%default126731%_)))
              (let ()
                (declare (not safe))
                (let ((_%object126761126766%_
                       (##unchecked-structure-ref
                        _%self122505126740%_
                        '1
                        '#f
                        'ref))
                      (_%method126762126767%_
                       (##unchecked-structure-ref
                        _%self122505126740%_
                        '7
                        '#f
                        'ref)))
                  (_%method126762126767%_
                   _%object126761126766%_
                   _%key126728%_
                   _%default126731%_)))))))
    (define hash-put!
      (lambda (_%h126692%_ _%key126693%_ _%value126694%_)
        (let* ((_%h126700%_
                (let ((_%$obj126697%_ _%h126692%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj126697%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj126697%_)))
                           '#t)
                      _%$obj126697%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj126697%_)))))
               (_%h126702%_ _%h126700%_))
          (__hash-put! _%h126702%_ _%key126693%_ _%value126694%_))))
    (define __hash-put!
      (lambda (_%h126634%_ _%key126635%_ _%value126636%_)
        (let* ((_%h126639%_ _%h126634%_)
               (_%self122749126648%_ _%h126639%_)
               (_%key126651%_ _%key126635%_)
               (_%value126654%_ _%value126636%_)
               (_%self122749126661%_
                (let ((_%$obj126658%_ _%self122749126648%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj126658%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj126658%_)))
                           '#t)
                      _%$obj126658%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj126658%_)))))
               (_%self122749126663%_ _%self122749126661%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object126677126682%_
                       (##unchecked-structure-ref
                        _%self122749126663%_
                        '1
                        '#f
                        'set!))
                      (_%method126678126683%_
                       (##unchecked-structure-ref
                        _%self122749126663%_
                        '8
                        '#f
                        'set!)))
                  (_%method126678126683%_
                   _%object126677126682%_
                   _%key126651%_
                   _%value126654%_)))
              (let ()
                (declare (not safe))
                (let ((_%object126684126689%_
                       (##unchecked-structure-ref
                        _%self122749126663%_
                        '1
                        '#f
                        'set!))
                      (_%method126685126690%_
                       (##unchecked-structure-ref
                        _%self122749126663%_
                        '8
                        '#f
                        'set!)))
                  (_%method126685126690%_
                   _%object126684126689%_
                   _%key126651%_
                   _%value126654%_)))))))
    (define hash-update!__%
      (lambda (_%h126599%_ _%key126600%_ _%update126601%_ _%default126602%_)
        (let* ((_%h126608%_
                (let ((_%$obj126605%_ _%h126599%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj126605%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj126605%_)))
                           '#t)
                      _%$obj126605%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj126605%_)))))
               (_%h126610%_ _%h126608%_))
          (__hash-update!__%
           _%h126610%_
           _%key126600%_
           _%update126601%_
           _%default126602%_))))
    (define hash-update!__0
      (lambda (_%h126623%_ _%key126624%_ _%update126625%_)
        (let ((_%default126627%_ '#!void))
          (hash-update!__%
           _%h126623%_
           _%key126624%_
           _%update126625%_
           _%default126627%_))))
    (define hash-update!
      (lambda _g131907_
        (let ((_g131908_ (let () (declare (not safe)) (##length _g131907_))))
          (cond ((let () (declare (not safe)) (##fx= _g131908_ 3))
                 (apply hash-update!__0 _g131907_))
                ((let () (declare (not safe)) (##fx= _g131908_ 4))
                 (apply hash-update!__% _g131907_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g131907_))))))
    (define __hash-update!__%
      (lambda (_%h126511%_ _%key126512%_ _%update126513%_ _%default126514%_)
        (let* ((_%h126517%_ _%h126511%_)
               (_%self122993126526%_ _%h126517%_)
               (_%key126529%_ _%key126512%_)
               (_%proc126532%_ _%update126513%_)
               (_%default126535%_ _%default126514%_)
               (_%self122993126542%_
                (let ((_%$obj126539%_ _%self122993126526%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj126539%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj126539%_)))
                           '#t)
                      _%$obj126539%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj126539%_)))))
               (_%self122993126544%_ _%self122993126542%_))
          (if (procedure? _%proc126532%_)
              (let ((_%proc126560%_ _%proc126532%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object126569126574%_
                             (##unchecked-structure-ref
                              _%self122993126544%_
                              '1
                              '#f
                              'update!))
                            (_%method126570126575%_
                             (##unchecked-structure-ref
                              _%self122993126544%_
                              '9
                              '#f
                              'update!)))
                        (_%method126570126575%_
                         _%object126569126574%_
                         _%key126529%_
                         _%proc126560%_
                         _%default126535%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object126576126581%_
                             (##unchecked-structure-ref
                              _%self122993126544%_
                              '1
                              '#f
                              'update!))
                            (_%method126577126582%_
                             (##unchecked-structure-ref
                              _%self122993126544%_
                              '9
                              '#f
                              'update!)))
                        (_%method126577126582%_
                         _%object126576126581%_
                         _%key126529%_
                         _%proc126560%_
                         _%default126535%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc126532%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h126587%_ _%key126588%_ _%update126589%_)
        (let ((_%default126591%_ '#!void))
          (__hash-update!__%
           _%h126587%_
           _%key126588%_
           _%update126589%_
           _%default126591%_))))
    (define __hash-update!
      (lambda _g131909_
        (let ((_g131910_ (let () (declare (not safe)) (##length _g131909_))))
          (cond ((let () (declare (not safe)) (##fx= _g131910_ 3))
                 (apply __hash-update!__0 _g131909_))
                ((let () (declare (not safe)) (##fx= _g131910_ 4))
                 (apply __hash-update!__% _g131909_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g131909_))))))
    (define hash-remove!
      (lambda (_%h126491%_ _%key126492%_)
        (let* ((_%h126498%_
                (let ((_%$obj126495%_ _%h126491%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj126495%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj126495%_)))
                           '#t)
                      _%$obj126495%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj126495%_)))))
               (_%h126500%_ _%h126498%_))
          (__hash-remove! _%h126500%_ _%key126492%_))))
    (define __hash-remove!
      (lambda (_%h126438%_ _%key126439%_)
        (let* ((_%h126442%_ _%h126438%_)
               (_%self121773126451%_ _%h126442%_)
               (_%key126454%_ _%key126439%_)
               (_%self121773126461%_
                (let ((_%$obj126458%_ _%self121773126451%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj126458%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj126458%_)))
                           '#t)
                      _%$obj126458%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj126458%_)))))
               (_%self121773126463%_ _%self121773126461%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object126476126481%_
                       (##unchecked-structure-ref
                        _%self121773126463%_
                        '1
                        '#f
                        'delete!))
                      (_%method126477126482%_
                       (##unchecked-structure-ref
                        _%self121773126463%_
                        '4
                        '#f
                        'delete!)))
                  (_%method126477126482%_
                   _%object126476126481%_
                   _%key126454%_)))
              (let ()
                (declare (not safe))
                (let ((_%object126483126488%_
                       (##unchecked-structure-ref
                        _%self121773126463%_
                        '1
                        '#f
                        'delete!))
                      (_%method126484126489%_
                       (##unchecked-structure-ref
                        _%self121773126463%_
                        '4
                        '#f
                        'delete!)))
                  (_%method126484126489%_
                   _%object126483126488%_
                   _%key126454%_)))))))
    (define hash-key?
      (lambda (_%h126419%_ _%k126420%_)
        (let* ((_%h126426%_
                (let ((_%$obj126423%_ _%h126419%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj126423%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj126423%_)))
                           '#t)
                      _%$obj126423%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj126423%_)))))
               (_%h126428%_ _%h126426%_))
          (__hash-key? _%h126428%_ _%k126420%_))))
    (define __hash-key?
      (lambda (_%h126362%_ _%k126363%_)
        (let ((_%h126366%_ _%h126362%_))
          (not (eq? (let* ((_%self122505126375%_ _%h126366%_)
                           (_%key126378%_ _%k126363%_)
                           (_%default126381%_ absent-value)
                           (_%self122505126388%_
                            (let ((_%$obj126385%_ _%self122505126375%_))
                              (if (and (let ()
                                         (declare (not safe))
                                         (##structure? _%$obj126385%_))
                                       (eq? HashTable::t
                                            (let ()
                                              (declare (not safe))
                                              (##structure-type
                                               _%$obj126385%_)))
                                       '#t)
                                  _%$obj126385%_
                                  (let ()
                                    (declare (not safe))
                                    (cast HashTable::interface
                                          _%$obj126385%_)))))
                           (_%self122505126390%_ _%self122505126388%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object126404126409%_
                                   (##unchecked-structure-ref
                                    _%self122505126390%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method126405126410%_
                                   (##unchecked-structure-ref
                                    _%self122505126390%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method126405126410%_
                               _%object126404126409%_
                               _%key126378%_
                               _%default126381%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object126411126416%_
                                   (##unchecked-structure-ref
                                    _%self122505126390%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method126412126417%_
                                   (##unchecked-structure-ref
                                    _%self122505126390%_
                                    '7
                                    '#f
                                    'ref)))
                              (_%method126412126417%_
                               _%object126411126416%_
                               _%key126378%_
                               _%default126381%_)))))
                    absent-value)))))
    (define hash->list
      (lambda (_%h126344%_)
        (let* ((_%h126350%_
                (let ((_%$obj126347%_ _%h126344%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj126347%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj126347%_)))
                           '#t)
                      _%$obj126347%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj126347%_)))))
               (_%h126352%_ _%h126350%_))
          (__hash->list _%h126352%_))))
    (define __hash->list
      (lambda (_%h126276%_)
        (let* ((_%h126279%_ _%h126276%_) (_%lst126288%_ '()))
          (let* ((_%self122017126290%_ _%h126279%_)
                 (_%proc126296%_
                  (lambda (_%k126293%_ _%v126294%_)
                    (set! _%lst126288%_
                          (cons (cons _%k126293%_ _%v126294%_)
                                _%lst126288%_))))
                 (_%self122017126303%_
                  (let ((_%$obj126300%_ _%self122017126290%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj126300%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj126300%_)))
                             '#t)
                        _%$obj126300%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj126300%_)))))
                 (_%self122017126305%_ _%self122017126303%_)
                 (_%proc126320%_ _%proc126296%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object126329126334%_
                         (##unchecked-structure-ref
                          _%self122017126305%_
                          '1
                          '#f
                          'for-each))
                        (_%method126330126335%_
                         (##unchecked-structure-ref
                          _%self122017126305%_
                          '5
                          '#f
                          'for-each)))
                    (_%method126330126335%_
                     _%object126329126334%_
                     _%proc126320%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object126336126341%_
                         (##unchecked-structure-ref
                          _%self122017126305%_
                          '1
                          '#f
                          'for-each))
                        (_%method126337126342%_
                         (##unchecked-structure-ref
                          _%self122017126305%_
                          '5
                          '#f
                          'for-each)))
                    (_%method126337126342%_
                     _%object126336126341%_
                     _%proc126320%_)))))
          _%lst126288%_)))
    (define hash->plist
      (lambda (_%h126258%_)
        (let* ((_%h126264%_
                (let ((_%$obj126261%_ _%h126258%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj126261%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj126261%_)))
                           '#t)
                      _%$obj126261%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj126261%_)))))
               (_%h126266%_ _%h126264%_))
          (__hash->plist _%h126266%_))))
    (define __hash->plist
      (lambda (_%h126190%_)
        (let* ((_%h126193%_ _%h126190%_) (_%lst126202%_ '()))
          (let* ((_%self122017126204%_ _%h126193%_)
                 (_%proc126210%_
                  (lambda (_%k126207%_ _%v126208%_)
                    (set! _%lst126202%_
                          (cons _%k126207%_
                                (cons _%v126208%_ _%lst126202%_)))))
                 (_%self122017126217%_
                  (let ((_%$obj126214%_ _%self122017126204%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj126214%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj126214%_)))
                             '#t)
                        _%$obj126214%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj126214%_)))))
                 (_%self122017126219%_ _%self122017126217%_)
                 (_%proc126234%_ _%proc126210%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object126243126248%_
                         (##unchecked-structure-ref
                          _%self122017126219%_
                          '1
                          '#f
                          'for-each))
                        (_%method126244126249%_
                         (##unchecked-structure-ref
                          _%self122017126219%_
                          '5
                          '#f
                          'for-each)))
                    (_%method126244126249%_
                     _%object126243126248%_
                     _%proc126234%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object126250126255%_
                         (##unchecked-structure-ref
                          _%self122017126219%_
                          '1
                          '#f
                          'for-each))
                        (_%method126251126256%_
                         (##unchecked-structure-ref
                          _%self122017126219%_
                          '5
                          '#f
                          'for-each)))
                    (_%method126251126256%_
                     _%object126250126255%_
                     _%proc126234%_)))))
          _%lst126202%_)))
    (define hash-for-each
      (lambda (_%proc126161%_ _%h126162%_)
        (if (procedure? _%proc126161%_)
            (let* ((_%proc126166%_ _%proc126161%_)
                   (_%h126178%_
                    (let ((_%$obj126175%_ _%h126162%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj126175%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj126175%_)))
                               '#t)
                          _%$obj126175%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj126175%_)))))
                   (_%h126180%_ _%h126178%_))
              (__hash-for-each _%proc126166%_ _%h126180%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@589.22-589.26"
               'contract:
               'procedure?
               'value:
               _%proc126161%_)
              '#!void))))
    (define __hash-for-each
      (lambda (_%proc126090%_ _%h126091%_)
        (let* ((_%proc126094%_ _%proc126090%_)
               (_%h126102%_ _%h126091%_)
               (_%self122017126111%_ _%h126102%_)
               (_%proc126114%_ _%proc126094%_)
               (_%self122017126121%_
                (let ((_%$obj126118%_ _%self122017126111%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj126118%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj126118%_)))
                           '#t)
                      _%$obj126118%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj126118%_)))))
               (_%self122017126123%_ _%self122017126121%_)
               (_%proc126137%_ _%proc126114%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object126146126151%_
                       (##unchecked-structure-ref
                        _%self122017126123%_
                        '1
                        '#f
                        'for-each))
                      (_%method126147126152%_
                       (##unchecked-structure-ref
                        _%self122017126123%_
                        '5
                        '#f
                        'for-each)))
                  (_%method126147126152%_
                   _%object126146126151%_
                   _%proc126137%_)))
              (let ()
                (declare (not safe))
                (let ((_%object126153126158%_
                       (##unchecked-structure-ref
                        _%self122017126123%_
                        '1
                        '#f
                        'for-each))
                      (_%method126154126159%_
                       (##unchecked-structure-ref
                        _%self122017126123%_
                        '5
                        '#f
                        'for-each)))
                  (_%method126154126159%_
                   _%object126153126158%_
                   _%proc126137%_)))))))
    (define hash-map
      (lambda (_%proc126061%_ _%h126062%_)
        (if (procedure? _%proc126061%_)
            (let* ((_%proc126066%_ _%proc126061%_)
                   (_%h126078%_
                    (let ((_%$obj126075%_ _%h126062%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj126075%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj126075%_)))
                               '#t)
                          _%$obj126075%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj126075%_)))))
                   (_%h126080%_ _%h126078%_))
              (__hash-map _%proc126066%_ _%h126080%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@592.17-592.21"
               'contract:
               'procedure?
               'value:
               _%proc126061%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc125984%_ _%h125985%_)
        (let* ((_%proc125988%_ _%proc125984%_)
               (_%h125996%_ _%h125985%_)
               (_%result126005%_ '()))
          (let* ((_%self122017126007%_ _%h125996%_)
                 (_%proc126013%_
                  (lambda (_%k126010%_ _%v126011%_)
                    (set! _%result126005%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc125988%_ _%k126010%_ _%v126011%_))
                                _%result126005%_))))
                 (_%self122017126020%_
                  (let ((_%$obj126017%_ _%self122017126007%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj126017%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj126017%_)))
                             '#t)
                        _%$obj126017%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj126017%_)))))
                 (_%self122017126022%_ _%self122017126020%_)
                 (_%proc126037%_ _%proc126013%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object126046126051%_
                         (##unchecked-structure-ref
                          _%self122017126022%_
                          '1
                          '#f
                          'for-each))
                        (_%method126047126052%_
                         (##unchecked-structure-ref
                          _%self122017126022%_
                          '5
                          '#f
                          'for-each)))
                    (_%method126047126052%_
                     _%object126046126051%_
                     _%proc126037%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object126053126058%_
                         (##unchecked-structure-ref
                          _%self122017126022%_
                          '1
                          '#f
                          'for-each))
                        (_%method126054126059%_
                         (##unchecked-structure-ref
                          _%self122017126022%_
                          '5
                          '#f
                          'for-each)))
                    (_%method126054126059%_
                     _%object126053126058%_
                     _%proc126037%_)))))
          _%result126005%_)))
    (define hash-fold
      (lambda (_%proc125954%_ _%iv125955%_ _%h125956%_)
        (if (procedure? _%proc125954%_)
            (let* ((_%proc125960%_ _%proc125954%_)
                   (_%h125972%_
                    (let ((_%$obj125969%_ _%h125956%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj125969%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj125969%_)))
                               '#t)
                          _%$obj125969%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj125969%_)))))
                   (_%h125974%_ _%h125972%_))
              (__hash-fold _%proc125960%_ _%iv125955%_ _%h125974%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.18-598.22"
               'contract:
               'procedure?
               'value:
               _%proc125954%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc125876%_ _%iv125877%_ _%h125878%_)
        (let* ((_%proc125881%_ _%proc125876%_)
               (_%h125889%_ _%h125878%_)
               (_%result125898%_ _%iv125877%_))
          (let* ((_%self122017125900%_ _%h125889%_)
                 (_%proc125906%_
                  (lambda (_%k125903%_ _%v125904%_)
                    (set! _%result125898%_
                          (let ()
                            (declare (not safe))
                            (_%proc125881%_
                             _%k125903%_
                             _%v125904%_
                             _%result125898%_)))))
                 (_%self122017125913%_
                  (let ((_%$obj125910%_ _%self122017125900%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj125910%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj125910%_)))
                             '#t)
                        _%$obj125910%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj125910%_)))))
                 (_%self122017125915%_ _%self122017125913%_)
                 (_%proc125930%_ _%proc125906%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object125939125944%_
                         (##unchecked-structure-ref
                          _%self122017125915%_
                          '1
                          '#f
                          'for-each))
                        (_%method125940125945%_
                         (##unchecked-structure-ref
                          _%self122017125915%_
                          '5
                          '#f
                          'for-each)))
                    (_%method125940125945%_
                     _%object125939125944%_
                     _%proc125930%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object125946125951%_
                         (##unchecked-structure-ref
                          _%self122017125915%_
                          '1
                          '#f
                          'for-each))
                        (_%method125947125952%_
                         (##unchecked-structure-ref
                          _%self122017125915%_
                          '5
                          '#f
                          'for-each)))
                    (_%method125947125952%_
                     _%object125946125951%_
                     _%proc125930%_)))))
          _%result125898%_)))
    (define hash-find__%
      (lambda (_%proc125834%_ _%h125835%_ _%default-value125836%_)
        (if (procedure? _%proc125834%_)
            (let* ((_%proc125840%_ _%proc125834%_)
                   (_%h125852%_
                    (let ((_%$obj125849%_ _%h125835%_))
                      (if (and (let ()
                                 (declare (not safe))
                                 (##structure? _%$obj125849%_))
                               (eq? HashTable::t
                                    (let ()
                                      (declare (not safe))
                                      (##structure-type _%$obj125849%_)))
                               '#t)
                          _%$obj125849%_
                          (let ()
                            (declare (not safe))
                            (cast HashTable::interface _%$obj125849%_)))))
                   (_%h125854%_ _%h125852%_))
              (__hash-find__%
               _%proc125840%_
               _%h125854%_
               _%default-value125836%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@603.18-603.22"
               'contract:
               'procedure?
               'value:
               _%proc125834%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc125867%_ _%h125868%_)
        (let ((_%default-value125870%_ '#f))
          (hash-find__% _%proc125867%_ _%h125868%_ _%default-value125870%_))))
    (define hash-find
      (lambda _g131911_
        (let ((_g131912_ (let () (declare (not safe)) (##length _g131911_))))
          (cond ((let () (declare (not safe)) (##fx= _g131912_ 2))
                 (apply hash-find__0 _g131911_))
                ((let () (declare (not safe)) (##fx= _g131912_ 3))
                 (apply hash-find__% _g131911_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g131911_))))))
    (define __hash-find__%
      (lambda (_%proc125740%_ _%h125741%_ _%default-value125742%_)
        (let* ((_%proc125745%_ _%proc125740%_)
               (_%h125753%_ _%h125741%_)
               (__tmp131913
                (lambda (_%return125762%_)
                  (let* ((_%self122017125764%_ _%h125753%_)
                         (_%proc125773%_
                          (lambda (_%k125767%_ _%v125768%_)
                            (let ((_%$e125770%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc125745%_
                                      _%k125767%_
                                      _%v125768%_))))
                              (if _%$e125770%_
                                  (_%return125762%_ _%$e125770%_)
                                  '#!void))))
                         (_%self122017125780%_
                          (let ((_%$obj125777%_ _%self122017125764%_))
                            (if (and (let ()
                                       (declare (not safe))
                                       (##structure? _%$obj125777%_))
                                     (eq? HashTable::t
                                          (let ()
                                            (declare (not safe))
                                            (##structure-type _%$obj125777%_)))
                                     '#t)
                                _%$obj125777%_
                                (let ()
                                  (declare (not safe))
                                  (cast HashTable::interface
                                        _%$obj125777%_)))))
                         (_%self122017125782%_ _%self122017125780%_)
                         (_%proc125797%_ _%proc125773%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object125806125811%_
                                 (##unchecked-structure-ref
                                  _%self122017125782%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method125807125812%_
                                 (##unchecked-structure-ref
                                  _%self122017125782%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method125807125812%_
                             _%object125806125811%_
                             _%proc125797%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object125813125818%_
                                 (##unchecked-structure-ref
                                  _%self122017125782%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method125814125819%_
                                 (##unchecked-structure-ref
                                  _%self122017125782%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method125814125819%_
                             _%object125813125818%_
                             _%proc125797%_)))))
                  _%default-value125742%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp131913))))
    (define __hash-find__0
      (lambda (_%proc125824%_ _%h125825%_)
        (let ((_%default-value125827%_ '#f))
          (__hash-find__%
           _%proc125824%_
           _%h125825%_
           _%default-value125827%_))))
    (define __hash-find
      (lambda _g131914_
        (let ((_g131915_ (let () (declare (not safe)) (##length _g131914_))))
          (cond ((let () (declare (not safe)) (##fx= _g131915_ 2))
                 (apply __hash-find__0 _g131914_))
                ((let () (declare (not safe)) (##fx= _g131915_ 3))
                 (apply __hash-find__% _g131914_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g131914_))))))
    (define hash-keys
      (lambda (_%h125721%_)
        (let* ((_%h125727%_
                (let ((_%$obj125724%_ _%h125721%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj125724%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj125724%_)))
                           '#t)
                      _%$obj125724%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj125724%_)))))
               (_%h125729%_ _%h125727%_))
          (__hash-keys _%h125729%_))))
    (define __hash-keys
      (lambda (_%h125653%_)
        (let* ((_%h125656%_ _%h125653%_) (_%result125665%_ '()))
          (let* ((_%self122017125667%_ _%h125656%_)
                 (_%proc125673%_
                  (lambda (_%k125670%_ _%v125671%_)
                    (set! _%result125665%_
                          (cons _%k125670%_ _%result125665%_))))
                 (_%self122017125680%_
                  (let ((_%$obj125677%_ _%self122017125667%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj125677%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj125677%_)))
                             '#t)
                        _%$obj125677%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj125677%_)))))
                 (_%self122017125682%_ _%self122017125680%_)
                 (_%proc125697%_ _%proc125673%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object125706125711%_
                         (##unchecked-structure-ref
                          _%self122017125682%_
                          '1
                          '#f
                          'for-each))
                        (_%method125707125712%_
                         (##unchecked-structure-ref
                          _%self122017125682%_
                          '5
                          '#f
                          'for-each)))
                    (_%method125707125712%_
                     _%object125706125711%_
                     _%proc125697%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object125713125718%_
                         (##unchecked-structure-ref
                          _%self122017125682%_
                          '1
                          '#f
                          'for-each))
                        (_%method125714125719%_
                         (##unchecked-structure-ref
                          _%self122017125682%_
                          '5
                          '#f
                          'for-each)))
                    (_%method125714125719%_
                     _%object125713125718%_
                     _%proc125697%_)))))
          _%result125665%_)))
    (define hash-values
      (lambda (_%h125635%_)
        (let* ((_%h125641%_
                (let ((_%$obj125638%_ _%h125635%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj125638%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj125638%_)))
                           '#t)
                      _%$obj125638%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj125638%_)))))
               (_%h125643%_ _%h125641%_))
          (__hash-values _%h125643%_))))
    (define __hash-values
      (lambda (_%h125567%_)
        (let* ((_%h125570%_ _%h125567%_) (_%result125579%_ '()))
          (let* ((_%self122017125581%_ _%h125570%_)
                 (_%proc125587%_
                  (lambda (_%k125584%_ _%v125585%_)
                    (set! _%result125579%_
                          (cons _%v125585%_ _%result125579%_))))
                 (_%self122017125594%_
                  (let ((_%$obj125591%_ _%self122017125581%_))
                    (if (and (let ()
                               (declare (not safe))
                               (##structure? _%$obj125591%_))
                             (eq? HashTable::t
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%$obj125591%_)))
                             '#t)
                        _%$obj125591%_
                        (let ()
                          (declare (not safe))
                          (cast HashTable::interface _%$obj125591%_)))))
                 (_%self122017125596%_ _%self122017125594%_)
                 (_%proc125611%_ _%proc125587%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object125620125625%_
                         (##unchecked-structure-ref
                          _%self122017125596%_
                          '1
                          '#f
                          'for-each))
                        (_%method125621125626%_
                         (##unchecked-structure-ref
                          _%self122017125596%_
                          '5
                          '#f
                          'for-each)))
                    (_%method125621125626%_
                     _%object125620125625%_
                     _%proc125611%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object125627125632%_
                         (##unchecked-structure-ref
                          _%self122017125596%_
                          '1
                          '#f
                          'for-each))
                        (_%method125628125633%_
                         (##unchecked-structure-ref
                          _%self122017125596%_
                          '5
                          '#f
                          'for-each)))
                    (_%method125628125633%_
                     _%object125627125632%_
                     _%proc125611%_)))))
          _%result125579%_)))
    (define hash-copy
      (lambda (_%h125549%_)
        (let* ((_%h125555%_
                (let ((_%$obj125552%_ _%h125549%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj125552%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj125552%_)))
                           '#t)
                      _%$obj125552%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj125552%_)))))
               (_%h125557%_ _%h125555%_))
          (__hash-copy _%h125557%_))))
    (define __hash-copy
      (lambda (_%h125498%_)
        (let* ((_%h125501%_ _%h125498%_)
               (_%self121529125510%_ _%h125501%_)
               (_%self121529125517%_
                (let ((_%$obj125514%_ _%self121529125510%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj125514%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj125514%_)))
                           '#t)
                      _%$obj125514%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj125514%_)))))
               (_%self121529125519%_ _%self121529125517%_))
          (if __DEBUG
              (let ((_%$obj125539%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object125531125536%_
                              (##unchecked-structure-ref
                               _%self121529125519%_
                               '1
                               '#f
                               'copy))
                             (_%method125532125537%_
                              (##unchecked-structure-ref
                               _%self121529125519%_
                               '3
                               '#f
                               'copy)))
                         (_%method125532125537%_ _%object125531125536%_)))))
                (if (and (let ()
                           (declare (not safe))
                           (##structure? _%$obj125539%_))
                         (eq? HashTable::t
                              (let ()
                                (declare (not safe))
                                (##structure-type _%$obj125539%_)))
                         '#t)
                    _%$obj125539%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%$obj125539%_))))
              (let ()
                (declare (not safe))
                (let ((_%object125541125546%_
                       (##unchecked-structure-ref
                        _%self121529125519%_
                        '1
                        '#f
                        'copy))
                      (_%method125542125547%_
                       (##unchecked-structure-ref
                        _%self121529125519%_
                        '3
                        '#f
                        'copy)))
                  (_%method125542125547%_ _%object125541125546%_)))))))
    (define hash-clear!
      (lambda (_%h125480%_)
        (let* ((_%h125486%_
                (let ((_%$obj125483%_ _%h125480%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj125483%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj125483%_)))
                           '#t)
                      _%$obj125483%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj125483%_)))))
               (_%h125488%_ _%h125486%_))
          (__hash-clear! _%h125488%_))))
    (define __hash-clear!
      (lambda (_%h125432%_)
        (let* ((_%h125435%_ _%h125432%_)
               (_%self121284125444%_ _%h125435%_)
               (_%self121284125451%_
                (let ((_%$obj125448%_ _%self121284125444%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj125448%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj125448%_)))
                           '#t)
                      _%$obj125448%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj125448%_)))))
               (_%self121284125453%_ _%self121284125451%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object125465125470%_
                       (##unchecked-structure-ref
                        _%self121284125453%_
                        '1
                        '#f
                        'clear!))
                      (_%method125466125471%_
                       (##unchecked-structure-ref
                        _%self121284125453%_
                        '2
                        '#f
                        'clear!)))
                  (_%method125466125471%_ _%object125465125470%_)))
              (let ()
                (declare (not safe))
                (let ((_%object125472125477%_
                       (##unchecked-structure-ref
                        _%self121284125453%_
                        '1
                        '#f
                        'clear!))
                      (_%method125473125478%_
                       (##unchecked-structure-ref
                        _%self121284125453%_
                        '2
                        '#f
                        'clear!)))
                  (_%method125473125478%_ _%object125472125477%_)))))))
    (define hash-merge
      (lambda (_%h125413%_ . _%rest125414%_)
        (let* ((_%h125420%_
                (let ((_%$obj125417%_ _%h125413%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj125417%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj125417%_)))
                           '#t)
                      _%$obj125417%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj125417%_)))))
               (_%h125422%_ _%h125420%_))
          (declare (not safe))
          (##apply __hash-merge _%h125422%_ _%rest125414%_))))
    (define __hash-merge
      (lambda (_%h125359%_ . _%rest125360%_)
        (let* ((_%h125363%_ _%h125359%_)
               (_%copy125411%_
                (let* ((_%self121529125372%_ _%h125363%_)
                       (_%self121529125379%_
                        (let ((_%$obj125376%_ _%self121529125372%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj125376%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj125376%_)))
                                   '#t)
                              _%$obj125376%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj125376%_)))))
                       (_%self121529125381%_ _%self121529125379%_))
                  (if __DEBUG
                      (let ((_%$obj125401%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object125393125398%_
                                      (##unchecked-structure-ref
                                       _%self121529125381%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method125394125399%_
                                      (##unchecked-structure-ref
                                       _%self121529125381%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method125394125399%_
                                  _%object125393125398%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj125401%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj125401%_)))
                                 '#t)
                            _%$obj125401%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj125401%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object125403125408%_
                               (##unchecked-structure-ref
                                _%self121529125381%_
                                '1
                                '#f
                                'copy))
                              (_%method125404125409%_
                               (##unchecked-structure-ref
                                _%self121529125381%_
                                '3
                                '#f
                                'copy)))
                          (_%method125404125409%_ _%object125403125408%_)))))))
          (apply hash-merge! _%copy125411%_ _%rest125360%_)
          _%copy125411%_)))
    (define hash-merge-right
      (lambda (_%h125340%_ . _%rest125341%_)
        (let* ((_%h125347%_
                (let ((_%$obj125344%_ _%h125340%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj125344%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj125344%_)))
                           '#t)
                      _%$obj125344%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj125344%_)))))
               (_%h125349%_ _%h125347%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h125349%_ _%rest125341%_))))
    (define __hash-merge-right
      (lambda (_%h125286%_ . _%rest125287%_)
        (let* ((_%h125290%_ _%h125286%_)
               (_%copy125338%_
                (let* ((_%self121529125299%_ _%h125290%_)
                       (_%self121529125306%_
                        (let ((_%$obj125303%_ _%self121529125299%_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (##structure? _%$obj125303%_))
                                   (eq? HashTable::t
                                        (let ()
                                          (declare (not safe))
                                          (##structure-type _%$obj125303%_)))
                                   '#t)
                              _%$obj125303%_
                              (let ()
                                (declare (not safe))
                                (cast HashTable::interface _%$obj125303%_)))))
                       (_%self121529125308%_ _%self121529125306%_))
                  (if __DEBUG
                      (let ((_%$obj125328%_
                             (let ()
                               (declare (not safe))
                               (let ((_%object125320125325%_
                                      (##unchecked-structure-ref
                                       _%self121529125308%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method125321125326%_
                                      (##unchecked-structure-ref
                                       _%self121529125308%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method125321125326%_
                                  _%object125320125325%_)))))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure? _%$obj125328%_))
                                 (eq? HashTable::t
                                      (let ()
                                        (declare (not safe))
                                        (##structure-type _%$obj125328%_)))
                                 '#t)
                            _%$obj125328%_
                            (let ()
                              (declare (not safe))
                              (cast HashTable::interface _%$obj125328%_))))
                      (let ()
                        (declare (not safe))
                        (let ((_%object125330125335%_
                               (##unchecked-structure-ref
                                _%self121529125308%_
                                '1
                                '#f
                                'copy))
                              (_%method125331125336%_
                               (##unchecked-structure-ref
                                _%self121529125308%_
                                '3
                                '#f
                                'copy)))
                          (_%method125331125336%_ _%object125330125335%_)))))))
          (apply hash-merge-right! _%copy125338%_ _%rest125287%_)
          _%copy125338%_)))
    (define hash-merge!
      (lambda (_%h125267%_ . _%rest125268%_)
        (let* ((_%h125274%_
                (let ((_%$obj125271%_ _%h125267%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj125271%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj125271%_)))
                           '#t)
                      _%$obj125271%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj125271%_)))))
               (_%h125276%_ _%h125274%_))
          (declare (not safe))
          (##apply __hash-merge! _%h125276%_ _%rest125268%_))))
    (define __hash-merge!
      (lambda (_%h125138%_ . _%rest125139%_)
        (let ((_%h125142%_ _%h125138%_))
          (let ((__tmp131916
                 (lambda (_%hr125151%_)
                   (let* ((_%hr125157%_
                           (let ((_%$obj125154%_ _%hr125151%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj125154%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj125154%_)))
                                      '#t)
                                 _%$obj125154%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj125154%_)))))
                          (_%hr125159%_ _%hr125157%_)
                          (_%self122017125172%_ _%hr125159%_)
                          (_%proc125224%_
                           (lambda (_%k125175%_ _%v125176%_)
                             (if (__hash-key? _%h125142%_ _%k125175%_)
                                 '#!void
                                 (let* ((_%self122749125178%_ _%h125142%_)
                                        (_%key125181%_ _%k125175%_)
                                        (_%value125184%_ _%v125176%_)
                                        (_%self122749125191%_
                                         (let ((_%$obj125188%_
                                                _%self122749125178%_))
                                           (if (and (let ()
                                                      (declare (not safe))
                                                      (##structure?
                                                       _%$obj125188%_))
                                                    (eq? HashTable::t
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-type
                                                            _%$obj125188%_)))
                                                    '#t)
                                               _%$obj125188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (cast HashTable::interface
                                                       _%$obj125188%_)))))
                                        (_%self122749125193%_
                                         _%self122749125191%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object125209125214%_
                                                (##unchecked-structure-ref
                                                 _%self122749125193%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method125210125215%_
                                                (##unchecked-structure-ref
                                                 _%self122749125193%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method125210125215%_
                                            _%object125209125214%_
                                            _%key125181%_
                                            _%value125184%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object125216125221%_
                                                (##unchecked-structure-ref
                                                 _%self122749125193%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method125217125222%_
                                                (##unchecked-structure-ref
                                                 _%self122749125193%_
                                                 '8
                                                 '#f
                                                 'set!)))
                                           (_%method125217125222%_
                                            _%object125216125221%_
                                            _%key125181%_
                                            _%value125184%_))))))))
                          (_%self122017125231%_
                           (let ((_%$obj125228%_ _%self122017125172%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj125228%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj125228%_)))
                                      '#t)
                                 _%$obj125228%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj125228%_)))))
                          (_%self122017125233%_ _%self122017125231%_)
                          (_%proc125243%_ _%proc125224%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object125252125257%_
                                  (##unchecked-structure-ref
                                   _%self122017125233%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method125253125258%_
                                  (##unchecked-structure-ref
                                   _%self122017125233%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method125253125258%_
                              _%object125252125257%_
                              _%proc125243%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object125259125264%_
                                  (##unchecked-structure-ref
                                   _%self122017125233%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method125260125265%_
                                  (##unchecked-structure-ref
                                   _%self122017125233%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method125260125265%_
                              _%object125259125264%_
                              _%proc125243%_))))))))
            (declare (not safe))
            (##for-each __tmp131916 _%rest125139%_))
          _%h125142%_)))
    (define hash-merge-right!
      (lambda (_%h125119%_ . _%rest125120%_)
        (let* ((_%h125126%_
                (let ((_%$obj125123%_ _%h125119%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj125123%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj125123%_)))
                           '#t)
                      _%$obj125123%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj125123%_)))))
               (_%h125128%_ _%h125126%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h125128%_ _%rest125120%_))))
    (define __hash-merge-right!
      (lambda (_%h124990%_ . _%rest124991%_)
        (let ((_%h124994%_ _%h124990%_))
          (let ((__tmp131917
                 (lambda (_%hr125003%_)
                   (let* ((_%hr125009%_
                           (let ((_%$obj125006%_ _%hr125003%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj125006%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj125006%_)))
                                      '#t)
                                 _%$obj125006%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj125006%_)))))
                          (_%hr125011%_ _%hr125009%_)
                          (_%self122017125024%_ _%hr125011%_)
                          (_%proc125076%_
                           (lambda (_%k125027%_ _%v125028%_)
                             (let* ((_%self122749125030%_ _%h124994%_)
                                    (_%key125033%_ _%k125027%_)
                                    (_%value125036%_ _%v125028%_)
                                    (_%self122749125043%_
                                     (let ((_%$obj125040%_
                                            _%self122749125030%_))
                                       (if (and (let ()
                                                  (declare (not safe))
                                                  (##structure?
                                                   _%$obj125040%_))
                                                (eq? HashTable::t
                                                     (let ()
                                                       (declare (not safe))
                                                       (##structure-type
                                                        _%$obj125040%_)))
                                                '#t)
                                           _%$obj125040%_
                                           (let ()
                                             (declare (not safe))
                                             (cast HashTable::interface
                                                   _%$obj125040%_)))))
                                    (_%self122749125045%_
                                     _%self122749125043%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object125061125066%_
                                            (##unchecked-structure-ref
                                             _%self122749125045%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method125062125067%_
                                            (##unchecked-structure-ref
                                             _%self122749125045%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method125062125067%_
                                        _%object125061125066%_
                                        _%key125033%_
                                        _%value125036%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object125068125073%_
                                            (##unchecked-structure-ref
                                             _%self122749125045%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method125069125074%_
                                            (##unchecked-structure-ref
                                             _%self122749125045%_
                                             '8
                                             '#f
                                             'set!)))
                                       (_%method125069125074%_
                                        _%object125068125073%_
                                        _%key125033%_
                                        _%value125036%_)))))))
                          (_%self122017125083%_
                           (let ((_%$obj125080%_ _%self122017125024%_))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure? _%$obj125080%_))
                                      (eq? HashTable::t
                                           (let ()
                                             (declare (not safe))
                                             (##structure-type
                                              _%$obj125080%_)))
                                      '#t)
                                 _%$obj125080%_
                                 (let ()
                                   (declare (not safe))
                                   (cast HashTable::interface
                                         _%$obj125080%_)))))
                          (_%self122017125085%_ _%self122017125083%_)
                          (_%proc125095%_ _%proc125076%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object125104125109%_
                                  (##unchecked-structure-ref
                                   _%self122017125085%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method125105125110%_
                                  (##unchecked-structure-ref
                                   _%self122017125085%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method125105125110%_
                              _%object125104125109%_
                              _%proc125095%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object125111125116%_
                                  (##unchecked-structure-ref
                                   _%self122017125085%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method125112125117%_
                                  (##unchecked-structure-ref
                                   _%self122017125085%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method125112125117%_
                              _%object125111125116%_
                              _%proc125095%_))))))))
            (declare (not safe))
            (##for-each __tmp131917 _%rest124991%_))
          _%h124994%_)))))
